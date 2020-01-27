# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.8.8
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' TripleExponentialAverageTechnicalValue Class
#'
#' @field date_time 
#' @field trix 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TripleExponentialAverageTechnicalValue <- R6::R6Class(
  'TripleExponentialAverageTechnicalValue',
  public = list(
    `date_time` = NA,
    `trix` = NA,
    initialize = function(`date_time`, `trix`){
      if (!missing(`date_time`)) {
        self$`date_time` <- `date_time`
      }
      if (!missing(`trix`)) {
        self$`trix` <- `trix`
      }
    },
    toJSON = function() {
      TripleExponentialAverageTechnicalValueObject <- list()
      if (!is.null(self$`date_time`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`date_time`) && ((length(self$`date_time`) == 0) || ((length(self$`date_time`) != 0 && R6::is.R6(self$`date_time`[[1]]))))) {
          TripleExponentialAverageTechnicalValueObject[['date_time']] <- lapply(self$`date_time`, function(x) x$toJSON())
        } else {
          TripleExponentialAverageTechnicalValueObject[['date_time']] <- jsonlite::toJSON(self$`date_time`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`trix`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`trix`) && ((length(self$`trix`) == 0) || ((length(self$`trix`) != 0 && R6::is.R6(self$`trix`[[1]]))))) {
          TripleExponentialAverageTechnicalValueObject[['trix']] <- lapply(self$`trix`, function(x) x$toJSON())
        } else {
          TripleExponentialAverageTechnicalValueObject[['trix']] <- jsonlite::toJSON(self$`trix`, auto_unbox = TRUE)
        }
      }

      TripleExponentialAverageTechnicalValueObject
    },
    fromJSON = function(TripleExponentialAverageTechnicalValueJson) {
      TripleExponentialAverageTechnicalValueObject <- jsonlite::fromJSON(TripleExponentialAverageTechnicalValueJson)
      if (!is.null(TripleExponentialAverageTechnicalValueObject$`date_time`)) {
        self$`date_time` <- TripleExponentialAverageTechnicalValueObject$`date_time`
      }
      if (!is.null(TripleExponentialAverageTechnicalValueObject$`trix`)) {
        self$`trix` <- TripleExponentialAverageTechnicalValueObject$`trix`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(TripleExponentialAverageTechnicalValueJson) {
      TripleExponentialAverageTechnicalValueObject <- jsonlite::fromJSON(TripleExponentialAverageTechnicalValueJson, simplifyDataFrame = FALSE)
      self$setFromList(TripleExponentialAverageTechnicalValueObject)
    },
    setFromList = function(listObject) {




      if (!is.null(listObject$`date_time`)) {
        self$`date_time` <- as.POSIXct(listObject$`date_time`, tz = "GMT", "%Y-%m-%dT%H:%M:%OS")
      }
      else {
        self$`date_time` <- NA 
      }




      if (!is.null(listObject$`trix`)) {
        self$`trix` <- listObject$`trix`
      }
      else {
        self$`trix` <- NA 
      }

    },
    getAsList = function() {
      listObject = list()


      listObject[["date_time"]] <- self$`date_time`


        
      listObject[["trix"]] <- self$`trix`
      return(listObject)
    }
  )
)
