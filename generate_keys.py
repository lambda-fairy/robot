#!/usr/bin/env python3

from collections import defaultdict
from functools import partial

HEADER = '''
{-# OPTIONS_GHC -fno-warn-missing-signatures #-}

-- | This module is automatically generated from the file @keys.txt@,
-- and should not be edited directly. If you want to add a keysym, refer
-- to that file instead.

module Test.Robot.Types.Keys
'''.strip()

def read_blocks(raw):
    for block in raw.split('\n\n'):
        lines = block.strip().split('\n')
        title = lines[0]

        data = defaultdict(list)
        for name, code in map(str.split, lines[1:]):
            data[code].append(name)

        yield title, data


def dump_header(blocks, print=print):
    print(HEADER)

    print_i = partial(print, '   ')
    print_i('(', end='')

    first = True
    for title, data in blocks:
        print()
        print_i('  -- **', title)
        for code, names in sorted(data.items()):
            for name in names:
                print_i(' ' if first else ',', '_'+name)
            first = False

    print()
    print_i(') where')
    print()
    print('import Test.Robot.Types.Core')


def dump_definitions(blocks, print=print):
    for title, data in blocks:
        print()
        for code, names in sorted(data.items()):
            names = ['_' + name for name in names]
            # Gather all the aliases into the same signature, so Haddock
            # displays them on one line
            print(', '.join(names), ':: Switch')
            for name in names:
                print(name.ljust(30), '= Key', code)


if __name__ == '__main__':
    raw = open('keys.txt').read()
    with open('Test/Robot/Types/Keys.hs', 'w', newline='\n') as out_f:
        print = partial(print, file=out_f)
        dump_header(read_blocks(raw), print)
        dump_definitions(read_blocks(raw), print)
