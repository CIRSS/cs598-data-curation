---
layout: page
title: Staff
description: A listing of all the course staff members.
---

# Staff

## Instructors

{% assign instructors = site.staffers | where: 'role', 'Instructor' %}
{% for staffer in instructors %}
{{ staffer }}
{% endfor %}

{% assign teaching_assistants = site.staffers | where: 'role', 'Teaching Assistant' %}
{% assign num_teaching_assistants = teaching_assistants | size %}
{% if num_teaching_assistants != 0 %}

## Teaching Assistants

{% for staffer in teaching_assistants %}
{{ staffer }}
{% endfor %}
{% endif %}

## Previous Staff
**Fall 2022:** Vardhan Dongre; Sandip Sonawane; Hang Xie; Abhinav Reddy; Chandana Bitra; Pranith Bottu; Sudharsan K A; Shubham Mehta; Aakansha Singh <br />
**Fall 2021:** Vardhan Dongre; Sarthak Mishra; Sandip Sonawane; Chandana Bitra; Pranith Bottu; Shubham Mehta; Aakansha Singh <br />
**Fall 2020:** Jacob Jett; Vardhan Dongre; Pankaj Sharma; Suyoung Park; Shrilesh Kathe <br />
