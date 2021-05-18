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

**Outcome Variable:** ever_swasted

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

|agecat      |studyid       |country      |fage    | ever_swasted| n_cell|     n|
|:-----------|:-------------|:------------|:-------|------------:|------:|-----:|
|0-24 months |COHORTS       |GUATEMALA    |>=38    |            0|    387|  1316|
|0-24 months |COHORTS       |GUATEMALA    |>=38    |            1|     19|  1316|
|0-24 months |COHORTS       |GUATEMALA    |[32-38) |            0|    297|  1316|
|0-24 months |COHORTS       |GUATEMALA    |[32-38) |            1|     26|  1316|
|0-24 months |COHORTS       |GUATEMALA    |<32     |            0|    538|  1316|
|0-24 months |COHORTS       |GUATEMALA    |<32     |            1|     49|  1316|
|0-24 months |COHORTS       |PHILIPPINES  |>=38    |            0|    356|  2926|
|0-24 months |COHORTS       |PHILIPPINES  |>=38    |            1|     53|  2926|
|0-24 months |COHORTS       |PHILIPPINES  |[32-38) |            0|    467|  2926|
|0-24 months |COHORTS       |PHILIPPINES  |[32-38) |            1|     69|  2926|
|0-24 months |COHORTS       |PHILIPPINES  |<32     |            0|   1731|  2926|
|0-24 months |COHORTS       |PHILIPPINES  |<32     |            1|    250|  2926|
|0-24 months |LCNI-5        |MALAWI       |>=38    |            0|     19|    50|
|0-24 months |LCNI-5        |MALAWI       |>=38    |            1|      0|    50|
|0-24 months |LCNI-5        |MALAWI       |[32-38) |            0|      8|    50|
|0-24 months |LCNI-5        |MALAWI       |[32-38) |            1|      0|    50|
|0-24 months |LCNI-5        |MALAWI       |<32     |            0|     23|    50|
|0-24 months |LCNI-5        |MALAWI       |<32     |            1|      0|    50|
|0-24 months |MAL-ED        |INDIA        |>=38    |            0|     53|   160|
|0-24 months |MAL-ED        |INDIA        |>=38    |            1|      8|   160|
|0-24 months |MAL-ED        |INDIA        |[32-38) |            0|     48|   160|
|0-24 months |MAL-ED        |INDIA        |[32-38) |            1|      5|   160|
|0-24 months |MAL-ED        |INDIA        |<32     |            0|     42|   160|
|0-24 months |MAL-ED        |INDIA        |<32     |            1|      4|   160|
|0-24 months |MAL-ED        |BANGLADESH   |>=38    |            0|     80|   133|
|0-24 months |MAL-ED        |BANGLADESH   |>=38    |            1|      4|   133|
|0-24 months |MAL-ED        |BANGLADESH   |[32-38) |            0|     28|   133|
|0-24 months |MAL-ED        |BANGLADESH   |[32-38) |            1|      2|   133|
|0-24 months |MAL-ED        |BANGLADESH   |<32     |            0|     18|   133|
|0-24 months |MAL-ED        |BANGLADESH   |<32     |            1|      1|   133|
|0-24 months |MAL-ED        |PERU         |>=38    |            0|     46|   107|
|0-24 months |MAL-ED        |PERU         |>=38    |            1|      1|   107|
|0-24 months |MAL-ED        |PERU         |[32-38) |            0|     26|   107|
|0-24 months |MAL-ED        |PERU         |[32-38) |            1|      1|   107|
|0-24 months |MAL-ED        |PERU         |<32     |            0|     33|   107|
|0-24 months |MAL-ED        |PERU         |<32     |            1|      0|   107|
|0-24 months |MAL-ED        |NEPAL        |>=38    |            0|     38|    87|
|0-24 months |MAL-ED        |NEPAL        |>=38    |            1|      1|    87|
|0-24 months |MAL-ED        |NEPAL        |[32-38) |            0|     31|    87|
|0-24 months |MAL-ED        |NEPAL        |[32-38) |            1|      0|    87|
|0-24 months |MAL-ED        |NEPAL        |<32     |            0|     16|    87|
|0-24 months |MAL-ED        |NEPAL        |<32     |            1|      1|    87|
|0-24 months |MAL-ED        |BRAZIL       |>=38    |            0|     36|    69|
|0-24 months |MAL-ED        |BRAZIL       |>=38    |            1|      0|    69|
|0-24 months |MAL-ED        |BRAZIL       |[32-38) |            0|     14|    69|
|0-24 months |MAL-ED        |BRAZIL       |[32-38) |            1|      1|    69|
|0-24 months |MAL-ED        |BRAZIL       |<32     |            0|     17|    69|
|0-24 months |MAL-ED        |BRAZIL       |<32     |            1|      1|    69|
|0-24 months |MAL-ED        |TANZANIA     |>=38    |            0|     50|    97|
|0-24 months |MAL-ED        |TANZANIA     |>=38    |            1|      3|    97|
|0-24 months |MAL-ED        |TANZANIA     |[32-38) |            0|     25|    97|
|0-24 months |MAL-ED        |TANZANIA     |[32-38) |            1|      1|    97|
|0-24 months |MAL-ED        |TANZANIA     |<32     |            0|     17|    97|
|0-24 months |MAL-ED        |TANZANIA     |<32     |            1|      1|    97|
|0-24 months |MAL-ED        |SOUTH AFRICA |>=38    |            0|     76|   115|
|0-24 months |MAL-ED        |SOUTH AFRICA |>=38    |            1|      2|   115|
|0-24 months |MAL-ED        |SOUTH AFRICA |[32-38) |            0|     25|   115|
|0-24 months |MAL-ED        |SOUTH AFRICA |[32-38) |            1|      3|   115|
|0-24 months |MAL-ED        |SOUTH AFRICA |<32     |            0|      9|   115|
|0-24 months |MAL-ED        |SOUTH AFRICA |<32     |            1|      0|   115|
|0-24 months |PROBIT        |BELARUS      |>=38    |            0|    719| 16269|
|0-24 months |PROBIT        |BELARUS      |>=38    |            1|     60| 16269|
|0-24 months |PROBIT        |BELARUS      |[32-38) |            0|   2348| 16269|
|0-24 months |PROBIT        |BELARUS      |[32-38) |            1|    197| 16269|
|0-24 months |PROBIT        |BELARUS      |<32     |            0|  11923| 16269|
|0-24 months |PROBIT        |BELARUS      |<32     |            1|   1022| 16269|
|0-24 months |SAS-CompFeed  |INDIA        |>=38    |            0|     54|  1513|
|0-24 months |SAS-CompFeed  |INDIA        |>=38    |            1|      9|  1513|
|0-24 months |SAS-CompFeed  |INDIA        |[32-38) |            0|    169|  1513|
|0-24 months |SAS-CompFeed  |INDIA        |[32-38) |            1|     30|  1513|
|0-24 months |SAS-CompFeed  |INDIA        |<32     |            0|   1067|  1513|
|0-24 months |SAS-CompFeed  |INDIA        |<32     |            1|    184|  1513|
|0-24 months |SAS-FoodSuppl |INDIA        |>=38    |            0|     63|   418|
|0-24 months |SAS-FoodSuppl |INDIA        |>=38    |            1|     12|   418|
|0-24 months |SAS-FoodSuppl |INDIA        |[32-38) |            0|     76|   418|
|0-24 months |SAS-FoodSuppl |INDIA        |[32-38) |            1|     20|   418|
|0-24 months |SAS-FoodSuppl |INDIA        |<32     |            0|    208|   418|
|0-24 months |SAS-FoodSuppl |INDIA        |<32     |            1|     39|   418|
|0-6 months  |COHORTS       |GUATEMALA    |>=38    |            0|    303|  1038|
|0-6 months  |COHORTS       |GUATEMALA    |>=38    |            1|     12|  1038|
|0-6 months  |COHORTS       |GUATEMALA    |[32-38) |            0|    234|  1038|
|0-6 months  |COHORTS       |GUATEMALA    |[32-38) |            1|     20|  1038|
|0-6 months  |COHORTS       |GUATEMALA    |<32     |            0|    436|  1038|
|0-6 months  |COHORTS       |GUATEMALA    |<32     |            1|     33|  1038|
|0-6 months  |COHORTS       |PHILIPPINES  |>=38    |            0|    377|  2925|
|0-6 months  |COHORTS       |PHILIPPINES  |>=38    |            1|     32|  2925|
|0-6 months  |COHORTS       |PHILIPPINES  |[32-38) |            0|    493|  2925|
|0-6 months  |COHORTS       |PHILIPPINES  |[32-38) |            1|     43|  2925|
|0-6 months  |COHORTS       |PHILIPPINES  |<32     |            0|   1850|  2925|
|0-6 months  |COHORTS       |PHILIPPINES  |<32     |            1|    130|  2925|
|0-6 months  |LCNI-5        |MALAWI       |>=38    |            0|      9|    19|
|0-6 months  |LCNI-5        |MALAWI       |>=38    |            1|      0|    19|
|0-6 months  |LCNI-5        |MALAWI       |[32-38) |            0|      2|    19|
|0-6 months  |LCNI-5        |MALAWI       |[32-38) |            1|      0|    19|
|0-6 months  |LCNI-5        |MALAWI       |<32     |            0|      8|    19|
|0-6 months  |LCNI-5        |MALAWI       |<32     |            1|      0|    19|
|0-6 months  |MAL-ED        |INDIA        |>=38    |            0|     57|   160|
|0-6 months  |MAL-ED        |INDIA        |>=38    |            1|      4|   160|
|0-6 months  |MAL-ED        |INDIA        |[32-38) |            0|     49|   160|
|0-6 months  |MAL-ED        |INDIA        |[32-38) |            1|      4|   160|
|0-6 months  |MAL-ED        |INDIA        |<32     |            0|     42|   160|
|0-6 months  |MAL-ED        |INDIA        |<32     |            1|      4|   160|
|0-6 months  |MAL-ED        |BANGLADESH   |>=38    |            0|     81|   133|
|0-6 months  |MAL-ED        |BANGLADESH   |>=38    |            1|      3|   133|
|0-6 months  |MAL-ED        |BANGLADESH   |[32-38) |            0|     29|   133|
|0-6 months  |MAL-ED        |BANGLADESH   |[32-38) |            1|      1|   133|
|0-6 months  |MAL-ED        |BANGLADESH   |<32     |            0|     19|   133|
|0-6 months  |MAL-ED        |BANGLADESH   |<32     |            1|      0|   133|
|0-6 months  |MAL-ED        |PERU         |>=38    |            0|     47|   107|
|0-6 months  |MAL-ED        |PERU         |>=38    |            1|      0|   107|
|0-6 months  |MAL-ED        |PERU         |[32-38) |            0|     26|   107|
|0-6 months  |MAL-ED        |PERU         |[32-38) |            1|      1|   107|
|0-6 months  |MAL-ED        |PERU         |<32     |            0|     33|   107|
|0-6 months  |MAL-ED        |PERU         |<32     |            1|      0|   107|
|0-6 months  |MAL-ED        |NEPAL        |>=38    |            0|     38|    87|
|0-6 months  |MAL-ED        |NEPAL        |>=38    |            1|      1|    87|
|0-6 months  |MAL-ED        |NEPAL        |[32-38) |            0|     31|    87|
|0-6 months  |MAL-ED        |NEPAL        |[32-38) |            1|      0|    87|
|0-6 months  |MAL-ED        |NEPAL        |<32     |            0|     16|    87|
|0-6 months  |MAL-ED        |NEPAL        |<32     |            1|      1|    87|
|0-6 months  |MAL-ED        |BRAZIL       |>=38    |            0|     36|    69|
|0-6 months  |MAL-ED        |BRAZIL       |>=38    |            1|      0|    69|
|0-6 months  |MAL-ED        |BRAZIL       |[32-38) |            0|     14|    69|
|0-6 months  |MAL-ED        |BRAZIL       |[32-38) |            1|      1|    69|
|0-6 months  |MAL-ED        |BRAZIL       |<32     |            0|     17|    69|
|0-6 months  |MAL-ED        |BRAZIL       |<32     |            1|      1|    69|
|0-6 months  |MAL-ED        |TANZANIA     |>=38    |            0|     53|    97|
|0-6 months  |MAL-ED        |TANZANIA     |>=38    |            1|      0|    97|
|0-6 months  |MAL-ED        |TANZANIA     |[32-38) |            0|     25|    97|
|0-6 months  |MAL-ED        |TANZANIA     |[32-38) |            1|      1|    97|
|0-6 months  |MAL-ED        |TANZANIA     |<32     |            0|     18|    97|
|0-6 months  |MAL-ED        |TANZANIA     |<32     |            1|      0|    97|
|0-6 months  |MAL-ED        |SOUTH AFRICA |>=38    |            0|     78|   115|
|0-6 months  |MAL-ED        |SOUTH AFRICA |>=38    |            1|      0|   115|
|0-6 months  |MAL-ED        |SOUTH AFRICA |[32-38) |            0|     27|   115|
|0-6 months  |MAL-ED        |SOUTH AFRICA |[32-38) |            1|      1|   115|
|0-6 months  |MAL-ED        |SOUTH AFRICA |<32     |            0|      9|   115|
|0-6 months  |MAL-ED        |SOUTH AFRICA |<32     |            1|      0|   115|
|0-6 months  |PROBIT        |BELARUS      |>=38    |            0|    719| 16266|
|0-6 months  |PROBIT        |BELARUS      |>=38    |            1|     60| 16266|
|0-6 months  |PROBIT        |BELARUS      |[32-38) |            0|   2349| 16266|
|0-6 months  |PROBIT        |BELARUS      |[32-38) |            1|    196| 16266|
|0-6 months  |PROBIT        |BELARUS      |<32     |            0|  11931| 16266|
|0-6 months  |PROBIT        |BELARUS      |<32     |            1|   1011| 16266|
|0-6 months  |SAS-CompFeed  |INDIA        |>=38    |            0|     60|  1505|
|0-6 months  |SAS-CompFeed  |INDIA        |>=38    |            1|      3|  1505|
|0-6 months  |SAS-CompFeed  |INDIA        |[32-38) |            0|    187|  1505|
|0-6 months  |SAS-CompFeed  |INDIA        |[32-38) |            1|     12|  1505|
|0-6 months  |SAS-CompFeed  |INDIA        |<32     |            0|   1158|  1505|
|0-6 months  |SAS-CompFeed  |INDIA        |<32     |            1|     85|  1505|
|0-6 months  |SAS-FoodSuppl |INDIA        |>=38    |            0|     72|   418|
|0-6 months  |SAS-FoodSuppl |INDIA        |>=38    |            1|      3|   418|
|0-6 months  |SAS-FoodSuppl |INDIA        |[32-38) |            0|     91|   418|
|0-6 months  |SAS-FoodSuppl |INDIA        |[32-38) |            1|      5|   418|
|0-6 months  |SAS-FoodSuppl |INDIA        |<32     |            0|    235|   418|
|0-6 months  |SAS-FoodSuppl |INDIA        |<32     |            1|     12|   418|
|6-24 months |COHORTS       |GUATEMALA    |>=38    |            0|    353|  1191|
|6-24 months |COHORTS       |GUATEMALA    |>=38    |            1|      7|  1191|
|6-24 months |COHORTS       |GUATEMALA    |[32-38) |            0|    290|  1191|
|6-24 months |COHORTS       |GUATEMALA    |[32-38) |            1|      6|  1191|
|6-24 months |COHORTS       |GUATEMALA    |<32     |            0|    519|  1191|
|6-24 months |COHORTS       |GUATEMALA    |<32     |            1|     16|  1191|
|6-24 months |COHORTS       |PHILIPPINES  |>=38    |            0|    350|  2699|
|6-24 months |COHORTS       |PHILIPPINES  |>=38    |            1|     23|  2699|
|6-24 months |COHORTS       |PHILIPPINES  |[32-38) |            0|    452|  2699|
|6-24 months |COHORTS       |PHILIPPINES  |[32-38) |            1|     32|  2699|
|6-24 months |COHORTS       |PHILIPPINES  |<32     |            0|   1713|  2699|
|6-24 months |COHORTS       |PHILIPPINES  |<32     |            1|    129|  2699|
|6-24 months |LCNI-5        |MALAWI       |>=38    |            0|     19|    49|
|6-24 months |LCNI-5        |MALAWI       |>=38    |            1|      0|    49|
|6-24 months |LCNI-5        |MALAWI       |[32-38) |            0|      8|    49|
|6-24 months |LCNI-5        |MALAWI       |[32-38) |            1|      0|    49|
|6-24 months |LCNI-5        |MALAWI       |<32     |            0|     22|    49|
|6-24 months |LCNI-5        |MALAWI       |<32     |            1|      0|    49|
|6-24 months |MAL-ED        |INDIA        |>=38    |            0|     53|   153|
|6-24 months |MAL-ED        |INDIA        |>=38    |            1|      5|   153|
|6-24 months |MAL-ED        |INDIA        |[32-38) |            0|     50|   153|
|6-24 months |MAL-ED        |INDIA        |[32-38) |            1|      1|   153|
|6-24 months |MAL-ED        |INDIA        |<32     |            0|     44|   153|
|6-24 months |MAL-ED        |INDIA        |<32     |            1|      0|   153|
|6-24 months |MAL-ED        |BANGLADESH   |>=38    |            0|     76|   122|
|6-24 months |MAL-ED        |BANGLADESH   |>=38    |            1|      1|   122|
|6-24 months |MAL-ED        |BANGLADESH   |[32-38) |            0|     28|   122|
|6-24 months |MAL-ED        |BANGLADESH   |[32-38) |            1|      1|   122|
|6-24 months |MAL-ED        |BANGLADESH   |<32     |            0|     15|   122|
|6-24 months |MAL-ED        |BANGLADESH   |<32     |            1|      1|   122|
|6-24 months |MAL-ED        |PERU         |>=38    |            0|     40|    97|
|6-24 months |MAL-ED        |PERU         |>=38    |            1|      1|    97|
|6-24 months |MAL-ED        |PERU         |[32-38) |            0|     27|    97|
|6-24 months |MAL-ED        |PERU         |[32-38) |            1|      0|    97|
|6-24 months |MAL-ED        |PERU         |<32     |            0|     29|    97|
|6-24 months |MAL-ED        |PERU         |<32     |            1|      0|    97|
|6-24 months |MAL-ED        |NEPAL        |>=38    |            0|     37|    85|
|6-24 months |MAL-ED        |NEPAL        |>=38    |            1|      0|    85|
|6-24 months |MAL-ED        |NEPAL        |[32-38) |            0|     31|    85|
|6-24 months |MAL-ED        |NEPAL        |[32-38) |            1|      0|    85|
|6-24 months |MAL-ED        |NEPAL        |<32     |            0|     17|    85|
|6-24 months |MAL-ED        |NEPAL        |<32     |            1|      0|    85|
|6-24 months |MAL-ED        |BRAZIL       |>=38    |            0|     34|    64|
|6-24 months |MAL-ED        |BRAZIL       |>=38    |            1|      0|    64|
|6-24 months |MAL-ED        |BRAZIL       |[32-38) |            0|     14|    64|
|6-24 months |MAL-ED        |BRAZIL       |[32-38) |            1|      0|    64|
|6-24 months |MAL-ED        |BRAZIL       |<32     |            0|     16|    64|
|6-24 months |MAL-ED        |BRAZIL       |<32     |            1|      0|    64|
|6-24 months |MAL-ED        |TANZANIA     |>=38    |            0|     48|    93|
|6-24 months |MAL-ED        |TANZANIA     |>=38    |            1|      3|    93|
|6-24 months |MAL-ED        |TANZANIA     |[32-38) |            0|     25|    93|
|6-24 months |MAL-ED        |TANZANIA     |[32-38) |            1|      0|    93|
|6-24 months |MAL-ED        |TANZANIA     |<32     |            0|     16|    93|
|6-24 months |MAL-ED        |TANZANIA     |<32     |            1|      1|    93|
|6-24 months |MAL-ED        |SOUTH AFRICA |>=38    |            0|     71|   105|
|6-24 months |MAL-ED        |SOUTH AFRICA |>=38    |            1|      2|   105|
|6-24 months |MAL-ED        |SOUTH AFRICA |[32-38) |            0|     23|   105|
|6-24 months |MAL-ED        |SOUTH AFRICA |[32-38) |            1|      2|   105|
|6-24 months |MAL-ED        |SOUTH AFRICA |<32     |            0|      7|   105|
|6-24 months |MAL-ED        |SOUTH AFRICA |<32     |            1|      0|   105|
|6-24 months |PROBIT        |BELARUS      |>=38    |            0|    766| 15985|
|6-24 months |PROBIT        |BELARUS      |>=38    |            1|      0| 15985|
|6-24 months |PROBIT        |BELARUS      |[32-38) |            0|   2501| 15985|
|6-24 months |PROBIT        |BELARUS      |[32-38) |            1|      1| 15985|
|6-24 months |PROBIT        |BELARUS      |<32     |            0|  12706| 15985|
|6-24 months |PROBIT        |BELARUS      |<32     |            1|     11| 15985|
|6-24 months |SAS-CompFeed  |INDIA        |>=38    |            0|     49|  1389|
|6-24 months |SAS-CompFeed  |INDIA        |>=38    |            1|      7|  1389|
|6-24 months |SAS-CompFeed  |INDIA        |[32-38) |            0|    163|  1389|
|6-24 months |SAS-CompFeed  |INDIA        |[32-38) |            1|     20|  1389|
|6-24 months |SAS-CompFeed  |INDIA        |<32     |            0|   1043|  1389|
|6-24 months |SAS-CompFeed  |INDIA        |<32     |            1|    107|  1389|
|6-24 months |SAS-FoodSuppl |INDIA        |>=38    |            0|     64|   402|
|6-24 months |SAS-FoodSuppl |INDIA        |>=38    |            1|      9|   402|
|6-24 months |SAS-FoodSuppl |INDIA        |[32-38) |            0|     77|   402|
|6-24 months |SAS-FoodSuppl |INDIA        |[32-38) |            1|     15|   402|
|6-24 months |SAS-FoodSuppl |INDIA        |<32     |            0|    210|   402|
|6-24 months |SAS-FoodSuppl |INDIA        |<32     |            1|     27|   402|


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
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


