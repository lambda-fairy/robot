-- | A simple typing automaton. Supports ASCII letters, spaces and newlines.

import Control.Applicative
import Control.Monad
import Control.Monad.IO.Class (liftIO)
import Data.Ratio ((%))
import System.Random (randomRIO)
import Test.Robot

main :: IO ()
main = runRobot . forever $ do
    typeText fudge "All work and no play makes Jack a dull boy\n"
    sleep . (% 5) =<< rand (1, 10)
  where
    -- This program is a horrible typist
    fudge = do
        sleep . (1 %) =<< rand (2, 10)
        roll <- rand (0, 100)
        when (roll `elem` [0..3]) $ tap _Space
        when (roll == 4) $ tap _Return

typeText
    :: Robot ()  -- ^ Action to perform between each key press
    -> String    -- ^ Input string
    -> Robot ()
typeText pause = foldr combine (return ()) . map (tapShift . charToKey)
  where
    combine a b = a >> pause >> b

tapShift :: (Bool, Key) -> Robot ()
tapShift (False, k) = tap k
tapShift (True , k) = _Shift `hold` tap k

charToKey :: Char -> (Bool, Key)
charToKey c
  | 'A' <= c && c <= 'Z' = (True, k)
  | 'a' <= c && c <= 'z' = (False, k)
  | otherwise = (False, case c of
        ' ' -> _Space
        '\n' -> _Return
        _ -> error $ "key conversion not implemented for " ++ show c)
  where
    k = customKey $ fromIntegral (fromEnum c)

rand :: (Integer, Integer) -> Robot Integer
rand = liftIO . randomRIO
