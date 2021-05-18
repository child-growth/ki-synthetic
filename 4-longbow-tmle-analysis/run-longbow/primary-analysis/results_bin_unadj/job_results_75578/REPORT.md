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

**Outcome Variable:** wast_rec90d

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

|agecat      |studyid        |country      |sex    | wast_rec90d| n_cell|    n|
|:-----------|:--------------|:------------|:------|-----------:|------:|----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Female |           0|     52|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Female |           1|    110|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Male   |           0|     68|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Male   |           1|     94|  324|
|0-24 months |CMIN           |BANGLADESH   |Female |           0|     35|  190|
|0-24 months |CMIN           |BANGLADESH   |Female |           1|     49|  190|
|0-24 months |CMIN           |BANGLADESH   |Male   |           0|     45|  190|
|0-24 months |CMIN           |BANGLADESH   |Male   |           1|     61|  190|
|0-24 months |COHORTS        |INDIA        |Female |           0|    948| 2663|
|0-24 months |COHORTS        |INDIA        |Female |           1|    315| 2663|
|0-24 months |COHORTS        |INDIA        |Male   |           0|   1071| 2663|
|0-24 months |COHORTS        |INDIA        |Male   |           1|    329| 2663|
|0-24 months |COHORTS        |GUATEMALA    |Female |           0|     73|  381|
|0-24 months |COHORTS        |GUATEMALA    |Female |           1|     68|  381|
|0-24 months |COHORTS        |GUATEMALA    |Male   |           0|    140|  381|
|0-24 months |COHORTS        |GUATEMALA    |Male   |           1|    100|  381|
|0-24 months |COHORTS        |PHILIPPINES  |Female |           0|    279| 1689|
|0-24 months |COHORTS        |PHILIPPINES  |Female |           1|    454| 1689|
|0-24 months |COHORTS        |PHILIPPINES  |Male   |           0|    385| 1689|
|0-24 months |COHORTS        |PHILIPPINES  |Male   |           1|    571| 1689|
|0-24 months |CONTENT        |PERU         |Female |           0|      0|    7|
|0-24 months |CONTENT        |PERU         |Female |           1|      2|    7|
|0-24 months |CONTENT        |PERU         |Male   |           0|      1|    7|
|0-24 months |CONTENT        |PERU         |Male   |           1|      4|    7|
|0-24 months |EE             |PAKISTAN     |Female |           0|     66|  323|
|0-24 months |EE             |PAKISTAN     |Female |           1|     85|  323|
|0-24 months |EE             |PAKISTAN     |Male   |           0|     94|  323|
|0-24 months |EE             |PAKISTAN     |Male   |           1|     78|  323|
|0-24 months |GMS-Nepal      |NEPAL        |Female |           0|    134|  643|
|0-24 months |GMS-Nepal      |NEPAL        |Female |           1|    177|  643|
|0-24 months |GMS-Nepal      |NEPAL        |Male   |           0|    162|  643|
|0-24 months |GMS-Nepal      |NEPAL        |Male   |           1|    170|  643|
|0-24 months |Guatemala BSC  |GUATEMALA    |Female |           0|      5|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |Female |           1|      6|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |Male   |           0|     16|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |Male   |           1|     11|   38|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |Female |           0|    339|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |Female |           1|     15|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |Male   |           0|    445|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |Male   |           1|     21|  820|
|0-24 months |JiVitA-3       |BANGLADESH   |Female |           0|   2037| 7571|
|0-24 months |JiVitA-3       |BANGLADESH   |Female |           1|   1616| 7571|
|0-24 months |JiVitA-3       |BANGLADESH   |Male   |           0|   2338| 7571|
|0-24 months |JiVitA-3       |BANGLADESH   |Male   |           1|   1580| 7571|
|0-24 months |JiVitA-4       |BANGLADESH   |Female |           0|    701| 2069|
|0-24 months |JiVitA-4       |BANGLADESH   |Female |           1|    255| 2069|
|0-24 months |JiVitA-4       |BANGLADESH   |Male   |           0|    833| 2069|
|0-24 months |JiVitA-4       |BANGLADESH   |Male   |           1|    280| 2069|
|0-24 months |Keneba         |GAMBIA       |Female |           0|    301| 1828|
|0-24 months |Keneba         |GAMBIA       |Female |           1|    515| 1828|
|0-24 months |Keneba         |GAMBIA       |Male   |           0|    411| 1828|
|0-24 months |Keneba         |GAMBIA       |Male   |           1|    601| 1828|
|0-24 months |LCNI-5         |MALAWI       |Female |           0|     22|   79|
|0-24 months |LCNI-5         |MALAWI       |Female |           1|      3|   79|
|0-24 months |LCNI-5         |MALAWI       |Male   |           0|     44|   79|
|0-24 months |LCNI-5         |MALAWI       |Male   |           1|     10|   79|
|0-24 months |MAL-ED         |INDIA        |Female |           0|     32|  181|
|0-24 months |MAL-ED         |INDIA        |Female |           1|     66|  181|
|0-24 months |MAL-ED         |INDIA        |Male   |           0|     39|  181|
|0-24 months |MAL-ED         |INDIA        |Male   |           1|     44|  181|
|0-24 months |MAL-ED         |BANGLADESH   |Female |           0|     28|  124|
|0-24 months |MAL-ED         |BANGLADESH   |Female |           1|     43|  124|
|0-24 months |MAL-ED         |BANGLADESH   |Male   |           0|     16|  124|
|0-24 months |MAL-ED         |BANGLADESH   |Male   |           1|     37|  124|
|0-24 months |MAL-ED         |PERU         |Female |           0|      1|   35|
|0-24 months |MAL-ED         |PERU         |Female |           1|     10|   35|
|0-24 months |MAL-ED         |PERU         |Male   |           0|      5|   35|
|0-24 months |MAL-ED         |PERU         |Male   |           1|     19|   35|
|0-24 months |MAL-ED         |NEPAL        |Female |           0|      6|   98|
|0-24 months |MAL-ED         |NEPAL        |Female |           1|     41|   98|
|0-24 months |MAL-ED         |NEPAL        |Male   |           0|     14|   98|
|0-24 months |MAL-ED         |NEPAL        |Male   |           1|     37|   98|
|0-24 months |MAL-ED         |BRAZIL       |Female |           0|      4|   24|
|0-24 months |MAL-ED         |BRAZIL       |Female |           1|      5|   24|
|0-24 months |MAL-ED         |BRAZIL       |Male   |           0|      2|   24|
|0-24 months |MAL-ED         |BRAZIL       |Male   |           1|     13|   24|
|0-24 months |MAL-ED         |TANZANIA     |Female |           0|      4|   51|
|0-24 months |MAL-ED         |TANZANIA     |Female |           1|     25|   51|
|0-24 months |MAL-ED         |TANZANIA     |Male   |           0|      5|   51|
|0-24 months |MAL-ED         |TANZANIA     |Male   |           1|     17|   51|
|0-24 months |MAL-ED         |SOUTH AFRICA |Female |           0|      8|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |Female |           1|     29|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |Male   |           0|     10|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |Male   |           1|     40|   87|
|0-24 months |NIH-Birth      |BANGLADESH   |Female |           0|     86|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |Female |           1|     97|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |Male   |           0|    116|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |Male   |           1|    122|  421|
|0-24 months |NIH-Crypto     |BANGLADESH   |Female |           0|     46|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |Female |           1|     96|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |Male   |           0|     71|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |Male   |           1|     97|  310|
|0-24 months |PROBIT         |BELARUS      |Female |           0|    210| 4408|
|0-24 months |PROBIT         |BELARUS      |Female |           1|   1807| 4408|
|0-24 months |PROBIT         |BELARUS      |Male   |           0|    316| 4408|
|0-24 months |PROBIT         |BELARUS      |Male   |           1|   2075| 4408|
|0-24 months |PROVIDE        |BANGLADESH   |Female |           0|     53|  308|
|0-24 months |PROVIDE        |BANGLADESH   |Female |           1|     89|  308|
|0-24 months |PROVIDE        |BANGLADESH   |Male   |           0|     76|  308|
|0-24 months |PROVIDE        |BANGLADESH   |Male   |           1|     90|  308|
|0-24 months |ResPak         |PAKISTAN     |Female |           0|     46|  204|
|0-24 months |ResPak         |PAKISTAN     |Female |           1|     56|  204|
|0-24 months |ResPak         |PAKISTAN     |Male   |           0|     66|  204|
|0-24 months |ResPak         |PAKISTAN     |Male   |           1|     36|  204|
|0-24 months |SAS-CompFeed   |INDIA        |Female |           0|    229|  814|
|0-24 months |SAS-CompFeed   |INDIA        |Female |           1|    150|  814|
|0-24 months |SAS-CompFeed   |INDIA        |Male   |           0|    275|  814|
|0-24 months |SAS-CompFeed   |INDIA        |Male   |           1|    160|  814|
|0-24 months |SAS-FoodSuppl  |INDIA        |Female |           0|    118|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |Female |           1|      3|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |Male   |           0|    103|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |Male   |           1|     10|  234|
|0-24 months |TanzaniaChild2 |TANZANIA     |Female |           0|     94|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |Female |           1|    202|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |Male   |           0|    172|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |Male   |           1|    245|  713|
|0-24 months |Vellore Crypto |INDIA        |Female |           0|     68|  395|
|0-24 months |Vellore Crypto |INDIA        |Female |           1|    112|  395|
|0-24 months |Vellore Crypto |INDIA        |Male   |           0|     94|  395|
|0-24 months |Vellore Crypto |INDIA        |Male   |           1|    121|  395|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Female |           0|    747| 3615|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Female |           1|   1022| 3615|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Male   |           0|    904| 3615|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Male   |           1|    942| 3615|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Female |           0|     30|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Female |           1|     77|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Male   |           0|     36|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Male   |           1|     58|  201|
|0-6 months  |CMIN           |BANGLADESH   |Female |           0|     12|   52|
|0-6 months  |CMIN           |BANGLADESH   |Female |           1|     15|   52|
|0-6 months  |CMIN           |BANGLADESH   |Male   |           0|     13|   52|
|0-6 months  |CMIN           |BANGLADESH   |Male   |           1|     12|   52|
|0-6 months  |COHORTS        |INDIA        |Female |           0|    576| 1796|
|0-6 months  |COHORTS        |INDIA        |Female |           1|    315| 1796|
|0-6 months  |COHORTS        |INDIA        |Male   |           0|    576| 1796|
|0-6 months  |COHORTS        |INDIA        |Male   |           1|    329| 1796|
|0-6 months  |COHORTS        |GUATEMALA    |Female |           0|     16|  215|
|0-6 months  |COHORTS        |GUATEMALA    |Female |           1|     64|  215|
|0-6 months  |COHORTS        |GUATEMALA    |Male   |           0|     39|  215|
|0-6 months  |COHORTS        |GUATEMALA    |Male   |           1|     96|  215|
|0-6 months  |COHORTS        |PHILIPPINES  |Female |           0|     76|  752|
|0-6 months  |COHORTS        |PHILIPPINES  |Female |           1|    247|  752|
|0-6 months  |COHORTS        |PHILIPPINES  |Male   |           0|    122|  752|
|0-6 months  |COHORTS        |PHILIPPINES  |Male   |           1|    307|  752|
|0-6 months  |CONTENT        |PERU         |Female |           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |Female |           1|      1|    4|
|0-6 months  |CONTENT        |PERU         |Male   |           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |Male   |           1|      3|    4|
|0-6 months  |EE             |PAKISTAN     |Female |           0|     22|  127|
|0-6 months  |EE             |PAKISTAN     |Female |           1|     38|  127|
|0-6 months  |EE             |PAKISTAN     |Male   |           0|     33|  127|
|0-6 months  |EE             |PAKISTAN     |Male   |           1|     34|  127|
|0-6 months  |GMS-Nepal      |NEPAL        |Female |           0|     46|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |Female |           1|     78|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |Male   |           0|     58|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |Male   |           1|     81|  263|
|0-6 months  |Guatemala BSC  |GUATEMALA    |Female |           0|      1|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |Female |           1|      2|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |Male   |           0|      5|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |Male   |           1|      2|   10|
|0-6 months  |JiVitA-3       |BANGLADESH   |Female |           0|    742| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH   |Female |           1|   1616| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH   |Male   |           0|    796| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH   |Male   |           1|   1580| 4734|
|0-6 months  |JiVitA-4       |BANGLADESH   |Female |           0|    100|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |Female |           1|    147|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |Male   |           0|    144|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |Male   |           1|    162|  553|
|0-6 months  |Keneba         |GAMBIA       |Female |           0|     72|  724|
|0-6 months  |Keneba         |GAMBIA       |Female |           1|    261|  724|
|0-6 months  |Keneba         |GAMBIA       |Male   |           0|     93|  724|
|0-6 months  |Keneba         |GAMBIA       |Male   |           1|    298|  724|
|0-6 months  |LCNI-5         |MALAWI       |Female |           0|      2|    4|
|0-6 months  |LCNI-5         |MALAWI       |Female |           1|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |Male   |           0|      2|    4|
|0-6 months  |LCNI-5         |MALAWI       |Male   |           1|      0|    4|
|0-6 months  |MAL-ED         |INDIA        |Female |           0|     12|   86|
|0-6 months  |MAL-ED         |INDIA        |Female |           1|     35|   86|
|0-6 months  |MAL-ED         |INDIA        |Male   |           0|     15|   86|
|0-6 months  |MAL-ED         |INDIA        |Male   |           1|     24|   86|
|0-6 months  |MAL-ED         |BANGLADESH   |Female |           0|      8|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |Female |           1|     26|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |Male   |           0|      5|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |Male   |           1|     24|   63|
|0-6 months  |MAL-ED         |PERU         |Female |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |Female |           1|      4|   11|
|0-6 months  |MAL-ED         |PERU         |Male   |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |Male   |           1|      7|   11|
|0-6 months  |MAL-ED         |NEPAL        |Female |           0|      2|   48|
|0-6 months  |MAL-ED         |NEPAL        |Female |           1|     19|   48|
|0-6 months  |MAL-ED         |NEPAL        |Male   |           0|      7|   48|
|0-6 months  |MAL-ED         |NEPAL        |Male   |           1|     20|   48|
|0-6 months  |MAL-ED         |BRAZIL       |Female |           0|      1|   15|
|0-6 months  |MAL-ED         |BRAZIL       |Female |           1|      4|   15|
|0-6 months  |MAL-ED         |BRAZIL       |Male   |           0|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |Male   |           1|     10|   15|
|0-6 months  |MAL-ED         |TANZANIA     |Female |           0|      1|   14|
|0-6 months  |MAL-ED         |TANZANIA     |Female |           1|     10|   14|
|0-6 months  |MAL-ED         |TANZANIA     |Male   |           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |Male   |           1|      3|   14|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Female |           0|      3|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Female |           1|     14|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Male   |           0|      6|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Male   |           1|     13|   36|
|0-6 months  |NIH-Birth      |BANGLADESH   |Female |           0|     34|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |Female |           1|     70|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |Male   |           0|     30|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |Male   |           1|     89|  223|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Female |           0|      9|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Female |           1|     87|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Male   |           0|     12|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Male   |           1|     89|  197|
|0-6 months  |PROBIT         |BELARUS      |Female |           0|    177| 4267|
|0-6 months  |PROBIT         |BELARUS      |Female |           1|   1791| 4267|
|0-6 months  |PROBIT         |BELARUS      |Male   |           0|    246| 4267|
|0-6 months  |PROBIT         |BELARUS      |Male   |           1|   2053| 4267|
|0-6 months  |PROVIDE        |BANGLADESH   |Female |           0|     18|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |Female |           1|     71|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |Male   |           0|     22|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |Male   |           1|     74|  185|
|0-6 months  |ResPak         |PAKISTAN     |Female |           0|     13|  113|
|0-6 months  |ResPak         |PAKISTAN     |Female |           1|     42|  113|
|0-6 months  |ResPak         |PAKISTAN     |Male   |           0|     30|  113|
|0-6 months  |ResPak         |PAKISTAN     |Male   |           1|     28|  113|
|0-6 months  |SAS-CompFeed   |INDIA        |Female |           0|     82|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |Female |           1|     88|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |Male   |           0|     84|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |Male   |           1|     87|  341|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Female |           0|     44|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Female |           1|      0|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Male   |           0|     34|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Male   |           1|      0|   78|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Female |           0|     35|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Female |           1|    109|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Male   |           0|     66|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Male   |           1|    130|  340|
|0-6 months  |Vellore Crypto |INDIA        |Female |           0|     34|  240|
|0-6 months  |Vellore Crypto |INDIA        |Female |           1|     76|  240|
|0-6 months  |Vellore Crypto |INDIA        |Male   |           0|     53|  240|
|0-6 months  |Vellore Crypto |INDIA        |Male   |           1|     77|  240|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Female |           0|    314| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Female |           1|    982| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Male   |           0|    322| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Male   |           1|    901| 2519|
|6-24 months |CMC-V-BCS-2002 |INDIA        |Female |           0|     22|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |Female |           1|     33|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |Male   |           0|     32|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |Male   |           1|     36|  123|
|6-24 months |CMIN           |BANGLADESH   |Female |           0|     23|  138|
|6-24 months |CMIN           |BANGLADESH   |Female |           1|     34|  138|
|6-24 months |CMIN           |BANGLADESH   |Male   |           0|     32|  138|
|6-24 months |CMIN           |BANGLADESH   |Male   |           1|     49|  138|
|6-24 months |COHORTS        |INDIA        |Female |           0|    372|  867|
|6-24 months |COHORTS        |INDIA        |Female |           1|      0|  867|
|6-24 months |COHORTS        |INDIA        |Male   |           0|    495|  867|
|6-24 months |COHORTS        |INDIA        |Male   |           1|      0|  867|
|6-24 months |COHORTS        |GUATEMALA    |Female |           0|     57|  166|
|6-24 months |COHORTS        |GUATEMALA    |Female |           1|      4|  166|
|6-24 months |COHORTS        |GUATEMALA    |Male   |           0|    101|  166|
|6-24 months |COHORTS        |GUATEMALA    |Male   |           1|      4|  166|
|6-24 months |COHORTS        |PHILIPPINES  |Female |           0|    203|  937|
|6-24 months |COHORTS        |PHILIPPINES  |Female |           1|    207|  937|
|6-24 months |COHORTS        |PHILIPPINES  |Male   |           0|    263|  937|
|6-24 months |COHORTS        |PHILIPPINES  |Male   |           1|    264|  937|
|6-24 months |CONTENT        |PERU         |Female |           0|      0|    3|
|6-24 months |CONTENT        |PERU         |Female |           1|      1|    3|
|6-24 months |CONTENT        |PERU         |Male   |           0|      1|    3|
|6-24 months |CONTENT        |PERU         |Male   |           1|      1|    3|
|6-24 months |EE             |PAKISTAN     |Female |           0|     44|  196|
|6-24 months |EE             |PAKISTAN     |Female |           1|     47|  196|
|6-24 months |EE             |PAKISTAN     |Male   |           0|     61|  196|
|6-24 months |EE             |PAKISTAN     |Male   |           1|     44|  196|
|6-24 months |GMS-Nepal      |NEPAL        |Female |           0|     88|  380|
|6-24 months |GMS-Nepal      |NEPAL        |Female |           1|     99|  380|
|6-24 months |GMS-Nepal      |NEPAL        |Male   |           0|    104|  380|
|6-24 months |GMS-Nepal      |NEPAL        |Male   |           1|     89|  380|
|6-24 months |Guatemala BSC  |GUATEMALA    |Female |           0|      4|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |Female |           1|      4|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |Male   |           0|     11|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |Male   |           1|      9|   28|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |Female |           0|    339|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |Female |           1|     15|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |Male   |           0|    445|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |Male   |           1|     21|  820|
|6-24 months |JiVitA-3       |BANGLADESH   |Female |           0|   1295| 2837|
|6-24 months |JiVitA-3       |BANGLADESH   |Female |           1|      0| 2837|
|6-24 months |JiVitA-3       |BANGLADESH   |Male   |           0|   1542| 2837|
|6-24 months |JiVitA-3       |BANGLADESH   |Male   |           1|      0| 2837|
|6-24 months |JiVitA-4       |BANGLADESH   |Female |           0|    601| 1516|
|6-24 months |JiVitA-4       |BANGLADESH   |Female |           1|    108| 1516|
|6-24 months |JiVitA-4       |BANGLADESH   |Male   |           0|    689| 1516|
|6-24 months |JiVitA-4       |BANGLADESH   |Male   |           1|    118| 1516|
|6-24 months |Keneba         |GAMBIA       |Female |           0|    229| 1104|
|6-24 months |Keneba         |GAMBIA       |Female |           1|    254| 1104|
|6-24 months |Keneba         |GAMBIA       |Male   |           0|    318| 1104|
|6-24 months |Keneba         |GAMBIA       |Male   |           1|    303| 1104|
|6-24 months |LCNI-5         |MALAWI       |Female |           0|     20|   75|
|6-24 months |LCNI-5         |MALAWI       |Female |           1|      3|   75|
|6-24 months |LCNI-5         |MALAWI       |Male   |           0|     42|   75|
|6-24 months |LCNI-5         |MALAWI       |Male   |           1|     10|   75|
|6-24 months |MAL-ED         |INDIA        |Female |           0|     20|   95|
|6-24 months |MAL-ED         |INDIA        |Female |           1|     31|   95|
|6-24 months |MAL-ED         |INDIA        |Male   |           0|     24|   95|
|6-24 months |MAL-ED         |INDIA        |Male   |           1|     20|   95|
|6-24 months |MAL-ED         |BANGLADESH   |Female |           0|     20|   61|
|6-24 months |MAL-ED         |BANGLADESH   |Female |           1|     17|   61|
|6-24 months |MAL-ED         |BANGLADESH   |Male   |           0|     11|   61|
|6-24 months |MAL-ED         |BANGLADESH   |Male   |           1|     13|   61|
|6-24 months |MAL-ED         |PERU         |Female |           0|      1|   24|
|6-24 months |MAL-ED         |PERU         |Female |           1|      6|   24|
|6-24 months |MAL-ED         |PERU         |Male   |           0|      5|   24|
|6-24 months |MAL-ED         |PERU         |Male   |           1|     12|   24|
|6-24 months |MAL-ED         |NEPAL        |Female |           0|      4|   50|
|6-24 months |MAL-ED         |NEPAL        |Female |           1|     22|   50|
|6-24 months |MAL-ED         |NEPAL        |Male   |           0|      7|   50|
|6-24 months |MAL-ED         |NEPAL        |Male   |           1|     17|   50|
|6-24 months |MAL-ED         |BRAZIL       |Female |           0|      3|    9|
|6-24 months |MAL-ED         |BRAZIL       |Female |           1|      1|    9|
|6-24 months |MAL-ED         |BRAZIL       |Male   |           0|      2|    9|
|6-24 months |MAL-ED         |BRAZIL       |Male   |           1|      3|    9|
|6-24 months |MAL-ED         |TANZANIA     |Female |           0|      3|   37|
|6-24 months |MAL-ED         |TANZANIA     |Female |           1|     15|   37|
|6-24 months |MAL-ED         |TANZANIA     |Male   |           0|      5|   37|
|6-24 months |MAL-ED         |TANZANIA     |Male   |           1|     14|   37|
|6-24 months |MAL-ED         |SOUTH AFRICA |Female |           0|      5|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |Female |           1|     15|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |Male   |           0|      4|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |Male   |           1|     27|   51|
|6-24 months |NIH-Birth      |BANGLADESH   |Female |           0|     52|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |Female |           1|     27|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |Male   |           0|     86|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |Male   |           1|     33|  198|
|6-24 months |NIH-Crypto     |BANGLADESH   |Female |           0|     37|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |Female |           1|      9|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |Male   |           0|     59|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |Male   |           1|      8|  113|
|6-24 months |PROBIT         |BELARUS      |Female |           0|     33|  141|
|6-24 months |PROBIT         |BELARUS      |Female |           1|     16|  141|
|6-24 months |PROBIT         |BELARUS      |Male   |           0|     70|  141|
|6-24 months |PROBIT         |BELARUS      |Male   |           1|     22|  141|
|6-24 months |PROVIDE        |BANGLADESH   |Female |           0|     35|  123|
|6-24 months |PROVIDE        |BANGLADESH   |Female |           1|     18|  123|
|6-24 months |PROVIDE        |BANGLADESH   |Male   |           0|     54|  123|
|6-24 months |PROVIDE        |BANGLADESH   |Male   |           1|     16|  123|
|6-24 months |ResPak         |PAKISTAN     |Female |           0|     33|   91|
|6-24 months |ResPak         |PAKISTAN     |Female |           1|     14|   91|
|6-24 months |ResPak         |PAKISTAN     |Male   |           0|     36|   91|
|6-24 months |ResPak         |PAKISTAN     |Male   |           1|      8|   91|
|6-24 months |SAS-CompFeed   |INDIA        |Female |           0|    147|  473|
|6-24 months |SAS-CompFeed   |INDIA        |Female |           1|     62|  473|
|6-24 months |SAS-CompFeed   |INDIA        |Male   |           0|    191|  473|
|6-24 months |SAS-CompFeed   |INDIA        |Male   |           1|     73|  473|
|6-24 months |SAS-FoodSuppl  |INDIA        |Female |           0|     74|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |Female |           1|      3|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |Male   |           0|     69|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |Male   |           1|     10|  156|
|6-24 months |TanzaniaChild2 |TANZANIA     |Female |           0|     59|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |Female |           1|     93|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |Male   |           0|    106|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |Male   |           1|    115|  373|
|6-24 months |Vellore Crypto |INDIA        |Female |           0|     34|  155|
|6-24 months |Vellore Crypto |INDIA        |Female |           1|     36|  155|
|6-24 months |Vellore Crypto |INDIA        |Male   |           0|     41|  155|
|6-24 months |Vellore Crypto |INDIA        |Male   |           1|     44|  155|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Female |           0|    433| 1096|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Female |           1|     40| 1096|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Male   |           0|    582| 1096|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Male   |           1|     41| 1096|


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
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
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
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


