#import "configure.typ": configure

#let callout(
  type: "note",
  title: "",
  body
) = {
  let (logo, box-color, title-color) = (
      configure.at(type).logo, 
      configure.at(type).box-color, 
      configure.at(type).title-color
    )

  block(
  width: 100%,
  fill: box-color,
  inset: 8pt,
  radius: 4pt,
  stroke: (left: 2pt+title-color)
)[
  #grid(
    columns: 2,
    column-gutter: 1.4em,
    rows: 1,
    place(
      center+horizon,
      dx: 0.5em,
      image(logo, width: 1.3em),
      ),
    //image(logo, width: 1em),
    text(
      fill: title-color, 
      weight: "bold",
      size: 1.3em
    )[#title]
  )
  #body
]
}









