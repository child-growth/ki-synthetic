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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid       |country      |fage    | ever_stunted| n_cell|     n|
|:-----------|:-------------|:------------|:-------|------------:|------:|-----:|
|0-24 months |COHORTS       |GUATEMALA    |>=38    |            0|    107|  1335|
|0-24 months |COHORTS       |GUATEMALA    |>=38    |            1|    304|  1335|
|0-24 months |COHORTS       |GUATEMALA    |[32-38) |            0|     74|  1335|
|0-24 months |COHORTS       |GUATEMALA    |[32-38) |            1|    254|  1335|
|0-24 months |COHORTS       |GUATEMALA    |<32     |            0|    135|  1335|
|0-24 months |COHORTS       |GUATEMALA    |<32     |            1|    461|  1335|
|0-24 months |COHORTS       |PHILIPPINES  |>=38    |            0|    133|  2939|
|0-24 months |COHORTS       |PHILIPPINES  |>=38    |            1|    277|  2939|
|0-24 months |COHORTS       |PHILIPPINES  |[32-38) |            0|    182|  2939|
|0-24 months |COHORTS       |PHILIPPINES  |[32-38) |            1|    354|  2939|
|0-24 months |COHORTS       |PHILIPPINES  |<32     |            0|    605|  2939|
|0-24 months |COHORTS       |PHILIPPINES  |<32     |            1|   1388|  2939|
|0-24 months |LCNI-5        |MALAWI       |>=38    |            0|      7|    50|
|0-24 months |LCNI-5        |MALAWI       |>=38    |            1|     12|    50|
|0-24 months |LCNI-5        |MALAWI       |[32-38) |            0|      3|    50|
|0-24 months |LCNI-5        |MALAWI       |[32-38) |            1|      5|    50|
|0-24 months |LCNI-5        |MALAWI       |<32     |            0|      9|    50|
|0-24 months |LCNI-5        |MALAWI       |<32     |            1|     14|    50|
|0-24 months |MAL-ED        |INDIA        |>=38    |            0|     23|   160|
|0-24 months |MAL-ED        |INDIA        |>=38    |            1|     38|   160|
|0-24 months |MAL-ED        |INDIA        |[32-38) |            0|     20|   160|
|0-24 months |MAL-ED        |INDIA        |[32-38) |            1|     33|   160|
|0-24 months |MAL-ED        |INDIA        |<32     |            0|     21|   160|
|0-24 months |MAL-ED        |INDIA        |<32     |            1|     25|   160|
|0-24 months |MAL-ED        |BANGLADESH   |>=38    |            0|     34|   133|
|0-24 months |MAL-ED        |BANGLADESH   |>=38    |            1|     50|   133|
|0-24 months |MAL-ED        |BANGLADESH   |[32-38) |            0|     17|   133|
|0-24 months |MAL-ED        |BANGLADESH   |[32-38) |            1|     13|   133|
|0-24 months |MAL-ED        |BANGLADESH   |<32     |            0|      7|   133|
|0-24 months |MAL-ED        |BANGLADESH   |<32     |            1|     12|   133|
|0-24 months |MAL-ED        |PERU         |>=38    |            0|     17|   107|
|0-24 months |MAL-ED        |PERU         |>=38    |            1|     30|   107|
|0-24 months |MAL-ED        |PERU         |[32-38) |            0|      8|   107|
|0-24 months |MAL-ED        |PERU         |[32-38) |            1|     19|   107|
|0-24 months |MAL-ED        |PERU         |<32     |            0|     15|   107|
|0-24 months |MAL-ED        |PERU         |<32     |            1|     18|   107|
|0-24 months |MAL-ED        |NEPAL        |>=38    |            0|     23|    87|
|0-24 months |MAL-ED        |NEPAL        |>=38    |            1|     16|    87|
|0-24 months |MAL-ED        |NEPAL        |[32-38) |            0|     17|    87|
|0-24 months |MAL-ED        |NEPAL        |[32-38) |            1|     14|    87|
|0-24 months |MAL-ED        |NEPAL        |<32     |            0|     11|    87|
|0-24 months |MAL-ED        |NEPAL        |<32     |            1|      6|    87|
|0-24 months |MAL-ED        |BRAZIL       |>=38    |            0|     23|    69|
|0-24 months |MAL-ED        |BRAZIL       |>=38    |            1|     13|    69|
|0-24 months |MAL-ED        |BRAZIL       |[32-38) |            0|     12|    69|
|0-24 months |MAL-ED        |BRAZIL       |[32-38) |            1|      3|    69|
|0-24 months |MAL-ED        |BRAZIL       |<32     |            0|     14|    69|
|0-24 months |MAL-ED        |BRAZIL       |<32     |            1|      4|    69|
|0-24 months |MAL-ED        |TANZANIA     |>=38    |            0|      9|    97|
|0-24 months |MAL-ED        |TANZANIA     |>=38    |            1|     44|    97|
|0-24 months |MAL-ED        |TANZANIA     |[32-38) |            0|      4|    97|
|0-24 months |MAL-ED        |TANZANIA     |[32-38) |            1|     22|    97|
|0-24 months |MAL-ED        |TANZANIA     |<32     |            0|      2|    97|
|0-24 months |MAL-ED        |TANZANIA     |<32     |            1|     16|    97|
|0-24 months |MAL-ED        |SOUTH AFRICA |>=38    |            0|     30|   116|
|0-24 months |MAL-ED        |SOUTH AFRICA |>=38    |            1|     49|   116|
|0-24 months |MAL-ED        |SOUTH AFRICA |[32-38) |            0|     13|   116|
|0-24 months |MAL-ED        |SOUTH AFRICA |[32-38) |            1|     15|   116|
|0-24 months |MAL-ED        |SOUTH AFRICA |<32     |            0|      4|   116|
|0-24 months |MAL-ED        |SOUTH AFRICA |<32     |            1|      5|   116|
|0-24 months |PROBIT        |BELARUS      |>=38    |            0|    679| 16268|
|0-24 months |PROBIT        |BELARUS      |>=38    |            1|    100| 16268|
|0-24 months |PROBIT        |BELARUS      |[32-38) |            0|   2208| 16268|
|0-24 months |PROBIT        |BELARUS      |[32-38) |            1|    337| 16268|
|0-24 months |PROBIT        |BELARUS      |<32     |            0|  11318| 16268|
|0-24 months |PROBIT        |BELARUS      |<32     |            1|   1626| 16268|
|0-24 months |SAS-CompFeed  |INDIA        |>=38    |            0|     18|  1533|
|0-24 months |SAS-CompFeed  |INDIA        |>=38    |            1|     47|  1533|
|0-24 months |SAS-CompFeed  |INDIA        |[32-38) |            0|     65|  1533|
|0-24 months |SAS-CompFeed  |INDIA        |[32-38) |            1|    136|  1533|
|0-24 months |SAS-CompFeed  |INDIA        |<32     |            0|    390|  1533|
|0-24 months |SAS-CompFeed  |INDIA        |<32     |            1|    877|  1533|
|0-24 months |SAS-FoodSuppl |INDIA        |>=38    |            0|     14|   418|
|0-24 months |SAS-FoodSuppl |INDIA        |>=38    |            1|     61|   418|
|0-24 months |SAS-FoodSuppl |INDIA        |[32-38) |            0|     13|   418|
|0-24 months |SAS-FoodSuppl |INDIA        |[32-38) |            1|     83|   418|
|0-24 months |SAS-FoodSuppl |INDIA        |<32     |            0|     45|   418|
|0-24 months |SAS-FoodSuppl |INDIA        |<32     |            1|    202|   418|
|0-6 months  |COHORTS       |GUATEMALA    |>=38    |            0|    217|  1065|
|0-6 months  |COHORTS       |GUATEMALA    |>=38    |            1|    105|  1065|
|0-6 months  |COHORTS       |GUATEMALA    |[32-38) |            0|    185|  1065|
|0-6 months  |COHORTS       |GUATEMALA    |[32-38) |            1|     77|  1065|
|0-6 months  |COHORTS       |GUATEMALA    |<32     |            0|    320|  1065|
|0-6 months  |COHORTS       |GUATEMALA    |<32     |            1|    161|  1065|
|0-6 months  |COHORTS       |PHILIPPINES  |>=38    |            0|    305|  2939|
|0-6 months  |COHORTS       |PHILIPPINES  |>=38    |            1|    105|  2939|
|0-6 months  |COHORTS       |PHILIPPINES  |[32-38) |            0|    407|  2939|
|0-6 months  |COHORTS       |PHILIPPINES  |[32-38) |            1|    129|  2939|
|0-6 months  |COHORTS       |PHILIPPINES  |<32     |            0|   1517|  2939|
|0-6 months  |COHORTS       |PHILIPPINES  |<32     |            1|    476|  2939|
|0-6 months  |LCNI-5        |MALAWI       |>=38    |            0|      8|    19|
|0-6 months  |LCNI-5        |MALAWI       |>=38    |            1|      1|    19|
|0-6 months  |LCNI-5        |MALAWI       |[32-38) |            0|      2|    19|
|0-6 months  |LCNI-5        |MALAWI       |[32-38) |            1|      0|    19|
|0-6 months  |LCNI-5        |MALAWI       |<32     |            0|      5|    19|
|0-6 months  |LCNI-5        |MALAWI       |<32     |            1|      3|    19|
|0-6 months  |MAL-ED        |INDIA        |>=38    |            0|     39|   160|
|0-6 months  |MAL-ED        |INDIA        |>=38    |            1|     22|   160|
|0-6 months  |MAL-ED        |INDIA        |[32-38) |            0|     34|   160|
|0-6 months  |MAL-ED        |INDIA        |[32-38) |            1|     19|   160|
|0-6 months  |MAL-ED        |INDIA        |<32     |            0|     36|   160|
|0-6 months  |MAL-ED        |INDIA        |<32     |            1|     10|   160|
|0-6 months  |MAL-ED        |BANGLADESH   |>=38    |            0|     58|   133|
|0-6 months  |MAL-ED        |BANGLADESH   |>=38    |            1|     26|   133|
|0-6 months  |MAL-ED        |BANGLADESH   |[32-38) |            0|     21|   133|
|0-6 months  |MAL-ED        |BANGLADESH   |[32-38) |            1|      9|   133|
|0-6 months  |MAL-ED        |BANGLADESH   |<32     |            0|     14|   133|
|0-6 months  |MAL-ED        |BANGLADESH   |<32     |            1|      5|   133|
|0-6 months  |MAL-ED        |PERU         |>=38    |            0|     26|   107|
|0-6 months  |MAL-ED        |PERU         |>=38    |            1|     21|   107|
|0-6 months  |MAL-ED        |PERU         |[32-38) |            0|     17|   107|
|0-6 months  |MAL-ED        |PERU         |[32-38) |            1|     10|   107|
|0-6 months  |MAL-ED        |PERU         |<32     |            0|     22|   107|
|0-6 months  |MAL-ED        |PERU         |<32     |            1|     11|   107|
|0-6 months  |MAL-ED        |NEPAL        |>=38    |            0|     31|    87|
|0-6 months  |MAL-ED        |NEPAL        |>=38    |            1|      8|    87|
|0-6 months  |MAL-ED        |NEPAL        |[32-38) |            0|     24|    87|
|0-6 months  |MAL-ED        |NEPAL        |[32-38) |            1|      7|    87|
|0-6 months  |MAL-ED        |NEPAL        |<32     |            0|     13|    87|
|0-6 months  |MAL-ED        |NEPAL        |<32     |            1|      4|    87|
|0-6 months  |MAL-ED        |BRAZIL       |>=38    |            0|     28|    69|
|0-6 months  |MAL-ED        |BRAZIL       |>=38    |            1|      8|    69|
|0-6 months  |MAL-ED        |BRAZIL       |[32-38) |            0|     13|    69|
|0-6 months  |MAL-ED        |BRAZIL       |[32-38) |            1|      2|    69|
|0-6 months  |MAL-ED        |BRAZIL       |<32     |            0|     14|    69|
|0-6 months  |MAL-ED        |BRAZIL       |<32     |            1|      4|    69|
|0-6 months  |MAL-ED        |TANZANIA     |>=38    |            0|     34|    97|
|0-6 months  |MAL-ED        |TANZANIA     |>=38    |            1|     19|    97|
|0-6 months  |MAL-ED        |TANZANIA     |[32-38) |            0|     18|    97|
|0-6 months  |MAL-ED        |TANZANIA     |[32-38) |            1|      8|    97|
|0-6 months  |MAL-ED        |TANZANIA     |<32     |            0|     11|    97|
|0-6 months  |MAL-ED        |TANZANIA     |<32     |            1|      7|    97|
|0-6 months  |MAL-ED        |SOUTH AFRICA |>=38    |            0|     43|   116|
|0-6 months  |MAL-ED        |SOUTH AFRICA |>=38    |            1|     36|   116|
|0-6 months  |MAL-ED        |SOUTH AFRICA |[32-38) |            0|     15|   116|
|0-6 months  |MAL-ED        |SOUTH AFRICA |[32-38) |            1|     13|   116|
|0-6 months  |MAL-ED        |SOUTH AFRICA |<32     |            0|      6|   116|
|0-6 months  |MAL-ED        |SOUTH AFRICA |<32     |            1|      3|   116|
|0-6 months  |PROBIT        |BELARUS      |>=38    |            0|    724| 16263|
|0-6 months  |PROBIT        |BELARUS      |>=38    |            1|     55| 16263|
|0-6 months  |PROBIT        |BELARUS      |[32-38) |            0|   2364| 16263|
|0-6 months  |PROBIT        |BELARUS      |[32-38) |            1|    181| 16263|
|0-6 months  |PROBIT        |BELARUS      |<32     |            0|  12063| 16263|
|0-6 months  |PROBIT        |BELARUS      |<32     |            1|    876| 16263|
|0-6 months  |SAS-CompFeed  |INDIA        |>=38    |            0|     34|  1530|
|0-6 months  |SAS-CompFeed  |INDIA        |>=38    |            1|     31|  1530|
|0-6 months  |SAS-CompFeed  |INDIA        |[32-38) |            0|    121|  1530|
|0-6 months  |SAS-CompFeed  |INDIA        |[32-38) |            1|     80|  1530|
|0-6 months  |SAS-CompFeed  |INDIA        |<32     |            0|    724|  1530|
|0-6 months  |SAS-CompFeed  |INDIA        |<32     |            1|    540|  1530|
|0-6 months  |SAS-FoodSuppl |INDIA        |>=38    |            0|     40|   416|
|0-6 months  |SAS-FoodSuppl |INDIA        |>=38    |            1|     34|   416|
|0-6 months  |SAS-FoodSuppl |INDIA        |[32-38) |            0|     59|   416|
|0-6 months  |SAS-FoodSuppl |INDIA        |[32-38) |            1|     37|   416|
|0-6 months  |SAS-FoodSuppl |INDIA        |<32     |            0|    155|   416|
|0-6 months  |SAS-FoodSuppl |INDIA        |<32     |            1|     91|   416|
|6-24 months |COHORTS       |GUATEMALA    |>=38    |            0|     71|   885|
|6-24 months |COHORTS       |GUATEMALA    |>=38    |            1|    199|   885|
|6-24 months |COHORTS       |GUATEMALA    |[32-38) |            0|     49|   885|
|6-24 months |COHORTS       |GUATEMALA    |[32-38) |            1|    177|   885|
|6-24 months |COHORTS       |GUATEMALA    |<32     |            0|     89|   885|
|6-24 months |COHORTS       |GUATEMALA    |<32     |            1|    300|   885|
|6-24 months |COHORTS       |PHILIPPINES  |>=38    |            0|    102|  2031|
|6-24 months |COHORTS       |PHILIPPINES  |>=38    |            1|    172|  2031|
|6-24 months |COHORTS       |PHILIPPINES  |[32-38) |            0|    138|  2031|
|6-24 months |COHORTS       |PHILIPPINES  |[32-38) |            1|    225|  2031|
|6-24 months |COHORTS       |PHILIPPINES  |<32     |            0|    482|  2031|
|6-24 months |COHORTS       |PHILIPPINES  |<32     |            1|    912|  2031|
|6-24 months |LCNI-5        |MALAWI       |>=38    |            0|      7|    46|
|6-24 months |LCNI-5        |MALAWI       |>=38    |            1|     11|    46|
|6-24 months |LCNI-5        |MALAWI       |[32-38) |            0|      3|    46|
|6-24 months |LCNI-5        |MALAWI       |[32-38) |            1|      5|    46|
|6-24 months |LCNI-5        |MALAWI       |<32     |            0|      9|    46|
|6-24 months |LCNI-5        |MALAWI       |<32     |            1|     11|    46|
|6-24 months |MAL-ED        |INDIA        |>=38    |            0|     21|   104|
|6-24 months |MAL-ED        |INDIA        |>=38    |            1|     16|   104|
|6-24 months |MAL-ED        |INDIA        |[32-38) |            0|     19|   104|
|6-24 months |MAL-ED        |INDIA        |[32-38) |            1|     14|   104|
|6-24 months |MAL-ED        |INDIA        |<32     |            0|     19|   104|
|6-24 months |MAL-ED        |INDIA        |<32     |            1|     15|   104|
|6-24 months |MAL-ED        |BANGLADESH   |>=38    |            0|     31|    88|
|6-24 months |MAL-ED        |BANGLADESH   |>=38    |            1|     24|    88|
|6-24 months |MAL-ED        |BANGLADESH   |[32-38) |            0|     16|    88|
|6-24 months |MAL-ED        |BANGLADESH   |[32-38) |            1|      4|    88|
|6-24 months |MAL-ED        |BANGLADESH   |<32     |            0|      6|    88|
|6-24 months |MAL-ED        |BANGLADESH   |<32     |            1|      7|    88|
|6-24 months |MAL-ED        |PERU         |>=38    |            0|     13|    57|
|6-24 months |MAL-ED        |PERU         |>=38    |            1|      9|    57|
|6-24 months |MAL-ED        |PERU         |[32-38) |            0|      8|    57|
|6-24 months |MAL-ED        |PERU         |[32-38) |            1|      9|    57|
|6-24 months |MAL-ED        |PERU         |<32     |            0|     11|    57|
|6-24 months |MAL-ED        |PERU         |<32     |            1|      7|    57|
|6-24 months |MAL-ED        |NEPAL        |>=38    |            0|     23|    68|
|6-24 months |MAL-ED        |NEPAL        |>=38    |            1|      8|    68|
|6-24 months |MAL-ED        |NEPAL        |[32-38) |            0|     17|    68|
|6-24 months |MAL-ED        |NEPAL        |[32-38) |            1|      7|    68|
|6-24 months |MAL-ED        |NEPAL        |<32     |            0|     11|    68|
|6-24 months |MAL-ED        |NEPAL        |<32     |            1|      2|    68|
|6-24 months |MAL-ED        |BRAZIL       |>=38    |            0|     23|    53|
|6-24 months |MAL-ED        |BRAZIL       |>=38    |            1|      5|    53|
|6-24 months |MAL-ED        |BRAZIL       |[32-38) |            0|     11|    53|
|6-24 months |MAL-ED        |BRAZIL       |[32-38) |            1|      1|    53|
|6-24 months |MAL-ED        |BRAZIL       |<32     |            0|     13|    53|
|6-24 months |MAL-ED        |BRAZIL       |<32     |            1|      0|    53|
|6-24 months |MAL-ED        |TANZANIA     |>=38    |            0|      7|    60|
|6-24 months |MAL-ED        |TANZANIA     |>=38    |            1|     25|    60|
|6-24 months |MAL-ED        |TANZANIA     |[32-38) |            0|      3|    60|
|6-24 months |MAL-ED        |TANZANIA     |[32-38) |            1|     14|    60|
|6-24 months |MAL-ED        |TANZANIA     |<32     |            0|      2|    60|
|6-24 months |MAL-ED        |TANZANIA     |<32     |            1|      9|    60|
|6-24 months |MAL-ED        |SOUTH AFRICA |>=38    |            0|     27|    56|
|6-24 months |MAL-ED        |SOUTH AFRICA |>=38    |            1|     13|    56|
|6-24 months |MAL-ED        |SOUTH AFRICA |[32-38) |            0|     10|    56|
|6-24 months |MAL-ED        |SOUTH AFRICA |[32-38) |            1|      2|    56|
|6-24 months |MAL-ED        |SOUTH AFRICA |<32     |            0|      2|    56|
|6-24 months |MAL-ED        |SOUTH AFRICA |<32     |            1|      2|    56|
|6-24 months |PROBIT        |BELARUS      |>=38    |            0|    666| 14901|
|6-24 months |PROBIT        |BELARUS      |>=38    |            1|     45| 14901|
|6-24 months |PROBIT        |BELARUS      |[32-38) |            0|   2175| 14901|
|6-24 months |PROBIT        |BELARUS      |[32-38) |            1|    156| 14901|
|6-24 months |PROBIT        |BELARUS      |<32     |            0|  11109| 14901|
|6-24 months |PROBIT        |BELARUS      |<32     |            1|    750| 14901|
|6-24 months |SAS-CompFeed  |INDIA        |>=38    |            0|     15|   813|
|6-24 months |SAS-CompFeed  |INDIA        |>=38    |            1|     16|   813|
|6-24 months |SAS-CompFeed  |INDIA        |[32-38) |            0|     56|   813|
|6-24 months |SAS-CompFeed  |INDIA        |[32-38) |            1|     56|   813|
|6-24 months |SAS-CompFeed  |INDIA        |<32     |            0|    333|   813|
|6-24 months |SAS-CompFeed  |INDIA        |<32     |            1|    337|   813|
|6-24 months |SAS-FoodSuppl |INDIA        |>=38    |            0|     12|   243|
|6-24 months |SAS-FoodSuppl |INDIA        |>=38    |            1|     27|   243|
|6-24 months |SAS-FoodSuppl |INDIA        |[32-38) |            0|     11|   243|
|6-24 months |SAS-FoodSuppl |INDIA        |[32-38) |            1|     46|   243|
|6-24 months |SAS-FoodSuppl |INDIA        |<32     |            0|     36|   243|
|6-24 months |SAS-FoodSuppl |INDIA        |<32     |            1|    111|   243|


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
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
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
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
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
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA





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


