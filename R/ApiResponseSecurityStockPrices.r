# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.9.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ApiResponseSecurityStockPrices Class
#'
#' @field stock_prices 
#' @field security 
#' @field next_page 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApiResponseSecurityStockPrices <- R6::R6Class(
  'ApiResponseSecurityStockPrices',
  public = list(
    `stock_prices` = NULL,
    `security` = NULL,
    `next_page` = NULL,
    initialize = function(`stock_prices`, `security`, `next_page`){
      if (!missing(`stock_prices`)) {
        stopifnot(is.list(`stock_prices`))
        lapply(`stock_prices`, function(x) stopifnot(R6::is.R6(x)))
        self$`stock_prices` <- `stock_prices`
      }
      if (!missing(`security`)) {
        stopifnot(R6::is.R6(`security`))
        self$`security` <- `security`
      }
      if (!missing(`next_page`)) {
        stopifnot(is.character(`next_page`), length(`next_page`) == 1)
        self$`next_page` <- `next_page`
      }
    },
    toJSON = function() {
      ApiResponseSecurityStockPricesObject <- list()
      if (!is.null(self$`stock_prices`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`stock_prices`) && ((length(self$`stock_prices`) == 0) || ((length(self$`stock_prices`) != 0 && R6::is.R6(self$`stock_prices`[[1]]))))) {
          ApiResponseSecurityStockPricesObject[['stock_prices']] <- lapply(self$`stock_prices`, function(x) x$toJSON())
        } else {
          ApiResponseSecurityStockPricesObject[['stock_prices']] <- jsonlite::toJSON(self$`stock_prices`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`security`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`security`) && ((length(self$`security`) == 0) || ((length(self$`security`) != 0 && R6::is.R6(self$`security`[[1]]))))) {
          ApiResponseSecurityStockPricesObject[['security']] <- lapply(self$`security`, function(x) x$toJSON())
        } else {
          ApiResponseSecurityStockPricesObject[['security']] <- jsonlite::toJSON(self$`security`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`next_page`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`next_page`) && ((length(self$`next_page`) == 0) || ((length(self$`next_page`) != 0 && R6::is.R6(self$`next_page`[[1]]))))) {
          ApiResponseSecurityStockPricesObject[['next_page']] <- lapply(self$`next_page`, function(x) x$toJSON())
        } else {
          ApiResponseSecurityStockPricesObject[['next_page']] <- jsonlite::toJSON(self$`next_page`, auto_unbox = TRUE)
        }
      }

      ApiResponseSecurityStockPricesObject
    },
    fromJSON = function(ApiResponseSecurityStockPricesJson) {
      ApiResponseSecurityStockPricesObject <- jsonlite::fromJSON(ApiResponseSecurityStockPricesJson)
      if (!is.null(ApiResponseSecurityStockPricesObject$`stock_prices`)) {
        self$`stock_prices` <- ApiResponseSecurityStockPricesObject$`stock_prices`
      }
      if (!is.null(ApiResponseSecurityStockPricesObject$`security`)) {
        self$`security` <- ApiResponseSecurityStockPricesObject$`security`
      }
      if (!is.null(ApiResponseSecurityStockPricesObject$`next_page`)) {
        self$`next_page` <- ApiResponseSecurityStockPricesObject$`next_page`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(ApiResponseSecurityStockPricesJson) {
      ApiResponseSecurityStockPricesObject <- jsonlite::fromJSON(ApiResponseSecurityStockPricesJson)
      self$`stock_prices` <- lapply(ApiResponseSecurityStockPricesObject$`stock_prices`, function(x) StockPriceSummary$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      SecuritySummaryObject <- SecuritySummary$new()
      self$`security` <- SecuritySummaryObject$fromJSON(jsonlite::toJSON(ApiResponseSecurityStockPricesObject$security, auto_unbox = TRUE))
      self$`next_page` <- ApiResponseSecurityStockPricesObject$`next_page`
    }
  )
)