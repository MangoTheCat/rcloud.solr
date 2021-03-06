% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/search.R
\name{rcloud.search}
\alias{rcloud.search}
\title{Search RCloud Notebooks}
\usage{
rcloud.search(query, all_sources = FALSE, sortby = "score",
  orderby = "desc", start = 0, pagesize = 10, max_pages = 20,
  group.limit = 4, hl.fragsize = 60)
}
\arguments{
\item{query}{Search string}

\item{all_sources}{Logical: Search single or multiple solr instances?}

\item{sortby}{Passed to solr for sorting}

\item{orderby}{Passed to solr for sorting}

\item{start}{Passed to solr}

\item{pagesize}{Passed to solr}

\item{max_pages}{Sets the size of search}

\item{group.limit}{Passed to solr. Controls how many cells to highlight for each notebook hit.}

\item{hl.fragsize}{How many characters to return with the highlighting}
}
\value{
Search response after parsing
}
\description{
Main search function exposed as an OCAP to the client.
}
