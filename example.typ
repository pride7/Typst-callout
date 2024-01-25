#import "callout.typ": callout

//#set text(font:"LXGW WenKai")

#align(
  center
)[
  #text(size: 2em)[Test for Callout]
]

#callout(
  title: [笔记]
)[
  有一伟大的男子站在我面前，美丽，慈祥，遍身有大光辉，然而我知道他是魔鬼。
]

#callout(
  title:[警告],
  type:"warning"
)[
  #lorem(20)
]

#callout(
  title:[核对],
  type:"check"
)[
  #lorem(20)
]

#callout(
  title: [总结],
  type:"summary"
)[
  人类的悲欢并不相通，我只觉得他们吵闹。
]

#callout(
  title: [问题],
  type:"question"
)[
  #lorem(20)
  
]



#callout(
  title:[例子],
  type:"example"
)[
  #lorem(20)
]

#callout(
  title:[引用],
  type:"quote"
)[
  我愿意真有所谓鬼魂，真有所谓地狱，那么，即使在孽风怒吼之中，我也将寻觅子君，当面说出我的悔恨和悲哀，祈求她的饶恕；否则，地狱的毒焰将围绕我，猛烈地烧尽我的悔恨和悲哀。
]

#grid(
  columns: 4,
  callout(
    title:[笔记],
    type:"note"
  )[
    #lorem(15)
  ],
  callout(
    title:[警告],
    type:"warning"
  )[
    #lorem(15)
  ],
  callout(
    title:[核对],
    type:"check"
  )[
    #lorem(15)
  ],
  callout(
    title:[总结],
    type:"summary"
  )[
    #lorem(15)
  ],
)


#pagebreak()
#callout(
  title:[1st Callout],
  type:"note"
)[
  #grid(
    columns: 2,
    column-gutter: 5pt,
    callout(
      title:[2nd Callout],
      type:"summary"
    )[
      #lorem(45)
    ],
    grid(
      columns:1,
      callout(
        title:[3rd Callout],
        type:"check"
      )[
        #lorem(15)
      ],
      callout(
        title:[4th Callout],
        type:"warning"
      )[
        #lorem(15)
      ]
    )
  )
]