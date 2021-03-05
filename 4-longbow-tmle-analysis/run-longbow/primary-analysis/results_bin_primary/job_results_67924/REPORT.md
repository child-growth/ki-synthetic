---
title: "Risk Factor Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowRiskFactors','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
params:
  roles:
    value:
      - exclude
      - strata
      - id
      - W
      - A
      - Y
  data: 
    value: 
      type: 'web'
      uri: 'https://raw.githubusercontent.com/HBGD-UCB/longbowRiskFactors/master/inst/sample_data/birthwt_data.rdata'
  nodes:
    value:
      strata: ['study_id', 'mrace']
      id: ['subjid']
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
      A: ['parity_cat']
      Y: ['haz01']
  script_params:
    value:
      parallelize:
        input: checkbox
        value: FALSE
      count_A:
        input: checkbox
        value: TRUE
      count_Y:
        input: checkbox
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** fage

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_fhtcm
* single
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_fhtcm
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid       |country                      |fage    | ever_stunted| n_cell|     n|
|:-----------|:-------------|:----------------------------|:-------|------------:|------:|-----:|
|0-24 months |COHORTS       |GUATEMALA                    |>=38    |            0|     96|  1301|
|0-24 months |COHORTS       |GUATEMALA                    |>=38    |            1|    290|  1301|
|0-24 months |COHORTS       |GUATEMALA                    |<32     |            0|    147|  1301|
|0-24 months |COHORTS       |GUATEMALA                    |<32     |            1|    462|  1301|
|0-24 months |COHORTS       |GUATEMALA                    |[32-38) |            0|     64|  1301|
|0-24 months |COHORTS       |GUATEMALA                    |[32-38) |            1|    242|  1301|
|0-24 months |COHORTS       |PHILIPPINES                  |>=38    |            0|     90|  2951|
|0-24 months |COHORTS       |PHILIPPINES                  |>=38    |            1|    240|  2951|
|0-24 months |COHORTS       |PHILIPPINES                  |<32     |            0|    669|  2951|
|0-24 months |COHORTS       |PHILIPPINES                  |<32     |            1|   1414|  2951|
|0-24 months |COHORTS       |PHILIPPINES                  |[32-38) |            0|    157|  2951|
|0-24 months |COHORTS       |PHILIPPINES                  |[32-38) |            1|    381|  2951|
|0-24 months |LCNI-5        |MALAWI                       |>=38    |            0|     10|   106|
|0-24 months |LCNI-5        |MALAWI                       |>=38    |            1|     16|   106|
|0-24 months |LCNI-5        |MALAWI                       |<32     |            0|     22|   106|
|0-24 months |LCNI-5        |MALAWI                       |<32     |            1|     34|   106|
|0-24 months |LCNI-5        |MALAWI                       |[32-38) |            0|      8|   106|
|0-24 months |LCNI-5        |MALAWI                       |[32-38) |            1|     16|   106|
|0-24 months |MAL-ED        |BANGLADESH                   |>=38    |            0|     27|   151|
|0-24 months |MAL-ED        |BANGLADESH                   |>=38    |            1|     42|   151|
|0-24 months |MAL-ED        |BANGLADESH                   |<32     |            0|      7|   151|
|0-24 months |MAL-ED        |BANGLADESH                   |<32     |            1|     23|   151|
|0-24 months |MAL-ED        |BANGLADESH                   |[32-38) |            0|     23|   151|
|0-24 months |MAL-ED        |BANGLADESH                   |[32-38) |            1|     29|   151|
|0-24 months |MAL-ED        |BRAZIL                       |>=38    |            0|     21|    79|
|0-24 months |MAL-ED        |BRAZIL                       |>=38    |            1|      9|    79|
|0-24 months |MAL-ED        |BRAZIL                       |<32     |            0|      8|    79|
|0-24 months |MAL-ED        |BRAZIL                       |<32     |            1|     10|    79|
|0-24 months |MAL-ED        |BRAZIL                       |[32-38) |            0|     25|    79|
|0-24 months |MAL-ED        |BRAZIL                       |[32-38) |            1|      6|    79|
|0-24 months |MAL-ED        |INDIA                        |>=38    |            0|     16|   161|
|0-24 months |MAL-ED        |INDIA                        |>=38    |            1|     20|   161|
|0-24 months |MAL-ED        |INDIA                        |<32     |            0|     18|   161|
|0-24 months |MAL-ED        |INDIA                        |<32     |            1|     35|   161|
|0-24 months |MAL-ED        |INDIA                        |[32-38) |            0|     24|   161|
|0-24 months |MAL-ED        |INDIA                        |[32-38) |            1|     48|   161|
|0-24 months |MAL-ED        |NEPAL                        |>=38    |            0|     12|    79|
|0-24 months |MAL-ED        |NEPAL                        |>=38    |            1|      5|    79|
|0-24 months |MAL-ED        |NEPAL                        |<32     |            0|      9|    79|
|0-24 months |MAL-ED        |NEPAL                        |<32     |            1|      6|    79|
|0-24 months |MAL-ED        |NEPAL                        |[32-38) |            0|     28|    79|
|0-24 months |MAL-ED        |NEPAL                        |[32-38) |            1|     19|    79|
|0-24 months |MAL-ED        |PERU                         |>=38    |            0|     10|    85|
|0-24 months |MAL-ED        |PERU                         |>=38    |            1|     17|    85|
|0-24 months |MAL-ED        |PERU                         |<32     |            0|      8|    85|
|0-24 months |MAL-ED        |PERU                         |<32     |            1|     21|    85|
|0-24 months |MAL-ED        |PERU                         |[32-38) |            0|      7|    85|
|0-24 months |MAL-ED        |PERU                         |[32-38) |            1|     22|    85|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |>=38    |            0|     28|    90|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |>=38    |            1|     37|    90|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |<32     |            0|      6|    90|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |<32     |            1|      3|    90|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |[32-38) |            0|      5|    90|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |[32-38) |            1|     11|    90|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |>=38    |            0|      4|   100|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |>=38    |            1|     44|   100|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |<32     |            0|      1|   100|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |<32     |            1|     14|   100|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |[32-38) |            0|      3|   100|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |[32-38) |            1|     34|   100|
|0-24 months |PROBIT        |BELARUS                      |>=38    |            0|    652| 16277|
|0-24 months |PROBIT        |BELARUS                      |>=38    |            1|     92| 16277|
|0-24 months |PROBIT        |BELARUS                      |<32     |            0|  11380| 16277|
|0-24 months |PROBIT        |BELARUS                      |<32     |            1|   1678| 16277|
|0-24 months |PROBIT        |BELARUS                      |[32-38) |            0|   2215| 16277|
|0-24 months |PROBIT        |BELARUS                      |[32-38) |            1|    260| 16277|
|0-24 months |SAS-CompFeed  |INDIA                        |>=38    |            0|     11|  1530|
|0-24 months |SAS-CompFeed  |INDIA                        |>=38    |            1|     40|  1530|
|0-24 months |SAS-CompFeed  |INDIA                        |<32     |            0|    406|  1530|
|0-24 months |SAS-CompFeed  |INDIA                        |<32     |            1|    873|  1530|
|0-24 months |SAS-CompFeed  |INDIA                        |[32-38) |            0|     56|  1530|
|0-24 months |SAS-CompFeed  |INDIA                        |[32-38) |            1|    144|  1530|
|0-24 months |SAS-FoodSuppl |INDIA                        |>=38    |            0|      7|   418|
|0-24 months |SAS-FoodSuppl |INDIA                        |>=38    |            1|     37|   418|
|0-24 months |SAS-FoodSuppl |INDIA                        |<32     |            0|     51|   418|
|0-24 months |SAS-FoodSuppl |INDIA                        |<32     |            1|    238|   418|
|0-24 months |SAS-FoodSuppl |INDIA                        |[32-38) |            0|     14|   418|
|0-24 months |SAS-FoodSuppl |INDIA                        |[32-38) |            1|     71|   418|
|0-6 months  |COHORTS       |GUATEMALA                    |>=38    |            0|    205|  1052|
|0-6 months  |COHORTS       |GUATEMALA                    |>=38    |            1|    108|  1052|
|0-6 months  |COHORTS       |GUATEMALA                    |<32     |            0|    340|  1052|
|0-6 months  |COHORTS       |GUATEMALA                    |<32     |            1|    144|  1052|
|0-6 months  |COHORTS       |GUATEMALA                    |[32-38) |            0|    169|  1052|
|0-6 months  |COHORTS       |GUATEMALA                    |[32-38) |            1|     86|  1052|
|0-6 months  |COHORTS       |PHILIPPINES                  |>=38    |            0|    231|  2951|
|0-6 months  |COHORTS       |PHILIPPINES                  |>=38    |            1|     99|  2951|
|0-6 months  |COHORTS       |PHILIPPINES                  |<32     |            0|   1595|  2951|
|0-6 months  |COHORTS       |PHILIPPINES                  |<32     |            1|    488|  2951|
|0-6 months  |COHORTS       |PHILIPPINES                  |[32-38) |            0|    419|  2951|
|0-6 months  |COHORTS       |PHILIPPINES                  |[32-38) |            1|    119|  2951|
|0-6 months  |LCNI-5        |MALAWI                       |>=38    |            0|      7|    38|
|0-6 months  |LCNI-5        |MALAWI                       |>=38    |            1|      2|    38|
|0-6 months  |LCNI-5        |MALAWI                       |<32     |            0|     12|    38|
|0-6 months  |LCNI-5        |MALAWI                       |<32     |            1|      9|    38|
|0-6 months  |LCNI-5        |MALAWI                       |[32-38) |            0|      3|    38|
|0-6 months  |LCNI-5        |MALAWI                       |[32-38) |            1|      5|    38|
|0-6 months  |MAL-ED        |BANGLADESH                   |>=38    |            0|     49|   151|
|0-6 months  |MAL-ED        |BANGLADESH                   |>=38    |            1|     20|   151|
|0-6 months  |MAL-ED        |BANGLADESH                   |<32     |            0|     16|   151|
|0-6 months  |MAL-ED        |BANGLADESH                   |<32     |            1|     14|   151|
|0-6 months  |MAL-ED        |BANGLADESH                   |[32-38) |            0|     37|   151|
|0-6 months  |MAL-ED        |BANGLADESH                   |[32-38) |            1|     15|   151|
|0-6 months  |MAL-ED        |BRAZIL                       |>=38    |            0|     24|    79|
|0-6 months  |MAL-ED        |BRAZIL                       |>=38    |            1|      6|    79|
|0-6 months  |MAL-ED        |BRAZIL                       |<32     |            0|     10|    79|
|0-6 months  |MAL-ED        |BRAZIL                       |<32     |            1|      8|    79|
|0-6 months  |MAL-ED        |BRAZIL                       |[32-38) |            0|     26|    79|
|0-6 months  |MAL-ED        |BRAZIL                       |[32-38) |            1|      5|    79|
|0-6 months  |MAL-ED        |INDIA                        |>=38    |            0|     25|   161|
|0-6 months  |MAL-ED        |INDIA                        |>=38    |            1|     11|   161|
|0-6 months  |MAL-ED        |INDIA                        |<32     |            0|     35|   161|
|0-6 months  |MAL-ED        |INDIA                        |<32     |            1|     18|   161|
|0-6 months  |MAL-ED        |INDIA                        |[32-38) |            0|     47|   161|
|0-6 months  |MAL-ED        |INDIA                        |[32-38) |            1|     25|   161|
|0-6 months  |MAL-ED        |NEPAL                        |>=38    |            0|     14|    79|
|0-6 months  |MAL-ED        |NEPAL                        |>=38    |            1|      3|    79|
|0-6 months  |MAL-ED        |NEPAL                        |<32     |            0|     13|    79|
|0-6 months  |MAL-ED        |NEPAL                        |<32     |            1|      2|    79|
|0-6 months  |MAL-ED        |NEPAL                        |[32-38) |            0|     38|    79|
|0-6 months  |MAL-ED        |NEPAL                        |[32-38) |            1|      9|    79|
|0-6 months  |MAL-ED        |PERU                         |>=38    |            0|     21|    85|
|0-6 months  |MAL-ED        |PERU                         |>=38    |            1|      6|    85|
|0-6 months  |MAL-ED        |PERU                         |<32     |            0|     15|    85|
|0-6 months  |MAL-ED        |PERU                         |<32     |            1|     14|    85|
|0-6 months  |MAL-ED        |PERU                         |[32-38) |            0|     11|    85|
|0-6 months  |MAL-ED        |PERU                         |[32-38) |            1|     18|    85|
|0-6 months  |MAL-ED        |SOUTH AFRICA                 |>=38    |            0|     44|    90|
|0-6 months  |MAL-ED        |SOUTH AFRICA                 |>=38    |            1|     21|    90|
|0-6 months  |MAL-ED        |SOUTH AFRICA                 |<32     |            0|      7|    90|
|0-6 months  |MAL-ED        |SOUTH AFRICA                 |<32     |            1|      2|    90|
|0-6 months  |MAL-ED        |SOUTH AFRICA                 |[32-38) |            0|      9|    90|
|0-6 months  |MAL-ED        |SOUTH AFRICA                 |[32-38) |            1|      7|    90|
|0-6 months  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |>=38    |            0|     31|   100|
|0-6 months  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |>=38    |            1|     17|   100|
|0-6 months  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |<32     |            0|      5|   100|
|0-6 months  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |<32     |            1|     10|   100|
|0-6 months  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |[32-38) |            0|     21|   100|
|0-6 months  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |[32-38) |            1|     16|   100|
|0-6 months  |PROBIT        |BELARUS                      |>=38    |            0|    696| 16272|
|0-6 months  |PROBIT        |BELARUS                      |>=38    |            1|     47| 16272|
|0-6 months  |PROBIT        |BELARUS                      |<32     |            0|  12152| 16272|
|0-6 months  |PROBIT        |BELARUS                      |<32     |            1|    903| 16272|
|0-6 months  |PROBIT        |BELARUS                      |[32-38) |            0|   2348| 16272|
|0-6 months  |PROBIT        |BELARUS                      |[32-38) |            1|    126| 16272|
|0-6 months  |SAS-CompFeed  |INDIA                        |>=38    |            0|     23|  1527|
|0-6 months  |SAS-CompFeed  |INDIA                        |>=38    |            1|     27|  1527|
|0-6 months  |SAS-CompFeed  |INDIA                        |<32     |            0|    742|  1527|
|0-6 months  |SAS-CompFeed  |INDIA                        |<32     |            1|    535|  1527|
|0-6 months  |SAS-CompFeed  |INDIA                        |[32-38) |            0|    113|  1527|
|0-6 months  |SAS-CompFeed  |INDIA                        |[32-38) |            1|     87|  1527|
|0-6 months  |SAS-FoodSuppl |INDIA                        |>=38    |            0|     25|   416|
|0-6 months  |SAS-FoodSuppl |INDIA                        |>=38    |            1|     18|   416|
|0-6 months  |SAS-FoodSuppl |INDIA                        |<32     |            0|    171|   416|
|0-6 months  |SAS-FoodSuppl |INDIA                        |<32     |            1|    117|   416|
|0-6 months  |SAS-FoodSuppl |INDIA                        |[32-38) |            0|     58|   416|
|0-6 months  |SAS-FoodSuppl |INDIA                        |[32-38) |            1|     27|   416|
|6-24 months |COHORTS       |GUATEMALA                    |>=38    |            0|     65|   861|
|6-24 months |COHORTS       |GUATEMALA                    |>=38    |            1|    182|   861|
|6-24 months |COHORTS       |GUATEMALA                    |<32     |            0|     95|   861|
|6-24 months |COHORTS       |GUATEMALA                    |<32     |            1|    318|   861|
|6-24 months |COHORTS       |GUATEMALA                    |[32-38) |            0|     45|   861|
|6-24 months |COHORTS       |GUATEMALA                    |[32-38) |            1|    156|   861|
|6-24 months |COHORTS       |PHILIPPINES                  |>=38    |            0|     70|  2054|
|6-24 months |COHORTS       |PHILIPPINES                  |>=38    |            1|    141|  2054|
|6-24 months |COHORTS       |PHILIPPINES                  |<32     |            0|    527|  2054|
|6-24 months |COHORTS       |PHILIPPINES                  |<32     |            1|    926|  2054|
|6-24 months |COHORTS       |PHILIPPINES                  |[32-38) |            0|    128|  2054|
|6-24 months |COHORTS       |PHILIPPINES                  |[32-38) |            1|    262|  2054|
|6-24 months |LCNI-5        |MALAWI                       |>=38    |            0|     10|    90|
|6-24 months |LCNI-5        |MALAWI                       |>=38    |            1|     14|    90|
|6-24 months |LCNI-5        |MALAWI                       |<32     |            0|     22|    90|
|6-24 months |LCNI-5        |MALAWI                       |<32     |            1|     25|    90|
|6-24 months |LCNI-5        |MALAWI                       |[32-38) |            0|      8|    90|
|6-24 months |LCNI-5        |MALAWI                       |[32-38) |            1|     11|    90|
|6-24 months |MAL-ED        |BANGLADESH                   |>=38    |            0|     27|   102|
|6-24 months |MAL-ED        |BANGLADESH                   |>=38    |            1|     22|   102|
|6-24 months |MAL-ED        |BANGLADESH                   |<32     |            0|      7|   102|
|6-24 months |MAL-ED        |BANGLADESH                   |<32     |            1|      9|   102|
|6-24 months |MAL-ED        |BANGLADESH                   |[32-38) |            0|     23|   102|
|6-24 months |MAL-ED        |BANGLADESH                   |[32-38) |            1|     14|   102|
|6-24 months |MAL-ED        |BRAZIL                       |>=38    |            0|     21|    60|
|6-24 months |MAL-ED        |BRAZIL                       |>=38    |            1|      3|    60|
|6-24 months |MAL-ED        |BRAZIL                       |<32     |            0|      8|    60|
|6-24 months |MAL-ED        |BRAZIL                       |<32     |            1|      2|    60|
|6-24 months |MAL-ED        |BRAZIL                       |[32-38) |            0|     25|    60|
|6-24 months |MAL-ED        |BRAZIL                       |[32-38) |            1|      1|    60|
|6-24 months |MAL-ED        |INDIA                        |>=38    |            0|     16|   107|
|6-24 months |MAL-ED        |INDIA                        |>=38    |            1|      9|   107|
|6-24 months |MAL-ED        |INDIA                        |<32     |            0|     18|   107|
|6-24 months |MAL-ED        |INDIA                        |<32     |            1|     17|   107|
|6-24 months |MAL-ED        |INDIA                        |[32-38) |            0|     24|   107|
|6-24 months |MAL-ED        |INDIA                        |[32-38) |            1|     23|   107|
|6-24 months |MAL-ED        |NEPAL                        |>=38    |            0|     12|    65|
|6-24 months |MAL-ED        |NEPAL                        |>=38    |            1|      2|    65|
|6-24 months |MAL-ED        |NEPAL                        |<32     |            0|      9|    65|
|6-24 months |MAL-ED        |NEPAL                        |<32     |            1|      4|    65|
|6-24 months |MAL-ED        |NEPAL                        |[32-38) |            0|     28|    65|
|6-24 months |MAL-ED        |NEPAL                        |[32-38) |            1|     10|    65|
|6-24 months |MAL-ED        |PERU                         |>=38    |            0|     10|    46|
|6-24 months |MAL-ED        |PERU                         |>=38    |            1|     11|    46|
|6-24 months |MAL-ED        |PERU                         |<32     |            0|      7|    46|
|6-24 months |MAL-ED        |PERU                         |<32     |            1|      7|    46|
|6-24 months |MAL-ED        |PERU                         |[32-38) |            0|      7|    46|
|6-24 months |MAL-ED        |PERU                         |[32-38) |            1|      4|    46|
|6-24 months |MAL-ED        |SOUTH AFRICA                 |>=38    |            0|     28|    60|
|6-24 months |MAL-ED        |SOUTH AFRICA                 |>=38    |            1|     16|    60|
|6-24 months |MAL-ED        |SOUTH AFRICA                 |<32     |            0|      6|    60|
|6-24 months |MAL-ED        |SOUTH AFRICA                 |<32     |            1|      1|    60|
|6-24 months |MAL-ED        |SOUTH AFRICA                 |[32-38) |            0|      5|    60|
|6-24 months |MAL-ED        |SOUTH AFRICA                 |[32-38) |            1|      4|    60|
|6-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |>=38    |            0|      4|    57|
|6-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |>=38    |            1|     27|    57|
|6-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |<32     |            0|      1|    57|
|6-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |<32     |            1|      4|    57|
|6-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |[32-38) |            0|      3|    57|
|6-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |[32-38) |            1|     18|    57|
|6-24 months |PROBIT        |BELARUS                      |>=38    |            0|    645| 14940|
|6-24 months |PROBIT        |BELARUS                      |>=38    |            1|     45| 14940|
|6-24 months |PROBIT        |BELARUS                      |<32     |            0|  11151| 14940|
|6-24 months |PROBIT        |BELARUS                      |<32     |            1|    775| 14940|
|6-24 months |PROBIT        |BELARUS                      |[32-38) |            0|   2190| 14940|
|6-24 months |PROBIT        |BELARUS                      |[32-38) |            1|    134| 14940|
|6-24 months |SAS-CompFeed  |INDIA                        |>=38    |            0|      9|   812|
|6-24 months |SAS-CompFeed  |INDIA                        |>=38    |            1|     13|   812|
|6-24 months |SAS-CompFeed  |INDIA                        |<32     |            0|    351|   812|
|6-24 months |SAS-CompFeed  |INDIA                        |<32     |            1|    338|   812|
|6-24 months |SAS-CompFeed  |INDIA                        |[32-38) |            0|     44|   812|
|6-24 months |SAS-CompFeed  |INDIA                        |[32-38) |            1|     57|   812|
|6-24 months |SAS-FoodSuppl |INDIA                        |>=38    |            0|      6|   243|
|6-24 months |SAS-FoodSuppl |INDIA                        |>=38    |            1|     19|   243|
|6-24 months |SAS-FoodSuppl |INDIA                        |<32     |            0|     44|   243|
|6-24 months |SAS-FoodSuppl |INDIA                        |<32     |            1|    121|   243|
|6-24 months |SAS-FoodSuppl |INDIA                        |[32-38) |            0|      9|   243|
|6-24 months |SAS-FoodSuppl |INDIA                        |[32-38) |            1|     44|   243|


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/801ce6f8-4634-4087-b020-bbdc036964cc/9847c66d-03c7-419f-980c-c4d03d030c39/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/801ce6f8-4634-4087-b020-bbdc036964cc/9847c66d-03c7-419f-980c-c4d03d030c39/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/801ce6f8-4634-4087-b020-bbdc036964cc/9847c66d-03c7-419f-980c-c4d03d030c39/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/801ce6f8-4634-4087-b020-bbdc036964cc/9847c66d-03c7-419f-980c-c4d03d030c39/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid       |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS       |GUATEMALA                    |>=38               |NA             | 0.7576087| 0.6897738| 0.8254436|
|0-24 months |COHORTS       |GUATEMALA                    |<32                |NA             | 0.7821683| 0.7396522| 0.8246843|
|0-24 months |COHORTS       |GUATEMALA                    |[32-38)            |NA             | 0.8034523| 0.7428416| 0.8640629|
|0-24 months |COHORTS       |PHILIPPINES                  |>=38               |NA             | 0.6562106| 0.5859528| 0.7264683|
|0-24 months |COHORTS       |PHILIPPINES                  |<32                |NA             | 0.6816293| 0.6588060| 0.7044526|
|0-24 months |COHORTS       |PHILIPPINES                  |[32-38)            |NA             | 0.7017529| 0.6384272| 0.7650785|
|0-24 months |LCNI-5        |MALAWI                       |>=38               |NA             | 0.6153846| 0.4274935| 0.8032758|
|0-24 months |LCNI-5        |MALAWI                       |<32                |NA             | 0.6071429| 0.4786216| 0.7356642|
|0-24 months |LCNI-5        |MALAWI                       |[32-38)            |NA             | 0.6666667| 0.4771731| 0.8561602|
|0-24 months |MAL-ED        |BANGLADESH                   |>=38               |NA             | 0.6086957| 0.4931579| 0.7242334|
|0-24 months |MAL-ED        |BANGLADESH                   |<32                |NA             | 0.7666667| 0.6148142| 0.9185192|
|0-24 months |MAL-ED        |BANGLADESH                   |[32-38)            |NA             | 0.5576923| 0.4222517| 0.6931329|
|0-24 months |MAL-ED        |BRAZIL                       |>=38               |NA             | 0.3000000| 0.1349698| 0.4650302|
|0-24 months |MAL-ED        |BRAZIL                       |<32                |NA             | 0.5555556| 0.3245350| 0.7865761|
|0-24 months |MAL-ED        |BRAZIL                       |[32-38)            |NA             | 0.1935484| 0.0535840| 0.3335127|
|0-24 months |MAL-ED        |INDIA                        |>=38               |NA             | 0.5484589| 0.3765050| 0.7204128|
|0-24 months |MAL-ED        |INDIA                        |<32                |NA             | 0.6664168| 0.5393947| 0.7934389|
|0-24 months |MAL-ED        |INDIA                        |[32-38)            |NA             | 0.6644336| 0.5559440| 0.7729233|
|0-24 months |MAL-ED        |NEPAL                        |>=38               |NA             | 0.2941176| 0.0761377| 0.5120976|
|0-24 months |MAL-ED        |NEPAL                        |<32                |NA             | 0.4000000| 0.1504978| 0.6495022|
|0-24 months |MAL-ED        |NEPAL                        |[32-38)            |NA             | 0.4042553| 0.2630590| 0.5454516|
|0-24 months |MAL-ED        |PERU                         |>=38               |NA             | 0.6296296| 0.4463996| 0.8128597|
|0-24 months |MAL-ED        |PERU                         |<32                |NA             | 0.7241379| 0.5605032| 0.8877727|
|0-24 months |MAL-ED        |PERU                         |[32-38)            |NA             | 0.7586207| 0.6019523| 0.9152890|
|0-24 months |PROBIT        |BELARUS                      |>=38               |NA             | 0.0910686| 0.0683912| 0.1137459|
|0-24 months |PROBIT        |BELARUS                      |<32                |NA             | 0.1276281| 0.1120830| 0.1431732|
|0-24 months |PROBIT        |BELARUS                      |[32-38)            |NA             | 0.1156408| 0.0890204| 0.1422613|
|0-24 months |SAS-CompFeed  |INDIA                        |>=38               |NA             | 0.7914317| 0.6823930| 0.9004703|
|0-24 months |SAS-CompFeed  |INDIA                        |<32                |NA             | 0.6855379| 0.6454157| 0.7256602|
|0-24 months |SAS-CompFeed  |INDIA                        |[32-38)            |NA             | 0.7241549| 0.6389630| 0.8093468|
|0-24 months |SAS-FoodSuppl |INDIA                        |>=38               |NA             | 0.8409091| 0.7327061| 0.9491120|
|0-24 months |SAS-FoodSuppl |INDIA                        |<32                |NA             | 0.8235294| 0.7795251| 0.8675337|
|0-24 months |SAS-FoodSuppl |INDIA                        |[32-38)            |NA             | 0.8352941| 0.7563476| 0.9142406|
|0-6 months  |COHORTS       |GUATEMALA                    |>=38               |NA             | 0.2998666| 0.2304460| 0.3692873|
|0-6 months  |COHORTS       |GUATEMALA                    |<32                |NA             | 0.3377613| 0.2840368| 0.3914859|
|0-6 months  |COHORTS       |GUATEMALA                    |[32-38)            |NA             | 0.4101711| 0.3005201| 0.5198220|
|0-6 months  |COHORTS       |PHILIPPINES                  |>=38               |NA             | 0.2048822| 0.1455618| 0.2642025|
|0-6 months  |COHORTS       |PHILIPPINES                  |<32                |NA             | 0.2399525| 0.2176309| 0.2622740|
|0-6 months  |COHORTS       |PHILIPPINES                  |[32-38)            |NA             | 0.2258050| 0.1740594| 0.2775506|
|0-6 months  |MAL-ED        |BANGLADESH                   |>=38               |NA             | 0.3055531| 0.1911899| 0.4199163|
|0-6 months  |MAL-ED        |BANGLADESH                   |<32                |NA             | 0.4146976| 0.2334554| 0.5959399|
|0-6 months  |MAL-ED        |BANGLADESH                   |[32-38)            |NA             | 0.2827720| 0.1521873| 0.4133567|
|0-6 months  |MAL-ED        |BRAZIL                       |>=38               |NA             | 0.2000000| 0.0559499| 0.3440501|
|0-6 months  |MAL-ED        |BRAZIL                       |<32                |NA             | 0.4444444| 0.2134239| 0.6754650|
|0-6 months  |MAL-ED        |BRAZIL                       |[32-38)            |NA             | 0.1612903| 0.0309906| 0.2915900|
|0-6 months  |MAL-ED        |INDIA                        |>=38               |NA             | 0.2553249| 0.0944572| 0.4161925|
|0-6 months  |MAL-ED        |INDIA                        |<32                |NA             | 0.3265248| 0.1969575| 0.4560921|
|0-6 months  |MAL-ED        |INDIA                        |[32-38)            |NA             | 0.3323610| 0.2195928| 0.4451291|
|0-6 months  |MAL-ED        |PERU                         |>=38               |NA             | 0.2222222| 0.0644765| 0.3799679|
|0-6 months  |MAL-ED        |PERU                         |<32                |NA             | 0.4827586| 0.2998094| 0.6657078|
|0-6 months  |MAL-ED        |PERU                         |[32-38)            |NA             | 0.6206897| 0.4430444| 0.7983349|
|0-6 months  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |>=38               |NA             | 0.3541667| 0.2181870| 0.4901463|
|0-6 months  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |<32                |NA             | 0.6666667| 0.4269056| 0.9064277|
|0-6 months  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |[32-38)            |NA             | 0.4324324| 0.2719980| 0.5928669|
|0-6 months  |PROBIT        |BELARUS                      |>=38               |NA             | 0.0594809| 0.0413759| 0.0775859|
|0-6 months  |PROBIT        |BELARUS                      |<32                |NA             | 0.0692076| 0.0577383| 0.0806770|
|0-6 months  |PROBIT        |BELARUS                      |[32-38)            |NA             | 0.0510261| 0.0372819| 0.0647704|
|0-6 months  |SAS-CompFeed  |INDIA                        |>=38               |NA             | 0.5110010| 0.3792875| 0.6427146|
|0-6 months  |SAS-CompFeed  |INDIA                        |<32                |NA             | 0.4207505| 0.3856690| 0.4558320|
|0-6 months  |SAS-CompFeed  |INDIA                        |[32-38)            |NA             | 0.4270933| 0.3761533| 0.4780334|
|0-6 months  |SAS-FoodSuppl |INDIA                        |>=38               |NA             | 0.4076736| 0.2618484| 0.5534988|
|0-6 months  |SAS-FoodSuppl |INDIA                        |<32                |NA             | 0.4069260| 0.3499476| 0.4639043|
|0-6 months  |SAS-FoodSuppl |INDIA                        |[32-38)            |NA             | 0.3195764| 0.2183633| 0.4207895|
|6-24 months |COHORTS       |GUATEMALA                    |>=38               |NA             | 0.7784741| 0.7039982| 0.8529499|
|6-24 months |COHORTS       |GUATEMALA                    |<32                |NA             | 0.7730784| 0.7218159| 0.8243409|
|6-24 months |COHORTS       |GUATEMALA                    |[32-38)            |NA             | 0.8065084| 0.7293680| 0.8836489|
|6-24 months |COHORTS       |PHILIPPINES                  |>=38               |NA             | 0.6566387| 0.5687867| 0.7444908|
|6-24 months |COHORTS       |PHILIPPINES                  |<32                |NA             | 0.6353042| 0.6069958| 0.6636126|
|6-24 months |COHORTS       |PHILIPPINES                  |[32-38)            |NA             | 0.6633240| 0.5847779| 0.7418702|
|6-24 months |LCNI-5        |MALAWI                       |>=38               |NA             | 0.5833333| 0.3849882| 0.7816784|
|6-24 months |LCNI-5        |MALAWI                       |<32                |NA             | 0.5319149| 0.3884621| 0.6753677|
|6-24 months |LCNI-5        |MALAWI                       |[32-38)            |NA             | 0.5789474| 0.3557006| 0.8021942|
|6-24 months |MAL-ED        |BANGLADESH                   |>=38               |NA             | 0.4489796| 0.3090252| 0.5889340|
|6-24 months |MAL-ED        |BANGLADESH                   |<32                |NA             | 0.5625000| 0.3182257| 0.8067743|
|6-24 months |MAL-ED        |BANGLADESH                   |[32-38)            |NA             | 0.3783784| 0.2213375| 0.5354193|
|6-24 months |MAL-ED        |INDIA                        |>=38               |NA             | 0.3600000| 0.1709580| 0.5490420|
|6-24 months |MAL-ED        |INDIA                        |<32                |NA             | 0.4857143| 0.3193555| 0.6520731|
|6-24 months |MAL-ED        |INDIA                        |[32-38)            |NA             | 0.4893617| 0.3457765| 0.6329469|
|6-24 months |PROBIT        |BELARUS                      |>=38               |NA             | 0.0615356| 0.0416146| 0.0814566|
|6-24 months |PROBIT        |BELARUS                      |<32                |NA             | 0.0658901| 0.0538245| 0.0779557|
|6-24 months |PROBIT        |BELARUS                      |[32-38)            |NA             | 0.0564084| 0.0409689| 0.0718480|
|6-24 months |SAS-CompFeed  |INDIA                        |>=38               |NA             | 0.5909091| 0.4412762| 0.7405420|
|6-24 months |SAS-CompFeed  |INDIA                        |<32                |NA             | 0.4905660| 0.4470375| 0.5340946|
|6-24 months |SAS-CompFeed  |INDIA                        |[32-38)            |NA             | 0.5643564| 0.4139588| 0.7147541|
|6-24 months |SAS-FoodSuppl |INDIA                        |>=38               |NA             | 0.7600000| 0.5922410| 0.9277590|
|6-24 months |SAS-FoodSuppl |INDIA                        |<32                |NA             | 0.7333333| 0.6657193| 0.8009473|
|6-24 months |SAS-FoodSuppl |INDIA                        |[32-38)            |NA             | 0.8301887| 0.7288962| 0.9314812|


