# File to create an additional metadata file.
library(readr)
library(jsonlite)

# Read the data
jobs <- read_csv("input_data/JobsAcUk.csv")

# Create names to the data.frame columns
jobNames <- c("Id", "Name","Employer","Location","SoftwareJob","SoftwareTermIn", "Salary",
              "SalarMin","SalaryMax","Hours","Contract","FundFor","QualificationType",
              "PlacedOn", "Closes","JobRef","h1","h2","h3","TypeRole","SubjectArea","Location",
              "Description")

# Assign names
names(jobs) <- jobNames

# Output format
#
# {
#     "output_data/data/file1": {
#         "identifier": "some identifier",
#         "name" : "some_name_for_display",
#         "description": "some description",
#         "licence": "some licence",
#         "format": "json"
#     },
#     "output_data/data/file2": {
#     ...
#     }
# }