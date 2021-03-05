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

**Outcome Variable:** ever_wasted

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

|agecat      |studyid       |country                      |fage    | ever_wasted| n_cell|     n|
|:-----------|:-------------|:----------------------------|:-------|-----------:|------:|-----:|
|0-24 months |COHORTS       |GUATEMALA                    |>=38    |           0|    285|  1285|
|0-24 months |COHORTS       |GUATEMALA                    |>=38    |           1|     97|  1285|
|0-24 months |COHORTS       |GUATEMALA                    |<32     |           0|    453|  1285|
|0-24 months |COHORTS       |GUATEMALA                    |<32     |           1|    148|  1285|
|0-24 months |COHORTS       |GUATEMALA                    |[32-38) |           0|    218|  1285|
|0-24 months |COHORTS       |GUATEMALA                    |[32-38) |           1|     84|  1285|
|0-24 months |COHORTS       |PHILIPPINES                  |>=38    |           0|    191|  2939|
|0-24 months |COHORTS       |PHILIPPINES                  |>=38    |           1|    137|  2939|
|0-24 months |COHORTS       |PHILIPPINES                  |<32     |           0|   1235|  2939|
|0-24 months |COHORTS       |PHILIPPINES                  |<32     |           1|    839|  2939|
|0-24 months |COHORTS       |PHILIPPINES                  |[32-38) |           0|    332|  2939|
|0-24 months |COHORTS       |PHILIPPINES                  |[32-38) |           1|    205|  2939|
|0-24 months |LCNI-5        |MALAWI                       |>=38    |           0|     24|   106|
|0-24 months |LCNI-5        |MALAWI                       |>=38    |           1|      2|   106|
|0-24 months |LCNI-5        |MALAWI                       |<32     |           0|     49|   106|
|0-24 months |LCNI-5        |MALAWI                       |<32     |           1|      7|   106|
|0-24 months |LCNI-5        |MALAWI                       |[32-38) |           0|     22|   106|
|0-24 months |LCNI-5        |MALAWI                       |[32-38) |           1|      2|   106|
|0-24 months |MAL-ED        |BANGLADESH                   |>=38    |           0|     46|   151|
|0-24 months |MAL-ED        |BANGLADESH                   |>=38    |           1|     23|   151|
|0-24 months |MAL-ED        |BANGLADESH                   |<32     |           0|     15|   151|
|0-24 months |MAL-ED        |BANGLADESH                   |<32     |           1|     15|   151|
|0-24 months |MAL-ED        |BANGLADESH                   |[32-38) |           0|     39|   151|
|0-24 months |MAL-ED        |BANGLADESH                   |[32-38) |           1|     13|   151|
|0-24 months |MAL-ED        |BRAZIL                       |>=38    |           0|     30|    79|
|0-24 months |MAL-ED        |BRAZIL                       |>=38    |           1|      0|    79|
|0-24 months |MAL-ED        |BRAZIL                       |<32     |           0|     15|    79|
|0-24 months |MAL-ED        |BRAZIL                       |<32     |           1|      3|    79|
|0-24 months |MAL-ED        |BRAZIL                       |[32-38) |           0|     28|    79|
|0-24 months |MAL-ED        |BRAZIL                       |[32-38) |           1|      3|    79|
|0-24 months |MAL-ED        |INDIA                        |>=38    |           0|     25|   161|
|0-24 months |MAL-ED        |INDIA                        |>=38    |           1|     11|   161|
|0-24 months |MAL-ED        |INDIA                        |<32     |           0|     20|   161|
|0-24 months |MAL-ED        |INDIA                        |<32     |           1|     33|   161|
|0-24 months |MAL-ED        |INDIA                        |[32-38) |           0|     36|   161|
|0-24 months |MAL-ED        |INDIA                        |[32-38) |           1|     36|   161|
|0-24 months |MAL-ED        |NEPAL                        |>=38    |           0|     13|    79|
|0-24 months |MAL-ED        |NEPAL                        |>=38    |           1|      4|    79|
|0-24 months |MAL-ED        |NEPAL                        |<32     |           0|      8|    79|
|0-24 months |MAL-ED        |NEPAL                        |<32     |           1|      7|    79|
|0-24 months |MAL-ED        |NEPAL                        |[32-38) |           0|     34|    79|
|0-24 months |MAL-ED        |NEPAL                        |[32-38) |           1|     13|    79|
|0-24 months |MAL-ED        |PERU                         |>=38    |           0|     26|    85|
|0-24 months |MAL-ED        |PERU                         |>=38    |           1|      1|    85|
|0-24 months |MAL-ED        |PERU                         |<32     |           0|     25|    85|
|0-24 months |MAL-ED        |PERU                         |<32     |           1|      4|    85|
|0-24 months |MAL-ED        |PERU                         |[32-38) |           0|     26|    85|
|0-24 months |MAL-ED        |PERU                         |[32-38) |           1|      3|    85|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |>=38    |           0|     53|    90|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |>=38    |           1|     12|    90|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |<32     |           0|      7|    90|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |<32     |           1|      2|    90|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |[32-38) |           0|     11|    90|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |[32-38) |           1|      5|    90|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |>=38    |           0|     43|   100|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |>=38    |           1|      5|   100|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |<32     |           0|     11|   100|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |<32     |           1|      4|   100|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |[32-38) |           0|     32|   100|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |[32-38) |           1|      5|   100|
|0-24 months |PROBIT        |BELARUS                      |>=38    |           0|    577| 16278|
|0-24 months |PROBIT        |BELARUS                      |>=38    |           1|    167| 16278|
|0-24 months |PROBIT        |BELARUS                      |<32     |           0|   9699| 16278|
|0-24 months |PROBIT        |BELARUS                      |<32     |           1|   3360| 16278|
|0-24 months |PROBIT        |BELARUS                      |[32-38) |           0|   1870| 16278|
|0-24 months |PROBIT        |BELARUS                      |[32-38) |           1|    605| 16278|
|0-24 months |SAS-CompFeed  |INDIA                        |>=38    |           0|     21|  1510|
|0-24 months |SAS-CompFeed  |INDIA                        |>=38    |           1|     28|  1510|
|0-24 months |SAS-CompFeed  |INDIA                        |<32     |           0|    750|  1510|
|0-24 months |SAS-CompFeed  |INDIA                        |<32     |           1|    514|  1510|
|0-24 months |SAS-CompFeed  |INDIA                        |[32-38) |           0|    113|  1510|
|0-24 months |SAS-CompFeed  |INDIA                        |[32-38) |           1|     84|  1510|
|0-24 months |SAS-FoodSuppl |INDIA                        |>=38    |           0|     21|   418|
|0-24 months |SAS-FoodSuppl |INDIA                        |>=38    |           1|     23|   418|
|0-24 months |SAS-FoodSuppl |INDIA                        |<32     |           0|    154|   418|
|0-24 months |SAS-FoodSuppl |INDIA                        |<32     |           1|    135|   418|
|0-24 months |SAS-FoodSuppl |INDIA                        |[32-38) |           0|     46|   418|
|0-24 months |SAS-FoodSuppl |INDIA                        |[32-38) |           1|     39|   418|
|0-6 months  |COHORTS       |GUATEMALA                    |>=38    |           0|    241|  1027|
|0-6 months  |COHORTS       |GUATEMALA                    |>=38    |           1|     68|  1027|
|0-6 months  |COHORTS       |GUATEMALA                    |<32     |           0|    380|  1027|
|0-6 months  |COHORTS       |GUATEMALA                    |<32     |           1|     89|  1027|
|0-6 months  |COHORTS       |GUATEMALA                    |[32-38) |           0|    200|  1027|
|0-6 months  |COHORTS       |GUATEMALA                    |[32-38) |           1|     49|  1027|
|0-6 months  |COHORTS       |PHILIPPINES                  |>=38    |           0|    254|  2938|
|0-6 months  |COHORTS       |PHILIPPINES                  |>=38    |           1|     74|  2938|
|0-6 months  |COHORTS       |PHILIPPINES                  |<32     |           0|   1588|  2938|
|0-6 months  |COHORTS       |PHILIPPINES                  |<32     |           1|    485|  2938|
|0-6 months  |COHORTS       |PHILIPPINES                  |[32-38) |           0|    414|  2938|
|0-6 months  |COHORTS       |PHILIPPINES                  |[32-38) |           1|    123|  2938|
|0-6 months  |LCNI-5        |MALAWI                       |>=38    |           0|      9|    38|
|0-6 months  |LCNI-5        |MALAWI                       |>=38    |           1|      0|    38|
|0-6 months  |LCNI-5        |MALAWI                       |<32     |           0|     20|    38|
|0-6 months  |LCNI-5        |MALAWI                       |<32     |           1|      1|    38|
|0-6 months  |LCNI-5        |MALAWI                       |[32-38) |           0|      8|    38|
|0-6 months  |LCNI-5        |MALAWI                       |[32-38) |           1|      0|    38|
|0-6 months  |MAL-ED        |BANGLADESH                   |>=38    |           0|     52|   151|
|0-6 months  |MAL-ED        |BANGLADESH                   |>=38    |           1|     17|   151|
|0-6 months  |MAL-ED        |BANGLADESH                   |<32     |           0|     21|   151|
|0-6 months  |MAL-ED        |BANGLADESH                   |<32     |           1|      9|   151|
|0-6 months  |MAL-ED        |BANGLADESH                   |[32-38) |           0|     43|   151|
|0-6 months  |MAL-ED        |BANGLADESH                   |[32-38) |           1|      9|   151|
|0-6 months  |MAL-ED        |BRAZIL                       |>=38    |           0|     30|    79|
|0-6 months  |MAL-ED        |BRAZIL                       |>=38    |           1|      0|    79|
|0-6 months  |MAL-ED        |BRAZIL                       |<32     |           0|     15|    79|
|0-6 months  |MAL-ED        |BRAZIL                       |<32     |           1|      3|    79|
|0-6 months  |MAL-ED        |BRAZIL                       |[32-38) |           0|     30|    79|
|0-6 months  |MAL-ED        |BRAZIL                       |[32-38) |           1|      1|    79|
|0-6 months  |MAL-ED        |INDIA                        |>=38    |           0|     29|   161|
|0-6 months  |MAL-ED        |INDIA                        |>=38    |           1|      7|   161|
|0-6 months  |MAL-ED        |INDIA                        |<32     |           0|     35|   161|
|0-6 months  |MAL-ED        |INDIA                        |<32     |           1|     18|   161|
|0-6 months  |MAL-ED        |INDIA                        |[32-38) |           0|     44|   161|
|0-6 months  |MAL-ED        |INDIA                        |[32-38) |           1|     28|   161|
|0-6 months  |MAL-ED        |NEPAL                        |>=38    |           0|     17|    79|
|0-6 months  |MAL-ED        |NEPAL                        |>=38    |           1|      0|    79|
|0-6 months  |MAL-ED        |NEPAL                        |<32     |           0|     11|    79|
|0-6 months  |MAL-ED        |NEPAL                        |<32     |           1|      4|    79|
|0-6 months  |MAL-ED        |NEPAL                        |[32-38) |           0|     39|    79|
|0-6 months  |MAL-ED        |NEPAL                        |[32-38) |           1|      8|    79|
|0-6 months  |MAL-ED        |PERU                         |>=38    |           0|     27|    85|
|0-6 months  |MAL-ED        |PERU                         |>=38    |           1|      0|    85|
|0-6 months  |MAL-ED        |PERU                         |<32     |           0|     27|    85|
|0-6 months  |MAL-ED        |PERU                         |<32     |           1|      2|    85|
|0-6 months  |MAL-ED        |PERU                         |[32-38) |           0|     28|    85|
|0-6 months  |MAL-ED        |PERU                         |[32-38) |           1|      1|    85|
|0-6 months  |MAL-ED        |SOUTH AFRICA                 |>=38    |           0|     60|    90|
|0-6 months  |MAL-ED        |SOUTH AFRICA                 |>=38    |           1|      5|    90|
|0-6 months  |MAL-ED        |SOUTH AFRICA                 |<32     |           0|      7|    90|
|0-6 months  |MAL-ED        |SOUTH AFRICA                 |<32     |           1|      2|    90|
|0-6 months  |MAL-ED        |SOUTH AFRICA                 |[32-38) |           0|     13|    90|
|0-6 months  |MAL-ED        |SOUTH AFRICA                 |[32-38) |           1|      3|    90|
|0-6 months  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |>=38    |           0|     46|   100|
|0-6 months  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |>=38    |           1|      2|   100|
|0-6 months  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |<32     |           0|     15|   100|
|0-6 months  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |<32     |           1|      0|   100|
|0-6 months  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |[32-38) |           0|     35|   100|
|0-6 months  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |[32-38) |           1|      2|   100|
|0-6 months  |PROBIT        |BELARUS                      |>=38    |           0|    582| 16275|
|0-6 months  |PROBIT        |BELARUS                      |>=38    |           1|    161| 16275|
|0-6 months  |PROBIT        |BELARUS                      |<32     |           0|   9765| 16275|
|0-6 months  |PROBIT        |BELARUS                      |<32     |           1|   3292| 16275|
|0-6 months  |PROBIT        |BELARUS                      |[32-38) |           0|   1884| 16275|
|0-6 months  |PROBIT        |BELARUS                      |[32-38) |           1|    591| 16275|
|0-6 months  |SAS-CompFeed  |INDIA                        |>=38    |           0|     33|  1502|
|0-6 months  |SAS-CompFeed  |INDIA                        |>=38    |           1|     15|  1502|
|0-6 months  |SAS-CompFeed  |INDIA                        |<32     |           0|    992|  1502|
|0-6 months  |SAS-CompFeed  |INDIA                        |<32     |           1|    266|  1502|
|0-6 months  |SAS-CompFeed  |INDIA                        |[32-38) |           0|    147|  1502|
|0-6 months  |SAS-CompFeed  |INDIA                        |[32-38) |           1|     49|  1502|
|0-6 months  |SAS-FoodSuppl |INDIA                        |>=38    |           0|     32|   418|
|0-6 months  |SAS-FoodSuppl |INDIA                        |>=38    |           1|     12|   418|
|0-6 months  |SAS-FoodSuppl |INDIA                        |<32     |           0|    238|   418|
|0-6 months  |SAS-FoodSuppl |INDIA                        |<32     |           1|     51|   418|
|0-6 months  |SAS-FoodSuppl |INDIA                        |[32-38) |           0|     70|   418|
|0-6 months  |SAS-FoodSuppl |INDIA                        |[32-38) |           1|     15|   418|
|6-24 months |COHORTS       |GUATEMALA                    |>=38    |           0|    303|  1165|
|6-24 months |COHORTS       |GUATEMALA                    |>=38    |           1|     37|  1165|
|6-24 months |COHORTS       |GUATEMALA                    |<32     |           0|    477|  1165|
|6-24 months |COHORTS       |GUATEMALA                    |<32     |           1|     69|  1165|
|6-24 months |COHORTS       |GUATEMALA                    |[32-38) |           0|    238|  1165|
|6-24 months |COHORTS       |GUATEMALA                    |[32-38) |           1|     41|  1165|
|6-24 months |COHORTS       |PHILIPPINES                  |>=38    |           0|    210|  2720|
|6-24 months |COHORTS       |PHILIPPINES                  |>=38    |           1|     95|  2720|
|6-24 months |COHORTS       |PHILIPPINES                  |<32     |           0|   1408|  2720|
|6-24 months |COHORTS       |PHILIPPINES                  |<32     |           1|    503|  2720|
|6-24 months |COHORTS       |PHILIPPINES                  |[32-38) |           0|    378|  2720|
|6-24 months |COHORTS       |PHILIPPINES                  |[32-38) |           1|    126|  2720|
|6-24 months |LCNI-5        |MALAWI                       |>=38    |           0|     24|   106|
|6-24 months |LCNI-5        |MALAWI                       |>=38    |           1|      2|   106|
|6-24 months |LCNI-5        |MALAWI                       |<32     |           0|     50|   106|
|6-24 months |LCNI-5        |MALAWI                       |<32     |           1|      6|   106|
|6-24 months |LCNI-5        |MALAWI                       |[32-38) |           0|     22|   106|
|6-24 months |LCNI-5        |MALAWI                       |[32-38) |           1|      2|   106|
|6-24 months |MAL-ED        |BANGLADESH                   |>=38    |           0|     56|   151|
|6-24 months |MAL-ED        |BANGLADESH                   |>=38    |           1|     13|   151|
|6-24 months |MAL-ED        |BANGLADESH                   |<32     |           0|     21|   151|
|6-24 months |MAL-ED        |BANGLADESH                   |<32     |           1|      9|   151|
|6-24 months |MAL-ED        |BANGLADESH                   |[32-38) |           0|     46|   151|
|6-24 months |MAL-ED        |BANGLADESH                   |[32-38) |           1|      6|   151|
|6-24 months |MAL-ED        |BRAZIL                       |>=38    |           0|     30|    79|
|6-24 months |MAL-ED        |BRAZIL                       |>=38    |           1|      0|    79|
|6-24 months |MAL-ED        |BRAZIL                       |<32     |           0|     18|    79|
|6-24 months |MAL-ED        |BRAZIL                       |<32     |           1|      0|    79|
|6-24 months |MAL-ED        |BRAZIL                       |[32-38) |           0|     29|    79|
|6-24 months |MAL-ED        |BRAZIL                       |[32-38) |           1|      2|    79|
|6-24 months |MAL-ED        |INDIA                        |>=38    |           0|     30|   161|
|6-24 months |MAL-ED        |INDIA                        |>=38    |           1|      6|   161|
|6-24 months |MAL-ED        |INDIA                        |<32     |           0|     31|   161|
|6-24 months |MAL-ED        |INDIA                        |<32     |           1|     22|   161|
|6-24 months |MAL-ED        |INDIA                        |[32-38) |           0|     53|   161|
|6-24 months |MAL-ED        |INDIA                        |[32-38) |           1|     19|   161|
|6-24 months |MAL-ED        |NEPAL                        |>=38    |           0|     13|    79|
|6-24 months |MAL-ED        |NEPAL                        |>=38    |           1|      4|    79|
|6-24 months |MAL-ED        |NEPAL                        |<32     |           0|     10|    79|
|6-24 months |MAL-ED        |NEPAL                        |<32     |           1|      5|    79|
|6-24 months |MAL-ED        |NEPAL                        |[32-38) |           0|     40|    79|
|6-24 months |MAL-ED        |NEPAL                        |[32-38) |           1|      7|    79|
|6-24 months |MAL-ED        |PERU                         |>=38    |           0|     26|    83|
|6-24 months |MAL-ED        |PERU                         |>=38    |           1|      1|    83|
|6-24 months |MAL-ED        |PERU                         |<32     |           0|     26|    83|
|6-24 months |MAL-ED        |PERU                         |<32     |           1|      2|    83|
|6-24 months |MAL-ED        |PERU                         |[32-38) |           0|     26|    83|
|6-24 months |MAL-ED        |PERU                         |[32-38) |           1|      2|    83|
|6-24 months |MAL-ED        |SOUTH AFRICA                 |>=38    |           0|     55|    90|
|6-24 months |MAL-ED        |SOUTH AFRICA                 |>=38    |           1|     10|    90|
|6-24 months |MAL-ED        |SOUTH AFRICA                 |<32     |           0|      9|    90|
|6-24 months |MAL-ED        |SOUTH AFRICA                 |<32     |           1|      0|    90|
|6-24 months |MAL-ED        |SOUTH AFRICA                 |[32-38) |           0|     13|    90|
|6-24 months |MAL-ED        |SOUTH AFRICA                 |[32-38) |           1|      3|    90|
|6-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |>=38    |           0|     44|   100|
|6-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |>=38    |           1|      4|   100|
|6-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |<32     |           0|     11|   100|
|6-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |<32     |           1|      4|   100|
|6-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |[32-38) |           0|     34|   100|
|6-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |[32-38) |           1|      3|   100|
|6-24 months |PROBIT        |BELARUS                      |>=38    |           0|    729| 15992|
|6-24 months |PROBIT        |BELARUS                      |>=38    |           1|      6| 15992|
|6-24 months |PROBIT        |BELARUS                      |<32     |           0|  12697| 15992|
|6-24 months |PROBIT        |BELARUS                      |<32     |           1|    112| 15992|
|6-24 months |PROBIT        |BELARUS                      |[32-38) |           0|   2432| 15992|
|6-24 months |PROBIT        |BELARUS                      |[32-38) |           1|     16| 15992|
|6-24 months |SAS-CompFeed  |INDIA                        |>=38    |           0|     24|  1386|
|6-24 months |SAS-CompFeed  |INDIA                        |>=38    |           1|     20|  1386|
|6-24 months |SAS-CompFeed  |INDIA                        |<32     |           0|    818|  1386|
|6-24 months |SAS-CompFeed  |INDIA                        |<32     |           1|    351|  1386|
|6-24 months |SAS-CompFeed  |INDIA                        |[32-38) |           0|    121|  1386|
|6-24 months |SAS-CompFeed  |INDIA                        |[32-38) |           1|     52|  1386|
|6-24 months |SAS-FoodSuppl |INDIA                        |>=38    |           0|     29|   402|
|6-24 months |SAS-FoodSuppl |INDIA                        |>=38    |           1|     14|   402|
|6-24 months |SAS-FoodSuppl |INDIA                        |<32     |           0|    179|   402|
|6-24 months |SAS-FoodSuppl |INDIA                        |<32     |           1|    100|   402|
|6-24 months |SAS-FoodSuppl |INDIA                        |[32-38) |           0|     51|   402|
|6-24 months |SAS-FoodSuppl |INDIA                        |[32-38) |           1|     29|   402|


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

* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
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




# Results Detail

## Results Plots
![](/tmp/f03f11c1-193d-43fc-9499-b7a489f21fbe/482e5bb2-0666-423c-956b-bab82e97be58/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f03f11c1-193d-43fc-9499-b7a489f21fbe/482e5bb2-0666-423c-956b-bab82e97be58/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f03f11c1-193d-43fc-9499-b7a489f21fbe/482e5bb2-0666-423c-956b-bab82e97be58/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f03f11c1-193d-43fc-9499-b7a489f21fbe/482e5bb2-0666-423c-956b-bab82e97be58/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid       |country     |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:-----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS       |GUATEMALA   |>=38               |NA             | 0.2469161| 0.1867819| 0.3070502|
|0-24 months |COHORTS       |GUATEMALA   |<32                |NA             | 0.2380866| 0.1945499| 0.2816232|
|0-24 months |COHORTS       |GUATEMALA   |[32-38)            |NA             | 0.2380126| 0.1703851| 0.3056401|
|0-24 months |COHORTS       |PHILIPPINES |>=38               |NA             | 0.4182597| 0.3439998| 0.4925196|
|0-24 months |COHORTS       |PHILIPPINES |<32                |NA             | 0.3991424| 0.3729023| 0.4253825|
|0-24 months |COHORTS       |PHILIPPINES |[32-38)            |NA             | 0.3522083| 0.2904798| 0.4139367|
|0-24 months |MAL-ED        |BANGLADESH  |>=38               |NA             | 0.3330476| 0.2163883| 0.4497070|
|0-24 months |MAL-ED        |BANGLADESH  |<32                |NA             | 0.4801616| 0.2826800| 0.6776431|
|0-24 months |MAL-ED        |BANGLADESH  |[32-38)            |NA             | 0.2656788| 0.1407275| 0.3906301|
|0-24 months |MAL-ED        |INDIA       |>=38               |NA             | 0.2902510| 0.1324378| 0.4480641|
|0-24 months |MAL-ED        |INDIA       |<32                |NA             | 0.6214478| 0.4879676| 0.7549279|
|0-24 months |MAL-ED        |INDIA       |[32-38)            |NA             | 0.4950143| 0.3777601| 0.6122684|
|0-24 months |PROBIT        |BELARUS     |>=38               |NA             | 0.1984604| 0.1612471| 0.2356737|
|0-24 months |PROBIT        |BELARUS     |<32                |NA             | 0.2550566| 0.1933362| 0.3167769|
|0-24 months |PROBIT        |BELARUS     |[32-38)            |NA             | 0.2426938| 0.1884814| 0.2969062|
|0-24 months |SAS-CompFeed  |INDIA       |>=38               |NA             | 0.5619996| 0.3937456| 0.7302536|
|0-24 months |SAS-CompFeed  |INDIA       |<32                |NA             | 0.4072548| 0.3554343| 0.4590754|
|0-24 months |SAS-CompFeed  |INDIA       |[32-38)            |NA             | 0.4244577| 0.2937446| 0.5551709|
|0-24 months |SAS-FoodSuppl |INDIA       |>=38               |NA             | 0.5235680| 0.3727017| 0.6744342|
|0-24 months |SAS-FoodSuppl |INDIA       |<32                |NA             | 0.4672801| 0.4095979| 0.5249623|
|0-24 months |SAS-FoodSuppl |INDIA       |[32-38)            |NA             | 0.4621463| 0.3551150| 0.5691777|
|0-6 months  |COHORTS       |GUATEMALA   |>=38               |NA             | 0.2666930| 0.1942949| 0.3390910|
|0-6 months  |COHORTS       |GUATEMALA   |<32                |NA             | 0.1756417| 0.1372840| 0.2139994|
|0-6 months  |COHORTS       |GUATEMALA   |[32-38)            |NA             | 0.1761563| 0.1077799| 0.2445326|
|0-6 months  |COHORTS       |PHILIPPINES |>=38               |NA             | 0.2238384| 0.1599709| 0.2877060|
|0-6 months  |COHORTS       |PHILIPPINES |<32                |NA             | 0.2293752| 0.2073228| 0.2514277|
|0-6 months  |COHORTS       |PHILIPPINES |[32-38)            |NA             | 0.2258526| 0.1685667| 0.2831386|
|0-6 months  |MAL-ED        |BANGLADESH  |>=38               |NA             | 0.2463768| 0.1443667| 0.3483870|
|0-6 months  |MAL-ED        |BANGLADESH  |<32                |NA             | 0.3000000| 0.1354719| 0.4645281|
|0-6 months  |MAL-ED        |BANGLADESH  |[32-38)            |NA             | 0.1730769| 0.0699098| 0.2762441|
|0-6 months  |MAL-ED        |INDIA       |>=38               |NA             | 0.1944444| 0.0647578| 0.3241311|
|0-6 months  |MAL-ED        |INDIA       |<32                |NA             | 0.3396226| 0.2117265| 0.4675188|
|0-6 months  |MAL-ED        |INDIA       |[32-38)            |NA             | 0.3888889| 0.2759333| 0.5018445|
|0-6 months  |PROBIT        |BELARUS     |>=38               |NA             | 0.1841195| 0.1479161| 0.2203229|
|0-6 months  |PROBIT        |BELARUS     |<32                |NA             | 0.2500707| 0.1883541| 0.3117873|
|0-6 months  |PROBIT        |BELARUS     |[32-38)            |NA             | 0.2399959| 0.1885305| 0.2914613|
|0-6 months  |SAS-CompFeed  |INDIA       |>=38               |NA             | 0.3203655| 0.1419059| 0.4988251|
|0-6 months  |SAS-CompFeed  |INDIA       |<32                |NA             | 0.2115571| 0.1714884| 0.2516257|
|0-6 months  |SAS-CompFeed  |INDIA       |[32-38)            |NA             | 0.2558912| 0.1689365| 0.3428459|
|0-6 months  |SAS-FoodSuppl |INDIA       |>=38               |NA             | 0.2707463| 0.1375330| 0.4039596|
|0-6 months  |SAS-FoodSuppl |INDIA       |<32                |NA             | 0.1758547| 0.1318641| 0.2198453|
|0-6 months  |SAS-FoodSuppl |INDIA       |[32-38)            |NA             | 0.1810417| 0.0970500| 0.2650334|
|6-24 months |COHORTS       |GUATEMALA   |>=38               |NA             | 0.0857892| 0.0474373| 0.1241412|
|6-24 months |COHORTS       |GUATEMALA   |<32                |NA             | 0.1337967| 0.1004063| 0.1671870|
|6-24 months |COHORTS       |GUATEMALA   |[32-38)            |NA             | 0.1340086| 0.0808642| 0.1871529|
|6-24 months |COHORTS       |PHILIPPINES |>=38               |NA             | 0.3417091| 0.2672119| 0.4162063|
|6-24 months |COHORTS       |PHILIPPINES |<32                |NA             | 0.2669770| 0.2413892| 0.2925648|
|6-24 months |COHORTS       |PHILIPPINES |[32-38)            |NA             | 0.2304903| 0.1749967| 0.2859840|
|6-24 months |MAL-ED        |BANGLADESH  |>=38               |NA             | 0.1884058| 0.0958331| 0.2809785|
|6-24 months |MAL-ED        |BANGLADESH  |<32                |NA             | 0.3000000| 0.1354719| 0.4645281|
|6-24 months |MAL-ED        |BANGLADESH  |[32-38)            |NA             | 0.1153846| 0.0282601| 0.2025091|
|6-24 months |MAL-ED        |INDIA       |>=38               |NA             | 0.1666667| 0.0445476| 0.2887858|
|6-24 months |MAL-ED        |INDIA       |<32                |NA             | 0.4150943| 0.2820246| 0.5481641|
|6-24 months |MAL-ED        |INDIA       |[32-38)            |NA             | 0.2638889| 0.1617674| 0.3660104|
|6-24 months |PROBIT        |BELARUS     |>=38               |NA             | 0.0081633| 0.0010716| 0.0152549|
|6-24 months |PROBIT        |BELARUS     |<32                |NA             | 0.0087439| 0.0047147| 0.0127730|
|6-24 months |PROBIT        |BELARUS     |[32-38)            |NA             | 0.0065359| 0.0019147| 0.0111572|
|6-24 months |SAS-CompFeed  |INDIA       |>=38               |NA             | 0.6106108| 0.5309083| 0.6903133|
|6-24 months |SAS-CompFeed  |INDIA       |<32                |NA             | 0.2996310| 0.2567729| 0.3424891|
|6-24 months |SAS-CompFeed  |INDIA       |[32-38)            |NA             | 0.2170291| 0.1357884| 0.2982697|
|6-24 months |SAS-FoodSuppl |INDIA       |>=38               |NA             | 0.3237172| 0.1803410| 0.4670933|
|6-24 months |SAS-FoodSuppl |INDIA       |<32                |NA             | 0.3581667| 0.3017483| 0.4145851|
|6-24 months |SAS-FoodSuppl |INDIA       |[32-38)            |NA             | 0.3586971| 0.2523299| 0.4650642|


### Parameter: E(Y)


|agecat      |studyid       |country     |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:-----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS       |GUATEMALA   |NA                 |NA             | 0.2560311| 0.2321591| 0.2799032|
|0-24 months |COHORTS       |PHILIPPINES |NA                 |NA             | 0.4018374| 0.3841095| 0.4195652|
|0-24 months |MAL-ED        |BANGLADESH  |NA                 |NA             | 0.3377483| 0.2620632| 0.4134335|
|0-24 months |MAL-ED        |INDIA       |NA                 |NA             | 0.4968944| 0.4194215| 0.5743673|
|0-24 months |PROBIT        |BELARUS     |NA                 |NA             | 0.2538395| 0.1952096| 0.3124695|
|0-24 months |SAS-CompFeed  |INDIA       |NA                 |NA             | 0.4145695| 0.3576236| 0.4715155|
|0-24 months |SAS-FoodSuppl |INDIA       |NA                 |NA             | 0.4712919| 0.4233811| 0.5192026|
|0-6 months  |COHORTS       |GUATEMALA   |NA                 |NA             | 0.2005842| 0.1760818| 0.2250867|
|0-6 months  |COHORTS       |PHILIPPINES |NA                 |NA             | 0.2321307| 0.2168619| 0.2473995|
|0-6 months  |MAL-ED        |BANGLADESH  |NA                 |NA             | 0.2317881| 0.1642594| 0.2993168|
|0-6 months  |MAL-ED        |INDIA       |NA                 |NA             | 0.3291925| 0.2563790| 0.4020061|
|0-6 months  |PROBIT        |BELARUS     |NA                 |NA             | 0.2484793| 0.1896843| 0.3072742|
|0-6 months  |SAS-CompFeed  |INDIA       |NA                 |NA             | 0.2197071| 0.1750081| 0.2644060|
|0-6 months  |SAS-FoodSuppl |INDIA       |NA                 |NA             | 0.1866029| 0.1492099| 0.2239959|
|6-24 months |COHORTS       |GUATEMALA   |NA                 |NA             | 0.1261803| 0.1071047| 0.1452559|
|6-24 months |COHORTS       |PHILIPPINES |NA                 |NA             | 0.2661765| 0.2495644| 0.2827886|
|6-24 months |MAL-ED        |BANGLADESH  |NA                 |NA             | 0.1854305| 0.1232352| 0.2476257|
|6-24 months |MAL-ED        |INDIA       |NA                 |NA             | 0.2919255| 0.2214783| 0.3623726|
|6-24 months |PROBIT        |BELARUS     |NA                 |NA             | 0.0083792| 0.0045582| 0.0122002|
|6-24 months |SAS-CompFeed  |INDIA       |NA                 |NA             | 0.3051948| 0.2633957| 0.3469939|
|6-24 months |SAS-FoodSuppl |INDIA       |NA                 |NA             | 0.3557214| 0.3088651| 0.4025777|


### Parameter: RR


|agecat      |studyid       |country     |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:-----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS       |GUATEMALA   |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS       |GUATEMALA   |<32                |>=38           | 0.9642410| 0.7118333| 1.3061495|
|0-24 months |COHORTS       |GUATEMALA   |[32-38)            |>=38           | 0.9639413| 0.6637766| 1.3998429|
|0-24 months |COHORTS       |PHILIPPINES |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS       |PHILIPPINES |<32                |>=38           | 0.9542934| 0.7897223| 1.1531595|
|0-24 months |COHORTS       |PHILIPPINES |[32-38)            |>=38           | 0.8420804| 0.6561500| 1.0806971|
|0-24 months |MAL-ED        |BANGLADESH  |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED        |BANGLADESH  |<32                |>=38           | 1.4417203| 0.8406082| 2.4726828|
|0-24 months |MAL-ED        |BANGLADESH  |[32-38)            |>=38           | 0.7977201| 0.4446180| 1.4312451|
|0-24 months |MAL-ED        |INDIA       |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED        |INDIA       |<32                |>=38           | 2.1410705| 1.1927234| 3.8434585|
|0-24 months |MAL-ED        |INDIA       |[32-38)            |>=38           | 1.7054698| 0.9418804| 3.0881070|
|0-24 months |PROBIT        |BELARUS     |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |PROBIT        |BELARUS     |<32                |>=38           | 1.2851760| 1.0708336| 1.5424220|
|0-24 months |PROBIT        |BELARUS     |[32-38)            |>=38           | 1.2228827| 0.9871969| 1.5148367|
|0-24 months |SAS-CompFeed  |INDIA       |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |SAS-CompFeed  |INDIA       |<32                |>=38           | 0.7246533| 0.5773474| 0.9095430|
|0-24 months |SAS-CompFeed  |INDIA       |[32-38)            |>=38           | 0.7552635| 0.5094567| 1.1196691|
|0-24 months |SAS-FoodSuppl |INDIA       |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |SAS-FoodSuppl |INDIA       |<32                |>=38           | 0.8924917| 0.6522578| 1.2212065|
|0-24 months |SAS-FoodSuppl |INDIA       |[32-38)            |>=38           | 0.8826864| 0.6098723| 1.2775383|
|0-6 months  |COHORTS       |GUATEMALA   |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |COHORTS       |GUATEMALA   |<32                |>=38           | 0.6585914| 0.4651049| 0.9325695|
|0-6 months  |COHORTS       |GUATEMALA   |[32-38)            |>=38           | 0.6605208| 0.4114430| 1.0603844|
|0-6 months  |COHORTS       |PHILIPPINES |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |COHORTS       |PHILIPPINES |<32                |>=38           | 1.0247356| 0.7582771| 1.3848275|
|0-6 months  |COHORTS       |PHILIPPINES |[32-38)            |>=38           | 1.0089985| 0.6887696| 1.4781109|
|0-6 months  |MAL-ED        |BANGLADESH  |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED        |BANGLADESH  |<32                |>=38           | 1.2176471| 0.6124737| 2.4207805|
|0-6 months  |MAL-ED        |BANGLADESH  |[32-38)            |>=38           | 0.7024887| 0.3399717| 1.4515632|
|0-6 months  |MAL-ED        |INDIA       |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED        |INDIA       |<32                |>=38           | 1.7466307| 0.8120101| 3.7569961|
|0-6 months  |MAL-ED        |INDIA       |[32-38)            |>=38           | 2.0000000| 0.9662673| 4.1396415|
|0-6 months  |PROBIT        |BELARUS     |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |PROBIT        |BELARUS     |<32                |>=38           | 1.3581978| 1.1349595| 1.6253455|
|0-6 months  |PROBIT        |BELARUS     |[32-38)            |>=38           | 1.3034791| 1.0578853| 1.6060888|
|0-6 months  |SAS-CompFeed  |INDIA       |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |SAS-CompFeed  |INDIA       |<32                |>=38           | 0.6603616| 0.3987250| 1.0936796|
|0-6 months  |SAS-CompFeed  |INDIA       |[32-38)            |>=38           | 0.7987476| 0.5424115| 1.1762247|
|0-6 months  |SAS-FoodSuppl |INDIA       |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |SAS-FoodSuppl |INDIA       |<32                |>=38           | 0.6495183| 0.3738659| 1.1284100|
|0-6 months  |SAS-FoodSuppl |INDIA       |[32-38)            |>=38           | 0.6686765| 0.3395196| 1.3169438|
|6-24 months |COHORTS       |GUATEMALA   |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |COHORTS       |GUATEMALA   |<32                |>=38           | 1.5595972| 0.9348855| 2.6017555|
|6-24 months |COHORTS       |GUATEMALA   |[32-38)            |>=38           | 1.5620671| 0.8603966| 2.8359638|
|6-24 months |COHORTS       |PHILIPPINES |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |COHORTS       |PHILIPPINES |<32                |>=38           | 0.7812991| 0.6158159| 0.9912512|
|6-24 months |COHORTS       |PHILIPPINES |[32-38)            |>=38           | 0.6745221| 0.4874808| 0.9333293|
|6-24 months |MAL-ED        |BANGLADESH  |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |MAL-ED        |BANGLADESH  |<32                |>=38           | 1.5923077| 0.7624990| 3.3251767|
|6-24 months |MAL-ED        |BANGLADESH  |[32-38)            |>=38           | 0.6124260| 0.2487773| 1.5076363|
|6-24 months |MAL-ED        |INDIA       |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |MAL-ED        |INDIA       |<32                |>=38           | 2.4905660| 1.1193351| 5.5416104|
|6-24 months |MAL-ED        |INDIA       |[32-38)            |>=38           | 1.5833333| 0.6913573| 3.6261201|
|6-24 months |PROBIT        |BELARUS     |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |PROBIT        |BELARUS     |<32                |>=38           | 1.0711219| 0.4964948| 2.3108038|
|6-24 months |PROBIT        |BELARUS     |[32-38)            |>=38           | 0.8006536| 0.3030215| 2.1155137|
|6-24 months |SAS-CompFeed  |INDIA       |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |SAS-CompFeed  |INDIA       |<32                |>=38           | 0.4907070| 0.3994595| 0.6027981|
|6-24 months |SAS-CompFeed  |INDIA       |[32-38)            |>=38           | 0.3554295| 0.2586265| 0.4884654|
|6-24 months |SAS-FoodSuppl |INDIA       |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |SAS-FoodSuppl |INDIA       |<32                |>=38           | 1.1064187| 0.6913402| 1.7707090|
|6-24 months |SAS-FoodSuppl |INDIA       |[32-38)            |>=38           | 1.1080570| 0.6503697| 1.8878346|


### Parameter: PAR


|agecat      |studyid       |country     |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:-------------|:-----------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |COHORTS       |GUATEMALA   |>=38               |NA             |  0.0091151| -0.0463974|  0.0646276|
|0-24 months |COHORTS       |PHILIPPINES |>=38               |NA             | -0.0164223| -0.0891586|  0.0563140|
|0-24 months |MAL-ED        |BANGLADESH  |>=38               |NA             |  0.0047007| -0.0824405|  0.0918419|
|0-24 months |MAL-ED        |INDIA       |>=38               |NA             |  0.2066435|  0.0639157|  0.3493712|
|0-24 months |PROBIT        |BELARUS     |>=38               |NA             |  0.0553791|  0.0124314|  0.0983269|
|0-24 months |SAS-CompFeed  |INDIA       |>=38               |NA             | -0.1474300| -0.2826795| -0.0121805|
|0-24 months |SAS-FoodSuppl |INDIA       |>=38               |NA             | -0.0522761| -0.1950086|  0.0904564|
|0-6 months  |COHORTS       |GUATEMALA   |>=38               |NA             | -0.0661088| -0.1328319|  0.0006144|
|0-6 months  |COHORTS       |PHILIPPINES |>=38               |NA             |  0.0082923| -0.0544175|  0.0710020|
|0-6 months  |MAL-ED        |BANGLADESH  |>=38               |NA             | -0.0145887| -0.0884536|  0.0592761|
|0-6 months  |MAL-ED        |INDIA       |>=38               |NA             |  0.1347481|  0.0139215|  0.2555747|
|0-6 months  |PROBIT        |BELARUS     |>=38               |NA             |  0.0643598|  0.0225609|  0.1061587|
|0-6 months  |SAS-CompFeed  |INDIA       |>=38               |NA             | -0.1006585| -0.2549842|  0.0536672|
|0-6 months  |SAS-FoodSuppl |INDIA       |>=38               |NA             | -0.0841435| -0.2085862|  0.0402993|
|6-24 months |COHORTS       |GUATEMALA   |>=38               |NA             |  0.0403910|  0.0043817|  0.0764003|
|6-24 months |COHORTS       |PHILIPPINES |>=38               |NA             | -0.0755326| -0.1482938| -0.0027715|
|6-24 months |MAL-ED        |BANGLADESH  |>=38               |NA             | -0.0029753| -0.0708431|  0.0648925|
|6-24 months |MAL-ED        |INDIA       |>=38               |NA             |  0.1252588|  0.0103385|  0.2401791|
|6-24 months |PROBIT        |BELARUS     |>=38               |NA             |  0.0002159| -0.0058072|  0.0062391|
|6-24 months |SAS-CompFeed  |INDIA       |>=38               |NA             | -0.3054160| -0.3935477| -0.2172843|
|6-24 months |SAS-FoodSuppl |INDIA       |>=38               |NA             |  0.0320042| -0.1038747|  0.1678832|


### Parameter: PAF


|agecat      |studyid       |country     |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:-------------|:-----------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |COHORTS       |GUATEMALA   |>=38               |NA             |  0.0356014| -0.2075013|  0.2297610|
|0-24 months |COHORTS       |PHILIPPINES |>=38               |NA             | -0.0408680| -0.2386556|  0.1253370|
|0-24 months |MAL-ED        |BANGLADESH  |>=38               |NA             |  0.0139178| -0.2811017|  0.2409985|
|0-24 months |MAL-ED        |INDIA       |>=38               |NA             |  0.4158699|  0.0399409|  0.6445969|
|0-24 months |PROBIT        |BELARUS     |>=38               |NA             |  0.2181659|  0.0719350|  0.3413558|
|0-24 months |SAS-CompFeed  |INDIA       |>=38               |NA             | -0.3556220| -0.7012932| -0.0801847|
|0-24 months |SAS-FoodSuppl |INDIA       |>=38               |NA             | -0.1109208| -0.4592526|  0.1542622|
|0-6 months  |COHORTS       |GUATEMALA   |>=38               |NA             | -0.3295811| -0.7076737| -0.0352011|
|0-6 months  |COHORTS       |PHILIPPINES |>=38               |NA             |  0.0357223| -0.2759366|  0.2712558|
|0-6 months  |MAL-ED        |BANGLADESH  |>=38               |NA             | -0.0629400| -0.4342828|  0.2122604|
|0-6 months  |MAL-ED        |INDIA       |>=38               |NA             |  0.4093291| -0.0907885|  0.6801469|
|0-6 months  |PROBIT        |BELARUS     |>=38               |NA             |  0.2590147|  0.1223991|  0.3743634|
|0-6 months  |SAS-CompFeed  |INDIA       |>=38               |NA             | -0.4581485| -1.3037938|  0.0770888|
|0-6 months  |SAS-FoodSuppl |INDIA       |>=38               |NA             | -0.4509226| -1.2939600|  0.0822959|
|6-24 months |COHORTS       |GUATEMALA   |>=38               |NA             |  0.3201056| -0.0305720|  0.5514566|
|6-24 months |COHORTS       |PHILIPPINES |>=38               |NA             | -0.2837690| -0.5893027| -0.0369722|
|6-24 months |MAL-ED        |BANGLADESH  |>=38               |NA             | -0.0160455| -0.4566198|  0.2912711|
|6-24 months |MAL-ED        |INDIA       |>=38               |NA             |  0.4290780| -0.1233081|  0.7098286|
|6-24 months |PROBIT        |BELARUS     |>=38               |NA             |  0.0257691| -1.0373951|  0.5341474|
|6-24 months |SAS-CompFeed  |INDIA       |>=38               |NA             | -1.0007249| -1.4059186| -0.6637720|
|6-24 months |SAS-FoodSuppl |INDIA       |>=38               |NA             |  0.0899700| -0.3848144|  0.4019742|
