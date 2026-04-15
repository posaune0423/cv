#let primary_colour = rgb("#A86F1A")
#let link_colour = rgb("#8C641F")
#let muted_colour = rgb("#6B6255")
#let neutral_colour = rgb("#D9D2C8")
#let sans_font = "TeX Gyre Heros"

#let icon(name, shift: 1.5pt) = {
  box(
    baseline: shift,
    height: 10pt,
    image("icons/" + name + ".svg"),
  )
  h(3pt)
}

#let findMe(services) = {
  set text(8pt)
  let icon = icon.with(shift: 2.5pt)

  services
    .map(service => {
      icon(service.name)

      if "display" in service.keys() {
        link(service.link)[#{ service.display }]
      } else {
        link(service.link)
      }
    })
    .join(h(10pt))
  [

  ]
}

#let term(period, location) = {
  text(9pt, fill: muted_colour)[#icon("calendar") #period #h(1fr) #icon(
      "location",
    ) #location]
}

#let max_rating = 5
#let skill(name, rating) = {
  let done = false
  let i = 1

  name

  h(1fr)

  while (not done) {
    let colour = neutral_colour

    if (i <= rating) {
      colour = primary_colour
    }

    box(circle(
      radius: 4pt,
      fill: colour,
    ))

    if (max_rating == i) {
      done = true
    } else {
      // no spacing on last
      h(2pt)
    }

    i += 1
  }

  [\ ]
}

#let styled-link(dest, content) = emph(text(
  fill: link_colour,
  link(dest, content),
))

#let alta(
  name: "",
  links: (),
  tagline: [],
  content,
) = {
  set document(
    title: name + "'s CV",
    author: name,
  )
  set text(10.15pt, font: sans_font)
  set page(
    margin: (x: 60pt, y: 56pt),
  )

  show heading.where(
    level: 1,
  ): it => text(
    font: sans_font,
    weight: 750,
    size: 24pt,
    fill: primary_colour,
    it.body,
  )

  show heading.where(
    level: 2,
  ): it => text(
    font: sans_font,
    weight: 720,
    fill: primary_colour,
    [
      #{ it.body }
      #v(-7pt)
      #line(length: 100%, stroke: 1pt + primary_colour)
    ],
  )

  show heading.where(
    level: 3,
  ): it => text(
    font: sans_font,
    weight: 700,
    it.body,
  )

  show heading.where(
    level: 4,
  ): it => text(
    font: sans_font,
    weight: 600,
    fill: primary_colour,
    it.body,
  )

  [
    = #name
    #v(3pt)
    #findMe(links)
    #v(6pt)
    #tagline
  ]

  columns(
    2,
    gutter: 17pt,
    content,
  )
}
