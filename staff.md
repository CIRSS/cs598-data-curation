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


{% assign course_staff = site.staffers | where: 'role', 'Course Staff' %}
{% assign num_course_staff = course_staff | size %}
{% if num_course_staff != 0 %}
## Course Staff

{% for staffer in course_staff %}
{{ staffer }}
{% endfor %}
{% endif %}
