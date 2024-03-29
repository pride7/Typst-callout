#import "configure.typ": configure

#let callout(
  type: "note",
  title: none,
  icon: true,
  width: 100%,
  height: auto,
  body
) = {
  let (logo, box-color, title-color) = (
      configure.at(type).logo, 
      configure.at(type).box-color, 
      configure.at(type).title-color
    )

  block(
  width: width,
  height: height,
  fill: box-color,
  inset: 8pt,
  radius: 4pt,
  stroke: (left: 0.2em+title-color)
)[
  #if title != none {
    if icon == true {
      grid(
      columns: 2,
      column-gutter: 1.4em,
      rows: 1,
      place(
        center+horizon,
        dx: 0.5em,
        image(logo, width: 1.3em),
        ),
      text(
        fill: title-color, 
        weight: "bold",
        size: 1.3em
      )[#title]
    )} else {
      grid(
        columns: 1,
        text(
        fill: title-color, 
        weight: "bold",
        size: 1.3em
      )[#title]
      )
    }
  }
  #body
]
}

#callout[#lorem(50)]







