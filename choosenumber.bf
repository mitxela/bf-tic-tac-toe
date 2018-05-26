[-][

  This was the first part I wrote, accept user input and check it's
  a number between 1 and 9. Doing a "greater than" or "less than" in
  brainfuck is quite tedious, and encouraged me to avoid it wherever
  possible.

]

>>>>>>+[- <<<<[-]<<[-]

>>>>-[ >>[-]+<< +<[-]<[-]<[-]<[-] 



-[----->+<]>--- generate 0x30
<,
subtract 0x30
>[-<->]<

copy c0 to c3
[>>+>+<<<-]
>>[<<+>>-]


is it less than or equal to ascii 9? 0x39
 +++++++++


[
 ->- [<<]>>
 <
]

>>
-]

yes
<<<<[-]<<


>>>>>>[-]+<<<<<<
copy c0 to c3
[>>+>+<<<-]
>>[<<+>>-]


>>
]
cleanup
>>-<<<[-]<< c1

subtract 0x30 from c0


[<->-]
< c0