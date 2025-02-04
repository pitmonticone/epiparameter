test_that("create_epidist_metadata fails when vector is given for non-vb", {
  expect_error(
    create_epidist_metadata(
      transmission_mode = "natural_human_to_human",
      vector = "mosquito"
    ),
    regexp = "(A vector is given for a non-vector-borne disease)"
  )
})

test_that("create_epidist_citation works with PMID", {
    citation <- create_epidist_citation(
      author = "Smith_etal",
      year = 2002,
      DOI = "10.1282718",
      PMID = 84772544
    )
    expect_identical(
      citation,
      "Smith et al. (2002) <10.1282718> PMID: 84772544"
    )
})

test_that("possible_epidist_params works as expected", {
  expect_output(possible_epidist_params())
})

test_that("clean_epidist_params fails when gamma parameters are incorrect", {
  gamma_params <- c(meanlog = 1, sdlog = 1)
  class(gamma_params) <- "gamma"
  expect_error(
    clean_epidist_params(prob_dist_params = gamma_params),
    regexp = "Names of gamma distribution parameters are incorrect"
  )
})

test_that("clean_epidist_params fails when lognormal parameters are
          incorrect", {
  lognormal_params <- c(shape = 1, scale = 1)
  class(lognormal_params) <- "lnorm"
  expect_error(
    clean_epidist_params(prob_dist_params = lognormal_params),
    regexp = "Names of lognormal distribution parameters are incorrect"
  )
})

test_that("clean_epidist_params fails when weibull parameters are incorrect", {
  weibull_params <- c(meanlog = 1, sdlog = 1)
  class(weibull_params) <- "weibull"
  expect_error(
    clean_epidist_params(prob_dist_params = weibull_params),
    regexp = "Names of weibull distribution parameters are incorrect"
  )
})

test_that("clean_epidist_params works for default method", {
  weibull_params <- c(meanlog = 1, sdlog = 1)
  class(weibull_params) <- "distribution"
  expect_message(
    clean_epidist_params(prob_dist_params = weibull_params),
    regexp = "parameters class not recognised"
  )
})

test_that("create_epidist_region works as expected", {
  region <- create_epidist_region(
    continent = "Europe",
    country = "UK",
    region = "Cambridgeshire",
    city = "Cambridge"
  )
  expect_identical(
    region,
    list(
      continent = "Europe",
      country = "UK",
      region = "Cambridgeshire",
      city = "Cambridge"
    )
  )

  region <- create_epidist_region(
    continent = NA,
    country = "UK",
    region = NA,
    city = "Cambridge"
  )
  expect_identical(
    region,
    list(
      continent = NA,
      country = "UK",
      region = NA,
      city = "Cambridge"
    )
  )
})

test_that("clean_disease works as expected", {
  disease <- clean_disease("COVID-19")
  expect_identical(disease, "covid_19")
})

test_that("clean_disease fails as expected", {
  expect_error(
    clean_disease(5),
    regexp = "(Assertion on 'x' failed)*(Must be of type)"
  )
})
