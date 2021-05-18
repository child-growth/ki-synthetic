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

**Outcome Variable:** ever_sstunted

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

|agecat      |studyid        |country      |mhtcm        | ever_sstunted| n_cell|     n|
|:-----------|:--------------|:------------|:------------|-------------:|------:|-----:|
|0-24 months |COHORTS        |INDIA        |>=155 cm     |             0|   4833|  7417|
|0-24 months |COHORTS        |INDIA        |>=155 cm     |             1|    668|  7417|
|0-24 months |COHORTS        |INDIA        |[151-155) cm |             0|    607|  7417|
|0-24 months |COHORTS        |INDIA        |[151-155) cm |             1|     86|  7417|
|0-24 months |COHORTS        |INDIA        |<151 cm      |             0|   1031|  7417|
|0-24 months |COHORTS        |INDIA        |<151 cm      |             1|    192|  7417|
|0-24 months |COHORTS        |GUATEMALA    |>=155 cm     |             0|     97|  1273|
|0-24 months |COHORTS        |GUATEMALA    |>=155 cm     |             1|     41|  1273|
|0-24 months |COHORTS        |GUATEMALA    |[151-155) cm |             0|    136|  1273|
|0-24 months |COHORTS        |GUATEMALA    |[151-155) cm |             1|    104|  1273|
|0-24 months |COHORTS        |GUATEMALA    |<151 cm      |             0|    445|  1273|
|0-24 months |COHORTS        |GUATEMALA    |<151 cm      |             1|    450|  1273|
|0-24 months |COHORTS        |PHILIPPINES  |>=155 cm     |             0|    526|  3057|
|0-24 months |COHORTS        |PHILIPPINES  |>=155 cm     |             1|    169|  3057|
|0-24 months |COHORTS        |PHILIPPINES  |[151-155) cm |             0|    536|  3057|
|0-24 months |COHORTS        |PHILIPPINES  |[151-155) cm |             1|    202|  3057|
|0-24 months |COHORTS        |PHILIPPINES  |<151 cm      |             0|    907|  3057|
|0-24 months |COHORTS        |PHILIPPINES  |<151 cm      |             1|    717|  3057|
|0-24 months |Guatemala BSC  |GUATEMALA    |>=155 cm     |             0|     45|   250|
|0-24 months |Guatemala BSC  |GUATEMALA    |>=155 cm     |             1|      7|   250|
|0-24 months |Guatemala BSC  |GUATEMALA    |[151-155) cm |             0|     38|   250|
|0-24 months |Guatemala BSC  |GUATEMALA    |[151-155) cm |             1|      7|   250|
|0-24 months |Guatemala BSC  |GUATEMALA    |<151 cm      |             0|    124|   250|
|0-24 months |Guatemala BSC  |GUATEMALA    |<151 cm      |             1|     29|   250|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |>=155 cm     |             0|   2551|  3225|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |>=155 cm     |             1|    276|  3225|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |[151-155) cm |             0|    234|  3225|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |[151-155) cm |             1|     49|  3225|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |<151 cm      |             0|     96|  3225|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |<151 cm      |             1|     19|  3225|
|0-24 months |JiVitA-3       |BANGLADESH   |>=155 cm     |             0|   3802| 26974|
|0-24 months |JiVitA-3       |BANGLADESH   |>=155 cm     |             1|    769| 26974|
|0-24 months |JiVitA-3       |BANGLADESH   |[151-155) cm |             0|   5473| 26974|
|0-24 months |JiVitA-3       |BANGLADESH   |[151-155) cm |             1|   1101| 26974|
|0-24 months |JiVitA-3       |BANGLADESH   |<151 cm      |             0|  12727| 26974|
|0-24 months |JiVitA-3       |BANGLADESH   |<151 cm      |             1|   3102| 26974|
|0-24 months |Keneba         |GAMBIA       |>=155 cm     |             0|   1537|  2515|
|0-24 months |Keneba         |GAMBIA       |>=155 cm     |             1|    408|  2515|
|0-24 months |Keneba         |GAMBIA       |[151-155) cm |             0|    272|  2515|
|0-24 months |Keneba         |GAMBIA       |[151-155) cm |             1|     84|  2515|
|0-24 months |Keneba         |GAMBIA       |<151 cm      |             0|    162|  2515|
|0-24 months |Keneba         |GAMBIA       |<151 cm      |             1|     52|  2515|
|0-24 months |LCNI-5         |MALAWI       |>=155 cm     |             0|    386|   836|
|0-24 months |LCNI-5         |MALAWI       |>=155 cm     |             1|    106|   836|
|0-24 months |LCNI-5         |MALAWI       |[151-155) cm |             0|    144|   836|
|0-24 months |LCNI-5         |MALAWI       |[151-155) cm |             1|     28|   836|
|0-24 months |LCNI-5         |MALAWI       |<151 cm      |             0|    131|   836|
|0-24 months |LCNI-5         |MALAWI       |<151 cm      |             1|     41|   836|
|0-24 months |MAL-ED         |INDIA        |>=155 cm     |             0|     47|   247|
|0-24 months |MAL-ED         |INDIA        |>=155 cm     |             1|     16|   247|
|0-24 months |MAL-ED         |INDIA        |[151-155) cm |             0|     41|   247|
|0-24 months |MAL-ED         |INDIA        |[151-155) cm |             1|     18|   247|
|0-24 months |MAL-ED         |INDIA        |<151 cm      |             0|    100|   247|
|0-24 months |MAL-ED         |INDIA        |<151 cm      |             1|     25|   247|
|0-24 months |MAL-ED         |BANGLADESH   |>=155 cm     |             0|     32|   260|
|0-24 months |MAL-ED         |BANGLADESH   |>=155 cm     |             1|      7|   260|
|0-24 months |MAL-ED         |BANGLADESH   |[151-155) cm |             0|     41|   260|
|0-24 months |MAL-ED         |BANGLADESH   |[151-155) cm |             1|     17|   260|
|0-24 months |MAL-ED         |BANGLADESH   |<151 cm      |             0|    131|   260|
|0-24 months |MAL-ED         |BANGLADESH   |<151 cm      |             1|     32|   260|
|0-24 months |MAL-ED         |PERU         |>=155 cm     |             0|     60|   299|
|0-24 months |MAL-ED         |PERU         |>=155 cm     |             1|     10|   299|
|0-24 months |MAL-ED         |PERU         |[151-155) cm |             0|     52|   299|
|0-24 months |MAL-ED         |PERU         |[151-155) cm |             1|      6|   299|
|0-24 months |MAL-ED         |PERU         |<151 cm      |             0|    126|   299|
|0-24 months |MAL-ED         |PERU         |<151 cm      |             1|     45|   299|
|0-24 months |MAL-ED         |NEPAL        |>=155 cm     |             0|     41|   240|
|0-24 months |MAL-ED         |NEPAL        |>=155 cm     |             1|      3|   240|
|0-24 months |MAL-ED         |NEPAL        |[151-155) cm |             0|     58|   240|
|0-24 months |MAL-ED         |NEPAL        |[151-155) cm |             1|      2|   240|
|0-24 months |MAL-ED         |NEPAL        |<151 cm      |             0|    120|   240|
|0-24 months |MAL-ED         |NEPAL        |<151 cm      |             1|     16|   240|
|0-24 months |MAL-ED         |BRAZIL       |>=155 cm     |             0|     97|   231|
|0-24 months |MAL-ED         |BRAZIL       |>=155 cm     |             1|     13|   231|
|0-24 months |MAL-ED         |BRAZIL       |[151-155) cm |             0|     43|   231|
|0-24 months |MAL-ED         |BRAZIL       |[151-155) cm |             1|      6|   231|
|0-24 months |MAL-ED         |BRAZIL       |<151 cm      |             0|     69|   231|
|0-24 months |MAL-ED         |BRAZIL       |<151 cm      |             1|      3|   231|
|0-24 months |MAL-ED         |TANZANIA     |>=155 cm     |             0|     73|   257|
|0-24 months |MAL-ED         |TANZANIA     |>=155 cm     |             1|     77|   257|
|0-24 months |MAL-ED         |TANZANIA     |[151-155) cm |             0|     23|   257|
|0-24 months |MAL-ED         |TANZANIA     |[151-155) cm |             1|     21|   257|
|0-24 months |MAL-ED         |TANZANIA     |<151 cm      |             0|     27|   257|
|0-24 months |MAL-ED         |TANZANIA     |<151 cm      |             1|     36|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=155 cm     |             0|    169|   290|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=155 cm     |             1|     47|   290|
|0-24 months |MAL-ED         |SOUTH AFRICA |[151-155) cm |             0|     28|   290|
|0-24 months |MAL-ED         |SOUTH AFRICA |[151-155) cm |             1|     10|   290|
|0-24 months |MAL-ED         |SOUTH AFRICA |<151 cm      |             0|     25|   290|
|0-24 months |MAL-ED         |SOUTH AFRICA |<151 cm      |             1|     11|   290|
|0-24 months |NIH-Birth      |BANGLADESH   |>=155 cm     |             0|     98|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |>=155 cm     |             1|     17|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |[151-155) cm |             0|    101|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |[151-155) cm |             1|     43|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |<151 cm      |             0|    234|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |<151 cm      |             1|    136|   629|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=155 cm     |             0|    142|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=155 cm     |             1|      8|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |[151-155) cm |             0|    164|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |[151-155) cm |             1|     22|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |<151 cm      |             0|    352|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |<151 cm      |             1|     69|   757|
|0-24 months |PROBIT         |BELARUS      |>=155 cm     |             0|  12895| 13803|
|0-24 months |PROBIT         |BELARUS      |>=155 cm     |             1|    361| 13803|
|0-24 months |PROBIT         |BELARUS      |[151-155) cm |             0|    392| 13803|
|0-24 months |PROBIT         |BELARUS      |[151-155) cm |             1|      9| 13803|
|0-24 months |PROBIT         |BELARUS      |<151 cm      |             0|    139| 13803|
|0-24 months |PROBIT         |BELARUS      |<151 cm      |             1|      7| 13803|
|0-24 months |PROVIDE        |BANGLADESH   |>=155 cm     |             0|    117|   668|
|0-24 months |PROVIDE        |BANGLADESH   |>=155 cm     |             1|     17|   668|
|0-24 months |PROVIDE        |BANGLADESH   |[151-155) cm |             0|    159|   668|
|0-24 months |PROVIDE        |BANGLADESH   |[151-155) cm |             1|     21|   668|
|0-24 months |PROVIDE        |BANGLADESH   |<151 cm      |             0|    303|   668|
|0-24 months |PROVIDE        |BANGLADESH   |<151 cm      |             1|     51|   668|
|0-24 months |SAS-CompFeed   |INDIA        |>=155 cm     |             0|    448|  1510|
|0-24 months |SAS-CompFeed   |INDIA        |>=155 cm     |             1|    176|  1510|
|0-24 months |SAS-CompFeed   |INDIA        |[151-155) cm |             0|    205|  1510|
|0-24 months |SAS-CompFeed   |INDIA        |[151-155) cm |             1|    106|  1510|
|0-24 months |SAS-CompFeed   |INDIA        |<151 cm      |             0|    355|  1510|
|0-24 months |SAS-CompFeed   |INDIA        |<151 cm      |             1|    220|  1510|
|0-24 months |SAS-FoodSuppl  |INDIA        |>=155 cm     |             0|     43|   416|
|0-24 months |SAS-FoodSuppl  |INDIA        |>=155 cm     |             1|     41|   416|
|0-24 months |SAS-FoodSuppl  |INDIA        |[151-155) cm |             0|     66|   416|
|0-24 months |SAS-FoodSuppl  |INDIA        |[151-155) cm |             1|     48|   416|
|0-24 months |SAS-FoodSuppl  |INDIA        |<151 cm      |             0|    107|   416|
|0-24 months |SAS-FoodSuppl  |INDIA        |<151 cm      |             1|    111|   416|
|0-24 months |TanzaniaChild2 |TANZANIA     |>=155 cm     |             0|   1367|  2377|
|0-24 months |TanzaniaChild2 |TANZANIA     |>=155 cm     |             1|    153|  2377|
|0-24 months |TanzaniaChild2 |TANZANIA     |[151-155) cm |             0|    451|  2377|
|0-24 months |TanzaniaChild2 |TANZANIA     |[151-155) cm |             1|     44|  2377|
|0-24 months |TanzaniaChild2 |TANZANIA     |<151 cm      |             0|    322|  2377|
|0-24 months |TanzaniaChild2 |TANZANIA     |<151 cm      |             1|     40|  2377|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=155 cm     |             0|   6303|  9653|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=155 cm     |             1|   1363|  9653|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[151-155) cm |             0|   1163|  9653|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[151-155) cm |             1|    260|  9653|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<151 cm      |             0|    439|  9653|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<151 cm      |             1|    125|  9653|
|0-6 months  |COHORTS        |INDIA        |>=155 cm     |             0|   5048|  7176|
|0-6 months  |COHORTS        |INDIA        |>=155 cm     |             1|    255|  7176|
|0-6 months  |COHORTS        |INDIA        |[151-155) cm |             0|    659|  7176|
|0-6 months  |COHORTS        |INDIA        |[151-155) cm |             1|     23|  7176|
|0-6 months  |COHORTS        |INDIA        |<151 cm      |             0|   1116|  7176|
|0-6 months  |COHORTS        |INDIA        |<151 cm      |             1|     75|  7176|
|0-6 months  |COHORTS        |GUATEMALA    |>=155 cm     |             0|    109|  1055|
|0-6 months  |COHORTS        |GUATEMALA    |>=155 cm     |             1|      7|  1055|
|0-6 months  |COHORTS        |GUATEMALA    |[151-155) cm |             0|    188|  1055|
|0-6 months  |COHORTS        |GUATEMALA    |[151-155) cm |             1|     14|  1055|
|0-6 months  |COHORTS        |GUATEMALA    |<151 cm      |             0|    651|  1055|
|0-6 months  |COHORTS        |GUATEMALA    |<151 cm      |             1|     86|  1055|
|0-6 months  |COHORTS        |PHILIPPINES  |>=155 cm     |             0|    675|  3057|
|0-6 months  |COHORTS        |PHILIPPINES  |>=155 cm     |             1|     20|  3057|
|0-6 months  |COHORTS        |PHILIPPINES  |[151-155) cm |             0|    697|  3057|
|0-6 months  |COHORTS        |PHILIPPINES  |[151-155) cm |             1|     41|  3057|
|0-6 months  |COHORTS        |PHILIPPINES  |<151 cm      |             0|   1494|  3057|
|0-6 months  |COHORTS        |PHILIPPINES  |<151 cm      |             1|    130|  3057|
|0-6 months  |Guatemala BSC  |GUATEMALA    |>=155 cm     |             0|     45|   230|
|0-6 months  |Guatemala BSC  |GUATEMALA    |>=155 cm     |             1|      2|   230|
|0-6 months  |Guatemala BSC  |GUATEMALA    |[151-155) cm |             0|     38|   230|
|0-6 months  |Guatemala BSC  |GUATEMALA    |[151-155) cm |             1|      4|   230|
|0-6 months  |Guatemala BSC  |GUATEMALA    |<151 cm      |             0|    126|   230|
|0-6 months  |Guatemala BSC  |GUATEMALA    |<151 cm      |             1|     15|   230|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=155 cm     |             0|   3943| 26909|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=155 cm     |             1|    610| 26909|
|0-6 months  |JiVitA-3       |BANGLADESH   |[151-155) cm |             0|   5682| 26909|
|0-6 months  |JiVitA-3       |BANGLADESH   |[151-155) cm |             1|    879| 26909|
|0-6 months  |JiVitA-3       |BANGLADESH   |<151 cm      |             0|  13320| 26909|
|0-6 months  |JiVitA-3       |BANGLADESH   |<151 cm      |             1|   2475| 26909|
|0-6 months  |Keneba         |GAMBIA       |>=155 cm     |             0|   1466|  2129|
|0-6 months  |Keneba         |GAMBIA       |>=155 cm     |             1|    185|  2129|
|0-6 months  |Keneba         |GAMBIA       |[151-155) cm |             0|    252|  2129|
|0-6 months  |Keneba         |GAMBIA       |[151-155) cm |             1|     41|  2129|
|0-6 months  |Keneba         |GAMBIA       |<151 cm      |             0|    158|  2129|
|0-6 months  |Keneba         |GAMBIA       |<151 cm      |             1|     27|  2129|
|0-6 months  |LCNI-5         |MALAWI       |>=155 cm     |             0|    140|   271|
|0-6 months  |LCNI-5         |MALAWI       |>=155 cm     |             1|     13|   271|
|0-6 months  |LCNI-5         |MALAWI       |[151-155) cm |             0|     56|   271|
|0-6 months  |LCNI-5         |MALAWI       |[151-155) cm |             1|      2|   271|
|0-6 months  |LCNI-5         |MALAWI       |<151 cm      |             0|     56|   271|
|0-6 months  |LCNI-5         |MALAWI       |<151 cm      |             1|      4|   271|
|0-6 months  |MAL-ED         |INDIA        |>=155 cm     |             0|     56|   247|
|0-6 months  |MAL-ED         |INDIA        |>=155 cm     |             1|      7|   247|
|0-6 months  |MAL-ED         |INDIA        |[151-155) cm |             0|     54|   247|
|0-6 months  |MAL-ED         |INDIA        |[151-155) cm |             1|      5|   247|
|0-6 months  |MAL-ED         |INDIA        |<151 cm      |             0|    116|   247|
|0-6 months  |MAL-ED         |INDIA        |<151 cm      |             1|      9|   247|
|0-6 months  |MAL-ED         |BANGLADESH   |>=155 cm     |             0|     38|   260|
|0-6 months  |MAL-ED         |BANGLADESH   |>=155 cm     |             1|      1|   260|
|0-6 months  |MAL-ED         |BANGLADESH   |[151-155) cm |             0|     52|   260|
|0-6 months  |MAL-ED         |BANGLADESH   |[151-155) cm |             1|      6|   260|
|0-6 months  |MAL-ED         |BANGLADESH   |<151 cm      |             0|    149|   260|
|0-6 months  |MAL-ED         |BANGLADESH   |<151 cm      |             1|     14|   260|
|0-6 months  |MAL-ED         |PERU         |>=155 cm     |             0|     64|   299|
|0-6 months  |MAL-ED         |PERU         |>=155 cm     |             1|      6|   299|
|0-6 months  |MAL-ED         |PERU         |[151-155) cm |             0|     54|   299|
|0-6 months  |MAL-ED         |PERU         |[151-155) cm |             1|      4|   299|
|0-6 months  |MAL-ED         |PERU         |<151 cm      |             0|    144|   299|
|0-6 months  |MAL-ED         |PERU         |<151 cm      |             1|     27|   299|
|0-6 months  |MAL-ED         |NEPAL        |>=155 cm     |             0|     43|   240|
|0-6 months  |MAL-ED         |NEPAL        |>=155 cm     |             1|      1|   240|
|0-6 months  |MAL-ED         |NEPAL        |[151-155) cm |             0|     59|   240|
|0-6 months  |MAL-ED         |NEPAL        |[151-155) cm |             1|      1|   240|
|0-6 months  |MAL-ED         |NEPAL        |<151 cm      |             0|    128|   240|
|0-6 months  |MAL-ED         |NEPAL        |<151 cm      |             1|      8|   240|
|0-6 months  |MAL-ED         |BRAZIL       |>=155 cm     |             0|     99|   231|
|0-6 months  |MAL-ED         |BRAZIL       |>=155 cm     |             1|     11|   231|
|0-6 months  |MAL-ED         |BRAZIL       |[151-155) cm |             0|     46|   231|
|0-6 months  |MAL-ED         |BRAZIL       |[151-155) cm |             1|      3|   231|
|0-6 months  |MAL-ED         |BRAZIL       |<151 cm      |             0|     69|   231|
|0-6 months  |MAL-ED         |BRAZIL       |<151 cm      |             1|      3|   231|
|0-6 months  |MAL-ED         |TANZANIA     |>=155 cm     |             0|    127|   257|
|0-6 months  |MAL-ED         |TANZANIA     |>=155 cm     |             1|     23|   257|
|0-6 months  |MAL-ED         |TANZANIA     |[151-155) cm |             0|     36|   257|
|0-6 months  |MAL-ED         |TANZANIA     |[151-155) cm |             1|      8|   257|
|0-6 months  |MAL-ED         |TANZANIA     |<151 cm      |             0|     57|   257|
|0-6 months  |MAL-ED         |TANZANIA     |<151 cm      |             1|      6|   257|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=155 cm     |             0|    198|   290|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=155 cm     |             1|     18|   290|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[151-155) cm |             0|     34|   290|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[151-155) cm |             1|      4|   290|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<151 cm      |             0|     31|   290|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<151 cm      |             1|      5|   290|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=155 cm     |             0|    107|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=155 cm     |             1|      8|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |[151-155) cm |             0|    131|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |[151-155) cm |             1|     13|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |<151 cm      |             0|    332|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |<151 cm      |             1|     38|   629|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=155 cm     |             0|    144|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=155 cm     |             1|      6|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[151-155) cm |             0|    177|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[151-155) cm |             1|      9|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<151 cm      |             0|    389|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<151 cm      |             1|     32|   757|
|0-6 months  |PROBIT         |BELARUS      |>=155 cm     |             0|  13123| 13803|
|0-6 months  |PROBIT         |BELARUS      |>=155 cm     |             1|    133| 13803|
|0-6 months  |PROBIT         |BELARUS      |[151-155) cm |             0|    399| 13803|
|0-6 months  |PROBIT         |BELARUS      |[151-155) cm |             1|      2| 13803|
|0-6 months  |PROBIT         |BELARUS      |<151 cm      |             0|    143| 13803|
|0-6 months  |PROBIT         |BELARUS      |<151 cm      |             1|      3| 13803|
|0-6 months  |PROVIDE        |BANGLADESH   |>=155 cm     |             0|    130|   668|
|0-6 months  |PROVIDE        |BANGLADESH   |>=155 cm     |             1|      4|   668|
|0-6 months  |PROVIDE        |BANGLADESH   |[151-155) cm |             0|    174|   668|
|0-6 months  |PROVIDE        |BANGLADESH   |[151-155) cm |             1|      6|   668|
|0-6 months  |PROVIDE        |BANGLADESH   |<151 cm      |             0|    335|   668|
|0-6 months  |PROVIDE        |BANGLADESH   |<151 cm      |             1|     19|   668|
|0-6 months  |SAS-CompFeed   |INDIA        |>=155 cm     |             0|    549|  1507|
|0-6 months  |SAS-CompFeed   |INDIA        |>=155 cm     |             1|     74|  1507|
|0-6 months  |SAS-CompFeed   |INDIA        |[151-155) cm |             0|    255|  1507|
|0-6 months  |SAS-CompFeed   |INDIA        |[151-155) cm |             1|     56|  1507|
|0-6 months  |SAS-CompFeed   |INDIA        |<151 cm      |             0|    474|  1507|
|0-6 months  |SAS-CompFeed   |INDIA        |<151 cm      |             1|     99|  1507|
|0-6 months  |SAS-FoodSuppl  |INDIA        |>=155 cm     |             0|     75|   414|
|0-6 months  |SAS-FoodSuppl  |INDIA        |>=155 cm     |             1|      8|   414|
|0-6 months  |SAS-FoodSuppl  |INDIA        |[151-155) cm |             0|    103|   414|
|0-6 months  |SAS-FoodSuppl  |INDIA        |[151-155) cm |             1|     11|   414|
|0-6 months  |SAS-FoodSuppl  |INDIA        |<151 cm      |             0|    186|   414|
|0-6 months  |SAS-FoodSuppl  |INDIA        |<151 cm      |             1|     31|   414|
|0-6 months  |TanzaniaChild2 |TANZANIA     |>=155 cm     |             0|   1458|  2377|
|0-6 months  |TanzaniaChild2 |TANZANIA     |>=155 cm     |             1|     62|  2377|
|0-6 months  |TanzaniaChild2 |TANZANIA     |[151-155) cm |             0|    472|  2377|
|0-6 months  |TanzaniaChild2 |TANZANIA     |[151-155) cm |             1|     23|  2377|
|0-6 months  |TanzaniaChild2 |TANZANIA     |<151 cm      |             0|    343|  2377|
|0-6 months  |TanzaniaChild2 |TANZANIA     |<151 cm      |             1|     19|  2377|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=155 cm     |             0|   6911|  9642|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=155 cm     |             1|    747|  9642|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[151-155) cm |             0|   1284|  9642|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[151-155) cm |             1|    136|  9642|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<151 cm      |             0|    497|  9642|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<151 cm      |             1|     67|  9642|


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


