package examples

invalid_project_name {
    count(input.project.name) > 10
}

invalid_location {
    not re_match("^EU|US$", input.project.location) 
}