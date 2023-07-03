# File to create an additional metadata file.
library(readr)
library(jsonlite)

# Read the data
jobs <- read_csv("input_data/JobsAcUk.csv")

# Create names to the data.frame columns
jobNames <- c("Id", "Name","Employer","Location","SoftwareJob","SoftwareTermIn", "Salary",
              "SalarMin","SalaryMax","Hours","Contract","FundFor","QualificationType",
              "PlacedOn", "Closes","JobRef","h1","h2","h3","TypeRole","SubjectArea","Location2",
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

wdir <- "output_data/data/JobsAcUk/"
wantcols <- c("Name", "Employer","Location","Location2")
l <- list()


for(i in seq(1,10)){
  l[[paste0(wdir,jobs$Id[i])]] <- unbox(jobs[i,][wantcols])

}

toJSON(l, pretty = TRUE, auto_unbox = TRUE)


