% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/estimate_design.R
\name{estimate_design}
\alias{estimate_design}
\title{Estimate single-case design}
\usage{
estimate_design(
  data,
  dvar,
  pvar,
  mvar,
  m = NULL,
  s = NULL,
  rtt = NULL,
  between = TRUE,
  model = "JW",
  ...
)
}
\arguments{
\item{data}{A single-case data frame. See \code{\link{scdf}} to learn about this format.}

\item{dvar}{Character string with the name of the dependent variable. Defaults to the attributes in the scdf file.}

\item{pvar}{Character string with the name of the phase variable. Defaults to the attributes in the scdf file.}

\item{mvar}{Character string with the name of the measurement time variable. Defaults to the attributes in the scdf file.}

\item{m}{The mean depcting the overall distribution of which all cases are a random sample of.
m is estimated when m = NULL.}

\item{s}{The standard deviation depcting the between case variance of the overall performance.
If more than two single-cases are included in the scdf, the variance is estimated if s is set to NULL.}

\item{rtt}{The reliability of the measurements. The reliability is estimated when rtt = NULL.}

\item{between}{If FALSE trend, level, and slope effect estimations will be identical for each case.
If TRUE effects are estimated for each case seperately.}

\item{model}{Model used for calculating the slope parameter (see Huitema &
McKean, 2000). Default is \code{model = "B&L-B"}. Possible values are:
\code{"B&L-B"}, \code{"H-M"}, \code{"Mohr#1"}, \code{"Mohr#2"}, \code{"JW"}, \code{"JW2"}, and
\code{"Manly"}.}

\item{...}{Further arguments passed to the lm function used for parameter estimation.}
}
\value{
A list of parameters for each single-case. Parameters include name, length, and
starting measurementtime of each phase, trend level, and slope effects for each phase, mean,
standarddeviation, and reliability for each case.
}
\description{
This functions takes an scdf and extracts design parameters. The resulting
object can be unsed to randomly create new scdf files with the same
underlying parameters. This is usefull for monte-carlo studies and
bootstrapping procedures.
}
