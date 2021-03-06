\name{redisSRandMember}
\alias{redisSRandMember}
\title{Choose a random element from a set}
\description{
Select and return an element of a set at random.
}
\usage{
redisSRandMember(set, ...)
}
\arguments{
  \item{set}{The set key name (character).}
  \item{...}{ Optional additional arguments.  Specify \code{raw=TRUE} to skip de-serialization of the data.}
}
\value{
An element from the set selected randomly. An error is thrown if the set does
not exist.
}
\references{
http://redis.io/commands
}
\author{
B. W. Lewis
}
\seealso{
\code{\link{redisSAdd}}
}
\examples{
\dontrun{
redisConnect()
redisSAdd('set',1)
redisSAdd('set',2)
redisSAdd('set',3)
redisSRandMember('set')
}
}
