% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AFLP_prepare_eems.R
\name{AFLP_prepare_eems}
\alias{AFLP_prepare_eems}
\title{Prepare EEMS input}
\usage{
AFLP_prepare_eems(
  output,
  structure_input_path,
  population_data_path,
  remove = 2
)
}
\arguments{
\item{output}{basename of the output files}

\item{structure_input_path}{AFLP matrix where rows reperesent individuals and columns the markers, no header, first column are individual names in the format Population-Individual (eg. POP1-1), if any additional column should be ommited (eg. with population number) it should be passed using the 'remove' argument. Assumes that the first row should be removed and duplicated rows as well (that's how the structure input is usually coded for AFLP).}

\item{population_data_path}{path for the population data file where the first column is the population, second y-coordinate and third x-coordinate. The rest of the columns are ignored. Can have a header as long it does not contain any of the population names!}

\item{remove}{vector of colums to be removed, defalults to usual population column in structure files. Set as remove=NULL if no column should be removed.}
}
\description{
Prepare input files for eems. Distances are calculated using jaccard distance, individuals with the same distances are removed (closely related or clonal individuals)
}
\examples{

output <- "Aal" 
structure_input_path <- "test_data/structure/Aal_carp_structure-inputD.txt"
population_data_path <- "test_data/structure/popdata.txt"
AFLP_prepare_eems(output, structure_input_path, population_data_path, remove=2)
}
