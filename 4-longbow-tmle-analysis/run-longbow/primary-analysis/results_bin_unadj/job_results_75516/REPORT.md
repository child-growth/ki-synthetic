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

**Outcome Variable:** wasted

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

|agecat    |studyid        |country      |meducyrs | wasted| n_cell|     n|
|:---------|:--------------|:------------|:--------|------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |Low      |      0|     24|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |Low      |      1|      3|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |Medium   |      0|     19|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |Medium   |      1|      3|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |High     |      0|     32|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |High     |      1|      5|    86|
|Birth     |COHORTS        |INDIA        |Low      |      0|   1119|  5577|
|Birth     |COHORTS        |INDIA        |Low      |      1|    269|  5577|
|Birth     |COHORTS        |INDIA        |Medium   |      0|   2602|  5577|
|Birth     |COHORTS        |INDIA        |Medium   |      1|    530|  5577|
|Birth     |COHORTS        |INDIA        |High     |      0|    868|  5577|
|Birth     |COHORTS        |INDIA        |High     |      1|    189|  5577|
|Birth     |COHORTS        |GUATEMALA    |Low      |      0|    255|   751|
|Birth     |COHORTS        |GUATEMALA    |Low      |      1|     93|   751|
|Birth     |COHORTS        |GUATEMALA    |Medium   |      0|    186|   751|
|Birth     |COHORTS        |GUATEMALA    |Medium   |      1|     68|   751|
|Birth     |COHORTS        |GUATEMALA    |High     |      0|    119|   751|
|Birth     |COHORTS        |GUATEMALA    |High     |      1|     30|   751|
|Birth     |COHORTS        |PHILIPPINES  |Low      |      0|    909|  2899|
|Birth     |COHORTS        |PHILIPPINES  |Low      |      1|    144|  2899|
|Birth     |COHORTS        |PHILIPPINES  |Medium   |      0|    449|  2899|
|Birth     |COHORTS        |PHILIPPINES  |Medium   |      1|     84|  2899|
|Birth     |COHORTS        |PHILIPPINES  |High     |      0|   1090|  2899|
|Birth     |COHORTS        |PHILIPPINES  |High     |      1|    223|  2899|
|Birth     |EE             |PAKISTAN     |Low      |      0|    130|   175|
|Birth     |EE             |PAKISTAN     |Low      |      1|     18|   175|
|Birth     |EE             |PAKISTAN     |Medium   |      0|     13|   175|
|Birth     |EE             |PAKISTAN     |Medium   |      1|      3|   175|
|Birth     |EE             |PAKISTAN     |High     |      0|     10|   175|
|Birth     |EE             |PAKISTAN     |High     |      1|      1|   175|
|Birth     |GMS-Nepal      |NEPAL        |Low      |      0|    351|   639|
|Birth     |GMS-Nepal      |NEPAL        |Low      |      1|     98|   639|
|Birth     |GMS-Nepal      |NEPAL        |Medium   |      0|     96|   639|
|Birth     |GMS-Nepal      |NEPAL        |Medium   |      1|     20|   639|
|Birth     |GMS-Nepal      |NEPAL        |High     |      0|     60|   639|
|Birth     |GMS-Nepal      |NEPAL        |High     |      1|     14|   639|
|Birth     |JiVitA-3       |BANGLADESH   |Low      |      0|   5863| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |Low      |      1|    738| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |Medium   |      0|   4854| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |Medium   |      1|    581| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |High     |      0|   5310| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |High     |      1|    652| 17998|
|Birth     |JiVitA-4       |BANGLADESH   |Low      |      0|    716|  2393|
|Birth     |JiVitA-4       |BANGLADESH   |Low      |      1|     84|  2393|
|Birth     |JiVitA-4       |BANGLADESH   |Medium   |      0|    668|  2393|
|Birth     |JiVitA-4       |BANGLADESH   |Medium   |      1|     63|  2393|
|Birth     |JiVitA-4       |BANGLADESH   |High     |      0|    771|  2393|
|Birth     |JiVitA-4       |BANGLADESH   |High     |      1|     91|  2393|
|Birth     |MAL-ED         |INDIA        |Low      |      0|     12|    38|
|Birth     |MAL-ED         |INDIA        |Low      |      1|      2|    38|
|Birth     |MAL-ED         |INDIA        |Medium   |      0|      8|    38|
|Birth     |MAL-ED         |INDIA        |Medium   |      1|      0|    38|
|Birth     |MAL-ED         |INDIA        |High     |      0|     14|    38|
|Birth     |MAL-ED         |INDIA        |High     |      1|      2|    38|
|Birth     |MAL-ED         |BANGLADESH   |Low      |      0|     48|   207|
|Birth     |MAL-ED         |BANGLADESH   |Low      |      1|     10|   207|
|Birth     |MAL-ED         |BANGLADESH   |Medium   |      0|     41|   207|
|Birth     |MAL-ED         |BANGLADESH   |Medium   |      1|      7|   207|
|Birth     |MAL-ED         |BANGLADESH   |High     |      0|     83|   207|
|Birth     |MAL-ED         |BANGLADESH   |High     |      1|     18|   207|
|Birth     |MAL-ED         |PERU         |Low      |      0|     87|   227|
|Birth     |MAL-ED         |PERU         |Low      |      1|      1|   227|
|Birth     |MAL-ED         |PERU         |Medium   |      0|     70|   227|
|Birth     |MAL-ED         |PERU         |Medium   |      1|      3|   227|
|Birth     |MAL-ED         |PERU         |High     |      0|     65|   227|
|Birth     |MAL-ED         |PERU         |High     |      1|      1|   227|
|Birth     |MAL-ED         |NEPAL        |Low      |      0|     12|    24|
|Birth     |MAL-ED         |NEPAL        |Low      |      1|      0|    24|
|Birth     |MAL-ED         |NEPAL        |Medium   |      0|      2|    24|
|Birth     |MAL-ED         |NEPAL        |Medium   |      1|      2|    24|
|Birth     |MAL-ED         |NEPAL        |High     |      0|      8|    24|
|Birth     |MAL-ED         |NEPAL        |High     |      1|      0|    24|
|Birth     |MAL-ED         |BRAZIL       |Low      |      0|     29|    62|
|Birth     |MAL-ED         |BRAZIL       |Low      |      1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |Medium   |      0|     24|    62|
|Birth     |MAL-ED         |BRAZIL       |Medium   |      1|      2|    62|
|Birth     |MAL-ED         |BRAZIL       |High     |      0|      7|    62|
|Birth     |MAL-ED         |BRAZIL       |High     |      1|      0|    62|
|Birth     |MAL-ED         |TANZANIA     |Low      |      0|     29|    91|
|Birth     |MAL-ED         |TANZANIA     |Low      |      1|      0|    91|
|Birth     |MAL-ED         |TANZANIA     |Medium   |      0|     33|    91|
|Birth     |MAL-ED         |TANZANIA     |Medium   |      1|      0|    91|
|Birth     |MAL-ED         |TANZANIA     |High     |      0|     29|    91|
|Birth     |MAL-ED         |TANZANIA     |High     |      1|      0|    91|
|Birth     |MAL-ED         |SOUTH AFRICA |Low      |      0|     57|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |Low      |      1|      7|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |Medium   |      0|     15|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |Medium   |      1|      2|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |High     |      0|     36|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |High     |      1|      3|   120|
|Birth     |NIH-Birth      |BANGLADESH   |Low      |      0|    168|   575|
|Birth     |NIH-Birth      |BANGLADESH   |Low      |      1|     77|   575|
|Birth     |NIH-Birth      |BANGLADESH   |Medium   |      0|    127|   575|
|Birth     |NIH-Birth      |BANGLADESH   |Medium   |      1|     56|   575|
|Birth     |NIH-Birth      |BANGLADESH   |High     |      0|    112|   575|
|Birth     |NIH-Birth      |BANGLADESH   |High     |      1|     35|   575|
|Birth     |NIH-Crypto     |BANGLADESH   |Low      |      0|    165|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |Low      |      1|     56|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |Medium   |      0|    120|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |Medium   |      1|     37|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |High     |      0|    250|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |High     |      1|     79|   707|
|Birth     |PROBIT         |BELARUS      |Low      |      0|   3528| 13817|
|Birth     |PROBIT         |BELARUS      |Low      |      1|    892| 13817|
|Birth     |PROBIT         |BELARUS      |Medium   |      0|   5550| 13817|
|Birth     |PROBIT         |BELARUS      |Medium   |      1|   1524| 13817|
|Birth     |PROBIT         |BELARUS      |High     |      0|   1833| 13817|
|Birth     |PROBIT         |BELARUS      |High     |      1|    490| 13817|
|Birth     |PROVIDE        |BANGLADESH   |Low      |      0|    129|   532|
|Birth     |PROVIDE        |BANGLADESH   |Low      |      1|     30|   532|
|Birth     |PROVIDE        |BANGLADESH   |Medium   |      0|    152|   532|
|Birth     |PROVIDE        |BANGLADESH   |Medium   |      1|     47|   532|
|Birth     |PROVIDE        |BANGLADESH   |High     |      0|    134|   532|
|Birth     |PROVIDE        |BANGLADESH   |High     |      1|     40|   532|
|Birth     |SAS-CompFeed   |INDIA        |Low      |      0|    423|  1101|
|Birth     |SAS-CompFeed   |INDIA        |Low      |      1|     56|  1101|
|Birth     |SAS-CompFeed   |INDIA        |Medium   |      0|    333|  1101|
|Birth     |SAS-CompFeed   |INDIA        |Medium   |      1|     35|  1101|
|Birth     |SAS-CompFeed   |INDIA        |High     |      0|    228|  1101|
|Birth     |SAS-CompFeed   |INDIA        |High     |      1|     26|  1101|
|Birth     |Vellore Crypto |INDIA        |Low      |      0|     92|   343|
|Birth     |Vellore Crypto |INDIA        |Low      |      1|     33|   343|
|Birth     |Vellore Crypto |INDIA        |Medium   |      0|     96|   343|
|Birth     |Vellore Crypto |INDIA        |Medium   |      1|     32|   343|
|Birth     |Vellore Crypto |INDIA        |High     |      0|     63|   343|
|Birth     |Vellore Crypto |INDIA        |High     |      1|     27|   343|
|Birth     |ZVITAMBO       |ZIMBABWE     |Low      |      0|   1966| 12909|
|Birth     |ZVITAMBO       |ZIMBABWE     |Low      |      1|    377| 12909|
|Birth     |ZVITAMBO       |ZIMBABWE     |Medium   |      0|   2771| 12909|
|Birth     |ZVITAMBO       |ZIMBABWE     |Medium   |      1|    514| 12909|
|Birth     |ZVITAMBO       |ZIMBABWE     |High     |      0|   6111| 12909|
|Birth     |ZVITAMBO       |ZIMBABWE     |High     |      1|   1170| 12909|
|6 months  |CMC-V-BCS-2002 |INDIA        |Low      |      0|     93|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |Low      |      1|     16|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |Medium   |      0|     92|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |Medium   |      1|      8|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |High     |      0|    137|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |High     |      1|     22|   368|
|6 months  |COHORTS        |INDIA        |Low      |      0|   1341|  6172|
|6 months  |COHORTS        |INDIA        |Low      |      1|    197|  6172|
|6 months  |COHORTS        |INDIA        |Medium   |      0|   3013|  6172|
|6 months  |COHORTS        |INDIA        |Medium   |      1|    447|  6172|
|6 months  |COHORTS        |INDIA        |High     |      0|   1041|  6172|
|6 months  |COHORTS        |INDIA        |High     |      1|    133|  6172|
|6 months  |COHORTS        |GUATEMALA    |Low      |      0|    438|   957|
|6 months  |COHORTS        |GUATEMALA    |Low      |      1|     16|   957|
|6 months  |COHORTS        |GUATEMALA    |Medium   |      0|    311|   957|
|6 months  |COHORTS        |GUATEMALA    |Medium   |      1|     10|   957|
|6 months  |COHORTS        |GUATEMALA    |High     |      0|    176|   957|
|6 months  |COHORTS        |GUATEMALA    |High     |      1|      6|   957|
|6 months  |COHORTS        |PHILIPPINES  |Low      |      0|    952|  2706|
|6 months  |COHORTS        |PHILIPPINES  |Low      |      1|     72|  2706|
|6 months  |COHORTS        |PHILIPPINES  |Medium   |      0|    459|  2706|
|6 months  |COHORTS        |PHILIPPINES  |Medium   |      1|     33|  2706|
|6 months  |COHORTS        |PHILIPPINES  |High     |      0|   1134|  2706|
|6 months  |COHORTS        |PHILIPPINES  |High     |      1|     56|  2706|
|6 months  |EE             |PAKISTAN     |Low      |      0|    278|   371|
|6 months  |EE             |PAKISTAN     |Low      |      1|     38|   371|
|6 months  |EE             |PAKISTAN     |Medium   |      0|     30|   371|
|6 months  |EE             |PAKISTAN     |Medium   |      1|      4|   371|
|6 months  |EE             |PAKISTAN     |High     |      0|     16|   371|
|6 months  |EE             |PAKISTAN     |High     |      1|      5|   371|
|6 months  |GMS-Nepal      |NEPAL        |Low      |      0|    354|   564|
|6 months  |GMS-Nepal      |NEPAL        |Low      |      1|     39|   564|
|6 months  |GMS-Nepal      |NEPAL        |Medium   |      0|    100|   564|
|6 months  |GMS-Nepal      |NEPAL        |Medium   |      1|      7|   564|
|6 months  |GMS-Nepal      |NEPAL        |High     |      0|     59|   564|
|6 months  |GMS-Nepal      |NEPAL        |High     |      1|      5|   564|
|6 months  |Guatemala BSC  |GUATEMALA    |Low      |      0|    100|   288|
|6 months  |Guatemala BSC  |GUATEMALA    |Low      |      1|      2|   288|
|6 months  |Guatemala BSC  |GUATEMALA    |Medium   |      0|     81|   288|
|6 months  |Guatemala BSC  |GUATEMALA    |Medium   |      1|      0|   288|
|6 months  |Guatemala BSC  |GUATEMALA    |High     |      0|    103|   288|
|6 months  |Guatemala BSC  |GUATEMALA    |High     |      1|      2|   288|
|6 months  |JiVitA-3       |BANGLADESH   |Low      |      0|   5332| 16775|
|6 months  |JiVitA-3       |BANGLADESH   |Low      |      1|    523| 16775|
|6 months  |JiVitA-3       |BANGLADESH   |Medium   |      0|   4734| 16775|
|6 months  |JiVitA-3       |BANGLADESH   |Medium   |      1|    415| 16775|
|6 months  |JiVitA-3       |BANGLADESH   |High     |      0|   5289| 16775|
|6 months  |JiVitA-3       |BANGLADESH   |High     |      1|    482| 16775|
|6 months  |JiVitA-4       |BANGLADESH   |Low      |      0|   1496|  4824|
|6 months  |JiVitA-4       |BANGLADESH   |Low      |      1|     96|  4824|
|6 months  |JiVitA-4       |BANGLADESH   |Medium   |      0|   1415|  4824|
|6 months  |JiVitA-4       |BANGLADESH   |Medium   |      1|     81|  4824|
|6 months  |JiVitA-4       |BANGLADESH   |High     |      0|   1640|  4824|
|6 months  |JiVitA-4       |BANGLADESH   |High     |      1|     96|  4824|
|6 months  |LCNI-5         |MALAWI       |Low      |      0|    264|   824|
|6 months  |LCNI-5         |MALAWI       |Low      |      1|      4|   824|
|6 months  |LCNI-5         |MALAWI       |Medium   |      0|    263|   824|
|6 months  |LCNI-5         |MALAWI       |Medium   |      1|      4|   824|
|6 months  |LCNI-5         |MALAWI       |High     |      0|    283|   824|
|6 months  |LCNI-5         |MALAWI       |High     |      1|      6|   824|
|6 months  |MAL-ED         |INDIA        |Low      |      0|     76|   199|
|6 months  |MAL-ED         |INDIA        |Low      |      1|      5|   199|
|6 months  |MAL-ED         |INDIA        |Medium   |      0|     43|   199|
|6 months  |MAL-ED         |INDIA        |Medium   |      1|      3|   199|
|6 months  |MAL-ED         |INDIA        |High     |      0|     66|   199|
|6 months  |MAL-ED         |INDIA        |High     |      1|      6|   199|
|6 months  |MAL-ED         |BANGLADESH   |Low      |      0|     70|   233|
|6 months  |MAL-ED         |BANGLADESH   |Low      |      1|      3|   233|
|6 months  |MAL-ED         |BANGLADESH   |Medium   |      0|     52|   233|
|6 months  |MAL-ED         |BANGLADESH   |Medium   |      1|      1|   233|
|6 months  |MAL-ED         |BANGLADESH   |High     |      0|    104|   233|
|6 months  |MAL-ED         |BANGLADESH   |High     |      1|      3|   233|
|6 months  |MAL-ED         |PERU         |Low      |      0|    108|   272|
|6 months  |MAL-ED         |PERU         |Low      |      1|      0|   272|
|6 months  |MAL-ED         |PERU         |Medium   |      0|     84|   272|
|6 months  |MAL-ED         |PERU         |Medium   |      1|      0|   272|
|6 months  |MAL-ED         |PERU         |High     |      0|     80|   272|
|6 months  |MAL-ED         |PERU         |High     |      1|      0|   272|
|6 months  |MAL-ED         |NEPAL        |Low      |      0|    105|   226|
|6 months  |MAL-ED         |NEPAL        |Low      |      1|      3|   226|
|6 months  |MAL-ED         |NEPAL        |Medium   |      0|     55|   226|
|6 months  |MAL-ED         |NEPAL        |Medium   |      1|      1|   226|
|6 months  |MAL-ED         |NEPAL        |High     |      0|     62|   226|
|6 months  |MAL-ED         |NEPAL        |High     |      1|      0|   226|
|6 months  |MAL-ED         |BRAZIL       |Low      |      0|     88|   209|
|6 months  |MAL-ED         |BRAZIL       |Low      |      1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |Medium   |      0|     87|   209|
|6 months  |MAL-ED         |BRAZIL       |Medium   |      1|      1|   209|
|6 months  |MAL-ED         |BRAZIL       |High     |      0|     33|   209|
|6 months  |MAL-ED         |BRAZIL       |High     |      1|      0|   209|
|6 months  |MAL-ED         |TANZANIA     |Low      |      0|     60|   200|
|6 months  |MAL-ED         |TANZANIA     |Low      |      1|      0|   200|
|6 months  |MAL-ED         |TANZANIA     |Medium   |      0|     75|   200|
|6 months  |MAL-ED         |TANZANIA     |Medium   |      1|      0|   200|
|6 months  |MAL-ED         |TANZANIA     |High     |      0|     65|   200|
|6 months  |MAL-ED         |TANZANIA     |High     |      1|      0|   200|
|6 months  |MAL-ED         |SOUTH AFRICA |Low      |      0|    136|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |Low      |      1|      2|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |Medium   |      0|     34|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |Medium   |      1|      1|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |High     |      0|     77|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |High     |      1|      4|   254|
|6 months  |NIH-Birth      |BANGLADESH   |Low      |      0|    206|   537|
|6 months  |NIH-Birth      |BANGLADESH   |Low      |      1|     16|   537|
|6 months  |NIH-Birth      |BANGLADESH   |Medium   |      0|    164|   537|
|6 months  |NIH-Birth      |BANGLADESH   |Medium   |      1|     11|   537|
|6 months  |NIH-Birth      |BANGLADESH   |High     |      0|    132|   537|
|6 months  |NIH-Birth      |BANGLADESH   |High     |      1|      8|   537|
|6 months  |NIH-Crypto     |BANGLADESH   |Low      |      0|    220|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Low      |      1|      8|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Medium   |      0|    152|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Medium   |      1|      6|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |High     |      0|    322|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |High     |      1|      7|   715|
|6 months  |PROBIT         |BELARUS      |Low      |      0|   5100| 15757|
|6 months  |PROBIT         |BELARUS      |Low      |      1|     35| 15757|
|6 months  |PROBIT         |BELARUS      |Medium   |      0|   7866| 15757|
|6 months  |PROBIT         |BELARUS      |Medium   |      1|     57| 15757|
|6 months  |PROBIT         |BELARUS      |High     |      0|   2683| 15757|
|6 months  |PROBIT         |BELARUS      |High     |      1|     16| 15757|
|6 months  |PROVIDE        |BANGLADESH   |Low      |      0|    169|   603|
|6 months  |PROVIDE        |BANGLADESH   |Low      |      1|     13|   603|
|6 months  |PROVIDE        |BANGLADESH   |Medium   |      0|    222|   603|
|6 months  |PROVIDE        |BANGLADESH   |Medium   |      1|      7|   603|
|6 months  |PROVIDE        |BANGLADESH   |High     |      0|    187|   603|
|6 months  |PROVIDE        |BANGLADESH   |High     |      1|      5|   603|
|6 months  |SAS-CompFeed   |INDIA        |Low      |      0|    513|  1333|
|6 months  |SAS-CompFeed   |INDIA        |Low      |      1|     87|  1333|
|6 months  |SAS-CompFeed   |INDIA        |Medium   |      0|    393|  1333|
|6 months  |SAS-CompFeed   |INDIA        |Medium   |      1|     48|  1333|
|6 months  |SAS-CompFeed   |INDIA        |High     |      0|    261|  1333|
|6 months  |SAS-CompFeed   |INDIA        |High     |      1|     31|  1333|
|6 months  |SAS-FoodSuppl  |INDIA        |Low      |      0|    254|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |Low      |      1|     53|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |Medium   |      0|     26|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |Medium   |      1|     10|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |High     |      0|     31|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |High     |      1|      6|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |Low      |      0|     80|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |Low      |      1|      5|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |Medium   |      0|   1340|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |Medium   |      1|     67|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |High     |      0|    521|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |High     |      1|     15|  2028|
|6 months  |Vellore Crypto |INDIA        |Low      |      0|    131|   408|
|6 months  |Vellore Crypto |INDIA        |Low      |      1|     15|   408|
|6 months  |Vellore Crypto |INDIA        |Medium   |      0|    129|   408|
|6 months  |Vellore Crypto |INDIA        |Medium   |      1|     23|   408|
|6 months  |Vellore Crypto |INDIA        |High     |      0|     94|   408|
|6 months  |Vellore Crypto |INDIA        |High     |      1|     16|   408|
|6 months  |ZVITAMBO       |ZIMBABWE     |Low      |      0|   1490|  8502|
|6 months  |ZVITAMBO       |ZIMBABWE     |Low      |      1|     38|  8502|
|6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |      0|   2108|  8502|
|6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |      1|     73|  8502|
|6 months  |ZVITAMBO       |ZIMBABWE     |High     |      0|   4639|  8502|
|6 months  |ZVITAMBO       |ZIMBABWE     |High     |      1|    154|  8502|
|24 months |CMC-V-BCS-2002 |INDIA        |Low      |      0|    103|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |Low      |      1|      8|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |Medium   |      0|     94|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |Medium   |      1|      6|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |High     |      0|    152|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |High     |      1|      9|   372|
|24 months |COHORTS        |INDIA        |Low      |      0|   1039|  4751|
|24 months |COHORTS        |INDIA        |Low      |      1|    134|  4751|
|24 months |COHORTS        |INDIA        |Medium   |      0|   2449|  4751|
|24 months |COHORTS        |INDIA        |Medium   |      1|    231|  4751|
|24 months |COHORTS        |INDIA        |High     |      0|    835|  4751|
|24 months |COHORTS        |INDIA        |High     |      1|     63|  4751|
|24 months |COHORTS        |GUATEMALA    |Low      |      0|    479|  1074|
|24 months |COHORTS        |GUATEMALA    |Low      |      1|     24|  1074|
|24 months |COHORTS        |GUATEMALA    |Medium   |      0|    342|  1074|
|24 months |COHORTS        |GUATEMALA    |Medium   |      1|     12|  1074|
|24 months |COHORTS        |GUATEMALA    |High     |      0|    204|  1074|
|24 months |COHORTS        |GUATEMALA    |High     |      1|     13|  1074|
|24 months |COHORTS        |PHILIPPINES  |Low      |      0|    843|  2449|
|24 months |COHORTS        |PHILIPPINES  |Low      |      1|     77|  2449|
|24 months |COHORTS        |PHILIPPINES  |Medium   |      0|    425|  2449|
|24 months |COHORTS        |PHILIPPINES  |Medium   |      1|     27|  2449|
|24 months |COHORTS        |PHILIPPINES  |High     |      0|   1014|  2449|
|24 months |COHORTS        |PHILIPPINES  |High     |      1|     63|  2449|
|24 months |EE             |PAKISTAN     |Low      |      0|    114|   165|
|24 months |EE             |PAKISTAN     |Low      |      1|     25|   165|
|24 months |EE             |PAKISTAN     |Medium   |      0|     17|   165|
|24 months |EE             |PAKISTAN     |Medium   |      1|      4|   165|
|24 months |EE             |PAKISTAN     |High     |      0|      5|   165|
|24 months |EE             |PAKISTAN     |High     |      1|      0|   165|
|24 months |GMS-Nepal      |NEPAL        |Low      |      0|    275|   487|
|24 months |GMS-Nepal      |NEPAL        |Low      |      1|     68|   487|
|24 months |GMS-Nepal      |NEPAL        |Medium   |      0|     79|   487|
|24 months |GMS-Nepal      |NEPAL        |Medium   |      1|     15|   487|
|24 months |GMS-Nepal      |NEPAL        |High     |      0|     42|   487|
|24 months |GMS-Nepal      |NEPAL        |High     |      1|      8|   487|
|24 months |JiVitA-3       |BANGLADESH   |Low      |      0|   2394|  8599|
|24 months |JiVitA-3       |BANGLADESH   |Low      |      1|    643|  8599|
|24 months |JiVitA-3       |BANGLADESH   |Medium   |      0|   2063|  8599|
|24 months |JiVitA-3       |BANGLADESH   |Medium   |      1|    575|  8599|
|24 months |JiVitA-3       |BANGLADESH   |High     |      0|   2265|  8599|
|24 months |JiVitA-3       |BANGLADESH   |High     |      1|    659|  8599|
|24 months |JiVitA-4       |BANGLADESH   |Low      |      0|   1222|  4727|
|24 months |JiVitA-4       |BANGLADESH   |Low      |      1|    305|  4727|
|24 months |JiVitA-4       |BANGLADESH   |Medium   |      0|   1192|  4727|
|24 months |JiVitA-4       |BANGLADESH   |Medium   |      1|    284|  4727|
|24 months |JiVitA-4       |BANGLADESH   |High     |      0|   1395|  4727|
|24 months |JiVitA-4       |BANGLADESH   |High     |      1|    329|  4727|
|24 months |LCNI-5         |MALAWI       |Low      |      0|    174|   555|
|24 months |LCNI-5         |MALAWI       |Low      |      1|      2|   555|
|24 months |LCNI-5         |MALAWI       |Medium   |      0|    188|   555|
|24 months |LCNI-5         |MALAWI       |Medium   |      1|      4|   555|
|24 months |LCNI-5         |MALAWI       |High     |      0|    183|   555|
|24 months |LCNI-5         |MALAWI       |High     |      1|      4|   555|
|24 months |MAL-ED         |INDIA        |Low      |      0|     71|   192|
|24 months |MAL-ED         |INDIA        |Low      |      1|      9|   192|
|24 months |MAL-ED         |INDIA        |Medium   |      0|     40|   192|
|24 months |MAL-ED         |INDIA        |Medium   |      1|      3|   192|
|24 months |MAL-ED         |INDIA        |High     |      0|     61|   192|
|24 months |MAL-ED         |INDIA        |High     |      1|      8|   192|
|24 months |MAL-ED         |BANGLADESH   |Low      |      0|     54|   204|
|24 months |MAL-ED         |BANGLADESH   |Low      |      1|      6|   204|
|24 months |MAL-ED         |BANGLADESH   |Medium   |      0|     45|   204|
|24 months |MAL-ED         |BANGLADESH   |Medium   |      1|      4|   204|
|24 months |MAL-ED         |BANGLADESH   |High     |      0|     85|   204|
|24 months |MAL-ED         |BANGLADESH   |High     |      1|     10|   204|
|24 months |MAL-ED         |PERU         |Low      |      0|     73|   200|
|24 months |MAL-ED         |PERU         |Low      |      1|      0|   200|
|24 months |MAL-ED         |PERU         |Medium   |      0|     64|   200|
|24 months |MAL-ED         |PERU         |Medium   |      1|      2|   200|
|24 months |MAL-ED         |PERU         |High     |      0|     59|   200|
|24 months |MAL-ED         |PERU         |High     |      1|      2|   200|
|24 months |MAL-ED         |NEPAL        |Low      |      0|    103|   218|
|24 months |MAL-ED         |NEPAL        |Low      |      1|      4|   218|
|24 months |MAL-ED         |NEPAL        |Medium   |      0|     53|   218|
|24 months |MAL-ED         |NEPAL        |Medium   |      1|      0|   218|
|24 months |MAL-ED         |NEPAL        |High     |      0|     57|   218|
|24 months |MAL-ED         |NEPAL        |High     |      1|      1|   218|
|24 months |MAL-ED         |BRAZIL       |Low      |      0|     72|   169|
|24 months |MAL-ED         |BRAZIL       |Low      |      1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |Medium   |      0|     68|   169|
|24 months |MAL-ED         |BRAZIL       |Medium   |      1|      2|   169|
|24 months |MAL-ED         |BRAZIL       |High     |      0|     26|   169|
|24 months |MAL-ED         |BRAZIL       |High     |      1|      1|   169|
|24 months |MAL-ED         |TANZANIA     |Low      |      0|     54|   174|
|24 months |MAL-ED         |TANZANIA     |Low      |      1|      0|   174|
|24 months |MAL-ED         |TANZANIA     |Medium   |      0|     62|   174|
|24 months |MAL-ED         |TANZANIA     |Medium   |      1|      3|   174|
|24 months |MAL-ED         |TANZANIA     |High     |      0|     54|   174|
|24 months |MAL-ED         |TANZANIA     |High     |      1|      1|   174|
|24 months |MAL-ED         |SOUTH AFRICA |Low      |      0|    131|   238|
|24 months |MAL-ED         |SOUTH AFRICA |Low      |      1|      1|   238|
|24 months |MAL-ED         |SOUTH AFRICA |Medium   |      0|     31|   238|
|24 months |MAL-ED         |SOUTH AFRICA |Medium   |      1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |High     |      0|     75|   238|
|24 months |MAL-ED         |SOUTH AFRICA |High     |      1|      0|   238|
|24 months |NIH-Birth      |BANGLADESH   |Low      |      0|    153|   428|
|24 months |NIH-Birth      |BANGLADESH   |Low      |      1|     24|   428|
|24 months |NIH-Birth      |BANGLADESH   |Medium   |      0|    125|   428|
|24 months |NIH-Birth      |BANGLADESH   |Medium   |      1|     13|   428|
|24 months |NIH-Birth      |BANGLADESH   |High     |      0|     97|   428|
|24 months |NIH-Birth      |BANGLADESH   |High     |      1|     16|   428|
|24 months |NIH-Crypto     |BANGLADESH   |Low      |      0|    141|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Low      |      1|     15|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Medium   |      0|    102|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Medium   |      1|      9|   514|
|24 months |NIH-Crypto     |BANGLADESH   |High     |      0|    226|   514|
|24 months |NIH-Crypto     |BANGLADESH   |High     |      1|     21|   514|
|24 months |PROBIT         |BELARUS      |Low      |      0|   1238|  3970|
|24 months |PROBIT         |BELARUS      |Low      |      1|     15|  3970|
|24 months |PROBIT         |BELARUS      |Medium   |      0|   2052|  3970|
|24 months |PROBIT         |BELARUS      |Medium   |      1|     13|  3970|
|24 months |PROBIT         |BELARUS      |High     |      0|    648|  3970|
|24 months |PROBIT         |BELARUS      |High     |      1|      4|  3970|
|24 months |PROVIDE        |BANGLADESH   |Low      |      0|    157|   579|
|24 months |PROVIDE        |BANGLADESH   |Low      |      1|     18|   579|
|24 months |PROVIDE        |BANGLADESH   |Medium   |      0|    195|   579|
|24 months |PROVIDE        |BANGLADESH   |Medium   |      1|     22|   579|
|24 months |PROVIDE        |BANGLADESH   |High     |      0|    165|   579|
|24 months |PROVIDE        |BANGLADESH   |High     |      1|     22|   579|
|24 months |TanzaniaChild2 |TANZANIA     |Low      |      0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Low      |      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Medium   |      0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Medium   |      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |High     |      0|      4|     6|
|24 months |TanzaniaChild2 |TANZANIA     |High     |      1|      0|     6|
|24 months |Vellore Crypto |INDIA        |Low      |      0|    137|   409|
|24 months |Vellore Crypto |INDIA        |Low      |      1|     10|   409|
|24 months |Vellore Crypto |INDIA        |Medium   |      0|    141|   409|
|24 months |Vellore Crypto |INDIA        |Medium   |      1|     10|   409|
|24 months |Vellore Crypto |INDIA        |High     |      0|    100|   409|
|24 months |Vellore Crypto |INDIA        |High     |      1|     11|   409|
|24 months |ZVITAMBO       |ZIMBABWE     |Low      |      0|     68|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |Low      |      1|     18|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |Medium   |      0|     86|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |Medium   |      1|     13|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |High     |      0|    200|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |High     |      1|     47|   432|


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
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


