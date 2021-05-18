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

**Intervention Variable:** birthwt

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid        |country      |birthwt                    | ever_wasted| n_cell|     n|
|:---------------------------|:--------------|:------------|:--------------------------|-----------:|------:|-----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |           0|    181|   361|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |           1|    140|   361|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |Low birthweight            |           0|     17|   361|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |Low birthweight            |           1|     23|   361|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |Normal or high birthweight |           0|      9|    17|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |Normal or high birthweight |           1|      3|    17|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |Low birthweight            |           0|      3|    17|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |Low birthweight            |           1|      2|    17|
|0-24 months (no birth wast) |COHORTS        |INDIA        |Normal or high birthweight |           0|   4360|  6524|
|0-24 months (no birth wast) |COHORTS        |INDIA        |Normal or high birthweight |           1|    953|  6524|
|0-24 months (no birth wast) |COHORTS        |INDIA        |Low birthweight            |           0|    911|  6524|
|0-24 months (no birth wast) |COHORTS        |INDIA        |Low birthweight            |           1|    300|  6524|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA    |Normal or high birthweight |           0|    740|   917|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA    |Normal or high birthweight |           1|     98|   917|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA    |Low birthweight            |           0|     62|   917|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA    |Low birthweight            |           1|     17|   917|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES  |Normal or high birthweight |           0|   1923|  2975|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES  |Normal or high birthweight |           1|    781|  2975|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES  |Low birthweight            |           0|    148|  2975|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES  |Low birthweight            |           1|    123|  2975|
|0-24 months (no birth wast) |CONTENT        |PERU         |Normal or high birthweight |           0|      2|     2|
|0-24 months (no birth wast) |CONTENT        |PERU         |Normal or high birthweight |           1|      0|     2|
|0-24 months (no birth wast) |CONTENT        |PERU         |Low birthweight            |           0|      0|     2|
|0-24 months (no birth wast) |CONTENT        |PERU         |Low birthweight            |           1|      0|     2|
|0-24 months (no birth wast) |EE             |PAKISTAN     |Normal or high birthweight |           0|    124|   376|
|0-24 months (no birth wast) |EE             |PAKISTAN     |Normal or high birthweight |           1|    119|   376|
|0-24 months (no birth wast) |EE             |PAKISTAN     |Low birthweight            |           0|     50|   376|
|0-24 months (no birth wast) |EE             |PAKISTAN     |Low birthweight            |           1|     83|   376|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |Normal or high birthweight |           0|    251|   659|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |Normal or high birthweight |           1|    207|   659|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |Low birthweight            |           0|     78|   659|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |Low birthweight            |           1|    123|   659|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |Normal or high birthweight |           0|  10911| 22227|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |Normal or high birthweight |           1|   2025| 22227|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |Low birthweight            |           0|   7415| 22227|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |Low birthweight            |           1|   1876| 22227|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |Normal or high birthweight |           0|   2566|  4487|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |Normal or high birthweight |           1|    756|  4487|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |Low birthweight            |           0|    721|  4487|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |Low birthweight            |           1|    444|  4487|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |Normal or high birthweight |           0|    822|  1533|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |Normal or high birthweight |           1|    489|  1533|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |Low birthweight            |           0|    117|  1533|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |Low birthweight            |           1|    105|  1533|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |Normal or high birthweight |           0|    135|   236|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |Normal or high birthweight |           1|     67|   236|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |Low birthweight            |           0|     16|   236|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |Low birthweight            |           1|     18|   236|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |Normal or high birthweight |           0|    166|   260|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |Normal or high birthweight |           1|     39|   260|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |Low birthweight            |           0|     37|   260|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |Low birthweight            |           1|     18|   260|
|0-24 months (no birth wast) |MAL-ED         |PERU         |Normal or high birthweight |           0|    266|   299|
|0-24 months (no birth wast) |MAL-ED         |PERU         |Normal or high birthweight |           1|     16|   299|
|0-24 months (no birth wast) |MAL-ED         |PERU         |Low birthweight            |           0|     12|   299|
|0-24 months (no birth wast) |MAL-ED         |PERU         |Low birthweight            |           1|      5|   299|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |Normal or high birthweight |           0|    176|   232|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |Normal or high birthweight |           1|     37|   232|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |Low birthweight            |           0|     14|   232|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |Low birthweight            |           1|      5|   232|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |Normal or high birthweight |           0|    209|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |Normal or high birthweight |           1|     12|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |Low birthweight            |           0|     11|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |Low birthweight            |           1|      1|   233|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |Normal or high birthweight |           0|    160|   196|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |Normal or high birthweight |           1|     26|   196|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |Low birthweight            |           0|      9|   196|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |Low birthweight            |           1|      1|   196|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |           0|    247|   306|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |           1|     40|   306|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |Low birthweight            |           0|     14|   306|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |Low birthweight            |           1|      5|   306|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |Normal or high birthweight |           0|    295|   581|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |Normal or high birthweight |           1|    105|   581|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |Low birthweight            |           0|    113|   581|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |Low birthweight            |           1|     68|   581|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |           0|    512|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |           1|     67|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |Low birthweight            |           0|    134|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |Low birthweight            |           1|     41|   754|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |Normal or high birthweight |           0|  15731| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |Normal or high birthweight |           1|   1148| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |Low birthweight            |           0|      0| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |Low birthweight            |           1|      0| 16879|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |Normal or high birthweight |           0|    451|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |Normal or high birthweight |           1|     77|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |Low birthweight            |           0|    114|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |Low birthweight            |           1|     45|   687|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |Normal or high birthweight |           0|     20|    41|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |Normal or high birthweight |           1|     14|    41|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |Low birthweight            |           0|      4|    41|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |Low birthweight            |           1|      3|    41|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |Normal or high birthweight |           0|    762|  1492|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |Normal or high birthweight |           1|    370|  1492|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |Low birthweight            |           0|    189|  1492|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |Low birthweight            |           1|    171|  1492|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |           0|   1839|  2359|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |           1|    440|  2359|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |Low birthweight            |           0|     53|  2359|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |Low birthweight            |           1|     27|  2359|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |Normal or high birthweight |           0|    173|   403|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |Normal or high birthweight |           1|    162|   403|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |Low birthweight            |           0|     20|   403|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |Low birthweight            |           1|     48|   403|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |           0|  10769| 13593|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |           1|   1140| 13593|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |Low birthweight            |           0|   1438| 13593|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |Low birthweight            |           1|    246| 13593|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |           0|    213|   344|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |           1|     96|   344|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |Low birthweight            |           0|     25|   344|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |Low birthweight            |           1|     10|   344|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |Normal or high birthweight |           0|     12|    17|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |Normal or high birthweight |           1|      0|    17|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |Low birthweight            |           0|      4|    17|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |Low birthweight            |           1|      1|    17|
|0-6 months (no birth wast)  |COHORTS        |INDIA        |Normal or high birthweight |           0|   4575|  6053|
|0-6 months (no birth wast)  |COHORTS        |INDIA        |Normal or high birthweight |           1|    465|  6053|
|0-6 months (no birth wast)  |COHORTS        |INDIA        |Low birthweight            |           0|    944|  6053|
|0-6 months (no birth wast)  |COHORTS        |INDIA        |Low birthweight            |           1|     69|  6053|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA    |Normal or high birthweight |           0|    775|   867|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA    |Normal or high birthweight |           1|     17|   867|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA    |Low birthweight            |           0|     75|   867|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA    |Low birthweight            |           1|      0|   867|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES  |Normal or high birthweight |           0|   2432|  2954|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES  |Normal or high birthweight |           1|    259|  2954|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES  |Low birthweight            |           0|    240|  2954|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES  |Low birthweight            |           1|     23|  2954|
|0-6 months (no birth wast)  |CONTENT        |PERU         |Normal or high birthweight |           0|      2|     2|
|0-6 months (no birth wast)  |CONTENT        |PERU         |Normal or high birthweight |           1|      0|     2|
|0-6 months (no birth wast)  |CONTENT        |PERU         |Low birthweight            |           0|      0|     2|
|0-6 months (no birth wast)  |CONTENT        |PERU         |Low birthweight            |           1|      0|     2|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |Normal or high birthweight |           0|    187|   374|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |Normal or high birthweight |           1|     55|   374|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |Low birthweight            |           0|    107|   374|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |Low birthweight            |           1|     25|   374|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |Normal or high birthweight |           0|    360|   641|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |Normal or high birthweight |           1|     92|   641|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |Low birthweight            |           0|    158|   641|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |Low birthweight            |           1|     31|   641|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |Normal or high birthweight |           0|  11838| 22042|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |Normal or high birthweight |           1|   1066| 22042|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |Low birthweight            |           0|   8542| 22042|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |Low birthweight            |           1|    596| 22042|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |Normal or high birthweight |           0|   3188|  4372|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |Normal or high birthweight |           1|     98|  4372|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |Low birthweight            |           0|   1058|  4372|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |Low birthweight            |           1|     28|  4372|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |Normal or high birthweight |           0|   1154|  1519|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |Normal or high birthweight |           1|    149|  1519|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |Low birthweight            |           0|    184|  1519|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |Low birthweight            |           1|     32|  1519|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |Normal or high birthweight |           0|    166|   234|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |Normal or high birthweight |           1|     35|   234|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |Low birthweight            |           0|     30|   234|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |Low birthweight            |           1|      3|   234|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |Normal or high birthweight |           0|    189|   259|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |Normal or high birthweight |           1|     16|   259|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |Low birthweight            |           0|     51|   259|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |Low birthweight            |           1|      3|   259|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |Normal or high birthweight |           0|    279|   299|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |Normal or high birthweight |           1|      3|   299|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |Low birthweight            |           0|     15|   299|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |Low birthweight            |           1|      2|   299|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |Normal or high birthweight |           0|    198|   230|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |Normal or high birthweight |           1|     13|   230|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |Low birthweight            |           0|     18|   230|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |Low birthweight            |           1|      1|   230|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |Normal or high birthweight |           0|    213|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |Normal or high birthweight |           1|      8|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |Low birthweight            |           0|     12|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |Low birthweight            |           1|      0|   233|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |Normal or high birthweight |           0|    178|   196|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |Normal or high birthweight |           1|      8|   196|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |Low birthweight            |           0|     10|   196|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |Low birthweight            |           1|      0|   196|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |           0|    275|   305|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |           1|     11|   305|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |Low birthweight            |           0|     16|   305|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |Low birthweight            |           1|      3|   305|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |Normal or high birthweight |           0|    365|   564|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |Normal or high birthweight |           1|     32|   564|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |Low birthweight            |           0|    154|   564|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |Low birthweight            |           1|     13|   564|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |           0|    560|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |           1|     17|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |Low birthweight            |           0|    169|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |Low birthweight            |           1|      3|   749|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |Normal or high birthweight |           0|  15671| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |Normal or high birthweight |           1|   1022| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |Low birthweight            |           0|      0| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |Low birthweight            |           1|      0| 16693|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |Normal or high birthweight |           0|    503|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |Normal or high birthweight |           1|     25|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |Low birthweight            |           0|    143|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |Low birthweight            |           1|     12|   683|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |Normal or high birthweight |           0|     25|    41|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |Normal or high birthweight |           1|      9|    41|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |Low birthweight            |           0|      6|    41|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |Low birthweight            |           1|      1|    41|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |Normal or high birthweight |           0|    984|  1465|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |Normal or high birthweight |           1|    142|  1465|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |Low birthweight            |           0|    296|  1465|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |Low birthweight            |           1|     43|  1465|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |           0|   2085|  2351|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |           1|    187|  2351|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |Low birthweight            |           0|     66|  2351|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |Low birthweight            |           1|     13|  2351|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |Normal or high birthweight |           0|    216|   384|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |Normal or high birthweight |           1|    108|   384|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |Low birthweight            |           0|     38|   384|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |Low birthweight            |           1|     22|   384|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |           0|  11395| 13334|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |           1|    382| 13334|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |Low birthweight            |           0|   1511| 13334|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |Low birthweight            |           1|     46| 13334|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |           0|    244|   365|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |           1|     78|   365|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |Low birthweight            |           0|     24|   365|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |Low birthweight            |           1|     19|   365|
|6-24 months                 |CMIN           |BANGLADESH   |Normal or high birthweight |           0|      5|    12|
|6-24 months                 |CMIN           |BANGLADESH   |Normal or high birthweight |           1|      3|    12|
|6-24 months                 |CMIN           |BANGLADESH   |Low birthweight            |           0|      3|    12|
|6-24 months                 |CMIN           |BANGLADESH   |Low birthweight            |           1|      1|    12|
|6-24 months                 |COHORTS        |INDIA        |Normal or high birthweight |           0|   4495|  6299|
|6-24 months                 |COHORTS        |INDIA        |Normal or high birthweight |           1|    539|  6299|
|6-24 months                 |COHORTS        |INDIA        |Low birthweight            |           0|   1022|  6299|
|6-24 months                 |COHORTS        |INDIA        |Low birthweight            |           1|    243|  6299|
|6-24 months                 |COHORTS        |GUATEMALA    |Normal or high birthweight |           0|    669|   827|
|6-24 months                 |COHORTS        |GUATEMALA    |Normal or high birthweight |           1|     85|   827|
|6-24 months                 |COHORTS        |GUATEMALA    |Low birthweight            |           0|     56|   827|
|6-24 months                 |COHORTS        |GUATEMALA    |Low birthweight            |           1|     17|   827|
|6-24 months                 |COHORTS        |PHILIPPINES  |Normal or high birthweight |           0|   1886|  2766|
|6-24 months                 |COHORTS        |PHILIPPINES  |Normal or high birthweight |           1|    626|  2766|
|6-24 months                 |COHORTS        |PHILIPPINES  |Low birthweight            |           0|    142|  2766|
|6-24 months                 |COHORTS        |PHILIPPINES  |Low birthweight            |           1|    112|  2766|
|6-24 months                 |CONTENT        |PERU         |Normal or high birthweight |           0|      2|     2|
|6-24 months                 |CONTENT        |PERU         |Normal or high birthweight |           1|      0|     2|
|6-24 months                 |CONTENT        |PERU         |Low birthweight            |           0|      0|     2|
|6-24 months                 |CONTENT        |PERU         |Low birthweight            |           1|      0|     2|
|6-24 months                 |EE             |PAKISTAN     |Normal or high birthweight |           0|    151|   373|
|6-24 months                 |EE             |PAKISTAN     |Normal or high birthweight |           1|     91|   373|
|6-24 months                 |EE             |PAKISTAN     |Low birthweight            |           0|     61|   373|
|6-24 months                 |EE             |PAKISTAN     |Low birthweight            |           1|     70|   373|
|6-24 months                 |GMS-Nepal      |NEPAL        |Normal or high birthweight |           0|    229|   589|
|6-24 months                 |GMS-Nepal      |NEPAL        |Normal or high birthweight |           1|    171|   589|
|6-24 months                 |GMS-Nepal      |NEPAL        |Low birthweight            |           0|     82|   589|
|6-24 months                 |GMS-Nepal      |NEPAL        |Low birthweight            |           1|    107|   589|
|6-24 months                 |JiVitA-3       |BANGLADESH   |Normal or high birthweight |           0|   7471| 14528|
|6-24 months                 |JiVitA-3       |BANGLADESH   |Normal or high birthweight |           1|   1084| 14528|
|6-24 months                 |JiVitA-3       |BANGLADESH   |Low birthweight            |           0|   4618| 14528|
|6-24 months                 |JiVitA-3       |BANGLADESH   |Low birthweight            |           1|   1355| 14528|
|6-24 months                 |JiVitA-4       |BANGLADESH   |Normal or high birthweight |           0|   2620|  4499|
|6-24 months                 |JiVitA-4       |BANGLADESH   |Normal or high birthweight |           1|    701|  4499|
|6-24 months                 |JiVitA-4       |BANGLADESH   |Low birthweight            |           0|    745|  4499|
|6-24 months                 |JiVitA-4       |BANGLADESH   |Low birthweight            |           1|    433|  4499|
|6-24 months                 |Keneba         |GAMBIA       |Normal or high birthweight |           0|    857|  1473|
|6-24 months                 |Keneba         |GAMBIA       |Normal or high birthweight |           1|    412|  1473|
|6-24 months                 |Keneba         |GAMBIA       |Low birthweight            |           0|    119|  1473|
|6-24 months                 |Keneba         |GAMBIA       |Low birthweight            |           1|     85|  1473|
|6-24 months                 |MAL-ED         |INDIA        |Normal or high birthweight |           0|    150|   226|
|6-24 months                 |MAL-ED         |INDIA        |Normal or high birthweight |           1|     42|   226|
|6-24 months                 |MAL-ED         |INDIA        |Low birthweight            |           0|     18|   226|
|6-24 months                 |MAL-ED         |INDIA        |Low birthweight            |           1|     16|   226|
|6-24 months                 |MAL-ED         |BANGLADESH   |Normal or high birthweight |           0|    160|   238|
|6-24 months                 |MAL-ED         |BANGLADESH   |Normal or high birthweight |           1|     27|   238|
|6-24 months                 |MAL-ED         |BANGLADESH   |Low birthweight            |           0|     36|   238|
|6-24 months                 |MAL-ED         |BANGLADESH   |Low birthweight            |           1|     15|   238|
|6-24 months                 |MAL-ED         |PERU         |Normal or high birthweight |           0|    237|   267|
|6-24 months                 |MAL-ED         |PERU         |Normal or high birthweight |           1|     14|   267|
|6-24 months                 |MAL-ED         |PERU         |Low birthweight            |           0|     12|   267|
|6-24 months                 |MAL-ED         |PERU         |Low birthweight            |           1|      4|   267|
|6-24 months                 |MAL-ED         |NEPAL        |Normal or high birthweight |           0|    182|   228|
|6-24 months                 |MAL-ED         |NEPAL        |Normal or high birthweight |           1|     27|   228|
|6-24 months                 |MAL-ED         |NEPAL        |Low birthweight            |           0|     14|   228|
|6-24 months                 |MAL-ED         |NEPAL        |Low birthweight            |           1|      5|   228|
|6-24 months                 |MAL-ED         |BRAZIL       |Normal or high birthweight |           0|    192|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |Normal or high birthweight |           1|      5|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |Low birthweight            |           0|      9|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |Low birthweight            |           1|      1|   207|
|6-24 months                 |MAL-ED         |TANZANIA     |Normal or high birthweight |           0|    155|   184|
|6-24 months                 |MAL-ED         |TANZANIA     |Normal or high birthweight |           1|     21|   184|
|6-24 months                 |MAL-ED         |TANZANIA     |Low birthweight            |           0|      7|   184|
|6-24 months                 |MAL-ED         |TANZANIA     |Low birthweight            |           1|      1|   184|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |           0|    211|   258|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |           1|     32|   258|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |Low birthweight            |           0|     10|   258|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |Low birthweight            |           1|      5|   258|
|6-24 months                 |NIH-Birth      |BANGLADESH   |Normal or high birthweight |           0|    264|   522|
|6-24 months                 |NIH-Birth      |BANGLADESH   |Normal or high birthweight |           1|     91|   522|
|6-24 months                 |NIH-Birth      |BANGLADESH   |Low birthweight            |           0|    104|   522|
|6-24 months                 |NIH-Birth      |BANGLADESH   |Low birthweight            |           1|     63|   522|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |           0|    504|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |           1|     55|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |Low birthweight            |           0|    130|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |Low birthweight            |           1|     41|   730|
|6-24 months                 |PROBIT         |BELARUS      |Normal or high birthweight |           0|  16459| 16598|
|6-24 months                 |PROBIT         |BELARUS      |Normal or high birthweight |           1|    139| 16598|
|6-24 months                 |PROBIT         |BELARUS      |Low birthweight            |           0|      0| 16598|
|6-24 months                 |PROBIT         |BELARUS      |Low birthweight            |           1|      0| 16598|
|6-24 months                 |PROVIDE        |BANGLADESH   |Normal or high birthweight |           0|    407|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |Normal or high birthweight |           1|     60|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |Low birthweight            |           0|    109|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |Low birthweight            |           1|     39|   615|
|6-24 months                 |ResPak         |PAKISTAN     |Normal or high birthweight |           0|     21|    32|
|6-24 months                 |ResPak         |PAKISTAN     |Normal or high birthweight |           1|      6|    32|
|6-24 months                 |ResPak         |PAKISTAN     |Low birthweight            |           0|      3|    32|
|6-24 months                 |ResPak         |PAKISTAN     |Low birthweight            |           1|      2|    32|
|6-24 months                 |SAS-CompFeed   |INDIA        |Normal or high birthweight |           0|    768|  1379|
|6-24 months                 |SAS-CompFeed   |INDIA        |Normal or high birthweight |           1|    278|  1379|
|6-24 months                 |SAS-CompFeed   |INDIA        |Low birthweight            |           0|    188|  1379|
|6-24 months                 |SAS-CompFeed   |INDIA        |Low birthweight            |           1|    145|  1379|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |           0|   1633|  1998|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |           1|    300|  1998|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |Low birthweight            |           0|     46|  1998|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |Low birthweight            |           1|     19|  1998|
|6-24 months                 |Vellore Crypto |INDIA        |Normal or high birthweight |           0|    243|   404|
|6-24 months                 |Vellore Crypto |INDIA        |Normal or high birthweight |           1|     92|   404|
|6-24 months                 |Vellore Crypto |INDIA        |Low birthweight            |           0|     35|   404|
|6-24 months                 |Vellore Crypto |INDIA        |Low birthweight            |           1|     34|   404|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |           0|   8559| 10780|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |           1|    820| 10780|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |Low birthweight            |           0|   1189| 10780|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |Low birthweight            |           1|    212| 10780|


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
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: ResPak, country: PAKISTAN
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
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


