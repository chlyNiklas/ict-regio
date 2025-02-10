#!/bin/bash
# Check if a file argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <project_idea_file>"
  exit 1
fi

# Read the project idea from the file passed as the first argument
project=$(cat "$1")

# Create the prompt text. Note that:
# - There are no spaces around the '=' during variable assignment.
# - The file content is captured using $(cat "$1") and then interpolated.
prompt="You are given a project idea for a desktop application. The project should be doable in 4h and should not require external services like API’s. It should use a SQL-dabase. Consider that maybe a export feature could be usefull too.

The project is: $project

You write a document which describes the task to test subjects. It should contain:
- An overview of the features of this project
- Requirements
    - The database and its tables
    - Feature-1
        - User Story
        - Acceptance criteria
        - Time estimation 
    - Feature-2
        - User Story
        - Acceptance criteria
        - Time estimation 
    - Feature-3
        - User Story
        - Acceptance criteria
        - Time estimation 
    - Feature-4
        - User Story
        - Acceptance criteria
        - Time estimation 
    - Feature-5
        - User Story
        - Acceptance criteria
        - Time estimation 

Keep in mind that the sum of all Feature time estimations should not be more than 3.5 hours.
Please use markdown syntax."

# Pipe the prompt to ollama and capture the output.
result=$(echo "$prompt" | ollama run deepseek-r1:32b)
result=$(echo "$result" | perl -0777 -pe 's/<think>.*?<\/think>//gs')
# Append the output to the file specified by the argument.
echo "$result" > "$1"
