% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/summarize_sintax.R
\name{summarize_sintax}
\alias{summarize_sintax}
\title{Combine OTU table with sintax classification}
\usage{
summarize_sintax(sintax, otu_table)
}
\arguments{
\item{sintax}{file with the output of sintax classification}

\item{otu_table}{a tex table with samples as columns and OTUs as rows}
}
\description{
Outputs a table with sintax classification plus sequence abundances from the OTU table
}
\examples{
sintax <- "test_data/metabarcoding/ITS2-otus.sintax-UNITE.txt"
otu_table <- "test_data/metabarcoding/ITS2-otutab.txt"
summarize_sintax(sintax, otu_table)
}
