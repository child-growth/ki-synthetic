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

**Intervention Variable:** feducyrs

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |feducyrs | ever_stunted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:--------|------------:|------:|-----:|
|0-24 months |COHORTS        |GUATEMALA                    |High     |            0|     55|  1250|
|0-24 months |COHORTS        |GUATEMALA                    |High     |            1|    179|  1250|
|0-24 months |COHORTS        |GUATEMALA                    |Low      |            0|    122|  1250|
|0-24 months |COHORTS        |GUATEMALA                    |Low      |            1|    445|  1250|
|0-24 months |COHORTS        |GUATEMALA                    |Medium   |            0|    114|  1250|
|0-24 months |COHORTS        |GUATEMALA                    |Medium   |            1|    335|  1250|
|0-24 months |COHORTS        |INDIA                        |High     |            0|    404|  1447|
|0-24 months |COHORTS        |INDIA                        |High     |            1|    163|  1447|
|0-24 months |COHORTS        |INDIA                        |Low      |            0|    240|  1447|
|0-24 months |COHORTS        |INDIA                        |Low      |            1|    232|  1447|
|0-24 months |COHORTS        |INDIA                        |Medium   |            0|    256|  1447|
|0-24 months |COHORTS        |INDIA                        |Medium   |            1|    152|  1447|
|0-24 months |COHORTS        |PHILIPPINES                  |High     |            0|    466|  2880|
|0-24 months |COHORTS        |PHILIPPINES                  |High     |            1|    565|  2880|
|0-24 months |COHORTS        |PHILIPPINES                  |Low      |            0|    160|  2880|
|0-24 months |COHORTS        |PHILIPPINES                  |Low      |            1|    668|  2880|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium   |            0|    267|  2880|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium   |            1|    754|  2880|
|0-24 months |GMS-Nepal      |NEPAL                        |High     |            0|     79|   696|
|0-24 months |GMS-Nepal      |NEPAL                        |High     |            1|     94|   696|
|0-24 months |GMS-Nepal      |NEPAL                        |Low      |            0|     92|   696|
|0-24 months |GMS-Nepal      |NEPAL                        |Low      |            1|    204|   696|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium   |            0|     79|   696|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium   |            1|    148|   696|
|0-24 months |JiVitA-3       |BANGLADESH                   |High     |            0|   3975| 26233|
|0-24 months |JiVitA-3       |BANGLADESH                   |High     |            1|   2529| 26233|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low      |            0|   4982| 26233|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low      |            1|   5803| 26233|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium   |            0|   4339| 26233|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium   |            1|   4605| 26233|
|0-24 months |JiVitA-4       |BANGLADESH                   |High     |            0|    634|  5276|
|0-24 months |JiVitA-4       |BANGLADESH                   |High     |            1|    613|  5276|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low      |            0|    705|  5276|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low      |            1|   1248|  5276|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium   |            0|    866|  5276|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium   |            1|   1210|  5276|
|0-24 months |LCNI-5         |MALAWI                       |High     |            0|     90|   813|
|0-24 months |LCNI-5         |MALAWI                       |High     |            1|    161|   813|
|0-24 months |LCNI-5         |MALAWI                       |Low      |            0|    107|   813|
|0-24 months |LCNI-5         |MALAWI                       |Low      |            1|    184|   813|
|0-24 months |LCNI-5         |MALAWI                       |Medium   |            0|     98|   813|
|0-24 months |LCNI-5         |MALAWI                       |Medium   |            1|    173|   813|
|0-24 months |MAL-ED         |BANGLADESH                   |High     |            0|     31|   149|
|0-24 months |MAL-ED         |BANGLADESH                   |High     |            1|     23|   149|
|0-24 months |MAL-ED         |BANGLADESH                   |Low      |            0|     15|   149|
|0-24 months |MAL-ED         |BANGLADESH                   |Low      |            1|     25|   149|
|0-24 months |MAL-ED         |BANGLADESH                   |Medium   |            0|     19|   149|
|0-24 months |MAL-ED         |BANGLADESH                   |Medium   |            1|     36|   149|
|0-24 months |MAL-ED         |INDIA                        |High     |            0|     17|   147|
|0-24 months |MAL-ED         |INDIA                        |High     |            1|     27|   147|
|0-24 months |MAL-ED         |INDIA                        |Low      |            0|     28|   147|
|0-24 months |MAL-ED         |INDIA                        |Low      |            1|     31|   147|
|0-24 months |MAL-ED         |INDIA                        |Medium   |            0|     18|   147|
|0-24 months |MAL-ED         |INDIA                        |Medium   |            1|     26|   147|
|0-24 months |MAL-ED         |NEPAL                        |High     |            0|     32|    98|
|0-24 months |MAL-ED         |NEPAL                        |High     |            1|     10|    98|
|0-24 months |MAL-ED         |NEPAL                        |Low      |            0|     16|    98|
|0-24 months |MAL-ED         |NEPAL                        |Low      |            1|     12|    98|
|0-24 months |MAL-ED         |NEPAL                        |Medium   |            0|     15|    98|
|0-24 months |MAL-ED         |NEPAL                        |Medium   |            1|     13|    98|
|0-24 months |MAL-ED         |PERU                         |High     |            0|     45|   250|
|0-24 months |MAL-ED         |PERU                         |High     |            1|     75|   250|
|0-24 months |MAL-ED         |PERU                         |Low      |            0|     28|   250|
|0-24 months |MAL-ED         |PERU                         |Low      |            1|     41|   250|
|0-24 months |MAL-ED         |PERU                         |Medium   |            0|     20|   250|
|0-24 months |MAL-ED         |PERU                         |Medium   |            1|     41|   250|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High     |            0|     14|   110|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High     |            1|     29|   110|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Low      |            0|     18|   110|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Low      |            1|     19|   110|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Medium   |            0|     10|   110|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Medium   |            1|     20|   110|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High     |            0|     19|   212|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High     |            1|    111|   212|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low      |            0|     10|   212|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low      |            1|     51|   212|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium   |            0|      3|   212|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium   |            1|     18|   212|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High     |            0|    192|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High     |            1|    104|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low      |            0|    112|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low      |            1|    130|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Medium   |            0|     92|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Medium   |            1|    128|   758|
|0-24 months |PROBIT         |BELARUS                      |High     |            0|   2454| 16314|
|0-24 months |PROBIT         |BELARUS                      |High     |            1|    253| 16314|
|0-24 months |PROBIT         |BELARUS                      |Low      |            0|   5479| 16314|
|0-24 months |PROBIT         |BELARUS                      |Low      |            1|    939| 16314|
|0-24 months |PROBIT         |BELARUS                      |Medium   |            0|   6346| 16314|
|0-24 months |PROBIT         |BELARUS                      |Medium   |            1|    843| 16314|
|0-24 months |PROVIDE        |BANGLADESH                   |High     |            0|    150|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |High     |            1|     82|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Low      |            0|    115|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Low      |            1|    123|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Medium   |            0|    130|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Medium   |            1|    100|   700|
|0-24 months |SAS-CompFeed   |INDIA                        |High     |            0|    159|  1530|
|0-24 months |SAS-CompFeed   |INDIA                        |High     |            1|    230|  1530|
|0-24 months |SAS-CompFeed   |INDIA                        |Low      |            0|    166|  1530|
|0-24 months |SAS-CompFeed   |INDIA                        |Low      |            1|    488|  1530|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium   |            0|    148|  1530|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium   |            1|    339|  1530|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High     |            0|     22|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High     |            1|     88|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Low      |            0|     26|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Low      |            1|    121|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Medium   |            0|     24|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Medium   |            1|    137|   418|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High     |            0|    303|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High     |            1|    146|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low      |            0|    811|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low      |            1|    459|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium   |            0|    443|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium   |            1|    221|  2383|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High     |            0|    651| 13694|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High     |            1|    349| 13694|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low      |            0|   1225| 13694|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low      |            1|   1087| 13694|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium   |            0|   6154| 13694|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium   |            1|   4228| 13694|
|0-6 months  |COHORTS        |GUATEMALA                    |High     |            0|    134|  1020|
|0-6 months  |COHORTS        |GUATEMALA                    |High     |            1|     60|  1020|
|0-6 months  |COHORTS        |GUATEMALA                    |Low      |            0|    304|  1020|
|0-6 months  |COHORTS        |GUATEMALA                    |Low      |            1|    152|  1020|
|0-6 months  |COHORTS        |GUATEMALA                    |Medium   |            0|    256|  1020|
|0-6 months  |COHORTS        |GUATEMALA                    |Medium   |            1|    114|  1020|
|0-6 months  |COHORTS        |INDIA                        |High     |            0|    485|  1421|
|0-6 months  |COHORTS        |INDIA                        |High     |            1|     74|  1421|
|0-6 months  |COHORTS        |INDIA                        |Low      |            0|    361|  1421|
|0-6 months  |COHORTS        |INDIA                        |Low      |            1|     97|  1421|
|0-6 months  |COHORTS        |INDIA                        |Medium   |            0|    342|  1421|
|0-6 months  |COHORTS        |INDIA                        |Medium   |            1|     62|  1421|
|0-6 months  |COHORTS        |PHILIPPINES                  |High     |            0|    863|  2880|
|0-6 months  |COHORTS        |PHILIPPINES                  |High     |            1|    168|  2880|
|0-6 months  |COHORTS        |PHILIPPINES                  |Low      |            0|    580|  2880|
|0-6 months  |COHORTS        |PHILIPPINES                  |Low      |            1|    248|  2880|
|0-6 months  |COHORTS        |PHILIPPINES                  |Medium   |            0|    751|  2880|
|0-6 months  |COHORTS        |PHILIPPINES                  |Medium   |            1|    270|  2880|
|0-6 months  |GMS-Nepal      |NEPAL                        |High     |            0|    125|   696|
|0-6 months  |GMS-Nepal      |NEPAL                        |High     |            1|     48|   696|
|0-6 months  |GMS-Nepal      |NEPAL                        |Low      |            0|    189|   696|
|0-6 months  |GMS-Nepal      |NEPAL                        |Low      |            1|    107|   696|
|0-6 months  |GMS-Nepal      |NEPAL                        |Medium   |            0|    160|   696|
|0-6 months  |GMS-Nepal      |NEPAL                        |Medium   |            1|     67|   696|
|0-6 months  |JiVitA-3       |BANGLADESH                   |High     |            0|   4445| 26171|
|0-6 months  |JiVitA-3       |BANGLADESH                   |High     |            1|   2033| 26171|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Low      |            0|   5918| 26171|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Low      |            1|   4846| 26171|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Medium   |            0|   5048| 26171|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Medium   |            1|   3881| 26171|
|0-6 months  |JiVitA-4       |BANGLADESH                   |High     |            0|    846|  4980|
|0-6 months  |JiVitA-4       |BANGLADESH                   |High     |            1|    335|  4980|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Low      |            0|   1135|  4980|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Low      |            1|    710|  4980|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Medium   |            0|   1271|  4980|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Medium   |            1|    683|  4980|
|0-6 months  |LCNI-5         |MALAWI                       |High     |            0|     54|   267|
|0-6 months  |LCNI-5         |MALAWI                       |High     |            1|     19|   267|
|0-6 months  |LCNI-5         |MALAWI                       |Low      |            0|     65|   267|
|0-6 months  |LCNI-5         |MALAWI                       |Low      |            1|     39|   267|
|0-6 months  |LCNI-5         |MALAWI                       |Medium   |            0|     53|   267|
|0-6 months  |LCNI-5         |MALAWI                       |Medium   |            1|     37|   267|
|0-6 months  |MAL-ED         |BANGLADESH                   |High     |            0|     39|   149|
|0-6 months  |MAL-ED         |BANGLADESH                   |High     |            1|     15|   149|
|0-6 months  |MAL-ED         |BANGLADESH                   |Low      |            0|     26|   149|
|0-6 months  |MAL-ED         |BANGLADESH                   |Low      |            1|     14|   149|
|0-6 months  |MAL-ED         |BANGLADESH                   |Medium   |            0|     32|   149|
|0-6 months  |MAL-ED         |BANGLADESH                   |Medium   |            1|     23|   149|
|0-6 months  |MAL-ED         |INDIA                        |High     |            0|     28|   147|
|0-6 months  |MAL-ED         |INDIA                        |High     |            1|     16|   147|
|0-6 months  |MAL-ED         |INDIA                        |Low      |            0|     41|   147|
|0-6 months  |MAL-ED         |INDIA                        |Low      |            1|     18|   147|
|0-6 months  |MAL-ED         |INDIA                        |Medium   |            0|     32|   147|
|0-6 months  |MAL-ED         |INDIA                        |Medium   |            1|     12|   147|
|0-6 months  |MAL-ED         |NEPAL                        |High     |            0|     36|    98|
|0-6 months  |MAL-ED         |NEPAL                        |High     |            1|      6|    98|
|0-6 months  |MAL-ED         |NEPAL                        |Low      |            0|     24|    98|
|0-6 months  |MAL-ED         |NEPAL                        |Low      |            1|      4|    98|
|0-6 months  |MAL-ED         |NEPAL                        |Medium   |            0|     21|    98|
|0-6 months  |MAL-ED         |NEPAL                        |Medium   |            1|      7|    98|
|0-6 months  |MAL-ED         |PERU                         |High     |            0|     65|   250|
|0-6 months  |MAL-ED         |PERU                         |High     |            1|     55|   250|
|0-6 months  |MAL-ED         |PERU                         |Low      |            0|     41|   250|
|0-6 months  |MAL-ED         |PERU                         |Low      |            1|     28|   250|
|0-6 months  |MAL-ED         |PERU                         |Medium   |            0|     37|   250|
|0-6 months  |MAL-ED         |PERU                         |Medium   |            1|     24|   250|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |High     |            0|     23|   110|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |High     |            1|     20|   110|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Low      |            0|     28|   110|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Low      |            1|      9|   110|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Medium   |            0|     16|   110|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Medium   |            1|     14|   110|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High     |            0|     80|   212|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High     |            1|     50|   212|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low      |            0|     36|   212|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low      |            1|     25|   212|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium   |            0|     10|   212|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium   |            1|     11|   212|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |High     |            0|    226|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |High     |            1|     70|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Low      |            0|    167|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Low      |            1|     75|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Medium   |            0|    136|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Medium   |            1|     84|   758|
|0-6 months  |PROBIT         |BELARUS                      |High     |            0|   2567| 16309|
|0-6 months  |PROBIT         |BELARUS                      |High     |            1|    140| 16309|
|0-6 months  |PROBIT         |BELARUS                      |Low      |            0|   5908| 16309|
|0-6 months  |PROBIT         |BELARUS                      |Low      |            1|    510| 16309|
|0-6 months  |PROBIT         |BELARUS                      |Medium   |            0|   6756| 16309|
|0-6 months  |PROBIT         |BELARUS                      |Medium   |            1|    428| 16309|
|0-6 months  |PROVIDE        |BANGLADESH                   |High     |            0|    188|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |High     |            1|     44|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |Low      |            0|    166|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |Low      |            1|     72|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |Medium   |            0|    178|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |Medium   |            1|     52|   700|
|0-6 months  |SAS-CompFeed   |INDIA                        |High     |            0|    255|  1527|
|0-6 months  |SAS-CompFeed   |INDIA                        |High     |            1|    134|  1527|
|0-6 months  |SAS-CompFeed   |INDIA                        |Low      |            0|    338|  1527|
|0-6 months  |SAS-CompFeed   |INDIA                        |Low      |            1|    315|  1527|
|0-6 months  |SAS-CompFeed   |INDIA                        |Medium   |            0|    285|  1527|
|0-6 months  |SAS-CompFeed   |INDIA                        |Medium   |            1|    200|  1527|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |High     |            0|     71|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |High     |            1|     39|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |Low      |            0|     88|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |Low      |            1|     58|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |Medium   |            0|     95|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |Medium   |            1|     65|   416|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High     |            0|    378|  2383|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High     |            1|     71|  2383|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low      |            0|   1002|  2383|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low      |            1|    268|  2383|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium   |            0|    538|  2383|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium   |            1|    126|  2383|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |High     |            0|    778| 13679|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |High     |            1|    220| 13679|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Low      |            0|   1647| 13679|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Low      |            1|    662| 13679|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Medium   |            0|   7744| 13679|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Medium   |            1|   2628| 13679|
|6-24 months |COHORTS        |GUATEMALA                    |High     |            0|     33|   831|
|6-24 months |COHORTS        |GUATEMALA                    |High     |            1|    119|   831|
|6-24 months |COHORTS        |GUATEMALA                    |Low      |            0|     84|   831|
|6-24 months |COHORTS        |GUATEMALA                    |Low      |            1|    293|   831|
|6-24 months |COHORTS        |GUATEMALA                    |Medium   |            0|     81|   831|
|6-24 months |COHORTS        |GUATEMALA                    |Medium   |            1|    221|   831|
|6-24 months |COHORTS        |INDIA                        |High     |            0|    388|  1179|
|6-24 months |COHORTS        |INDIA                        |High     |            1|     89|  1179|
|6-24 months |COHORTS        |INDIA                        |Low      |            0|    231|  1179|
|6-24 months |COHORTS        |INDIA                        |Low      |            1|    135|  1179|
|6-24 months |COHORTS        |INDIA                        |Medium   |            0|    246|  1179|
|6-24 months |COHORTS        |INDIA                        |Medium   |            1|     90|  1179|
|6-24 months |COHORTS        |PHILIPPINES                  |High     |            0|    368|  2007|
|6-24 months |COHORTS        |PHILIPPINES                  |High     |            1|    397|  2007|
|6-24 months |COHORTS        |PHILIPPINES                  |Low      |            0|    124|  2007|
|6-24 months |COHORTS        |PHILIPPINES                  |Low      |            1|    420|  2007|
|6-24 months |COHORTS        |PHILIPPINES                  |Medium   |            0|    214|  2007|
|6-24 months |COHORTS        |PHILIPPINES                  |Medium   |            1|    484|  2007|
|6-24 months |GMS-Nepal      |NEPAL                        |High     |            0|     58|   396|
|6-24 months |GMS-Nepal      |NEPAL                        |High     |            1|     46|   396|
|6-24 months |GMS-Nepal      |NEPAL                        |Low      |            0|     61|   396|
|6-24 months |GMS-Nepal      |NEPAL                        |Low      |            1|     97|   396|
|6-24 months |GMS-Nepal      |NEPAL                        |Medium   |            0|     53|   396|
|6-24 months |GMS-Nepal      |NEPAL                        |Medium   |            1|     81|   396|
|6-24 months |JiVitA-3       |BANGLADESH                   |High     |            0|   2577| 10116|
|6-24 months |JiVitA-3       |BANGLADESH                   |High     |            1|    496| 10116|
|6-24 months |JiVitA-3       |BANGLADESH                   |Low      |            0|   2748| 10116|
|6-24 months |JiVitA-3       |BANGLADESH                   |Low      |            1|    957| 10116|
|6-24 months |JiVitA-3       |BANGLADESH                   |Medium   |            0|   2614| 10116|
|6-24 months |JiVitA-3       |BANGLADESH                   |Medium   |            1|    724| 10116|
|6-24 months |JiVitA-4       |BANGLADESH                   |High     |            0|    632|  3544|
|6-24 months |JiVitA-4       |BANGLADESH                   |High     |            1|    278|  3544|
|6-24 months |JiVitA-4       |BANGLADESH                   |Low      |            0|    704|  3544|
|6-24 months |JiVitA-4       |BANGLADESH                   |Low      |            1|    538|  3544|
|6-24 months |JiVitA-4       |BANGLADESH                   |Medium   |            0|    865|  3544|
|6-24 months |JiVitA-4       |BANGLADESH                   |Medium   |            1|    527|  3544|
|6-24 months |LCNI-5         |MALAWI                       |High     |            0|     86|   707|
|6-24 months |LCNI-5         |MALAWI                       |High     |            1|    142|   707|
|6-24 months |LCNI-5         |MALAWI                       |Low      |            0|    105|   707|
|6-24 months |LCNI-5         |MALAWI                       |Low      |            1|    145|   707|
|6-24 months |LCNI-5         |MALAWI                       |Medium   |            0|     93|   707|
|6-24 months |LCNI-5         |MALAWI                       |Medium   |            1|    136|   707|
|6-24 months |MAL-ED         |BANGLADESH                   |High     |            0|     26|    88|
|6-24 months |MAL-ED         |BANGLADESH                   |High     |            1|      8|    88|
|6-24 months |MAL-ED         |BANGLADESH                   |Low      |            0|     13|    88|
|6-24 months |MAL-ED         |BANGLADESH                   |Low      |            1|     11|    88|
|6-24 months |MAL-ED         |BANGLADESH                   |Medium   |            0|     17|    88|
|6-24 months |MAL-ED         |BANGLADESH                   |Medium   |            1|     13|    88|
|6-24 months |MAL-ED         |INDIA                        |High     |            0|     16|    93|
|6-24 months |MAL-ED         |INDIA                        |High     |            1|     11|    93|
|6-24 months |MAL-ED         |INDIA                        |Low      |            0|     23|    93|
|6-24 months |MAL-ED         |INDIA                        |Low      |            1|     13|    93|
|6-24 months |MAL-ED         |INDIA                        |Medium   |            0|     16|    93|
|6-24 months |MAL-ED         |INDIA                        |Medium   |            1|     14|    93|
|6-24 months |MAL-ED         |NEPAL                        |High     |            0|     29|    78|
|6-24 months |MAL-ED         |NEPAL                        |High     |            1|      4|    78|
|6-24 months |MAL-ED         |NEPAL                        |Low      |            0|     16|    78|
|6-24 months |MAL-ED         |NEPAL                        |Low      |            1|      8|    78|
|6-24 months |MAL-ED         |NEPAL                        |Medium   |            0|     15|    78|
|6-24 months |MAL-ED         |NEPAL                        |Medium   |            1|      6|    78|
|6-24 months |MAL-ED         |PERU                         |High     |            0|     33|   121|
|6-24 months |MAL-ED         |PERU                         |High     |            1|     20|   121|
|6-24 months |MAL-ED         |PERU                         |Low      |            0|     20|   121|
|6-24 months |MAL-ED         |PERU                         |Low      |            1|     13|   121|
|6-24 months |MAL-ED         |PERU                         |Medium   |            0|     18|   121|
|6-24 months |MAL-ED         |PERU                         |Medium   |            1|     17|   121|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |High     |            0|     10|    58|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |High     |            1|      9|    58|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Low      |            0|     17|    58|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Low      |            1|     10|    58|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Medium   |            0|      6|    58|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Medium   |            1|      6|    58|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High     |            0|     17|   121|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High     |            1|     61|   121|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low      |            0|      7|   121|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low      |            1|     26|   121|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium   |            0|      3|   121|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium   |            1|      7|   121|
|6-24 months |NIH-Crypto     |BANGLADESH                   |High     |            0|    183|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |High     |            1|     34|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Low      |            0|    101|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Low      |            1|     55|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Medium   |            0|     89|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Medium   |            1|     44|   506|
|6-24 months |PROBIT         |BELARUS                      |High     |            0|   2390| 14975|
|6-24 months |PROBIT         |BELARUS                      |High     |            1|    113| 14975|
|6-24 months |PROBIT         |BELARUS                      |Low      |            0|   5392| 14975|
|6-24 months |PROBIT         |BELARUS                      |Low      |            1|    429| 14975|
|6-24 months |PROBIT         |BELARUS                      |Medium   |            0|   6236| 14975|
|6-24 months |PROBIT         |BELARUS                      |Medium   |            1|    415| 14975|
|6-24 months |PROVIDE        |BANGLADESH                   |High     |            0|    135|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |High     |            1|     38|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |Low      |            0|     88|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |Low      |            1|     51|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |Medium   |            0|     96|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |Medium   |            1|     48|   456|
|6-24 months |SAS-CompFeed   |INDIA                        |High     |            0|    149|   812|
|6-24 months |SAS-CompFeed   |INDIA                        |High     |            1|     96|   812|
|6-24 months |SAS-CompFeed   |INDIA                        |Low      |            0|    121|   812|
|6-24 months |SAS-CompFeed   |INDIA                        |Low      |            1|    173|   812|
|6-24 months |SAS-CompFeed   |INDIA                        |Medium   |            0|    134|   812|
|6-24 months |SAS-CompFeed   |INDIA                        |Medium   |            1|    139|   812|
|6-24 months |SAS-FoodSuppl  |INDIA                        |High     |            0|     19|   243|
|6-24 months |SAS-FoodSuppl  |INDIA                        |High     |            1|     49|   243|
|6-24 months |SAS-FoodSuppl  |INDIA                        |Low      |            0|     20|   243|
|6-24 months |SAS-FoodSuppl  |INDIA                        |Low      |            1|     63|   243|
|6-24 months |SAS-FoodSuppl  |INDIA                        |Medium   |            0|     20|   243|
|6-24 months |SAS-FoodSuppl  |INDIA                        |Medium   |            1|     72|   243|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High     |            0|    238|  1595|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High     |            1|     75|  1595|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low      |            0|    640|  1595|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low      |            1|    191|  1595|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium   |            0|    356|  1595|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium   |            1|     95|  1595|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |High     |            0|    483|  8280|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |High     |            1|    129|  8280|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Low      |            0|    948|  8280|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Low      |            1|    425|  8280|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Medium   |            0|   4695|  8280|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Medium   |            1|   1600|  8280|


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
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