### Parameter: E(Y)


|agecat      |studyid       |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS       |GUATEMALA                    |NA                 |NA             | 0.7640277| 0.7409463| 0.7871090|
|0-24 months |COHORTS       |PHILIPPINES                  |NA                 |NA             | 0.6895967| 0.6729013| 0.7062922|
|0-24 months |LCNI-5        |MALAWI                       |NA                 |NA             | 0.6226415| 0.5299266| 0.7153564|
|0-24 months |MAL-ED        |BANGLADESH                   |NA                 |NA             | 0.6225166| 0.5449406| 0.7000925|
|0-24 months |MAL-ED        |BRAZIL                       |NA                 |NA             | 0.3164557| 0.2132412| 0.4196702|
|0-24 months |MAL-ED        |INDIA                        |NA                 |NA             | 0.6397516| 0.5653649| 0.7141382|
|0-24 months |MAL-ED        |NEPAL                        |NA                 |NA             | 0.3797468| 0.2720427| 0.4874510|
|0-24 months |MAL-ED        |PERU                         |NA                 |NA             | 0.7058824| 0.6084428| 0.8033219|
|0-24 months |PROBIT        |BELARUS                      |NA                 |NA             | 0.1247159| 0.1092273| 0.1402044|
|0-24 months |SAS-CompFeed  |INDIA                        |NA                 |NA             | 0.6908497| 0.6505448| 0.7311545|
|0-24 months |SAS-FoodSuppl |INDIA                        |NA                 |NA             | 0.8277512| 0.7915095| 0.8639929|
|0-6 months  |COHORTS       |GUATEMALA                    |NA                 |NA             | 0.3212928| 0.2930610| 0.3495246|
|0-6 months  |COHORTS       |PHILIPPINES                  |NA                 |NA             | 0.2392409| 0.2238460| 0.2546359|
|0-6 months  |MAL-ED        |BANGLADESH                   |NA                 |NA             | 0.3245033| 0.2495788| 0.3994278|
|0-6 months  |MAL-ED        |BRAZIL                       |NA                 |NA             | 0.2405063| 0.1456588| 0.3353539|
|0-6 months  |MAL-ED        |INDIA                        |NA                 |NA             | 0.3354037| 0.2622476| 0.4085599|
|0-6 months  |MAL-ED        |PERU                         |NA                 |NA             | 0.4470588| 0.3407351| 0.5533826|
|0-6 months  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.4300000| 0.3324781| 0.5275219|
|0-6 months  |PROBIT        |BELARUS                      |NA                 |NA             | 0.0661259| 0.0556767| 0.0765750|
|0-6 months  |SAS-CompFeed  |INDIA                        |NA                 |NA             | 0.4250164| 0.3969651| 0.4530677|
|0-6 months  |SAS-FoodSuppl |INDIA                        |NA                 |NA             | 0.3894231| 0.3425088| 0.4363374|
|6-24 months |COHORTS       |GUATEMALA                    |NA                 |NA             | 0.7619048| 0.7334389| 0.7903706|
|6-24 months |COHORTS       |PHILIPPINES                  |NA                 |NA             | 0.6470302| 0.6263581| 0.6677023|
|6-24 months |LCNI-5        |MALAWI                       |NA                 |NA             | 0.5555556| 0.4523209| 0.6587902|
|6-24 months |MAL-ED        |BANGLADESH                   |NA                 |NA             | 0.4411765| 0.3443418| 0.5380111|
|6-24 months |MAL-ED        |INDIA                        |NA                 |NA             | 0.4579439| 0.3630970| 0.5527909|
|6-24 months |PROBIT        |BELARUS                      |NA                 |NA             | 0.0638554| 0.0521938| 0.0755170|
|6-24 months |SAS-CompFeed  |INDIA                        |NA                 |NA             | 0.5024631| 0.4586872| 0.5462389|
|6-24 months |SAS-FoodSuppl |INDIA                        |NA                 |NA             | 0.7572016| 0.7031798| 0.8112234|


