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

**Intervention Variable:** sex

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |sex    | pers_wast| n_cell|     n|
|:-----------|:--------------|:------------|:------|---------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Female |         0|    179|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Female |         1|      8|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Male   |         0|    171|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Male   |         1|     15|   373|
|0-24 months |CMIN           |BANGLADESH   |Female |         0|    102|   257|
|0-24 months |CMIN           |BANGLADESH   |Female |         1|      7|   257|
|0-24 months |CMIN           |BANGLADESH   |Male   |         0|    135|   257|
|0-24 months |CMIN           |BANGLADESH   |Male   |         1|     13|   257|
|0-24 months |COHORTS        |INDIA        |Female |         0|   2511|  5705|
|0-24 months |COHORTS        |INDIA        |Female |         1|    253|  5705|
|0-24 months |COHORTS        |INDIA        |Male   |         0|   2644|  5705|
|0-24 months |COHORTS        |INDIA        |Male   |         1|    297|  5705|
|0-24 months |COHORTS        |GUATEMALA    |Female |         0|    490|  1056|
|0-24 months |COHORTS        |GUATEMALA    |Female |         1|     12|  1056|
|0-24 months |COHORTS        |GUATEMALA    |Male   |         0|    530|  1056|
|0-24 months |COHORTS        |GUATEMALA    |Male   |         1|     24|  1056|
|0-24 months |COHORTS        |PHILIPPINES  |Female |         0|   1276|  2811|
|0-24 months |COHORTS        |PHILIPPINES  |Female |         1|     53|  2811|
|0-24 months |COHORTS        |PHILIPPINES  |Male   |         0|   1391|  2811|
|0-24 months |COHORTS        |PHILIPPINES  |Male   |         1|     91|  2811|
|0-24 months |CONTENT        |PERU         |Female |         0|    109|   215|
|0-24 months |CONTENT        |PERU         |Female |         1|      0|   215|
|0-24 months |CONTENT        |PERU         |Male   |         0|    106|   215|
|0-24 months |CONTENT        |PERU         |Male   |         1|      0|   215|
|0-24 months |EE             |PAKISTAN     |Female |         0|    168|   377|
|0-24 months |EE             |PAKISTAN     |Female |         1|     14|   377|
|0-24 months |EE             |PAKISTAN     |Male   |         0|    176|   377|
|0-24 months |EE             |PAKISTAN     |Male   |         1|     19|   377|
|0-24 months |GMS-Nepal      |NEPAL        |Female |         0|    251|   597|
|0-24 months |GMS-Nepal      |NEPAL        |Female |         1|     36|   597|
|0-24 months |GMS-Nepal      |NEPAL        |Male   |         0|    266|   597|
|0-24 months |GMS-Nepal      |NEPAL        |Male   |         1|     44|   597|
|0-24 months |Guatemala BSC  |GUATEMALA    |Female |         0|    133|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |Female |         1|      1|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |Male   |         0|    119|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |Male   |         1|      3|   256|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |Female |         0|    732|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |Female |         1|     80|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |Male   |         0|    737|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |Male   |         1|    120|  1669|
|0-24 months |JiVitA-3       |BANGLADESH   |Female |         0|   7302| 15803|
|0-24 months |JiVitA-3       |BANGLADESH   |Female |         1|    424| 15803|
|0-24 months |JiVitA-3       |BANGLADESH   |Male   |         0|   7603| 15803|
|0-24 months |JiVitA-3       |BANGLADESH   |Male   |         1|    474| 15803|
|0-24 months |JiVitA-4       |BANGLADESH   |Female |         0|   2455|  5281|
|0-24 months |JiVitA-4       |BANGLADESH   |Female |         1|    187|  5281|
|0-24 months |JiVitA-4       |BANGLADESH   |Male   |         0|   2400|  5281|
|0-24 months |JiVitA-4       |BANGLADESH   |Male   |         1|    239|  5281|
|0-24 months |Keneba         |GAMBIA       |Female |         0|   1123|  2444|
|0-24 months |Keneba         |GAMBIA       |Female |         1|     60|  2444|
|0-24 months |Keneba         |GAMBIA       |Male   |         0|   1176|  2444|
|0-24 months |Keneba         |GAMBIA       |Male   |         1|     85|  2444|
|0-24 months |LCNI-5         |MALAWI       |Female |         0|    358|   719|
|0-24 months |LCNI-5         |MALAWI       |Female |         1|      2|   719|
|0-24 months |LCNI-5         |MALAWI       |Male   |         0|    355|   719|
|0-24 months |LCNI-5         |MALAWI       |Male   |         1|      4|   719|
|0-24 months |MAL-ED         |INDIA        |Female |         0|    125|   241|
|0-24 months |MAL-ED         |INDIA        |Female |         1|      8|   241|
|0-24 months |MAL-ED         |INDIA        |Male   |         0|     95|   241|
|0-24 months |MAL-ED         |INDIA        |Male   |         1|     13|   241|
|0-24 months |MAL-ED         |BANGLADESH   |Female |         0|    116|   248|
|0-24 months |MAL-ED         |BANGLADESH   |Female |         1|      9|   248|
|0-24 months |MAL-ED         |BANGLADESH   |Male   |         0|    119|   248|
|0-24 months |MAL-ED         |BANGLADESH   |Male   |         1|      4|   248|
|0-24 months |MAL-ED         |PERU         |Female |         0|    131|   284|
|0-24 months |MAL-ED         |PERU         |Female |         1|      0|   284|
|0-24 months |MAL-ED         |PERU         |Male   |         0|    152|   284|
|0-24 months |MAL-ED         |PERU         |Male   |         1|      1|   284|
|0-24 months |MAL-ED         |NEPAL        |Female |         0|    110|   238|
|0-24 months |MAL-ED         |NEPAL        |Female |         1|      0|   238|
|0-24 months |MAL-ED         |NEPAL        |Male   |         0|    124|   238|
|0-24 months |MAL-ED         |NEPAL        |Male   |         1|      4|   238|
|0-24 months |MAL-ED         |BRAZIL       |Female |         0|    106|   218|
|0-24 months |MAL-ED         |BRAZIL       |Female |         1|      2|   218|
|0-24 months |MAL-ED         |BRAZIL       |Male   |         0|    110|   218|
|0-24 months |MAL-ED         |BRAZIL       |Male   |         1|      0|   218|
|0-24 months |MAL-ED         |TANZANIA     |Female |         0|    128|   253|
|0-24 months |MAL-ED         |TANZANIA     |Female |         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA     |Male   |         0|    125|   253|
|0-24 months |MAL-ED         |TANZANIA     |Male   |         1|      0|   253|
|0-24 months |MAL-ED         |SOUTH AFRICA |Female |         0|    141|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |Female |         1|      1|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |Male   |         0|    132|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |Male   |         1|      1|   275|
|0-24 months |NIH-Birth      |BANGLADESH   |Female |         0|    228|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |Female |         1|     15|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |Male   |         0|    259|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |Male   |         1|     32|   534|
|0-24 months |NIH-Crypto     |BANGLADESH   |Female |         0|    358|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |Female |         1|     11|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |Male   |         0|    346|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |Male   |         1|     15|   730|
|0-24 months |PROBIT         |BELARUS      |Female |         0|   7941| 16583|
|0-24 months |PROBIT         |BELARUS      |Female |         1|     52| 16583|
|0-24 months |PROBIT         |BELARUS      |Male   |         0|   8508| 16583|
|0-24 months |PROBIT         |BELARUS      |Male   |         1|     82| 16583|
|0-24 months |PROVIDE        |BANGLADESH   |Female |         0|    300|   641|
|0-24 months |PROVIDE        |BANGLADESH   |Female |         1|      5|   641|
|0-24 months |PROVIDE        |BANGLADESH   |Male   |         0|    326|   641|
|0-24 months |PROVIDE        |BANGLADESH   |Male   |         1|     10|   641|
|0-24 months |ResPak         |PAKISTAN     |Female |         0|    113|   256|
|0-24 months |ResPak         |PAKISTAN     |Female |         1|      9|   256|
|0-24 months |ResPak         |PAKISTAN     |Male   |         0|    109|   256|
|0-24 months |ResPak         |PAKISTAN     |Male   |         1|     25|   256|
|0-24 months |SAS-CompFeed   |INDIA        |Female |         0|    566|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |Female |         1|     48|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |Male   |         0|    686|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |Male   |         1|     66|  1366|
|0-24 months |SAS-FoodSuppl  |INDIA        |Female |         0|    166|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |Female |         1|     31|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |Male   |         0|    144|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |Male   |         1|     34|   375|
|0-24 months |TanzaniaChild2 |TANZANIA     |Female |         0|   1053|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |Female |         1|     19|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |Male   |         0|   1055|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |Male   |         1|     39|  2166|
|0-24 months |Vellore Crypto |INDIA        |Female |         0|    165|   410|
|0-24 months |Vellore Crypto |INDIA        |Female |         1|     20|   410|
|0-24 months |Vellore Crypto |INDIA        |Male   |         0|    197|   410|
|0-24 months |Vellore Crypto |INDIA        |Male   |         1|     28|   410|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Female |         0|   4669|  9527|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Female |         1|     59|  9527|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Male   |         0|   4690|  9527|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Male   |         1|    109|  9527|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Female |         0|    158|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Female |         1|     21|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Male   |         0|    150|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Male   |         1|     29|   358|
|0-6 months  |CMIN           |BANGLADESH   |Female |         0|     92|   234|
|0-6 months  |CMIN           |BANGLADESH   |Female |         1|      3|   234|
|0-6 months  |CMIN           |BANGLADESH   |Male   |         0|    133|   234|
|0-6 months  |CMIN           |BANGLADESH   |Male   |         1|      6|   234|
|0-6 months  |COHORTS        |PHILIPPINES  |Female |         0|    397|   853|
|0-6 months  |COHORTS        |PHILIPPINES  |Female |         1|     17|   853|
|0-6 months  |COHORTS        |PHILIPPINES  |Male   |         0|    404|   853|
|0-6 months  |COHORTS        |PHILIPPINES  |Male   |         1|     35|   853|
|0-6 months  |CONTENT        |PERU         |Female |         0|    109|   215|
|0-6 months  |CONTENT        |PERU         |Female |         1|      0|   215|
|0-6 months  |CONTENT        |PERU         |Male   |         0|    106|   215|
|0-6 months  |CONTENT        |PERU         |Male   |         1|      0|   215|
|0-6 months  |EE             |PAKISTAN     |Female |         0|    167|   371|
|0-6 months  |EE             |PAKISTAN     |Female |         1|     10|   371|
|0-6 months  |EE             |PAKISTAN     |Male   |         0|    179|   371|
|0-6 months  |EE             |PAKISTAN     |Male   |         1|     15|   371|
|0-6 months  |GMS-Nepal      |NEPAL        |Female |         0|    244|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |Female |         1|     29|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |Male   |         0|    261|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |Male   |         1|     33|   567|
|0-6 months  |JiVitA-3       |BANGLADESH   |Female |         0|     22|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |Female |         1|      0|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |Male   |         0|     26|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |Male   |         1|      2|    50|
|0-6 months  |Keneba         |GAMBIA       |Female |         0|    963|  2045|
|0-6 months  |Keneba         |GAMBIA       |Female |         1|     28|  2045|
|0-6 months  |Keneba         |GAMBIA       |Male   |         0|   1019|  2045|
|0-6 months  |Keneba         |GAMBIA       |Male   |         1|     35|  2045|
|0-6 months  |MAL-ED         |INDIA        |Female |         0|    121|   240|
|0-6 months  |MAL-ED         |INDIA        |Female |         1|     12|   240|
|0-6 months  |MAL-ED         |INDIA        |Male   |         0|    100|   240|
|0-6 months  |MAL-ED         |INDIA        |Male   |         1|      7|   240|
|0-6 months  |MAL-ED         |BANGLADESH   |Female |         0|    120|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |Female |         1|      5|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |Male   |         0|    121|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |Male   |         1|      2|   248|
|0-6 months  |MAL-ED         |PERU         |Female |         0|    131|   284|
|0-6 months  |MAL-ED         |PERU         |Female |         1|      0|   284|
|0-6 months  |MAL-ED         |PERU         |Male   |         0|    153|   284|
|0-6 months  |MAL-ED         |PERU         |Male   |         1|      0|   284|
|0-6 months  |MAL-ED         |NEPAL        |Female |         0|    109|   238|
|0-6 months  |MAL-ED         |NEPAL        |Female |         1|      1|   238|
|0-6 months  |MAL-ED         |NEPAL        |Male   |         0|    122|   238|
|0-6 months  |MAL-ED         |NEPAL        |Male   |         1|      6|   238|
|0-6 months  |MAL-ED         |BRAZIL       |Female |         0|    107|   218|
|0-6 months  |MAL-ED         |BRAZIL       |Female |         1|      1|   218|
|0-6 months  |MAL-ED         |BRAZIL       |Male   |         0|    110|   218|
|0-6 months  |MAL-ED         |BRAZIL       |Male   |         1|      0|   218|
|0-6 months  |MAL-ED         |TANZANIA     |Female |         0|    128|   253|
|0-6 months  |MAL-ED         |TANZANIA     |Female |         1|      0|   253|
|0-6 months  |MAL-ED         |TANZANIA     |Male   |         0|    125|   253|
|0-6 months  |MAL-ED         |TANZANIA     |Male   |         1|      0|   253|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Female |         0|    140|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Female |         1|      1|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Male   |         0|    132|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Male   |         1|      1|   274|
|0-6 months  |NIH-Birth      |BANGLADESH   |Female |         0|     70|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |Female |         1|      4|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |Male   |         0|     88|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |Male   |         1|      7|   169|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Female |         0|    133|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Female |         1|      2|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Male   |         0|    112|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Male   |         1|      3|   250|
|0-6 months  |PROBIT         |BELARUS      |Female |         0|   6055| 13534|
|0-6 months  |PROBIT         |BELARUS      |Female |         1|    492| 13534|
|0-6 months  |PROBIT         |BELARUS      |Male   |         0|   6382| 13534|
|0-6 months  |PROBIT         |BELARUS      |Male   |         1|    605| 13534|
|0-6 months  |PROVIDE        |BANGLADESH   |Female |         0|    300|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |Female |         1|      4|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |Male   |         0|    324|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |Male   |         1|     10|   638|
|0-6 months  |ResPak         |PAKISTAN     |Female |         0|    107|   243|
|0-6 months  |ResPak         |PAKISTAN     |Female |         1|     10|   243|
|0-6 months  |ResPak         |PAKISTAN     |Male   |         0|    111|   243|
|0-6 months  |ResPak         |PAKISTAN     |Male   |         1|     15|   243|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Female |         0|   1000|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Female |         1|     16|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Male   |         0|   1009|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Male   |         1|     36|  2061|
|0-6 months  |Vellore Crypto |INDIA        |Female |         0|    155|   402|
|0-6 months  |Vellore Crypto |INDIA        |Female |         1|     25|   402|
|0-6 months  |Vellore Crypto |INDIA        |Male   |         0|    183|   402|
|0-6 months  |Vellore Crypto |INDIA        |Male   |         1|     39|   402|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Female |         0|    304|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Female |         1|      3|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Male   |         0|    314|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Male   |         1|     11|   632|
|6-24 months |CMC-V-BCS-2002 |INDIA        |Female |         0|    179|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |Female |         1|      8|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |Male   |         0|    171|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |Male   |         1|     15|   373|
|6-24 months |CMIN           |BANGLADESH   |Female |         0|    102|   257|
|6-24 months |CMIN           |BANGLADESH   |Female |         1|      7|   257|
|6-24 months |CMIN           |BANGLADESH   |Male   |         0|    135|   257|
|6-24 months |CMIN           |BANGLADESH   |Male   |         1|     13|   257|
|6-24 months |COHORTS        |INDIA        |Female |         0|   2511|  5705|
|6-24 months |COHORTS        |INDIA        |Female |         1|    253|  5705|
|6-24 months |COHORTS        |INDIA        |Male   |         0|   2644|  5705|
|6-24 months |COHORTS        |INDIA        |Male   |         1|    297|  5705|
|6-24 months |COHORTS        |GUATEMALA    |Female |         0|    490|  1056|
|6-24 months |COHORTS        |GUATEMALA    |Female |         1|     12|  1056|
|6-24 months |COHORTS        |GUATEMALA    |Male   |         0|    530|  1056|
|6-24 months |COHORTS        |GUATEMALA    |Male   |         1|     24|  1056|
|6-24 months |COHORTS        |PHILIPPINES  |Female |         0|   1276|  2811|
|6-24 months |COHORTS        |PHILIPPINES  |Female |         1|     53|  2811|
|6-24 months |COHORTS        |PHILIPPINES  |Male   |         0|   1391|  2811|
|6-24 months |COHORTS        |PHILIPPINES  |Male   |         1|     91|  2811|
|6-24 months |CONTENT        |PERU         |Female |         0|    109|   215|
|6-24 months |CONTENT        |PERU         |Female |         1|      0|   215|
|6-24 months |CONTENT        |PERU         |Male   |         0|    106|   215|
|6-24 months |CONTENT        |PERU         |Male   |         1|      0|   215|
|6-24 months |EE             |PAKISTAN     |Female |         0|    168|   377|
|6-24 months |EE             |PAKISTAN     |Female |         1|     14|   377|
|6-24 months |EE             |PAKISTAN     |Male   |         0|    176|   377|
|6-24 months |EE             |PAKISTAN     |Male   |         1|     19|   377|
|6-24 months |GMS-Nepal      |NEPAL        |Female |         0|    251|   597|
|6-24 months |GMS-Nepal      |NEPAL        |Female |         1|     36|   597|
|6-24 months |GMS-Nepal      |NEPAL        |Male   |         0|    266|   597|
|6-24 months |GMS-Nepal      |NEPAL        |Male   |         1|     44|   597|
|6-24 months |Guatemala BSC  |GUATEMALA    |Female |         0|    133|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |Female |         1|      1|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |Male   |         0|    119|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |Male   |         1|      3|   256|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |Female |         0|    732|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |Female |         1|     80|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |Male   |         0|    737|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |Male   |         1|    120|  1669|
|6-24 months |JiVitA-3       |BANGLADESH   |Female |         0|   7302| 15803|
|6-24 months |JiVitA-3       |BANGLADESH   |Female |         1|    424| 15803|
|6-24 months |JiVitA-3       |BANGLADESH   |Male   |         0|   7603| 15803|
|6-24 months |JiVitA-3       |BANGLADESH   |Male   |         1|    474| 15803|
|6-24 months |JiVitA-4       |BANGLADESH   |Female |         0|   2455|  5281|
|6-24 months |JiVitA-4       |BANGLADESH   |Female |         1|    187|  5281|
|6-24 months |JiVitA-4       |BANGLADESH   |Male   |         0|   2400|  5281|
|6-24 months |JiVitA-4       |BANGLADESH   |Male   |         1|    239|  5281|
|6-24 months |Keneba         |GAMBIA       |Female |         0|   1123|  2444|
|6-24 months |Keneba         |GAMBIA       |Female |         1|     60|  2444|
|6-24 months |Keneba         |GAMBIA       |Male   |         0|   1176|  2444|
|6-24 months |Keneba         |GAMBIA       |Male   |         1|     85|  2444|
|6-24 months |LCNI-5         |MALAWI       |Female |         0|    358|   719|
|6-24 months |LCNI-5         |MALAWI       |Female |         1|      2|   719|
|6-24 months |LCNI-5         |MALAWI       |Male   |         0|    355|   719|
|6-24 months |LCNI-5         |MALAWI       |Male   |         1|      4|   719|
|6-24 months |MAL-ED         |INDIA        |Female |         0|    125|   241|
|6-24 months |MAL-ED         |INDIA        |Female |         1|      8|   241|
|6-24 months |MAL-ED         |INDIA        |Male   |         0|     95|   241|
|6-24 months |MAL-ED         |INDIA        |Male   |         1|     13|   241|
|6-24 months |MAL-ED         |BANGLADESH   |Female |         0|    116|   248|
|6-24 months |MAL-ED         |BANGLADESH   |Female |         1|      9|   248|
|6-24 months |MAL-ED         |BANGLADESH   |Male   |         0|    119|   248|
|6-24 months |MAL-ED         |BANGLADESH   |Male   |         1|      4|   248|
|6-24 months |MAL-ED         |PERU         |Female |         0|    131|   284|
|6-24 months |MAL-ED         |PERU         |Female |         1|      0|   284|
|6-24 months |MAL-ED         |PERU         |Male   |         0|    152|   284|
|6-24 months |MAL-ED         |PERU         |Male   |         1|      1|   284|
|6-24 months |MAL-ED         |NEPAL        |Female |         0|    110|   238|
|6-24 months |MAL-ED         |NEPAL        |Female |         1|      0|   238|
|6-24 months |MAL-ED         |NEPAL        |Male   |         0|    124|   238|
|6-24 months |MAL-ED         |NEPAL        |Male   |         1|      4|   238|
|6-24 months |MAL-ED         |BRAZIL       |Female |         0|    106|   218|
|6-24 months |MAL-ED         |BRAZIL       |Female |         1|      2|   218|
|6-24 months |MAL-ED         |BRAZIL       |Male   |         0|    110|   218|
|6-24 months |MAL-ED         |BRAZIL       |Male   |         1|      0|   218|
|6-24 months |MAL-ED         |TANZANIA     |Female |         0|    128|   253|
|6-24 months |MAL-ED         |TANZANIA     |Female |         1|      0|   253|
|6-24 months |MAL-ED         |TANZANIA     |Male   |         0|    125|   253|
|6-24 months |MAL-ED         |TANZANIA     |Male   |         1|      0|   253|
|6-24 months |MAL-ED         |SOUTH AFRICA |Female |         0|    141|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |Female |         1|      1|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |Male   |         0|    132|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |Male   |         1|      1|   275|
|6-24 months |NIH-Birth      |BANGLADESH   |Female |         0|    228|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |Female |         1|     15|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |Male   |         0|    259|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |Male   |         1|     32|   534|
|6-24 months |NIH-Crypto     |BANGLADESH   |Female |         0|    358|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |Female |         1|     11|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |Male   |         0|    346|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |Male   |         1|     15|   730|
|6-24 months |PROBIT         |BELARUS      |Female |         0|   7941| 16583|
|6-24 months |PROBIT         |BELARUS      |Female |         1|     52| 16583|
|6-24 months |PROBIT         |BELARUS      |Male   |         0|   8508| 16583|
|6-24 months |PROBIT         |BELARUS      |Male   |         1|     82| 16583|
|6-24 months |PROVIDE        |BANGLADESH   |Female |         0|    300|   641|
|6-24 months |PROVIDE        |BANGLADESH   |Female |         1|      5|   641|
|6-24 months |PROVIDE        |BANGLADESH   |Male   |         0|    326|   641|
|6-24 months |PROVIDE        |BANGLADESH   |Male   |         1|     10|   641|
|6-24 months |ResPak         |PAKISTAN     |Female |         0|    113|   256|
|6-24 months |ResPak         |PAKISTAN     |Female |         1|      9|   256|
|6-24 months |ResPak         |PAKISTAN     |Male   |         0|    109|   256|
|6-24 months |ResPak         |PAKISTAN     |Male   |         1|     25|   256|
|6-24 months |SAS-CompFeed   |INDIA        |Female |         0|    566|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |Female |         1|     48|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |Male   |         0|    686|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |Male   |         1|     66|  1366|
|6-24 months |SAS-FoodSuppl  |INDIA        |Female |         0|    166|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |Female |         1|     31|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |Male   |         0|    144|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |Male   |         1|     34|   375|
|6-24 months |TanzaniaChild2 |TANZANIA     |Female |         0|   1053|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |Female |         1|     19|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |Male   |         0|   1055|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |Male   |         1|     39|  2166|
|6-24 months |Vellore Crypto |INDIA        |Female |         0|    165|   410|
|6-24 months |Vellore Crypto |INDIA        |Female |         1|     20|   410|
|6-24 months |Vellore Crypto |INDIA        |Male   |         0|    197|   410|
|6-24 months |Vellore Crypto |INDIA        |Male   |         1|     28|   410|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Female |         0|   4669|  9527|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Female |         1|     59|  9527|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Male   |         0|   4690|  9527|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Male   |         1|    109|  9527|


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
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


