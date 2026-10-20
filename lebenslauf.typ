#import "@preview/basic-resume:0.2.9": *

#let name = "Khuong Nguyen"
#let location = "Dortmund, Deutschland"
#let email = "khuong.nguyen@tutamail.com"
#let github = "github.com/minhkhuong0"
#let linkedin = "linkedin.com/in/stuxf"
#let phone = "+49 (0) 1556 069 8799"
#let personal-site = "nhmk.de"

#show: resume.with(
  author: name,
  // All the lines below are optional.
  // For example, if you want to to hide your phone number:
  // feel free to comment those lines out and they will not show.
  //location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  phone: phone,
  personal-site: personal-site,
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "a4",
  author-position: left,
  personal-info-position: left,
)

/*
* Lines that start with == are formatted into section headings
* You can use the specific formatting functions if needed
* The following formatting functions are listed below
* #edu(dates: "", degree: "", gpa: "", institution: "", location: "", consistent: false)
* #work(company: "", dates: "", location: "", title: "")
* #project(dates: "", name: "", role: "", url: "")
* certificates(name: "", issuer: "", url: "", date: "")
* #extracurriculars(activity: "", dates: "")
* There are also the following generic functions that don't apply any formatting
* #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
* #generic-one-by-two(left: "", right: "")
*/
== Bildungsweg

#edu(
  degree: "Technische Universität Dortmund",
  location: "Dortmund, Deutschland",
  dates: dates-helper(start-date: "10/2024", end-date: "aktuell"),
  institution: "B. Sc. in Informatik",

  // Uncomment the line below if you want edu formatting to be consistent with everything else
  consistent: true
)
- Relevante abgeschlossene Module: Software-Praktikum, Softwaretechnik
- Aktueller Notendurchschnitt: 1,6

== Berufserfahrung

#work(
  title: "Studentische Hiflskraft",
  location: "Dortmund, Deutschland",
  company: "Fachgebiet Raumbezogene Informationsverarbeitung TU Dortmund",
  dates: dates-helper(start-date: "09/2025", end-date: "aktuell"),
)
- Erstellung von Musterlösungen für Geographisches Informationssystemaufgaben (GIS) mit Python.
- Konzeption der Umwandlung vom proprietärem ArcGIS zum FOSS QGIS.

== Projekte

#project(
  name: "Kubernetes Homelab",
  // Role is optional
  //role: "Maintainer",
  // Dates is optional
  //dates: dates-helper(start-date: "Nov 2023", end-date: "aktuell"),
  // URL is also optional
  url: "github.com/minhkhuong0/homelab-iac",
)
- Deklarative und reproduzierbare Provisionierung und Konfiguration von On-Premises-Knoten mit Terraform und Ansible.
- Deklaratives, Continuous Deployment(GitOps) in Kubernetes-Cluster mit Argo CD.
- Bereitstellung und Betrieb von Kubernetes-Kerninsfrastuktur: K3s, Traefik, Longhorn.

== Extracurricular Activities

#extracurriculars(
  activity: "Capture The Flag Competitions",
  dates: dates-helper(start-date: "Jan 2021", end-date: "aktuell"),
)
- Founder of Les Amateurs (#link("https://amateurs.team")[amateurs.team]), currently ranked \#4 US, \#33 global on CTFTime (2023: \#4 US, \#42 global)
- Organized AmateursCTF 2023 and 2024, with 1000+ teams solving at least one challenge and \$2000+ in cash prizes
  - Scaled infrastructure using GCP, Digital Ocean with Kubernetes and Docker; deployed custom software on fly.io
- Qualified for DEFCON CTF 32 and CSAW CTF 2023, two of the most prestigious cybersecurity competitions globally

// #extracurriculars(
//   activity: "Science Olympiad Volunteering",
//   dates: "Sep 2023 --- aktuell"
// )
// - Volunteer and write tests for tournaments, including LA Regionals and SoCal State \@ Caltech

// #certificates(
//   name: "OSCP",
//   issuer: "Offensive Security",
//   // url: "",
//   date: "Oct 2024",
// )

== Skills
- *Programming Languages*: JavaScript, Python, C/C++, HTML/CSS, Java, Bash, R, Flutter, Dart
- *Technologies*: React, Astro, Svelte, Tailwind CSS, Git, UNIX, Docker, Caddy, NGINX, Google Cloud Platform