### Parameter: RR


|agecat      |studyid       |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:-------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |COHORTS       |GUATEMALA                    |>=38               |>=38           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS       |GUATEMALA                    |<32                |>=38           | 1.0324172| 0.9303435| 1.145690|
|0-24 months |COHORTS       |GUATEMALA                    |[32-38)            |>=38           | 1.0605109| 0.9436933| 1.191789|
|0-24 months |COHORTS       |PHILIPPINES                  |>=38               |>=38           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS       |PHILIPPINES                  |<32                |>=38           | 1.0387356| 0.9289962| 1.161438|
|0-24 months |COHORTS       |PHILIPPINES                  |[32-38)            |>=38           | 1.0694019| 0.9301546| 1.229495|
|0-24 months |LCNI-5        |MALAWI                       |>=38               |>=38           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |LCNI-5        |MALAWI                       |<32                |>=38           | 0.9866071| 0.6804443| 1.430527|
|0-24 months |LCNI-5        |MALAWI                       |[32-38)            |>=38           | 1.0833333| 0.7138317| 1.644101|
|0-24 months |MAL-ED        |BANGLADESH                   |>=38               |>=38           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED        |BANGLADESH                   |<32                |>=38           | 1.2595238| 0.9573355| 1.657099|
|0-24 months |MAL-ED        |BANGLADESH                   |[32-38)            |>=38           | 0.9162088| 0.6731774| 1.246980|
|0-24 months |MAL-ED        |BRAZIL                       |>=38               |>=38           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED        |BRAZIL                       |<32                |>=38           | 1.8518519| 0.9292277| 3.690543|
|0-24 months |MAL-ED        |BRAZIL                       |[32-38)            |>=38           | 0.6451613| 0.2600567| 1.600548|
|0-24 months |MAL-ED        |INDIA                        |>=38               |>=38           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED        |INDIA                        |<32                |>=38           | 1.2150716| 0.8434920| 1.750341|
|0-24 months |MAL-ED        |INDIA                        |[32-38)            |>=38           | 1.2114557| 0.8510845| 1.724417|
|0-24 months |MAL-ED        |NEPAL                        |>=38               |>=38           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED        |NEPAL                        |<32                |>=38           | 1.3600000| 0.5162322| 3.582884|
|0-24 months |MAL-ED        |NEPAL                        |[32-38)            |>=38           | 1.3744681| 0.6057768| 3.118578|
|0-24 months |MAL-ED        |PERU                         |>=38               |>=38           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED        |PERU                         |<32                |>=38           | 1.1501014| 0.7956510| 1.662454|
|0-24 months |MAL-ED        |PERU                         |[32-38)            |>=38           | 1.2048682| 0.8432651| 1.721531|
|0-24 months |PROBIT        |BELARUS                      |>=38               |>=38           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROBIT        |BELARUS                      |<32                |>=38           | 1.4014499| 1.0889683| 1.803599|
|0-24 months |PROBIT        |BELARUS                      |[32-38)            |>=38           | 1.2698211| 0.9072916| 1.777208|
|0-24 months |SAS-CompFeed  |INDIA                        |>=38               |>=38           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-CompFeed  |INDIA                        |<32                |>=38           | 0.8661998| 0.7411588| 1.012336|
|0-24 months |SAS-CompFeed  |INDIA                        |[32-38)            |>=38           | 0.9149936| 0.7413302| 1.129339|
|0-24 months |SAS-FoodSuppl |INDIA                        |>=38               |>=38           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-FoodSuppl |INDIA                        |<32                |>=38           | 0.9793323| 0.8519635| 1.125743|
|0-24 months |SAS-FoodSuppl |INDIA                        |[32-38)            |>=38           | 0.9933227| 0.8467458| 1.165273|
|0-6 months  |COHORTS       |GUATEMALA                    |>=38               |>=38           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |COHORTS       |GUATEMALA                    |<32                |>=38           | 1.1263719| 0.8524947| 1.488236|
|0-6 months  |COHORTS       |GUATEMALA                    |[32-38)            |>=38           | 1.3678451| 0.9605553| 1.947832|
|0-6 months  |COHORTS       |PHILIPPINES                  |>=38               |>=38           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |COHORTS       |PHILIPPINES                  |<32                |>=38           | 1.1711731| 0.8648672| 1.585962|
|0-6 months  |COHORTS       |PHILIPPINES                  |[32-38)            |>=38           | 1.1021212| 0.7623185| 1.593391|
|0-6 months  |MAL-ED        |BANGLADESH                   |>=38               |>=38           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |MAL-ED        |BANGLADESH                   |<32                |>=38           | 1.3572030| 0.7626292| 2.415329|
|0-6 months  |MAL-ED        |BANGLADESH                   |[32-38)            |>=38           | 0.9254430| 0.5113597| 1.674838|
|0-6 months  |MAL-ED        |BRAZIL                       |>=38               |>=38           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |MAL-ED        |BRAZIL                       |<32                |>=38           | 2.2222222| 0.9141867| 5.401819|
|0-6 months  |MAL-ED        |BRAZIL                       |[32-38)            |>=38           | 0.8064516| 0.2732353| 2.380235|
|0-6 months  |MAL-ED        |INDIA                        |>=38               |>=38           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |MAL-ED        |INDIA                        |<32                |>=38           | 1.2788603| 0.6051088| 2.702793|
|0-6 months  |MAL-ED        |INDIA                        |[32-38)            |>=38           | 1.3017180| 0.6338536| 2.673283|
|0-6 months  |MAL-ED        |PERU                         |>=38               |>=38           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |MAL-ED        |PERU                         |<32                |>=38           | 2.1724138| 0.9715705| 4.857477|
|0-6 months  |MAL-ED        |PERU                         |[32-38)            |>=38           | 2.7931034| 1.2992299| 6.004655|
|0-6 months  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |>=38               |>=38           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |<32                |>=38           | 1.8823529| 1.1123206| 3.185460|
|0-6 months  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |[32-38)            |>=38           | 1.2209857| 0.7158761| 2.082492|
|0-6 months  |PROBIT        |BELARUS                      |>=38               |>=38           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |PROBIT        |BELARUS                      |<32                |>=38           | 1.1635271| 0.8653046| 1.564530|
|0-6 months  |PROBIT        |BELARUS                      |[32-38)            |>=38           | 0.8578575| 0.6259849| 1.175619|
|0-6 months  |SAS-CompFeed  |INDIA                        |>=38               |>=38           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |SAS-CompFeed  |INDIA                        |<32                |>=38           | 0.8233848| 0.6090755| 1.113101|
|0-6 months  |SAS-CompFeed  |INDIA                        |[32-38)            |>=38           | 0.8357973| 0.6327545| 1.103994|
|0-6 months  |SAS-FoodSuppl |INDIA                        |>=38               |>=38           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |SAS-FoodSuppl |INDIA                        |<32                |>=38           | 0.9981660| 0.6797448| 1.465749|
|0-6 months  |SAS-FoodSuppl |INDIA                        |[32-38)            |>=38           | 0.7839026| 0.4860893| 1.264178|
|6-24 months |COHORTS       |GUATEMALA                    |>=38               |>=38           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |COHORTS       |GUATEMALA                    |<32                |>=38           | 0.9930689| 0.8843493| 1.115154|
|6-24 months |COHORTS       |GUATEMALA                    |[32-38)            |>=38           | 1.0360119| 0.9050568| 1.185915|
|6-24 months |COHORTS       |PHILIPPINES                  |>=38               |>=38           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |COHORTS       |PHILIPPINES                  |<32                |>=38           | 0.9675095| 0.8406315| 1.113537|
|6-24 months |COHORTS       |PHILIPPINES                  |[32-38)            |>=38           | 1.0101811| 0.8452813| 1.207250|
|6-24 months |LCNI-5        |MALAWI                       |>=38               |>=38           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |LCNI-5        |MALAWI                       |<32                |>=38           | 0.9118541| 0.5908075| 1.407358|
|6-24 months |LCNI-5        |MALAWI                       |[32-38)            |>=38           | 0.9924812| 0.5935371| 1.659574|
|6-24 months |MAL-ED        |BANGLADESH                   |>=38               |>=38           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |MAL-ED        |BANGLADESH                   |<32                |>=38           | 1.2528409| 0.7340738| 2.138219|
|6-24 months |MAL-ED        |BANGLADESH                   |[32-38)            |>=38           | 0.8427518| 0.5015047| 1.416199|
|6-24 months |MAL-ED        |INDIA                        |>=38               |>=38           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |MAL-ED        |INDIA                        |<32                |>=38           | 1.3492063| 0.7207772| 2.525549|
|6-24 months |MAL-ED        |INDIA                        |[32-38)            |>=38           | 1.3593381| 0.7448797| 2.480669|
|6-24 months |PROBIT        |BELARUS                      |>=38               |>=38           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |PROBIT        |BELARUS                      |<32                |>=38           | 1.0707642| 0.7828398| 1.464586|
|6-24 months |PROBIT        |BELARUS                      |[32-38)            |>=38           | 0.9166796| 0.6264611| 1.341347|
|6-24 months |SAS-CompFeed  |INDIA                        |>=38               |>=38           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |SAS-CompFeed  |INDIA                        |<32                |>=38           | 0.8301887| 0.6406520| 1.075800|
|6-24 months |SAS-CompFeed  |INDIA                        |[32-38)            |>=38           | 0.9550647| 0.6057164| 1.505901|
|6-24 months |SAS-FoodSuppl |INDIA                        |>=38               |>=38           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |SAS-FoodSuppl |INDIA                        |<32                |>=38           | 0.9649123| 0.7596207| 1.225685|
|6-24 months |SAS-FoodSuppl |INDIA                        |[32-38)            |>=38           | 1.0923535| 0.8488459| 1.405716|


