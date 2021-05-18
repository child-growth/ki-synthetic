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

**Outcome Variable:** stunted

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

|agecat    |studyid        |country      |mhtcm        | stunted| n_cell|     n|
|:---------|:--------------|:------------|:------------|-------:|------:|-----:|
|Birth     |COHORTS        |INDIA        |>=155 cm     |       0|   4305|  6640|
|Birth     |COHORTS        |INDIA        |>=155 cm     |       1|    572|  6640|
|Birth     |COHORTS        |INDIA        |[151-155) cm |       0|    577|  6640|
|Birth     |COHORTS        |INDIA        |[151-155) cm |       1|     70|  6640|
|Birth     |COHORTS        |INDIA        |<151 cm      |       0|    966|  6640|
|Birth     |COHORTS        |INDIA        |<151 cm      |       1|    150|  6640|
|Birth     |COHORTS        |GUATEMALA    |>=155 cm     |       0|     84|   826|
|Birth     |COHORTS        |GUATEMALA    |>=155 cm     |       1|      6|   826|
|Birth     |COHORTS        |GUATEMALA    |[151-155) cm |       0|    154|   826|
|Birth     |COHORTS        |GUATEMALA    |[151-155) cm |       1|      7|   826|
|Birth     |COHORTS        |GUATEMALA    |<151 cm      |       0|    541|   826|
|Birth     |COHORTS        |GUATEMALA    |<151 cm      |       1|     34|   826|
|Birth     |COHORTS        |PHILIPPINES  |>=155 cm     |       0|    671|  3049|
|Birth     |COHORTS        |PHILIPPINES  |>=155 cm     |       1|     22|  3049|
|Birth     |COHORTS        |PHILIPPINES  |[151-155) cm |       0|    704|  3049|
|Birth     |COHORTS        |PHILIPPINES  |[151-155) cm |       1|     32|  3049|
|Birth     |COHORTS        |PHILIPPINES  |<151 cm      |       0|   1487|  3049|
|Birth     |COHORTS        |PHILIPPINES  |<151 cm      |       1|    133|  3049|
|Birth     |JiVitA-3       |BANGLADESH   |>=155 cm     |       0|   2599| 22249|
|Birth     |JiVitA-3       |BANGLADESH   |>=155 cm     |       1|   1154| 22249|
|Birth     |JiVitA-3       |BANGLADESH   |[151-155) cm |       0|   3741| 22249|
|Birth     |JiVitA-3       |BANGLADESH   |[151-155) cm |       1|   1652| 22249|
|Birth     |JiVitA-3       |BANGLADESH   |<151 cm      |       0|   8588| 22249|
|Birth     |JiVitA-3       |BANGLADESH   |<151 cm      |       1|   4515| 22249|
|Birth     |Keneba         |GAMBIA       |>=155 cm     |       0|    999|  1360|
|Birth     |Keneba         |GAMBIA       |>=155 cm     |       1|     57|  1360|
|Birth     |Keneba         |GAMBIA       |[151-155) cm |       0|    176|  1360|
|Birth     |Keneba         |GAMBIA       |[151-155) cm |       1|     11|  1360|
|Birth     |Keneba         |GAMBIA       |<151 cm      |       0|    109|  1360|
|Birth     |Keneba         |GAMBIA       |<151 cm      |       1|      8|  1360|
|Birth     |MAL-ED         |INDIA        |>=155 cm     |       0|     11|    47|
|Birth     |MAL-ED         |INDIA        |>=155 cm     |       1|      2|    47|
|Birth     |MAL-ED         |INDIA        |[151-155) cm |       0|     12|    47|
|Birth     |MAL-ED         |INDIA        |[151-155) cm |       1|      2|    47|
|Birth     |MAL-ED         |INDIA        |<151 cm      |       0|     14|    47|
|Birth     |MAL-ED         |INDIA        |<151 cm      |       1|      6|    47|
|Birth     |MAL-ED         |BANGLADESH   |>=155 cm     |       0|     29|   226|
|Birth     |MAL-ED         |BANGLADESH   |>=155 cm     |       1|      4|   226|
|Birth     |MAL-ED         |BANGLADESH   |[151-155) cm |       0|     39|   226|
|Birth     |MAL-ED         |BANGLADESH   |[151-155) cm |       1|      9|   226|
|Birth     |MAL-ED         |BANGLADESH   |<151 cm      |       0|    116|   226|
|Birth     |MAL-ED         |BANGLADESH   |<151 cm      |       1|     29|   226|
|Birth     |MAL-ED         |PERU         |>=155 cm     |       0|     53|   229|
|Birth     |MAL-ED         |PERU         |>=155 cm     |       1|      3|   229|
|Birth     |MAL-ED         |PERU         |[151-155) cm |       0|     40|   229|
|Birth     |MAL-ED         |PERU         |[151-155) cm |       1|      5|   229|
|Birth     |MAL-ED         |PERU         |<151 cm      |       0|    111|   229|
|Birth     |MAL-ED         |PERU         |<151 cm      |       1|     17|   229|
|Birth     |MAL-ED         |NEPAL        |>=155 cm     |       0|      4|    27|
|Birth     |MAL-ED         |NEPAL        |>=155 cm     |       1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |[151-155) cm |       0|      6|    27|
|Birth     |MAL-ED         |NEPAL        |[151-155) cm |       1|      2|    27|
|Birth     |MAL-ED         |NEPAL        |<151 cm      |       0|     15|    27|
|Birth     |MAL-ED         |NEPAL        |<151 cm      |       1|      0|    27|
|Birth     |MAL-ED         |BRAZIL       |>=155 cm     |       0|     25|    65|
|Birth     |MAL-ED         |BRAZIL       |>=155 cm     |       1|      4|    65|
|Birth     |MAL-ED         |BRAZIL       |[151-155) cm |       0|     12|    65|
|Birth     |MAL-ED         |BRAZIL       |[151-155) cm |       1|      1|    65|
|Birth     |MAL-ED         |BRAZIL       |<151 cm      |       0|     19|    65|
|Birth     |MAL-ED         |BRAZIL       |<151 cm      |       1|      4|    65|
|Birth     |MAL-ED         |TANZANIA     |>=155 cm     |       0|     57|   122|
|Birth     |MAL-ED         |TANZANIA     |>=155 cm     |       1|     16|   122|
|Birth     |MAL-ED         |TANZANIA     |[151-155) cm |       0|     16|   122|
|Birth     |MAL-ED         |TANZANIA     |[151-155) cm |       1|      1|   122|
|Birth     |MAL-ED         |TANZANIA     |<151 cm      |       0|     27|   122|
|Birth     |MAL-ED         |TANZANIA     |<151 cm      |       1|      5|   122|
|Birth     |MAL-ED         |SOUTH AFRICA |>=155 cm     |       0|     80|   112|
|Birth     |MAL-ED         |SOUTH AFRICA |>=155 cm     |       1|      7|   112|
|Birth     |MAL-ED         |SOUTH AFRICA |[151-155) cm |       0|     13|   112|
|Birth     |MAL-ED         |SOUTH AFRICA |[151-155) cm |       1|      1|   112|
|Birth     |MAL-ED         |SOUTH AFRICA |<151 cm      |       0|      9|   112|
|Birth     |MAL-ED         |SOUTH AFRICA |<151 cm      |       1|      2|   112|
|Birth     |NIH-Birth      |BANGLADESH   |>=155 cm     |       0|     99|   608|
|Birth     |NIH-Birth      |BANGLADESH   |>=155 cm     |       1|     11|   608|
|Birth     |NIH-Birth      |BANGLADESH   |[151-155) cm |       0|    119|   608|
|Birth     |NIH-Birth      |BANGLADESH   |[151-155) cm |       1|     21|   608|
|Birth     |NIH-Birth      |BANGLADESH   |<151 cm      |       0|    293|   608|
|Birth     |NIH-Birth      |BANGLADESH   |<151 cm      |       1|     65|   608|
|Birth     |NIH-Crypto     |BANGLADESH   |>=155 cm     |       0|    129|   731|
|Birth     |NIH-Crypto     |BANGLADESH   |>=155 cm     |       1|     16|   731|
|Birth     |NIH-Crypto     |BANGLADESH   |[151-155) cm |       0|    157|   731|
|Birth     |NIH-Crypto     |BANGLADESH   |[151-155) cm |       1|     23|   731|
|Birth     |NIH-Crypto     |BANGLADESH   |<151 cm      |       0|    344|   731|
|Birth     |NIH-Crypto     |BANGLADESH   |<151 cm      |       1|     62|   731|
|Birth     |PROBIT         |BELARUS      |>=155 cm     |       0|  13142| 13719|
|Birth     |PROBIT         |BELARUS      |>=155 cm     |       1|     32| 13719|
|Birth     |PROBIT         |BELARUS      |[151-155) cm |       0|    397| 13719|
|Birth     |PROBIT         |BELARUS      |[151-155) cm |       1|      2| 13719|
|Birth     |PROBIT         |BELARUS      |<151 cm      |       0|    146| 13719|
|Birth     |PROBIT         |BELARUS      |<151 cm      |       1|      0| 13719|
|Birth     |PROVIDE        |BANGLADESH   |>=155 cm     |       0|     94|   516|
|Birth     |PROVIDE        |BANGLADESH   |>=155 cm     |       1|      9|   516|
|Birth     |PROVIDE        |BANGLADESH   |[151-155) cm |       0|    132|   516|
|Birth     |PROVIDE        |BANGLADESH   |[151-155) cm |       1|     10|   516|
|Birth     |PROVIDE        |BANGLADESH   |<151 cm      |       0|    245|   516|
|Birth     |PROVIDE        |BANGLADESH   |<151 cm      |       1|     26|   516|
|Birth     |SAS-CompFeed   |INDIA        |>=155 cm     |       0|    375|  1230|
|Birth     |SAS-CompFeed   |INDIA        |>=155 cm     |       1|    127|  1230|
|Birth     |SAS-CompFeed   |INDIA        |[151-155) cm |       0|    177|  1230|
|Birth     |SAS-CompFeed   |INDIA        |[151-155) cm |       1|     73|  1230|
|Birth     |SAS-CompFeed   |INDIA        |<151 cm      |       0|    332|  1230|
|Birth     |SAS-CompFeed   |INDIA        |<151 cm      |       1|    146|  1230|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=155 cm     |       0|   6822|  9512|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=155 cm     |       1|    731|  9512|
|Birth     |ZVITAMBO       |ZIMBABWE     |[151-155) cm |       0|   1267|  9512|
|Birth     |ZVITAMBO       |ZIMBABWE     |[151-155) cm |       1|    135|  9512|
|Birth     |ZVITAMBO       |ZIMBABWE     |<151 cm      |       0|    486|  9512|
|Birth     |ZVITAMBO       |ZIMBABWE     |<151 cm      |       1|     71|  9512|
|6 months  |COHORTS        |INDIA        |>=155 cm     |       0|   4144|  6860|
|6 months  |COHORTS        |INDIA        |>=155 cm     |       1|    917|  6860|
|6 months  |COHORTS        |INDIA        |[151-155) cm |       0|    527|  6860|
|6 months  |COHORTS        |INDIA        |[151-155) cm |       1|    118|  6860|
|6 months  |COHORTS        |INDIA        |<151 cm      |       0|    917|  6860|
|6 months  |COHORTS        |INDIA        |<151 cm      |       1|    237|  6860|
|6 months  |COHORTS        |GUATEMALA    |>=155 cm     |       0|     79|   926|
|6 months  |COHORTS        |GUATEMALA    |>=155 cm     |       1|     21|   926|
|6 months  |COHORTS        |GUATEMALA    |[151-155) cm |       0|    114|   926|
|6 months  |COHORTS        |GUATEMALA    |[151-155) cm |       1|     57|   926|
|6 months  |COHORTS        |GUATEMALA    |<151 cm      |       0|    352|   926|
|6 months  |COHORTS        |GUATEMALA    |<151 cm      |       1|    303|   926|
|6 months  |COHORTS        |PHILIPPINES  |>=155 cm     |       0|    537|  2707|
|6 months  |COHORTS        |PHILIPPINES  |>=155 cm     |       1|     82|  2707|
|6 months  |COHORTS        |PHILIPPINES  |[151-155) cm |       0|    552|  2707|
|6 months  |COHORTS        |PHILIPPINES  |[151-155) cm |       1|    105|  2707|
|6 months  |COHORTS        |PHILIPPINES  |<151 cm      |       0|   1047|  2707|
|6 months  |COHORTS        |PHILIPPINES  |<151 cm      |       1|    384|  2707|
|6 months  |Guatemala BSC  |GUATEMALA    |>=155 cm     |       0|     34|   239|
|6 months  |Guatemala BSC  |GUATEMALA    |>=155 cm     |       1|     15|   239|
|6 months  |Guatemala BSC  |GUATEMALA    |[151-155) cm |       0|     31|   239|
|6 months  |Guatemala BSC  |GUATEMALA    |[151-155) cm |       1|     12|   239|
|6 months  |Guatemala BSC  |GUATEMALA    |<151 cm      |       0|    103|   239|
|6 months  |Guatemala BSC  |GUATEMALA    |<151 cm      |       1|     44|   239|
|6 months  |JiVitA-3       |BANGLADESH   |>=155 cm     |       0|   2245| 16695|
|6 months  |JiVitA-3       |BANGLADESH   |>=155 cm     |       1|    655| 16695|
|6 months  |JiVitA-3       |BANGLADESH   |[151-155) cm |       0|   3175| 16695|
|6 months  |JiVitA-3       |BANGLADESH   |[151-155) cm |       1|    980| 16695|
|6 months  |JiVitA-3       |BANGLADESH   |<151 cm      |       0|   7075| 16695|
|6 months  |JiVitA-3       |BANGLADESH   |<151 cm      |       1|   2565| 16695|
|6 months  |Keneba         |GAMBIA       |>=155 cm     |       0|   1194|  1803|
|6 months  |Keneba         |GAMBIA       |>=155 cm     |       1|    200|  1803|
|6 months  |Keneba         |GAMBIA       |[151-155) cm |       0|    208|  1803|
|6 months  |Keneba         |GAMBIA       |[151-155) cm |       1|     40|  1803|
|6 months  |Keneba         |GAMBIA       |<151 cm      |       0|    136|  1803|
|6 months  |Keneba         |GAMBIA       |<151 cm      |       1|     25|  1803|
|6 months  |LCNI-5         |MALAWI       |>=155 cm     |       0|    315|   835|
|6 months  |LCNI-5         |MALAWI       |>=155 cm     |       1|    177|   835|
|6 months  |LCNI-5         |MALAWI       |[151-155) cm |       0|    112|   835|
|6 months  |LCNI-5         |MALAWI       |[151-155) cm |       1|     60|   835|
|6 months  |LCNI-5         |MALAWI       |<151 cm      |       0|    101|   835|
|6 months  |LCNI-5         |MALAWI       |<151 cm      |       1|     70|   835|
|6 months  |MAL-ED         |INDIA        |>=155 cm     |       0|     47|   233|
|6 months  |MAL-ED         |INDIA        |>=155 cm     |       1|     13|   233|
|6 months  |MAL-ED         |INDIA        |[151-155) cm |       0|     41|   233|
|6 months  |MAL-ED         |INDIA        |[151-155) cm |       1|     14|   233|
|6 months  |MAL-ED         |INDIA        |<151 cm      |       0|    100|   233|
|6 months  |MAL-ED         |INDIA        |<151 cm      |       1|     18|   233|
|6 months  |MAL-ED         |BANGLADESH   |>=155 cm     |       0|     34|   238|
|6 months  |MAL-ED         |BANGLADESH   |>=155 cm     |       1|      1|   238|
|6 months  |MAL-ED         |BANGLADESH   |[151-155) cm |       0|     42|   238|
|6 months  |MAL-ED         |BANGLADESH   |[151-155) cm |       1|     12|   238|
|6 months  |MAL-ED         |BANGLADESH   |<151 cm      |       0|    120|   238|
|6 months  |MAL-ED         |BANGLADESH   |<151 cm      |       1|     29|   238|
|6 months  |MAL-ED         |PERU         |>=155 cm     |       0|     55|   269|
|6 months  |MAL-ED         |PERU         |>=155 cm     |       1|     11|   269|
|6 months  |MAL-ED         |PERU         |[151-155) cm |       0|     44|   269|
|6 months  |MAL-ED         |PERU         |[151-155) cm |       1|      9|   269|
|6 months  |MAL-ED         |PERU         |<151 cm      |       0|    112|   269|
|6 months  |MAL-ED         |PERU         |<151 cm      |       1|     38|   269|
|6 months  |MAL-ED         |NEPAL        |>=155 cm     |       0|     41|   236|
|6 months  |MAL-ED         |NEPAL        |>=155 cm     |       1|      3|   236|
|6 months  |MAL-ED         |NEPAL        |[151-155) cm |       0|     57|   236|
|6 months  |MAL-ED         |NEPAL        |[151-155) cm |       1|      1|   236|
|6 months  |MAL-ED         |NEPAL        |<151 cm      |       0|    126|   236|
|6 months  |MAL-ED         |NEPAL        |<151 cm      |       1|      8|   236|
|6 months  |MAL-ED         |BRAZIL       |>=155 cm     |       0|     93|   208|
|6 months  |MAL-ED         |BRAZIL       |>=155 cm     |       1|      4|   208|
|6 months  |MAL-ED         |BRAZIL       |[151-155) cm |       0|     43|   208|
|6 months  |MAL-ED         |BRAZIL       |[151-155) cm |       1|      0|   208|
|6 months  |MAL-ED         |BRAZIL       |<151 cm      |       0|     66|   208|
|6 months  |MAL-ED         |BRAZIL       |<151 cm      |       1|      2|   208|
|6 months  |MAL-ED         |TANZANIA     |>=155 cm     |       0|    107|   243|
|6 months  |MAL-ED         |TANZANIA     |>=155 cm     |       1|     36|   243|
|6 months  |MAL-ED         |TANZANIA     |[151-155) cm |       0|     32|   243|
|6 months  |MAL-ED         |TANZANIA     |[151-155) cm |       1|     11|   243|
|6 months  |MAL-ED         |TANZANIA     |<151 cm      |       0|     45|   243|
|6 months  |MAL-ED         |TANZANIA     |<151 cm      |       1|     12|   243|
|6 months  |MAL-ED         |SOUTH AFRICA |>=155 cm     |       0|    147|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |>=155 cm     |       1|     33|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |[151-155) cm |       0|     29|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |[151-155) cm |       1|      6|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |<151 cm      |       0|     23|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |<151 cm      |       1|      8|   246|
|6 months  |NIH-Birth      |BANGLADESH   |>=155 cm     |       0|     76|   537|
|6 months  |NIH-Birth      |BANGLADESH   |>=155 cm     |       1|     16|   537|
|6 months  |NIH-Birth      |BANGLADESH   |[151-155) cm |       0|     99|   537|
|6 months  |NIH-Birth      |BANGLADESH   |[151-155) cm |       1|     30|   537|
|6 months  |NIH-Birth      |BANGLADESH   |<151 cm      |       0|    218|   537|
|6 months  |NIH-Birth      |BANGLADESH   |<151 cm      |       1|     98|   537|
|6 months  |NIH-Crypto     |BANGLADESH   |>=155 cm     |       0|    120|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |>=155 cm     |       1|     23|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |[151-155) cm |       0|    137|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |[151-155) cm |       1|     35|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |<151 cm      |       0|    307|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |<151 cm      |       1|     92|   714|
|6 months  |PROBIT         |BELARUS      |>=155 cm     |       0|  12089| 13083|
|6 months  |PROBIT         |BELARUS      |>=155 cm     |       1|    466| 13083|
|6 months  |PROBIT         |BELARUS      |[151-155) cm |       0|    372| 13083|
|6 months  |PROBIT         |BELARUS      |[151-155) cm |       1|     13| 13083|
|6 months  |PROBIT         |BELARUS      |<151 cm      |       0|    137| 13083|
|6 months  |PROBIT         |BELARUS      |<151 cm      |       1|      6| 13083|
|6 months  |PROVIDE        |BANGLADESH   |>=155 cm     |       0|     94|   587|
|6 months  |PROVIDE        |BANGLADESH   |>=155 cm     |       1|     19|   587|
|6 months  |PROVIDE        |BANGLADESH   |[151-155) cm |       0|    139|   587|
|6 months  |PROVIDE        |BANGLADESH   |[151-155) cm |       1|     20|   587|
|6 months  |PROVIDE        |BANGLADESH   |<151 cm      |       0|    266|   587|
|6 months  |PROVIDE        |BANGLADESH   |<151 cm      |       1|     49|   587|
|6 months  |SAS-CompFeed   |INDIA        |>=155 cm     |       0|    417|  1317|
|6 months  |SAS-CompFeed   |INDIA        |>=155 cm     |       1|    127|  1317|
|6 months  |SAS-CompFeed   |INDIA        |[151-155) cm |       0|    190|  1317|
|6 months  |SAS-CompFeed   |INDIA        |[151-155) cm |       1|     86|  1317|
|6 months  |SAS-CompFeed   |INDIA        |<151 cm      |       0|    336|  1317|
|6 months  |SAS-CompFeed   |INDIA        |<151 cm      |       1|    161|  1317|
|6 months  |SAS-FoodSuppl  |INDIA        |>=155 cm     |       0|     44|   378|
|6 months  |SAS-FoodSuppl  |INDIA        |>=155 cm     |       1|     26|   378|
|6 months  |SAS-FoodSuppl  |INDIA        |[151-155) cm |       0|     60|   378|
|6 months  |SAS-FoodSuppl  |INDIA        |[151-155) cm |       1|     41|   378|
|6 months  |SAS-FoodSuppl  |INDIA        |<151 cm      |       0|    111|   378|
|6 months  |SAS-FoodSuppl  |INDIA        |<151 cm      |       1|     96|   378|
|6 months  |TanzaniaChild2 |TANZANIA     |>=155 cm     |       0|   1171|  2010|
|6 months  |TanzaniaChild2 |TANZANIA     |>=155 cm     |       1|    116|  2010|
|6 months  |TanzaniaChild2 |TANZANIA     |[151-155) cm |       0|    389|  2010|
|6 months  |TanzaniaChild2 |TANZANIA     |[151-155) cm |       1|     41|  2010|
|6 months  |TanzaniaChild2 |TANZANIA     |<151 cm      |       0|    255|  2010|
|6 months  |TanzaniaChild2 |TANZANIA     |<151 cm      |       1|     38|  2010|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=155 cm     |       0|   4858|  7249|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=155 cm     |       1|    872|  7249|
|6 months  |ZVITAMBO       |ZIMBABWE     |[151-155) cm |       0|    899|  7249|
|6 months  |ZVITAMBO       |ZIMBABWE     |[151-155) cm |       1|    198|  7249|
|6 months  |ZVITAMBO       |ZIMBABWE     |<151 cm      |       0|    327|  7249|
|6 months  |ZVITAMBO       |ZIMBABWE     |<151 cm      |       1|     95|  7249|
|24 months |COHORTS        |INDIA        |>=155 cm     |       0|   1842|  5337|
|24 months |COHORTS        |INDIA        |>=155 cm     |       1|   1932|  5337|
|24 months |COHORTS        |INDIA        |[151-155) cm |       0|    252|  5337|
|24 months |COHORTS        |INDIA        |[151-155) cm |       1|    314|  5337|
|24 months |COHORTS        |INDIA        |<151 cm      |       0|    387|  5337|
|24 months |COHORTS        |INDIA        |<151 cm      |       1|    610|  5337|
|24 months |COHORTS        |GUATEMALA    |>=155 cm     |       0|     48|   979|
|24 months |COHORTS        |GUATEMALA    |>=155 cm     |       1|     60|   979|
|24 months |COHORTS        |GUATEMALA    |[151-155) cm |       0|     37|   979|
|24 months |COHORTS        |GUATEMALA    |[151-155) cm |       1|    141|   979|
|24 months |COHORTS        |GUATEMALA    |<151 cm      |       0|     99|   979|
|24 months |COHORTS        |GUATEMALA    |<151 cm      |       1|    594|   979|
|24 months |COHORTS        |PHILIPPINES  |>=155 cm     |       0|    295|  2444|
|24 months |COHORTS        |PHILIPPINES  |>=155 cm     |       1|    263|  2444|
|24 months |COHORTS        |PHILIPPINES  |[151-155) cm |       0|    267|  2444|
|24 months |COHORTS        |PHILIPPINES  |[151-155) cm |       1|    321|  2444|
|24 months |COHORTS        |PHILIPPINES  |<151 cm      |       0|    360|  2444|
|24 months |COHORTS        |PHILIPPINES  |<151 cm      |       1|    938|  2444|
|24 months |JiVitA-3       |BANGLADESH   |>=155 cm     |       0|    800|  8576|
|24 months |JiVitA-3       |BANGLADESH   |>=155 cm     |       1|    647|  8576|
|24 months |JiVitA-3       |BANGLADESH   |[151-155) cm |       0|   1137|  8576|
|24 months |JiVitA-3       |BANGLADESH   |[151-155) cm |       1|    992|  8576|
|24 months |JiVitA-3       |BANGLADESH   |<151 cm      |       0|   2426|  8576|
|24 months |JiVitA-3       |BANGLADESH   |<151 cm      |       1|   2574|  8576|
|24 months |Keneba         |GAMBIA       |>=155 cm     |       0|    773|  1509|
|24 months |Keneba         |GAMBIA       |>=155 cm     |       1|    403|  1509|
|24 months |Keneba         |GAMBIA       |[151-155) cm |       0|    137|  1509|
|24 months |Keneba         |GAMBIA       |[151-155) cm |       1|     74|  1509|
|24 months |Keneba         |GAMBIA       |<151 cm      |       0|     79|  1509|
|24 months |Keneba         |GAMBIA       |<151 cm      |       1|     43|  1509|
|24 months |LCNI-5         |MALAWI       |>=155 cm     |       0|    196|   577|
|24 months |LCNI-5         |MALAWI       |>=155 cm     |       1|    147|   577|
|24 months |LCNI-5         |MALAWI       |[151-155) cm |       0|     58|   577|
|24 months |LCNI-5         |MALAWI       |[151-155) cm |       1|     59|   577|
|24 months |LCNI-5         |MALAWI       |<151 cm      |       0|     66|   577|
|24 months |LCNI-5         |MALAWI       |<151 cm      |       1|     51|   577|
|24 months |MAL-ED         |INDIA        |>=155 cm     |       0|     38|   224|
|24 months |MAL-ED         |INDIA        |>=155 cm     |       1|     19|   224|
|24 months |MAL-ED         |INDIA        |[151-155) cm |       0|     23|   224|
|24 months |MAL-ED         |INDIA        |[151-155) cm |       1|     28|   224|
|24 months |MAL-ED         |INDIA        |<151 cm      |       0|     67|   224|
|24 months |MAL-ED         |INDIA        |<151 cm      |       1|     49|   224|
|24 months |MAL-ED         |BANGLADESH   |>=155 cm     |       0|     19|   209|
|24 months |MAL-ED         |BANGLADESH   |>=155 cm     |       1|     12|   209|
|24 months |MAL-ED         |BANGLADESH   |[151-155) cm |       0|     25|   209|
|24 months |MAL-ED         |BANGLADESH   |[151-155) cm |       1|     25|   209|
|24 months |MAL-ED         |BANGLADESH   |<151 cm      |       0|     67|   209|
|24 months |MAL-ED         |BANGLADESH   |<151 cm      |       1|     61|   209|
|24 months |MAL-ED         |PERU         |>=155 cm     |       0|     37|   197|
|24 months |MAL-ED         |PERU         |>=155 cm     |       1|     14|   197|
|24 months |MAL-ED         |PERU         |[151-155) cm |       0|     24|   197|
|24 months |MAL-ED         |PERU         |[151-155) cm |       1|     17|   197|
|24 months |MAL-ED         |PERU         |<151 cm      |       0|     65|   197|
|24 months |MAL-ED         |PERU         |<151 cm      |       1|     40|   197|
|24 months |MAL-ED         |NEPAL        |>=155 cm     |       0|     37|   228|
|24 months |MAL-ED         |NEPAL        |>=155 cm     |       1|      5|   228|
|24 months |MAL-ED         |NEPAL        |[151-155) cm |       0|     43|   228|
|24 months |MAL-ED         |NEPAL        |[151-155) cm |       1|     13|   228|
|24 months |MAL-ED         |NEPAL        |<151 cm      |       0|     98|   228|
|24 months |MAL-ED         |NEPAL        |<151 cm      |       1|     32|   228|
|24 months |MAL-ED         |BRAZIL       |>=155 cm     |       0|     71|   168|
|24 months |MAL-ED         |BRAZIL       |>=155 cm     |       1|      5|   168|
|24 months |MAL-ED         |BRAZIL       |[151-155) cm |       0|     34|   168|
|24 months |MAL-ED         |BRAZIL       |[151-155) cm |       1|      2|   168|
|24 months |MAL-ED         |BRAZIL       |<151 cm      |       0|     56|   168|
|24 months |MAL-ED         |BRAZIL       |<151 cm      |       1|      0|   168|
|24 months |MAL-ED         |TANZANIA     |>=155 cm     |       0|     42|   211|
|24 months |MAL-ED         |TANZANIA     |>=155 cm     |       1|     85|   211|
|24 months |MAL-ED         |TANZANIA     |[151-155) cm |       0|      6|   211|
|24 months |MAL-ED         |TANZANIA     |[151-155) cm |       1|     30|   211|
|24 months |MAL-ED         |TANZANIA     |<151 cm      |       0|      9|   211|
|24 months |MAL-ED         |TANZANIA     |<151 cm      |       1|     39|   211|
|24 months |MAL-ED         |SOUTH AFRICA |>=155 cm     |       0|    119|   232|
|24 months |MAL-ED         |SOUTH AFRICA |>=155 cm     |       1|     52|   232|
|24 months |MAL-ED         |SOUTH AFRICA |[151-155) cm |       0|     17|   232|
|24 months |MAL-ED         |SOUTH AFRICA |[151-155) cm |       1|     16|   232|
|24 months |MAL-ED         |SOUTH AFRICA |<151 cm      |       0|     15|   232|
|24 months |MAL-ED         |SOUTH AFRICA |<151 cm      |       1|     13|   232|
|24 months |NIH-Birth      |BANGLADESH   |>=155 cm     |       0|     45|   429|
|24 months |NIH-Birth      |BANGLADESH   |>=155 cm     |       1|     30|   429|
|24 months |NIH-Birth      |BANGLADESH   |[151-155) cm |       0|     45|   429|
|24 months |NIH-Birth      |BANGLADESH   |[151-155) cm |       1|     52|   429|
|24 months |NIH-Birth      |BANGLADESH   |<151 cm      |       0|     95|   429|
|24 months |NIH-Birth      |BANGLADESH   |<151 cm      |       1|    162|   429|
|24 months |NIH-Crypto     |BANGLADESH   |>=155 cm     |       0|     91|   513|
|24 months |NIH-Crypto     |BANGLADESH   |>=155 cm     |       1|     12|   513|
|24 months |NIH-Crypto     |BANGLADESH   |[151-155) cm |       0|     99|   513|
|24 months |NIH-Crypto     |BANGLADESH   |[151-155) cm |       1|     31|   513|
|24 months |NIH-Crypto     |BANGLADESH   |<151 cm      |       0|    191|   513|
|24 months |NIH-Crypto     |BANGLADESH   |<151 cm      |       1|     89|   513|
|24 months |PROBIT         |BELARUS      |>=155 cm     |       0|   3572|  4000|
|24 months |PROBIT         |BELARUS      |>=155 cm     |       1|    262|  4000|
|24 months |PROBIT         |BELARUS      |[151-155) cm |       0|    115|  4000|
|24 months |PROBIT         |BELARUS      |[151-155) cm |       1|      6|  4000|
|24 months |PROBIT         |BELARUS      |<151 cm      |       0|     42|  4000|
|24 months |PROBIT         |BELARUS      |<151 cm      |       1|      3|  4000|
|24 months |PROVIDE        |BANGLADESH   |>=155 cm     |       0|     79|   562|
|24 months |PROVIDE        |BANGLADESH   |>=155 cm     |       1|     27|   562|
|24 months |PROVIDE        |BANGLADESH   |[151-155) cm |       0|    100|   562|
|24 months |PROVIDE        |BANGLADESH   |[151-155) cm |       1|     55|   562|
|24 months |PROVIDE        |BANGLADESH   |<151 cm      |       0|    202|   562|
|24 months |PROVIDE        |BANGLADESH   |<151 cm      |       1|     99|   562|
|24 months |TanzaniaChild2 |TANZANIA     |>=155 cm     |       0|      4|     6|
|24 months |TanzaniaChild2 |TANZANIA     |>=155 cm     |       1|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |[151-155) cm |       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |[151-155) cm |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |<151 cm      |       0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |<151 cm      |       1|      0|     6|
|24 months |ZVITAMBO       |ZIMBABWE     |>=155 cm     |       0|    699|  1371|
|24 months |ZVITAMBO       |ZIMBABWE     |>=155 cm     |       1|    361|  1371|
|24 months |ZVITAMBO       |ZIMBABWE     |[151-155) cm |       0|    151|  1371|
|24 months |ZVITAMBO       |ZIMBABWE     |[151-155) cm |       1|     83|  1371|
|24 months |ZVITAMBO       |ZIMBABWE     |<151 cm      |       0|     46|  1371|
|24 months |ZVITAMBO       |ZIMBABWE     |<151 cm      |       1|     31|  1371|


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


