# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.8.8
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ApiResponseMunicipalities Class
#'
#' @field municipalities 
#' @field next_page 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApiResponseMunicipalities <- R6::R6Class(
  'ApiResponseMunicipalities',
  public = list(
    `municipalities` = NA,
    `municipalities_data_frame` = NULL,
    `next_page` = NA,
    initialize = function(`municipalities`, `next_page`){
      if (!missing(`municipalities`)) {
        self$`municipalities` <- `municipalities`
      }
      if (!missing(`next_page`)) {
        self$`next_page` <- `next_page`
      }
    },
    toJSON = function() {
      ApiResponseMunicipalitiesObject <- list()
      if (!is.null(self$`municipalities`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`municipalities`) && ((length(self$`municipalities`) == 0) || ((length(self$`municipalities`) != 0 && R6::is.R6(self$`municipalities`[[1]]))))) {
          ApiResponseMunicipalitiesObject[['municipalities']] <- lapply(self$`municipalities`, function(x) x$toJSON())
        } else {
          ApiResponseMunicipalitiesObject[['municipalities']] <- jsonlite::toJSON(self$`municipalities`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`next_page`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`next_page`) && ((length(self$`next_page`) == 0) || ((length(self$`next_page`) != 0 && R6::is.R6(self$`next_page`[[1]]))))) {
          ApiResponseMunicipalitiesObject[['next_page']] <- lapply(self$`next_page`, function(x) x$toJSON())
        } else {
          ApiResponseMunicipalitiesObject[['next_page']] <- jsonlite::toJSON(self$`next_page`, auto_unbox = TRUE)
        }
      }

      ApiResponseMunicipalitiesObject
    },
    fromJSON = function(ApiResponseMunicipalitiesJson) {
      ApiResponseMunicipalitiesObject <- jsonlite::fromJSON(ApiResponseMunicipalitiesJson)
      if (!is.null(ApiResponseMunicipalitiesObject$`municipalities`)) {
        self$`municipalities` <- ApiResponseMunicipalitiesObject$`municipalities`
      }
      if (!is.null(ApiResponseMunicipalitiesObject$`next_page`)) {
        self$`next_page` <- ApiResponseMunicipalitiesObject$`next_page`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(ApiResponseMunicipalitiesJson) {
      ApiResponseMunicipalitiesObject <- jsonlite::fromJSON(ApiResponseMunicipalitiesJson, simplifyDataFrame = FALSE)
      self$setFromList(ApiResponseMunicipalitiesObject)
    },
    setFromList = function(listObject) {


      self$`municipalities` <- lapply(listObject$`municipalities`, function(x) {
      MunicipalityObject <- Municipality$new()
      MunicipalityObject$setFromList(x)
      return(MunicipalityObject)
      })

      municipalities_list <- lapply(self$`municipalities`, function(x) {
        return(x$getAsList()) 
      })

      self$`municipalities_data_frame` <- do.call(rbind, lapply(municipalities_list, data.frame))






      if (!is.null(listObject$`next_page`)) {
        self$`next_page` <- listObject$`next_page`
      }
      else {
        self$`next_page` <- NA 
      }

    },
    getAsList = function() {
      listObject = list()
      listObject[["municipalities"]] <- lapply(self$`municipalities`, function(o) {
        return(o$getAsList())
      })




        
      listObject[["next_page"]] <- self$`next_page`
      return(listObject)
    }
  )
)
