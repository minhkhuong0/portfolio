#import "@preview/basic-resume:0.2.9": *

#let name = "Khuong Nguyen"
#let location = "Dortmund, Deutschland"
#let email = "khuong.nguyen@tutamail.com"
#let github = "github.com/minhkhuong0"
#let linkedin = "linkedin.com/in/nhmkhuong"
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
  //linkedin: linkedin,
  phone: phone,
  personal-site: personal-site,
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "a4",
  author-position: center,
  personal-info-position: center,
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
  dates: dates-helper(start-date: "10.2024", end-date: "heute"),
  institution: "B. Sc. in Informatik",

  // Uncomment the line below if you want edu formatting to be consistent with everything else
  consistent: true
)
- Relevante abgeschlossene Module: Software-Praktikum, Softwaretechnik, Betriebssysteme, Rechernetze
- Aktueller Notendurchschnitt: 1,6

== Berufserfahrung

#work(
  title: "Studentische Hilfskraft",
  location: "Dortmund, Deutschland",
  company: "Fachgebiet Raumbezogene Informationsverarbeitung TU Dortmund",
  dates: dates-helper(start-date: "09.2025", end-date: "heute"),
)
- Erstellt Musterlösungen für Geographisches Informationssystemaufgaben (GIS) mit Python

== Projekte

#project(
  name: "Kubernetes Homelab IaC",
  // Role is optional
  //role: "Maintainer",
  // Dates is optional
  //dates: dates-helper(start-date: "Nov 2023", end-date: "heute"),
  // URL is also optional
  url: "github.com/minhkhuong0/homelab-iac",
)
- Provisionierte und konfigurierte deklarativ und reproduzierbar die On-Premises-Knoten mit Terraform und Ansible
- Etablierte Continuous Deployment (GitOps) in den Kubernetes-Cluster mit Argo CD
- Orchestrierte die Kubernetes-Kerninfrastruktur: K3s, MetalLB, Traefik, Longhorn

#project(
  name: "AWS Statische Seite",
  url: "nhmk.de",
)
- Provisionierte AWS- und Cloudflare-Ressourcen mithilfe von Terraform
- Konfigurierte einen NGINX-Webserver-Docker-Container mit Ansible
- Automatisierte die Bereitstellung der Webseiteninhalte inklusive Lebenslauf mit GitHub Actions

#project(
  name: "Brettspielentwicklung (Software-Praktikum)"
)
- Integierte und reviewed Code durch GitLab Merge Requests
- Implementierte die Netzwerkschicht in Kotlin, die das Online-Spielen ermöglicht
// == Extracurricular Activities

// #extracurriculars(
//   activity: "Science Olympiad Volunteering",
//   dates: "Sep 2023 --- heute"
// )
// - Volunteer and write tests for tournaments, including LA Regionals and SoCal State \@ Caltech

// #certificates(
//   name: "OSCP",
//   issuer: "Offensive Security",
//   // url: "",
//   date: "Oct 2024",
// )

== Kenntnisse:
- *Programmiersprachen*: Python, Kotlin, C, Bash, Nix
- *Infrastruktur*: OpenTofu, Ansible, Linux (Debian, NixOS), AWS, Cloudflare, Oracle Cloud Infrastructure
- *Container*: Docker, Kubernetes (K3s, Argo CD, MetalLB, Longhorn)
- *Networking*: NGINX, Traefik, CoreDNS
- *Tools*: Git, GitHub Actions, CI/CD
- *Sprachen*: Deutsch (Verhandlungssicher), Englisch (Verhandlungssicher), Vietnamesisch: (Mutterspache)
