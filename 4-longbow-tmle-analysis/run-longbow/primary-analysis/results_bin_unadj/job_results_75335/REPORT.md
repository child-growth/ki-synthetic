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

**Intervention Variable:** enwast

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |enwast | stunted| n_cell|     n|
|:---------|:--------------|:------------|:------|-------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |0      |       0|     66|    87|
|Birth     |CMC-V-BCS-2002 |INDIA        |0      |       1|      9|    87|
|Birth     |CMC-V-BCS-2002 |INDIA        |1      |       0|      9|    87|
|Birth     |CMC-V-BCS-2002 |INDIA        |1      |       1|      3|    87|
|Birth     |CMIN           |BANGLADESH   |0      |       0|     14|    19|
|Birth     |CMIN           |BANGLADESH   |0      |       1|      1|    19|
|Birth     |CMIN           |BANGLADESH   |1      |       0|      3|    19|
|Birth     |CMIN           |BANGLADESH   |1      |       1|      1|    19|
|Birth     |COHORTS        |INDIA        |0      |       0|   4772|  6231|
|Birth     |COHORTS        |INDIA        |0      |       1|    325|  6231|
|Birth     |COHORTS        |INDIA        |1      |       0|   1074|  6231|
|Birth     |COHORTS        |INDIA        |1      |       1|     60|  6231|
|Birth     |COHORTS        |GUATEMALA    |0      |       0|    540|   762|
|Birth     |COHORTS        |GUATEMALA    |0      |       1|     24|   762|
|Birth     |COHORTS        |GUATEMALA    |1      |       0|    198|   762|
|Birth     |COHORTS        |GUATEMALA    |1      |       1|      0|   762|
|Birth     |COHORTS        |PHILIPPINES  |0      |       0|   2373|  2910|
|Birth     |COHORTS        |PHILIPPINES  |0      |       1|     75|  2910|
|Birth     |COHORTS        |PHILIPPINES  |1      |       0|    451|  2910|
|Birth     |COHORTS        |PHILIPPINES  |1      |       1|     11|  2910|
|Birth     |CONTENT        |PERU         |0      |       0|      2|     2|
|Birth     |CONTENT        |PERU         |0      |       1|      0|     2|
|Birth     |CONTENT        |PERU         |1      |       0|      0|     2|
|Birth     |CONTENT        |PERU         |1      |       1|      0|     2|
|Birth     |EE             |PAKISTAN     |0      |       0|    120|   180|
|Birth     |EE             |PAKISTAN     |0      |       1|     35|   180|
|Birth     |EE             |PAKISTAN     |1      |       0|     20|   180|
|Birth     |EE             |PAKISTAN     |1      |       1|      5|   180|
|Birth     |GMS-Nepal      |NEPAL        |0      |       0|    450|   645|
|Birth     |GMS-Nepal      |NEPAL        |0      |       1|     59|   645|
|Birth     |GMS-Nepal      |NEPAL        |1      |       0|    124|   645|
|Birth     |GMS-Nepal      |NEPAL        |1      |       1|     12|   645|
|Birth     |JiVitA-3       |BANGLADESH   |0      |       0|  13377| 18062|
|Birth     |JiVitA-3       |BANGLADESH   |0      |       1|   2664| 18062|
|Birth     |JiVitA-3       |BANGLADESH   |1      |       0|   1691| 18062|
|Birth     |JiVitA-3       |BANGLADESH   |1      |       1|    330| 18062|
|Birth     |JiVitA-4       |BANGLADESH   |0      |       0|   1777|  2399|
|Birth     |JiVitA-4       |BANGLADESH   |0      |       1|    380|  2399|
|Birth     |JiVitA-4       |BANGLADESH   |1      |       0|    189|  2399|
|Birth     |JiVitA-4       |BANGLADESH   |1      |       1|     53|  2399|
|Birth     |Keneba         |GAMBIA       |0      |       0|   1065|  1488|
|Birth     |Keneba         |GAMBIA       |0      |       1|     37|  1488|
|Birth     |Keneba         |GAMBIA       |1      |       0|    381|  1488|
|Birth     |Keneba         |GAMBIA       |1      |       1|      5|  1488|
|Birth     |MAL-ED         |INDIA        |0      |       0|     33|    45|
|Birth     |MAL-ED         |INDIA        |0      |       1|      7|    45|
|Birth     |MAL-ED         |INDIA        |1      |       0|      4|    45|
|Birth     |MAL-ED         |INDIA        |1      |       1|      1|    45|
|Birth     |MAL-ED         |BANGLADESH   |0      |       0|    155|   215|
|Birth     |MAL-ED         |BANGLADESH   |0      |       1|     24|   215|
|Birth     |MAL-ED         |BANGLADESH   |1      |       0|     32|   215|
|Birth     |MAL-ED         |BANGLADESH   |1      |       1|      4|   215|
|Birth     |MAL-ED         |PERU         |0      |       0|    202|   228|
|Birth     |MAL-ED         |PERU         |0      |       1|     21|   228|
|Birth     |MAL-ED         |PERU         |1      |       0|      5|   228|
|Birth     |MAL-ED         |PERU         |1      |       1|      0|   228|
|Birth     |MAL-ED         |NEPAL        |0      |       0|     24|    26|
|Birth     |MAL-ED         |NEPAL        |0      |       1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |1      |       0|      1|    26|
|Birth     |MAL-ED         |NEPAL        |1      |       1|      1|    26|
|Birth     |MAL-ED         |BRAZIL       |0      |       0|     54|    62|
|Birth     |MAL-ED         |BRAZIL       |0      |       1|      6|    62|
|Birth     |MAL-ED         |BRAZIL       |1      |       0|      2|    62|
|Birth     |MAL-ED         |BRAZIL       |1      |       1|      0|    62|
|Birth     |MAL-ED         |TANZANIA     |0      |       0|    102|   115|
|Birth     |MAL-ED         |TANZANIA     |0      |       1|     12|   115|
|Birth     |MAL-ED         |TANZANIA     |1      |       0|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |1      |       1|      1|   115|
|Birth     |MAL-ED         |SOUTH AFRICA |0      |       0|    100|   121|
|Birth     |MAL-ED         |SOUTH AFRICA |0      |       1|      8|   121|
|Birth     |MAL-ED         |SOUTH AFRICA |1      |       0|     13|   121|
|Birth     |MAL-ED         |SOUTH AFRICA |1      |       1|      0|   121|
|Birth     |NIH-Birth      |BANGLADESH   |0      |       0|    360|   580|
|Birth     |NIH-Birth      |BANGLADESH   |0      |       1|     47|   580|
|Birth     |NIH-Birth      |BANGLADESH   |1      |       0|    151|   580|
|Birth     |NIH-Birth      |BANGLADESH   |1      |       1|     22|   580|
|Birth     |NIH-Crypto     |BANGLADESH   |0      |       0|    468|   713|
|Birth     |NIH-Crypto     |BANGLADESH   |0      |       1|     67|   713|
|Birth     |NIH-Crypto     |BANGLADESH   |1      |       0|    163|   713|
|Birth     |NIH-Crypto     |BANGLADESH   |1      |       1|     15|   713|
|Birth     |PROBIT         |BELARUS      |0      |       0|  10882| 13886|
|Birth     |PROBIT         |BELARUS      |0      |       1|     27| 13886|
|Birth     |PROBIT         |BELARUS      |1      |       0|   2977| 13886|
|Birth     |PROBIT         |BELARUS      |1      |       1|      0| 13886|
|Birth     |PROVIDE        |BANGLADESH   |0      |       0|    386|   532|
|Birth     |PROVIDE        |BANGLADESH   |0      |       1|     29|   532|
|Birth     |PROVIDE        |BANGLADESH   |1      |       0|    105|   532|
|Birth     |PROVIDE        |BANGLADESH   |1      |       1|     12|   532|
|Birth     |ResPak         |PAKISTAN     |0      |       0|     26|    38|
|Birth     |ResPak         |PAKISTAN     |0      |       1|      8|    38|
|Birth     |ResPak         |PAKISTAN     |1      |       0|      2|    38|
|Birth     |ResPak         |PAKISTAN     |1      |       1|      2|    38|
|Birth     |SAS-CompFeed   |INDIA        |0      |       0|    806|  1105|
|Birth     |SAS-CompFeed   |INDIA        |0      |       1|    179|  1105|
|Birth     |SAS-CompFeed   |INDIA        |1      |       0|     97|  1105|
|Birth     |SAS-CompFeed   |INDIA        |1      |       1|     23|  1105|
|Birth     |Vellore Crypto |INDIA        |0      |       0|    228|   364|
|Birth     |Vellore Crypto |INDIA        |0      |       1|     23|   364|
|Birth     |Vellore Crypto |INDIA        |1      |       0|    111|   364|
|Birth     |Vellore Crypto |INDIA        |1      |       1|      2|   364|
|Birth     |ZVITAMBO       |ZIMBABWE     |0      |       0|  10252| 13092|
|Birth     |ZVITAMBO       |ZIMBABWE     |0      |       1|    604| 13092|
|Birth     |ZVITAMBO       |ZIMBABWE     |1      |       0|   2146| 13092|
|Birth     |ZVITAMBO       |ZIMBABWE     |1      |       1|     90| 13092|
|6 months  |CMC-V-BCS-2002 |INDIA        |0      |       0|    196|   363|
|6 months  |CMC-V-BCS-2002 |INDIA        |0      |       1|     76|   363|
|6 months  |CMC-V-BCS-2002 |INDIA        |1      |       0|     57|   363|
|6 months  |CMC-V-BCS-2002 |INDIA        |1      |       1|     34|   363|
|6 months  |CMIN           |BANGLADESH   |0      |       0|    142|   232|
|6 months  |CMIN           |BANGLADESH   |0      |       1|     76|   232|
|6 months  |CMIN           |BANGLADESH   |1      |       0|      8|   232|
|6 months  |CMIN           |BANGLADESH   |1      |       1|      6|   232|
|6 months  |COHORTS        |INDIA        |0      |       0|   4516|  6508|
|6 months  |COHORTS        |INDIA        |0      |       1|    848|  6508|
|6 months  |COHORTS        |INDIA        |1      |       0|    943|  6508|
|6 months  |COHORTS        |INDIA        |1      |       1|    201|  6508|
|6 months  |COHORTS        |GUATEMALA    |0      |       0|    420|   901|
|6 months  |COHORTS        |GUATEMALA    |0      |       1|    305|   901|
|6 months  |COHORTS        |GUATEMALA    |1      |       0|    115|   901|
|6 months  |COHORTS        |GUATEMALA    |1      |       1|     61|   901|
|6 months  |COHORTS        |PHILIPPINES  |0      |       0|   1760|  2593|
|6 months  |COHORTS        |PHILIPPINES  |0      |       1|    431|  2593|
|6 months  |COHORTS        |PHILIPPINES  |1      |       0|    332|  2593|
|6 months  |COHORTS        |PHILIPPINES  |1      |       1|     70|  2593|
|6 months  |CONTENT        |PERU         |0      |       0|    205|   215|
|6 months  |CONTENT        |PERU         |0      |       1|      9|   215|
|6 months  |CONTENT        |PERU         |1      |       0|      1|   215|
|6 months  |CONTENT        |PERU         |1      |       1|      0|   215|
|6 months  |EE             |PAKISTAN     |0      |       0|    152|   292|
|6 months  |EE             |PAKISTAN     |0      |       1|    103|   292|
|6 months  |EE             |PAKISTAN     |1      |       0|     22|   292|
|6 months  |EE             |PAKISTAN     |1      |       1|     15|   292|
|6 months  |GMS-Nepal      |NEPAL        |0      |       0|    345|   528|
|6 months  |GMS-Nepal      |NEPAL        |0      |       1|     76|   528|
|6 months  |GMS-Nepal      |NEPAL        |1      |       0|     86|   528|
|6 months  |GMS-Nepal      |NEPAL        |1      |       1|     21|   528|
|6 months  |Guatemala BSC  |GUATEMALA    |0      |       0|    208|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |0      |       1|     85|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |1      |       0|      1|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |1      |       1|      5|   299|
|6 months  |JiVitA-3       |BANGLADESH   |0      |       0|  10434| 14244|
|6 months  |JiVitA-3       |BANGLADESH   |0      |       1|   2290| 14244|
|6 months  |JiVitA-3       |BANGLADESH   |1      |       0|   1225| 14244|
|6 months  |JiVitA-3       |BANGLADESH   |1      |       1|    295| 14244|
|6 months  |JiVitA-4       |BANGLADESH   |0      |       0|   3163|  4410|
|6 months  |JiVitA-4       |BANGLADESH   |0      |       1|    847|  4410|
|6 months  |JiVitA-4       |BANGLADESH   |1      |       0|    295|  4410|
|6 months  |JiVitA-4       |BANGLADESH   |1      |       1|    105|  4410|
|6 months  |Keneba         |GAMBIA       |0      |       0|   1425|  2029|
|6 months  |Keneba         |GAMBIA       |0      |       1|    216|  2029|
|6 months  |Keneba         |GAMBIA       |1      |       0|    325|  2029|
|6 months  |Keneba         |GAMBIA       |1      |       1|     63|  2029|
|6 months  |LCNI-5         |MALAWI       |0      |       0|    522|   839|
|6 months  |LCNI-5         |MALAWI       |0      |       1|    303|   839|
|6 months  |LCNI-5         |MALAWI       |1      |       0|      8|   839|
|6 months  |LCNI-5         |MALAWI       |1      |       1|      6|   839|
|6 months  |MAL-ED         |INDIA        |0      |       0|    154|   232|
|6 months  |MAL-ED         |INDIA        |0      |       1|     35|   232|
|6 months  |MAL-ED         |INDIA        |1      |       0|     36|   232|
|6 months  |MAL-ED         |INDIA        |1      |       1|      7|   232|
|6 months  |MAL-ED         |BANGLADESH   |0      |       0|    158|   229|
|6 months  |MAL-ED         |BANGLADESH   |0      |       1|     30|   229|
|6 months  |MAL-ED         |BANGLADESH   |1      |       0|     34|   229|
|6 months  |MAL-ED         |BANGLADESH   |1      |       1|      7|   229|
|6 months  |MAL-ED         |PERU         |0      |       0|    205|   266|
|6 months  |MAL-ED         |PERU         |0      |       1|     56|   266|
|6 months  |MAL-ED         |PERU         |1      |       0|      5|   266|
|6 months  |MAL-ED         |PERU         |1      |       1|      0|   266|
|6 months  |MAL-ED         |NEPAL        |0      |       0|    193|   232|
|6 months  |MAL-ED         |NEPAL        |0      |       1|      8|   232|
|6 months  |MAL-ED         |NEPAL        |1      |       0|     29|   232|
|6 months  |MAL-ED         |NEPAL        |1      |       1|      2|   232|
|6 months  |MAL-ED         |BRAZIL       |0      |       0|    186|   199|
|6 months  |MAL-ED         |BRAZIL       |0      |       1|      6|   199|
|6 months  |MAL-ED         |BRAZIL       |1      |       0|      7|   199|
|6 months  |MAL-ED         |BRAZIL       |1      |       1|      0|   199|
|6 months  |MAL-ED         |TANZANIA     |0      |       0|    184|   238|
|6 months  |MAL-ED         |TANZANIA     |0      |       1|     51|   238|
|6 months  |MAL-ED         |TANZANIA     |1      |       0|      2|   238|
|6 months  |MAL-ED         |TANZANIA     |1      |       1|      1|   238|
|6 months  |MAL-ED         |SOUTH AFRICA |0      |       0|    189|   253|
|6 months  |MAL-ED         |SOUTH AFRICA |0      |       1|     46|   253|
|6 months  |MAL-ED         |SOUTH AFRICA |1      |       0|     15|   253|
|6 months  |MAL-ED         |SOUTH AFRICA |1      |       1|      3|   253|
|6 months  |NIH-Birth      |BANGLADESH   |0      |       0|    282|   514|
|6 months  |NIH-Birth      |BANGLADESH   |0      |       1|     86|   514|
|6 months  |NIH-Birth      |BANGLADESH   |1      |       0|    107|   514|
|6 months  |NIH-Birth      |BANGLADESH   |1      |       1|     39|   514|
|6 months  |NIH-Crypto     |BANGLADESH   |0      |       0|    417|   694|
|6 months  |NIH-Crypto     |BANGLADESH   |0      |       1|    100|   694|
|6 months  |NIH-Crypto     |BANGLADESH   |1      |       0|    143|   694|
|6 months  |NIH-Crypto     |BANGLADESH   |1      |       1|     34|   694|
|6 months  |PROBIT         |BELARUS      |0      |       0|  12188| 15753|
|6 months  |PROBIT         |BELARUS      |0      |       1|    501| 15753|
|6 months  |PROBIT         |BELARUS      |1      |       0|   2947| 15753|
|6 months  |PROBIT         |BELARUS      |1      |       1|    117| 15753|
|6 months  |PROVIDE        |BANGLADESH   |0      |       0|    403|   597|
|6 months  |PROVIDE        |BANGLADESH   |0      |       1|     69|   597|
|6 months  |PROVIDE        |BANGLADESH   |1      |       0|    104|   597|
|6 months  |PROVIDE        |BANGLADESH   |1      |       1|     21|   597|
|6 months  |ResPak         |PAKISTAN     |0      |       0|    120|   228|
|6 months  |ResPak         |PAKISTAN     |0      |       1|     65|   228|
|6 months  |ResPak         |PAKISTAN     |1      |       0|     26|   228|
|6 months  |ResPak         |PAKISTAN     |1      |       1|     17|   228|
|6 months  |SAS-CompFeed   |INDIA        |0      |       0|    831|  1213|
|6 months  |SAS-CompFeed   |INDIA        |0      |       1|    243|  1213|
|6 months  |SAS-CompFeed   |INDIA        |1      |       0|     90|  1213|
|6 months  |SAS-CompFeed   |INDIA        |1      |       1|     49|  1213|
|6 months  |SAS-FoodSuppl  |INDIA        |0      |       0|    181|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |0      |       1|    130|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |1      |       0|     36|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |1      |       1|     33|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |0      |       0|   1715|  2020|
|6 months  |TanzaniaChild2 |TANZANIA     |0      |       1|    186|  2020|
|6 months  |TanzaniaChild2 |TANZANIA     |1      |       0|    111|  2020|
|6 months  |TanzaniaChild2 |TANZANIA     |1      |       1|      8|  2020|
|6 months  |Vellore Crypto |INDIA        |0      |       0|    214|   382|
|6 months  |Vellore Crypto |INDIA        |0      |       1|     54|   382|
|6 months  |Vellore Crypto |INDIA        |1      |       0|     84|   382|
|6 months  |Vellore Crypto |INDIA        |1      |       1|     30|   382|
|6 months  |ZVITAMBO       |ZIMBABWE     |0      |       0|   6001|  8174|
|6 months  |ZVITAMBO       |ZIMBABWE     |0      |       1|    903|  8174|
|6 months  |ZVITAMBO       |ZIMBABWE     |1      |       0|    974|  8174|
|6 months  |ZVITAMBO       |ZIMBABWE     |1      |       1|    296|  8174|
|24 months |CMC-V-BCS-2002 |INDIA        |0      |       0|     73|   364|
|24 months |CMC-V-BCS-2002 |INDIA        |0      |       1|    199|   364|
|24 months |CMC-V-BCS-2002 |INDIA        |1      |       0|     29|   364|
|24 months |CMC-V-BCS-2002 |INDIA        |1      |       1|     63|   364|
|24 months |CMIN           |BANGLADESH   |0      |       0|     71|   232|
|24 months |CMIN           |BANGLADESH   |0      |       1|    146|   232|
|24 months |CMIN           |BANGLADESH   |1      |       0|      6|   232|
|24 months |CMIN           |BANGLADESH   |1      |       1|      9|   232|
|24 months |COHORTS        |INDIA        |0      |       0|   2031|  5070|
|24 months |COHORTS        |INDIA        |0      |       1|   2221|  5070|
|24 months |COHORTS        |INDIA        |1      |       0|    393|  5070|
|24 months |COHORTS        |INDIA        |1      |       1|    425|  5070|
|24 months |COHORTS        |GUATEMALA    |0      |       0|    160|  1027|
|24 months |COHORTS        |GUATEMALA    |0      |       1|    714|  1027|
|24 months |COHORTS        |GUATEMALA    |1      |       0|     32|  1027|
|24 months |COHORTS        |GUATEMALA    |1      |       1|    121|  1027|
|24 months |COHORTS        |PHILIPPINES  |0      |       0|    761|  2347|
|24 months |COHORTS        |PHILIPPINES  |0      |       1|   1228|  2347|
|24 months |COHORTS        |PHILIPPINES  |1      |       0|    147|  2347|
|24 months |COHORTS        |PHILIPPINES  |1      |       1|    211|  2347|
|24 months |CONTENT        |PERU         |0      |       0|    150|   164|
|24 months |CONTENT        |PERU         |0      |       1|     13|   164|
|24 months |CONTENT        |PERU         |1      |       0|      1|   164|
|24 months |CONTENT        |PERU         |1      |       1|      0|   164|
|24 months |EE             |PAKISTAN     |0      |       0|     35|   137|
|24 months |EE             |PAKISTAN     |0      |       1|     80|   137|
|24 months |EE             |PAKISTAN     |1      |       0|      7|   137|
|24 months |EE             |PAKISTAN     |1      |       1|     15|   137|
|24 months |GMS-Nepal      |NEPAL        |0      |       0|    204|   455|
|24 months |GMS-Nepal      |NEPAL        |0      |       1|    161|   455|
|24 months |GMS-Nepal      |NEPAL        |1      |       0|     54|   455|
|24 months |GMS-Nepal      |NEPAL        |1      |       1|     36|   455|
|24 months |JiVitA-3       |BANGLADESH   |0      |       0|   3592|  7242|
|24 months |JiVitA-3       |BANGLADESH   |0      |       1|   2830|  7242|
|24 months |JiVitA-3       |BANGLADESH   |1      |       0|    474|  7242|
|24 months |JiVitA-3       |BANGLADESH   |1      |       1|    346|  7242|
|24 months |JiVitA-4       |BANGLADESH   |0      |       0|   2490|  4315|
|24 months |JiVitA-4       |BANGLADESH   |0      |       1|   1453|  4315|
|24 months |JiVitA-4       |BANGLADESH   |1      |       0|    214|  4315|
|24 months |JiVitA-4       |BANGLADESH   |1      |       1|    158|  4315|
|24 months |Keneba         |GAMBIA       |0      |       0|    915|  1677|
|24 months |Keneba         |GAMBIA       |0      |       1|    439|  1677|
|24 months |Keneba         |GAMBIA       |1      |       0|    200|  1677|
|24 months |Keneba         |GAMBIA       |1      |       1|    123|  1677|
|24 months |LCNI-5         |MALAWI       |0      |       0|    317|   579|
|24 months |LCNI-5         |MALAWI       |0      |       1|    252|   579|
|24 months |LCNI-5         |MALAWI       |1      |       0|      4|   579|
|24 months |LCNI-5         |MALAWI       |1      |       1|      6|   579|
|24 months |MAL-ED         |INDIA        |0      |       0|     98|   223|
|24 months |MAL-ED         |INDIA        |0      |       1|     82|   223|
|24 months |MAL-ED         |INDIA        |1      |       0|     32|   223|
|24 months |MAL-ED         |INDIA        |1      |       1|     11|   223|
|24 months |MAL-ED         |BANGLADESH   |0      |       0|     88|   201|
|24 months |MAL-ED         |BANGLADESH   |0      |       1|     76|   201|
|24 months |MAL-ED         |BANGLADESH   |1      |       0|     22|   201|
|24 months |MAL-ED         |BANGLADESH   |1      |       1|     15|   201|
|24 months |MAL-ED         |PERU         |0      |       0|    122|   197|
|24 months |MAL-ED         |PERU         |0      |       1|     71|   197|
|24 months |MAL-ED         |PERU         |1      |       0|      3|   197|
|24 months |MAL-ED         |PERU         |1      |       1|      1|   197|
|24 months |MAL-ED         |NEPAL        |0      |       0|    155|   225|
|24 months |MAL-ED         |NEPAL        |0      |       1|     40|   225|
|24 months |MAL-ED         |NEPAL        |1      |       0|     22|   225|
|24 months |MAL-ED         |NEPAL        |1      |       1|      8|   225|
|24 months |MAL-ED         |BRAZIL       |0      |       0|    147|   160|
|24 months |MAL-ED         |BRAZIL       |0      |       1|      7|   160|
|24 months |MAL-ED         |BRAZIL       |1      |       0|      6|   160|
|24 months |MAL-ED         |BRAZIL       |1      |       1|      0|   160|
|24 months |MAL-ED         |TANZANIA     |0      |       0|     56|   205|
|24 months |MAL-ED         |TANZANIA     |0      |       1|    146|   205|
|24 months |MAL-ED         |TANZANIA     |1      |       0|      2|   205|
|24 months |MAL-ED         |TANZANIA     |1      |       1|      1|   205|
|24 months |MAL-ED         |SOUTH AFRICA |0      |       0|    140|   237|
|24 months |MAL-ED         |SOUTH AFRICA |0      |       1|     81|   237|
|24 months |MAL-ED         |SOUTH AFRICA |1      |       0|     13|   237|
|24 months |MAL-ED         |SOUTH AFRICA |1      |       1|      3|   237|
|24 months |NIH-Birth      |BANGLADESH   |0      |       0|    129|   409|
|24 months |NIH-Birth      |BANGLADESH   |0      |       1|    164|   409|
|24 months |NIH-Birth      |BANGLADESH   |1      |       0|     56|   409|
|24 months |NIH-Birth      |BANGLADESH   |1      |       1|     60|   409|
|24 months |NIH-Crypto     |BANGLADESH   |0      |       0|    276|   500|
|24 months |NIH-Crypto     |BANGLADESH   |0      |       1|     88|   500|
|24 months |NIH-Crypto     |BANGLADESH   |1      |       0|    100|   500|
|24 months |NIH-Crypto     |BANGLADESH   |1      |       1|     36|   500|
|24 months |PROBIT         |BELARUS      |0      |       0|   2921|  4032|
|24 months |PROBIT         |BELARUS      |0      |       1|    197|  4032|
|24 months |PROBIT         |BELARUS      |1      |       0|    837|  4032|
|24 months |PROBIT         |BELARUS      |1      |       1|     77|  4032|
|24 months |PROVIDE        |BANGLADESH   |0      |       0|    303|   570|
|24 months |PROVIDE        |BANGLADESH   |0      |       1|    149|   570|
|24 months |PROVIDE        |BANGLADESH   |1      |       0|     82|   570|
|24 months |PROVIDE        |BANGLADESH   |1      |       1|     36|   570|
|24 months |TanzaniaChild2 |TANZANIA     |0      |       0|      4|     6|
|24 months |TanzaniaChild2 |TANZANIA     |0      |       1|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |1      |       0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |1      |       1|      0|     6|
|24 months |Vellore Crypto |INDIA        |0      |       0|    164|   383|
|24 months |Vellore Crypto |INDIA        |0      |       1|    105|   383|
|24 months |Vellore Crypto |INDIA        |1      |       0|     63|   383|
|24 months |Vellore Crypto |INDIA        |1      |       1|     51|   383|
|24 months |ZVITAMBO       |ZIMBABWE     |0      |       0|    918|  1505|
|24 months |ZVITAMBO       |ZIMBABWE     |0      |       1|    428|  1505|
|24 months |ZVITAMBO       |ZIMBABWE     |1      |       0|    100|  1505|
|24 months |ZVITAMBO       |ZIMBABWE     |1      |       1|     59|  1505|


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
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
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
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


