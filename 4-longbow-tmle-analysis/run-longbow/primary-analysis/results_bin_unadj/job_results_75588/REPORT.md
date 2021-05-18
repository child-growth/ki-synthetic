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

**Intervention Variable:** mage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |mage    | wast_rec90d| n_cell|    n|
|:-----------|:--------------|:------------|:-------|-----------:|------:|----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |           0|     81|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |           1|    142|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |<20     |           0|     22|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |<20     |           1|     37|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |>=30    |           0|     17|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |>=30    |           1|     25|  324|
|0-24 months |COHORTS        |INDIA        |[20-30) |           0|   1013| 2209|
|0-24 months |COHORTS        |INDIA        |[20-30) |           1|    330| 2209|
|0-24 months |COHORTS        |INDIA        |<20     |           0|    229| 2209|
|0-24 months |COHORTS        |INDIA        |<20     |           1|     89| 2209|
|0-24 months |COHORTS        |INDIA        |>=30    |           0|    418| 2209|
|0-24 months |COHORTS        |INDIA        |>=30    |           1|    130| 2209|
|0-24 months |COHORTS        |GUATEMALA    |[20-30) |           0|     95|  378|
|0-24 months |COHORTS        |GUATEMALA    |[20-30) |           1|     76|  378|
|0-24 months |COHORTS        |GUATEMALA    |<20     |           0|     45|  378|
|0-24 months |COHORTS        |GUATEMALA    |<20     |           1|     34|  378|
|0-24 months |COHORTS        |GUATEMALA    |>=30    |           0|     72|  378|
|0-24 months |COHORTS        |GUATEMALA    |>=30    |           1|     56|  378|
|0-24 months |COHORTS        |PHILIPPINES  |[20-30) |           0|    351| 1689|
|0-24 months |COHORTS        |PHILIPPINES  |[20-30) |           1|    536| 1689|
|0-24 months |COHORTS        |PHILIPPINES  |<20     |           0|    119| 1689|
|0-24 months |COHORTS        |PHILIPPINES  |<20     |           1|    181| 1689|
|0-24 months |COHORTS        |PHILIPPINES  |>=30    |           0|    194| 1689|
|0-24 months |COHORTS        |PHILIPPINES  |>=30    |           1|    308| 1689|
|0-24 months |EE             |PAKISTAN     |[20-30) |           0|     65|  322|
|0-24 months |EE             |PAKISTAN     |[20-30) |           1|     63|  322|
|0-24 months |EE             |PAKISTAN     |<20     |           0|      1|  322|
|0-24 months |EE             |PAKISTAN     |<20     |           1|      1|  322|
|0-24 months |EE             |PAKISTAN     |>=30    |           0|     93|  322|
|0-24 months |EE             |PAKISTAN     |>=30    |           1|     99|  322|
|0-24 months |GMS-Nepal      |NEPAL        |[20-30) |           0|    176|  643|
|0-24 months |GMS-Nepal      |NEPAL        |[20-30) |           1|    232|  643|
|0-24 months |GMS-Nepal      |NEPAL        |<20     |           0|     61|  643|
|0-24 months |GMS-Nepal      |NEPAL        |<20     |           1|     75|  643|
|0-24 months |GMS-Nepal      |NEPAL        |>=30    |           0|     59|  643|
|0-24 months |GMS-Nepal      |NEPAL        |>=30    |           1|     40|  643|
|0-24 months |Guatemala BSC  |GUATEMALA    |[20-30) |           0|     11|   35|
|0-24 months |Guatemala BSC  |GUATEMALA    |[20-30) |           1|      9|   35|
|0-24 months |Guatemala BSC  |GUATEMALA    |<20     |           0|      3|   35|
|0-24 months |Guatemala BSC  |GUATEMALA    |<20     |           1|      3|   35|
|0-24 months |Guatemala BSC  |GUATEMALA    |>=30    |           0|      6|   35|
|0-24 months |Guatemala BSC  |GUATEMALA    |>=30    |           1|      3|   35|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |[20-30) |           0|    357|  808|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |[20-30) |           1|     19|  808|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |<20     |           0|    145|  808|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |<20     |           1|      4|  808|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |>=30    |           0|    271|  808|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |>=30    |           1|     12|  808|
|0-24 months |JiVitA-3       |BANGLADESH   |[20-30) |           0|   2002| 7570|
|0-24 months |JiVitA-3       |BANGLADESH   |[20-30) |           1|   1461| 7570|
|0-24 months |JiVitA-3       |BANGLADESH   |<20     |           0|   1989| 7570|
|0-24 months |JiVitA-3       |BANGLADESH   |<20     |           1|   1442| 7570|
|0-24 months |JiVitA-3       |BANGLADESH   |>=30    |           0|    383| 7570|
|0-24 months |JiVitA-3       |BANGLADESH   |>=30    |           1|    293| 7570|
|0-24 months |Keneba         |GAMBIA       |[20-30) |           0|    219| 1826|
|0-24 months |Keneba         |GAMBIA       |[20-30) |           1|    343| 1826|
|0-24 months |Keneba         |GAMBIA       |<20     |           0|     63| 1826|
|0-24 months |Keneba         |GAMBIA       |<20     |           1|     95| 1826|
|0-24 months |Keneba         |GAMBIA       |>=30    |           0|    430| 1826|
|0-24 months |Keneba         |GAMBIA       |>=30    |           1|    676| 1826|
|0-24 months |LCNI-5         |MALAWI       |[20-30) |           0|     25|   76|
|0-24 months |LCNI-5         |MALAWI       |[20-30) |           1|      5|   76|
|0-24 months |LCNI-5         |MALAWI       |<20     |           0|     23|   76|
|0-24 months |LCNI-5         |MALAWI       |<20     |           1|      5|   76|
|0-24 months |LCNI-5         |MALAWI       |>=30    |           0|     15|   76|
|0-24 months |LCNI-5         |MALAWI       |>=30    |           1|      3|   76|
|0-24 months |MAL-ED         |INDIA        |[20-30) |           0|     46|  181|
|0-24 months |MAL-ED         |INDIA        |[20-30) |           1|     77|  181|
|0-24 months |MAL-ED         |INDIA        |<20     |           0|     11|  181|
|0-24 months |MAL-ED         |INDIA        |<20     |           1|     17|  181|
|0-24 months |MAL-ED         |INDIA        |>=30    |           0|     14|  181|
|0-24 months |MAL-ED         |INDIA        |>=30    |           1|     16|  181|
|0-24 months |MAL-ED         |BANGLADESH   |[20-30) |           0|     24|  124|
|0-24 months |MAL-ED         |BANGLADESH   |[20-30) |           1|     43|  124|
|0-24 months |MAL-ED         |BANGLADESH   |<20     |           0|      6|  124|
|0-24 months |MAL-ED         |BANGLADESH   |<20     |           1|     15|  124|
|0-24 months |MAL-ED         |BANGLADESH   |>=30    |           0|     14|  124|
|0-24 months |MAL-ED         |BANGLADESH   |>=30    |           1|     22|  124|
|0-24 months |MAL-ED         |PERU         |[20-30) |           0|      2|   35|
|0-24 months |MAL-ED         |PERU         |[20-30) |           1|      9|   35|
|0-24 months |MAL-ED         |PERU         |<20     |           0|      2|   35|
|0-24 months |MAL-ED         |PERU         |<20     |           1|     12|   35|
|0-24 months |MAL-ED         |PERU         |>=30    |           0|      2|   35|
|0-24 months |MAL-ED         |PERU         |>=30    |           1|      8|   35|
|0-24 months |MAL-ED         |NEPAL        |[20-30) |           0|     12|   98|
|0-24 months |MAL-ED         |NEPAL        |[20-30) |           1|     40|   98|
|0-24 months |MAL-ED         |NEPAL        |<20     |           0|      1|   98|
|0-24 months |MAL-ED         |NEPAL        |<20     |           1|      7|   98|
|0-24 months |MAL-ED         |NEPAL        |>=30    |           0|      7|   98|
|0-24 months |MAL-ED         |NEPAL        |>=30    |           1|     31|   98|
|0-24 months |MAL-ED         |BRAZIL       |[20-30) |           0|      3|   24|
|0-24 months |MAL-ED         |BRAZIL       |[20-30) |           1|      9|   24|
|0-24 months |MAL-ED         |BRAZIL       |<20     |           0|      0|   24|
|0-24 months |MAL-ED         |BRAZIL       |<20     |           1|      3|   24|
|0-24 months |MAL-ED         |BRAZIL       |>=30    |           0|      3|   24|
|0-24 months |MAL-ED         |BRAZIL       |>=30    |           1|      6|   24|
|0-24 months |MAL-ED         |TANZANIA     |[20-30) |           0|      6|   51|
|0-24 months |MAL-ED         |TANZANIA     |[20-30) |           1|     17|   51|
|0-24 months |MAL-ED         |TANZANIA     |<20     |           0|      0|   51|
|0-24 months |MAL-ED         |TANZANIA     |<20     |           1|      1|   51|
|0-24 months |MAL-ED         |TANZANIA     |>=30    |           0|      3|   51|
|0-24 months |MAL-ED         |TANZANIA     |>=30    |           1|     24|   51|
|0-24 months |MAL-ED         |SOUTH AFRICA |[20-30) |           0|      8|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |[20-30) |           1|     31|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |<20     |           0|      4|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |<20     |           1|     11|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=30    |           0|      6|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=30    |           1|     27|   87|
|0-24 months |NIH-Birth      |BANGLADESH   |[20-30) |           0|    118|  420|
|0-24 months |NIH-Birth      |BANGLADESH   |[20-30) |           1|    131|  420|
|0-24 months |NIH-Birth      |BANGLADESH   |<20     |           0|     38|  420|
|0-24 months |NIH-Birth      |BANGLADESH   |<20     |           1|     38|  420|
|0-24 months |NIH-Birth      |BANGLADESH   |>=30    |           0|     45|  420|
|0-24 months |NIH-Birth      |BANGLADESH   |>=30    |           1|     50|  420|
|0-24 months |NIH-Crypto     |BANGLADESH   |[20-30) |           0|     89|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |[20-30) |           1|    138|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |<20     |           0|      8|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |<20     |           1|     15|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=30    |           0|     20|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=30    |           1|     40|  310|
|0-24 months |PROBIT         |BELARUS      |[20-30) |           0|    383| 4408|
|0-24 months |PROBIT         |BELARUS      |[20-30) |           1|   2790| 4408|
|0-24 months |PROBIT         |BELARUS      |<20     |           0|     62| 4408|
|0-24 months |PROBIT         |BELARUS      |<20     |           1|    404| 4408|
|0-24 months |PROBIT         |BELARUS      |>=30    |           0|     81| 4408|
|0-24 months |PROBIT         |BELARUS      |>=30    |           1|    688| 4408|
|0-24 months |PROVIDE        |BANGLADESH   |[20-30) |           0|     90|  308|
|0-24 months |PROVIDE        |BANGLADESH   |[20-30) |           1|    108|  308|
|0-24 months |PROVIDE        |BANGLADESH   |<20     |           0|     15|  308|
|0-24 months |PROVIDE        |BANGLADESH   |<20     |           1|     24|  308|
|0-24 months |PROVIDE        |BANGLADESH   |>=30    |           0|     24|  308|
|0-24 months |PROVIDE        |BANGLADESH   |>=30    |           1|     47|  308|
|0-24 months |SAS-CompFeed   |INDIA        |[20-30) |           0|    374|  814|
|0-24 months |SAS-CompFeed   |INDIA        |[20-30) |           1|    227|  814|
|0-24 months |SAS-CompFeed   |INDIA        |<20     |           0|     80|  814|
|0-24 months |SAS-CompFeed   |INDIA        |<20     |           1|     40|  814|
|0-24 months |SAS-CompFeed   |INDIA        |>=30    |           0|     50|  814|
|0-24 months |SAS-CompFeed   |INDIA        |>=30    |           1|     43|  814|
|0-24 months |SAS-FoodSuppl  |INDIA        |[20-30) |           0|    137|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |[20-30) |           1|      9|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |<20     |           0|     15|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |<20     |           1|      0|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |>=30    |           0|     69|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |>=30    |           1|      4|  234|
|0-24 months |TanzaniaChild2 |TANZANIA     |[20-30) |           0|    143|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |[20-30) |           1|    246|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |<20     |           0|     36|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |<20     |           1|     77|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |>=30    |           0|     87|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |>=30    |           1|    124|  713|
|0-24 months |Vellore Crypto |INDIA        |[20-30) |           0|    106|  395|
|0-24 months |Vellore Crypto |INDIA        |[20-30) |           1|    169|  395|
|0-24 months |Vellore Crypto |INDIA        |<20     |           0|     23|  395|
|0-24 months |Vellore Crypto |INDIA        |<20     |           1|     32|  395|
|0-24 months |Vellore Crypto |INDIA        |>=30    |           0|     33|  395|
|0-24 months |Vellore Crypto |INDIA        |>=30    |           1|     32|  395|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |           0|   1107| 3611|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |           1|   1359| 3611|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<20     |           0|    341| 3611|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<20     |           1|    357| 3611|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=30    |           0|    199| 3611|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=30    |           1|    248| 3611|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |[20-30) |           0|     46|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |[20-30) |           1|     97|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |<20     |           0|     10|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |<20     |           1|     24|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |>=30    |           0|     10|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |>=30    |           1|     14|  201|
|0-6 months  |COHORTS        |INDIA        |[20-30) |           0|    573| 1494|
|0-6 months  |COHORTS        |INDIA        |[20-30) |           1|    330| 1494|
|0-6 months  |COHORTS        |INDIA        |<20     |           0|    131| 1494|
|0-6 months  |COHORTS        |INDIA        |<20     |           1|     89| 1494|
|0-6 months  |COHORTS        |INDIA        |>=30    |           0|    241| 1494|
|0-6 months  |COHORTS        |INDIA        |>=30    |           1|    130| 1494|
|0-6 months  |COHORTS        |GUATEMALA    |[20-30) |           0|     27|  213|
|0-6 months  |COHORTS        |GUATEMALA    |[20-30) |           1|     71|  213|
|0-6 months  |COHORTS        |GUATEMALA    |<20     |           0|     12|  213|
|0-6 months  |COHORTS        |GUATEMALA    |<20     |           1|     34|  213|
|0-6 months  |COHORTS        |GUATEMALA    |>=30    |           0|     16|  213|
|0-6 months  |COHORTS        |GUATEMALA    |>=30    |           1|     53|  213|
|0-6 months  |COHORTS        |PHILIPPINES  |[20-30) |           0|    100|  752|
|0-6 months  |COHORTS        |PHILIPPINES  |[20-30) |           1|    301|  752|
|0-6 months  |COHORTS        |PHILIPPINES  |<20     |           0|     28|  752|
|0-6 months  |COHORTS        |PHILIPPINES  |<20     |           1|     97|  752|
|0-6 months  |COHORTS        |PHILIPPINES  |>=30    |           0|     70|  752|
|0-6 months  |COHORTS        |PHILIPPINES  |>=30    |           1|    156|  752|
|0-6 months  |EE             |PAKISTAN     |[20-30) |           0|     24|  127|
|0-6 months  |EE             |PAKISTAN     |[20-30) |           1|     31|  127|
|0-6 months  |EE             |PAKISTAN     |<20     |           0|      0|  127|
|0-6 months  |EE             |PAKISTAN     |<20     |           1|      0|  127|
|0-6 months  |EE             |PAKISTAN     |>=30    |           0|     31|  127|
|0-6 months  |EE             |PAKISTAN     |>=30    |           1|     41|  127|
|0-6 months  |GMS-Nepal      |NEPAL        |[20-30) |           0|     64|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |[20-30) |           1|    103|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |<20     |           0|     22|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |<20     |           1|     34|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |>=30    |           0|     18|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |>=30    |           1|     22|  263|
|0-6 months  |Guatemala BSC  |GUATEMALA    |[20-30) |           0|      2|    9|
|0-6 months  |Guatemala BSC  |GUATEMALA    |[20-30) |           1|      3|    9|
|0-6 months  |Guatemala BSC  |GUATEMALA    |<20     |           0|      1|    9|
|0-6 months  |Guatemala BSC  |GUATEMALA    |<20     |           1|      0|    9|
|0-6 months  |Guatemala BSC  |GUATEMALA    |>=30    |           0|      3|    9|
|0-6 months  |Guatemala BSC  |GUATEMALA    |>=30    |           1|      0|    9|
|0-6 months  |JiVitA-3       |BANGLADESH   |[20-30) |           0|    727| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH   |[20-30) |           1|   1461| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH   |<20     |           0|    643| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH   |<20     |           1|   1442| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=30    |           0|    168| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=30    |           1|    293| 4734|
|0-6 months  |Keneba         |GAMBIA       |[20-30) |           0|     49|  723|
|0-6 months  |Keneba         |GAMBIA       |[20-30) |           1|    168|  723|
|0-6 months  |Keneba         |GAMBIA       |<20     |           0|     10|  723|
|0-6 months  |Keneba         |GAMBIA       |<20     |           1|     57|  723|
|0-6 months  |Keneba         |GAMBIA       |>=30    |           0|    106|  723|
|0-6 months  |Keneba         |GAMBIA       |>=30    |           1|    333|  723|
|0-6 months  |LCNI-5         |MALAWI       |[20-30) |           0|      1|    3|
|0-6 months  |LCNI-5         |MALAWI       |[20-30) |           1|      0|    3|
|0-6 months  |LCNI-5         |MALAWI       |<20     |           0|      1|    3|
|0-6 months  |LCNI-5         |MALAWI       |<20     |           1|      0|    3|
|0-6 months  |LCNI-5         |MALAWI       |>=30    |           0|      1|    3|
|0-6 months  |LCNI-5         |MALAWI       |>=30    |           1|      0|    3|
|0-6 months  |MAL-ED         |INDIA        |[20-30) |           0|     17|   86|
|0-6 months  |MAL-ED         |INDIA        |[20-30) |           1|     44|   86|
|0-6 months  |MAL-ED         |INDIA        |<20     |           0|      4|   86|
|0-6 months  |MAL-ED         |INDIA        |<20     |           1|      6|   86|
|0-6 months  |MAL-ED         |INDIA        |>=30    |           0|      6|   86|
|0-6 months  |MAL-ED         |INDIA        |>=30    |           1|      9|   86|
|0-6 months  |MAL-ED         |BANGLADESH   |[20-30) |           0|      8|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |[20-30) |           1|     25|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |<20     |           0|      1|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |<20     |           1|     12|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |>=30    |           0|      4|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |>=30    |           1|     13|   63|
|0-6 months  |MAL-ED         |PERU         |[20-30) |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |[20-30) |           1|      6|   11|
|0-6 months  |MAL-ED         |PERU         |<20     |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |<20     |           1|      3|   11|
|0-6 months  |MAL-ED         |PERU         |>=30    |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |>=30    |           1|      2|   11|
|0-6 months  |MAL-ED         |NEPAL        |[20-30) |           0|      5|   48|
|0-6 months  |MAL-ED         |NEPAL        |[20-30) |           1|     18|   48|
|0-6 months  |MAL-ED         |NEPAL        |<20     |           0|      1|   48|
|0-6 months  |MAL-ED         |NEPAL        |<20     |           1|      2|   48|
|0-6 months  |MAL-ED         |NEPAL        |>=30    |           0|      3|   48|
|0-6 months  |MAL-ED         |NEPAL        |>=30    |           1|     19|   48|
|0-6 months  |MAL-ED         |BRAZIL       |[20-30) |           0|      1|   15|
|0-6 months  |MAL-ED         |BRAZIL       |[20-30) |           1|      6|   15|
|0-6 months  |MAL-ED         |BRAZIL       |<20     |           0|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |<20     |           1|      2|   15|
|0-6 months  |MAL-ED         |BRAZIL       |>=30    |           0|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |>=30    |           1|      6|   15|
|0-6 months  |MAL-ED         |TANZANIA     |[20-30) |           0|      1|   14|
|0-6 months  |MAL-ED         |TANZANIA     |[20-30) |           1|      5|   14|
|0-6 months  |MAL-ED         |TANZANIA     |<20     |           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |<20     |           1|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |>=30    |           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |>=30    |           1|      8|   14|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[20-30) |           0|      2|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[20-30) |           1|     11|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<20     |           0|      4|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<20     |           1|      4|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=30    |           0|      3|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=30    |           1|     12|   36|
|0-6 months  |NIH-Birth      |BANGLADESH   |[20-30) |           0|     38|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |[20-30) |           1|     92|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |<20     |           0|     12|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |<20     |           1|     29|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=30    |           0|     14|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=30    |           1|     38|  223|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[20-30) |           0|     14|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[20-30) |           1|    124|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<20     |           0|      2|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<20     |           1|     15|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=30    |           0|      5|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=30    |           1|     37|  197|
|0-6 months  |PROBIT         |BELARUS      |[20-30) |           0|    316| 4267|
|0-6 months  |PROBIT         |BELARUS      |[20-30) |           1|   2761| 4267|
|0-6 months  |PROBIT         |BELARUS      |<20     |           0|     45| 4267|
|0-6 months  |PROBIT         |BELARUS      |<20     |           1|    403| 4267|
|0-6 months  |PROBIT         |BELARUS      |>=30    |           0|     62| 4267|
|0-6 months  |PROBIT         |BELARUS      |>=30    |           1|    680| 4267|
|0-6 months  |PROVIDE        |BANGLADESH   |[20-30) |           0|     27|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |[20-30) |           1|     86|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |<20     |           0|      4|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |<20     |           1|     20|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |>=30    |           0|      9|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |>=30    |           1|     39|  185|
|0-6 months  |SAS-CompFeed   |INDIA        |[20-30) |           0|    125|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |[20-30) |           1|    122|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |<20     |           0|     29|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |<20     |           1|     26|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |>=30    |           0|     12|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |>=30    |           1|     27|  341|
|0-6 months  |SAS-FoodSuppl  |INDIA        |[20-30) |           0|     47|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |[20-30) |           1|      0|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |<20     |           0|      5|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |<20     |           1|      0|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |>=30    |           0|     26|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |>=30    |           1|      0|   78|
|0-6 months  |TanzaniaChild2 |TANZANIA     |[20-30) |           0|     54|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |[20-30) |           1|    124|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |<20     |           0|     13|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |<20     |           1|     44|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |>=30    |           0|     34|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |>=30    |           1|     71|  340|
|0-6 months  |Vellore Crypto |INDIA        |[20-30) |           0|     54|  240|
|0-6 months  |Vellore Crypto |INDIA        |[20-30) |           1|    111|  240|
|0-6 months  |Vellore Crypto |INDIA        |<20     |           0|     10|  240|
|0-6 months  |Vellore Crypto |INDIA        |<20     |           1|     22|  240|
|0-6 months  |Vellore Crypto |INDIA        |>=30    |           0|     23|  240|
|0-6 months  |Vellore Crypto |INDIA        |>=30    |           1|     20|  240|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[20-30) |           0|    435| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[20-30) |           1|   1309| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<20     |           0|    130| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<20     |           1|    336| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=30    |           0|     71| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=30    |           1|    238| 2519|
|6-24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |           0|     35|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |           1|     45|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |<20     |           0|     12|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |<20     |           1|     13|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |>=30    |           0|      7|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |>=30    |           1|     11|  123|
|6-24 months |COHORTS        |INDIA        |[20-30) |           0|    440|  715|
|6-24 months |COHORTS        |INDIA        |[20-30) |           1|      0|  715|
|6-24 months |COHORTS        |INDIA        |<20     |           0|     98|  715|
|6-24 months |COHORTS        |INDIA        |<20     |           1|      0|  715|
|6-24 months |COHORTS        |INDIA        |>=30    |           0|    177|  715|
|6-24 months |COHORTS        |INDIA        |>=30    |           1|      0|  715|
|6-24 months |COHORTS        |GUATEMALA    |[20-30) |           0|     68|  165|
|6-24 months |COHORTS        |GUATEMALA    |[20-30) |           1|      5|  165|
|6-24 months |COHORTS        |GUATEMALA    |<20     |           0|     33|  165|
|6-24 months |COHORTS        |GUATEMALA    |<20     |           1|      0|  165|
|6-24 months |COHORTS        |GUATEMALA    |>=30    |           0|     56|  165|
|6-24 months |COHORTS        |GUATEMALA    |>=30    |           1|      3|  165|
|6-24 months |COHORTS        |PHILIPPINES  |[20-30) |           0|    251|  937|
|6-24 months |COHORTS        |PHILIPPINES  |[20-30) |           1|    235|  937|
|6-24 months |COHORTS        |PHILIPPINES  |<20     |           0|     91|  937|
|6-24 months |COHORTS        |PHILIPPINES  |<20     |           1|     84|  937|
|6-24 months |COHORTS        |PHILIPPINES  |>=30    |           0|    124|  937|
|6-24 months |COHORTS        |PHILIPPINES  |>=30    |           1|    152|  937|
|6-24 months |EE             |PAKISTAN     |[20-30) |           0|     41|  195|
|6-24 months |EE             |PAKISTAN     |[20-30) |           1|     32|  195|
|6-24 months |EE             |PAKISTAN     |<20     |           0|      1|  195|
|6-24 months |EE             |PAKISTAN     |<20     |           1|      1|  195|
|6-24 months |EE             |PAKISTAN     |>=30    |           0|     62|  195|
|6-24 months |EE             |PAKISTAN     |>=30    |           1|     58|  195|
|6-24 months |GMS-Nepal      |NEPAL        |[20-30) |           0|    112|  380|
|6-24 months |GMS-Nepal      |NEPAL        |[20-30) |           1|    129|  380|
|6-24 months |GMS-Nepal      |NEPAL        |<20     |           0|     39|  380|
|6-24 months |GMS-Nepal      |NEPAL        |<20     |           1|     41|  380|
|6-24 months |GMS-Nepal      |NEPAL        |>=30    |           0|     41|  380|
|6-24 months |GMS-Nepal      |NEPAL        |>=30    |           1|     18|  380|
|6-24 months |Guatemala BSC  |GUATEMALA    |[20-30) |           0|      9|   26|
|6-24 months |Guatemala BSC  |GUATEMALA    |[20-30) |           1|      6|   26|
|6-24 months |Guatemala BSC  |GUATEMALA    |<20     |           0|      2|   26|
|6-24 months |Guatemala BSC  |GUATEMALA    |<20     |           1|      3|   26|
|6-24 months |Guatemala BSC  |GUATEMALA    |>=30    |           0|      3|   26|
|6-24 months |Guatemala BSC  |GUATEMALA    |>=30    |           1|      3|   26|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |[20-30) |           0|    357|  808|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |[20-30) |           1|     19|  808|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |<20     |           0|    145|  808|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |<20     |           1|      4|  808|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |>=30    |           0|    271|  808|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |>=30    |           1|     12|  808|
|6-24 months |JiVitA-3       |BANGLADESH   |[20-30) |           0|   1275| 2836|
|6-24 months |JiVitA-3       |BANGLADESH   |[20-30) |           1|      0| 2836|
|6-24 months |JiVitA-3       |BANGLADESH   |<20     |           0|   1346| 2836|
|6-24 months |JiVitA-3       |BANGLADESH   |<20     |           1|      0| 2836|
|6-24 months |JiVitA-3       |BANGLADESH   |>=30    |           0|    215| 2836|
|6-24 months |JiVitA-3       |BANGLADESH   |>=30    |           1|      0| 2836|
|6-24 months |Keneba         |GAMBIA       |[20-30) |           0|    170| 1103|
|6-24 months |Keneba         |GAMBIA       |[20-30) |           1|    175| 1103|
|6-24 months |Keneba         |GAMBIA       |<20     |           0|     53| 1103|
|6-24 months |Keneba         |GAMBIA       |<20     |           1|     38| 1103|
|6-24 months |Keneba         |GAMBIA       |>=30    |           0|    324| 1103|
|6-24 months |Keneba         |GAMBIA       |>=30    |           1|    343| 1103|
|6-24 months |LCNI-5         |MALAWI       |[20-30) |           0|     24|   73|
|6-24 months |LCNI-5         |MALAWI       |[20-30) |           1|      5|   73|
|6-24 months |LCNI-5         |MALAWI       |<20     |           0|     22|   73|
|6-24 months |LCNI-5         |MALAWI       |<20     |           1|      5|   73|
|6-24 months |LCNI-5         |MALAWI       |>=30    |           0|     14|   73|
|6-24 months |LCNI-5         |MALAWI       |>=30    |           1|      3|   73|
|6-24 months |MAL-ED         |INDIA        |[20-30) |           0|     29|   95|
|6-24 months |MAL-ED         |INDIA        |[20-30) |           1|     33|   95|
|6-24 months |MAL-ED         |INDIA        |<20     |           0|      7|   95|
|6-24 months |MAL-ED         |INDIA        |<20     |           1|     11|   95|
|6-24 months |MAL-ED         |INDIA        |>=30    |           0|      8|   95|
|6-24 months |MAL-ED         |INDIA        |>=30    |           1|      7|   95|
|6-24 months |MAL-ED         |BANGLADESH   |[20-30) |           0|     16|   61|
|6-24 months |MAL-ED         |BANGLADESH   |[20-30) |           1|     18|   61|
|6-24 months |MAL-ED         |BANGLADESH   |<20     |           0|      5|   61|
|6-24 months |MAL-ED         |BANGLADESH   |<20     |           1|      3|   61|
|6-24 months |MAL-ED         |BANGLADESH   |>=30    |           0|     10|   61|
|6-24 months |MAL-ED         |BANGLADESH   |>=30    |           1|      9|   61|
|6-24 months |MAL-ED         |PERU         |[20-30) |           0|      2|   24|
|6-24 months |MAL-ED         |PERU         |[20-30) |           1|      3|   24|
|6-24 months |MAL-ED         |PERU         |<20     |           0|      2|   24|
|6-24 months |MAL-ED         |PERU         |<20     |           1|      9|   24|
|6-24 months |MAL-ED         |PERU         |>=30    |           0|      2|   24|
|6-24 months |MAL-ED         |PERU         |>=30    |           1|      6|   24|
|6-24 months |MAL-ED         |NEPAL        |[20-30) |           0|      7|   50|
|6-24 months |MAL-ED         |NEPAL        |[20-30) |           1|     22|   50|
|6-24 months |MAL-ED         |NEPAL        |<20     |           0|      0|   50|
|6-24 months |MAL-ED         |NEPAL        |<20     |           1|      5|   50|
|6-24 months |MAL-ED         |NEPAL        |>=30    |           0|      4|   50|
|6-24 months |MAL-ED         |NEPAL        |>=30    |           1|     12|   50|
|6-24 months |MAL-ED         |BRAZIL       |[20-30) |           0|      2|    9|
|6-24 months |MAL-ED         |BRAZIL       |[20-30) |           1|      3|    9|
|6-24 months |MAL-ED         |BRAZIL       |<20     |           0|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |<20     |           1|      1|    9|
|6-24 months |MAL-ED         |BRAZIL       |>=30    |           0|      3|    9|
|6-24 months |MAL-ED         |BRAZIL       |>=30    |           1|      0|    9|
|6-24 months |MAL-ED         |TANZANIA     |[20-30) |           0|      5|   37|
|6-24 months |MAL-ED         |TANZANIA     |[20-30) |           1|     12|   37|
|6-24 months |MAL-ED         |TANZANIA     |<20     |           0|      0|   37|
|6-24 months |MAL-ED         |TANZANIA     |<20     |           1|      1|   37|
|6-24 months |MAL-ED         |TANZANIA     |>=30    |           0|      3|   37|
|6-24 months |MAL-ED         |TANZANIA     |>=30    |           1|     16|   37|
|6-24 months |MAL-ED         |SOUTH AFRICA |[20-30) |           0|      6|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |[20-30) |           1|     20|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |<20     |           0|      0|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |<20     |           1|      7|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |>=30    |           0|      3|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |>=30    |           1|     15|   51|
|6-24 months |NIH-Birth      |BANGLADESH   |[20-30) |           0|     80|  197|
|6-24 months |NIH-Birth      |BANGLADESH   |[20-30) |           1|     39|  197|
|6-24 months |NIH-Birth      |BANGLADESH   |<20     |           0|     26|  197|
|6-24 months |NIH-Birth      |BANGLADESH   |<20     |           1|      9|  197|
|6-24 months |NIH-Birth      |BANGLADESH   |>=30    |           0|     31|  197|
|6-24 months |NIH-Birth      |BANGLADESH   |>=30    |           1|     12|  197|
|6-24 months |NIH-Crypto     |BANGLADESH   |[20-30) |           0|     75|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |[20-30) |           1|     14|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |<20     |           0|      6|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |<20     |           1|      0|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |>=30    |           0|     15|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |>=30    |           1|      3|  113|
|6-24 months |PROBIT         |BELARUS      |[20-30) |           0|     67|  141|
|6-24 months |PROBIT         |BELARUS      |[20-30) |           1|     29|  141|
|6-24 months |PROBIT         |BELARUS      |<20     |           0|     17|  141|
|6-24 months |PROBIT         |BELARUS      |<20     |           1|      1|  141|
|6-24 months |PROBIT         |BELARUS      |>=30    |           0|     19|  141|
|6-24 months |PROBIT         |BELARUS      |>=30    |           1|      8|  141|
|6-24 months |PROVIDE        |BANGLADESH   |[20-30) |           0|     63|  123|
|6-24 months |PROVIDE        |BANGLADESH   |[20-30) |           1|     22|  123|
|6-24 months |PROVIDE        |BANGLADESH   |<20     |           0|     11|  123|
|6-24 months |PROVIDE        |BANGLADESH   |<20     |           1|      4|  123|
|6-24 months |PROVIDE        |BANGLADESH   |>=30    |           0|     15|  123|
|6-24 months |PROVIDE        |BANGLADESH   |>=30    |           1|      8|  123|
|6-24 months |SAS-CompFeed   |INDIA        |[20-30) |           0|    249|  473|
|6-24 months |SAS-CompFeed   |INDIA        |[20-30) |           1|    105|  473|
|6-24 months |SAS-CompFeed   |INDIA        |<20     |           0|     51|  473|
|6-24 months |SAS-CompFeed   |INDIA        |<20     |           1|     14|  473|
|6-24 months |SAS-CompFeed   |INDIA        |>=30    |           0|     38|  473|
|6-24 months |SAS-CompFeed   |INDIA        |>=30    |           1|     16|  473|
|6-24 months |SAS-FoodSuppl  |INDIA        |[20-30) |           0|     90|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |[20-30) |           1|      9|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |<20     |           0|     10|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |<20     |           1|      0|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |>=30    |           0|     43|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |>=30    |           1|      4|  156|
|6-24 months |TanzaniaChild2 |TANZANIA     |[20-30) |           0|     89|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |[20-30) |           1|    122|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |<20     |           0|     23|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |<20     |           1|     33|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |>=30    |           0|     53|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |>=30    |           1|     53|  373|
|6-24 months |Vellore Crypto |INDIA        |[20-30) |           0|     52|  155|
|6-24 months |Vellore Crypto |INDIA        |[20-30) |           1|     58|  155|
|6-24 months |Vellore Crypto |INDIA        |<20     |           0|     13|  155|
|6-24 months |Vellore Crypto |INDIA        |<20     |           1|     10|  155|
|6-24 months |Vellore Crypto |INDIA        |>=30    |           0|     10|  155|
|6-24 months |Vellore Crypto |INDIA        |>=30    |           1|     12|  155|
|6-24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |           0|    672| 1092|
|6-24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |           1|     50| 1092|
|6-24 months |ZVITAMBO       |ZIMBABWE     |<20     |           0|    211| 1092|
|6-24 months |ZVITAMBO       |ZIMBABWE     |<20     |           1|     21| 1092|
|6-24 months |ZVITAMBO       |ZIMBABWE     |>=30    |           0|    128| 1092|
|6-24 months |ZVITAMBO       |ZIMBABWE     |>=30    |           1|     10| 1092|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
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


