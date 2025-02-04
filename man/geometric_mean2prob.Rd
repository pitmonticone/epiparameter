% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/convert_param.R
\name{geometric_mean2prob}
\alias{geometric_mean2prob}
\title{Converts the mean of the geometric distribution to the probability parameter}
\usage{
geometric_mean2prob(mean)
}
\arguments{
\item{mean}{The mean (expectation) of the geometric distribution}
}
\value{
A named list with the probability parameter
}
\description{
The geometric distribution has two forms. This conversion
function assumes that distribution represents the number of failures before
the first success (supported for zero). This is the same form as used by
\code{distributional::dist_geometric()}.
}
\examples{
geometric_mean2prob(mean = 2)
}
