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

**Intervention Variable:** birthwt

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |birthwt                    | stunted| n_cell|     n|
|:---------|:--------------|:------------|:--------------------------|-------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |       0|     71|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |       1|     10|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |Low birthweight            |       0|      4|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |Low birthweight            |       1|      7|    92|
|Birth     |CMIN           |BANGLADESH   |Normal or high birthweight |       0|     13|    26|
|Birth     |CMIN           |BANGLADESH   |Normal or high birthweight |       1|      0|    26|
|Birth     |CMIN           |BANGLADESH   |Low birthweight            |       0|      4|    26|
|Birth     |CMIN           |BANGLADESH   |Low birthweight            |       1|      9|    26|
|Birth     |COHORTS        |INDIA        |Normal or high birthweight |       0|   5059|  6638|
|Birth     |COHORTS        |INDIA        |Normal or high birthweight |       1|    209|  6638|
|Birth     |COHORTS        |INDIA        |Low birthweight            |       0|    787|  6638|
|Birth     |COHORTS        |INDIA        |Low birthweight            |       1|    583|  6638|
|Birth     |COHORTS        |GUATEMALA    |Normal or high birthweight |       0|    695|   784|
|Birth     |COHORTS        |GUATEMALA    |Normal or high birthweight |       1|     22|   784|
|Birth     |COHORTS        |GUATEMALA    |Low birthweight            |       0|     43|   784|
|Birth     |COHORTS        |GUATEMALA    |Low birthweight            |       1|     24|   784|
|Birth     |COHORTS        |PHILIPPINES  |Normal or high birthweight |       0|   2643|  3004|
|Birth     |COHORTS        |PHILIPPINES  |Normal or high birthweight |       1|     66|  3004|
|Birth     |COHORTS        |PHILIPPINES  |Low birthweight            |       0|    181|  3004|
|Birth     |COHORTS        |PHILIPPINES  |Low birthweight            |       1|    114|  3004|
|Birth     |CONTENT        |PERU         |Normal or high birthweight |       0|      2|     2|
|Birth     |CONTENT        |PERU         |Normal or high birthweight |       1|      0|     2|
|Birth     |CONTENT        |PERU         |Low birthweight            |       0|      0|     2|
|Birth     |CONTENT        |PERU         |Low birthweight            |       1|      0|     2|
|Birth     |EE             |PAKISTAN     |Normal or high birthweight |       0|    112|   240|
|Birth     |EE             |PAKISTAN     |Normal or high birthweight |       1|     48|   240|
|Birth     |EE             |PAKISTAN     |Low birthweight            |       0|     28|   240|
|Birth     |EE             |PAKISTAN     |Low birthweight            |       1|     52|   240|
|Birth     |GMS-Nepal      |NEPAL        |Normal or high birthweight |       0|    442|   696|
|Birth     |GMS-Nepal      |NEPAL        |Normal or high birthweight |       1|     23|   696|
|Birth     |GMS-Nepal      |NEPAL        |Low birthweight            |       0|    132|   696|
|Birth     |GMS-Nepal      |NEPAL        |Low birthweight            |       1|     99|   696|
|Birth     |JiVitA-3       |BANGLADESH   |Normal or high birthweight |       0|  11688| 22454|
|Birth     |JiVitA-3       |BANGLADESH   |Normal or high birthweight |       1|   1138| 22454|
|Birth     |JiVitA-3       |BANGLADESH   |Low birthweight            |       0|   3380| 22454|
|Birth     |JiVitA-3       |BANGLADESH   |Low birthweight            |       1|   6248| 22454|
|Birth     |JiVitA-4       |BANGLADESH   |Normal or high birthweight |       0|   1617|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |Normal or high birthweight |       1|    182|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |Low birthweight            |       0|    349|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |Low birthweight            |       1|    675|  2823|
|Birth     |Keneba         |GAMBIA       |Normal or high birthweight |       0|   1269|  1529|
|Birth     |Keneba         |GAMBIA       |Normal or high birthweight |       1|     39|  1529|
|Birth     |Keneba         |GAMBIA       |Low birthweight            |       0|    177|  1529|
|Birth     |Keneba         |GAMBIA       |Low birthweight            |       1|     44|  1529|
|Birth     |MAL-ED         |INDIA        |Normal or high birthweight |       0|     34|    47|
|Birth     |MAL-ED         |INDIA        |Normal or high birthweight |       1|      5|    47|
|Birth     |MAL-ED         |INDIA        |Low birthweight            |       0|      3|    47|
|Birth     |MAL-ED         |INDIA        |Low birthweight            |       1|      5|    47|
|Birth     |MAL-ED         |BANGLADESH   |Normal or high birthweight |       0|    163|   231|
|Birth     |MAL-ED         |BANGLADESH   |Normal or high birthweight |       1|     14|   231|
|Birth     |MAL-ED         |BANGLADESH   |Low birthweight            |       0|     24|   231|
|Birth     |MAL-ED         |BANGLADESH   |Low birthweight            |       1|     30|   231|
|Birth     |MAL-ED         |PERU         |Normal or high birthweight |       0|    205|   233|
|Birth     |MAL-ED         |PERU         |Normal or high birthweight |       1|     16|   233|
|Birth     |MAL-ED         |PERU         |Low birthweight            |       0|      2|   233|
|Birth     |MAL-ED         |PERU         |Low birthweight            |       1|     10|   233|
|Birth     |MAL-ED         |NEPAL        |Normal or high birthweight |       0|     24|    27|
|Birth     |MAL-ED         |NEPAL        |Normal or high birthweight |       1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |Low birthweight            |       0|      1|    27|
|Birth     |MAL-ED         |NEPAL        |Low birthweight            |       1|      2|    27|
|Birth     |MAL-ED         |BRAZIL       |Normal or high birthweight |       0|     55|    65|
|Birth     |MAL-ED         |BRAZIL       |Normal or high birthweight |       1|      6|    65|
|Birth     |MAL-ED         |BRAZIL       |Low birthweight            |       0|      1|    65|
|Birth     |MAL-ED         |BRAZIL       |Low birthweight            |       1|      3|    65|
|Birth     |MAL-ED         |TANZANIA     |Normal or high birthweight |       0|    102|   125|
|Birth     |MAL-ED         |TANZANIA     |Normal or high birthweight |       1|     16|   125|
|Birth     |MAL-ED         |TANZANIA     |Low birthweight            |       0|      0|   125|
|Birth     |MAL-ED         |TANZANIA     |Low birthweight            |       1|      7|   125|
|Birth     |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |       0|    109|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |       1|      6|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |Low birthweight            |       0|      4|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |Low birthweight            |       1|      4|   123|
|Birth     |NIH-Birth      |BANGLADESH   |Normal or high birthweight |       0|    398|   608|
|Birth     |NIH-Birth      |BANGLADESH   |Normal or high birthweight |       1|     14|   608|
|Birth     |NIH-Birth      |BANGLADESH   |Low birthweight            |       0|    113|   608|
|Birth     |NIH-Birth      |BANGLADESH   |Low birthweight            |       1|     83|   608|
|Birth     |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |       0|    519|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |       1|     41|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |Low birthweight            |       0|    112|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |Low birthweight            |       1|     60|   732|
|Birth     |PROBIT         |BELARUS      |Normal or high birthweight |       0|  13859| 13893|
|Birth     |PROBIT         |BELARUS      |Normal or high birthweight |       1|     34| 13893|
|Birth     |PROBIT         |BELARUS      |Low birthweight            |       0|      0| 13893|
|Birth     |PROBIT         |BELARUS      |Low birthweight            |       1|      0| 13893|
|Birth     |PROVIDE        |BANGLADESH   |Normal or high birthweight |       0|    397|   539|
|Birth     |PROVIDE        |BANGLADESH   |Normal or high birthweight |       1|      5|   539|
|Birth     |PROVIDE        |BANGLADESH   |Low birthweight            |       0|     94|   539|
|Birth     |PROVIDE        |BANGLADESH   |Low birthweight            |       1|     43|   539|
|Birth     |ResPak         |PAKISTAN     |Normal or high birthweight |       0|     28|    42|
|Birth     |ResPak         |PAKISTAN     |Normal or high birthweight |       1|      6|    42|
|Birth     |ResPak         |PAKISTAN     |Low birthweight            |       0|      0|    42|
|Birth     |ResPak         |PAKISTAN     |Low birthweight            |       1|      8|    42|
|Birth     |SAS-CompFeed   |INDIA        |Normal or high birthweight |       0|    793|  1252|
|Birth     |SAS-CompFeed   |INDIA        |Normal or high birthweight |       1|    121|  1252|
|Birth     |SAS-CompFeed   |INDIA        |Low birthweight            |       0|    110|  1252|
|Birth     |SAS-CompFeed   |INDIA        |Low birthweight            |       1|    228|  1252|
|Birth     |Vellore Crypto |INDIA        |Normal or high birthweight |       0|    292|   383|
|Birth     |Vellore Crypto |INDIA        |Normal or high birthweight |       1|     25|   383|
|Birth     |Vellore Crypto |INDIA        |Low birthweight            |       0|     47|   383|
|Birth     |Vellore Crypto |INDIA        |Low birthweight            |       1|     19|   383|
|Birth     |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |       0|  11231| 13830|
|Birth     |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |       1|    698| 13830|
|Birth     |ZVITAMBO       |ZIMBABWE     |Low birthweight            |       0|   1167| 13830|
|Birth     |ZVITAMBO       |ZIMBABWE     |Low birthweight            |       1|    734| 13830|
|6 months  |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |       0|    237|   361|
|6 months  |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |       1|     82|   361|
|6 months  |CMC-V-BCS-2002 |INDIA        |Low birthweight            |       0|     15|   361|
|6 months  |CMC-V-BCS-2002 |INDIA        |Low birthweight            |       1|     27|   361|
|6 months  |CMIN           |BANGLADESH   |Normal or high birthweight |       0|      6|    12|
|6 months  |CMIN           |BANGLADESH   |Normal or high birthweight |       1|      2|    12|
|6 months  |CMIN           |BANGLADESH   |Low birthweight            |       0|      2|    12|
|6 months  |CMIN           |BANGLADESH   |Low birthweight            |       1|      2|    12|
|6 months  |COHORTS        |INDIA        |Normal or high birthweight |       0|   4360|  6261|
|6 months  |COHORTS        |INDIA        |Normal or high birthweight |       1|    645|  6261|
|6 months  |COHORTS        |INDIA        |Low birthweight            |       0|    741|  6261|
|6 months  |COHORTS        |INDIA        |Low birthweight            |       1|    515|  6261|
|6 months  |COHORTS        |GUATEMALA    |Normal or high birthweight |       0|    446|   771|
|6 months  |COHORTS        |GUATEMALA    |Normal or high birthweight |       1|    257|   771|
|6 months  |COHORTS        |GUATEMALA    |Low birthweight            |       0|     16|   771|
|6 months  |COHORTS        |GUATEMALA    |Low birthweight            |       1|     52|   771|
|6 months  |COHORTS        |PHILIPPINES  |Normal or high birthweight |       0|   1979|  2666|
|6 months  |COHORTS        |PHILIPPINES  |Normal or high birthweight |       1|    439|  2666|
|6 months  |COHORTS        |PHILIPPINES  |Low birthweight            |       0|    125|  2666|
|6 months  |COHORTS        |PHILIPPINES  |Low birthweight            |       1|    123|  2666|
|6 months  |CONTENT        |PERU         |Normal or high birthweight |       0|      2|     2|
|6 months  |CONTENT        |PERU         |Normal or high birthweight |       1|      0|     2|
|6 months  |CONTENT        |PERU         |Low birthweight            |       0|      0|     2|
|6 months  |CONTENT        |PERU         |Low birthweight            |       1|      0|     2|
|6 months  |EE             |PAKISTAN     |Normal or high birthweight |       0|    155|   372|
|6 months  |EE             |PAKISTAN     |Normal or high birthweight |       1|     87|   372|
|6 months  |EE             |PAKISTAN     |Low birthweight            |       0|     35|   372|
|6 months  |EE             |PAKISTAN     |Low birthweight            |       1|     95|   372|
|6 months  |GMS-Nepal      |NEPAL        |Normal or high birthweight |       0|    334|   563|
|6 months  |GMS-Nepal      |NEPAL        |Normal or high birthweight |       1|     52|   563|
|6 months  |GMS-Nepal      |NEPAL        |Low birthweight            |       0|    107|   563|
|6 months  |GMS-Nepal      |NEPAL        |Low birthweight            |       1|     70|   563|
|6 months  |JiVitA-3       |BANGLADESH   |Normal or high birthweight |       0|   7270| 14130|
|6 months  |JiVitA-3       |BANGLADESH   |Normal or high birthweight |       1|   1066| 14130|
|6 months  |JiVitA-3       |BANGLADESH   |Low birthweight            |       0|   3239| 14130|
|6 months  |JiVitA-3       |BANGLADESH   |Low birthweight            |       1|   2555| 14130|
|6 months  |JiVitA-4       |BANGLADESH   |Normal or high birthweight |       0|   2493|  4041|
|6 months  |JiVitA-4       |BANGLADESH   |Normal or high birthweight |       1|    511|  4041|
|6 months  |JiVitA-4       |BANGLADESH   |Low birthweight            |       0|    539|  4041|
|6 months  |JiVitA-4       |BANGLADESH   |Low birthweight            |       1|    498|  4041|
|6 months  |Keneba         |GAMBIA       |Normal or high birthweight |       0|   1029|  1334|
|6 months  |Keneba         |GAMBIA       |Normal or high birthweight |       1|    117|  1334|
|6 months  |Keneba         |GAMBIA       |Low birthweight            |       0|    127|  1334|
|6 months  |Keneba         |GAMBIA       |Low birthweight            |       1|     61|  1334|
|6 months  |MAL-ED         |INDIA        |Normal or high birthweight |       0|    162|   227|
|6 months  |MAL-ED         |INDIA        |Normal or high birthweight |       1|     31|   227|
|6 months  |MAL-ED         |INDIA        |Low birthweight            |       0|     26|   227|
|6 months  |MAL-ED         |INDIA        |Low birthweight            |       1|      8|   227|
|6 months  |MAL-ED         |BANGLADESH   |Normal or high birthweight |       0|    165|   238|
|6 months  |MAL-ED         |BANGLADESH   |Normal or high birthweight |       1|     23|   238|
|6 months  |MAL-ED         |BANGLADESH   |Low birthweight            |       0|     29|   238|
|6 months  |MAL-ED         |BANGLADESH   |Low birthweight            |       1|     21|   238|
|6 months  |MAL-ED         |PERU         |Normal or high birthweight |       0|    208|   270|
|6 months  |MAL-ED         |PERU         |Normal or high birthweight |       1|     46|   270|
|6 months  |MAL-ED         |PERU         |Low birthweight            |       0|      5|   270|
|6 months  |MAL-ED         |PERU         |Low birthweight            |       1|     11|   270|
|6 months  |MAL-ED         |NEPAL        |Normal or high birthweight |       0|    204|   229|
|6 months  |MAL-ED         |NEPAL        |Normal or high birthweight |       1|      6|   229|
|6 months  |MAL-ED         |NEPAL        |Low birthweight            |       0|     15|   229|
|6 months  |MAL-ED         |NEPAL        |Low birthweight            |       1|      4|   229|
|6 months  |MAL-ED         |BRAZIL       |Normal or high birthweight |       0|    194|   209|
|6 months  |MAL-ED         |BRAZIL       |Normal or high birthweight |       1|      5|   209|
|6 months  |MAL-ED         |BRAZIL       |Low birthweight            |       0|      9|   209|
|6 months  |MAL-ED         |BRAZIL       |Low birthweight            |       1|      1|   209|
|6 months  |MAL-ED         |TANZANIA     |Normal or high birthweight |       0|    143|   186|
|6 months  |MAL-ED         |TANZANIA     |Normal or high birthweight |       1|     34|   186|
|6 months  |MAL-ED         |TANZANIA     |Low birthweight            |       0|      2|   186|
|6 months  |MAL-ED         |TANZANIA     |Low birthweight            |       1|      7|   186|
|6 months  |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |       0|    193|   253|
|6 months  |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |       1|     45|   253|
|6 months  |MAL-ED         |SOUTH AFRICA |Low birthweight            |       0|     10|   253|
|6 months  |MAL-ED         |SOUTH AFRICA |Low birthweight            |       1|      5|   253|
|6 months  |NIH-Birth      |BANGLADESH   |Normal or high birthweight |       0|    299|   518|
|6 months  |NIH-Birth      |BANGLADESH   |Normal or high birthweight |       1|     57|   518|
|6 months  |NIH-Birth      |BANGLADESH   |Low birthweight            |       0|     79|   518|
|6 months  |NIH-Birth      |BANGLADESH   |Low birthweight            |       1|     83|   518|
|6 months  |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |       0|    467|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |       1|     78|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Low birthweight            |       0|     98|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Low birthweight            |       1|     72|   715|
|6 months  |PROBIT         |BELARUS      |Normal or high birthweight |       0|  15140| 15760|
|6 months  |PROBIT         |BELARUS      |Normal or high birthweight |       1|    620| 15760|
|6 months  |PROBIT         |BELARUS      |Low birthweight            |       0|      0| 15760|
|6 months  |PROBIT         |BELARUS      |Low birthweight            |       1|      0| 15760|
|6 months  |PROVIDE        |BANGLADESH   |Normal or high birthweight |       0|    417|   604|
|6 months  |PROVIDE        |BANGLADESH   |Normal or high birthweight |       1|     44|   604|
|6 months  |PROVIDE        |BANGLADESH   |Low birthweight            |       0|     91|   604|
|6 months  |PROVIDE        |BANGLADESH   |Low birthweight            |       1|     52|   604|
|6 months  |ResPak         |PAKISTAN     |Normal or high birthweight |       0|     18|    34|
|6 months  |ResPak         |PAKISTAN     |Normal or high birthweight |       1|     11|    34|
|6 months  |ResPak         |PAKISTAN     |Low birthweight            |       0|      1|    34|
|6 months  |ResPak         |PAKISTAN     |Low birthweight            |       1|      4|    34|
|6 months  |SAS-CompFeed   |INDIA        |Normal or high birthweight |       0|    803|  1326|
|6 months  |SAS-CompFeed   |INDIA        |Normal or high birthweight |       1|    200|  1326|
|6 months  |SAS-CompFeed   |INDIA        |Low birthweight            |       0|    146|  1326|
|6 months  |SAS-CompFeed   |INDIA        |Low birthweight            |       1|    177|  1326|
|6 months  |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |       0|   1770|  2011|
|6 months  |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |       1|    174|  2011|
|6 months  |TanzaniaChild2 |TANZANIA     |Low birthweight            |       0|     47|  2011|
|6 months  |TanzaniaChild2 |TANZANIA     |Low birthweight            |       1|     20|  2011|
|6 months  |Vellore Crypto |INDIA        |Normal or high birthweight |       0|    268|   401|
|6 months  |Vellore Crypto |INDIA        |Normal or high birthweight |       1|     67|   401|
|6 months  |Vellore Crypto |INDIA        |Low birthweight            |       0|     38|   401|
|6 months  |Vellore Crypto |INDIA        |Low birthweight            |       1|     28|   401|
|6 months  |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |       0|   6601|  8636|
|6 months  |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |       1|    965|  8636|
|6 months  |ZVITAMBO       |ZIMBABWE     |Low birthweight            |       0|    630|  8636|
|6 months  |ZVITAMBO       |ZIMBABWE     |Low birthweight            |       1|    440|  8636|
|24 months |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |       0|     98|   363|
|24 months |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |       1|    222|   363|
|24 months |CMC-V-BCS-2002 |INDIA        |Low birthweight            |       0|      6|   363|
|24 months |CMC-V-BCS-2002 |INDIA        |Low birthweight            |       1|     37|   363|
|24 months |CMIN           |BANGLADESH   |Normal or high birthweight |       0|      3|    11|
|24 months |CMIN           |BANGLADESH   |Normal or high birthweight |       1|      4|    11|
|24 months |CMIN           |BANGLADESH   |Low birthweight            |       0|      1|    11|
|24 months |CMIN           |BANGLADESH   |Low birthweight            |       1|      3|    11|
|24 months |COHORTS        |INDIA        |Normal or high birthweight |       0|   2020|  4858|
|24 months |COHORTS        |INDIA        |Normal or high birthweight |       1|   1929|  4858|
|24 months |COHORTS        |INDIA        |Low birthweight            |       0|    244|  4858|
|24 months |COHORTS        |INDIA        |Low birthweight            |       1|    665|  4858|
|24 months |COHORTS        |GUATEMALA    |Normal or high birthweight |       0|    119|   650|
|24 months |COHORTS        |GUATEMALA    |Normal or high birthweight |       1|    470|   650|
|24 months |COHORTS        |GUATEMALA    |Low birthweight            |       0|      2|   650|
|24 months |COHORTS        |GUATEMALA    |Low birthweight            |       1|     59|   650|
|24 months |COHORTS        |PHILIPPINES  |Normal or high birthweight |       0|    875|  2406|
|24 months |COHORTS        |PHILIPPINES  |Normal or high birthweight |       1|   1319|  2406|
|24 months |COHORTS        |PHILIPPINES  |Low birthweight            |       0|     38|  2406|
|24 months |COHORTS        |PHILIPPINES  |Low birthweight            |       1|    174|  2406|
|24 months |CONTENT        |PERU         |Normal or high birthweight |       0|      2|     2|
|24 months |CONTENT        |PERU         |Normal or high birthweight |       1|      0|     2|
|24 months |CONTENT        |PERU         |Low birthweight            |       0|      0|     2|
|24 months |CONTENT        |PERU         |Low birthweight            |       1|      0|     2|
|24 months |EE             |PAKISTAN     |Normal or high birthweight |       0|     34|   167|
|24 months |EE             |PAKISTAN     |Normal or high birthweight |       1|     66|   167|
|24 months |EE             |PAKISTAN     |Low birthweight            |       0|     15|   167|
|24 months |EE             |PAKISTAN     |Low birthweight            |       1|     52|   167|
|24 months |GMS-Nepal      |NEPAL        |Normal or high birthweight |       0|    206|   487|
|24 months |GMS-Nepal      |NEPAL        |Normal or high birthweight |       1|    139|   487|
|24 months |GMS-Nepal      |NEPAL        |Low birthweight            |       0|     63|   487|
|24 months |GMS-Nepal      |NEPAL        |Low birthweight            |       1|     79|   487|
|24 months |JiVitA-3       |BANGLADESH   |Normal or high birthweight |       0|   2573|  7307|
|24 months |JiVitA-3       |BANGLADESH   |Normal or high birthweight |       1|   1659|  7307|
|24 months |JiVitA-3       |BANGLADESH   |Low birthweight            |       0|   1082|  7307|
|24 months |JiVitA-3       |BANGLADESH   |Low birthweight            |       1|   1993|  7307|
|24 months |JiVitA-4       |BANGLADESH   |Normal or high birthweight |       0|   1966|  4010|
|24 months |JiVitA-4       |BANGLADESH   |Normal or high birthweight |       1|    989|  4010|
|24 months |JiVitA-4       |BANGLADESH   |Low birthweight            |       0|    444|  4010|
|24 months |JiVitA-4       |BANGLADESH   |Low birthweight            |       1|    611|  4010|
|24 months |Keneba         |GAMBIA       |Normal or high birthweight |       0|    646|  1056|
|24 months |Keneba         |GAMBIA       |Normal or high birthweight |       1|    259|  1056|
|24 months |Keneba         |GAMBIA       |Low birthweight            |       0|     69|  1056|
|24 months |Keneba         |GAMBIA       |Low birthweight            |       1|     82|  1056|
|24 months |MAL-ED         |INDIA        |Normal or high birthweight |       0|    109|   218|
|24 months |MAL-ED         |INDIA        |Normal or high birthweight |       1|     76|   218|
|24 months |MAL-ED         |INDIA        |Low birthweight            |       0|     18|   218|
|24 months |MAL-ED         |INDIA        |Low birthweight            |       1|     15|   218|
|24 months |MAL-ED         |BANGLADESH   |Normal or high birthweight |       0|     94|   210|
|24 months |MAL-ED         |BANGLADESH   |Normal or high birthweight |       1|     71|   210|
|24 months |MAL-ED         |BANGLADESH   |Low birthweight            |       0|     16|   210|
|24 months |MAL-ED         |BANGLADESH   |Low birthweight            |       1|     29|   210|
|24 months |MAL-ED         |PERU         |Normal or high birthweight |       0|    124|   199|
|24 months |MAL-ED         |PERU         |Normal or high birthweight |       1|     63|   199|
|24 months |MAL-ED         |PERU         |Low birthweight            |       0|      2|   199|
|24 months |MAL-ED         |PERU         |Low birthweight            |       1|     10|   199|
|24 months |MAL-ED         |NEPAL        |Normal or high birthweight |       0|    163|   221|
|24 months |MAL-ED         |NEPAL        |Normal or high birthweight |       1|     40|   221|
|24 months |MAL-ED         |NEPAL        |Low birthweight            |       0|     11|   221|
|24 months |MAL-ED         |NEPAL        |Low birthweight            |       1|      7|   221|
|24 months |MAL-ED         |BRAZIL       |Normal or high birthweight |       0|    154|   169|
|24 months |MAL-ED         |BRAZIL       |Normal or high birthweight |       1|      7|   169|
|24 months |MAL-ED         |BRAZIL       |Low birthweight            |       0|      8|   169|
|24 months |MAL-ED         |BRAZIL       |Low birthweight            |       1|      0|   169|
|24 months |MAL-ED         |TANZANIA     |Normal or high birthweight |       0|     48|   162|
|24 months |MAL-ED         |TANZANIA     |Normal or high birthweight |       1|    106|   162|
|24 months |MAL-ED         |TANZANIA     |Low birthweight            |       0|      1|   162|
|24 months |MAL-ED         |TANZANIA     |Low birthweight            |       1|      7|   162|
|24 months |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |       0|    144|   237|
|24 months |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |       1|     80|   237|
|24 months |MAL-ED         |SOUTH AFRICA |Low birthweight            |       0|      9|   237|
|24 months |MAL-ED         |SOUTH AFRICA |Low birthweight            |       1|      4|   237|
|24 months |NIH-Birth      |BANGLADESH   |Normal or high birthweight |       0|    146|   414|
|24 months |NIH-Birth      |BANGLADESH   |Normal or high birthweight |       1|    132|   414|
|24 months |NIH-Birth      |BANGLADESH   |Low birthweight            |       0|     32|   414|
|24 months |NIH-Birth      |BANGLADESH   |Low birthweight            |       1|    104|   414|
|24 months |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |       0|    315|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |       1|     73|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Low birthweight            |       0|     67|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Low birthweight            |       1|     59|   514|
|24 months |PROBIT         |BELARUS      |Normal or high birthweight |       0|   3760|  4035|
|24 months |PROBIT         |BELARUS      |Normal or high birthweight |       1|    275|  4035|
|24 months |PROBIT         |BELARUS      |Low birthweight            |       0|      0|  4035|
|24 months |PROBIT         |BELARUS      |Low birthweight            |       1|      0|  4035|
|24 months |PROVIDE        |BANGLADESH   |Normal or high birthweight |       0|    319|   578|
|24 months |PROVIDE        |BANGLADESH   |Normal or high birthweight |       1|    120|   578|
|24 months |PROVIDE        |BANGLADESH   |Low birthweight            |       0|     69|   578|
|24 months |PROVIDE        |BANGLADESH   |Low birthweight            |       1|     70|   578|
|24 months |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |       0|      5|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |       1|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Low birthweight            |       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Low birthweight            |       1|      0|     6|
|24 months |Vellore Crypto |INDIA        |Normal or high birthweight |       0|    208|   403|
|24 months |Vellore Crypto |INDIA        |Normal or high birthweight |       1|    127|   403|
|24 months |Vellore Crypto |INDIA        |Low birthweight            |       0|     27|   403|
|24 months |Vellore Crypto |INDIA        |Low birthweight            |       1|     41|   403|
|24 months |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |       0|    991|  1635|
|24 months |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |       1|    451|  1635|
|24 months |ZVITAMBO       |ZIMBABWE     |Low birthweight            |       0|     78|  1635|
|24 months |ZVITAMBO       |ZIMBABWE     |Low birthweight            |       1|    115|  1635|


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
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: PERU
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


