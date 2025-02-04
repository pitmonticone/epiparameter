% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/epidist.R
\name{format.epidist}
\alias{format.epidist}
\title{Format method for epidist class}
\usage{
\method{format}{epidist}(x, header = TRUE, vb = NULL, ...)
}
\arguments{
\item{x}{epidist object}

\item{header}{Boolean logical determining whether the header (first part) of
the print method is printed. This is used internally for plotting the
vb_epidist class}

\item{vb}{Either NULL (default) or a character string of either "Intrinsic"
or "Extrinsic" which is used internally for plotting the vb_epidist class}

\item{...}{further arguments passed to or from other methods}
}
\value{
Invisibly returns an \code{\link{epidist}}. Called for printing side-effects.
}
\description{
Format method for epidist class
}
\examples{
epidist <- epidist(
  disease = "ebola",
  epi_dist = "incubation_period",
  prob_distribution = "gamma",
  prob_distribution_params = c(shape = 1, scale = 1)
)
format(epidist)
}
