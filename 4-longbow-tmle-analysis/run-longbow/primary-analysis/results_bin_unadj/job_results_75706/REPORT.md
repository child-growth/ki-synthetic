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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** enstunt

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |enstunt | pers_wast| n_cell|     n|
|:-----------|:--------------|:------------|:-------|---------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |0       |         0|    281|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |0       |         1|     15|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1       |         0|     69|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1       |         1|      8|   373|
|0-24 months |CMIN           |BANGLADESH   |0       |         0|    152|   257|
|0-24 months |CMIN           |BANGLADESH   |0       |         1|      9|   257|
|0-24 months |CMIN           |BANGLADESH   |1       |         0|     85|   257|
|0-24 months |CMIN           |BANGLADESH   |1       |         1|     11|   257|
|0-24 months |COHORTS        |INDIA        |0       |         0|   4663|  5705|
|0-24 months |COHORTS        |INDIA        |0       |         1|    447|  5705|
|0-24 months |COHORTS        |INDIA        |1       |         0|    492|  5705|
|0-24 months |COHORTS        |INDIA        |1       |         1|    103|  5705|
|0-24 months |COHORTS        |GUATEMALA    |0       |         0|    826|  1056|
|0-24 months |COHORTS        |GUATEMALA    |0       |         1|     22|  1056|
|0-24 months |COHORTS        |GUATEMALA    |1       |         0|    194|  1056|
|0-24 months |COHORTS        |GUATEMALA    |1       |         1|     14|  1056|
|0-24 months |COHORTS        |PHILIPPINES  |0       |         0|   2524|  2811|
|0-24 months |COHORTS        |PHILIPPINES  |0       |         1|    127|  2811|
|0-24 months |COHORTS        |PHILIPPINES  |1       |         0|    143|  2811|
|0-24 months |COHORTS        |PHILIPPINES  |1       |         1|     17|  2811|
|0-24 months |CONTENT        |PERU         |0       |         0|    195|   215|
|0-24 months |CONTENT        |PERU         |0       |         1|      0|   215|
|0-24 months |CONTENT        |PERU         |1       |         0|     20|   215|
|0-24 months |CONTENT        |PERU         |1       |         1|      0|   215|
|0-24 months |EE             |PAKISTAN     |0       |         0|    195|   377|
|0-24 months |EE             |PAKISTAN     |0       |         1|     16|   377|
|0-24 months |EE             |PAKISTAN     |1       |         0|    149|   377|
|0-24 months |EE             |PAKISTAN     |1       |         1|     17|   377|
|0-24 months |GMS-Nepal      |NEPAL        |0       |         0|    434|   597|
|0-24 months |GMS-Nepal      |NEPAL        |0       |         1|     66|   597|
|0-24 months |GMS-Nepal      |NEPAL        |1       |         0|     83|   597|
|0-24 months |GMS-Nepal      |NEPAL        |1       |         1|     14|   597|
|0-24 months |Guatemala BSC  |GUATEMALA    |0       |         0|    196|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |0       |         1|      1|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |1       |         0|     56|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |1       |         1|      3|   256|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |0       |         0|   1185|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |0       |         1|    107|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |1       |         0|    284|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |1       |         1|     93|  1669|
|0-24 months |JiVitA-3       |BANGLADESH   |0       |         0|  10928| 15803|
|0-24 months |JiVitA-3       |BANGLADESH   |0       |         1|    551| 15803|
|0-24 months |JiVitA-3       |BANGLADESH   |1       |         0|   3977| 15803|
|0-24 months |JiVitA-3       |BANGLADESH   |1       |         1|    347| 15803|
|0-24 months |JiVitA-4       |BANGLADESH   |0       |         0|   3553|  5281|
|0-24 months |JiVitA-4       |BANGLADESH   |0       |         1|    223|  5281|
|0-24 months |JiVitA-4       |BANGLADESH   |1       |         0|   1302|  5281|
|0-24 months |JiVitA-4       |BANGLADESH   |1       |         1|    203|  5281|
|0-24 months |Keneba         |GAMBIA       |0       |         0|   2080|  2444|
|0-24 months |Keneba         |GAMBIA       |0       |         1|    118|  2444|
|0-24 months |Keneba         |GAMBIA       |1       |         0|    219|  2444|
|0-24 months |Keneba         |GAMBIA       |1       |         1|     27|  2444|
|0-24 months |LCNI-5         |MALAWI       |0       |         0|    454|   719|
|0-24 months |LCNI-5         |MALAWI       |0       |         1|      2|   719|
|0-24 months |LCNI-5         |MALAWI       |1       |         0|    259|   719|
|0-24 months |LCNI-5         |MALAWI       |1       |         1|      4|   719|
|0-24 months |MAL-ED         |INDIA        |0       |         0|    184|   241|
|0-24 months |MAL-ED         |INDIA        |0       |         1|     17|   241|
|0-24 months |MAL-ED         |INDIA        |1       |         0|     36|   241|
|0-24 months |MAL-ED         |INDIA        |1       |         1|      4|   241|
|0-24 months |MAL-ED         |BANGLADESH   |0       |         0|    198|   248|
|0-24 months |MAL-ED         |BANGLADESH   |0       |         1|      9|   248|
|0-24 months |MAL-ED         |BANGLADESH   |1       |         0|     37|   248|
|0-24 months |MAL-ED         |BANGLADESH   |1       |         1|      4|   248|
|0-24 months |MAL-ED         |PERU         |0       |         0|    247|   284|
|0-24 months |MAL-ED         |PERU         |0       |         1|      1|   284|
|0-24 months |MAL-ED         |PERU         |1       |         0|     36|   284|
|0-24 months |MAL-ED         |PERU         |1       |         1|      0|   284|
|0-24 months |MAL-ED         |NEPAL        |0       |         0|    207|   238|
|0-24 months |MAL-ED         |NEPAL        |0       |         1|      3|   238|
|0-24 months |MAL-ED         |NEPAL        |1       |         0|     27|   238|
|0-24 months |MAL-ED         |NEPAL        |1       |         1|      1|   238|
|0-24 months |MAL-ED         |BRAZIL       |0       |         0|    190|   218|
|0-24 months |MAL-ED         |BRAZIL       |0       |         1|      2|   218|
|0-24 months |MAL-ED         |BRAZIL       |1       |         0|     26|   218|
|0-24 months |MAL-ED         |BRAZIL       |1       |         1|      0|   218|
|0-24 months |MAL-ED         |TANZANIA     |0       |         0|    214|   253|
|0-24 months |MAL-ED         |TANZANIA     |0       |         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA     |1       |         0|     39|   253|
|0-24 months |MAL-ED         |TANZANIA     |1       |         1|      0|   253|
|0-24 months |MAL-ED         |SOUTH AFRICA |0       |         0|    242|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |0       |         1|      2|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |1       |         0|     31|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |1       |         1|      0|   275|
|0-24 months |NIH-Birth      |BANGLADESH   |0       |         0|    416|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |0       |         1|     36|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |1       |         0|     71|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |1       |         1|     11|   534|
|0-24 months |NIH-Crypto     |BANGLADESH   |0       |         0|    609|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |0       |         1|     18|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |1       |         0|     95|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |1       |         1|      8|   730|
|0-24 months |PROBIT         |BELARUS      |0       |         0|  16329| 16583|
|0-24 months |PROBIT         |BELARUS      |0       |         1|    134| 16583|
|0-24 months |PROBIT         |BELARUS      |1       |         0|    120| 16583|
|0-24 months |PROBIT         |BELARUS      |1       |         1|      0| 16583|
|0-24 months |PROVIDE        |BANGLADESH   |0       |         0|    566|   641|
|0-24 months |PROVIDE        |BANGLADESH   |0       |         1|     12|   641|
|0-24 months |PROVIDE        |BANGLADESH   |1       |         0|     60|   641|
|0-24 months |PROVIDE        |BANGLADESH   |1       |         1|      3|   641|
|0-24 months |ResPak         |PAKISTAN     |0       |         0|    165|   256|
|0-24 months |ResPak         |PAKISTAN     |0       |         1|     22|   256|
|0-24 months |ResPak         |PAKISTAN     |1       |         0|     57|   256|
|0-24 months |ResPak         |PAKISTAN     |1       |         1|     12|   256|
|0-24 months |SAS-CompFeed   |INDIA        |0       |         0|    938|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |0       |         1|     57|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |1       |         0|    314|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |1       |         1|     57|  1366|
|0-24 months |SAS-FoodSuppl  |INDIA        |0       |         0|    192|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |0       |         1|     34|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |1       |         0|    118|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |1       |         1|     31|   375|
|0-24 months |TanzaniaChild2 |TANZANIA     |0       |         0|   1964|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |0       |         1|     55|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |1       |         0|    144|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |1       |         1|      3|  2166|
|0-24 months |Vellore Crypto |INDIA        |0       |         0|    317|   410|
|0-24 months |Vellore Crypto |INDIA        |0       |         1|     41|   410|
|0-24 months |Vellore Crypto |INDIA        |1       |         0|     45|   410|
|0-24 months |Vellore Crypto |INDIA        |1       |         1|      7|   410|
|0-24 months |ZVITAMBO       |ZIMBABWE     |0       |         0|   8451|  9527|
|0-24 months |ZVITAMBO       |ZIMBABWE     |0       |         1|    148|  9527|
|0-24 months |ZVITAMBO       |ZIMBABWE     |1       |         0|    908|  9527|
|0-24 months |ZVITAMBO       |ZIMBABWE     |1       |         1|     20|  9527|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |0       |         0|    247|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |0       |         1|     37|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1       |         0|     61|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1       |         1|     13|   358|
|0-6 months  |CMIN           |BANGLADESH   |0       |         0|    143|   234|
|0-6 months  |CMIN           |BANGLADESH   |0       |         1|      4|   234|
|0-6 months  |CMIN           |BANGLADESH   |1       |         0|     82|   234|
|0-6 months  |CMIN           |BANGLADESH   |1       |         1|      5|   234|
|0-6 months  |COHORTS        |PHILIPPINES  |0       |         0|    777|   853|
|0-6 months  |COHORTS        |PHILIPPINES  |0       |         1|     50|   853|
|0-6 months  |COHORTS        |PHILIPPINES  |1       |         0|     24|   853|
|0-6 months  |COHORTS        |PHILIPPINES  |1       |         1|      2|   853|
|0-6 months  |CONTENT        |PERU         |0       |         0|    195|   215|
|0-6 months  |CONTENT        |PERU         |0       |         1|      0|   215|
|0-6 months  |CONTENT        |PERU         |1       |         0|     20|   215|
|0-6 months  |CONTENT        |PERU         |1       |         1|      0|   215|
|0-6 months  |EE             |PAKISTAN     |0       |         0|    196|   371|
|0-6 months  |EE             |PAKISTAN     |0       |         1|     13|   371|
|0-6 months  |EE             |PAKISTAN     |1       |         0|    150|   371|
|0-6 months  |EE             |PAKISTAN     |1       |         1|     12|   371|
|0-6 months  |GMS-Nepal      |NEPAL        |0       |         0|    421|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |0       |         1|     54|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |1       |         0|     84|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |1       |         1|      8|   567|
|0-6 months  |JiVitA-3       |BANGLADESH   |0       |         0|     39|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |0       |         1|      2|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |1       |         0|      9|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |1       |         1|      0|    50|
|0-6 months  |Keneba         |GAMBIA       |0       |         0|   1806|  2045|
|0-6 months  |Keneba         |GAMBIA       |0       |         1|     55|  2045|
|0-6 months  |Keneba         |GAMBIA       |1       |         0|    176|  2045|
|0-6 months  |Keneba         |GAMBIA       |1       |         1|      8|  2045|
|0-6 months  |MAL-ED         |INDIA        |0       |         0|    184|   240|
|0-6 months  |MAL-ED         |INDIA        |0       |         1|     17|   240|
|0-6 months  |MAL-ED         |INDIA        |1       |         0|     37|   240|
|0-6 months  |MAL-ED         |INDIA        |1       |         1|      2|   240|
|0-6 months  |MAL-ED         |BANGLADESH   |0       |         0|    201|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |0       |         1|      6|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |1       |         0|     40|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |1       |         1|      1|   248|
|0-6 months  |MAL-ED         |PERU         |0       |         0|    248|   284|
|0-6 months  |MAL-ED         |PERU         |0       |         1|      0|   284|
|0-6 months  |MAL-ED         |PERU         |1       |         0|     36|   284|
|0-6 months  |MAL-ED         |PERU         |1       |         1|      0|   284|
|0-6 months  |MAL-ED         |NEPAL        |0       |         0|    205|   238|
|0-6 months  |MAL-ED         |NEPAL        |0       |         1|      5|   238|
|0-6 months  |MAL-ED         |NEPAL        |1       |         0|     26|   238|
|0-6 months  |MAL-ED         |NEPAL        |1       |         1|      2|   238|
|0-6 months  |MAL-ED         |BRAZIL       |0       |         0|    191|   218|
|0-6 months  |MAL-ED         |BRAZIL       |0       |         1|      1|   218|
|0-6 months  |MAL-ED         |BRAZIL       |1       |         0|     26|   218|
|0-6 months  |MAL-ED         |BRAZIL       |1       |         1|      0|   218|
|0-6 months  |MAL-ED         |TANZANIA     |0       |         0|    214|   253|
|0-6 months  |MAL-ED         |TANZANIA     |0       |         1|      0|   253|
|0-6 months  |MAL-ED         |TANZANIA     |1       |         0|     39|   253|
|0-6 months  |MAL-ED         |TANZANIA     |1       |         1|      0|   253|
|0-6 months  |MAL-ED         |SOUTH AFRICA |0       |         0|    242|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |0       |         1|      2|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1       |         0|     30|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1       |         1|      0|   274|
|0-6 months  |NIH-Birth      |BANGLADESH   |0       |         0|    140|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |0       |         1|      9|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |1       |         0|     18|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |1       |         1|      2|   169|
|0-6 months  |NIH-Crypto     |BANGLADESH   |0       |         0|    218|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |0       |         1|      4|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |1       |         0|     27|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |1       |         1|      1|   250|
|0-6 months  |PROBIT         |BELARUS      |0       |         0|  12404| 13534|
|0-6 months  |PROBIT         |BELARUS      |0       |         1|   1097| 13534|
|0-6 months  |PROBIT         |BELARUS      |1       |         0|     33| 13534|
|0-6 months  |PROBIT         |BELARUS      |1       |         1|      0| 13534|
|0-6 months  |PROVIDE        |BANGLADESH   |0       |         0|    563|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |0       |         1|     12|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |1       |         0|     61|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |1       |         1|      2|   638|
|0-6 months  |ResPak         |PAKISTAN     |0       |         0|    165|   243|
|0-6 months  |ResPak         |PAKISTAN     |0       |         1|     17|   243|
|0-6 months  |ResPak         |PAKISTAN     |1       |         0|     53|   243|
|0-6 months  |ResPak         |PAKISTAN     |1       |         1|      8|   243|
|0-6 months  |TanzaniaChild2 |TANZANIA     |0       |         0|   1868|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |0       |         1|     50|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |1       |         0|    141|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |1       |         1|      2|  2061|
|0-6 months  |Vellore Crypto |INDIA        |0       |         0|    294|   402|
|0-6 months  |Vellore Crypto |INDIA        |0       |         1|     57|   402|
|0-6 months  |Vellore Crypto |INDIA        |1       |         0|     44|   402|
|0-6 months  |Vellore Crypto |INDIA        |1       |         1|      7|   402|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |0       |         0|    590|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |0       |         1|     12|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |1       |         0|     28|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |1       |         1|      2|   632|
|6-24 months |CMC-V-BCS-2002 |INDIA        |0       |         0|    281|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |0       |         1|     15|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1       |         0|     69|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1       |         1|      8|   373|
|6-24 months |CMIN           |BANGLADESH   |0       |         0|    152|   257|
|6-24 months |CMIN           |BANGLADESH   |0       |         1|      9|   257|
|6-24 months |CMIN           |BANGLADESH   |1       |         0|     85|   257|
|6-24 months |CMIN           |BANGLADESH   |1       |         1|     11|   257|
|6-24 months |COHORTS        |INDIA        |0       |         0|   4663|  5705|
|6-24 months |COHORTS        |INDIA        |0       |         1|    447|  5705|
|6-24 months |COHORTS        |INDIA        |1       |         0|    492|  5705|
|6-24 months |COHORTS        |INDIA        |1       |         1|    103|  5705|
|6-24 months |COHORTS        |GUATEMALA    |0       |         0|    826|  1056|
|6-24 months |COHORTS        |GUATEMALA    |0       |         1|     22|  1056|
|6-24 months |COHORTS        |GUATEMALA    |1       |         0|    194|  1056|
|6-24 months |COHORTS        |GUATEMALA    |1       |         1|     14|  1056|
|6-24 months |COHORTS        |PHILIPPINES  |0       |         0|   2524|  2811|
|6-24 months |COHORTS        |PHILIPPINES  |0       |         1|    127|  2811|
|6-24 months |COHORTS        |PHILIPPINES  |1       |         0|    143|  2811|
|6-24 months |COHORTS        |PHILIPPINES  |1       |         1|     17|  2811|
|6-24 months |CONTENT        |PERU         |0       |         0|    195|   215|
|6-24 months |CONTENT        |PERU         |0       |         1|      0|   215|
|6-24 months |CONTENT        |PERU         |1       |         0|     20|   215|
|6-24 months |CONTENT        |PERU         |1       |         1|      0|   215|
|6-24 months |EE             |PAKISTAN     |0       |         0|    195|   377|
|6-24 months |EE             |PAKISTAN     |0       |         1|     16|   377|
|6-24 months |EE             |PAKISTAN     |1       |         0|    149|   377|
|6-24 months |EE             |PAKISTAN     |1       |         1|     17|   377|
|6-24 months |GMS-Nepal      |NEPAL        |0       |         0|    434|   597|
|6-24 months |GMS-Nepal      |NEPAL        |0       |         1|     66|   597|
|6-24 months |GMS-Nepal      |NEPAL        |1       |         0|     83|   597|
|6-24 months |GMS-Nepal      |NEPAL        |1       |         1|     14|   597|
|6-24 months |Guatemala BSC  |GUATEMALA    |0       |         0|    196|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |0       |         1|      1|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |1       |         0|     56|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |1       |         1|      3|   256|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |0       |         0|   1185|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |0       |         1|    107|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |1       |         0|    284|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |1       |         1|     93|  1669|
|6-24 months |JiVitA-3       |BANGLADESH   |0       |         0|  10928| 15803|
|6-24 months |JiVitA-3       |BANGLADESH   |0       |         1|    551| 15803|
|6-24 months |JiVitA-3       |BANGLADESH   |1       |         0|   3977| 15803|
|6-24 months |JiVitA-3       |BANGLADESH   |1       |         1|    347| 15803|
|6-24 months |JiVitA-4       |BANGLADESH   |0       |         0|   3553|  5281|
|6-24 months |JiVitA-4       |BANGLADESH   |0       |         1|    223|  5281|
|6-24 months |JiVitA-4       |BANGLADESH   |1       |         0|   1302|  5281|
|6-24 months |JiVitA-4       |BANGLADESH   |1       |         1|    203|  5281|
|6-24 months |Keneba         |GAMBIA       |0       |         0|   2080|  2444|
|6-24 months |Keneba         |GAMBIA       |0       |         1|    118|  2444|
|6-24 months |Keneba         |GAMBIA       |1       |         0|    219|  2444|
|6-24 months |Keneba         |GAMBIA       |1       |         1|     27|  2444|
|6-24 months |LCNI-5         |MALAWI       |0       |         0|    454|   719|
|6-24 months |LCNI-5         |MALAWI       |0       |         1|      2|   719|
|6-24 months |LCNI-5         |MALAWI       |1       |         0|    259|   719|
|6-24 months |LCNI-5         |MALAWI       |1       |         1|      4|   719|
|6-24 months |MAL-ED         |INDIA        |0       |         0|    184|   241|
|6-24 months |MAL-ED         |INDIA        |0       |         1|     17|   241|
|6-24 months |MAL-ED         |INDIA        |1       |         0|     36|   241|
|6-24 months |MAL-ED         |INDIA        |1       |         1|      4|   241|
|6-24 months |MAL-ED         |BANGLADESH   |0       |         0|    198|   248|
|6-24 months |MAL-ED         |BANGLADESH   |0       |         1|      9|   248|
|6-24 months |MAL-ED         |BANGLADESH   |1       |         0|     37|   248|
|6-24 months |MAL-ED         |BANGLADESH   |1       |         1|      4|   248|
|6-24 months |MAL-ED         |PERU         |0       |         0|    247|   284|
|6-24 months |MAL-ED         |PERU         |0       |         1|      1|   284|
|6-24 months |MAL-ED         |PERU         |1       |         0|     36|   284|
|6-24 months |MAL-ED         |PERU         |1       |         1|      0|   284|
|6-24 months |MAL-ED         |NEPAL        |0       |         0|    207|   238|
|6-24 months |MAL-ED         |NEPAL        |0       |         1|      3|   238|
|6-24 months |MAL-ED         |NEPAL        |1       |         0|     27|   238|
|6-24 months |MAL-ED         |NEPAL        |1       |         1|      1|   238|
|6-24 months |MAL-ED         |BRAZIL       |0       |         0|    190|   218|
|6-24 months |MAL-ED         |BRAZIL       |0       |         1|      2|   218|
|6-24 months |MAL-ED         |BRAZIL       |1       |         0|     26|   218|
|6-24 months |MAL-ED         |BRAZIL       |1       |         1|      0|   218|
|6-24 months |MAL-ED         |TANZANIA     |0       |         0|    214|   253|
|6-24 months |MAL-ED         |TANZANIA     |0       |         1|      0|   253|
|6-24 months |MAL-ED         |TANZANIA     |1       |         0|     39|   253|
|6-24 months |MAL-ED         |TANZANIA     |1       |         1|      0|   253|
|6-24 months |MAL-ED         |SOUTH AFRICA |0       |         0|    242|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |0       |         1|      2|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |1       |         0|     31|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |1       |         1|      0|   275|
|6-24 months |NIH-Birth      |BANGLADESH   |0       |         0|    416|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |0       |         1|     36|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |1       |         0|     71|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |1       |         1|     11|   534|
|6-24 months |NIH-Crypto     |BANGLADESH   |0       |         0|    609|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |0       |         1|     18|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |1       |         0|     95|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |1       |         1|      8|   730|
|6-24 months |PROBIT         |BELARUS      |0       |         0|  16329| 16583|
|6-24 months |PROBIT         |BELARUS      |0       |         1|    134| 16583|
|6-24 months |PROBIT         |BELARUS      |1       |         0|    120| 16583|
|6-24 months |PROBIT         |BELARUS      |1       |         1|      0| 16583|
|6-24 months |PROVIDE        |BANGLADESH   |0       |         0|    566|   641|
|6-24 months |PROVIDE        |BANGLADESH   |0       |         1|     12|   641|
|6-24 months |PROVIDE        |BANGLADESH   |1       |         0|     60|   641|
|6-24 months |PROVIDE        |BANGLADESH   |1       |         1|      3|   641|
|6-24 months |ResPak         |PAKISTAN     |0       |         0|    165|   256|
|6-24 months |ResPak         |PAKISTAN     |0       |         1|     22|   256|
|6-24 months |ResPak         |PAKISTAN     |1       |         0|     57|   256|
|6-24 months |ResPak         |PAKISTAN     |1       |         1|     12|   256|
|6-24 months |SAS-CompFeed   |INDIA        |0       |         0|    938|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |0       |         1|     57|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |1       |         0|    314|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |1       |         1|     57|  1366|
|6-24 months |SAS-FoodSuppl  |INDIA        |0       |         0|    192|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |0       |         1|     34|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |1       |         0|    118|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |1       |         1|     31|   375|
|6-24 months |TanzaniaChild2 |TANZANIA     |0       |         0|   1964|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |0       |         1|     55|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |1       |         0|    144|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |1       |         1|      3|  2166|
|6-24 months |Vellore Crypto |INDIA        |0       |         0|    317|   410|
|6-24 months |Vellore Crypto |INDIA        |0       |         1|     41|   410|
|6-24 months |Vellore Crypto |INDIA        |1       |         0|     45|   410|
|6-24 months |Vellore Crypto |INDIA        |1       |         1|      7|   410|
|6-24 months |ZVITAMBO       |ZIMBABWE     |0       |         0|   8451|  9527|
|6-24 months |ZVITAMBO       |ZIMBABWE     |0       |         1|    148|  9527|
|6-24 months |ZVITAMBO       |ZIMBABWE     |1       |         0|    908|  9527|
|6-24 months |ZVITAMBO       |ZIMBABWE     |1       |         1|     20|  9527|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
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
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


