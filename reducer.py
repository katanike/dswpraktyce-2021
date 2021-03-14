#!/usr/bin/python3
import sys


def parse_line(fields):
    return fields[0], int(fields[1]), int(fields[2])


class Word:
    def __init__(self, word, count, word_len):
        self.word = word
        self.count = count
        self.word_len = word_len


def main():
    word_counters = {}

    for line in sys.stdin:
        word, count, word_len = parse_line(line.split(sep=","))

        if word in word_counters:
            word_counters[word].count += count
        else:
            word_counters[word] = Word(word, count, word_len)

    for keyword, word in sorted(word_counters.items()):
        print(keyword, word.count, word.word_len, sep=',')


if __name__ == '__main__':
    main()
