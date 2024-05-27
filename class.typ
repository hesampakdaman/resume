#let par_space = 0.5em

#let experience_entry(logo_path: str, company: str, role: str, start_date: str, end_date: none, description: str, skills: list[str]) = {
    grid(
        columns: (3.5cm, 1fr),
        gutter: 0cm,
        inset: (x: 5pt, y: 1pt),
        grid.cell(
            figure(
                image(logo_path, width: 1.3cm),
                caption: [#company],
                numbering: none,
                placement: bottom,
                kind: image,
            )

        ),
        grid.cell(
            align: left,
            [
                *#role* \
                #text(size: 10pt, start_date)―#text(size: 10pt, end_date)

                #text(size: 10pt, description)

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

// Set name and contact data and format headings
#let template(name, contact_data, color, doc) = {
    set page(margin: (x: 1.5cm, y: 0.5cm))
    set text(11pt)
    set par(justify: true, leading: par_space)
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
            spacing: 2mm,
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
