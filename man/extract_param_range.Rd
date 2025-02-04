% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extract_param.R
\name{extract_param_range}
\alias{extract_param_range}
\title{Optimises the parameters for a specified probability distribution given the
median and range of a sample and the number of samples}
\usage{
extract_param_range(values, distribution, samples)
}
\arguments{
\item{values}{A \code{vector}. If \code{type = percentiles}: \code{c(percentile_1, percentile_2)}; and if \code{type = range}: \code{c(median, min, max)}}

\item{distribution}{A \code{character} specifying distribution to use.
Default is \code{lnorm}; also takes \code{gamma} and \code{weibull}.}

\item{samples}{A \code{numeric} specifying the sample size if using
\code{type = "range"}.}
}
\value{
A list with output from stats::optim. See ?optim for more details
}
\description{
Optimises the parameters for a specified probability distribution given the
median and range of a sample and the number of samples
}
\examples{
# extract parameters of a gamma distribution from median and range
extract_param_range(
  values = c(8, 6, 13),
  distribution = "gamma",
  samples = 20
)
}
