# File to create an additional metadata file.
library(readr)
library(jsonlite)

# Read the data
jobs <- read_csv("input_data/JobsAcUk.csv", show_col_types = FALSE)

# Create names to the data.frame columns
jobNames <- c("resource:identifier", "name","employer","location","SoftwareJob","SoftwareTermIn", "salary",
              "SalarMin","SalaryMax","Hours","Contract","FundFor","QualificationType",
              "PlacedOn", "Closes","JobRef","h1","h2","h3","TypeRole","SubjectArea","location2",
              "resource:description")

# Assign names
names(jobs) <- jobNames

# Create some new columns.
jobs["resource:licence"] <- rep("CopyrightMaterial", nrow(jobs))
jobs["resource:format"] <- rep("text", nrow(jobs))
jobs["resource:access_url"] <- rep("SomeURL", nrow(jobs))

# Columns we want to keep
wantcols <- c("name", "resource:identifier","resource:description", "resource:licence", 
              "resource:format" ,"resource:access_url", "employer","salary","location","location2")

# Output format all of which have to be present and have some content
#
# {
#     "output_data/data/file1": {
#         "name" : "some_name_for_display",
#         "resource:identifier": "some identifier",
#         "resource:description": "some description",
#         "resource:licence": "some licence",
#          "resource:access_url": "some access url",
#         "resource:format": "json"
#     },
#     "output_data/data/file2": {
#     ...
#     }
# }

# Set some basic parameters

# Where the output data is to be found
wdir <- "output_data/data/JobsAcUk/"


# Where the data will go
l <- list()

# Populate the data structure
for(i in seq(1, nrow(jobs))){
  l[[paste0(wdir,jobs$"resource:identifier"[i])]] <- unbox(jobs[i,][wantcols])

}

# Write the output to file
write(toJSON(l, pretty = TRUE, auto_unbox = TRUE), "output_data/metadata/resources.json")


