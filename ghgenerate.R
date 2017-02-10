proposal <- "Conference Management System for R Consortium Supported Conferences"
proposal.file <- "conference-management-proposal.Rmd"
author <- "Steph Locke, Heather Turner, Julie Josse, Balasubramanian Narasimhan, Torben Tvedebrink, Torsten Hothorn, Achim Zeileis"

rmarkdown::render(proposal.file, output_format="github_document",
                  output_dir="out", quiet=TRUE)

# don't know if we need this as wells a github_document? but needed for github 
# pages thing I think
rmarkdown::render(proposal.file, output_format="html_document",
                  output_dir="out", quiet=TRUE)

rmarkdown::render(proposal.file, output_format="pdf_document",
                  output_dir="out", quiet=TRUE)

