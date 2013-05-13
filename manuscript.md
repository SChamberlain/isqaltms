# Consuming altmetrics: some lessons and observation

### Authors: Scott A. Chamberlain

+ Scott A. Chamberlain ([scott@ropensci.org](mailto:scott@ropensci.org)), Biology Dept., Simon Fraser University, Burnaby, BC, Canada V5B 1E1

Abstract
--------


Introduction
--------

Altmetrics can be consumed in a variety of contexts: as static text/image in a pdf, as a javascript widget in an html page, as a histogram in a blog post. A use case that will be increasingly common is using scripting languages to consume altmetrics, e.g,. Python, Ruby, and R. Consuming altmetrics from this perspective is somewhat different than the typical use case in a web browser. 

Altmetrics data providers
--------

Table 1. Details on the current altmetrics providers.

Data Provider | Open API?    | Data format  | Granularity[^1] | Authentication
------------- | ----------   | ------------ | --------------  | --------------
PLoS          | Yes          | JSON,XML     | D,M,Y		  	  | None
ImpactStory   | Yes          | JSON			| T			  	  | API Key
Altmetric     | Limited      | JSON,JSONP	| I			  	  | API Key
PlumAnalytics | Subscription | unknown  	| unkown	  	  | unknown

[^1]: D: day; M: month; Y: year; T: total; I: incremental summaries

Altmetrics consumption
--------



Data standardization 
--------




Data consistency
--------

_martin suggested maybe talking about differences in numbers, presumably among data providers_
_could gather metrics from same DOIs using different providers and compare numbers..._


Authentication
--------

There are a variety of possible authentication methods, some of which include: a) no authentication, b) username and password pair, c) API key, and d) OAuth (including OAuth1 and OAuth2) (Table 1). These different options make sense in different use cases. The first, no authentication, used by PLoS, makes sense when an API first comes out and testers are needed to get feedback on the API. A benefit of an API with no authentication is the barrier to entry is lower. That is, if you don't have to ask a user to register to get an API key they are more likely to use the API. The second and third options, username/password pair and API key are relatively similar; API keys are used by both ImpactStory and Altmetric (Table 1). The last option, OAuth, is not used by any of the altmetrics providers. This authentication method is however used by many API providers. From the viewpoint of a consumer in a desktop scripting language, OAuth can be painful. What works better for scripting languages are the first three options.  

Conclusion
--------

Acknowledgments
--------

I would like to thank Martin Fenner for inviting me to write a paper in this special issue, and for his feedback on earlier versions of this manuscript.

References
--------