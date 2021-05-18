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

**Intervention Variable:** birthwt

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid        |country      |birthwt                    | ever_swasted| n_cell|     n|
|:---------------------------|:--------------|:------------|:--------------------------|------------:|------:|-----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |            0|    271|   361|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |            1|     50|   361|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |Low birthweight            |            0|     35|   361|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |Low birthweight            |            1|      5|   361|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |Normal or high birthweight |            0|     12|    17|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |Normal or high birthweight |            1|      0|    17|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |Low birthweight            |            0|      5|    17|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |Low birthweight            |            1|      0|    17|
|0-24 months (no birth wast) |COHORTS        |INDIA        |Normal or high birthweight |            0|   5070|  6524|
|0-24 months (no birth wast) |COHORTS        |INDIA        |Normal or high birthweight |            1|    243|  6524|
|0-24 months (no birth wast) |COHORTS        |INDIA        |Low birthweight            |            0|   1124|  6524|
|0-24 months (no birth wast) |COHORTS        |INDIA        |Low birthweight            |            1|     87|  6524|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA    |Normal or high birthweight |            0|    825|   917|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA    |Normal or high birthweight |            1|     13|   917|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA    |Low birthweight            |            0|     74|   917|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA    |Low birthweight            |            1|      5|   917|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES  |Normal or high birthweight |            0|   2494|  2975|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES  |Normal or high birthweight |            1|    210|  2975|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES  |Low birthweight            |            0|    233|  2975|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES  |Low birthweight            |            1|     38|  2975|
|0-24 months (no birth wast) |CONTENT        |PERU         |Normal or high birthweight |            0|      2|     2|
|0-24 months (no birth wast) |CONTENT        |PERU         |Normal or high birthweight |            1|      0|     2|
|0-24 months (no birth wast) |CONTENT        |PERU         |Low birthweight            |            0|      0|     2|
|0-24 months (no birth wast) |CONTENT        |PERU         |Low birthweight            |            1|      0|     2|
|0-24 months (no birth wast) |EE             |PAKISTAN     |Normal or high birthweight |            0|    203|   376|
|0-24 months (no birth wast) |EE             |PAKISTAN     |Normal or high birthweight |            1|     40|   376|
|0-24 months (no birth wast) |EE             |PAKISTAN     |Low birthweight            |            0|    107|   376|
|0-24 months (no birth wast) |EE             |PAKISTAN     |Low birthweight            |            1|     26|   376|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |Normal or high birthweight |            0|    372|   659|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |Normal or high birthweight |            1|     86|   659|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |Low birthweight            |            0|    156|   659|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |Low birthweight            |            1|     45|   659|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |Normal or high birthweight |            0|  12499| 22227|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |Normal or high birthweight |            1|    437| 22227|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |Low birthweight            |            0|   8892| 22227|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |Low birthweight            |            1|    399| 22227|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |Normal or high birthweight |            0|   3204|  4487|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |Normal or high birthweight |            1|    118|  4487|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |Low birthweight            |            0|   1075|  4487|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |Low birthweight            |            1|     90|  4487|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |Normal or high birthweight |            0|   1128|  1533|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |Normal or high birthweight |            1|    183|  1533|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |Low birthweight            |            0|    179|  1533|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |Low birthweight            |            1|     43|  1533|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |Normal or high birthweight |            0|    190|   236|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |Normal or high birthweight |            1|     12|   236|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |Low birthweight            |            0|     34|   236|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |Low birthweight            |            1|      0|   236|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |Normal or high birthweight |            0|    196|   260|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |Normal or high birthweight |            1|      9|   260|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |Low birthweight            |            0|     52|   260|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |Low birthweight            |            1|      3|   260|
|0-24 months (no birth wast) |MAL-ED         |PERU         |Normal or high birthweight |            0|    278|   299|
|0-24 months (no birth wast) |MAL-ED         |PERU         |Normal or high birthweight |            1|      4|   299|
|0-24 months (no birth wast) |MAL-ED         |PERU         |Low birthweight            |            0|     17|   299|
|0-24 months (no birth wast) |MAL-ED         |PERU         |Low birthweight            |            1|      0|   299|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |Normal or high birthweight |            0|    212|   232|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |Normal or high birthweight |            1|      1|   232|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |Low birthweight            |            0|     19|   232|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |Low birthweight            |            1|      0|   232|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |Normal or high birthweight |            0|    217|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |Normal or high birthweight |            1|      4|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |Low birthweight            |            0|     12|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |Low birthweight            |            1|      0|   233|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |Normal or high birthweight |            0|    180|   196|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |Normal or high birthweight |            1|      6|   196|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |Low birthweight            |            0|     10|   196|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |Low birthweight            |            1|      0|   196|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |            0|    276|   306|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |            1|     11|   306|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |Low birthweight            |            0|     18|   306|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |Low birthweight            |            1|      1|   306|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |Normal or high birthweight |            0|    369|   581|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |Normal or high birthweight |            1|     31|   581|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |Low birthweight            |            0|    159|   581|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |Low birthweight            |            1|     22|   581|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |            0|    570|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |            1|      9|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |Low birthweight            |            0|    164|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |Low birthweight            |            1|     11|   754|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |Normal or high birthweight |            0|  16675| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |Normal or high birthweight |            1|    204| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |Low birthweight            |            0|      0| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |Low birthweight            |            1|      0| 16879|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |Normal or high birthweight |            0|    518|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |Normal or high birthweight |            1|     10|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |Low birthweight            |            0|    150|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |Low birthweight            |            1|      9|   687|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |Normal or high birthweight |            0|     31|    41|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |Normal or high birthweight |            1|      3|    41|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |Low birthweight            |            0|      7|    41|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |Low birthweight            |            1|      0|    41|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |Normal or high birthweight |            0|   1025|  1492|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |Normal or high birthweight |            1|    107|  1492|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |Low birthweight            |            0|    296|  1492|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |Low birthweight            |            1|     64|  1492|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |            0|   2171|  2359|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |            1|    108|  2359|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |Low birthweight            |            0|     70|  2359|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |Low birthweight            |            1|     10|  2359|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |Normal or high birthweight |            0|    277|   403|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |Normal or high birthweight |            1|     58|   403|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |Low birthweight            |            0|     51|   403|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |Low birthweight            |            1|     17|   403|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |            0|  11511| 13593|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |            1|    398| 13593|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |Low birthweight            |            0|   1605| 13593|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |Low birthweight            |            1|     79| 13593|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |            0|    279|   344|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |            1|     30|   344|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |Low birthweight            |            0|     35|   344|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |Low birthweight            |            1|      0|   344|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |Normal or high birthweight |            0|     12|    17|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |Normal or high birthweight |            1|      0|    17|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |Low birthweight            |            0|      5|    17|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |Low birthweight            |            1|      0|    17|
|0-6 months (no birth wast)  |COHORTS        |INDIA        |Normal or high birthweight |            0|   4943|  6053|
|0-6 months (no birth wast)  |COHORTS        |INDIA        |Normal or high birthweight |            1|     97|  6053|
|0-6 months (no birth wast)  |COHORTS        |INDIA        |Low birthweight            |            0|    992|  6053|
|0-6 months (no birth wast)  |COHORTS        |INDIA        |Low birthweight            |            1|     21|  6053|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA    |Normal or high birthweight |            0|    790|   867|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA    |Normal or high birthweight |            1|      2|   867|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA    |Low birthweight            |            0|     75|   867|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA    |Low birthweight            |            1|      0|   867|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES  |Normal or high birthweight |            0|   2631|  2954|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES  |Normal or high birthweight |            1|     60|  2954|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES  |Low birthweight            |            0|    257|  2954|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES  |Low birthweight            |            1|      6|  2954|
|0-6 months (no birth wast)  |CONTENT        |PERU         |Normal or high birthweight |            0|      2|     2|
|0-6 months (no birth wast)  |CONTENT        |PERU         |Normal or high birthweight |            1|      0|     2|
|0-6 months (no birth wast)  |CONTENT        |PERU         |Low birthweight            |            0|      0|     2|
|0-6 months (no birth wast)  |CONTENT        |PERU         |Low birthweight            |            1|      0|     2|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |Normal or high birthweight |            0|    229|   374|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |Normal or high birthweight |            1|     13|   374|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |Low birthweight            |            0|    125|   374|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |Low birthweight            |            1|      7|   374|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |Normal or high birthweight |            0|    429|   641|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |Normal or high birthweight |            1|     23|   641|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |Low birthweight            |            0|    181|   641|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |Low birthweight            |            1|      8|   641|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |Normal or high birthweight |            0|  12652| 22042|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |Normal or high birthweight |            1|    252| 22042|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |Low birthweight            |            0|   9003| 22042|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |Low birthweight            |            1|    135| 22042|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |Normal or high birthweight |            0|   3270|  4372|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |Normal or high birthweight |            1|     16|  4372|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |Low birthweight            |            0|   1081|  4372|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |Low birthweight            |            1|      5|  4372|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |Normal or high birthweight |            0|   1251|  1519|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |Normal or high birthweight |            1|     52|  1519|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |Low birthweight            |            0|    202|  1519|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |Low birthweight            |            1|     14|  1519|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |Normal or high birthweight |            0|    194|   234|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |Normal or high birthweight |            1|      7|   234|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |Low birthweight            |            0|     33|   234|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |Low birthweight            |            1|      0|   234|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |Normal or high birthweight |            0|    198|   259|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |Normal or high birthweight |            1|      7|   259|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |Low birthweight            |            0|     54|   259|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |Low birthweight            |            1|      0|   259|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |Normal or high birthweight |            0|    281|   299|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |Normal or high birthweight |            1|      1|   299|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |Low birthweight            |            0|     17|   299|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |Low birthweight            |            1|      0|   299|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |Normal or high birthweight |            0|    210|   230|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |Normal or high birthweight |            1|      1|   230|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |Low birthweight            |            0|     19|   230|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |Low birthweight            |            1|      0|   230|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |Normal or high birthweight |            0|    218|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |Normal or high birthweight |            1|      3|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |Low birthweight            |            0|     12|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |Low birthweight            |            1|      0|   233|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |Normal or high birthweight |            0|    183|   196|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |Normal or high birthweight |            1|      3|   196|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |Low birthweight            |            0|     10|   196|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |Low birthweight            |            1|      0|   196|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |            0|    284|   305|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |            1|      2|   305|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |Low birthweight            |            0|     18|   305|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |Low birthweight            |            1|      1|   305|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |Normal or high birthweight |            0|    390|   564|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |Normal or high birthweight |            1|      7|   564|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |Low birthweight            |            0|    166|   564|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |Low birthweight            |            1|      1|   564|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |            0|    576|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |            1|      1|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |Low birthweight            |            0|    172|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |Low birthweight            |            1|      0|   749|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |Normal or high birthweight |            0|  16501| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |Normal or high birthweight |            1|    192| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |Low birthweight            |            0|      0| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |Low birthweight            |            1|      0| 16693|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |Normal or high birthweight |            0|    523|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |Normal or high birthweight |            1|      5|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |Low birthweight            |            0|    154|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |Low birthweight            |            1|      1|   683|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |Normal or high birthweight |            0|     32|    41|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |Normal or high birthweight |            1|      2|    41|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |Low birthweight            |            0|      7|    41|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |Low birthweight            |            1|      0|    41|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |Normal or high birthweight |            0|   1093|  1465|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |Normal or high birthweight |            1|     33|  1465|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |Low birthweight            |            0|    326|  1465|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |Low birthweight            |            1|     13|  1465|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |            0|   2235|  2351|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |            1|     37|  2351|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |Low birthweight            |            0|     76|  2351|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |Low birthweight            |            1|      3|  2351|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |Normal or high birthweight |            0|    273|   384|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |Normal or high birthweight |            1|     51|   384|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |Low birthweight            |            0|     55|   384|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |Low birthweight            |            1|      5|   384|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |            0|  11656| 13334|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |            1|    121| 13334|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |Low birthweight            |            0|   1546| 13334|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |Low birthweight            |            1|     11| 13334|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |            0|    297|   365|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |            1|     25|   365|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |Low birthweight            |            0|     38|   365|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |Low birthweight            |            1|      5|   365|
|6-24 months                 |CMIN           |BANGLADESH   |Normal or high birthweight |            0|      8|    12|
|6-24 months                 |CMIN           |BANGLADESH   |Normal or high birthweight |            1|      0|    12|
|6-24 months                 |CMIN           |BANGLADESH   |Low birthweight            |            0|      4|    12|
|6-24 months                 |CMIN           |BANGLADESH   |Low birthweight            |            1|      0|    12|
|6-24 months                 |COHORTS        |INDIA        |Normal or high birthweight |            0|   4878|  6299|
|6-24 months                 |COHORTS        |INDIA        |Normal or high birthweight |            1|    156|  6299|
|6-24 months                 |COHORTS        |INDIA        |Low birthweight            |            0|   1181|  6299|
|6-24 months                 |COHORTS        |INDIA        |Low birthweight            |            1|     84|  6299|
|6-24 months                 |COHORTS        |GUATEMALA    |Normal or high birthweight |            0|    743|   827|
|6-24 months                 |COHORTS        |GUATEMALA    |Normal or high birthweight |            1|     11|   827|
|6-24 months                 |COHORTS        |GUATEMALA    |Low birthweight            |            0|     68|   827|
|6-24 months                 |COHORTS        |GUATEMALA    |Low birthweight            |            1|      5|   827|
|6-24 months                 |COHORTS        |PHILIPPINES  |Normal or high birthweight |            0|   2357|  2766|
|6-24 months                 |COHORTS        |PHILIPPINES  |Normal or high birthweight |            1|    155|  2766|
|6-24 months                 |COHORTS        |PHILIPPINES  |Low birthweight            |            0|    222|  2766|
|6-24 months                 |COHORTS        |PHILIPPINES  |Low birthweight            |            1|     32|  2766|
|6-24 months                 |CONTENT        |PERU         |Normal or high birthweight |            0|      2|     2|
|6-24 months                 |CONTENT        |PERU         |Normal or high birthweight |            1|      0|     2|
|6-24 months                 |CONTENT        |PERU         |Low birthweight            |            0|      0|     2|
|6-24 months                 |CONTENT        |PERU         |Low birthweight            |            1|      0|     2|
|6-24 months                 |EE             |PAKISTAN     |Normal or high birthweight |            0|    210|   373|
|6-24 months                 |EE             |PAKISTAN     |Normal or high birthweight |            1|     32|   373|
|6-24 months                 |EE             |PAKISTAN     |Low birthweight            |            0|    112|   373|
|6-24 months                 |EE             |PAKISTAN     |Low birthweight            |            1|     19|   373|
|6-24 months                 |GMS-Nepal      |NEPAL        |Normal or high birthweight |            0|    330|   589|
|6-24 months                 |GMS-Nepal      |NEPAL        |Normal or high birthweight |            1|     70|   589|
|6-24 months                 |GMS-Nepal      |NEPAL        |Low birthweight            |            0|    147|   589|
|6-24 months                 |GMS-Nepal      |NEPAL        |Low birthweight            |            1|     42|   589|
|6-24 months                 |JiVitA-3       |BANGLADESH   |Normal or high birthweight |            0|   8362| 14528|
|6-24 months                 |JiVitA-3       |BANGLADESH   |Normal or high birthweight |            1|    193| 14528|
|6-24 months                 |JiVitA-3       |BANGLADESH   |Low birthweight            |            0|   5684| 14528|
|6-24 months                 |JiVitA-3       |BANGLADESH   |Low birthweight            |            1|    289| 14528|
|6-24 months                 |JiVitA-4       |BANGLADESH   |Normal or high birthweight |            0|   3214|  4499|
|6-24 months                 |JiVitA-4       |BANGLADESH   |Normal or high birthweight |            1|    107|  4499|
|6-24 months                 |JiVitA-4       |BANGLADESH   |Low birthweight            |            0|   1086|  4499|
|6-24 months                 |JiVitA-4       |BANGLADESH   |Low birthweight            |            1|     92|  4499|
|6-24 months                 |Keneba         |GAMBIA       |Normal or high birthweight |            0|   1131|  1473|
|6-24 months                 |Keneba         |GAMBIA       |Normal or high birthweight |            1|    138|  1473|
|6-24 months                 |Keneba         |GAMBIA       |Low birthweight            |            0|    174|  1473|
|6-24 months                 |Keneba         |GAMBIA       |Low birthweight            |            1|     30|  1473|
|6-24 months                 |MAL-ED         |INDIA        |Normal or high birthweight |            0|    187|   226|
|6-24 months                 |MAL-ED         |INDIA        |Normal or high birthweight |            1|      5|   226|
|6-24 months                 |MAL-ED         |INDIA        |Low birthweight            |            0|     34|   226|
|6-24 months                 |MAL-ED         |INDIA        |Low birthweight            |            1|      0|   226|
|6-24 months                 |MAL-ED         |BANGLADESH   |Normal or high birthweight |            0|    185|   238|
|6-24 months                 |MAL-ED         |BANGLADESH   |Normal or high birthweight |            1|      2|   238|
|6-24 months                 |MAL-ED         |BANGLADESH   |Low birthweight            |            0|     48|   238|
|6-24 months                 |MAL-ED         |BANGLADESH   |Low birthweight            |            1|      3|   238|
|6-24 months                 |MAL-ED         |PERU         |Normal or high birthweight |            0|    248|   267|
|6-24 months                 |MAL-ED         |PERU         |Normal or high birthweight |            1|      3|   267|
|6-24 months                 |MAL-ED         |PERU         |Low birthweight            |            0|     16|   267|
|6-24 months                 |MAL-ED         |PERU         |Low birthweight            |            1|      0|   267|
|6-24 months                 |MAL-ED         |NEPAL        |Normal or high birthweight |            0|    209|   228|
|6-24 months                 |MAL-ED         |NEPAL        |Normal or high birthweight |            1|      0|   228|
|6-24 months                 |MAL-ED         |NEPAL        |Low birthweight            |            0|     19|   228|
|6-24 months                 |MAL-ED         |NEPAL        |Low birthweight            |            1|      0|   228|
|6-24 months                 |MAL-ED         |BRAZIL       |Normal or high birthweight |            0|    196|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |Normal or high birthweight |            1|      1|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |Low birthweight            |            0|     10|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |Low birthweight            |            1|      0|   207|
|6-24 months                 |MAL-ED         |TANZANIA     |Normal or high birthweight |            0|    173|   184|
|6-24 months                 |MAL-ED         |TANZANIA     |Normal or high birthweight |            1|      3|   184|
|6-24 months                 |MAL-ED         |TANZANIA     |Low birthweight            |            0|      8|   184|
|6-24 months                 |MAL-ED         |TANZANIA     |Low birthweight            |            1|      0|   184|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |            0|    233|   258|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |            1|     10|   258|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |Low birthweight            |            0|     15|   258|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |Low birthweight            |            1|      0|   258|
|6-24 months                 |NIH-Birth      |BANGLADESH   |Normal or high birthweight |            0|    329|   522|
|6-24 months                 |NIH-Birth      |BANGLADESH   |Normal or high birthweight |            1|     26|   522|
|6-24 months                 |NIH-Birth      |BANGLADESH   |Low birthweight            |            0|    145|   522|
|6-24 months                 |NIH-Birth      |BANGLADESH   |Low birthweight            |            1|     22|   522|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |            0|    550|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |            1|      9|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |Low birthweight            |            0|    160|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |Low birthweight            |            1|     11|   730|
|6-24 months                 |PROBIT         |BELARUS      |Normal or high birthweight |            0|  16586| 16598|
|6-24 months                 |PROBIT         |BELARUS      |Normal or high birthweight |            1|     12| 16598|
|6-24 months                 |PROBIT         |BELARUS      |Low birthweight            |            0|      0| 16598|
|6-24 months                 |PROBIT         |BELARUS      |Low birthweight            |            1|      0| 16598|
|6-24 months                 |PROVIDE        |BANGLADESH   |Normal or high birthweight |            0|    462|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |Normal or high birthweight |            1|      5|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |Low birthweight            |            0|    140|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |Low birthweight            |            1|      8|   615|
|6-24 months                 |ResPak         |PAKISTAN     |Normal or high birthweight |            0|     26|    32|
|6-24 months                 |ResPak         |PAKISTAN     |Normal or high birthweight |            1|      1|    32|
|6-24 months                 |ResPak         |PAKISTAN     |Low birthweight            |            0|      5|    32|
|6-24 months                 |ResPak         |PAKISTAN     |Low birthweight            |            1|      0|    32|
|6-24 months                 |SAS-CompFeed   |INDIA        |Normal or high birthweight |            0|    968|  1379|
|6-24 months                 |SAS-CompFeed   |INDIA        |Normal or high birthweight |            1|     78|  1379|
|6-24 months                 |SAS-CompFeed   |INDIA        |Low birthweight            |            0|    278|  1379|
|6-24 months                 |SAS-CompFeed   |INDIA        |Low birthweight            |            1|     55|  1379|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |            0|   1860|  1998|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |            1|     73|  1998|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |Low birthweight            |            0|     57|  1998|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |Low birthweight            |            1|      8|  1998|
|6-24 months                 |Vellore Crypto |INDIA        |Normal or high birthweight |            0|    323|   404|
|6-24 months                 |Vellore Crypto |INDIA        |Normal or high birthweight |            1|     12|   404|
|6-24 months                 |Vellore Crypto |INDIA        |Low birthweight            |            0|     56|   404|
|6-24 months                 |Vellore Crypto |INDIA        |Low birthweight            |            1|     13|   404|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |            0|   9097| 10780|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |            1|    282| 10780|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |Low birthweight            |            0|   1328| 10780|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |Low birthweight            |            1|     73| 10780|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: Vellore Crypto, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
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
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


