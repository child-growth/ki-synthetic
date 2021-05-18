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

**Outcome Variable:** wast_rec90d

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

|agecat      |studyid        |country      |mhtcm        | wast_rec90d| n_cell|    n|
|:-----------|:--------------|:------------|:------------|-----------:|------:|----:|
|0-24 months |COHORTS        |INDIA        |>=155 cm     |           0|   1470| 2663|
|0-24 months |COHORTS        |INDIA        |>=155 cm     |           1|    473| 2663|
|0-24 months |COHORTS        |INDIA        |[151-155) cm |           0|    202| 2663|
|0-24 months |COHORTS        |INDIA        |[151-155) cm |           1|     60| 2663|
|0-24 months |COHORTS        |INDIA        |<151 cm      |           0|    347| 2663|
|0-24 months |COHORTS        |INDIA        |<151 cm      |           1|    111| 2663|
|0-24 months |COHORTS        |GUATEMALA    |>=155 cm     |           0|     20|  368|
|0-24 months |COHORTS        |GUATEMALA    |>=155 cm     |           1|     21|  368|
|0-24 months |COHORTS        |GUATEMALA    |[151-155) cm |           0|     32|  368|
|0-24 months |COHORTS        |GUATEMALA    |[151-155) cm |           1|     26|  368|
|0-24 months |COHORTS        |GUATEMALA    |<151 cm      |           0|    151|  368|
|0-24 months |COHORTS        |GUATEMALA    |<151 cm      |           1|    118|  368|
|0-24 months |COHORTS        |PHILIPPINES  |>=155 cm     |           0|    123| 1688|
|0-24 months |COHORTS        |PHILIPPINES  |>=155 cm     |           1|    234| 1688|
|0-24 months |COHORTS        |PHILIPPINES  |[151-155) cm |           0|    141| 1688|
|0-24 months |COHORTS        |PHILIPPINES  |[151-155) cm |           1|    217| 1688|
|0-24 months |COHORTS        |PHILIPPINES  |<151 cm      |           0|    400| 1688|
|0-24 months |COHORTS        |PHILIPPINES  |<151 cm      |           1|    573| 1688|
|0-24 months |Guatemala BSC  |GUATEMALA    |>=155 cm     |           0|      0|   27|
|0-24 months |Guatemala BSC  |GUATEMALA    |>=155 cm     |           1|      1|   27|
|0-24 months |Guatemala BSC  |GUATEMALA    |[151-155) cm |           0|      5|   27|
|0-24 months |Guatemala BSC  |GUATEMALA    |[151-155) cm |           1|      2|   27|
|0-24 months |Guatemala BSC  |GUATEMALA    |<151 cm      |           0|     12|   27|
|0-24 months |Guatemala BSC  |GUATEMALA    |<151 cm      |           1|      7|   27|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |>=155 cm     |           0|    660|  802|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |>=155 cm     |           1|     32|  802|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |[151-155) cm |           0|     74|  802|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |[151-155) cm |           1|      2|  802|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |<151 cm      |           0|     33|  802|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |<151 cm      |           1|      1|  802|
|0-24 months |JiVitA-3       |BANGLADESH   |>=155 cm     |           0|    734| 7499|
|0-24 months |JiVitA-3       |BANGLADESH   |>=155 cm     |           1|    569| 7499|
|0-24 months |JiVitA-3       |BANGLADESH   |[151-155) cm |           0|   1055| 7499|
|0-24 months |JiVitA-3       |BANGLADESH   |[151-155) cm |           1|    760| 7499|
|0-24 months |JiVitA-3       |BANGLADESH   |<151 cm      |           0|   2542| 7499|
|0-24 months |JiVitA-3       |BANGLADESH   |<151 cm      |           1|   1839| 7499|
|0-24 months |Keneba         |GAMBIA       |>=155 cm     |           0|    462| 1559|
|0-24 months |Keneba         |GAMBIA       |>=155 cm     |           1|    726| 1559|
|0-24 months |Keneba         |GAMBIA       |[151-155) cm |           0|     77| 1559|
|0-24 months |Keneba         |GAMBIA       |[151-155) cm |           1|    138| 1559|
|0-24 months |Keneba         |GAMBIA       |<151 cm      |           0|     65| 1559|
|0-24 months |Keneba         |GAMBIA       |<151 cm      |           1|     91| 1559|
|0-24 months |LCNI-5         |MALAWI       |>=155 cm     |           0|     38|   79|
|0-24 months |LCNI-5         |MALAWI       |>=155 cm     |           1|      7|   79|
|0-24 months |LCNI-5         |MALAWI       |[151-155) cm |           0|     15|   79|
|0-24 months |LCNI-5         |MALAWI       |[151-155) cm |           1|      2|   79|
|0-24 months |LCNI-5         |MALAWI       |<151 cm      |           0|     13|   79|
|0-24 months |LCNI-5         |MALAWI       |<151 cm      |           1|      4|   79|
|0-24 months |MAL-ED         |INDIA        |>=155 cm     |           0|     19|  178|
|0-24 months |MAL-ED         |INDIA        |>=155 cm     |           1|     21|  178|
|0-24 months |MAL-ED         |INDIA        |[151-155) cm |           0|     14|  178|
|0-24 months |MAL-ED         |INDIA        |[151-155) cm |           1|     26|  178|
|0-24 months |MAL-ED         |INDIA        |<151 cm      |           0|     36|  178|
|0-24 months |MAL-ED         |INDIA        |<151 cm      |           1|     62|  178|
|0-24 months |MAL-ED         |BANGLADESH   |>=155 cm     |           0|      6|  119|
|0-24 months |MAL-ED         |BANGLADESH   |>=155 cm     |           1|     12|  119|
|0-24 months |MAL-ED         |BANGLADESH   |[151-155) cm |           0|      8|  119|
|0-24 months |MAL-ED         |BANGLADESH   |[151-155) cm |           1|     17|  119|
|0-24 months |MAL-ED         |BANGLADESH   |<151 cm      |           0|     27|  119|
|0-24 months |MAL-ED         |BANGLADESH   |<151 cm      |           1|     49|  119|
|0-24 months |MAL-ED         |PERU         |>=155 cm     |           0|      2|   31|
|0-24 months |MAL-ED         |PERU         |>=155 cm     |           1|      8|   31|
|0-24 months |MAL-ED         |PERU         |[151-155) cm |           0|      0|   31|
|0-24 months |MAL-ED         |PERU         |[151-155) cm |           1|      3|   31|
|0-24 months |MAL-ED         |PERU         |<151 cm      |           0|      3|   31|
|0-24 months |MAL-ED         |PERU         |<151 cm      |           1|     15|   31|
|0-24 months |MAL-ED         |NEPAL        |>=155 cm     |           0|      3|   98|
|0-24 months |MAL-ED         |NEPAL        |>=155 cm     |           1|     14|   98|
|0-24 months |MAL-ED         |NEPAL        |[151-155) cm |           0|      4|   98|
|0-24 months |MAL-ED         |NEPAL        |[151-155) cm |           1|     20|   98|
|0-24 months |MAL-ED         |NEPAL        |<151 cm      |           0|     13|   98|
|0-24 months |MAL-ED         |NEPAL        |<151 cm      |           1|     44|   98|
|0-24 months |MAL-ED         |BRAZIL       |>=155 cm     |           0|      3|   24|
|0-24 months |MAL-ED         |BRAZIL       |>=155 cm     |           1|      9|   24|
|0-24 months |MAL-ED         |BRAZIL       |[151-155) cm |           0|      0|   24|
|0-24 months |MAL-ED         |BRAZIL       |[151-155) cm |           1|      5|   24|
|0-24 months |MAL-ED         |BRAZIL       |<151 cm      |           0|      3|   24|
|0-24 months |MAL-ED         |BRAZIL       |<151 cm      |           1|      4|   24|
|0-24 months |MAL-ED         |TANZANIA     |>=155 cm     |           0|      2|   51|
|0-24 months |MAL-ED         |TANZANIA     |>=155 cm     |           1|     26|   51|
|0-24 months |MAL-ED         |TANZANIA     |[151-155) cm |           0|      0|   51|
|0-24 months |MAL-ED         |TANZANIA     |[151-155) cm |           1|      6|   51|
|0-24 months |MAL-ED         |TANZANIA     |<151 cm      |           0|      7|   51|
|0-24 months |MAL-ED         |TANZANIA     |<151 cm      |           1|     10|   51|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=155 cm     |           0|     12|   81|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=155 cm     |           1|     46|   81|
|0-24 months |MAL-ED         |SOUTH AFRICA |[151-155) cm |           0|      2|   81|
|0-24 months |MAL-ED         |SOUTH AFRICA |[151-155) cm |           1|      9|   81|
|0-24 months |MAL-ED         |SOUTH AFRICA |<151 cm      |           0|      2|   81|
|0-24 months |MAL-ED         |SOUTH AFRICA |<151 cm      |           1|     10|   81|
|0-24 months |NIH-Birth      |BANGLADESH   |>=155 cm     |           0|     32|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |>=155 cm     |           1|     37|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |[151-155) cm |           0|     40|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |[151-155) cm |           1|     44|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |<151 cm      |           0|    130|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |<151 cm      |           1|    138|  421|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=155 cm     |           0|     20|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=155 cm     |           1|     37|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |[151-155) cm |           0|     34|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |[151-155) cm |           1|     46|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |<151 cm      |           0|     63|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |<151 cm      |           1|    110|  310|
|0-24 months |PROBIT         |BELARUS      |>=155 cm     |           0|    418| 3959|
|0-24 months |PROBIT         |BELARUS      |>=155 cm     |           1|   3376| 3959|
|0-24 months |PROBIT         |BELARUS      |[151-155) cm |           0|     10| 3959|
|0-24 months |PROBIT         |BELARUS      |[151-155) cm |           1|    107| 3959|
|0-24 months |PROBIT         |BELARUS      |<151 cm      |           0|      2| 3959|
|0-24 months |PROBIT         |BELARUS      |<151 cm      |           1|     46| 3959|
|0-24 months |PROVIDE        |BANGLADESH   |>=155 cm     |           0|     21|  294|
|0-24 months |PROVIDE        |BANGLADESH   |>=155 cm     |           1|     32|  294|
|0-24 months |PROVIDE        |BANGLADESH   |[151-155) cm |           0|     41|  294|
|0-24 months |PROVIDE        |BANGLADESH   |[151-155) cm |           1|     47|  294|
|0-24 months |PROVIDE        |BANGLADESH   |<151 cm      |           0|     61|  294|
|0-24 months |PROVIDE        |BANGLADESH   |<151 cm      |           1|     92|  294|
|0-24 months |SAS-CompFeed   |INDIA        |>=155 cm     |           0|    201|  804|
|0-24 months |SAS-CompFeed   |INDIA        |>=155 cm     |           1|    111|  804|
|0-24 months |SAS-CompFeed   |INDIA        |[151-155) cm |           0|    110|  804|
|0-24 months |SAS-CompFeed   |INDIA        |[151-155) cm |           1|     87|  804|
|0-24 months |SAS-CompFeed   |INDIA        |<151 cm      |           0|    186|  804|
|0-24 months |SAS-CompFeed   |INDIA        |<151 cm      |           1|    109|  804|
|0-24 months |SAS-FoodSuppl  |INDIA        |>=155 cm     |           0|     46|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |>=155 cm     |           1|      3|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |[151-155) cm |           0|     53|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |[151-155) cm |           1|      6|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |<151 cm      |           0|    122|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |<151 cm      |           1|      4|  234|
|0-24 months |TanzaniaChild2 |TANZANIA     |>=155 cm     |           0|    159|  707|
|0-24 months |TanzaniaChild2 |TANZANIA     |>=155 cm     |           1|    272|  707|
|0-24 months |TanzaniaChild2 |TANZANIA     |[151-155) cm |           0|     60|  707|
|0-24 months |TanzaniaChild2 |TANZANIA     |[151-155) cm |           1|     96|  707|
|0-24 months |TanzaniaChild2 |TANZANIA     |<151 cm      |           0|     46|  707|
|0-24 months |TanzaniaChild2 |TANZANIA     |<151 cm      |           1|     74|  707|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=155 cm     |           0|    846| 2622|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=155 cm     |           1|   1235| 2622|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[151-155) cm |           0|    140| 2622|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[151-155) cm |           1|    238| 2622|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<151 cm      |           0|     70| 2622|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<151 cm      |           1|     93| 2622|
|0-6 months  |COHORTS        |INDIA        |>=155 cm     |           0|    847| 1796|
|0-6 months  |COHORTS        |INDIA        |>=155 cm     |           1|    473| 1796|
|0-6 months  |COHORTS        |INDIA        |[151-155) cm |           0|    120| 1796|
|0-6 months  |COHORTS        |INDIA        |[151-155) cm |           1|     60| 1796|
|0-6 months  |COHORTS        |INDIA        |<151 cm      |           0|    185| 1796|
|0-6 months  |COHORTS        |INDIA        |<151 cm      |           1|    111| 1796|
|0-6 months  |COHORTS        |GUATEMALA    |>=155 cm     |           0|      5|  207|
|0-6 months  |COHORTS        |GUATEMALA    |>=155 cm     |           1|     21|  207|
|0-6 months  |COHORTS        |GUATEMALA    |[151-155) cm |           0|      8|  207|
|0-6 months  |COHORTS        |GUATEMALA    |[151-155) cm |           1|     25|  207|
|0-6 months  |COHORTS        |GUATEMALA    |<151 cm      |           0|     37|  207|
|0-6 months  |COHORTS        |GUATEMALA    |<151 cm      |           1|    111|  207|
|0-6 months  |COHORTS        |PHILIPPINES  |>=155 cm     |           0|     43|  752|
|0-6 months  |COHORTS        |PHILIPPINES  |>=155 cm     |           1|    133|  752|
|0-6 months  |COHORTS        |PHILIPPINES  |[151-155) cm |           0|     49|  752|
|0-6 months  |COHORTS        |PHILIPPINES  |[151-155) cm |           1|    123|  752|
|0-6 months  |COHORTS        |PHILIPPINES  |<151 cm      |           0|    106|  752|
|0-6 months  |COHORTS        |PHILIPPINES  |<151 cm      |           1|    298|  752|
|0-6 months  |Guatemala BSC  |GUATEMALA    |>=155 cm     |           0|      0|    8|
|0-6 months  |Guatemala BSC  |GUATEMALA    |>=155 cm     |           1|      0|    8|
|0-6 months  |Guatemala BSC  |GUATEMALA    |[151-155) cm |           0|      2|    8|
|0-6 months  |Guatemala BSC  |GUATEMALA    |[151-155) cm |           1|      0|    8|
|0-6 months  |Guatemala BSC  |GUATEMALA    |<151 cm      |           0|      4|    8|
|0-6 months  |Guatemala BSC  |GUATEMALA    |<151 cm      |           1|      2|    8|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=155 cm     |           0|    262| 4685|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=155 cm     |           1|    569| 4685|
|0-6 months  |JiVitA-3       |BANGLADESH   |[151-155) cm |           0|    348| 4685|
|0-6 months  |JiVitA-3       |BANGLADESH   |[151-155) cm |           1|    760| 4685|
|0-6 months  |JiVitA-3       |BANGLADESH   |<151 cm      |           0|    907| 4685|
|0-6 months  |JiVitA-3       |BANGLADESH   |<151 cm      |           1|   1839| 4685|
|0-6 months  |Keneba         |GAMBIA       |>=155 cm     |           0|    106|  628|
|0-6 months  |Keneba         |GAMBIA       |>=155 cm     |           1|    367|  628|
|0-6 months  |Keneba         |GAMBIA       |[151-155) cm |           0|     19|  628|
|0-6 months  |Keneba         |GAMBIA       |[151-155) cm |           1|     75|  628|
|0-6 months  |Keneba         |GAMBIA       |<151 cm      |           0|     15|  628|
|0-6 months  |Keneba         |GAMBIA       |<151 cm      |           1|     46|  628|
|0-6 months  |LCNI-5         |MALAWI       |>=155 cm     |           0|      2|    4|
|0-6 months  |LCNI-5         |MALAWI       |>=155 cm     |           1|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |[151-155) cm |           0|      1|    4|
|0-6 months  |LCNI-5         |MALAWI       |[151-155) cm |           1|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |<151 cm      |           0|      1|    4|
|0-6 months  |LCNI-5         |MALAWI       |<151 cm      |           1|      0|    4|
|0-6 months  |MAL-ED         |INDIA        |>=155 cm     |           0|      9|   84|
|0-6 months  |MAL-ED         |INDIA        |>=155 cm     |           1|     14|   84|
|0-6 months  |MAL-ED         |INDIA        |[151-155) cm |           0|      4|   84|
|0-6 months  |MAL-ED         |INDIA        |[151-155) cm |           1|     16|   84|
|0-6 months  |MAL-ED         |INDIA        |<151 cm      |           0|     13|   84|
|0-6 months  |MAL-ED         |INDIA        |<151 cm      |           1|     28|   84|
|0-6 months  |MAL-ED         |BANGLADESH   |>=155 cm     |           0|      2|   60|
|0-6 months  |MAL-ED         |BANGLADESH   |>=155 cm     |           1|      7|   60|
|0-6 months  |MAL-ED         |BANGLADESH   |[151-155) cm |           0|      3|   60|
|0-6 months  |MAL-ED         |BANGLADESH   |[151-155) cm |           1|     11|   60|
|0-6 months  |MAL-ED         |BANGLADESH   |<151 cm      |           0|      6|   60|
|0-6 months  |MAL-ED         |BANGLADESH   |<151 cm      |           1|     31|   60|
|0-6 months  |MAL-ED         |PERU         |>=155 cm     |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |>=155 cm     |           1|      5|   11|
|0-6 months  |MAL-ED         |PERU         |[151-155) cm |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |[151-155) cm |           1|      1|   11|
|0-6 months  |MAL-ED         |PERU         |<151 cm      |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |<151 cm      |           1|      5|   11|
|0-6 months  |MAL-ED         |NEPAL        |>=155 cm     |           0|      3|   48|
|0-6 months  |MAL-ED         |NEPAL        |>=155 cm     |           1|      4|   48|
|0-6 months  |MAL-ED         |NEPAL        |[151-155) cm |           0|      2|   48|
|0-6 months  |MAL-ED         |NEPAL        |[151-155) cm |           1|     10|   48|
|0-6 months  |MAL-ED         |NEPAL        |<151 cm      |           0|      4|   48|
|0-6 months  |MAL-ED         |NEPAL        |<151 cm      |           1|     25|   48|
|0-6 months  |MAL-ED         |BRAZIL       |>=155 cm     |           0|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |>=155 cm     |           1|      7|   15|
|0-6 months  |MAL-ED         |BRAZIL       |[151-155) cm |           0|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |[151-155) cm |           1|      4|   15|
|0-6 months  |MAL-ED         |BRAZIL       |<151 cm      |           0|      1|   15|
|0-6 months  |MAL-ED         |BRAZIL       |<151 cm      |           1|      3|   15|
|0-6 months  |MAL-ED         |TANZANIA     |>=155 cm     |           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |>=155 cm     |           1|     11|   14|
|0-6 months  |MAL-ED         |TANZANIA     |[151-155) cm |           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |[151-155) cm |           1|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |<151 cm      |           0|      1|   14|
|0-6 months  |MAL-ED         |TANZANIA     |<151 cm      |           1|      2|   14|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=155 cm     |           0|      5|   32|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=155 cm     |           1|     18|   32|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[151-155) cm |           0|      1|   32|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[151-155) cm |           1|      4|   32|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<151 cm      |           0|      1|   32|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<151 cm      |           1|      3|   32|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=155 cm     |           0|     11|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=155 cm     |           1|     25|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |[151-155) cm |           0|     12|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |[151-155) cm |           1|     34|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |<151 cm      |           0|     41|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |<151 cm      |           1|    100|  223|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=155 cm     |           0|      3|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=155 cm     |           1|     34|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[151-155) cm |           0|      8|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[151-155) cm |           1|     41|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<151 cm      |           0|     10|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<151 cm      |           1|    101|  197|
|0-6 months  |PROBIT         |BELARUS      |>=155 cm     |           0|    328| 3832|
|0-6 months  |PROBIT         |BELARUS      |>=155 cm     |           1|   3345| 3832|
|0-6 months  |PROBIT         |BELARUS      |[151-155) cm |           0|      6| 3832|
|0-6 months  |PROBIT         |BELARUS      |[151-155) cm |           1|    105| 3832|
|0-6 months  |PROBIT         |BELARUS      |<151 cm      |           0|      2| 3832|
|0-6 months  |PROBIT         |BELARUS      |<151 cm      |           1|     46| 3832|
|0-6 months  |PROVIDE        |BANGLADESH   |>=155 cm     |           0|      7|  177|
|0-6 months  |PROVIDE        |BANGLADESH   |>=155 cm     |           1|     29|  177|
|0-6 months  |PROVIDE        |BANGLADESH   |[151-155) cm |           0|     10|  177|
|0-6 months  |PROVIDE        |BANGLADESH   |[151-155) cm |           1|     38|  177|
|0-6 months  |PROVIDE        |BANGLADESH   |<151 cm      |           0|     20|  177|
|0-6 months  |PROVIDE        |BANGLADESH   |<151 cm      |           1|     73|  177|
|0-6 months  |SAS-CompFeed   |INDIA        |>=155 cm     |           0|     65|  334|
|0-6 months  |SAS-CompFeed   |INDIA        |>=155 cm     |           1|     61|  334|
|0-6 months  |SAS-CompFeed   |INDIA        |[151-155) cm |           0|     39|  334|
|0-6 months  |SAS-CompFeed   |INDIA        |[151-155) cm |           1|     49|  334|
|0-6 months  |SAS-CompFeed   |INDIA        |<151 cm      |           0|     58|  334|
|0-6 months  |SAS-CompFeed   |INDIA        |<151 cm      |           1|     62|  334|
|0-6 months  |SAS-FoodSuppl  |INDIA        |>=155 cm     |           0|     16|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |>=155 cm     |           1|      0|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |[151-155) cm |           0|     20|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |[151-155) cm |           1|      0|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |<151 cm      |           0|     42|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |<151 cm      |           1|      0|   78|
|0-6 months  |TanzaniaChild2 |TANZANIA     |>=155 cm     |           0|     62|  336|
|0-6 months  |TanzaniaChild2 |TANZANIA     |>=155 cm     |           1|    152|  336|
|0-6 months  |TanzaniaChild2 |TANZANIA     |[151-155) cm |           0|     19|  336|
|0-6 months  |TanzaniaChild2 |TANZANIA     |[151-155) cm |           1|     43|  336|
|0-6 months  |TanzaniaChild2 |TANZANIA     |<151 cm      |           0|     20|  336|
|0-6 months  |TanzaniaChild2 |TANZANIA     |<151 cm      |           1|     40|  336|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=155 cm     |           0|    200| 1744|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=155 cm     |           1|   1183| 1744|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[151-155) cm |           0|     27| 1744|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[151-155) cm |           1|    224| 1744|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<151 cm      |           0|     18| 1744|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<151 cm      |           1|     92| 1744|
|6-24 months |COHORTS        |INDIA        |>=155 cm     |           0|    623|  867|
|6-24 months |COHORTS        |INDIA        |>=155 cm     |           1|      0|  867|
|6-24 months |COHORTS        |INDIA        |[151-155) cm |           0|     82|  867|
|6-24 months |COHORTS        |INDIA        |[151-155) cm |           1|      0|  867|
|6-24 months |COHORTS        |INDIA        |<151 cm      |           0|    162|  867|
|6-24 months |COHORTS        |INDIA        |<151 cm      |           1|      0|  867|
|6-24 months |COHORTS        |GUATEMALA    |>=155 cm     |           0|     15|  161|
|6-24 months |COHORTS        |GUATEMALA    |>=155 cm     |           1|      0|  161|
|6-24 months |COHORTS        |GUATEMALA    |[151-155) cm |           0|     24|  161|
|6-24 months |COHORTS        |GUATEMALA    |[151-155) cm |           1|      1|  161|
|6-24 months |COHORTS        |GUATEMALA    |<151 cm      |           0|    114|  161|
|6-24 months |COHORTS        |GUATEMALA    |<151 cm      |           1|      7|  161|
|6-24 months |COHORTS        |PHILIPPINES  |>=155 cm     |           0|     80|  936|
|6-24 months |COHORTS        |PHILIPPINES  |>=155 cm     |           1|    101|  936|
|6-24 months |COHORTS        |PHILIPPINES  |[151-155) cm |           0|     92|  936|
|6-24 months |COHORTS        |PHILIPPINES  |[151-155) cm |           1|     94|  936|
|6-24 months |COHORTS        |PHILIPPINES  |<151 cm      |           0|    294|  936|
|6-24 months |COHORTS        |PHILIPPINES  |<151 cm      |           1|    275|  936|
|6-24 months |Guatemala BSC  |GUATEMALA    |>=155 cm     |           0|      0|   19|
|6-24 months |Guatemala BSC  |GUATEMALA    |>=155 cm     |           1|      1|   19|
|6-24 months |Guatemala BSC  |GUATEMALA    |[151-155) cm |           0|      3|   19|
|6-24 months |Guatemala BSC  |GUATEMALA    |[151-155) cm |           1|      2|   19|
|6-24 months |Guatemala BSC  |GUATEMALA    |<151 cm      |           0|      8|   19|
|6-24 months |Guatemala BSC  |GUATEMALA    |<151 cm      |           1|      5|   19|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |>=155 cm     |           0|    660|  802|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |>=155 cm     |           1|     32|  802|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |[151-155) cm |           0|     74|  802|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |[151-155) cm |           1|      2|  802|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |<151 cm      |           0|     33|  802|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |<151 cm      |           1|      1|  802|
|6-24 months |JiVitA-3       |BANGLADESH   |>=155 cm     |           0|    472| 2814|
|6-24 months |JiVitA-3       |BANGLADESH   |>=155 cm     |           1|      0| 2814|
|6-24 months |JiVitA-3       |BANGLADESH   |[151-155) cm |           0|    707| 2814|
|6-24 months |JiVitA-3       |BANGLADESH   |[151-155) cm |           1|      0| 2814|
|6-24 months |JiVitA-3       |BANGLADESH   |<151 cm      |           0|   1635| 2814|
|6-24 months |JiVitA-3       |BANGLADESH   |<151 cm      |           1|      0| 2814|
|6-24 months |Keneba         |GAMBIA       |>=155 cm     |           0|    356|  931|
|6-24 months |Keneba         |GAMBIA       |>=155 cm     |           1|    359|  931|
|6-24 months |Keneba         |GAMBIA       |[151-155) cm |           0|     58|  931|
|6-24 months |Keneba         |GAMBIA       |[151-155) cm |           1|     63|  931|
|6-24 months |Keneba         |GAMBIA       |<151 cm      |           0|     50|  931|
|6-24 months |Keneba         |GAMBIA       |<151 cm      |           1|     45|  931|
|6-24 months |LCNI-5         |MALAWI       |>=155 cm     |           0|     36|   75|
|6-24 months |LCNI-5         |MALAWI       |>=155 cm     |           1|      7|   75|
|6-24 months |LCNI-5         |MALAWI       |[151-155) cm |           0|     14|   75|
|6-24 months |LCNI-5         |MALAWI       |[151-155) cm |           1|      2|   75|
|6-24 months |LCNI-5         |MALAWI       |<151 cm      |           0|     12|   75|
|6-24 months |LCNI-5         |MALAWI       |<151 cm      |           1|      4|   75|
|6-24 months |MAL-ED         |INDIA        |>=155 cm     |           0|     10|   94|
|6-24 months |MAL-ED         |INDIA        |>=155 cm     |           1|      7|   94|
|6-24 months |MAL-ED         |INDIA        |[151-155) cm |           0|     10|   94|
|6-24 months |MAL-ED         |INDIA        |[151-155) cm |           1|     10|   94|
|6-24 months |MAL-ED         |INDIA        |<151 cm      |           0|     23|   94|
|6-24 months |MAL-ED         |INDIA        |<151 cm      |           1|     34|   94|
|6-24 months |MAL-ED         |BANGLADESH   |>=155 cm     |           0|      4|   59|
|6-24 months |MAL-ED         |BANGLADESH   |>=155 cm     |           1|      5|   59|
|6-24 months |MAL-ED         |BANGLADESH   |[151-155) cm |           0|      5|   59|
|6-24 months |MAL-ED         |BANGLADESH   |[151-155) cm |           1|      6|   59|
|6-24 months |MAL-ED         |BANGLADESH   |<151 cm      |           0|     21|   59|
|6-24 months |MAL-ED         |BANGLADESH   |<151 cm      |           1|     18|   59|
|6-24 months |MAL-ED         |PERU         |>=155 cm     |           0|      2|   20|
|6-24 months |MAL-ED         |PERU         |>=155 cm     |           1|      3|   20|
|6-24 months |MAL-ED         |PERU         |[151-155) cm |           0|      0|   20|
|6-24 months |MAL-ED         |PERU         |[151-155) cm |           1|      2|   20|
|6-24 months |MAL-ED         |PERU         |<151 cm      |           0|      3|   20|
|6-24 months |MAL-ED         |PERU         |<151 cm      |           1|     10|   20|
|6-24 months |MAL-ED         |NEPAL        |>=155 cm     |           0|      0|   50|
|6-24 months |MAL-ED         |NEPAL        |>=155 cm     |           1|     10|   50|
|6-24 months |MAL-ED         |NEPAL        |[151-155) cm |           0|      2|   50|
|6-24 months |MAL-ED         |NEPAL        |[151-155) cm |           1|     10|   50|
|6-24 months |MAL-ED         |NEPAL        |<151 cm      |           0|      9|   50|
|6-24 months |MAL-ED         |NEPAL        |<151 cm      |           1|     19|   50|
|6-24 months |MAL-ED         |BRAZIL       |>=155 cm     |           0|      3|    9|
|6-24 months |MAL-ED         |BRAZIL       |>=155 cm     |           1|      2|    9|
|6-24 months |MAL-ED         |BRAZIL       |[151-155) cm |           0|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |[151-155) cm |           1|      1|    9|
|6-24 months |MAL-ED         |BRAZIL       |<151 cm      |           0|      2|    9|
|6-24 months |MAL-ED         |BRAZIL       |<151 cm      |           1|      1|    9|
|6-24 months |MAL-ED         |TANZANIA     |>=155 cm     |           0|      2|   37|
|6-24 months |MAL-ED         |TANZANIA     |>=155 cm     |           1|     15|   37|
|6-24 months |MAL-ED         |TANZANIA     |[151-155) cm |           0|      0|   37|
|6-24 months |MAL-ED         |TANZANIA     |[151-155) cm |           1|      6|   37|
|6-24 months |MAL-ED         |TANZANIA     |<151 cm      |           0|      6|   37|
|6-24 months |MAL-ED         |TANZANIA     |<151 cm      |           1|      8|   37|
|6-24 months |MAL-ED         |SOUTH AFRICA |>=155 cm     |           0|      7|   49|
|6-24 months |MAL-ED         |SOUTH AFRICA |>=155 cm     |           1|     28|   49|
|6-24 months |MAL-ED         |SOUTH AFRICA |[151-155) cm |           0|      1|   49|
|6-24 months |MAL-ED         |SOUTH AFRICA |[151-155) cm |           1|      5|   49|
|6-24 months |MAL-ED         |SOUTH AFRICA |<151 cm      |           0|      1|   49|
|6-24 months |MAL-ED         |SOUTH AFRICA |<151 cm      |           1|      7|   49|
|6-24 months |NIH-Birth      |BANGLADESH   |>=155 cm     |           0|     21|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |>=155 cm     |           1|     12|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |[151-155) cm |           0|     28|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |[151-155) cm |           1|     10|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |<151 cm      |           0|     89|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |<151 cm      |           1|     38|  198|
|6-24 months |NIH-Crypto     |BANGLADESH   |>=155 cm     |           0|     17|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |>=155 cm     |           1|      3|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |[151-155) cm |           0|     26|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |[151-155) cm |           1|      5|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |<151 cm      |           0|     53|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |<151 cm      |           1|      9|  113|
|6-24 months |PROBIT         |BELARUS      |>=155 cm     |           0|     90|  127|
|6-24 months |PROBIT         |BELARUS      |>=155 cm     |           1|     31|  127|
|6-24 months |PROBIT         |BELARUS      |[151-155) cm |           0|      4|  127|
|6-24 months |PROBIT         |BELARUS      |[151-155) cm |           1|      2|  127|
|6-24 months |PROBIT         |BELARUS      |<151 cm      |           0|      0|  127|
|6-24 months |PROBIT         |BELARUS      |<151 cm      |           1|      0|  127|
|6-24 months |PROVIDE        |BANGLADESH   |>=155 cm     |           0|     14|  117|
|6-24 months |PROVIDE        |BANGLADESH   |>=155 cm     |           1|      3|  117|
|6-24 months |PROVIDE        |BANGLADESH   |[151-155) cm |           0|     31|  117|
|6-24 months |PROVIDE        |BANGLADESH   |[151-155) cm |           1|      9|  117|
|6-24 months |PROVIDE        |BANGLADESH   |<151 cm      |           0|     41|  117|
|6-24 months |PROVIDE        |BANGLADESH   |<151 cm      |           1|     19|  117|
|6-24 months |SAS-CompFeed   |INDIA        |>=155 cm     |           0|    136|  470|
|6-24 months |SAS-CompFeed   |INDIA        |>=155 cm     |           1|     50|  470|
|6-24 months |SAS-CompFeed   |INDIA        |[151-155) cm |           0|     71|  470|
|6-24 months |SAS-CompFeed   |INDIA        |[151-155) cm |           1|     38|  470|
|6-24 months |SAS-CompFeed   |INDIA        |<151 cm      |           0|    128|  470|
|6-24 months |SAS-CompFeed   |INDIA        |<151 cm      |           1|     47|  470|
|6-24 months |SAS-FoodSuppl  |INDIA        |>=155 cm     |           0|     30|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |>=155 cm     |           1|      3|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |[151-155) cm |           0|     33|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |[151-155) cm |           1|      6|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |<151 cm      |           0|     80|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |<151 cm      |           1|      4|  156|
|6-24 months |TanzaniaChild2 |TANZANIA     |>=155 cm     |           0|     97|  371|
|6-24 months |TanzaniaChild2 |TANZANIA     |>=155 cm     |           1|    120|  371|
|6-24 months |TanzaniaChild2 |TANZANIA     |[151-155) cm |           0|     41|  371|
|6-24 months |TanzaniaChild2 |TANZANIA     |[151-155) cm |           1|     53|  371|
|6-24 months |TanzaniaChild2 |TANZANIA     |<151 cm      |           0|     26|  371|
|6-24 months |TanzaniaChild2 |TANZANIA     |<151 cm      |           1|     34|  371|
|6-24 months |ZVITAMBO       |ZIMBABWE     |>=155 cm     |           0|    646|  878|
|6-24 months |ZVITAMBO       |ZIMBABWE     |>=155 cm     |           1|     52|  878|
|6-24 months |ZVITAMBO       |ZIMBABWE     |[151-155) cm |           0|    113|  878|
|6-24 months |ZVITAMBO       |ZIMBABWE     |[151-155) cm |           1|     14|  878|
|6-24 months |ZVITAMBO       |ZIMBABWE     |<151 cm      |           0|     52|  878|
|6-24 months |ZVITAMBO       |ZIMBABWE     |<151 cm      |           1|      1|  878|


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

* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


