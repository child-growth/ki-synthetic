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

**Intervention Variable:** birthwt

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |birthwt                    | wasted| n_cell|     n|
|:---------|:--------------|:------------|:--------------------------|------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |      0|     71|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |      1|      5|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |Low birthweight            |      0|      4|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |Low birthweight            |      1|      6|    86|
|Birth     |CMIN           |BANGLADESH   |Normal or high birthweight |      0|     12|    19|
|Birth     |CMIN           |BANGLADESH   |Normal or high birthweight |      1|      1|    19|
|Birth     |CMIN           |BANGLADESH   |Low birthweight            |      0|      3|    19|
|Birth     |CMIN           |BANGLADESH   |Low birthweight            |      1|      3|    19|
|Birth     |COHORTS        |INDIA        |Normal or high birthweight |      0|   4632|  6193|
|Birth     |COHORTS        |INDIA        |Normal or high birthweight |      1|    546|  6193|
|Birth     |COHORTS        |INDIA        |Low birthweight            |      0|    465|  6193|
|Birth     |COHORTS        |INDIA        |Low birthweight            |      1|    550|  6193|
|Birth     |COHORTS        |GUATEMALA    |Normal or high birthweight |      0|    540|   756|
|Birth     |COHORTS        |GUATEMALA    |Normal or high birthweight |      1|    162|   756|
|Birth     |COHORTS        |GUATEMALA    |Low birthweight            |      0|     24|   756|
|Birth     |COHORTS        |GUATEMALA    |Low birthweight            |      1|     30|   756|
|Birth     |COHORTS        |PHILIPPINES  |Normal or high birthweight |      0|   2371|  2899|
|Birth     |COHORTS        |PHILIPPINES  |Normal or high birthweight |      1|    317|  2899|
|Birth     |COHORTS        |PHILIPPINES  |Low birthweight            |      0|     77|  2899|
|Birth     |COHORTS        |PHILIPPINES  |Low birthweight            |      1|    134|  2899|
|Birth     |CONTENT        |PERU         |Normal or high birthweight |      0|      2|     2|
|Birth     |CONTENT        |PERU         |Normal or high birthweight |      1|      0|     2|
|Birth     |CONTENT        |PERU         |Low birthweight            |      0|      0|     2|
|Birth     |CONTENT        |PERU         |Low birthweight            |      1|      0|     2|
|Birth     |EE             |PAKISTAN     |Normal or high birthweight |      0|    127|   177|
|Birth     |EE             |PAKISTAN     |Normal or high birthweight |      1|     11|   177|
|Birth     |EE             |PAKISTAN     |Low birthweight            |      0|     28|   177|
|Birth     |EE             |PAKISTAN     |Low birthweight            |      1|     11|   177|
|Birth     |GMS-Nepal      |NEPAL        |Normal or high birthweight |      0|    415|   641|
|Birth     |GMS-Nepal      |NEPAL        |Normal or high birthweight |      1|     46|   641|
|Birth     |GMS-Nepal      |NEPAL        |Low birthweight            |      0|     94|   641|
|Birth     |GMS-Nepal      |NEPAL        |Low birthweight            |      1|     86|   641|
|Birth     |JiVitA-3       |BANGLADESH   |Normal or high birthweight |      0|  12103| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |Normal or high birthweight |      1|    453| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |Low birthweight            |      0|   3938| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |Low birthweight            |      1|   1520| 18014|
|Birth     |JiVitA-4       |BANGLADESH   |Normal or high birthweight |      0|   1691|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |Normal or high birthweight |      1|     67|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |Low birthweight            |      0|    466|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |Low birthweight            |      1|    172|  2396|
|Birth     |Keneba         |GAMBIA       |Normal or high birthweight |      0|   1015|  1465|
|Birth     |Keneba         |GAMBIA       |Normal or high birthweight |      1|    258|  1465|
|Birth     |Keneba         |GAMBIA       |Low birthweight            |      0|     87|  1465|
|Birth     |Keneba         |GAMBIA       |Low birthweight            |      1|    105|  1465|
|Birth     |MAL-ED         |INDIA        |Normal or high birthweight |      0|     36|    45|
|Birth     |MAL-ED         |INDIA        |Normal or high birthweight |      1|      2|    45|
|Birth     |MAL-ED         |INDIA        |Low birthweight            |      0|      4|    45|
|Birth     |MAL-ED         |INDIA        |Low birthweight            |      1|      3|    45|
|Birth     |MAL-ED         |BANGLADESH   |Normal or high birthweight |      0|    157|   215|
|Birth     |MAL-ED         |BANGLADESH   |Normal or high birthweight |      1|     20|   215|
|Birth     |MAL-ED         |BANGLADESH   |Low birthweight            |      0|     22|   215|
|Birth     |MAL-ED         |BANGLADESH   |Low birthweight            |      1|     16|   215|
|Birth     |MAL-ED         |PERU         |Normal or high birthweight |      0|    213|   228|
|Birth     |MAL-ED         |PERU         |Normal or high birthweight |      1|      5|   228|
|Birth     |MAL-ED         |PERU         |Low birthweight            |      0|     10|   228|
|Birth     |MAL-ED         |PERU         |Low birthweight            |      1|      0|   228|
|Birth     |MAL-ED         |NEPAL        |Normal or high birthweight |      0|     24|    26|
|Birth     |MAL-ED         |NEPAL        |Normal or high birthweight |      1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |Low birthweight            |      0|      0|    26|
|Birth     |MAL-ED         |NEPAL        |Low birthweight            |      1|      2|    26|
|Birth     |MAL-ED         |BRAZIL       |Normal or high birthweight |      0|     59|    62|
|Birth     |MAL-ED         |BRAZIL       |Normal or high birthweight |      1|      1|    62|
|Birth     |MAL-ED         |BRAZIL       |Low birthweight            |      0|      1|    62|
|Birth     |MAL-ED         |BRAZIL       |Low birthweight            |      1|      1|    62|
|Birth     |MAL-ED         |TANZANIA     |Normal or high birthweight |      0|    113|   115|
|Birth     |MAL-ED         |TANZANIA     |Normal or high birthweight |      1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |Low birthweight            |      0|      1|   115|
|Birth     |MAL-ED         |TANZANIA     |Low birthweight            |      1|      1|   115|
|Birth     |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |      0|    104|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |      1|     11|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |Low birthweight            |      0|      4|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |Low birthweight            |      1|      1|   120|
|Birth     |NIH-Birth      |BANGLADESH   |Normal or high birthweight |      0|    341|   575|
|Birth     |NIH-Birth      |BANGLADESH   |Normal or high birthweight |      1|     69|   575|
|Birth     |NIH-Birth      |BANGLADESH   |Low birthweight            |      0|     66|   575|
|Birth     |NIH-Birth      |BANGLADESH   |Low birthweight            |      1|     99|   575|
|Birth     |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |      0|    471|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |      1|     83|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |Low birthweight            |      0|     64|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |Low birthweight            |      1|     89|   707|
|Birth     |PROBIT         |BELARUS      |Normal or high birthweight |      0|  10911| 13817|
|Birth     |PROBIT         |BELARUS      |Normal or high birthweight |      1|   2906| 13817|
|Birth     |PROBIT         |BELARUS      |Low birthweight            |      0|      0| 13817|
|Birth     |PROBIT         |BELARUS      |Low birthweight            |      1|      0| 13817|
|Birth     |PROVIDE        |BANGLADESH   |Normal or high birthweight |      0|    351|   532|
|Birth     |PROVIDE        |BANGLADESH   |Normal or high birthweight |      1|     50|   532|
|Birth     |PROVIDE        |BANGLADESH   |Low birthweight            |      0|     64|   532|
|Birth     |PROVIDE        |BANGLADESH   |Low birthweight            |      1|     67|   532|
|Birth     |ResPak         |PAKISTAN     |Normal or high birthweight |      0|     31|    38|
|Birth     |ResPak         |PAKISTAN     |Normal or high birthweight |      1|      2|    38|
|Birth     |ResPak         |PAKISTAN     |Low birthweight            |      0|      3|    38|
|Birth     |ResPak         |PAKISTAN     |Low birthweight            |      1|      2|    38|
|Birth     |SAS-CompFeed   |INDIA        |Normal or high birthweight |      0|    861|  1103|
|Birth     |SAS-CompFeed   |INDIA        |Normal or high birthweight |      1|     33|  1103|
|Birth     |SAS-CompFeed   |INDIA        |Low birthweight            |      0|    124|  1103|
|Birth     |SAS-CompFeed   |INDIA        |Low birthweight            |      1|     85|  1103|
|Birth     |Vellore Crypto |INDIA        |Normal or high birthweight |      0|    234|   343|
|Birth     |Vellore Crypto |INDIA        |Normal or high birthweight |      1|     62|   343|
|Birth     |Vellore Crypto |INDIA        |Low birthweight            |      0|     17|   343|
|Birth     |Vellore Crypto |INDIA        |Low birthweight            |      1|     30|   343|
|Birth     |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |      0|  10392| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |      1|   1222| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |Low birthweight            |      0|    464| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |Low birthweight            |      1|    839| 12917|
|6 months  |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |      0|    283|   360|
|6 months  |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |      1|     34|   360|
|6 months  |CMC-V-BCS-2002 |INDIA        |Low birthweight            |      0|     33|   360|
|6 months  |CMC-V-BCS-2002 |INDIA        |Low birthweight            |      1|     10|   360|
|6 months  |CMIN           |BANGLADESH   |Normal or high birthweight |      0|      7|    12|
|6 months  |CMIN           |BANGLADESH   |Normal or high birthweight |      1|      1|    12|
|6 months  |CMIN           |BANGLADESH   |Low birthweight            |      0|      4|    12|
|6 months  |CMIN           |BANGLADESH   |Low birthweight            |      1|      0|    12|
|6 months  |COHORTS        |INDIA        |Normal or high birthweight |      0|   4503|  6252|
|6 months  |COHORTS        |INDIA        |Normal or high birthweight |      1|    497|  6252|
|6 months  |COHORTS        |INDIA        |Low birthweight            |      0|    947|  6252|
|6 months  |COHORTS        |INDIA        |Low birthweight            |      1|    305|  6252|
|6 months  |COHORTS        |GUATEMALA    |Normal or high birthweight |      0|    682|   774|
|6 months  |COHORTS        |GUATEMALA    |Normal or high birthweight |      1|     22|   774|
|6 months  |COHORTS        |GUATEMALA    |Low birthweight            |      0|     67|   774|
|6 months  |COHORTS        |GUATEMALA    |Low birthweight            |      1|      3|   774|
|6 months  |COHORTS        |PHILIPPINES  |Normal or high birthweight |      0|   2282|  2664|
|6 months  |COHORTS        |PHILIPPINES  |Normal or high birthweight |      1|    134|  2664|
|6 months  |COHORTS        |PHILIPPINES  |Low birthweight            |      0|    224|  2664|
|6 months  |COHORTS        |PHILIPPINES  |Low birthweight            |      1|     24|  2664|
|6 months  |CONTENT        |PERU         |Normal or high birthweight |      0|      2|     2|
|6 months  |CONTENT        |PERU         |Normal or high birthweight |      1|      0|     2|
|6 months  |CONTENT        |PERU         |Low birthweight            |      0|      0|     2|
|6 months  |CONTENT        |PERU         |Low birthweight            |      1|      0|     2|
|6 months  |EE             |PAKISTAN     |Normal or high birthweight |      0|    215|   374|
|6 months  |EE             |PAKISTAN     |Normal or high birthweight |      1|     28|   374|
|6 months  |EE             |PAKISTAN     |Low birthweight            |      0|    112|   374|
|6 months  |EE             |PAKISTAN     |Low birthweight            |      1|     19|   374|
|6 months  |GMS-Nepal      |NEPAL        |Normal or high birthweight |      0|    365|   563|
|6 months  |GMS-Nepal      |NEPAL        |Normal or high birthweight |      1|     21|   563|
|6 months  |GMS-Nepal      |NEPAL        |Low birthweight            |      0|    147|   563|
|6 months  |GMS-Nepal      |NEPAL        |Low birthweight            |      1|     30|   563|
|6 months  |JiVitA-3       |BANGLADESH   |Normal or high birthweight |      0|   7806| 14105|
|6 months  |JiVitA-3       |BANGLADESH   |Normal or high birthweight |      1|    509| 14105|
|6 months  |JiVitA-3       |BANGLADESH   |Low birthweight            |      0|   5086| 14105|
|6 months  |JiVitA-3       |BANGLADESH   |Low birthweight            |      1|    704| 14105|
|6 months  |JiVitA-4       |BANGLADESH   |Normal or high birthweight |      0|   2869|  4045|
|6 months  |JiVitA-4       |BANGLADESH   |Normal or high birthweight |      1|    136|  4045|
|6 months  |JiVitA-4       |BANGLADESH   |Low birthweight            |      0|    959|  4045|
|6 months  |JiVitA-4       |BANGLADESH   |Low birthweight            |      1|     81|  4045|
|6 months  |Keneba         |GAMBIA       |Normal or high birthweight |      0|   1084|  1334|
|6 months  |Keneba         |GAMBIA       |Normal or high birthweight |      1|     62|  1334|
|6 months  |Keneba         |GAMBIA       |Low birthweight            |      0|    176|  1334|
|6 months  |Keneba         |GAMBIA       |Low birthweight            |      1|     12|  1334|
|6 months  |MAL-ED         |INDIA        |Normal or high birthweight |      0|    177|   227|
|6 months  |MAL-ED         |INDIA        |Normal or high birthweight |      1|     16|   227|
|6 months  |MAL-ED         |INDIA        |Low birthweight            |      0|     31|   227|
|6 months  |MAL-ED         |INDIA        |Low birthweight            |      1|      3|   227|
|6 months  |MAL-ED         |BANGLADESH   |Normal or high birthweight |      0|    182|   238|
|6 months  |MAL-ED         |BANGLADESH   |Normal or high birthweight |      1|      6|   238|
|6 months  |MAL-ED         |BANGLADESH   |Low birthweight            |      0|     48|   238|
|6 months  |MAL-ED         |BANGLADESH   |Low birthweight            |      1|      2|   238|
|6 months  |MAL-ED         |PERU         |Normal or high birthweight |      0|    254|   270|
|6 months  |MAL-ED         |PERU         |Normal or high birthweight |      1|      0|   270|
|6 months  |MAL-ED         |PERU         |Low birthweight            |      0|     16|   270|
|6 months  |MAL-ED         |PERU         |Low birthweight            |      1|      0|   270|
|6 months  |MAL-ED         |NEPAL        |Normal or high birthweight |      0|    207|   229|
|6 months  |MAL-ED         |NEPAL        |Normal or high birthweight |      1|      3|   229|
|6 months  |MAL-ED         |NEPAL        |Low birthweight            |      0|     19|   229|
|6 months  |MAL-ED         |NEPAL        |Low birthweight            |      1|      0|   229|
|6 months  |MAL-ED         |BRAZIL       |Normal or high birthweight |      0|    198|   209|
|6 months  |MAL-ED         |BRAZIL       |Normal or high birthweight |      1|      1|   209|
|6 months  |MAL-ED         |BRAZIL       |Low birthweight            |      0|     10|   209|
|6 months  |MAL-ED         |BRAZIL       |Low birthweight            |      1|      0|   209|
|6 months  |MAL-ED         |TANZANIA     |Normal or high birthweight |      0|    177|   186|
|6 months  |MAL-ED         |TANZANIA     |Normal or high birthweight |      1|      0|   186|
|6 months  |MAL-ED         |TANZANIA     |Low birthweight            |      0|      9|   186|
|6 months  |MAL-ED         |TANZANIA     |Low birthweight            |      1|      0|   186|
|6 months  |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |      0|    232|   253|
|6 months  |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |      1|      6|   253|
|6 months  |MAL-ED         |SOUTH AFRICA |Low birthweight            |      0|     14|   253|
|6 months  |MAL-ED         |SOUTH AFRICA |Low birthweight            |      1|      1|   253|
|6 months  |NIH-Birth      |BANGLADESH   |Normal or high birthweight |      0|    338|   518|
|6 months  |NIH-Birth      |BANGLADESH   |Normal or high birthweight |      1|     18|   518|
|6 months  |NIH-Birth      |BANGLADESH   |Low birthweight            |      0|    145|   518|
|6 months  |NIH-Birth      |BANGLADESH   |Low birthweight            |      1|     17|   518|
|6 months  |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |      0|    534|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |      1|     11|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Low birthweight            |      0|    160|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Low birthweight            |      1|     10|   715|
|6 months  |PROBIT         |BELARUS      |Normal or high birthweight |      0|  15649| 15757|
|6 months  |PROBIT         |BELARUS      |Normal or high birthweight |      1|    108| 15757|
|6 months  |PROBIT         |BELARUS      |Low birthweight            |      0|      0| 15757|
|6 months  |PROBIT         |BELARUS      |Low birthweight            |      1|      0| 15757|
|6 months  |PROVIDE        |BANGLADESH   |Normal or high birthweight |      0|    450|   603|
|6 months  |PROVIDE        |BANGLADESH   |Normal or high birthweight |      1|     10|   603|
|6 months  |PROVIDE        |BANGLADESH   |Low birthweight            |      0|    128|   603|
|6 months  |PROVIDE        |BANGLADESH   |Low birthweight            |      1|     15|   603|
|6 months  |ResPak         |PAKISTAN     |Normal or high birthweight |      0|     27|    34|
|6 months  |ResPak         |PAKISTAN     |Normal or high birthweight |      1|      2|    34|
|6 months  |ResPak         |PAKISTAN     |Low birthweight            |      0|      5|    34|
|6 months  |ResPak         |PAKISTAN     |Low birthweight            |      1|      0|    34|
|6 months  |SAS-CompFeed   |INDIA        |Normal or high birthweight |      0|    893|  1324|
|6 months  |SAS-CompFeed   |INDIA        |Normal or high birthweight |      1|    108|  1324|
|6 months  |SAS-CompFeed   |INDIA        |Low birthweight            |      0|    267|  1324|
|6 months  |SAS-CompFeed   |INDIA        |Low birthweight            |      1|     56|  1324|
|6 months  |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |      0|   1861|  2010|
|6 months  |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |      1|     82|  2010|
|6 months  |TanzaniaChild2 |TANZANIA     |Low birthweight            |      0|     63|  2010|
|6 months  |TanzaniaChild2 |TANZANIA     |Low birthweight            |      1|      4|  2010|
|6 months  |Vellore Crypto |INDIA        |Normal or high birthweight |      0|    294|   402|
|6 months  |Vellore Crypto |INDIA        |Normal or high birthweight |      1|     40|   402|
|6 months  |Vellore Crypto |INDIA        |Low birthweight            |      0|     55|   402|
|6 months  |Vellore Crypto |INDIA        |Low birthweight            |      1|     13|   402|
|6 months  |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |      0|   7188|  8473|
|6 months  |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |      1|    217|  8473|
|6 months  |ZVITAMBO       |ZIMBABWE     |Low birthweight            |      0|   1021|  8473|
|6 months  |ZVITAMBO       |ZIMBABWE     |Low birthweight            |      1|     47|  8473|
|24 months |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |      0|    306|   364|
|24 months |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |      1|     15|   364|
|24 months |CMC-V-BCS-2002 |INDIA        |Low birthweight            |      0|     36|   364|
|24 months |CMC-V-BCS-2002 |INDIA        |Low birthweight            |      1|      7|   364|
|24 months |CMIN           |BANGLADESH   |Normal or high birthweight |      0|      7|    11|
|24 months |CMIN           |BANGLADESH   |Normal or high birthweight |      1|      0|    11|
|24 months |CMIN           |BANGLADESH   |Low birthweight            |      0|      4|    11|
|24 months |CMIN           |BANGLADESH   |Low birthweight            |      1|      0|    11|
|24 months |COHORTS        |INDIA        |Normal or high birthweight |      0|   3617|  4821|
|24 months |COHORTS        |INDIA        |Normal or high birthweight |      1|    294|  4821|
|24 months |COHORTS        |INDIA        |Low birthweight            |      0|    766|  4821|
|24 months |COHORTS        |INDIA        |Low birthweight            |      1|    144|  4821|
|24 months |COHORTS        |GUATEMALA    |Normal or high birthweight |      0|    578|   657|
|24 months |COHORTS        |GUATEMALA    |Normal or high birthweight |      1|     17|   657|
|24 months |COHORTS        |GUATEMALA    |Low birthweight            |      0|     53|   657|
|24 months |COHORTS        |GUATEMALA    |Low birthweight            |      1|      9|   657|
|24 months |COHORTS        |PHILIPPINES  |Normal or high birthweight |      0|   2063|  2410|
|24 months |COHORTS        |PHILIPPINES  |Normal or high birthweight |      1|    132|  2410|
|24 months |COHORTS        |PHILIPPINES  |Low birthweight            |      0|    183|  2410|
|24 months |COHORTS        |PHILIPPINES  |Low birthweight            |      1|     32|  2410|
|24 months |CONTENT        |PERU         |Normal or high birthweight |      0|      2|     2|
|24 months |CONTENT        |PERU         |Normal or high birthweight |      1|      0|     2|
|24 months |CONTENT        |PERU         |Low birthweight            |      0|      0|     2|
|24 months |CONTENT        |PERU         |Low birthweight            |      1|      0|     2|
|24 months |EE             |PAKISTAN     |Normal or high birthweight |      0|     86|   168|
|24 months |EE             |PAKISTAN     |Normal or high birthweight |      1|     15|   168|
|24 months |EE             |PAKISTAN     |Low birthweight            |      0|     52|   168|
|24 months |EE             |PAKISTAN     |Low birthweight            |      1|     15|   168|
|24 months |GMS-Nepal      |NEPAL        |Normal or high birthweight |      0|    294|   486|
|24 months |GMS-Nepal      |NEPAL        |Normal or high birthweight |      1|     51|   486|
|24 months |GMS-Nepal      |NEPAL        |Low birthweight            |      0|    102|   486|
|24 months |GMS-Nepal      |NEPAL        |Low birthweight            |      1|     39|   486|
|24 months |JiVitA-3       |BANGLADESH   |Normal or high birthweight |      0|   3542|  7282|
|24 months |JiVitA-3       |BANGLADESH   |Normal or high birthweight |      1|    674|  7282|
|24 months |JiVitA-3       |BANGLADESH   |Low birthweight            |      0|   2151|  7282|
|24 months |JiVitA-3       |BANGLADESH   |Low birthweight            |      1|    915|  7282|
|24 months |JiVitA-4       |BANGLADESH   |Normal or high birthweight |      0|   2444|  3997|
|24 months |JiVitA-4       |BANGLADESH   |Normal or high birthweight |      1|    500|  3997|
|24 months |JiVitA-4       |BANGLADESH   |Low birthweight            |      0|    744|  3997|
|24 months |JiVitA-4       |BANGLADESH   |Low birthweight            |      1|    309|  3997|
|24 months |Keneba         |GAMBIA       |Normal or high birthweight |      0|    819|  1057|
|24 months |Keneba         |GAMBIA       |Normal or high birthweight |      1|     86|  1057|
|24 months |Keneba         |GAMBIA       |Low birthweight            |      0|    126|  1057|
|24 months |Keneba         |GAMBIA       |Low birthweight            |      1|     26|  1057|
|24 months |MAL-ED         |INDIA        |Normal or high birthweight |      0|    169|   218|
|24 months |MAL-ED         |INDIA        |Normal or high birthweight |      1|     16|   218|
|24 months |MAL-ED         |INDIA        |Low birthweight            |      0|     24|   218|
|24 months |MAL-ED         |INDIA        |Low birthweight            |      1|      9|   218|
|24 months |MAL-ED         |BANGLADESH   |Normal or high birthweight |      0|    149|   210|
|24 months |MAL-ED         |BANGLADESH   |Normal or high birthweight |      1|     16|   210|
|24 months |MAL-ED         |BANGLADESH   |Low birthweight            |      0|     41|   210|
|24 months |MAL-ED         |BANGLADESH   |Low birthweight            |      1|      4|   210|
|24 months |MAL-ED         |PERU         |Normal or high birthweight |      0|    185|   199|
|24 months |MAL-ED         |PERU         |Normal or high birthweight |      1|      2|   199|
|24 months |MAL-ED         |PERU         |Low birthweight            |      0|     10|   199|
|24 months |MAL-ED         |PERU         |Low birthweight            |      1|      2|   199|
|24 months |MAL-ED         |NEPAL        |Normal or high birthweight |      0|    200|   221|
|24 months |MAL-ED         |NEPAL        |Normal or high birthweight |      1|      3|   221|
|24 months |MAL-ED         |NEPAL        |Low birthweight            |      0|     18|   221|
|24 months |MAL-ED         |NEPAL        |Low birthweight            |      1|      0|   221|
|24 months |MAL-ED         |BRAZIL       |Normal or high birthweight |      0|    158|   169|
|24 months |MAL-ED         |BRAZIL       |Normal or high birthweight |      1|      3|   169|
|24 months |MAL-ED         |BRAZIL       |Low birthweight            |      0|      8|   169|
|24 months |MAL-ED         |BRAZIL       |Low birthweight            |      1|      0|   169|
|24 months |MAL-ED         |TANZANIA     |Normal or high birthweight |      0|    150|   162|
|24 months |MAL-ED         |TANZANIA     |Normal or high birthweight |      1|      4|   162|
|24 months |MAL-ED         |TANZANIA     |Low birthweight            |      0|      8|   162|
|24 months |MAL-ED         |TANZANIA     |Low birthweight            |      1|      0|   162|
|24 months |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |      0|    223|   237|
|24 months |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |      1|      1|   237|
|24 months |MAL-ED         |SOUTH AFRICA |Low birthweight            |      0|     13|   237|
|24 months |MAL-ED         |SOUTH AFRICA |Low birthweight            |      1|      0|   237|
|24 months |NIH-Birth      |BANGLADESH   |Normal or high birthweight |      0|    254|   413|
|24 months |NIH-Birth      |BANGLADESH   |Normal or high birthweight |      1|     24|   413|
|24 months |NIH-Birth      |BANGLADESH   |Low birthweight            |      0|    106|   413|
|24 months |NIH-Birth      |BANGLADESH   |Low birthweight            |      1|     29|   413|
|24 months |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |      0|    361|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |      1|     27|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Low birthweight            |      0|    108|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Low birthweight            |      1|     18|   514|
|24 months |PROBIT         |BELARUS      |Normal or high birthweight |      0|   3938|  3970|
|24 months |PROBIT         |BELARUS      |Normal or high birthweight |      1|     32|  3970|
|24 months |PROBIT         |BELARUS      |Low birthweight            |      0|      0|  3970|
|24 months |PROBIT         |BELARUS      |Low birthweight            |      1|      0|  3970|
|24 months |PROVIDE        |BANGLADESH   |Normal or high birthweight |      0|    407|   579|
|24 months |PROVIDE        |BANGLADESH   |Normal or high birthweight |      1|     33|   579|
|24 months |PROVIDE        |BANGLADESH   |Low birthweight            |      0|    110|   579|
|24 months |PROVIDE        |BANGLADESH   |Low birthweight            |      1|     29|   579|
|24 months |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |      0|      6|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Low birthweight            |      0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Low birthweight            |      1|      0|     6|
|24 months |Vellore Crypto |INDIA        |Normal or high birthweight |      0|    315|   403|
|24 months |Vellore Crypto |INDIA        |Normal or high birthweight |      1|     20|   403|
|24 months |Vellore Crypto |INDIA        |Low birthweight            |      0|     57|   403|
|24 months |Vellore Crypto |INDIA        |Low birthweight            |      1|     11|   403|
|24 months |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |      0|    278|   431|
|24 months |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |      1|     59|   431|
|24 months |ZVITAMBO       |ZIMBABWE     |Low birthweight            |      0|     74|   431|
|24 months |ZVITAMBO       |ZIMBABWE     |Low birthweight            |      1|     20|   431|


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
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


