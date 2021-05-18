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

**Intervention Variable:** mhtcm

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |mhtcm        | ever_stunted| n_cell|     n|
|:-----------|:--------------|:------------|:------------|------------:|------:|-----:|
|0-24 months |COHORTS        |INDIA        |>=155 cm     |            0|   3527|  7417|
|0-24 months |COHORTS        |INDIA        |>=155 cm     |            1|   1974|  7417|
|0-24 months |COHORTS        |INDIA        |[151-155) cm |            0|    429|  7417|
|0-24 months |COHORTS        |INDIA        |[151-155) cm |            1|    264|  7417|
|0-24 months |COHORTS        |INDIA        |<151 cm      |            0|    711|  7417|
|0-24 months |COHORTS        |INDIA        |<151 cm      |            1|    512|  7417|
|0-24 months |COHORTS        |GUATEMALA    |>=155 cm     |            0|     56|  1273|
|0-24 months |COHORTS        |GUATEMALA    |>=155 cm     |            1|     82|  1273|
|0-24 months |COHORTS        |GUATEMALA    |[151-155) cm |            0|     66|  1273|
|0-24 months |COHORTS        |GUATEMALA    |[151-155) cm |            1|    174|  1273|
|0-24 months |COHORTS        |GUATEMALA    |<151 cm      |            0|    180|  1273|
|0-24 months |COHORTS        |GUATEMALA    |<151 cm      |            1|    715|  1273|
|0-24 months |COHORTS        |PHILIPPINES  |>=155 cm     |            0|    302|  3057|
|0-24 months |COHORTS        |PHILIPPINES  |>=155 cm     |            1|    393|  3057|
|0-24 months |COHORTS        |PHILIPPINES  |[151-155) cm |            0|    271|  3057|
|0-24 months |COHORTS        |PHILIPPINES  |[151-155) cm |            1|    467|  3057|
|0-24 months |COHORTS        |PHILIPPINES  |<151 cm      |            0|    386|  3057|
|0-24 months |COHORTS        |PHILIPPINES  |<151 cm      |            1|   1238|  3057|
|0-24 months |Guatemala BSC  |GUATEMALA    |>=155 cm     |            0|     27|   250|
|0-24 months |Guatemala BSC  |GUATEMALA    |>=155 cm     |            1|     25|   250|
|0-24 months |Guatemala BSC  |GUATEMALA    |[151-155) cm |            0|     22|   250|
|0-24 months |Guatemala BSC  |GUATEMALA    |[151-155) cm |            1|     23|   250|
|0-24 months |Guatemala BSC  |GUATEMALA    |<151 cm      |            0|     69|   250|
|0-24 months |Guatemala BSC  |GUATEMALA    |<151 cm      |            1|     84|   250|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |>=155 cm     |            0|   1849|  3225|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |>=155 cm     |            1|    978|  3225|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |[151-155) cm |            0|    163|  3225|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |[151-155) cm |            1|    120|  3225|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |<151 cm      |            0|     57|  3225|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |<151 cm      |            1|     58|  3225|
|0-24 months |JiVitA-3       |BANGLADESH   |>=155 cm     |            0|   2458| 26974|
|0-24 months |JiVitA-3       |BANGLADESH   |>=155 cm     |            1|   2113| 26974|
|0-24 months |JiVitA-3       |BANGLADESH   |[151-155) cm |            0|   3447| 26974|
|0-24 months |JiVitA-3       |BANGLADESH   |[151-155) cm |            1|   3127| 26974|
|0-24 months |JiVitA-3       |BANGLADESH   |<151 cm      |            0|   7699| 26974|
|0-24 months |JiVitA-3       |BANGLADESH   |<151 cm      |            1|   8130| 26974|
|0-24 months |Keneba         |GAMBIA       |>=155 cm     |            0|    945|  2515|
|0-24 months |Keneba         |GAMBIA       |>=155 cm     |            1|   1000|  2515|
|0-24 months |Keneba         |GAMBIA       |[151-155) cm |            0|    169|  2515|
|0-24 months |Keneba         |GAMBIA       |[151-155) cm |            1|    187|  2515|
|0-24 months |Keneba         |GAMBIA       |<151 cm      |            0|    102|  2515|
|0-24 months |Keneba         |GAMBIA       |<151 cm      |            1|    112|  2515|
|0-24 months |LCNI-5         |MALAWI       |>=155 cm     |            0|    185|   836|
|0-24 months |LCNI-5         |MALAWI       |>=155 cm     |            1|    307|   836|
|0-24 months |LCNI-5         |MALAWI       |[151-155) cm |            0|     58|   836|
|0-24 months |LCNI-5         |MALAWI       |[151-155) cm |            1|    114|   836|
|0-24 months |LCNI-5         |MALAWI       |<151 cm      |            0|     60|   836|
|0-24 months |LCNI-5         |MALAWI       |<151 cm      |            1|    112|   836|
|0-24 months |MAL-ED         |INDIA        |>=155 cm     |            0|     28|   247|
|0-24 months |MAL-ED         |INDIA        |>=155 cm     |            1|     35|   247|
|0-24 months |MAL-ED         |INDIA        |[151-155) cm |            0|     23|   247|
|0-24 months |MAL-ED         |INDIA        |[151-155) cm |            1|     36|   247|
|0-24 months |MAL-ED         |INDIA        |<151 cm      |            0|     46|   247|
|0-24 months |MAL-ED         |INDIA        |<151 cm      |            1|     79|   247|
|0-24 months |MAL-ED         |BANGLADESH   |>=155 cm     |            0|     20|   260|
|0-24 months |MAL-ED         |BANGLADESH   |>=155 cm     |            1|     19|   260|
|0-24 months |MAL-ED         |BANGLADESH   |[151-155) cm |            0|     24|   260|
|0-24 months |MAL-ED         |BANGLADESH   |[151-155) cm |            1|     34|   260|
|0-24 months |MAL-ED         |BANGLADESH   |<151 cm      |            0|     59|   260|
|0-24 months |MAL-ED         |BANGLADESH   |<151 cm      |            1|    104|   260|
|0-24 months |MAL-ED         |PERU         |>=155 cm     |            0|     29|   299|
|0-24 months |MAL-ED         |PERU         |>=155 cm     |            1|     41|   299|
|0-24 months |MAL-ED         |PERU         |[151-155) cm |            0|     22|   299|
|0-24 months |MAL-ED         |PERU         |[151-155) cm |            1|     36|   299|
|0-24 months |MAL-ED         |PERU         |<151 cm      |            0|     63|   299|
|0-24 months |MAL-ED         |PERU         |<151 cm      |            1|    108|   299|
|0-24 months |MAL-ED         |NEPAL        |>=155 cm     |            0|     34|   240|
|0-24 months |MAL-ED         |NEPAL        |>=155 cm     |            1|     10|   240|
|0-24 months |MAL-ED         |NEPAL        |[151-155) cm |            0|     37|   240|
|0-24 months |MAL-ED         |NEPAL        |[151-155) cm |            1|     23|   240|
|0-24 months |MAL-ED         |NEPAL        |<151 cm      |            0|     85|   240|
|0-24 months |MAL-ED         |NEPAL        |<151 cm      |            1|     51|   240|
|0-24 months |MAL-ED         |BRAZIL       |>=155 cm     |            0|     78|   231|
|0-24 months |MAL-ED         |BRAZIL       |>=155 cm     |            1|     32|   231|
|0-24 months |MAL-ED         |BRAZIL       |[151-155) cm |            0|     35|   231|
|0-24 months |MAL-ED         |BRAZIL       |[151-155) cm |            1|     14|   231|
|0-24 months |MAL-ED         |BRAZIL       |<151 cm      |            0|     56|   231|
|0-24 months |MAL-ED         |BRAZIL       |<151 cm      |            1|     16|   231|
|0-24 months |MAL-ED         |TANZANIA     |>=155 cm     |            0|     23|   257|
|0-24 months |MAL-ED         |TANZANIA     |>=155 cm     |            1|    127|   257|
|0-24 months |MAL-ED         |TANZANIA     |[151-155) cm |            0|      7|   257|
|0-24 months |MAL-ED         |TANZANIA     |[151-155) cm |            1|     37|   257|
|0-24 months |MAL-ED         |TANZANIA     |<151 cm      |            0|     10|   257|
|0-24 months |MAL-ED         |TANZANIA     |<151 cm      |            1|     53|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=155 cm     |            0|     99|   290|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=155 cm     |            1|    117|   290|
|0-24 months |MAL-ED         |SOUTH AFRICA |[151-155) cm |            0|     15|   290|
|0-24 months |MAL-ED         |SOUTH AFRICA |[151-155) cm |            1|     23|   290|
|0-24 months |MAL-ED         |SOUTH AFRICA |<151 cm      |            0|     12|   290|
|0-24 months |MAL-ED         |SOUTH AFRICA |<151 cm      |            1|     24|   290|
|0-24 months |NIH-Birth      |BANGLADESH   |>=155 cm     |            0|     60|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |>=155 cm     |            1|     55|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |[151-155) cm |            0|     55|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |[151-155) cm |            1|     89|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |<151 cm      |            0|     96|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |<151 cm      |            1|    274|   629|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=155 cm     |            0|     99|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=155 cm     |            1|     51|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |[151-155) cm |            0|    103|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |[151-155) cm |            1|     83|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |<151 cm      |            0|    193|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |<151 cm      |            1|    228|   757|
|0-24 months |PROBIT         |BELARUS      |>=155 cm     |            0|  11550| 13803|
|0-24 months |PROBIT         |BELARUS      |>=155 cm     |            1|   1706| 13803|
|0-24 months |PROBIT         |BELARUS      |[151-155) cm |            0|    349| 13803|
|0-24 months |PROBIT         |BELARUS      |[151-155) cm |            1|     52| 13803|
|0-24 months |PROBIT         |BELARUS      |<151 cm      |            0|    128| 13803|
|0-24 months |PROBIT         |BELARUS      |<151 cm      |            1|     18| 13803|
|0-24 months |PROVIDE        |BANGLADESH   |>=155 cm     |            0|     83|   668|
|0-24 months |PROVIDE        |BANGLADESH   |>=155 cm     |            1|     51|   668|
|0-24 months |PROVIDE        |BANGLADESH   |[151-155) cm |            0|    102|   668|
|0-24 months |PROVIDE        |BANGLADESH   |[151-155) cm |            1|     78|   668|
|0-24 months |PROVIDE        |BANGLADESH   |<151 cm      |            0|    191|   668|
|0-24 months |PROVIDE        |BANGLADESH   |<151 cm      |            1|    163|   668|
|0-24 months |SAS-CompFeed   |INDIA        |>=155 cm     |            0|    221|  1510|
|0-24 months |SAS-CompFeed   |INDIA        |>=155 cm     |            1|    403|  1510|
|0-24 months |SAS-CompFeed   |INDIA        |[151-155) cm |            0|     82|  1510|
|0-24 months |SAS-CompFeed   |INDIA        |[151-155) cm |            1|    229|  1510|
|0-24 months |SAS-CompFeed   |INDIA        |<151 cm      |            0|    165|  1510|
|0-24 months |SAS-CompFeed   |INDIA        |<151 cm      |            1|    410|  1510|
|0-24 months |SAS-FoodSuppl  |INDIA        |>=155 cm     |            0|     13|   416|
|0-24 months |SAS-FoodSuppl  |INDIA        |>=155 cm     |            1|     71|   416|
|0-24 months |SAS-FoodSuppl  |INDIA        |[151-155) cm |            0|     25|   416|
|0-24 months |SAS-FoodSuppl  |INDIA        |[151-155) cm |            1|     89|   416|
|0-24 months |SAS-FoodSuppl  |INDIA        |<151 cm      |            0|     34|   416|
|0-24 months |SAS-FoodSuppl  |INDIA        |<151 cm      |            1|    184|   416|
|0-24 months |TanzaniaChild2 |TANZANIA     |>=155 cm     |            0|   1011|  2377|
|0-24 months |TanzaniaChild2 |TANZANIA     |>=155 cm     |            1|    509|  2377|
|0-24 months |TanzaniaChild2 |TANZANIA     |[151-155) cm |            0|    318|  2377|
|0-24 months |TanzaniaChild2 |TANZANIA     |[151-155) cm |            1|    177|  2377|
|0-24 months |TanzaniaChild2 |TANZANIA     |<151 cm      |            0|    226|  2377|
|0-24 months |TanzaniaChild2 |TANZANIA     |<151 cm      |            1|    136|  2377|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=155 cm     |            0|   4248|  9653|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=155 cm     |            1|   3418|  9653|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[151-155) cm |            0|    730|  9653|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[151-155) cm |            1|    693|  9653|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<151 cm      |            0|    265|  9653|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<151 cm      |            1|    299|  9653|
|0-6 months  |COHORTS        |INDIA        |>=155 cm     |            0|   4351|  7176|
|0-6 months  |COHORTS        |INDIA        |>=155 cm     |            1|    952|  7176|
|0-6 months  |COHORTS        |INDIA        |[151-155) cm |            0|    559|  7176|
|0-6 months  |COHORTS        |INDIA        |[151-155) cm |            1|    123|  7176|
|0-6 months  |COHORTS        |INDIA        |<151 cm      |            0|    928|  7176|
|0-6 months  |COHORTS        |INDIA        |<151 cm      |            1|    263|  7176|
|0-6 months  |COHORTS        |GUATEMALA    |>=155 cm     |            0|     89|  1055|
|0-6 months  |COHORTS        |GUATEMALA    |>=155 cm     |            1|     27|  1055|
|0-6 months  |COHORTS        |GUATEMALA    |[151-155) cm |            0|    155|  1055|
|0-6 months  |COHORTS        |GUATEMALA    |[151-155) cm |            1|     47|  1055|
|0-6 months  |COHORTS        |GUATEMALA    |<151 cm      |            0|    470|  1055|
|0-6 months  |COHORTS        |GUATEMALA    |<151 cm      |            1|    267|  1055|
|0-6 months  |COHORTS        |PHILIPPINES  |>=155 cm     |            0|    590|  3057|
|0-6 months  |COHORTS        |PHILIPPINES  |>=155 cm     |            1|    105|  3057|
|0-6 months  |COHORTS        |PHILIPPINES  |[151-155) cm |            0|    604|  3057|
|0-6 months  |COHORTS        |PHILIPPINES  |[151-155) cm |            1|    134|  3057|
|0-6 months  |COHORTS        |PHILIPPINES  |<151 cm      |            0|   1132|  3057|
|0-6 months  |COHORTS        |PHILIPPINES  |<151 cm      |            1|    492|  3057|
|0-6 months  |Guatemala BSC  |GUATEMALA    |>=155 cm     |            0|     33|   230|
|0-6 months  |Guatemala BSC  |GUATEMALA    |>=155 cm     |            1|     14|   230|
|0-6 months  |Guatemala BSC  |GUATEMALA    |[151-155) cm |            0|     28|   230|
|0-6 months  |Guatemala BSC  |GUATEMALA    |[151-155) cm |            1|     14|   230|
|0-6 months  |Guatemala BSC  |GUATEMALA    |<151 cm      |            0|     94|   230|
|0-6 months  |Guatemala BSC  |GUATEMALA    |<151 cm      |            1|     47|   230|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=155 cm     |            0|   2837| 26909|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=155 cm     |            1|   1716| 26909|
|0-6 months  |JiVitA-3       |BANGLADESH   |[151-155) cm |            0|   3998| 26909|
|0-6 months  |JiVitA-3       |BANGLADESH   |[151-155) cm |            1|   2563| 26909|
|0-6 months  |JiVitA-3       |BANGLADESH   |<151 cm      |            0|   8956| 26909|
|0-6 months  |JiVitA-3       |BANGLADESH   |<151 cm      |            1|   6839| 26909|
|0-6 months  |Keneba         |GAMBIA       |>=155 cm     |            0|   1147|  2129|
|0-6 months  |Keneba         |GAMBIA       |>=155 cm     |            1|    504|  2129|
|0-6 months  |Keneba         |GAMBIA       |[151-155) cm |            0|    191|  2129|
|0-6 months  |Keneba         |GAMBIA       |[151-155) cm |            1|    102|  2129|
|0-6 months  |Keneba         |GAMBIA       |<151 cm      |            0|    124|  2129|
|0-6 months  |Keneba         |GAMBIA       |<151 cm      |            1|     61|  2129|
|0-6 months  |LCNI-5         |MALAWI       |>=155 cm     |            0|    102|   271|
|0-6 months  |LCNI-5         |MALAWI       |>=155 cm     |            1|     51|   271|
|0-6 months  |LCNI-5         |MALAWI       |[151-155) cm |            0|     38|   271|
|0-6 months  |LCNI-5         |MALAWI       |[151-155) cm |            1|     20|   271|
|0-6 months  |LCNI-5         |MALAWI       |<151 cm      |            0|     35|   271|
|0-6 months  |LCNI-5         |MALAWI       |<151 cm      |            1|     25|   271|
|0-6 months  |MAL-ED         |INDIA        |>=155 cm     |            0|     41|   247|
|0-6 months  |MAL-ED         |INDIA        |>=155 cm     |            1|     22|   247|
|0-6 months  |MAL-ED         |INDIA        |[151-155) cm |            0|     37|   247|
|0-6 months  |MAL-ED         |INDIA        |[151-155) cm |            1|     22|   247|
|0-6 months  |MAL-ED         |INDIA        |<151 cm      |            0|     83|   247|
|0-6 months  |MAL-ED         |INDIA        |<151 cm      |            1|     42|   247|
|0-6 months  |MAL-ED         |BANGLADESH   |>=155 cm     |            0|     33|   260|
|0-6 months  |MAL-ED         |BANGLADESH   |>=155 cm     |            1|      6|   260|
|0-6 months  |MAL-ED         |BANGLADESH   |[151-155) cm |            0|     38|   260|
|0-6 months  |MAL-ED         |BANGLADESH   |[151-155) cm |            1|     20|   260|
|0-6 months  |MAL-ED         |BANGLADESH   |<151 cm      |            0|     98|   260|
|0-6 months  |MAL-ED         |BANGLADESH   |<151 cm      |            1|     65|   260|
|0-6 months  |MAL-ED         |PERU         |>=155 cm     |            0|     42|   299|
|0-6 months  |MAL-ED         |PERU         |>=155 cm     |            1|     28|   299|
|0-6 months  |MAL-ED         |PERU         |[151-155) cm |            0|     37|   299|
|0-6 months  |MAL-ED         |PERU         |[151-155) cm |            1|     21|   299|
|0-6 months  |MAL-ED         |PERU         |<151 cm      |            0|     94|   299|
|0-6 months  |MAL-ED         |PERU         |<151 cm      |            1|     77|   299|
|0-6 months  |MAL-ED         |NEPAL        |>=155 cm     |            0|     37|   240|
|0-6 months  |MAL-ED         |NEPAL        |>=155 cm     |            1|      7|   240|
|0-6 months  |MAL-ED         |NEPAL        |[151-155) cm |            0|     47|   240|
|0-6 months  |MAL-ED         |NEPAL        |[151-155) cm |            1|     13|   240|
|0-6 months  |MAL-ED         |NEPAL        |<151 cm      |            0|    113|   240|
|0-6 months  |MAL-ED         |NEPAL        |<151 cm      |            1|     23|   240|
|0-6 months  |MAL-ED         |BRAZIL       |>=155 cm     |            0|     80|   231|
|0-6 months  |MAL-ED         |BRAZIL       |>=155 cm     |            1|     30|   231|
|0-6 months  |MAL-ED         |BRAZIL       |[151-155) cm |            0|     42|   231|
|0-6 months  |MAL-ED         |BRAZIL       |[151-155) cm |            1|      7|   231|
|0-6 months  |MAL-ED         |BRAZIL       |<151 cm      |            0|     58|   231|
|0-6 months  |MAL-ED         |BRAZIL       |<151 cm      |            1|     14|   231|
|0-6 months  |MAL-ED         |TANZANIA     |>=155 cm     |            0|     86|   257|
|0-6 months  |MAL-ED         |TANZANIA     |>=155 cm     |            1|     64|   257|
|0-6 months  |MAL-ED         |TANZANIA     |[151-155) cm |            0|     25|   257|
|0-6 months  |MAL-ED         |TANZANIA     |[151-155) cm |            1|     19|   257|
|0-6 months  |MAL-ED         |TANZANIA     |<151 cm      |            0|     39|   257|
|0-6 months  |MAL-ED         |TANZANIA     |<151 cm      |            1|     24|   257|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=155 cm     |            0|    136|   290|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=155 cm     |            1|     80|   290|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[151-155) cm |            0|     25|   290|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[151-155) cm |            1|     13|   290|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<151 cm      |            0|     22|   290|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<151 cm      |            1|     14|   290|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=155 cm     |            0|     93|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=155 cm     |            1|     22|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |[151-155) cm |            0|    101|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |[151-155) cm |            1|     43|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |<151 cm      |            0|    215|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |<151 cm      |            1|    155|   629|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=155 cm     |            0|    117|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=155 cm     |            1|     33|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[151-155) cm |            0|    133|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[151-155) cm |            1|     53|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<151 cm      |            0|    278|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<151 cm      |            1|    143|   757|
|0-6 months  |PROBIT         |BELARUS      |>=155 cm     |            0|  12381| 13803|
|0-6 months  |PROBIT         |BELARUS      |>=155 cm     |            1|    875| 13803|
|0-6 months  |PROBIT         |BELARUS      |[151-155) cm |            0|    374| 13803|
|0-6 months  |PROBIT         |BELARUS      |[151-155) cm |            1|     27| 13803|
|0-6 months  |PROBIT         |BELARUS      |<151 cm      |            0|    140| 13803|
|0-6 months  |PROBIT         |BELARUS      |<151 cm      |            1|      6| 13803|
|0-6 months  |PROVIDE        |BANGLADESH   |>=155 cm     |            0|    102|   668|
|0-6 months  |PROVIDE        |BANGLADESH   |>=155 cm     |            1|     32|   668|
|0-6 months  |PROVIDE        |BANGLADESH   |[151-155) cm |            0|    139|   668|
|0-6 months  |PROVIDE        |BANGLADESH   |[151-155) cm |            1|     41|   668|
|0-6 months  |PROVIDE        |BANGLADESH   |<151 cm      |            0|    270|   668|
|0-6 months  |PROVIDE        |BANGLADESH   |<151 cm      |            1|     84|   668|
|0-6 months  |SAS-CompFeed   |INDIA        |>=155 cm     |            0|    386|  1507|
|0-6 months  |SAS-CompFeed   |INDIA        |>=155 cm     |            1|    237|  1507|
|0-6 months  |SAS-CompFeed   |INDIA        |[151-155) cm |            0|    171|  1507|
|0-6 months  |SAS-CompFeed   |INDIA        |[151-155) cm |            1|    140|  1507|
|0-6 months  |SAS-CompFeed   |INDIA        |<151 cm      |            0|    307|  1507|
|0-6 months  |SAS-CompFeed   |INDIA        |<151 cm      |            1|    266|  1507|
|0-6 months  |SAS-FoodSuppl  |INDIA        |>=155 cm     |            0|     50|   414|
|0-6 months  |SAS-FoodSuppl  |INDIA        |>=155 cm     |            1|     33|   414|
|0-6 months  |SAS-FoodSuppl  |INDIA        |[151-155) cm |            0|     74|   414|
|0-6 months  |SAS-FoodSuppl  |INDIA        |[151-155) cm |            1|     40|   414|
|0-6 months  |SAS-FoodSuppl  |INDIA        |<151 cm      |            0|    128|   414|
|0-6 months  |SAS-FoodSuppl  |INDIA        |<151 cm      |            1|     89|   414|
|0-6 months  |TanzaniaChild2 |TANZANIA     |>=155 cm     |            0|   1242|  2377|
|0-6 months  |TanzaniaChild2 |TANZANIA     |>=155 cm     |            1|    278|  2377|
|0-6 months  |TanzaniaChild2 |TANZANIA     |[151-155) cm |            0|    392|  2377|
|0-6 months  |TanzaniaChild2 |TANZANIA     |[151-155) cm |            1|    103|  2377|
|0-6 months  |TanzaniaChild2 |TANZANIA     |<151 cm      |            0|    279|  2377|
|0-6 months  |TanzaniaChild2 |TANZANIA     |<151 cm      |            1|     83|  2377|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=155 cm     |            0|   5526|  9642|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=155 cm     |            1|   2132|  9642|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[151-155) cm |            0|   1008|  9642|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[151-155) cm |            1|    412|  9642|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<151 cm      |            0|    375|  9642|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<151 cm      |            1|    189|  9642|
|6-24 months |COHORTS        |INDIA        |>=155 cm     |            0|   3230|  5706|
|6-24 months |COHORTS        |INDIA        |>=155 cm     |            1|   1022|  5706|
|6-24 months |COHORTS        |INDIA        |[151-155) cm |            0|    394|  5706|
|6-24 months |COHORTS        |INDIA        |[151-155) cm |            1|    141|  5706|
|6-24 months |COHORTS        |INDIA        |<151 cm      |            0|    670|  5706|
|6-24 months |COHORTS        |INDIA        |<151 cm      |            1|    249|  5706|
|6-24 months |COHORTS        |GUATEMALA    |>=155 cm     |            0|     44|   827|
|6-24 months |COHORTS        |GUATEMALA    |>=155 cm     |            1|     55|   827|
|6-24 months |COHORTS        |GUATEMALA    |[151-155) cm |            0|     39|   827|
|6-24 months |COHORTS        |GUATEMALA    |[151-155) cm |            1|    127|   827|
|6-24 months |COHORTS        |GUATEMALA    |<151 cm      |            0|    114|   827|
|6-24 months |COHORTS        |GUATEMALA    |<151 cm      |            1|    448|   827|
|6-24 months |COHORTS        |PHILIPPINES  |>=155 cm     |            0|    253|  2120|
|6-24 months |COHORTS        |PHILIPPINES  |>=155 cm     |            1|    288|  2120|
|6-24 months |COHORTS        |PHILIPPINES  |[151-155) cm |            0|    219|  2120|
|6-24 months |COHORTS        |PHILIPPINES  |[151-155) cm |            1|    333|  2120|
|6-24 months |COHORTS        |PHILIPPINES  |<151 cm      |            0|    281|  2120|
|6-24 months |COHORTS        |PHILIPPINES  |<151 cm      |            1|    746|  2120|
|6-24 months |Guatemala BSC  |GUATEMALA    |>=155 cm     |            0|     22|   153|
|6-24 months |Guatemala BSC  |GUATEMALA    |>=155 cm     |            1|     11|   153|
|6-24 months |Guatemala BSC  |GUATEMALA    |[151-155) cm |            0|     19|   153|
|6-24 months |Guatemala BSC  |GUATEMALA    |[151-155) cm |            1|      9|   153|
|6-24 months |Guatemala BSC  |GUATEMALA    |<151 cm      |            0|     55|   153|
|6-24 months |Guatemala BSC  |GUATEMALA    |<151 cm      |            1|     37|   153|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |>=155 cm     |            0|   1849|  3225|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |>=155 cm     |            1|    978|  3225|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |[151-155) cm |            0|    163|  3225|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |[151-155) cm |            1|    120|  3225|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |<151 cm      |            0|     57|  3225|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |<151 cm      |            1|     58|  3225|
|6-24 months |JiVitA-3       |BANGLADESH   |>=155 cm     |            0|   1525| 10413|
|6-24 months |JiVitA-3       |BANGLADESH   |>=155 cm     |            1|    397| 10413|
|6-24 months |JiVitA-3       |BANGLADESH   |[151-155) cm |            0|   2113| 10413|
|6-24 months |JiVitA-3       |BANGLADESH   |[151-155) cm |            1|    564| 10413|
|6-24 months |JiVitA-3       |BANGLADESH   |<151 cm      |            0|   4523| 10413|
|6-24 months |JiVitA-3       |BANGLADESH   |<151 cm      |            1|   1291| 10413|
|6-24 months |Keneba         |GAMBIA       |>=155 cm     |            0|    866|  1742|
|6-24 months |Keneba         |GAMBIA       |>=155 cm     |            1|    496|  1742|
|6-24 months |Keneba         |GAMBIA       |[151-155) cm |            0|    153|  1742|
|6-24 months |Keneba         |GAMBIA       |[151-155) cm |            1|     85|  1742|
|6-24 months |Keneba         |GAMBIA       |<151 cm      |            0|     91|  1742|
|6-24 months |Keneba         |GAMBIA       |<151 cm      |            1|     51|  1742|
|6-24 months |LCNI-5         |MALAWI       |>=155 cm     |            0|    174|   727|
|6-24 months |LCNI-5         |MALAWI       |>=155 cm     |            1|    256|   727|
|6-24 months |LCNI-5         |MALAWI       |[151-155) cm |            0|     58|   727|
|6-24 months |LCNI-5         |MALAWI       |[151-155) cm |            1|     94|   727|
|6-24 months |LCNI-5         |MALAWI       |<151 cm      |            0|     58|   727|
|6-24 months |LCNI-5         |MALAWI       |<151 cm      |            1|     87|   727|
|6-24 months |MAL-ED         |INDIA        |>=155 cm     |            0|     25|   151|
|6-24 months |MAL-ED         |INDIA        |>=155 cm     |            1|     13|   151|
|6-24 months |MAL-ED         |INDIA        |[151-155) cm |            0|     20|   151|
|6-24 months |MAL-ED         |INDIA        |[151-155) cm |            1|     14|   151|
|6-24 months |MAL-ED         |INDIA        |<151 cm      |            0|     42|   151|
|6-24 months |MAL-ED         |INDIA        |<151 cm      |            1|     37|   151|
|6-24 months |MAL-ED         |BANGLADESH   |>=155 cm     |            0|     18|   157|
|6-24 months |MAL-ED         |BANGLADESH   |>=155 cm     |            1|     13|   157|
|6-24 months |MAL-ED         |BANGLADESH   |[151-155) cm |            0|     22|   157|
|6-24 months |MAL-ED         |BANGLADESH   |[151-155) cm |            1|     14|   157|
|6-24 months |MAL-ED         |BANGLADESH   |<151 cm      |            0|     51|   157|
|6-24 months |MAL-ED         |BANGLADESH   |<151 cm      |            1|     39|   157|
|6-24 months |MAL-ED         |PERU         |>=155 cm     |            0|     26|   148|
|6-24 months |MAL-ED         |PERU         |>=155 cm     |            1|     13|   148|
|6-24 months |MAL-ED         |PERU         |[151-155) cm |            0|     16|   148|
|6-24 months |MAL-ED         |PERU         |[151-155) cm |            1|     15|   148|
|6-24 months |MAL-ED         |PERU         |<151 cm      |            0|     47|   148|
|6-24 months |MAL-ED         |PERU         |<151 cm      |            1|     31|   148|
|6-24 months |MAL-ED         |NEPAL        |>=155 cm     |            0|     33|   194|
|6-24 months |MAL-ED         |NEPAL        |>=155 cm     |            1|      3|   194|
|6-24 months |MAL-ED         |NEPAL        |[151-155) cm |            0|     35|   194|
|6-24 months |MAL-ED         |NEPAL        |[151-155) cm |            1|     10|   194|
|6-24 months |MAL-ED         |NEPAL        |<151 cm      |            0|     85|   194|
|6-24 months |MAL-ED         |NEPAL        |<151 cm      |            1|     28|   194|
|6-24 months |MAL-ED         |BRAZIL       |>=155 cm     |            0|     68|   162|
|6-24 months |MAL-ED         |BRAZIL       |>=155 cm     |            1|      2|   162|
|6-24 months |MAL-ED         |BRAZIL       |[151-155) cm |            0|     30|   162|
|6-24 months |MAL-ED         |BRAZIL       |[151-155) cm |            1|      7|   162|
|6-24 months |MAL-ED         |BRAZIL       |<151 cm      |            0|     53|   162|
|6-24 months |MAL-ED         |BRAZIL       |<151 cm      |            1|      2|   162|
|6-24 months |MAL-ED         |TANZANIA     |>=155 cm     |            0|     20|   141|
|6-24 months |MAL-ED         |TANZANIA     |>=155 cm     |            1|     63|   141|
|6-24 months |MAL-ED         |TANZANIA     |[151-155) cm |            0|      6|   141|
|6-24 months |MAL-ED         |TANZANIA     |[151-155) cm |            1|     18|   141|
|6-24 months |MAL-ED         |TANZANIA     |<151 cm      |            0|      5|   141|
|6-24 months |MAL-ED         |TANZANIA     |<151 cm      |            1|     29|   141|
|6-24 months |MAL-ED         |SOUTH AFRICA |>=155 cm     |            0|     76|   154|
|6-24 months |MAL-ED         |SOUTH AFRICA |>=155 cm     |            1|     37|   154|
|6-24 months |MAL-ED         |SOUTH AFRICA |[151-155) cm |            0|     13|   154|
|6-24 months |MAL-ED         |SOUTH AFRICA |[151-155) cm |            1|     10|   154|
|6-24 months |MAL-ED         |SOUTH AFRICA |<151 cm      |            0|      8|   154|
|6-24 months |MAL-ED         |SOUTH AFRICA |<151 cm      |            1|     10|   154|
|6-24 months |NIH-Birth      |BANGLADESH   |>=155 cm     |            0|     42|   345|
|6-24 months |NIH-Birth      |BANGLADESH   |>=155 cm     |            1|     33|   345|
|6-24 months |NIH-Birth      |BANGLADESH   |[151-155) cm |            0|     43|   345|
|6-24 months |NIH-Birth      |BANGLADESH   |[151-155) cm |            1|     46|   345|
|6-24 months |NIH-Birth      |BANGLADESH   |<151 cm      |            0|     62|   345|
|6-24 months |NIH-Birth      |BANGLADESH   |<151 cm      |            1|    119|   345|
|6-24 months |NIH-Crypto     |BANGLADESH   |>=155 cm     |            0|     96|   505|
|6-24 months |NIH-Crypto     |BANGLADESH   |>=155 cm     |            1|     18|   505|
|6-24 months |NIH-Crypto     |BANGLADESH   |[151-155) cm |            0|     93|   505|
|6-24 months |NIH-Crypto     |BANGLADESH   |[151-155) cm |            1|     30|   505|
|6-24 months |NIH-Crypto     |BANGLADESH   |<151 cm      |            0|    183|   505|
|6-24 months |NIH-Crypto     |BANGLADESH   |<151 cm      |            1|     85|   505|
|6-24 months |PROBIT         |BELARUS      |>=155 cm     |            0|  11534| 12879|
|6-24 months |PROBIT         |BELARUS      |>=155 cm     |            1|    831| 12879|
|6-24 months |PROBIT         |BELARUS      |[151-155) cm |            0|    349| 12879|
|6-24 months |PROBIT         |BELARUS      |[151-155) cm |            1|     25| 12879|
|6-24 months |PROBIT         |BELARUS      |<151 cm      |            0|    128| 12879|
|6-24 months |PROBIT         |BELARUS      |<151 cm      |            1|     12| 12879|
|6-24 months |PROVIDE        |BANGLADESH   |>=155 cm     |            0|     66|   449|
|6-24 months |PROVIDE        |BANGLADESH   |>=155 cm     |            1|     19|   449|
|6-24 months |PROVIDE        |BANGLADESH   |[151-155) cm |            0|     87|   449|
|6-24 months |PROVIDE        |BANGLADESH   |[151-155) cm |            1|     37|   449|
|6-24 months |PROVIDE        |BANGLADESH   |<151 cm      |            0|    161|   449|
|6-24 months |PROVIDE        |BANGLADESH   |<151 cm      |            1|     79|   449|
|6-24 months |SAS-CompFeed   |INDIA        |>=155 cm     |            0|    189|   800|
|6-24 months |SAS-CompFeed   |INDIA        |>=155 cm     |            1|    166|   800|
|6-24 months |SAS-CompFeed   |INDIA        |[151-155) cm |            0|     72|   800|
|6-24 months |SAS-CompFeed   |INDIA        |[151-155) cm |            1|     89|   800|
|6-24 months |SAS-CompFeed   |INDIA        |<151 cm      |            0|    140|   800|
|6-24 months |SAS-CompFeed   |INDIA        |<151 cm      |            1|    144|   800|
|6-24 months |SAS-FoodSuppl  |INDIA        |>=155 cm     |            0|     11|   241|
|6-24 months |SAS-FoodSuppl  |INDIA        |>=155 cm     |            1|     38|   241|
|6-24 months |SAS-FoodSuppl  |INDIA        |[151-155) cm |            0|     20|   241|
|6-24 months |SAS-FoodSuppl  |INDIA        |[151-155) cm |            1|     49|   241|
|6-24 months |SAS-FoodSuppl  |INDIA        |<151 cm      |            0|     28|   241|
|6-24 months |SAS-FoodSuppl  |INDIA        |<151 cm      |            1|     95|   241|
|6-24 months |TanzaniaChild2 |TANZANIA     |>=155 cm     |            0|    807|  1587|
|6-24 months |TanzaniaChild2 |TANZANIA     |>=155 cm     |            1|    231|  1587|
|6-24 months |TanzaniaChild2 |TANZANIA     |[151-155) cm |            0|    263|  1587|
|6-24 months |TanzaniaChild2 |TANZANIA     |[151-155) cm |            1|     74|  1587|
|6-24 months |TanzaniaChild2 |TANZANIA     |<151 cm      |            0|    159|  1587|
|6-24 months |TanzaniaChild2 |TANZANIA     |<151 cm      |            1|     53|  1587|
|6-24 months |ZVITAMBO       |ZIMBABWE     |>=155 cm     |            0|   3814|  6400|
|6-24 months |ZVITAMBO       |ZIMBABWE     |>=155 cm     |            1|   1286|  6400|
|6-24 months |ZVITAMBO       |ZIMBABWE     |[151-155) cm |            0|    673|  6400|
|6-24 months |ZVITAMBO       |ZIMBABWE     |[151-155) cm |            1|    281|  6400|
|6-24 months |ZVITAMBO       |ZIMBABWE     |<151 cm      |            0|    236|  6400|
|6-24 months |ZVITAMBO       |ZIMBABWE     |<151 cm      |            1|    110|  6400|


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL





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