### Parameter: PAR


|agecat      |studyid       |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:-------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |COHORTS       |GUATEMALA                    |>=38               |NA             |  0.0064190| -0.0572488| 0.0700868|
|0-24 months |COHORTS       |PHILIPPINES                  |>=38               |NA             |  0.0333862| -0.0353383| 0.1021106|
|0-24 months |LCNI-5        |MALAWI                       |>=38               |NA             |  0.0072569| -0.1557788| 0.1702926|
|0-24 months |MAL-ED        |BANGLADESH                   |>=38               |NA             |  0.0138209| -0.0708388| 0.0984806|
|0-24 months |MAL-ED        |BRAZIL                       |>=38               |NA             |  0.0164557| -0.1147061| 0.1476175|
|0-24 months |MAL-ED        |INDIA                        |>=38               |NA             |  0.0912927| -0.0582884| 0.2408737|
|0-24 months |MAL-ED        |NEPAL                        |>=38               |NA             |  0.0856292| -0.1110071| 0.2822655|
|0-24 months |MAL-ED        |PERU                         |>=38               |NA             |  0.0762527| -0.0711882| 0.2236936|
|0-24 months |PROBIT        |BELARUS                      |>=38               |NA             |  0.0336473|  0.0095285| 0.0577660|
|0-24 months |SAS-CompFeed  |INDIA                        |>=38               |NA             | -0.1005820| -0.2221415| 0.0209775|
|0-24 months |SAS-FoodSuppl |INDIA                        |>=38               |NA             | -0.0131579| -0.1159028| 0.0895870|
|0-6 months  |COHORTS       |GUATEMALA                    |>=38               |NA             |  0.0214262| -0.0427546| 0.0856069|
|0-6 months  |COHORTS       |PHILIPPINES                  |>=38               |NA             |  0.0343588| -0.0236188| 0.0923364|
|0-6 months  |MAL-ED        |BANGLADESH                   |>=38               |NA             |  0.0189502| -0.0685810| 0.1064813|
|0-6 months  |MAL-ED        |BRAZIL                       |>=38               |NA             |  0.0405063| -0.0777589| 0.1587716|
|0-6 months  |MAL-ED        |INDIA                        |>=38               |NA             |  0.0800789| -0.0643282| 0.2244860|
|0-6 months  |MAL-ED        |PERU                         |>=38               |NA             |  0.2248366|  0.0820782| 0.3675950|
|0-6 months  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |>=38               |NA             |  0.0758333| -0.0254096| 0.1770763|
|0-6 months  |PROBIT        |BELARUS                      |>=38               |NA             |  0.0066450| -0.0099964| 0.0232863|
|0-6 months  |SAS-CompFeed  |INDIA                        |>=38               |NA             | -0.0859847| -0.2272332| 0.0552639|
|0-6 months  |SAS-FoodSuppl |INDIA                        |>=38               |NA             | -0.0182505| -0.1563383| 0.1198372|
|6-24 months |COHORTS       |GUATEMALA                    |>=38               |NA             | -0.0165693| -0.0859885| 0.0528499|
|6-24 months |COHORTS       |PHILIPPINES                  |>=38               |NA             | -0.0096086| -0.0956003| 0.0763832|
|6-24 months |LCNI-5        |MALAWI                       |>=38               |NA             | -0.0277778| -0.1981199| 0.1425643|
|6-24 months |MAL-ED        |BANGLADESH                   |>=38               |NA             | -0.0078031| -0.1085259| 0.0929197|
|6-24 months |MAL-ED        |INDIA                        |>=38               |NA             |  0.0979439| -0.0694877| 0.2653755|
|6-24 months |PROBIT        |BELARUS                      |>=38               |NA             |  0.0023198| -0.0163096| 0.0209493|
|6-24 months |SAS-CompFeed  |INDIA                        |>=38               |NA             | -0.0884460| -0.2452587| 0.0683667|
|6-24 months |SAS-FoodSuppl |INDIA                        |>=38               |NA             | -0.0027984| -0.1617659| 0.1561692|


