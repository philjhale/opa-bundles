package main

deny[msg] {
    count(input.project.name) > 10
    msg = "Project name is too long. Must be less than 10 characters"
}

deny[msg] {
    not re_match("^EU|US$", input.project.location) 
    msg = "Project location is invalid. Expected values are EU or US"
}