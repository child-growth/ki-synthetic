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

**Outcome Variable:** swasted

## Predictor Variables

**Intervention Variable:** meducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |meducyrs | swasted| n_cell|     n|
|:---------|:--------------|:------------|:--------|-------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |Low      |       0|     27|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |Low      |       1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |Medium   |       0|     22|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |Medium   |       1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |High     |       0|     36|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |High     |       1|      1|    86|
|Birth     |COHORTS        |INDIA        |Low      |       0|   1309|  5577|
|Birth     |COHORTS        |INDIA        |Low      |       1|     79|  5577|
|Birth     |COHORTS        |INDIA        |Medium   |       0|   2983|  5577|
|Birth     |COHORTS        |INDIA        |Medium   |       1|    149|  5577|
|Birth     |COHORTS        |INDIA        |High     |       0|    995|  5577|
|Birth     |COHORTS        |INDIA        |High     |       1|     62|  5577|
|Birth     |COHORTS        |GUATEMALA    |Low      |       0|    323|   751|
|Birth     |COHORTS        |GUATEMALA    |Low      |       1|     25|   751|
|Birth     |COHORTS        |GUATEMALA    |Medium   |       0|    230|   751|
|Birth     |COHORTS        |GUATEMALA    |Medium   |       1|     24|   751|
|Birth     |COHORTS        |GUATEMALA    |High     |       0|    138|   751|
|Birth     |COHORTS        |GUATEMALA    |High     |       1|     11|   751|
|Birth     |COHORTS        |PHILIPPINES  |Low      |       0|   1017|  2899|
|Birth     |COHORTS        |PHILIPPINES  |Low      |       1|     36|  2899|
|Birth     |COHORTS        |PHILIPPINES  |Medium   |       0|    503|  2899|
|Birth     |COHORTS        |PHILIPPINES  |Medium   |       1|     30|  2899|
|Birth     |COHORTS        |PHILIPPINES  |High     |       0|   1258|  2899|
|Birth     |COHORTS        |PHILIPPINES  |High     |       1|     55|  2899|
|Birth     |EE             |PAKISTAN     |Low      |       0|    144|   175|
|Birth     |EE             |PAKISTAN     |Low      |       1|      4|   175|
|Birth     |EE             |PAKISTAN     |Medium   |       0|     15|   175|
|Birth     |EE             |PAKISTAN     |Medium   |       1|      1|   175|
|Birth     |EE             |PAKISTAN     |High     |       0|     10|   175|
|Birth     |EE             |PAKISTAN     |High     |       1|      1|   175|
|Birth     |GMS-Nepal      |NEPAL        |Low      |       0|    429|   639|
|Birth     |GMS-Nepal      |NEPAL        |Low      |       1|     20|   639|
|Birth     |GMS-Nepal      |NEPAL        |Medium   |       0|    111|   639|
|Birth     |GMS-Nepal      |NEPAL        |Medium   |       1|      5|   639|
|Birth     |GMS-Nepal      |NEPAL        |High     |       0|     72|   639|
|Birth     |GMS-Nepal      |NEPAL        |High     |       1|      2|   639|
|Birth     |JiVitA-3       |BANGLADESH   |Low      |       0|   6476| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |Low      |       1|    125| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |Medium   |       0|   5333| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |Medium   |       1|    102| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |High     |       0|   5841| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |High     |       1|    121| 17998|
|Birth     |JiVitA-4       |BANGLADESH   |Low      |       0|    791|  2393|
|Birth     |JiVitA-4       |BANGLADESH   |Low      |       1|      9|  2393|
|Birth     |JiVitA-4       |BANGLADESH   |Medium   |       0|    722|  2393|
|Birth     |JiVitA-4       |BANGLADESH   |Medium   |       1|      9|  2393|
|Birth     |JiVitA-4       |BANGLADESH   |High     |       0|    849|  2393|
|Birth     |JiVitA-4       |BANGLADESH   |High     |       1|     13|  2393|
|Birth     |MAL-ED         |INDIA        |Low      |       0|     14|    38|
|Birth     |MAL-ED         |INDIA        |Low      |       1|      0|    38|
|Birth     |MAL-ED         |INDIA        |Medium   |       0|      8|    38|
|Birth     |MAL-ED         |INDIA        |Medium   |       1|      0|    38|
|Birth     |MAL-ED         |INDIA        |High     |       0|     16|    38|
|Birth     |MAL-ED         |INDIA        |High     |       1|      0|    38|
|Birth     |MAL-ED         |BANGLADESH   |Low      |       0|     56|   207|
|Birth     |MAL-ED         |BANGLADESH   |Low      |       1|      2|   207|
|Birth     |MAL-ED         |BANGLADESH   |Medium   |       0|     47|   207|
|Birth     |MAL-ED         |BANGLADESH   |Medium   |       1|      1|   207|
|Birth     |MAL-ED         |BANGLADESH   |High     |       0|     97|   207|
|Birth     |MAL-ED         |BANGLADESH   |High     |       1|      4|   207|
|Birth     |MAL-ED         |PERU         |Low      |       0|     88|   227|
|Birth     |MAL-ED         |PERU         |Low      |       1|      0|   227|
|Birth     |MAL-ED         |PERU         |Medium   |       0|     73|   227|
|Birth     |MAL-ED         |PERU         |Medium   |       1|      0|   227|
|Birth     |MAL-ED         |PERU         |High     |       0|     66|   227|
|Birth     |MAL-ED         |PERU         |High     |       1|      0|   227|
|Birth     |MAL-ED         |NEPAL        |Low      |       0|     12|    24|
|Birth     |MAL-ED         |NEPAL        |Low      |       1|      0|    24|
|Birth     |MAL-ED         |NEPAL        |Medium   |       0|      3|    24|
|Birth     |MAL-ED         |NEPAL        |Medium   |       1|      1|    24|
|Birth     |MAL-ED         |NEPAL        |High     |       0|      8|    24|
|Birth     |MAL-ED         |NEPAL        |High     |       1|      0|    24|
|Birth     |MAL-ED         |BRAZIL       |Low      |       0|     29|    62|
|Birth     |MAL-ED         |BRAZIL       |Low      |       1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |Medium   |       0|     26|    62|
|Birth     |MAL-ED         |BRAZIL       |Medium   |       1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |High     |       0|      7|    62|
|Birth     |MAL-ED         |BRAZIL       |High     |       1|      0|    62|
|Birth     |MAL-ED         |TANZANIA     |Low      |       0|     29|    91|
|Birth     |MAL-ED         |TANZANIA     |Low      |       1|      0|    91|
|Birth     |MAL-ED         |TANZANIA     |Medium   |       0|     33|    91|
|Birth     |MAL-ED         |TANZANIA     |Medium   |       1|      0|    91|
|Birth     |MAL-ED         |TANZANIA     |High     |       0|     29|    91|
|Birth     |MAL-ED         |TANZANIA     |High     |       1|      0|    91|
|Birth     |MAL-ED         |SOUTH AFRICA |Low      |       0|     64|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |Low      |       1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |Medium   |       0|     17|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |Medium   |       1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |High     |       0|     39|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |High     |       1|      0|   120|
|Birth     |NIH-Birth      |BANGLADESH   |Low      |       0|    230|   575|
|Birth     |NIH-Birth      |BANGLADESH   |Low      |       1|     15|   575|
|Birth     |NIH-Birth      |BANGLADESH   |Medium   |       0|    167|   575|
|Birth     |NIH-Birth      |BANGLADESH   |Medium   |       1|     16|   575|
|Birth     |NIH-Birth      |BANGLADESH   |High     |       0|    140|   575|
|Birth     |NIH-Birth      |BANGLADESH   |High     |       1|      7|   575|
|Birth     |NIH-Crypto     |BANGLADESH   |Low      |       0|    210|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |Low      |       1|     11|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |Medium   |       0|    143|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |Medium   |       1|     14|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |High     |       0|    307|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |High     |       1|     22|   707|
|Birth     |PROBIT         |BELARUS      |Low      |       0|   4141| 13817|
|Birth     |PROBIT         |BELARUS      |Low      |       1|    279| 13817|
|Birth     |PROBIT         |BELARUS      |Medium   |       0|   6583| 13817|
|Birth     |PROBIT         |BELARUS      |Medium   |       1|    491| 13817|
|Birth     |PROBIT         |BELARUS      |High     |       0|   2174| 13817|
|Birth     |PROBIT         |BELARUS      |High     |       1|    149| 13817|
|Birth     |PROVIDE        |BANGLADESH   |Low      |       0|    156|   532|
|Birth     |PROVIDE        |BANGLADESH   |Low      |       1|      3|   532|
|Birth     |PROVIDE        |BANGLADESH   |Medium   |       0|    194|   532|
|Birth     |PROVIDE        |BANGLADESH   |Medium   |       1|      5|   532|
|Birth     |PROVIDE        |BANGLADESH   |High     |       0|    169|   532|
|Birth     |PROVIDE        |BANGLADESH   |High     |       1|      5|   532|
|Birth     |SAS-CompFeed   |INDIA        |Low      |       0|    462|  1101|
|Birth     |SAS-CompFeed   |INDIA        |Low      |       1|     17|  1101|
|Birth     |SAS-CompFeed   |INDIA        |Medium   |       0|    360|  1101|
|Birth     |SAS-CompFeed   |INDIA        |Medium   |       1|      8|  1101|
|Birth     |SAS-CompFeed   |INDIA        |High     |       0|    251|  1101|
|Birth     |SAS-CompFeed   |INDIA        |High     |       1|      3|  1101|
|Birth     |Vellore Crypto |INDIA        |Low      |       0|    103|   343|
|Birth     |Vellore Crypto |INDIA        |Low      |       1|     22|   343|
|Birth     |Vellore Crypto |INDIA        |Medium   |       0|    111|   343|
|Birth     |Vellore Crypto |INDIA        |Medium   |       1|     17|   343|
|Birth     |Vellore Crypto |INDIA        |High     |       0|     75|   343|
|Birth     |Vellore Crypto |INDIA        |High     |       1|     15|   343|
|Birth     |ZVITAMBO       |ZIMBABWE     |Low      |       0|   2198| 12909|
|Birth     |ZVITAMBO       |ZIMBABWE     |Low      |       1|    145| 12909|
|Birth     |ZVITAMBO       |ZIMBABWE     |Medium   |       0|   3085| 12909|
|Birth     |ZVITAMBO       |ZIMBABWE     |Medium   |       1|    200| 12909|
|Birth     |ZVITAMBO       |ZIMBABWE     |High     |       0|   6834| 12909|
|Birth     |ZVITAMBO       |ZIMBABWE     |High     |       1|    447| 12909|
|6 months  |CMC-V-BCS-2002 |INDIA        |Low      |       0|    104|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |Low      |       1|      5|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |Medium   |       0|     98|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |Medium   |       1|      2|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |High     |       0|    154|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |High     |       1|      5|   368|
|6 months  |COHORTS        |INDIA        |Low      |       0|   1495|  6172|
|6 months  |COHORTS        |INDIA        |Low      |       1|     43|  6172|
|6 months  |COHORTS        |INDIA        |Medium   |       0|   3347|  6172|
|6 months  |COHORTS        |INDIA        |Medium   |       1|    113|  6172|
|6 months  |COHORTS        |INDIA        |High     |       0|   1138|  6172|
|6 months  |COHORTS        |INDIA        |High     |       1|     36|  6172|
|6 months  |COHORTS        |GUATEMALA    |Low      |       0|    452|   957|
|6 months  |COHORTS        |GUATEMALA    |Low      |       1|      2|   957|
|6 months  |COHORTS        |GUATEMALA    |Medium   |       0|    319|   957|
|6 months  |COHORTS        |GUATEMALA    |Medium   |       1|      2|   957|
|6 months  |COHORTS        |GUATEMALA    |High     |       0|    180|   957|
|6 months  |COHORTS        |GUATEMALA    |High     |       1|      2|   957|
|6 months  |COHORTS        |PHILIPPINES  |Low      |       0|   1007|  2706|
|6 months  |COHORTS        |PHILIPPINES  |Low      |       1|     17|  2706|
|6 months  |COHORTS        |PHILIPPINES  |Medium   |       0|    485|  2706|
|6 months  |COHORTS        |PHILIPPINES  |Medium   |       1|      7|  2706|
|6 months  |COHORTS        |PHILIPPINES  |High     |       0|   1179|  2706|
|6 months  |COHORTS        |PHILIPPINES  |High     |       1|     11|  2706|
|6 months  |EE             |PAKISTAN     |Low      |       0|    304|   371|
|6 months  |EE             |PAKISTAN     |Low      |       1|     12|   371|
|6 months  |EE             |PAKISTAN     |Medium   |       0|     34|   371|
|6 months  |EE             |PAKISTAN     |Medium   |       1|      0|   371|
|6 months  |EE             |PAKISTAN     |High     |       0|     20|   371|
|6 months  |EE             |PAKISTAN     |High     |       1|      1|   371|
|6 months  |GMS-Nepal      |NEPAL        |Low      |       0|    387|   564|
|6 months  |GMS-Nepal      |NEPAL        |Low      |       1|      6|   564|
|6 months  |GMS-Nepal      |NEPAL        |Medium   |       0|    107|   564|
|6 months  |GMS-Nepal      |NEPAL        |Medium   |       1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |High     |       0|     63|   564|
|6 months  |GMS-Nepal      |NEPAL        |High     |       1|      1|   564|
|6 months  |Guatemala BSC  |GUATEMALA    |Low      |       0|    102|   288|
|6 months  |Guatemala BSC  |GUATEMALA    |Low      |       1|      0|   288|
|6 months  |Guatemala BSC  |GUATEMALA    |Medium   |       0|     81|   288|
|6 months  |Guatemala BSC  |GUATEMALA    |Medium   |       1|      0|   288|
|6 months  |Guatemala BSC  |GUATEMALA    |High     |       0|    105|   288|
|6 months  |Guatemala BSC  |GUATEMALA    |High     |       1|      0|   288|
|6 months  |JiVitA-3       |BANGLADESH   |Low      |       0|   5770| 16775|
|6 months  |JiVitA-3       |BANGLADESH   |Low      |       1|     85| 16775|
|6 months  |JiVitA-3       |BANGLADESH   |Medium   |       0|   5082| 16775|
|6 months  |JiVitA-3       |BANGLADESH   |Medium   |       1|     67| 16775|
|6 months  |JiVitA-3       |BANGLADESH   |High     |       0|   5693| 16775|
|6 months  |JiVitA-3       |BANGLADESH   |High     |       1|     78| 16775|
|6 months  |JiVitA-4       |BANGLADESH   |Low      |       0|   1585|  4824|
|6 months  |JiVitA-4       |BANGLADESH   |Low      |       1|      7|  4824|
|6 months  |JiVitA-4       |BANGLADESH   |Medium   |       0|   1483|  4824|
|6 months  |JiVitA-4       |BANGLADESH   |Medium   |       1|     13|  4824|
|6 months  |JiVitA-4       |BANGLADESH   |High     |       0|   1723|  4824|
|6 months  |JiVitA-4       |BANGLADESH   |High     |       1|     13|  4824|
|6 months  |LCNI-5         |MALAWI       |Low      |       0|    268|   824|
|6 months  |LCNI-5         |MALAWI       |Low      |       1|      0|   824|
|6 months  |LCNI-5         |MALAWI       |Medium   |       0|    267|   824|
|6 months  |LCNI-5         |MALAWI       |Medium   |       1|      0|   824|
|6 months  |LCNI-5         |MALAWI       |High     |       0|    289|   824|
|6 months  |LCNI-5         |MALAWI       |High     |       1|      0|   824|
|6 months  |MAL-ED         |INDIA        |Low      |       0|     81|   199|
|6 months  |MAL-ED         |INDIA        |Low      |       1|      0|   199|
|6 months  |MAL-ED         |INDIA        |Medium   |       0|     44|   199|
|6 months  |MAL-ED         |INDIA        |Medium   |       1|      2|   199|
|6 months  |MAL-ED         |INDIA        |High     |       0|     71|   199|
|6 months  |MAL-ED         |INDIA        |High     |       1|      1|   199|
|6 months  |MAL-ED         |BANGLADESH   |Low      |       0|     73|   233|
|6 months  |MAL-ED         |BANGLADESH   |Low      |       1|      0|   233|
|6 months  |MAL-ED         |BANGLADESH   |Medium   |       0|     53|   233|
|6 months  |MAL-ED         |BANGLADESH   |Medium   |       1|      0|   233|
|6 months  |MAL-ED         |BANGLADESH   |High     |       0|    105|   233|
|6 months  |MAL-ED         |BANGLADESH   |High     |       1|      2|   233|
|6 months  |MAL-ED         |PERU         |Low      |       0|    108|   272|
|6 months  |MAL-ED         |PERU         |Low      |       1|      0|   272|
|6 months  |MAL-ED         |PERU         |Medium   |       0|     84|   272|
|6 months  |MAL-ED         |PERU         |Medium   |       1|      0|   272|
|6 months  |MAL-ED         |PERU         |High     |       0|     80|   272|
|6 months  |MAL-ED         |PERU         |High     |       1|      0|   272|
|6 months  |MAL-ED         |NEPAL        |Low      |       0|    108|   226|
|6 months  |MAL-ED         |NEPAL        |Low      |       1|      0|   226|
|6 months  |MAL-ED         |NEPAL        |Medium   |       0|     56|   226|
|6 months  |MAL-ED         |NEPAL        |Medium   |       1|      0|   226|
|6 months  |MAL-ED         |NEPAL        |High     |       0|     62|   226|
|6 months  |MAL-ED         |NEPAL        |High     |       1|      0|   226|
|6 months  |MAL-ED         |BRAZIL       |Low      |       0|     88|   209|
|6 months  |MAL-ED         |BRAZIL       |Low      |       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |Medium   |       0|     88|   209|
|6 months  |MAL-ED         |BRAZIL       |Medium   |       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |High     |       0|     33|   209|
|6 months  |MAL-ED         |BRAZIL       |High     |       1|      0|   209|
|6 months  |MAL-ED         |TANZANIA     |Low      |       0|     60|   200|
|6 months  |MAL-ED         |TANZANIA     |Low      |       1|      0|   200|
|6 months  |MAL-ED         |TANZANIA     |Medium   |       0|     75|   200|
|6 months  |MAL-ED         |TANZANIA     |Medium   |       1|      0|   200|
|6 months  |MAL-ED         |TANZANIA     |High     |       0|     65|   200|
|6 months  |MAL-ED         |TANZANIA     |High     |       1|      0|   200|
|6 months  |MAL-ED         |SOUTH AFRICA |Low      |       0|    138|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |Low      |       1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |Medium   |       0|     35|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |Medium   |       1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |High     |       0|     78|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |High     |       1|      3|   254|
|6 months  |NIH-Birth      |BANGLADESH   |Low      |       0|    221|   537|
|6 months  |NIH-Birth      |BANGLADESH   |Low      |       1|      1|   537|
|6 months  |NIH-Birth      |BANGLADESH   |Medium   |       0|    171|   537|
|6 months  |NIH-Birth      |BANGLADESH   |Medium   |       1|      4|   537|
|6 months  |NIH-Birth      |BANGLADESH   |High     |       0|    139|   537|
|6 months  |NIH-Birth      |BANGLADESH   |High     |       1|      1|   537|
|6 months  |NIH-Crypto     |BANGLADESH   |Low      |       0|    228|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Low      |       1|      0|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Medium   |       0|    158|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Medium   |       1|      0|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |High     |       0|    329|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |High     |       1|      0|   715|
|6 months  |PROBIT         |BELARUS      |Low      |       0|   5131| 15757|
|6 months  |PROBIT         |BELARUS      |Low      |       1|      4| 15757|
|6 months  |PROBIT         |BELARUS      |Medium   |       0|   7920| 15757|
|6 months  |PROBIT         |BELARUS      |Medium   |       1|      3| 15757|
|6 months  |PROBIT         |BELARUS      |High     |       0|   2697| 15757|
|6 months  |PROBIT         |BELARUS      |High     |       1|      2| 15757|
|6 months  |PROVIDE        |BANGLADESH   |Low      |       0|    179|   603|
|6 months  |PROVIDE        |BANGLADESH   |Low      |       1|      3|   603|
|6 months  |PROVIDE        |BANGLADESH   |Medium   |       0|    227|   603|
|6 months  |PROVIDE        |BANGLADESH   |Medium   |       1|      2|   603|
|6 months  |PROVIDE        |BANGLADESH   |High     |       0|    192|   603|
|6 months  |PROVIDE        |BANGLADESH   |High     |       1|      0|   603|
|6 months  |SAS-CompFeed   |INDIA        |Low      |       0|    577|  1333|
|6 months  |SAS-CompFeed   |INDIA        |Low      |       1|     23|  1333|
|6 months  |SAS-CompFeed   |INDIA        |Medium   |       0|    428|  1333|
|6 months  |SAS-CompFeed   |INDIA        |Medium   |       1|     13|  1333|
|6 months  |SAS-CompFeed   |INDIA        |High     |       0|    285|  1333|
|6 months  |SAS-CompFeed   |INDIA        |High     |       1|      7|  1333|
|6 months  |SAS-FoodSuppl  |INDIA        |Low      |       0|    290|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |Low      |       1|     17|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |Medium   |       0|     34|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |Medium   |       1|      2|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |High     |       0|     37|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |High     |       1|      0|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |Low      |       0|     85|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |Low      |       1|      0|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |Medium   |       0|   1397|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |Medium   |       1|     10|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |High     |       0|    534|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |High     |       1|      2|  2028|
|6 months  |Vellore Crypto |INDIA        |Low      |       0|    140|   408|
|6 months  |Vellore Crypto |INDIA        |Low      |       1|      6|   408|
|6 months  |Vellore Crypto |INDIA        |Medium   |       0|    144|   408|
|6 months  |Vellore Crypto |INDIA        |Medium   |       1|      8|   408|
|6 months  |Vellore Crypto |INDIA        |High     |       0|    102|   408|
|6 months  |Vellore Crypto |INDIA        |High     |       1|      8|   408|
|6 months  |ZVITAMBO       |ZIMBABWE     |Low      |       0|   1516|  8502|
|6 months  |ZVITAMBO       |ZIMBABWE     |Low      |       1|     12|  8502|
|6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |       0|   2158|  8502|
|6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |       1|     23|  8502|
|6 months  |ZVITAMBO       |ZIMBABWE     |High     |       0|   4749|  8502|
|6 months  |ZVITAMBO       |ZIMBABWE     |High     |       1|     44|  8502|
|24 months |CMC-V-BCS-2002 |INDIA        |Low      |       0|    111|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |Low      |       1|      0|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |Medium   |       0|     99|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |Medium   |       1|      1|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |High     |       0|    159|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |High     |       1|      2|   372|
|24 months |COHORTS        |INDIA        |Low      |       0|   1155|  4751|
|24 months |COHORTS        |INDIA        |Low      |       1|     18|  4751|
|24 months |COHORTS        |INDIA        |Medium   |       0|   2656|  4751|
|24 months |COHORTS        |INDIA        |Medium   |       1|     24|  4751|
|24 months |COHORTS        |INDIA        |High     |       0|    890|  4751|
|24 months |COHORTS        |INDIA        |High     |       1|      8|  4751|
|24 months |COHORTS        |GUATEMALA    |Low      |       0|    501|  1074|
|24 months |COHORTS        |GUATEMALA    |Low      |       1|      2|  1074|
|24 months |COHORTS        |GUATEMALA    |Medium   |       0|    353|  1074|
|24 months |COHORTS        |GUATEMALA    |Medium   |       1|      1|  1074|
|24 months |COHORTS        |GUATEMALA    |High     |       0|    216|  1074|
|24 months |COHORTS        |GUATEMALA    |High     |       1|      1|  1074|
|24 months |COHORTS        |PHILIPPINES  |Low      |       0|    908|  2449|
|24 months |COHORTS        |PHILIPPINES  |Low      |       1|     12|  2449|
|24 months |COHORTS        |PHILIPPINES  |Medium   |       0|    449|  2449|
|24 months |COHORTS        |PHILIPPINES  |Medium   |       1|      3|  2449|
|24 months |COHORTS        |PHILIPPINES  |High     |       0|   1067|  2449|
|24 months |COHORTS        |PHILIPPINES  |High     |       1|     10|  2449|
|24 months |EE             |PAKISTAN     |Low      |       0|    136|   165|
|24 months |EE             |PAKISTAN     |Low      |       1|      3|   165|
|24 months |EE             |PAKISTAN     |Medium   |       0|     20|   165|
|24 months |EE             |PAKISTAN     |Medium   |       1|      1|   165|
|24 months |EE             |PAKISTAN     |High     |       0|      5|   165|
|24 months |EE             |PAKISTAN     |High     |       1|      0|   165|
|24 months |GMS-Nepal      |NEPAL        |Low      |       0|    331|   487|
|24 months |GMS-Nepal      |NEPAL        |Low      |       1|     12|   487|
|24 months |GMS-Nepal      |NEPAL        |Medium   |       0|     92|   487|
|24 months |GMS-Nepal      |NEPAL        |Medium   |       1|      2|   487|
|24 months |GMS-Nepal      |NEPAL        |High     |       0|     49|   487|
|24 months |GMS-Nepal      |NEPAL        |High     |       1|      1|   487|
|24 months |JiVitA-3       |BANGLADESH   |Low      |       0|   2926|  8599|
|24 months |JiVitA-3       |BANGLADESH   |Low      |       1|    111|  8599|
|24 months |JiVitA-3       |BANGLADESH   |Medium   |       0|   2533|  8599|
|24 months |JiVitA-3       |BANGLADESH   |Medium   |       1|    105|  8599|
|24 months |JiVitA-3       |BANGLADESH   |High     |       0|   2806|  8599|
|24 months |JiVitA-3       |BANGLADESH   |High     |       1|    118|  8599|
|24 months |JiVitA-4       |BANGLADESH   |Low      |       0|   1477|  4727|
|24 months |JiVitA-4       |BANGLADESH   |Low      |       1|     50|  4727|
|24 months |JiVitA-4       |BANGLADESH   |Medium   |       0|   1438|  4727|
|24 months |JiVitA-4       |BANGLADESH   |Medium   |       1|     38|  4727|
|24 months |JiVitA-4       |BANGLADESH   |High     |       0|   1683|  4727|
|24 months |JiVitA-4       |BANGLADESH   |High     |       1|     41|  4727|
|24 months |LCNI-5         |MALAWI       |Low      |       0|    176|   555|
|24 months |LCNI-5         |MALAWI       |Low      |       1|      0|   555|
|24 months |LCNI-5         |MALAWI       |Medium   |       0|    192|   555|
|24 months |LCNI-5         |MALAWI       |Medium   |       1|      0|   555|
|24 months |LCNI-5         |MALAWI       |High     |       0|    186|   555|
|24 months |LCNI-5         |MALAWI       |High     |       1|      1|   555|
|24 months |MAL-ED         |INDIA        |Low      |       0|     79|   192|
|24 months |MAL-ED         |INDIA        |Low      |       1|      1|   192|
|24 months |MAL-ED         |INDIA        |Medium   |       0|     43|   192|
|24 months |MAL-ED         |INDIA        |Medium   |       1|      0|   192|
|24 months |MAL-ED         |INDIA        |High     |       0|     68|   192|
|24 months |MAL-ED         |INDIA        |High     |       1|      1|   192|
|24 months |MAL-ED         |BANGLADESH   |Low      |       0|     60|   204|
|24 months |MAL-ED         |BANGLADESH   |Low      |       1|      0|   204|
|24 months |MAL-ED         |BANGLADESH   |Medium   |       0|     49|   204|
|24 months |MAL-ED         |BANGLADESH   |Medium   |       1|      0|   204|
|24 months |MAL-ED         |BANGLADESH   |High     |       0|     95|   204|
|24 months |MAL-ED         |BANGLADESH   |High     |       1|      0|   204|
|24 months |MAL-ED         |PERU         |Low      |       0|     73|   200|
|24 months |MAL-ED         |PERU         |Low      |       1|      0|   200|
|24 months |MAL-ED         |PERU         |Medium   |       0|     65|   200|
|24 months |MAL-ED         |PERU         |Medium   |       1|      1|   200|
|24 months |MAL-ED         |PERU         |High     |       0|     60|   200|
|24 months |MAL-ED         |PERU         |High     |       1|      1|   200|
|24 months |MAL-ED         |NEPAL        |Low      |       0|    107|   218|
|24 months |MAL-ED         |NEPAL        |Low      |       1|      0|   218|
|24 months |MAL-ED         |NEPAL        |Medium   |       0|     53|   218|
|24 months |MAL-ED         |NEPAL        |Medium   |       1|      0|   218|
|24 months |MAL-ED         |NEPAL        |High     |       0|     58|   218|
|24 months |MAL-ED         |NEPAL        |High     |       1|      0|   218|
|24 months |MAL-ED         |BRAZIL       |Low      |       0|     72|   169|
|24 months |MAL-ED         |BRAZIL       |Low      |       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |Medium   |       0|     69|   169|
|24 months |MAL-ED         |BRAZIL       |Medium   |       1|      1|   169|
|24 months |MAL-ED         |BRAZIL       |High     |       0|     27|   169|
|24 months |MAL-ED         |BRAZIL       |High     |       1|      0|   169|
|24 months |MAL-ED         |TANZANIA     |Low      |       0|     54|   174|
|24 months |MAL-ED         |TANZANIA     |Low      |       1|      0|   174|
|24 months |MAL-ED         |TANZANIA     |Medium   |       0|     65|   174|
|24 months |MAL-ED         |TANZANIA     |Medium   |       1|      0|   174|
|24 months |MAL-ED         |TANZANIA     |High     |       0|     55|   174|
|24 months |MAL-ED         |TANZANIA     |High     |       1|      0|   174|
|24 months |MAL-ED         |SOUTH AFRICA |Low      |       0|    132|   238|
|24 months |MAL-ED         |SOUTH AFRICA |Low      |       1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |Medium   |       0|     31|   238|
|24 months |MAL-ED         |SOUTH AFRICA |Medium   |       1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |High     |       0|     75|   238|
|24 months |MAL-ED         |SOUTH AFRICA |High     |       1|      0|   238|
|24 months |NIH-Birth      |BANGLADESH   |Low      |       0|    173|   428|
|24 months |NIH-Birth      |BANGLADESH   |Low      |       1|      4|   428|
|24 months |NIH-Birth      |BANGLADESH   |Medium   |       0|    135|   428|
|24 months |NIH-Birth      |BANGLADESH   |Medium   |       1|      3|   428|
|24 months |NIH-Birth      |BANGLADESH   |High     |       0|    110|   428|
|24 months |NIH-Birth      |BANGLADESH   |High     |       1|      3|   428|
|24 months |NIH-Crypto     |BANGLADESH   |Low      |       0|    154|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Low      |       1|      2|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Medium   |       0|    111|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Medium   |       1|      0|   514|
|24 months |NIH-Crypto     |BANGLADESH   |High     |       0|    245|   514|
|24 months |NIH-Crypto     |BANGLADESH   |High     |       1|      2|   514|
|24 months |PROBIT         |BELARUS      |Low      |       0|   1249|  3970|
|24 months |PROBIT         |BELARUS      |Low      |       1|      4|  3970|
|24 months |PROBIT         |BELARUS      |Medium   |       0|   2063|  3970|
|24 months |PROBIT         |BELARUS      |Medium   |       1|      2|  3970|
|24 months |PROBIT         |BELARUS      |High     |       0|    651|  3970|
|24 months |PROBIT         |BELARUS      |High     |       1|      1|  3970|
|24 months |PROVIDE        |BANGLADESH   |Low      |       0|    171|   579|
|24 months |PROVIDE        |BANGLADESH   |Low      |       1|      4|   579|
|24 months |PROVIDE        |BANGLADESH   |Medium   |       0|    214|   579|
|24 months |PROVIDE        |BANGLADESH   |Medium   |       1|      3|   579|
|24 months |PROVIDE        |BANGLADESH   |High     |       0|    185|   579|
|24 months |PROVIDE        |BANGLADESH   |High     |       1|      2|   579|
|24 months |TanzaniaChild2 |TANZANIA     |Low      |       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Low      |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Medium   |       0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Medium   |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |High     |       0|      4|     6|
|24 months |TanzaniaChild2 |TANZANIA     |High     |       1|      0|     6|
|24 months |Vellore Crypto |INDIA        |Low      |       0|    146|   409|
|24 months |Vellore Crypto |INDIA        |Low      |       1|      1|   409|
|24 months |Vellore Crypto |INDIA        |Medium   |       0|    150|   409|
|24 months |Vellore Crypto |INDIA        |Medium   |       1|      1|   409|
|24 months |Vellore Crypto |INDIA        |High     |       0|    108|   409|
|24 months |Vellore Crypto |INDIA        |High     |       1|      3|   409|
|24 months |ZVITAMBO       |ZIMBABWE     |Low      |       0|     81|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |Low      |       1|      5|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |Medium   |       0|     96|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |Medium   |       1|      3|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |High     |       0|    225|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |High     |       1|     22|   432|


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


