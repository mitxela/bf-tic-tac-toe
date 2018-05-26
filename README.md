## Tic Tac Toe AI in Brainfuck

Tic tac toe/naughts-and-crosses AI in brainfuck, written by mitxela

To play, type a number between 1 and 9 to place an X there. Live demo [here](https://mitxela.com/projects/bf_tic_tac_toe).

I wanted to just release the minimized version and remain mysterious, but it's
quite long with a lot of repetition and some people might think that it was
transcompiled from something else.

So, here is the original source code with comments that made sense at the time.
The choose-a-number script was the first bit I wrote and is in a separate file,
included here is the minimized version of it.

Although a perfect AI would have been possible, I deliberately left in a few 
possible games where the AI can lose. It would be boring otherwise.

One thing I quickly learned while writing this is to use boolean flags as much 
as possible. Checking if a cell is zero is so much easier than checking if it's
exactly one, or two, etc. Another tactic I worked out was to place markers in
memory of -1 (or 255). Lots of routines 'get lost' by not leaving the memory
pointer in a fixed location, so in order to recover I frequently use things like

```
  +[->+]-
```

which means, "head right until you reach a cell of value -1". This lets us put
reference points in memory that we can always recover to. 

The interpreter I used for developing this: https://mitxela.com/other/brainfuck

Originally written over the weekend of 6 May 2017. An excellent weekend it was.
