% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simaerep.R
\name{prep_for_sim}
\alias{prep_for_sim}
\title{Prepare data for simulation.}
\usage{
prep_for_sim(df_site, df_visit, event_names = "ae")
}
\arguments{
\item{df_site}{dataframe created by \code{\link[simaerep]{site_aggr}}}

\item{df_visit}{dataframe, created by \code{\link[simaerep]{sim_sites}}}

\item{event_names}{vector, contains the event names, default = "ae"}
}
\value{
dataframe
}
\description{
Internal function called by \code{\link[simaerep]{sim_sites}}.
Collect AEs per patient at visit_med75 for site and study as a vector of
integers.
}
\examples{
df_visit <- sim_test_data_study(
   n_pat = 100,
   n_sites = 5,
   frac_site_with_ur = 0.4,
   ur_rate = 0.2
)

df_visit$study_id <- "A"

df_site <- site_aggr(df_visit)

df_prep <- prep_for_sim(df_site, df_visit)
df_prep
}
\seealso{
\code{\link[simaerep]{sim_sites}}, \code{\link[simaerep]{sim_after_prep}}
}
