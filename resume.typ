#import "class.typ": template, skill_entry, experience_entry


#let contact_data = (
    (
        "service": "github",
        "display": "hesampakdaman",
        "link": "https://github.com/hesampakdaman"
    ),
)
#set par(justify: true)
#set text(size: 10pt, font: "New Computer Modern")
#show heading: set block(above: 1.5em, below: 0.5em)
#show link: set text(fill: rgb(0, 0, 255))
#show par: set block(spacing: 0.5em)
#show raw: set text(font: "New Computer Modern")
#show: doc => template("Hesam Pakdaman", contact_data, black, doc)

#align(center)[
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
    logo_size: 1cm,
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
    company: smallcaps("ding"),
    role: "Machine Learning Engineer",
    start_date: "Jan 2018",
    end_date: "Feb 2021",
    description: "At " + smallcaps("ding") + " I was hired as a concluntant for Convini, a Swedish company providing workplace food solutions through self-service stations. I designed a deep learning system using cameras mounted on fridges to accurately detect which products customers selected.",
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

\

#show link: underline
= Recent hobby projects
#link("https://github.com/hesampakdaman/rust_1brc")[*1 billion row challenge*]. This challenge involves processing one billion temperature measurements to compute the minimum, mean, and maximum temperatures per weather station. I implemented this in Rust, leveraging its `std::sync::mpsc` and `std::thread` standard libraries for efficient, parallel data handling and memory-mapped files for optimized I/O performance. By customizing the hash function for the dataset, the project achieves high performance, processing the entire 13GB input file using all available CPU cores. On a MacBook M1 Pro (2021), it processes the input file in $~2.75$s, showcasing Rust's high-performance capabilities.
\
\
#link("https://github.com/hesampakdaman/rustic_factors")[*Integer factorization*]. In this project, I explored various number factorization algorithms. The aim was to learn more about Rust's advanced features such as generics, dynamic dispatch, and procedural macros while implementing design patterns like Strategy, Builder, and New Type. The project includes algorithms such as Miller-Rabin, Fermat's factorization method, Pollard's Rho, and trial division. A trait system was used to apply these strategies, and a test framework was developed using the Builder pattern to ensure robust and modular code.