# Results Detail

## Results Plots
![](/tmp/b3915207-2f8c-468e-840b-5ae4a1a4e020/5cb90488-5d8c-40bf-ab5d-bd667b9cd863/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b3915207-2f8c-468e-840b-5ae4a1a4e020/5cb90488-5d8c-40bf-ab5d-bd667b9cd863/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b3915207-2f8c-468e-840b-5ae4a1a4e020/5cb90488-5d8c-40bf-ab5d-bd667b9cd863/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b3915207-2f8c-468e-840b-5ae4a1a4e020/5cb90488-5d8c-40bf-ab5d-bd667b9cd863/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |High               |NA             | 0.7508058| 0.6958539| 0.8057578|
|0-24 months |COHORTS        |GUATEMALA                    |Low                |NA             | 0.7696583| 0.7354510| 0.8038656|
|0-24 months |COHORTS        |GUATEMALA                    |Medium             |NA             | 0.7627674| 0.7241928| 0.8013419|
|0-24 months |COHORTS        |INDIA                        |High               |NA             | 0.3253438| 0.2867167| 0.3639708|
|0-24 months |COHORTS        |INDIA                        |Low                |NA             | 0.4395413| 0.3964168| 0.4826659|
|0-24 months |COHORTS        |INDIA                        |Medium             |NA             | 0.3738097| 0.3290822| 0.4185371|
|0-24 months |COHORTS        |PHILIPPINES                  |High               |NA             | 0.6242363| 0.5924337| 0.6560389|
|0-24 months |COHORTS        |PHILIPPINES                  |Low                |NA             | 0.7815645| 0.7494312| 0.8136978|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium             |NA             | 0.7261267| 0.6966277| 0.7556258|
|0-24 months |GMS-Nepal      |NEPAL                        |High               |NA             | 0.5953654| 0.5299276| 0.6608031|
|0-24 months |GMS-Nepal      |NEPAL                        |Low                |NA             | 0.6704684| 0.6173559| 0.7235808|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium             |NA             | 0.6539160| 0.5837707| 0.7240614|
|0-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             | 0.5015500| 0.4845002| 0.5185997|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low                |NA             | 0.5082214| 0.4953341| 0.5211086|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium             |NA             | 0.4909308| 0.4793449| 0.5025168|
|0-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             | 0.5448231| 0.4965519| 0.5930943|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low                |NA             | 0.6166948| 0.5877022| 0.6456875|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium             |NA             | 0.5892523| 0.5632303| 0.6152744|
|0-24 months |LCNI-5         |MALAWI                       |High               |NA             | 0.6583273| 0.5999184| 0.7167362|
|0-24 months |LCNI-5         |MALAWI                       |Low                |NA             | 0.6167942| 0.5615629| 0.6720256|
|0-24 months |LCNI-5         |MALAWI                       |Medium             |NA             | 0.6420475| 0.5852937| 0.6988013|
|0-24 months |MAL-ED         |BANGLADESH                   |High               |NA             | 0.4706741| 0.3380561| 0.6032921|
|0-24 months |MAL-ED         |BANGLADESH                   |Low                |NA             | 0.5869286| 0.4330473| 0.7408098|
|0-24 months |MAL-ED         |BANGLADESH                   |Medium             |NA             | 0.6563840| 0.5295661| 0.7832019|
|0-24 months |MAL-ED         |INDIA                        |High               |NA             | 0.6245570| 0.4772783| 0.7718357|
|0-24 months |MAL-ED         |INDIA                        |Low                |NA             | 0.5342328| 0.4095186| 0.6589470|
|0-24 months |MAL-ED         |INDIA                        |Medium             |NA             | 0.6150168| 0.4679323| 0.7621013|
|0-24 months |MAL-ED         |NEPAL                        |High               |NA             | 0.2605476| 0.1180680| 0.4030273|
|0-24 months |MAL-ED         |NEPAL                        |Low                |NA             | 0.4084118| 0.2187987| 0.5980249|
|0-24 months |MAL-ED         |NEPAL                        |Medium             |NA             | 0.4213489| 0.2262594| 0.6164384|
|0-24 months |MAL-ED         |PERU                         |High               |NA             | 0.6267816| 0.5395753| 0.7139878|
|0-24 months |MAL-ED         |PERU                         |Low                |NA             | 0.5941279| 0.4743909| 0.7138650|
|0-24 months |MAL-ED         |PERU                         |Medium             |NA             | 0.6662164| 0.5453531| 0.7870798|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High               |NA             | 0.6784516| 0.5345255| 0.8223777|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Low                |NA             | 0.5214908| 0.3562707| 0.6867108|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Medium             |NA             | 0.6683542| 0.4924290| 0.8442794|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High               |NA             | 0.3878597| 0.3359364| 0.4397831|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low                |NA             | 0.5342400| 0.4727846| 0.5956954|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Medium             |NA             | 0.5488357| 0.4799413| 0.6177302|
|0-24 months |PROBIT         |BELARUS                      |High               |NA             | 0.1058392| 0.0848642| 0.1268142|
|0-24 months |PROBIT         |BELARUS                      |Low                |NA             | 0.1312199| 0.1101026| 0.1523372|
|0-24 months |PROBIT         |BELARUS                      |Medium             |NA             | 0.1204694| 0.1046550| 0.1362838|
|0-24 months |PROVIDE        |BANGLADESH                   |High               |NA             | 0.4088890| 0.3485721| 0.4692058|
|0-24 months |PROVIDE        |BANGLADESH                   |Low                |NA             | 0.4876369| 0.4260820| 0.5491918|
|0-24 months |PROVIDE        |BANGLADESH                   |Medium             |NA             | 0.4060093| 0.3407772| 0.4712414|
|0-24 months |SAS-CompFeed   |INDIA                        |High               |NA             | 0.6820562| 0.6199086| 0.7442037|
|0-24 months |SAS-CompFeed   |INDIA                        |Low                |NA             | 0.7024195| 0.6426254| 0.7622135|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium             |NA             | 0.6987790| 0.6505115| 0.7470465|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High               |NA             | 0.7942362| 0.7208061| 0.8676663|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Low                |NA             | 0.8106145| 0.7488295| 0.8723996|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Medium             |NA             | 0.8557299| 0.8010313| 0.9104285|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             | 0.3104364| 0.2559688| 0.3649040|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low                |NA             | 0.3358784| 0.3082916| 0.3634652|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium             |NA             | 0.3400205| 0.2942801| 0.3857609|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             | 0.3984518| 0.3678697| 0.4290340|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low                |NA             | 0.4603650| 0.4350254| 0.4857045|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium             |NA             | 0.4127701| 0.4029663| 0.4225739|
|0-6 months  |COHORTS        |GUATEMALA                    |High               |NA             | 0.2997616| 0.2372262| 0.3622970|
|0-6 months  |COHORTS        |GUATEMALA                    |Low                |NA             | 0.3091594| 0.2681050| 0.3502139|
|0-6 months  |COHORTS        |GUATEMALA                    |Medium             |NA             | 0.3458134| 0.2968528| 0.3947740|
|0-6 months  |COHORTS        |INDIA                        |High               |NA             | 0.1410966| 0.1161665| 0.1660267|
|0-6 months  |COHORTS        |INDIA                        |Low                |NA             | 0.1805426| 0.1481269| 0.2129583|
|0-6 months  |COHORTS        |INDIA                        |Medium             |NA             | 0.1571930| 0.1267441| 0.1876419|
|0-6 months  |COHORTS        |PHILIPPINES                  |High               |NA             | 0.2119010| 0.1843226| 0.2394794|
|0-6 months  |COHORTS        |PHILIPPINES                  |Low                |NA             | 0.2567110| 0.2268642| 0.2865577|
|0-6 months  |COHORTS        |PHILIPPINES                  |Medium             |NA             | 0.2553070| 0.2284943| 0.2821197|
|0-6 months  |GMS-Nepal      |NEPAL                        |High               |NA             | 0.3461400| 0.2799396| 0.4123404|
|0-6 months  |GMS-Nepal      |NEPAL                        |Low                |NA             | 0.3325871| 0.2808126| 0.3843616|
|0-6 months  |GMS-Nepal      |NEPAL                        |Medium             |NA             | 0.3126717| 0.2513003| 0.3740432|
|0-6 months  |JiVitA-3       |BANGLADESH                   |High               |NA             | 0.4123536| 0.3980565| 0.4266507|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Low                |NA             | 0.4130246| 0.4013380| 0.4247112|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Medium             |NA             | 0.4099946| 0.3995401| 0.4204492|
|0-6 months  |JiVitA-4       |BANGLADESH                   |High               |NA             | 0.3255734| 0.2898395| 0.3613073|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Low                |NA             | 0.3533340| 0.3242049| 0.3824631|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Medium             |NA             | 0.3536877| 0.3298772| 0.3774982|
|0-6 months  |LCNI-5         |MALAWI                       |High               |NA             | 0.2685217| 0.1649521| 0.3720914|
|0-6 months  |LCNI-5         |MALAWI                       |Low                |NA             | 0.3668270| 0.2727671| 0.4608868|
|0-6 months  |LCNI-5         |MALAWI                       |Medium             |NA             | 0.4182399| 0.3152345| 0.5212454|
|0-6 months  |MAL-ED         |BANGLADESH                   |High               |NA             | 0.3007658| 0.1835858| 0.4179457|
|0-6 months  |MAL-ED         |BANGLADESH                   |Low                |NA             | 0.3229406| 0.1691884| 0.4766928|
|0-6 months  |MAL-ED         |BANGLADESH                   |Medium             |NA             | 0.4315160| 0.3004012| 0.5626307|
|0-6 months  |MAL-ED         |INDIA                        |High               |NA             | 0.3270798| 0.1825839| 0.4715756|
|0-6 months  |MAL-ED         |INDIA                        |Low                |NA             | 0.3161641| 0.2000728| 0.4322555|
|0-6 months  |MAL-ED         |INDIA                        |Medium             |NA             | 0.2971213| 0.1632428| 0.4309997|
|0-6 months  |MAL-ED         |PERU                         |High               |NA             | 0.4557731| 0.3665106| 0.5450356|
|0-6 months  |MAL-ED         |PERU                         |Low                |NA             | 0.4052502| 0.2845514| 0.5259491|
|0-6 months  |MAL-ED         |PERU                         |Medium             |NA             | 0.3946146| 0.2666466| 0.5225826|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |High               |NA             | 0.4651163| 0.3153523| 0.6148803|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Low                |NA             | 0.2432432| 0.1043667| 0.3821198|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Medium             |NA             | 0.4666667| 0.2873283| 0.6460051|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High               |NA             | 0.3837840| 0.2994699| 0.4680981|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low                |NA             | 0.4130295| 0.2849923| 0.5410668|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium             |NA             | 0.5172053| 0.2928202| 0.7415904|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |High               |NA             | 0.2672326| 0.2192278| 0.3152374|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Low                |NA             | 0.3178021| 0.2643385| 0.3712657|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Medium             |NA             | 0.3226020| 0.2635841| 0.3816200|
|0-6 months  |PROBIT         |BELARUS                      |High               |NA             | 0.0585858| 0.0406971| 0.0764745|
|0-6 months  |PROBIT         |BELARUS                      |Low                |NA             | 0.0721803| 0.0561983| 0.0881624|
|0-6 months  |PROBIT         |BELARUS                      |Medium             |NA             | 0.0609194| 0.0500121| 0.0718266|
|0-6 months  |PROVIDE        |BANGLADESH                   |High               |NA             | 0.2044836| 0.1589265| 0.2500407|
|0-6 months  |PROVIDE        |BANGLADESH                   |Low                |NA             | 0.2766790| 0.2253218| 0.3280362|
|0-6 months  |PROVIDE        |BANGLADESH                   |Medium             |NA             | 0.2266634| 0.1783132| 0.2750136|
|0-6 months  |SAS-CompFeed   |INDIA                        |High               |NA             | 0.4304305| 0.3789330| 0.4819279|
|0-6 months  |SAS-CompFeed   |INDIA                        |Low                |NA             | 0.4418545| 0.4003335| 0.4833755|
|0-6 months  |SAS-CompFeed   |INDIA                        |Medium             |NA             | 0.4085413| 0.3596417| 0.4574410|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |High               |NA             | 0.3613244| 0.2696909| 0.4529580|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |Low                |NA             | 0.4007467| 0.3213548| 0.4801386|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |Medium             |NA             | 0.4174111| 0.3410127| 0.4938095|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             | 0.1614922| 0.1263691| 0.1966153|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low                |NA             | 0.2066865| 0.1847770| 0.2285960|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium             |NA             | 0.1967546| 0.1655886| 0.2279207|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |High               |NA             | 0.2334550| 0.2102581| 0.2566519|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Low                |NA             | 0.2650961| 0.2443364| 0.2858557|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Medium             |NA             | 0.2589988| 0.2504587| 0.2675389|
|6-24 months |COHORTS        |GUATEMALA                    |High               |NA             | 0.7736816| 0.7085855| 0.8387776|
|6-24 months |COHORTS        |GUATEMALA                    |Low                |NA             | 0.7714735| 0.7298642| 0.8130828|
|6-24 months |COHORTS        |GUATEMALA                    |Medium             |NA             | 0.7460487| 0.6975537| 0.7945436|
|6-24 months |COHORTS        |INDIA                        |High               |NA             | 0.2098741| 0.1701213| 0.2496268|
|6-24 months |COHORTS        |INDIA                        |Low                |NA             | 0.3191797| 0.2698274| 0.3685321|
|6-24 months |COHORTS        |INDIA                        |Medium             |NA             | 0.2719986| 0.2222716| 0.3217257|
|6-24 months |COHORTS        |PHILIPPINES                  |High               |NA             | 0.5751957| 0.5364069| 0.6139844|
|6-24 months |COHORTS        |PHILIPPINES                  |Low                |NA             | 0.7621226| 0.7230925| 0.8011526|
|6-24 months |COHORTS        |PHILIPPINES                  |Medium             |NA             | 0.6700683| 0.6310736| 0.7090629|
|6-24 months |GMS-Nepal      |NEPAL                        |High               |NA             | 0.4774006| 0.3725934| 0.5822078|
|6-24 months |GMS-Nepal      |NEPAL                        |Low                |NA             | 0.5988996| 0.5231910| 0.6746082|
|6-24 months |GMS-Nepal      |NEPAL                        |Medium             |NA             | 0.6084617| 0.5120488| 0.7048746|
|6-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             | 0.2200838| 0.1922972| 0.2478704|
|6-24 months |JiVitA-3       |BANGLADESH                   |Low                |NA             | 0.2427277| 0.2237684| 0.2616870|
|6-24 months |JiVitA-3       |BANGLADESH                   |Medium             |NA             | 0.2129669| 0.1942178| 0.2317159|
|6-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             | 0.3460715| 0.2921462| 0.3999969|
|6-24 months |JiVitA-4       |BANGLADESH                   |Low                |NA             | 0.4234692| 0.3818329| 0.4651055|
|6-24 months |JiVitA-4       |BANGLADESH                   |Medium             |NA             | 0.3834283| 0.3511198| 0.4157368|
|6-24 months |LCNI-5         |MALAWI                       |High               |NA             | 0.6345479| 0.5721315| 0.6969642|
|6-24 months |LCNI-5         |MALAWI                       |Low                |NA             | 0.5786731| 0.5176351| 0.6397110|
|6-24 months |LCNI-5         |MALAWI                       |Medium             |NA             | 0.5937110| 0.5302248| 0.6571972|
|6-24 months |MAL-ED         |BANGLADESH                   |High               |NA             | 0.2352941| 0.0918961| 0.3786921|
|6-24 months |MAL-ED         |BANGLADESH                   |Low                |NA             | 0.4583333| 0.2578488| 0.6588179|
|6-24 months |MAL-ED         |BANGLADESH                   |Medium             |NA             | 0.4333333| 0.2549953| 0.6116714|
|6-24 months |MAL-ED         |INDIA                        |High               |NA             | 0.4334185| 0.2339717| 0.6328654|
|6-24 months |MAL-ED         |INDIA                        |Low                |NA             | 0.3532856| 0.1892032| 0.5173680|
|6-24 months |MAL-ED         |INDIA                        |Medium             |NA             | 0.4563258| 0.2658597| 0.6467919|
|6-24 months |MAL-ED         |PERU                         |High               |NA             | 0.3747848| 0.2435842| 0.5059853|
|6-24 months |MAL-ED         |PERU                         |Low                |NA             | 0.3923974| 0.2218849| 0.5629099|
|6-24 months |MAL-ED         |PERU                         |Medium             |NA             | 0.4769138| 0.3070832| 0.6467444|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |High               |NA             | 0.4736842| 0.2472117| 0.7001567|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Low                |NA             | 0.3703704| 0.1866305| 0.5541103|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Medium             |NA             | 0.5000000| 0.2146328| 0.7853672|
|6-24 months |NIH-Crypto     |BANGLADESH                   |High               |NA             | 0.1620059| 0.1135463| 0.2104654|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Low                |NA             | 0.3448688| 0.2701265| 0.4196111|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Medium             |NA             | 0.3307588| 0.2505805| 0.4109370|
|6-24 months |PROBIT         |BELARUS                      |High               |NA             | 0.0503232| 0.0346911| 0.0659553|
|6-24 months |PROBIT         |BELARUS                      |Low                |NA             | 0.0666582| 0.0508693| 0.0824471|
|6-24 months |PROBIT         |BELARUS                      |Medium             |NA             | 0.0631968| 0.0524555| 0.0739381|
|6-24 months |PROVIDE        |BANGLADESH                   |High               |NA             | 0.2415802| 0.1812545| 0.3019059|
|6-24 months |PROVIDE        |BANGLADESH                   |Low                |NA             | 0.3538032| 0.2743764| 0.4332300|
|6-24 months |PROVIDE        |BANGLADESH                   |Medium             |NA             | 0.3096108| 0.2342151| 0.3850064|
|6-24 months |SAS-CompFeed   |INDIA                        |High               |NA             | 0.4342468| 0.3489987| 0.5194950|
|6-24 months |SAS-CompFeed   |INDIA                        |Low                |NA             | 0.5418708| 0.4495993| 0.6341422|
|6-24 months |SAS-CompFeed   |INDIA                        |Medium             |NA             | 0.5087550| 0.4398284| 0.5776815|
|6-24 months |SAS-FoodSuppl  |INDIA                        |High               |NA             | 0.7251569| 0.6171963| 0.8331175|
|6-24 months |SAS-FoodSuppl  |INDIA                        |Low                |NA             | 0.7671494| 0.6738549| 0.8604440|
|6-24 months |SAS-FoodSuppl  |INDIA                        |Medium             |NA             | 0.7951705| 0.7100263| 0.8803148|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             | 0.2519158| 0.2016876| 0.3021440|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low                |NA             | 0.2167848| 0.1890816| 0.2444880|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium             |NA             | 0.2208218| 0.1798447| 0.2617989|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             | 0.2479088| 0.2050438| 0.2907739|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Low                |NA             | 0.3137936| 0.2823660| 0.3452211|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Medium             |NA             | 0.2593757| 0.2478620| 0.2708893|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.7672000| 0.7437624| 0.7906376|
|0-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.3780235| 0.3530310| 0.4030160|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.6899306| 0.6730355| 0.7068256|
|0-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.6408046| 0.6051362| 0.6764730|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.4931575| 0.4852626| 0.5010523|
|0-24 months |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.5820697| 0.5655159| 0.5986236|
|0-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.6371464| 0.6040748| 0.6702180|
|0-24 months |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.5637584| 0.4838620| 0.6436548|
|0-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.5714286| 0.4911565| 0.6517006|
|0-24 months |MAL-ED         |NEPAL                        |NA                 |NA             | 0.3571429| 0.2617885| 0.4524972|
|0-24 months |MAL-ED         |PERU                         |NA                 |NA             | 0.6280000| 0.5679657| 0.6880343|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.6181818| 0.5269763| 0.7093874|
|0-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.4775726| 0.4419904| 0.5131548|
|0-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.1247395| 0.1090645| 0.1404144|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.4357143| 0.3989556| 0.4724730|
|0-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.6908497| 0.6505448| 0.7311545|
|0-24 months |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.8277512| 0.7915095| 0.8639929|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.3466219| 0.3275107| 0.3657331|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.4136118| 0.4053631| 0.4218605|
|0-6 months  |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.3196078| 0.2909760| 0.3482397|
|0-6 months  |COHORTS        |INDIA                        |NA                 |NA             | 0.1639690| 0.1447117| 0.1832264|
|0-6 months  |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.2381944| 0.2226342| 0.2537546|
|0-6 months  |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.3189655| 0.2843148| 0.3536162|
|0-6 months  |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.4111421| 0.4035964| 0.4186878|
|0-6 months  |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.3469880| 0.3313196| 0.3626563|
|0-6 months  |LCNI-5         |MALAWI                       |NA                 |NA             | 0.3558052| 0.2982716| 0.4133389|
|0-6 months  |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.3489933| 0.2722008| 0.4257857|
|0-6 months  |MAL-ED         |INDIA                        |NA                 |NA             | 0.3129252| 0.2377120| 0.3881383|
|0-6 months  |MAL-ED         |PERU                         |NA                 |NA             | 0.4280000| 0.3665434| 0.4894566|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.3909091| 0.2993052| 0.4825130|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.4056604| 0.3394074| 0.4719134|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.3021108| 0.2694011| 0.3348205|
|0-6 months  |PROBIT         |BELARUS                      |NA                 |NA             | 0.0660985| 0.0554258| 0.0767711|
|0-6 months  |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.2400000| 0.2083392| 0.2716608|
|0-6 months  |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.4250164| 0.3969651| 0.4530677|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.3894231| 0.3425088| 0.4363374|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1951322| 0.1792173| 0.2110471|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.2565977| 0.2492783| 0.2639171|
|6-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.7617329| 0.7327499| 0.7907158|
|6-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.2663274| 0.2410848| 0.2915700|
|6-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.6482312| 0.6273346| 0.6691278|
|6-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.5656566| 0.5167753| 0.6145378|
|6-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.2152036| 0.2057612| 0.2246461|
|6-24 months |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.3789503| 0.3597979| 0.3981028|
|6-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.5983027| 0.5621404| 0.6344650|
|6-24 months |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.3636364| 0.2625541| 0.4647186|
|6-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.4086022| 0.3081534| 0.5090509|
|6-24 months |MAL-ED         |PERU                         |NA                 |NA             | 0.4132231| 0.3251210| 0.5013252|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.4310345| 0.3024734| 0.5595956|
|6-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.2628458| 0.2244546| 0.3012371|
|6-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.0639065| 0.0521855| 0.0756275|
|6-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.3004386| 0.2583143| 0.3425629|
|6-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.5024631| 0.4586872| 0.5462389|
|6-24 months |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.7572016| 0.7031798| 0.8112234|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.2263323| 0.2057897| 0.2468748|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.2601449| 0.2506947| 0.2695951|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |COHORTS        |GUATEMALA                    |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |GUATEMALA                    |Low                |High           | 1.0251097| 0.9421568| 1.115366|
|0-24 months |COHORTS        |GUATEMALA                    |Medium             |High           | 1.0159316| 0.9309144| 1.108713|
|0-24 months |COHORTS        |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |INDIA                        |Low                |High           | 1.3510059| 1.1664808| 1.564721|
|0-24 months |COHORTS        |INDIA                        |Medium             |High           | 1.1489683| 0.9797013| 1.347480|
|0-24 months |COHORTS        |PHILIPPINES                  |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |PHILIPPINES                  |Low                |High           | 1.2520331| 1.1735925| 1.335716|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium             |High           | 1.1632242| 1.0914729| 1.239692|
|0-24 months |GMS-Nepal      |NEPAL                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |GMS-Nepal      |NEPAL                        |Low                |High           | 1.1261461| 0.9884817| 1.282983|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium             |High           | 1.0983441| 0.9460263| 1.275186|
|0-24 months |JiVitA-3       |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low                |High           | 1.0133016| 0.9750445| 1.053060|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium             |High           | 0.9788273| 0.9430445| 1.015968|
|0-24 months |JiVitA-4       |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low                |High           | 1.1319176| 1.0270216| 1.247527|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium             |High           | 1.0815481| 0.9824085| 1.190692|
|0-24 months |LCNI-5         |MALAWI                       |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |LCNI-5         |MALAWI                       |Low                |High           | 0.9369112| 0.8270727| 1.061337|
|0-24 months |LCNI-5         |MALAWI                       |Medium             |High           | 0.9752710| 0.8618168| 1.103661|
|0-24 months |MAL-ED         |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |BANGLADESH                   |Low                |High           | 1.2469957| 0.8553891| 1.817884|
|0-24 months |MAL-ED         |BANGLADESH                   |Medium             |High           | 1.3945615| 0.9949895| 1.954595|
|0-24 months |MAL-ED         |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |INDIA                        |Low                |High           | 0.8553788| 0.6146397| 1.190409|
|0-24 months |MAL-ED         |INDIA                        |Medium             |High           | 0.9847249| 0.7048381| 1.375753|
|0-24 months |MAL-ED         |NEPAL                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |NEPAL                        |Low                |High           | 1.5675130| 0.7669643| 3.203665|
|0-24 months |MAL-ED         |NEPAL                        |Medium             |High           | 1.6171663| 0.7934890| 3.295858|
|0-24 months |MAL-ED         |PERU                         |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |PERU                         |Low                |High           | 0.9479027| 0.7424222| 1.210254|
|0-24 months |MAL-ED         |PERU                         |Medium             |High           | 1.0629164| 0.8461220| 1.335258|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Low                |High           | 0.7686485| 0.5248520| 1.125690|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Medium             |High           | 0.9851170| 0.7022841| 1.381856|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low                |High           | 1.3774051| 1.1657846| 1.627440|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Medium             |High           | 1.4150366| 1.1895296| 1.683294|
|0-24 months |PROBIT         |BELARUS                      |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROBIT         |BELARUS                      |Low                |High           | 1.2398047| 1.0095470| 1.522580|
|0-24 months |PROBIT         |BELARUS                      |Medium             |High           | 1.1382306| 0.9424236| 1.374720|
|0-24 months |PROVIDE        |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROVIDE        |BANGLADESH                   |Low                |High           | 1.1925900| 0.9904267| 1.436018|
|0-24 months |PROVIDE        |BANGLADESH                   |Medium             |High           | 0.9929573| 0.8046471| 1.225337|
|0-24 months |SAS-CompFeed   |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-CompFeed   |INDIA                        |Low                |High           | 1.0298558| 0.9107461| 1.164543|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium             |High           | 1.0245182| 0.9133531| 1.149214|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Low                |High           | 1.0206215| 0.9062479| 1.149430|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Medium             |High           | 1.0774250| 0.9636042| 1.204690|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low                |High           | 1.0819557| 0.8925057| 1.311620|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium             |High           | 1.0952985| 0.8791023| 1.364664|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low                |High           | 1.1553843| 1.0521845| 1.268706|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium             |High           | 1.0359347| 0.9571260| 1.121233|
|0-6 months  |COHORTS        |GUATEMALA                    |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |COHORTS        |GUATEMALA                    |Low                |High           | 1.0313511| 0.8138582| 1.306966|
|0-6 months  |COHORTS        |GUATEMALA                    |Medium             |High           | 1.1536282| 0.9050829| 1.470427|
|0-6 months  |COHORTS        |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |COHORTS        |INDIA                        |Low                |High           | 1.2795675| 1.0241320| 1.598713|
|0-6 months  |COHORTS        |INDIA                        |Medium             |High           | 1.1140809| 0.8862512| 1.400479|
|0-6 months  |COHORTS        |PHILIPPINES                  |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |COHORTS        |PHILIPPINES                  |Low                |High           | 1.2114665| 1.0254008| 1.431295|
|0-6 months  |COHORTS        |PHILIPPINES                  |Medium             |High           | 1.2048410| 1.0276398| 1.412598|
|0-6 months  |GMS-Nepal      |NEPAL                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |GMS-Nepal      |NEPAL                        |Low                |High           | 0.9608457| 0.7649815| 1.206859|
|0-6 months  |GMS-Nepal      |NEPAL                        |Medium             |High           | 0.9033102| 0.6982012| 1.168673|
|0-6 months  |JiVitA-3       |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Low                |High           | 1.0016272| 0.9625632| 1.042277|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Medium             |High           | 0.9942792| 0.9583157| 1.031592|
|0-6 months  |JiVitA-4       |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Low                |High           | 1.0852670| 0.9483773| 1.241915|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Medium             |High           | 1.0863531| 0.9615147| 1.227400|
|0-6 months  |LCNI-5         |MALAWI                       |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |LCNI-5         |MALAWI                       |Low                |High           | 1.3660978| 0.8593622| 2.171638|
|0-6 months  |LCNI-5         |MALAWI                       |Medium             |High           | 1.5575645| 0.9877813| 2.456017|
|0-6 months  |MAL-ED         |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |MAL-ED         |BANGLADESH                   |Low                |High           | 1.0737278| 0.5840199| 1.974062|
|0-6 months  |MAL-ED         |BANGLADESH                   |Medium             |High           | 1.4347242| 0.8733788| 2.356862|
|0-6 months  |MAL-ED         |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |MAL-ED         |INDIA                        |Low                |High           | 0.9666270| 0.5487254| 1.702796|
|0-6 months  |MAL-ED         |INDIA                        |Medium             |High           | 0.9084061| 0.4854853| 1.699746|
|0-6 months  |MAL-ED         |PERU                         |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |MAL-ED         |PERU                         |Low                |High           | 0.8891491| 0.6221895| 1.270652|
|0-6 months  |MAL-ED         |PERU                         |Medium             |High           | 0.8658137| 0.5927162| 1.264743|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Low                |High           | 0.5229730| 0.2715250| 1.007276|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Medium             |High           | 1.0033333| 0.6077246| 1.656470|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low                |High           | 1.0762031| 0.7354715| 1.574790|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium             |High           | 1.3476468| 0.8280842| 2.193197|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Low                |High           | 1.1892341| 0.9501152| 1.488533|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Medium             |High           | 1.2071957| 0.9540657| 1.527485|
|0-6 months  |PROBIT         |BELARUS                      |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |PROBIT         |BELARUS                      |Low                |High           | 1.2320448| 0.8769670| 1.730891|
|0-6 months  |PROBIT         |BELARUS                      |Medium             |High           | 1.0398312| 0.7770303| 1.391514|
|0-6 months  |PROVIDE        |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |PROVIDE        |BANGLADESH                   |Low                |High           | 1.3530619| 1.0368778| 1.765663|
|0-6 months  |PROVIDE        |BANGLADESH                   |Medium             |High           | 1.1084673| 0.8336037| 1.473961|
|0-6 months  |SAS-CompFeed   |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |SAS-CompFeed   |INDIA                        |Low                |High           | 1.0265410| 0.8652078| 1.217958|
|0-6 months  |SAS-CompFeed   |INDIA                        |Medium             |High           | 0.9491460| 0.8617844| 1.045364|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |Low                |High           | 1.1091049| 0.8049866| 1.528117|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |Medium             |High           | 1.1552253| 0.8475189| 1.574650|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low                |High           | 1.2798547| 1.0077486| 1.625433|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium             |High           | 1.2183538| 0.9331391| 1.590745|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Low                |High           | 1.1355340| 1.0031330| 1.285410|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Medium             |High           | 1.1094165| 1.0023777| 1.227885|
|6-24 months |COHORTS        |GUATEMALA                    |High               |High           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |COHORTS        |GUATEMALA                    |Low                |High           | 0.9971461| 0.9028794| 1.101255|
|6-24 months |COHORTS        |GUATEMALA                    |Medium             |High           | 0.9642839| 0.8680390| 1.071200|
|6-24 months |COHORTS        |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |COHORTS        |INDIA                        |Low                |High           | 1.5208157| 1.1937049| 1.937565|
|6-24 months |COHORTS        |INDIA                        |Medium             |High           | 1.2960089| 0.9997148| 1.680118|
|6-24 months |COHORTS        |PHILIPPINES                  |High               |High           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |COHORTS        |PHILIPPINES                  |Low                |High           | 1.3249797| 1.2180403| 1.441308|
|6-24 months |COHORTS        |PHILIPPINES                  |Medium             |High           | 1.1649397| 1.0671132| 1.271734|
|6-24 months |GMS-Nepal      |NEPAL                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |GMS-Nepal      |NEPAL                        |Low                |High           | 1.2545011| 0.9758609| 1.612702|
|6-24 months |GMS-Nepal      |NEPAL                        |Medium             |High           | 1.2745307| 0.9730005| 1.669504|
|6-24 months |JiVitA-3       |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |JiVitA-3       |BANGLADESH                   |Low                |High           | 1.1028876| 0.9512728| 1.278667|
|6-24 months |JiVitA-3       |BANGLADESH                   |Medium             |High           | 0.9676627| 0.8303467| 1.127687|
|6-24 months |JiVitA-4       |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |JiVitA-4       |BANGLADESH                   |Low                |High           | 1.2236466| 1.0191338| 1.469200|
|6-24 months |JiVitA-4       |BANGLADESH                   |Medium             |High           | 1.1079453| 0.9346868| 1.313320|
|6-24 months |LCNI-5         |MALAWI                       |High               |High           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |LCNI-5         |MALAWI                       |Low                |High           | 0.9119455| 0.7903643| 1.052229|
|6-24 months |LCNI-5         |MALAWI                       |Medium             |High           | 0.9356442| 0.8103517| 1.080309|
|6-24 months |MAL-ED         |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |MAL-ED         |BANGLADESH                   |Low                |High           | 1.9479167| 0.9199737| 4.124443|
|6-24 months |MAL-ED         |BANGLADESH                   |Medium             |High           | 1.8416667| 0.8827489| 3.842244|
|6-24 months |MAL-ED         |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |MAL-ED         |INDIA                        |Low                |High           | 0.8151143| 0.4234980| 1.568865|
|6-24 months |MAL-ED         |INDIA                        |Medium             |High           | 1.0528526| 0.5652450| 1.961094|
|6-24 months |MAL-ED         |PERU                         |High               |High           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |MAL-ED         |PERU                         |Low                |High           | 1.0469939| 0.6018714| 1.821313|
|6-24 months |MAL-ED         |PERU                         |Medium             |High           | 1.2725005| 0.7765296| 2.085249|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |High               |High           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Low                |High           | 0.7818930| 0.3925769| 1.557291|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Medium             |High           | 1.0555556| 0.5013438| 2.222422|
|6-24 months |NIH-Crypto     |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Low                |High           | 2.1287427| 1.4726661| 3.077103|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Medium             |High           | 2.0416471| 1.3915793| 2.995390|
|6-24 months |PROBIT         |BELARUS                      |High               |High           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |PROBIT         |BELARUS                      |Low                |High           | 1.3246012| 0.9393544| 1.867845|
|6-24 months |PROBIT         |BELARUS                      |Medium             |High           | 1.2558186| 0.9549001| 1.651566|
|6-24 months |PROVIDE        |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |PROVIDE        |BANGLADESH                   |Low                |High           | 1.4645372| 1.0524564| 2.037965|
|6-24 months |PROVIDE        |BANGLADESH                   |Medium             |High           | 1.2816066| 0.9098302| 1.805299|
|6-24 months |SAS-CompFeed   |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |SAS-CompFeed   |INDIA                        |Low                |High           | 1.2478404| 0.9453870| 1.647056|
|6-24 months |SAS-CompFeed   |INDIA                        |Medium             |High           | 1.1715801| 0.9051447| 1.516443|
|6-24 months |SAS-FoodSuppl  |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |SAS-FoodSuppl  |INDIA                        |Low                |High           | 1.0579082| 0.8732993| 1.281542|
|6-24 months |SAS-FoodSuppl  |INDIA                        |Medium             |High           | 1.0965496| 0.9130886| 1.316872|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |High           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low                |High           | 0.8605446| 0.6795293| 1.089779|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium             |High           | 0.8765697| 0.6680945| 1.150098|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |High               |High           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Low                |High           | 1.2657621| 1.0366039| 1.545580|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Medium             |High           | 1.0462543| 0.8753331| 1.250550|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |High               |NA             |  0.0163942| -0.0328034| 0.0655918|
|0-24 months |COHORTS        |INDIA                        |High               |NA             |  0.0526797|  0.0217260| 0.0836335|
|0-24 months |COHORTS        |PHILIPPINES                  |High               |NA             |  0.0656943|  0.0395344| 0.0918542|
|0-24 months |GMS-Nepal      |NEPAL                        |High               |NA             |  0.0454392| -0.0108412| 0.1017197|
|0-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             | -0.0083925| -0.0238400| 0.0070551|
|0-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             |  0.0372467| -0.0069664| 0.0814597|
|0-24 months |LCNI-5         |MALAWI                       |High               |NA             | -0.0211809| -0.0697931| 0.0274313|
|0-24 months |MAL-ED         |BANGLADESH                   |High               |NA             |  0.0930843| -0.0121331| 0.1983016|
|0-24 months |MAL-ED         |INDIA                        |High               |NA             | -0.0531284| -0.1770151| 0.0707583|
|0-24 months |MAL-ED         |NEPAL                        |High               |NA             |  0.0965952| -0.0206228| 0.2138132|
|0-24 months |MAL-ED         |PERU                         |High               |NA             |  0.0012184| -0.0614674| 0.0639043|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High               |NA             | -0.0602698| -0.1754108| 0.0548713|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High               |NA             |  0.0897128|  0.0484193| 0.1310063|
|0-24 months |PROBIT         |BELARUS                      |High               |NA             |  0.0189003|  0.0006627| 0.0371379|
|0-24 months |PROVIDE        |BANGLADESH                   |High               |NA             |  0.0268253| -0.0228625| 0.0765132|
|0-24 months |SAS-CompFeed   |INDIA                        |High               |NA             |  0.0087935| -0.0488661| 0.0664531|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High               |NA             |  0.0335150| -0.0279419| 0.0949720|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             |  0.0361855| -0.0156184| 0.0879895|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             |  0.0151600| -0.0144395| 0.0447595|
|0-6 months  |COHORTS        |GUATEMALA                    |High               |NA             |  0.0198463| -0.0363385| 0.0760310|
|0-6 months  |COHORTS        |INDIA                        |High               |NA             |  0.0228725|  0.0043465| 0.0413985|
|0-6 months  |COHORTS        |PHILIPPINES                  |High               |NA             |  0.0262935|  0.0024653| 0.0501216|
|0-6 months  |GMS-Nepal      |NEPAL                        |High               |NA             | -0.0271744| -0.0830811| 0.0287322|
|0-6 months  |JiVitA-3       |BANGLADESH                   |High               |NA             | -0.0012115| -0.0137348| 0.0113118|
|0-6 months  |JiVitA-4       |BANGLADESH                   |High               |NA             |  0.0214146| -0.0108995| 0.0537286|
|0-6 months  |LCNI-5         |MALAWI                       |High               |NA             |  0.0872835| -0.0038153| 0.1783823|
|0-6 months  |MAL-ED         |BANGLADESH                   |High               |NA             |  0.0482275| -0.0495854| 0.1460404|
|0-6 months  |MAL-ED         |INDIA                        |High               |NA             | -0.0141546| -0.1327074| 0.1043982|
|0-6 months  |MAL-ED         |PERU                         |High               |NA             | -0.0277731| -0.0920753| 0.0365291|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |High               |NA             | -0.0742072| -0.1894674| 0.0410531|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High               |NA             |  0.0218764| -0.0317960| 0.0755487|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |High               |NA             |  0.0348782| -0.0025439| 0.0723003|
|0-6 months  |PROBIT         |BELARUS                      |High               |NA             |  0.0075127| -0.0088775| 0.0239028|
|0-6 months  |PROVIDE        |BANGLADESH                   |High               |NA             |  0.0355164| -0.0007308| 0.0717636|
|0-6 months  |SAS-CompFeed   |INDIA                        |High               |NA             | -0.0054141| -0.0454963| 0.0346682|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |High               |NA             |  0.0280986| -0.0512599| 0.1074572|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             |  0.0336400|  0.0013040| 0.0659760|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |High               |NA             |  0.0231427|  0.0008798| 0.0454056|
|6-24 months |COHORTS        |GUATEMALA                    |High               |NA             | -0.0119487| -0.0708071| 0.0469097|
|6-24 months |COHORTS        |INDIA                        |High               |NA             |  0.0564533|  0.0228068| 0.0900999|
|6-24 months |COHORTS        |PHILIPPINES                  |High               |NA             |  0.0730355|  0.0410479| 0.1050231|
|6-24 months |GMS-Nepal      |NEPAL                        |High               |NA             |  0.0882560| -0.0046136| 0.1811256|
|6-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             | -0.0048802| -0.0317141| 0.0219538|
|6-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             |  0.0328788| -0.0175539| 0.0833116|
|6-24 months |LCNI-5         |MALAWI                       |High               |NA             | -0.0362452| -0.0877734| 0.0152831|
|6-24 months |MAL-ED         |BANGLADESH                   |High               |NA             |  0.1283422|  0.0063135| 0.2503710|
|6-24 months |MAL-ED         |INDIA                        |High               |NA             | -0.0248164| -0.1946276| 0.1449949|
|6-24 months |MAL-ED         |PERU                         |High               |NA             |  0.0384384| -0.0604679| 0.1373446|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |High               |NA             | -0.0426497| -0.2276203| 0.1423208|
|6-24 months |NIH-Crypto     |BANGLADESH                   |High               |NA             |  0.1008400|  0.0587693| 0.1429106|
|6-24 months |PROBIT         |BELARUS                      |High               |NA             |  0.0135833| -0.0001141| 0.0272807|
|6-24 months |PROVIDE        |BANGLADESH                   |High               |NA             |  0.0588584|  0.0088420| 0.1088748|
|6-24 months |SAS-CompFeed   |INDIA                        |High               |NA             |  0.0682162| -0.0156779| 0.1521103|
|6-24 months |SAS-FoodSuppl  |INDIA                        |High               |NA             |  0.0320447| -0.0579741| 0.1220636|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             | -0.0255835| -0.0708688| 0.0197018|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             |  0.0122361| -0.0295902| 0.0540624|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |High               |NA             |  0.0213688| -0.0449236| 0.0834555|
|0-24 months |COHORTS        |INDIA                        |High               |NA             |  0.1393557|  0.0534749| 0.2174444|
|0-24 months |COHORTS        |PHILIPPINES                  |High               |NA             |  0.0952187|  0.0563074| 0.1325255|
|0-24 months |GMS-Nepal      |NEPAL                        |High               |NA             |  0.0709097| -0.0211305| 0.1546537|
|0-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             | -0.0170179| -0.0488420| 0.0138407|
|0-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             |  0.0639900| -0.0152955| 0.1370841|
|0-24 months |LCNI-5         |MALAWI                       |High               |NA             | -0.0332434| -0.1124749| 0.0403451|
|0-24 months |MAL-ED         |BANGLADESH                   |High               |NA             |  0.1651138| -0.0460875| 0.3336743|
|0-24 months |MAL-ED         |INDIA                        |High               |NA             | -0.0929747| -0.3333336| 0.1040549|
|0-24 months |MAL-ED         |NEPAL                        |High               |NA             |  0.2704666| -0.1436422| 0.5346280|
|0-24 months |MAL-ED         |PERU                         |High               |NA             |  0.0019402| -0.1030423| 0.0969309|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High               |NA             | -0.0974952| -0.3018448| 0.0747778|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High               |NA             |  0.1878517|  0.0968139| 0.2697132|
|0-24 months |PROBIT         |BELARUS                      |High               |NA             |  0.1515183| -0.0039991| 0.2829463|
|0-24 months |PROVIDE        |BANGLADESH                   |High               |NA             |  0.0615663| -0.0595310| 0.1688231|
|0-24 months |SAS-CompFeed   |INDIA                        |High               |NA             |  0.0127285| -0.0741772| 0.0926032|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High               |NA             |  0.0404892| -0.0368569| 0.1120656|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             |  0.1043948| -0.0581013| 0.2419358|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             |  0.0366526| -0.0376256| 0.1056137|
|0-6 months  |COHORTS        |GUATEMALA                    |High               |NA             |  0.0620957| -0.1312199| 0.2223753|
|0-6 months  |COHORTS        |INDIA                        |High               |NA             |  0.1394926|  0.0198274| 0.2445484|
|0-6 months  |COHORTS        |PHILIPPINES                  |High               |NA             |  0.1103865|  0.0047547| 0.2048069|
|0-6 months  |GMS-Nepal      |NEPAL                        |High               |NA             | -0.0851955| -0.2755482| 0.0767504|
|0-6 months  |JiVitA-3       |BANGLADESH                   |High               |NA             | -0.0029467| -0.0338766| 0.0270579|
|0-6 months  |JiVitA-4       |BANGLADESH                   |High               |NA             |  0.0617156| -0.0361973| 0.1503765|
|0-6 months  |LCNI-5         |MALAWI                       |High               |NA             |  0.2453126| -0.0591382| 0.4622485|
|0-6 months  |MAL-ED         |BANGLADESH                   |High               |NA             |  0.1381904| -0.1904458| 0.3761028|
|0-6 months  |MAL-ED         |INDIA                        |High               |NA             | -0.0452332| -0.5010524| 0.2721690|
|0-6 months  |MAL-ED         |PERU                         |High               |NA             | -0.0648904| -0.2265001| 0.0754248|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |High               |NA             | -0.1898323| -0.5266938| 0.0727014|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High               |NA             |  0.0539278| -0.0881867| 0.1774825|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |High               |NA             |  0.1154484| -0.0172639| 0.2308471|
|0-6 months  |PROBIT         |BELARUS                      |High               |NA             |  0.1136585| -0.1690134| 0.3279793|
|0-6 months  |PROVIDE        |BANGLADESH                   |High               |NA             |  0.1479850| -0.0163170| 0.2857253|
|0-6 months  |SAS-CompFeed   |INDIA                        |High               |NA             | -0.0127385| -0.1114746| 0.0772265|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |High               |NA             |  0.0721546| -0.1558243| 0.2551661|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             |  0.1723959| -0.0107123| 0.3223309|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |High               |NA             |  0.0901907| -0.0007883| 0.1728991|
|6-24 months |COHORTS        |GUATEMALA                    |High               |NA             | -0.0156862| -0.0959855| 0.0587298|
|6-24 months |COHORTS        |INDIA                        |High               |NA             |  0.2119697|  0.0756944| 0.3281532|
|6-24 months |COHORTS        |PHILIPPINES                  |High               |NA             |  0.1126689|  0.0616560| 0.1609085|
|6-24 months |GMS-Nepal      |NEPAL                        |High               |NA             |  0.1560240| -0.0258316| 0.3056409|
|6-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             | -0.0226769| -0.1553748| 0.0947802|
|6-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             |  0.0867629| -0.0565858| 0.2106632|
|6-24 months |LCNI-5         |MALAWI                       |High               |NA             | -0.0605800| -0.1504532| 0.0222724|
|6-24 months |MAL-ED         |BANGLADESH                   |High               |NA             |  0.3529412| -0.0805799| 0.6125367|
|6-24 months |MAL-ED         |INDIA                        |High               |NA             | -0.0607348| -0.5693441| 0.2830391|
|6-24 months |MAL-ED         |PERU                         |High               |NA             |  0.0930209| -0.1814660| 0.3037369|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |High               |NA             | -0.0989474| -0.6249220| 0.2567734|
|6-24 months |NIH-Crypto     |BANGLADESH                   |High               |NA             |  0.3836469|  0.2084092| 0.5200915|
|6-24 months |PROBIT         |BELARUS                      |High               |NA             |  0.2125495| -0.0255032| 0.3953424|
|6-24 months |PROVIDE        |BANGLADESH                   |High               |NA             |  0.1959082|  0.0132730| 0.3447391|
|6-24 months |SAS-CompFeed   |INDIA                        |High               |NA             |  0.1357636| -0.0456177| 0.2856811|
|6-24 months |SAS-FoodSuppl  |INDIA                        |High               |NA             |  0.0423200| -0.0845235| 0.1543281|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             | -0.1130352| -0.3322141| 0.0700839|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             |  0.0470357| -0.1281117| 0.1949903|
