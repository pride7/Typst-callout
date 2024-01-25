# Typst-callout
This is a simple implementation for "callout" in Typst.

## Configure
There are 7 types for callout:
- note
- warning
- check
- summary
- question
- example
- quote
You can see the results in the `example.pdf`.

The configuration of each type is saved in `configure.typ` by using a dictionary `configure`. So you can insert other type by yourself.

For example,
```typst
#configure.insert(
  "note",
  (
    logo: "images/note.svg",
    box-color: rgb(240, 245, 248),
    title-color: rgb(88,123,207)
  )
)
```

## Usage
```typst
#import "callout.typ": callout

#callout(
  title:[Your title],
  type:"warning"
)[
  #lorem(20)
]
```