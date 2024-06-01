#let font_default_size = 11pt

// Set name and contact data and format headings
#let template(name, contact_data, color, doc) = {
    set page(margin: (x: 1.5cm, y: 0.5cm))
    set par(justify: true, leading: 0.4em)
    set text(size: font_default_size, font: "New Computer Modern")
    show heading: set block(above: 1.5em, below: 0.5em)
    show link: set text(fill: rgb(0, 0, 255))
    show par: set block(spacing: 0.5em)
    show raw: set text(font: "New Computer Modern")

    align(center)[
        #smallcaps(text(size: 2.5em, fill: color)[#name]) \
        #{
            if contact_data != none and contact_data.len() > 0 {
                let elements = for el in contact_data {
                    (link(el.link)[#{box(image(height: 0.7em, "./logo/" + el.service + ".svg")) + " " + el.display}],)
                }
                elements.join(" | ")
            }
        }
    ]

    show heading.where(level: 1): i => {
        set align(left)
        let title = smallcaps(i.body)

        set block(above: 0.2em)
        set text(weight: "light", size: 1.2em, fill: color)
        stack(
            dir: ttb,
            spacing: 3mm,
            title,
            line(length: 100%, stroke: color)
        )
    }

    show heading.where(level: 2): i => {
        set align(left)
        let title = smallcaps(i.body)
        set block(above: 0.8em)
        set text(weight: "light", size: 1.1em, fill: color)
        title
    }
    doc
}

#let experience_entry(logo_path: str, logo_size: none, company: str, role: str, start_date: str, end_date: none, description: str, skills: list[str]) = {
    if logo_size == none {
        logo_size = 1.3cm
    }
    grid(
        columns: (3.5cm, 1fr),
        gutter: 0cm,
        inset: (x: 5pt, y: 1pt),
        grid.cell(
            figure(
                image(logo_path, width: logo_size),
                caption: [#text(size: font_default_size - 1.5pt, company)],
                numbering: none,
                placement: bottom,
                kind: image,
            )

        ),
        grid.cell(
            align: left,
            [
                *#role* \
                #text(size: font_default_size - 1pt, start_date)―#text(size: font_default_size - 1pt, end_date)

                #description

                #let cell = rect.with(radius: 3pt, inset: 3pt)
                #let boxes = for skill in skills {(box(cell(text(size: 8pt, skill))),)}
                #{boxes.join(" ")}
            ]
        ),
    )
}

// Entry for skills
#let skill_entry(category, skills) = {
    [=== #category]
    let cell = rect.with(radius: 3pt, inset: 3pt)
    let boxes = for skill in skills {(box(cell(text(size: 9pt, skill))),)}
    {boxes.join(" ")}
}
