% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/convert_param.R
\name{nbinom_meandisp2probdisp}
\alias{nbinom_meandisp2probdisp}
\title{Convert the mean and dispersion (k) parameter of the negative binomial
distribution to the probability (p) and dispersion parameters.}
\usage{
nbinom_meandisp2probdisp(mean, dispersion)
}
\arguments{
\item{mean}{The mean (expectation) of the negative binomial distribution}

\item{dispersion}{The dispersion parameter (k) of the negative binomial. This
parameter is also commonly represented as \emph{r}.}
}
\value{
A named list with prob and dispersion
}
\description{
The negative binomial distribution can have several
formulations, the one used here assumes the random variable (X) is the number
of failures before a specified number of successes. This is the same form as
used by \code{distributional::dist_negative_binomial()}.
}
\examples{
nbinom_meandisp2probdisp(mean = 3, dispersion = 0.7)
}
