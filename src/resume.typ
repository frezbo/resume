#set document(
  title: "Noel Georgi — Resume",
  author: "Noel Georgi",
)

#set page(
  paper: "a4",
  margin: (x: 1.5cm, y: 0.8cm),
)

#set text(
  font: "Helvetica Neue",
  size: 9pt,
  fill: rgb("#1a1a1a"),
)

#set par(justify: false, leading: 0.5em)

#let accent = rgb("#0f4c81")
#let with-photo = sys.inputs.at("photo", default: "true") == "true"

#show heading.where(level: 1): it => {
  v(2pt)
  set text(size: 11pt, weight: "bold", fill: accent)
  upper(it.body)
  v(-4pt)
  line(length: 100%, stroke: 0.6pt + accent)
  v(0pt)
}

#show heading.where(level: 2): it => {
  set text(size: 10pt, weight: "bold")
  it.body
}

#show link: it => text(fill: accent, it)

// ---------- HEADER ----------
#let header-text = [
  #text(size: 22pt, weight: "bold")[Noel Georgi] \
  #v(-2pt)
  #text(size: 11pt, fill: rgb("#444"))[
    Senior DevOps Engineer  ·  Talos Linux  ·  Kubernetes  ·  Low-level Systems
  ] \
  #v(2pt)
  #text(size: 9.5pt)[
    #link("mailto:noel.georgi@frezbo.dev")[noel.georgi\@frezbo.dev]
    #h(6pt) · #h(6pt)
    +91 73372 96592
    #h(6pt) · #h(6pt)
    Kerala, India
  ] \
  #text(size: 9.5pt)[
    #link("https://github.com/frezbo")[github.com/frezbo]
    #h(6pt) · #h(6pt)
    #link("https://www.linkedin.com/in/noel-georgi-43442555")[linkedin.com/in/noelgeorgi]
  ]
]

#if with-photo [
  #grid(
    columns: (auto, 1fr),
    gutter: 16pt,
    align: (left + horizon, left + horizon),
    box(
      clip: true,
      radius: 50%,
      width: 90pt,
      height: 90pt,
    )[
      #image("../assets/profile.jpg", width: 90pt, height: 90pt, fit: "cover")
    ],
    header-text,
  )
] else [
  #header-text
]

#v(4pt)

// ---------- SUMMARY ----------
= Summary

Senior DevOps Engineer with nearly 10 years across cloud-native infrastructure, low-level Linux, and CI/CD. Currently at Sidero Labs, contributing to *Talos Linux*. Long-time remote engineer on globally distributed teams.

// ---------- EXPERIENCE ----------
= Experience

#let role(company, location, position, dates, bullets) = {
  block(breakable: false)[
    #grid(
      columns: (1fr, auto),
      gutter: 6pt,
      [
        *#company* — #location \
        #text(style: "italic", size: 9.5pt)[#position]
      ],
      align(right)[
        #text(size: 9.5pt)[#dates]
      ],
    )
    #v(1pt)
    #for b in bullets [
      - #b
    ]
    #v(2pt)
  ]
}

#role(
  "Sidero Labs", "Remote",
  "Senior DevOps Engineer (Jan 2026 – Present) · DevOps Engineer (Oct 2021 – Jan 2026)",
  "Oct 2021 – Present",
  (
    [Own OS lifecycle for *Talos Linux* (immutable Kubernetes OS) — kernel and package builds, dependency / CVE management, release pipelines.],
    [Work across the boot stack — UEFI, *secure boot / trusted boot*, disk encryption (LUKS), system services, and the Linux kernel.],
    [Design and maintain CI/CD and codegen tooling for the OS and surrounding Kubernetes components.],
    [Maintain ARM single-board computer support — Raspberry Pi, NVIDIA Jetson, Rockchip, Allwinner — including U-Boot, device trees, and overlays.],
    [Enable NVIDIA GPU workloads via system extensions; debug failures end-to-end across kernel, containerd, kubelet, and the Kubernetes control plane.],
  ),
)

#role(
  "VivSoft", "Remote",
  "Senior DevSecOps Engineer",
  "Jan 2021 – Oct 2021",
  (
    [Built a Kubernetes-based platform on *Platform One BigBang* for regulated, hardened (DoD-style) environments.],
    [Deployed *Istio* service mesh, including a secure multi-tenant Kubeflow setup with sidecar injection.],
    [Standardized application delivery using *GitOps* workflows.],
  ),
)

#role(
  "Hitachi Vantara", "Pune, India",
  "Senior Cloud Engineer",
  "Oct 2019 – Dec 2020",
  (
    [Built Kubernetes-based CI/CD pipelines and security workflows for the company's cloud and data platform products.],
    [Automated container image build, test, and *vulnerability scanning*; established image security and quality standards.],
    [Implemented Kubernetes resource and compliance validation using *Inspec*.],
    [Migrated legacy applications onto Kubernetes; ran containers-in-containers via *runc / crun* for sandboxed builds.],
  ),
)

#role(
  "REAN Cloud", "Pune, India",
  "Senior Cloud Engineer",
  "Oct 2016 – Oct 2019",
  (
    [Built CI/CD systems for cloud infrastructure and application delivery used across customer engagements.],
    [Developed VM and container image pipelines using *Packer* with integrated build, test, and security-scan stages.],
    [Automated compliance hardening with Chef and Inspec, including *DISA STIG* validation for Linux operating systems and containers.],
    [Containerized the internal accelerator platform onto Docker Swarm; contributed upstream to *Terraform* and *Inspec*.],
  ),
)

// ---------- OSS & PROJECTS ----------
= Open Source & Projects

- *#link("https://github.com/frezbo/irsa-anywhere")[IRSA Anywhere]* — OIDC-based IAM Roles for Service Accounts for Kubernetes clusters outside AWS.
- *#link("https://github.com/frezbo/gcp-workload-identity-federation-demo")[GCP Workload Identity Federation Demo]* — Keyless authentication for Kubernetes workloads against Google Cloud.
- Active OSS contributor; further personal tooling at #link("https://github.com/frezbo")[github.com/frezbo].

// ---------- SKILLS ----------
= Skills

#let skill(label, body) = [#text(weight: "bold")[#label:] #body]

- #skill("Systems & Containers", [Linux, Talos, Kubernetes, containerd, Docker, runc, crun, secure boot, systemd])
- #skill("Cloud & IaC", [AWS, GCP, Azure, Terraform, Pulumi, Crossplane])
- #skill("CI/CD & GitOps", [GitHub Actions, Jenkins, Helm, Argo CD, Flux])
- #skill("Security & Identity", [OIDC, IAM, IRSA, Workload Identity Federation, Inspec, Trivy])
- #skill("Languages", [Go, Python, Bash, Ruby])

// ---------- EDUCATION & LANGUAGES ----------
= Education & Languages

#grid(
  columns: (1fr, auto),
  gutter: 6pt,
  [
    *College of Engineering, Kidangoor* — B.Tech, Electronics and Communication Engineering (incomplete)
  ],
  align(right)[
    #text(size: 9.5pt)[2012 – 2016]
  ],
)

*Languages:* English (Professional), Malayalam (Native)
