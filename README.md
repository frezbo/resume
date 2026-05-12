# Frezbo's Resume

Resume source written in [Typst](https://typst.app/), compiled to PDF.

## Prerequisites

- [Typst](https://typst.app/) (`brew install typst`)

## Source

- `src/resume.typ` — resume content
- `assets/profile.jpg` — profile photo (used by photo build only)

## Build

Two outputs from one source via the `photo` input flag:

```sh
# Without photo
typst compile --root . --input photo=false src/resume.typ target/Noel_Georgi_Resume.pdf

# With photo
typst compile --root . --input photo=true  src/resume.typ target/Noel_Georgi_Resume_Photo.pdf
```

## Live preview

```sh
typst watch --root . src/resume.typ target/resume.pdf
```
