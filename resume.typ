#import "class.typ": template, skill_entry, experience_entry


#let contact_data = (
    (
        "service": "github",
        "display": "hesampakdaman",
        "link": "https://github.com/hesampakdaman"
    ),
)

#show: doc => template("Hesam Pakdaman", contact_data, black, doc)

#align(center)[
    #skill_entry("Programming languages",
        (
            "Go",
            "Python",
            "Lisp",
            "Rust",
        )
    )
]

= Experience
#experience_entry(
    logo_path: "./logo/einride.png",
    logo_size: 0.85cm,
    company: "Einride",
    role: "Software Engineer",
    start_date: "Aug 2024",
    description: "Einride is a pioneer in autonomous and electric transportation, dedicated to delivering sustainable and efficient logistics solutions. I am part of the Data team, responsible for collecting telemetry from all vehicles and ensuring it is accessible to all engineering teams.",
    skills: (
        "GCP",
        "gRPC",
        "PostgreSQL",
        "Pub/Sub",
    )
)

#experience_entry(
    logo_path: "./logo/hm.png",
    logo_size: 0.85cm,
    company: "H&M Group",
    role: "Software Engineer",
    start_date: "Mar 2023",
    end_date: "June 2024",
    description: "I helped developed the e-commerce platform Creator Studio, a venture within global fashion company H&M, for designing, ordering, and selling custom print-on-demand merchandise globally with an emphasis on minimal environmental impact.",
    skills: (
        "k8s",
        "Kafka",
        "MongoDB",
        "PostgreSQL",
    )
)

#experience_entry(
    logo_path: "./logo/budbee.png",
    company: "Budbee",
    role: "Machine Learning Engineer",
    start_date: "Apr 2022",
    end_date: "Feb 2023",
    description: "Budbee is a Swedish last-mile delivery company focusing on efficient deliveries for online shopping across Europe. I was part of the ML team, providing predictions and data insights to support various departments within the company.",
    skills: (
        "LightGBM",
        "Metaflow",
        "MySQL",
        "PyTorch",
    )
)

#experience_entry(
    logo_path: "./logo/entecon.png",
    company: "Entecon",
    role: "Machine Learning Engineer",
    start_date: "Feb 2021",
    end_date: "Mar 2022",
    description: "Entecon is a Swedish consultancy firm. I was contracted to work for Nielsen, a US-based company providing advanced video metadata solutions to leading media companies. My role was to assist the team responsible for video segmentation.",
    skills: (
        "Matplotlib",
        "NumPy",
        "Pandas",
        "PyTorch",
    )
)

#experience_entry(
    logo_path: "./logo/ding.png",
    company: smallcaps("ding"),
    role: "Machine Learning Engineer",
    start_date: "Jan 2018",
    end_date: "Feb 2021",
    description: "Hired at " + smallcaps("ding") + " as a consultant for Convini, a Swedish company providing workplace food solutions through self-service stations. I built a deep learning system using cameras mounted on fridges to detect products customers selected.",
    skills: (
        "CUDA",
        "FLIR",
        "NumPy",
        "PyTorch"
    )
)

\

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
= Hobby projects
#link("https://github.com/hesampakdaman/rust_1brc")[*1 billion row challenge*].
This challenge involves processing one billion temperature
measurements to compute the minimum, mean, and maximum temperatures
per weather station. I implemented this in Rust, leveraging its
`std::sync::mpsc` and `std::thread` standard libraries for efficient,
parallel data handling and memory-mapped files for optimized I/O
performance and a customize hash function tailored for the dataset.
The project achieves high performance, processing the entire 13GB
input file using all available CPU cores. On an Apple M1 Pro it
processes the input file in $~2.75$s.
// \
// \
// #link("https://github.com/hesampakdaman/rustic_factors")[*Integer factorization*].
// In this project, I explored various number factorization algorithms.
// The aim was to learn more about Rust's advanced features such as
// generics, dynamic dispatch, and procedural macros while implementing
// design patterns like Strategy, Builder, and New Type. The project
// includes algorithms such as Miller-Rabin, Fermat's factorization
// method, Pollard's Rho, and trial division. A trait system was used to
// apply these strategies, and a test framework was developed using the
// Builder pattern to ensure robust and modular code.
