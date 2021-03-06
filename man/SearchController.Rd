% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/search-controller.R
\name{SearchController}
\alias{SearchController}
\title{Search Controller}
\arguments{
\item{sources}{a named list of sources. Each source must be a list containing
at least \code{solr.url}. The first source must be called \code{main_source}.
To access old solr instances specify \code{solr.api.version}.}
}
\description{
An R6 class to control the gathering, sorting and paging of search results. This
class controls a number of \code{SearchSource} instances by instantiating them,
and triggering new searches. Results are merged together and stored in the
controller, with pages returned as needed.
}
\section{Details}{

\code{$new(sources = NULL)} starts a new search controller

\code{$set_sources(sources)}
 If sources is provided they are concatenated they are
 retrieved from \code{rcloud.config} (\code{main_source})
 and \code{.session} (\code{gist_sources}).

\code{$search(all_sources, start, pagesize, sortby, orderby, ...)}
  Main search interface. Arguments match \code{\link{rcloud.search}}. If start is
  not zero it will read from internal cache, otherwise it will call \code{new_search}.

\code{$new_search(all_sources, sortby, orderby, ...)}
  This triggers a search on the sources and merges/sorts the results back together into
  the \code{results} internal object.

\code{$build_response(start, pagesize)}
  Build the response to send back to RCloud. This takes the start point and page size and
  returns the right page from the results.

\code{$get_sources()} return the config
\code{$get_raw_results()} return the results as returned by sources
\code{$get_results()} return the merged results
}

\examples{
\dontrun{
SC <-
SearchController$new(sources = list(
 main_source = list(solr.url = "http://solr:8983/solr/rcloudnotebooks")
))
}

}
