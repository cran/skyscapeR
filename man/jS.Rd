% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/events.R
\name{jS}
\alias{jS}
\title{Declination of June Solstice for a given year}
\usage{
jS(
  year = skyscapeR.env$cur.year,
  loc = FALSE,
  parallax = 0.00224,
  altitude = 0,
  verbose = TRUE
)
}
\arguments{
\item{year}{Year for which to calculate the declination.
Defaults to present year as given by \emph{Sys.Date}.}

\item{loc}{(Optional) This can be either the latitude of the
location, or a \emph{skyscapeR.horizon} object. If missing or \emph{FALSE},
function will output geocentric declination.}

\item{parallax}{(Optional) Average parallax value for the sun.
Defaults to 0.00224.}

\item{altitude}{(Optional) Altitude of the sun. Defaults to 0 degrees.}

\item{verbose}{(Optional) Boolean to control output of warnings and messages.
Defaults to TRUE.}
}
\description{
This function calculates the declination of the sun
at June Solstice for a given year, based upon
obliquity estimation and corrected average parallax.
}
\examples{
# June Solstice geocentric declination for year 4001 BC:
jS(-4000)

# Topocentric declination for same year and latitude of 50 degres N:
jS(-4000, loc=50)
}
\seealso{
\code{\link{obliquity}}, \code{\link{dS}}, \code{\link{eq}},
\code{\link{zenith}}, \code{\link{antizenith}}, \code{\link{spatial.equinox}},
\code{\link{parallax.corr}}
}
