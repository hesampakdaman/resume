#import "class.typ": template, skill_entry, experience_entry, font_default_size
#show link: underline

#let contact_data = (
    (
        "service": "github",
        "display": "GitHub",
        "link": "https://github.com/hesampakdaman"
    ),
    (
        "service": "linkedin",
        "display": "LinkedIn",
        "link": "https://linkedin.com/in/hesampakdaman",
    ),
)

#show: doc => template("Hesam Pakdaman", contact_data, black, doc)

#align(center)[
    #grid(columns: 2, rows: 1, gutter: 1cm,
        skill_entry("Programming",
            (
                "Go",
                "Python",
                "Lisp",
                "Rust",
            )
        ),
        skill_entry("Languages",
            (
                "English",
                "Svenska",
                "Farsi",
            )
        )
    )
]

// Technical Expertise Section
#box(
    inset: (x: 80pt, top: 1pt),
    radius: 5pt,
    stroke: 0pt,
)[
    #text(size: font_default_size)[

        Backend engineer experienced in building scalable distributed
        systems, focusing on fault-tolerant event-driven
        architectures. Enjoys hexagonal architecture and domain-driven
        design for adaptable software. Prior experience in artificial
        intelligence, focused on machine learning systems.

    ]
]

#v(1em)

= Experience
#experience_entry(
    logo_path: "./logo/einride.png",
    logo_size: 0.85cm,
    company: "Einride",
    role: "Backend Engineer",
    start_date: "Aug 2024",
    end_date: "Feb 2025",
    description: "Optimized multiple legacy flows, with the best improvement reducing execution time from 30s to 200ms. Reduced integration test time for the team's main service from 40s to 5s. Introduced an event-driven architecture for scalable telemetry processing and restructured the codebase for better adaptability. Improved observability with structured error reporting and authored ADRs to standardize logging.",
    skills: (
        "GCP",
        "gRPC",
        "PostgreSQL",
        "Pub/Sub",
    )
)

#experience_entry(
    logo_path: "./logo/hm.svg",
    logo_size: 0.85cm,
    company: "H&M Group",
    role: "Backend Engineer",
    start_date: "Mar 2023",
    end_date: "June 2024",
    description: "Designed and implemented new microservices, introducing event-driven patterns like the outbox pattern. Built the team's first integration with a third-party service to enable A/B testing. Contributed to backend architecture discussions and developed features in the order flow, such as order moderation and partial fulfillment.",
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
    description: "Improved models for package size classification and prototyped a model for better drive-time estimates. Ported a segmentation model from Java to a microservice in Python. Developed CLI tools for AWS labeling jobs and created reusable database libraries to eliminate redundant code. Acted as temporary team lead for three months, coordinating engineering efforts in the absence of managers.",
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
    description: "Consulted for a California-based client, ensuring data quality through an extensible scoring library for dataset validation. Provided data insights to the team and developed a library to compute IoU metrics for 1D video segmentation, improving accuracy in distinguishing programs from commercials. Built a smoothing library to refine model outputs, reducing classification noise and improving prediction consistency.",
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
    description: "Developed a real-time object detection system for self-service fridges, enabling automatic product recognition using mounted cameras. Built a data annotation pipeline with feedback integration and optimized model training time. Evaluated and selected camera hardware, ensuring optimal placement. Integrated the detection system with the company’s ecosystem, automating recognition when fridge doors opened.",
    skills: (
        "CUDA",
        "FLIR",
        "NumPy",
        "PyTorch"
    )
)

#v(1em)

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

// = Hobby projects
// #link("https://github.com/hesampakdaman/rust_1brc")[*1 billion row challenge*].
// This challenge involves processing one billion temperature
// measurements to compute the minimum, mean, and maximum temperatures
// per weather station. I implemented this in Rust, leveraging its
// `std::sync::mpsc` and `std::thread` standard libraries for efficient,
// parallel data handling and memory-mapped files for optimized I/O
// performance and a customize hash function tailored for the dataset.
// The project achieves high performance, processing the entire 13GB
// input file using all available CPU cores. On an Apple M1 Pro it
// processes the input file in $~2.75$s.

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
