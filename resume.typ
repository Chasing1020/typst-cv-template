#set document(author: "Chasing1020", title: "resume")

#set page(
  paper: "a4",
  margin: (x: 1.2cm, y: 1.2cm),
  footer: [
    #set text(fill: gray, size: 10pt)
    #align(right)[Last updated on Month Date, Year]
  ],
  footer-descent: 0pt,
)

#set text(size: 13pt, overhang: true, lang: "en")

#show heading: set text(font: "Linux Biolinum")

#let icon(name, shift: 1.5pt) = {
  box(
    baseline: shift,
    height: 10.5pt,
    image("icons/"+ name + ".svg")
  )
  h(3pt)
}

#let period(t) = {
  set strong(delta: 0) 
  text(12pt, style: "normal", weight: "light")[#icon("calendar")#t] 
}

#let location(l) = {
  set strong(delta: 0)
  text(12pt, style: "normal", weight: "light")[#icon("location")#l]
}

#show heading.where(level: 1): it => text(
  size: 18pt,
  [
    #set strong(delta: 0)
    #align(center)[#{it.body}]
  ]
)

#show heading.where(level: 2): it => text(
  size: 15pt,
  [
    #set strong(delta: 0)
    #v(-8pt)
    #{it.body}
    #v(-12pt)
    #line(length: 100%, stroke: 1pt)
    #v(-4pt)
  ]
)

#show heading.where(level: 3): it => text(
  size: 13pt,
  [
    #v(-7pt)
    #{it.body}
    #v(-5pt)
  ]
)

#let concat(item) = {
  set text(13pt)
  let icon = icon.with(shift: 2pt)
  show link: underline

  icon(item.type)
  link(item.link)[#{item.display}]
}

#let concats(items) = {
  items.map(item => {
    h(1fr)
    concat(item)
    h(1fr)
  }).join("|")
}

#let skill_category(body) = {
  set text(size: 12pt, style: "normal", weight: "light")
  body
}

#let skill_item(category, desc) = {
  set block(above: 0.8em, below: 0.8em)
  
  grid(
    columns: (24fr, 80fr),
    gutter: 10pt,
    align(left)[
      #skill_category[#category]
    ],
    align(left)[
      #set text(size: 12pt, style: "normal", weight: "light")
      #desc
    ],
  )
}

/* --------------------- Start --------------------- */

= Chasing1020

#concats(
  ((
    type: "envelope", 
    link: "mailto:chasing1020@gmail.com", 
    display: "chasing1020@gmail.com"
  ), (
    type: "github", 
    link: "https://github.com/chasing1020", 
    display: "chasing1020"
  ), (
    type: "website", 
    link: "https://chasing1020.github.io", 
    display: "https://chasing1020.github.io"
  ), (
    type: "mobile-screen",
    link: "tel: +86 1234567890",
    display: "1234567890"
  ))
)

== Education

=== #link("https://aaa.edu.cn")[AAA University] #h(1fr) #period[Month, Year started -- Month, Year ended]

B. Eng in Computer Science and Technology #h(1fr) GPA 4.0/4.0, Rank 1/500

=== #link("https://bbb.edu.cn")[BBB University] #h(1fr) #period[Month, Year started -- Month, Year ended]

Master of Computer Science and Technology #h(1fr) GPA 4.0/4.0, Rank 1/300 

== Honors and Awards

+ The title or brief description of the award #h(1fr) #period[Month, Year started -- Month, Year ended]
+ The title or brief description of the award #h(1fr) #period[Month, Year started -- Month, Year ended]
+ The title or brief description of the award #h(1fr) #period[Month, Year started -- Month, Year ended]
+ The title or brief description of the award #h(1fr) #period[Month, Year started -- Month, Year ended]

== Internship Experience

=== #link("https://ccc.company.com")[CCC Company, Ltd.] #h(1fr) #period[Month, Year started -- Month, Year ended]

_Server System R\&D Intern, CCC Team_ #h(1fr) #location[City, State, Country]
- Situation: Describe the situation or problem you faced.
- Task: Explain the task or goal you were given.
- Action: Detail the actions you took to address the situation or complete the task.
- Result: The outcome of your actions, including any meaningful results or impact you had.

=== #link("https://ddd.company.com")[DDD Company, Ltd.] #h(1fr) #period[Month, Year started -- Month, Year ended]

_Backend R\&D Intern, DDD Team_ #h(1fr) #location[City, State, Country]
- Situation: To help the reader understand the circumstances where you were working.
- Task: The task or goal you were given should be clearly defined.
- Action: A detailed account of the steps you took, including any challenges you faced.
- Result: This is where you share the outcome of your actions. This could be a quantifiable result.

== Project Experience

#icon("github")#link("https://github.com/Chasing1020/Chasing1020")[#underline[Project1]]: Start by providing a brief overview of the project, including the purpose, goals, and any challenges or obstacles you faced. Use bullet points to describe your specific role in the project. This should include the tasks you were responsible for, any leadership or coordination you provided, and any unique contributions you made.

#icon("github")#link("https://github.com/Chasing1020/Chasing1020")[#underline[Project2]]: Use the STAR principle to provide specific examples of your accomplishments. Describe the situation or problem you faced, the task or goal you were given, the actions you took to address the situation, and the results you achieved.

#icon("github")#link("https://github.com/Chasing1020/Chasing1020")[#underline[Project3]]: Make sure to emphasize any skills or knowledge you gained from the project that would be relevant to the job you're applying for. This could include technical skills, project management experience, or communication and collaboration skills.
  
== Skills

#skill_item(
  "Languages:",
  "Golang > Scala > Rust > Java > Python > JavaScript"
)
#skill_item(
  "Development Tools:",
  "Linux, Docker, Kubernetes and any tools you want to include."
)
#skill_item(
  "Technology Stack:",
  "Database Systems, Multithreading Programming, Computer Networks, KV Storage Systems, Program Analysis, Distributed Systems."
)

/* --------------------- End --------------------- */