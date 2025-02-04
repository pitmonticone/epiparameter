% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/convert_param.R
\name{geometric_prob2mean}
\alias{geometric_prob2mean}
\title{Converts the probability parameter of the geometric distribution to the mean
(expectation) of the distribution}
\usage{
geometric_prob2mean(prob)
}
\arguments{
\item{prob}{The probability parameter of the geometric distribution}
}
\value{
A named list with the mean
}
\description{
The geometric distribution has two forms. This conversion
function assumes that distribution represents the number of failures before
the first success (supported for zero). This is the same form as used by
\code{distributional::dist_geometric()}.
}
\examples{
geometric_prob2mean(prob = 0.2)
}
