## Run all files to prepare "Getting Start with Git and GitHub for R Users" workshop

# Setup
library(here)
here()

# Render the presentation, Base R exercises and data.table exercises & solutions
rmarkdown::render(here("Presentation", "Getting-Started-with-Git-and-GitHub-for-R-Users.Rmd"),
                  clean = TRUE, output_dir = here("Presentation"))

# Create a PDF version of the slides to share
library(webshot)
htmlSlides <- paste0("file://",
                    normalizePath(here("Presentation",
                                       "Getting-Started-with-Git-and-GitHub-for-R-Users.html")))
webshot(htmlSlides, here("Presentation", "Getting-Started-with-Git-and-GitHub-for-R-Users.pdf"),
        vwidth = 960, vheight = 540, zoom = 1.5, cliprect = "viewport")
