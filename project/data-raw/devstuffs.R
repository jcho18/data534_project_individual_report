library(devtools)
library(usethis)
library(desc)

# Remove default DESC
unlink("DESCRIPTION")
# Create and clean desc
my_desc <- description$new("!new")

# Set your package name
my_desc$set("Package", "Luftpack")

#Set your name
my_desc$set("Authors@R", "person('Colin', 'Fay', email = 'contact@colinfay.me', role = c('cre', 'aut'))")

# Remove some author fields
my_desc$del("Maintainer")

# Set the version
my_desc$set_version("0.0.0.9000")

# The title of your package
my_desc$set(Title = "My Supper API Wrapper")
# The description of your package
my_desc$set(Description = "A long description of this super package I'm working on.")
# The urls
my_desc$set("URL", "http://this")
my_desc$set("BugReports", "http://that")
# Save everyting
my_desc$write(file = "DESCRIPTION")

# If you want to use the MIT licence, code of conduct, and lifecycle badge
use_mit_license(name = "Colin FAY")
use_code_of_conduct()
use_lifecycle_badge("Experimental")
use_news_md()

# Get the dependencies
use_package("httr")
use_package("jsonlite")
use_package("curl")
use_package("attempt")
use_package("purrr")

# Clean your description
use_tidy_description()