### Parameter: PAF


|agecat      |studyid       |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:-------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |COHORTS       |GUATEMALA                    |>=38               |NA             |  0.0084015| -0.0785339| 0.0883294|
|0-24 months |COHORTS       |PHILIPPINES                  |>=38               |NA             |  0.0484141| -0.0566209| 0.1430079|
|0-24 months |LCNI-5        |MALAWI                       |>=38               |NA             |  0.0116550| -0.2881702| 0.2416950|
|0-24 months |MAL-ED        |BANGLADESH                   |>=38               |NA             |  0.0222017| -0.1237778| 0.1492183|
|0-24 months |MAL-ED        |BRAZIL                       |>=38               |NA             |  0.0520000| -0.4677936| 0.3877177|
|0-24 months |MAL-ED        |INDIA                        |>=38               |NA             |  0.1427002| -0.1284947| 0.3487227|
|0-24 months |MAL-ED        |NEPAL                        |>=38               |NA             |  0.2254902| -0.5110053| 0.6030024|
|0-24 months |MAL-ED        |PERU                         |>=38               |NA             |  0.1080247| -0.1295328| 0.2956203|
|0-24 months |PROBIT        |BELARUS                      |>=38               |NA             |  0.2697915|  0.0628662| 0.4310263|
|0-24 months |SAS-CompFeed  |INDIA                        |>=38               |NA             | -0.1455917| -0.3405333| 0.0210013|
|0-24 months |SAS-FoodSuppl |INDIA                        |>=38               |NA             | -0.0158960| -0.1479422| 0.1009612|
|0-6 months  |COHORTS       |GUATEMALA                    |>=38               |NA             |  0.0666873| -0.1559704| 0.2464578|
|0-6 months  |COHORTS       |PHILIPPINES                  |>=38               |NA             |  0.1436158| -0.1361769| 0.3545073|
|0-6 months  |MAL-ED        |BANGLADESH                   |>=38               |NA             |  0.0583975| -0.2541264| 0.2930415|
|0-6 months  |MAL-ED        |BRAZIL                       |>=38               |NA             |  0.1684211| -0.4983110| 0.5384646|
|0-6 months  |MAL-ED        |INDIA                        |>=38               |NA             |  0.2387537| -0.3442739| 0.5689153|
|0-6 months  |MAL-ED        |PERU                         |>=38               |NA             |  0.5029240|  0.0634044| 0.7361886|
|0-6 months  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |>=38               |NA             |  0.1763566| -0.0972907| 0.3817605|
|0-6 months  |PROBIT        |BELARUS                      |>=38               |NA             |  0.1004896| -0.1870335| 0.3183689|
|0-6 months  |SAS-CompFeed  |INDIA                        |>=38               |NA             | -0.2023091| -0.5929519| 0.0925356|
|0-6 months  |SAS-FoodSuppl |INDIA                        |>=38               |NA             | -0.0468656| -0.4689774| 0.2539521|
|6-24 months |COHORTS       |GUATEMALA                    |>=38               |NA             | -0.0217472| -0.1170683| 0.0654400|
|6-24 months |COHORTS       |PHILIPPINES                  |>=38               |NA             | -0.0148503| -0.1568642| 0.1097304|
|6-24 months |LCNI-5        |MALAWI                       |>=38               |NA             | -0.0500000| -0.4063855| 0.2160756|
|6-24 months |MAL-ED        |BANGLADESH                   |>=38               |NA             | -0.0176871| -0.2736532| 0.1868375|
|6-24 months |MAL-ED        |INDIA                        |>=38               |NA             |  0.2138776| -0.2530297| 0.5068046|
|6-24 months |PROBIT        |BELARUS                      |>=38               |NA             |  0.0363296| -0.3027099| 0.2871316|
|6-24 months |SAS-CompFeed  |INDIA                        |>=38               |NA             | -0.1760250| -0.5398925| 0.1018628|
|6-24 months |SAS-FoodSuppl |INDIA                        |>=38               |NA             | -0.0036957| -0.2372084| 0.1857435|
