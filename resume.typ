#import "class.typ": template, skill_entry, experience_entry

// #set page(margin: 1.75in)
#set par(justify: true)
#set text(font: "New Computer Modern")
#show raw: set text(font: "New Computer Modern Mono")
// #show par: set block(spacing: 0.55em)
// #show heading: set block(above: 1.4em, below: 1em)


// Change the theme color of the cv.
#let color = black
// Change to your name.
#let name = "Hesam Pakdaman"

// Change the shown contact data. You can also change the order of the elements so that they will show up in a different order. Currently, only these five elements are available with icons, but you can add new ones by editing the template.
#let contact_data = (
  (
    "service": "email",
    "display": "mail@gmail.com",
    "link": "mailto://mail@gmail.com"
  ),
  (
    "service": "phone",
    "display": "+99999999999",
    "link": "tel:+9999999999"
  ),
  (
    "service": "github",
    "display": "github.com/hesampakdaman",
    "link": "https://github.com/hesampakdaman"
  ),
)

#show: doc => template(name, contact_data, color, doc)

#align(center)[
    === Progamming langs \
    #skill_entry("Programming languages",
        (
            "Python",
            "Lisp",
            "Rust",
        )
    )
]

= Experience
#experience_entry(
    logo_path: "./logo/hm.png",
    company: "H&M Group",
    role: "Software Engineer",
    start_date: "Mar 2023",
    description: "Developing an e-commerce platform named Creator Studio; for designing, ordering, and selling custom print-on-demand merchandise globally, with a focus on sustainability and minimal environmental impact.",
    skills: (
        "Kafka",
        "Kubernetes",
        "MongoDB",
        "PostgreSQL",
        "Terraform",
    )
)

#experience_entry(
    logo_path: "./logo/budbee.png",
    company: "Budbee",
    role: "Machine Learning Engineer",
    start_date: "Apr 2022",
    end_date: "Feb 2023",
    description: "Budbee (part of Instabee Group) is a Swedish last-mile delivery company founded in 2016, focusing on efficient deliveries for online shopping across several European countries. I was part of the ML team, providing predictions and data insights to support various departments within the company.",
    skills: (
        "LightGBM",
        "Metaflow",
        "MySQL",
        "PyTorch",
        "Snowflake",
    )
)

#experience_entry(
    logo_path: "./logo/entecon.png",
    company: "Entecon",
    role: "Machine Learning Engineer",
    start_date: "Feb 2021",
    end_date: "Mar 2022",
    description: "Entecon is a Swedish consultancy firm. I was contracted to work for Nielsen, a US-based company providing advanced video metadata solutions to leading media companies. My role was to assisst the team responsible for video segmentation, focusing on accurately categorizing commercial and program content.",
    skills: ("Pandas", "PyTorch", "Matplotlib", "NumPy")
)

#experience_entry(
    logo_path: "./logo/ding.png",
    company: "Design Ingenjörerna",
    role: "Machine Learning Engineer",
    start_date: "Jan 2018",
    end_date: "Feb 2021",
    description: "At the consultancy firm Design Ingenjörerna I was contracted to work for Convini, a Swedish company providing workplace food solutions through self-service stations. I designed a deep learning system using cameras mounted on fridges to accurately detect which products customers selected.",
    skills: (
        "CUDA",
        "CloneZilla",
        "FLIR",
        "NumPy",
        "PyTorch"
    )
)

= Education
#grid(
    columns: (1.5cm, 1fr),
    gutter: 0.5cm,
    inset: (x: 30pt, y: 5pt),
    grid.cell(
        align: left,
        image("./logo/kth.svg", width: 1.4cm)
    ),
    grid.cell(
        align: left,
        [
            *KTH Royal Institute of Technology* \
            _Civilingenjör i Teknisk fysik_
            - 2015―2018 MSc. Computer Science
            - 2012―2015 BSc. Engineering Physics
        ]
    ),
)

= Recent hobby projects
*1 billion row challenge*. #lorem(32)

*Integer factorization*. #lorem(40)
