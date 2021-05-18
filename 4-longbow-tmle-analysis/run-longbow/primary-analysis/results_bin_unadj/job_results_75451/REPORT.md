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

**Outcome Variable:** ever_stunted

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

|agecat                     |studyid        |country      |enwast | ever_stunted| n_cell|     n|
|:--------------------------|:--------------|:------------|:------|------------:|------:|-----:|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |0      |            0|     22|   296|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |0      |            1|    200|   296|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |1      |            0|      6|   296|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |1      |            1|     68|   296|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |0      |            0|     35|   168|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |0      |            1|    120|   168|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |1      |            0|      6|   168|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |1      |            1|      7|   168|
|0-24 months (no birth st.) |COHORTS        |INDIA        |0      |            0|   3848|  6492|
|0-24 months (no birth st.) |COHORTS        |INDIA        |0      |            1|   1481|  6492|
|0-24 months (no birth st.) |COHORTS        |INDIA        |1      |            0|    816|  6492|
|0-24 months (no birth st.) |COHORTS        |INDIA        |1      |            1|    347|  6492|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA    |0      |            0|    237|   971|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA    |0      |            1|    533|   971|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA    |1      |            0|     57|   971|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA    |1      |            1|    144|   971|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES  |0      |            0|    787|  2831|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES  |0      |            1|   1593|  2831|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES  |1      |            0|    162|  2831|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES  |1      |            1|    289|  2831|
|0-24 months (no birth st.) |CONTENT        |PERU         |0      |            0|    161|   195|
|0-24 months (no birth st.) |CONTENT        |PERU         |0      |            1|     33|   195|
|0-24 months (no birth st.) |CONTENT        |PERU         |1      |            0|      1|   195|
|0-24 months (no birth st.) |CONTENT        |PERU         |1      |            1|      0|   195|
|0-24 months (no birth st.) |EE             |PAKISTAN     |0      |            0|     38|   213|
|0-24 months (no birth st.) |EE             |PAKISTAN     |0      |            1|    144|   213|
|0-24 months (no birth st.) |EE             |PAKISTAN     |1      |            0|      3|   213|
|0-24 months (no birth st.) |EE             |PAKISTAN     |1      |            1|     28|   213|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |0      |            0|    197|   575|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |0      |            1|    254|   575|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |1      |            0|     54|   575|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |1      |            1|     70|   575|
|0-24 months (no birth st.) |Guatemala BSC  |GUATEMALA    |0      |            0|    147|   239|
|0-24 months (no birth st.) |Guatemala BSC  |GUATEMALA    |0      |            1|     91|   239|
|0-24 months (no birth st.) |Guatemala BSC  |GUATEMALA    |1      |            0|      1|   239|
|0-24 months (no birth st.) |Guatemala BSC  |GUATEMALA    |1      |            1|      0|   239|
|0-24 months (no birth st.) |iLiNS-Zinc     |BURKINA FASO |0      |            0|   1857|  2533|
|0-24 months (no birth st.) |iLiNS-Zinc     |BURKINA FASO |0      |            1|    369|  2533|
|0-24 months (no birth st.) |iLiNS-Zinc     |BURKINA FASO |1      |            0|    225|  2533|
|0-24 months (no birth st.) |iLiNS-Zinc     |BURKINA FASO |1      |            1|     82|  2533|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |0      |            0|  12244| 18370|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |0      |            1|   4053| 18370|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |1      |            0|   1492| 18370|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |1      |            1|    581| 18370|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |0      |            0|   2092|  3884|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |0      |            1|   1463|  3884|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |1      |            0|    185|  3884|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |1      |            1|    144|  3884|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |0      |            0|   1185|  2572|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |0      |            1|    919|  2572|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |1      |            0|    221|  2572|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |1      |            1|    247|  2572|
|0-24 months (no birth st.) |LCNI-5         |MALAWI       |0      |            0|    302|   531|
|0-24 months (no birth st.) |LCNI-5         |MALAWI       |0      |            1|    221|   531|
|0-24 months (no birth st.) |LCNI-5         |MALAWI       |1      |            0|      3|   531|
|0-24 months (no birth st.) |LCNI-5         |MALAWI       |1      |            1|      5|   531|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |0      |            0|     76|   210|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |0      |            1|     98|   210|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |1      |            0|     23|   210|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |1      |            1|     13|   210|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |0      |            0|     81|   217|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |0      |            1|     98|   217|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |1      |            0|     22|   217|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |1      |            1|     16|   217|
|0-24 months (no birth st.) |MAL-ED         |PERU         |0      |            0|    113|   266|
|0-24 months (no birth st.) |MAL-ED         |PERU         |0      |            1|    148|   266|
|0-24 months (no birth st.) |MAL-ED         |PERU         |1      |            0|      2|   266|
|0-24 months (no birth st.) |MAL-ED         |PERU         |1      |            1|      3|   266|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |0      |            0|    139|   211|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |0      |            1|     45|   211|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |1      |            0|     17|   211|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |1      |            1|     10|   211|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |0      |            0|    163|   200|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |0      |            1|     31|   200|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |1      |            0|      5|   200|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |1      |            1|      1|   200|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |0      |            0|     40|   219|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |0      |            1|    178|   219|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |1      |            0|      0|   219|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |1      |            1|      1|   219|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |0      |            0|    124|   275|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |0      |            1|    131|   275|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |1      |            0|     14|   275|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |1      |            1|      6|   275|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |0      |            0|    142|   530|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |0      |            1|    233|   530|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |1      |            0|     69|   530|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |1      |            1|     86|   530|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |0      |            0|    295|   653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |0      |            1|    190|   653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |1      |            0|    101|   653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |1      |            1|     67|   653|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |0      |            0|  11841| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |0      |            1|   1666| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |1      |            0|   2903| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |1      |            1|    355| 16765|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |0      |            0|    317|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |0      |            1|    185|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |1      |            0|     78|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |1      |            1|     53|   633|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |0      |            0|     79|   202|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |0      |            1|     84|   202|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |1      |            0|     18|   202|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |1      |            1|     21|   202|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |0      |            0|    428|  1090|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |0      |            1|    544|  1090|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |1      |            0|     45|  1090|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |1      |            1|     73|  1090|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA        |0      |            0|     62|   257|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA        |0      |            1|    149|   257|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA        |1      |            0|     10|   257|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA        |1      |            1|     36|   257|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |0      |            0|   1473|  2228|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |0      |            1|    621|  2228|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |1      |            0|     90|  2228|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |1      |            1|     44|  2228|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |0      |            0|    103|   354|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |0      |            1|    140|   354|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |1      |            0|     42|   354|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |1      |            1|     69|   354|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |0      |            0|   6971| 12506|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |0      |            1|   3386| 12506|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |1      |            0|   1169| 12506|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |1      |            1|    980| 12506|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |0      |            0|    136|   292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |0      |            1|     82|   292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |1      |            0|     44|   292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |1      |            1|     30|   292|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |0      |            0|    113|   168|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |0      |            1|     42|   168|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |1      |            0|      7|   168|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |1      |            1|      6|   168|
|0-6 months (no birth st.)  |COHORTS        |INDIA        |0      |            0|   4807|  6297|
|0-6 months (no birth st.)  |COHORTS        |INDIA        |0      |            1|    346|  6297|
|0-6 months (no birth st.)  |COHORTS        |INDIA        |1      |            0|   1029|  6297|
|0-6 months (no birth st.)  |COHORTS        |INDIA        |1      |            1|    115|  6297|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA    |0      |            0|    528|   879|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA    |0      |            1|    152|   879|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA    |1      |            0|    158|   879|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA    |1      |            1|     41|   879|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES  |0      |            0|   1938|  2831|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES  |0      |            1|    442|  2831|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES  |1      |            0|    358|  2831|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES  |1      |            1|     93|  2831|
|0-6 months (no birth st.)  |CONTENT        |PERU         |0      |            0|    187|   195|
|0-6 months (no birth st.)  |CONTENT        |PERU         |0      |            1|      7|   195|
|0-6 months (no birth st.)  |CONTENT        |PERU         |1      |            0|      1|   195|
|0-6 months (no birth st.)  |CONTENT        |PERU         |1      |            1|      0|   195|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |0      |            0|     81|   213|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |0      |            1|    101|   213|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |1      |            0|     14|   213|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |1      |            1|     17|   213|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |0      |            0|    378|   575|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |0      |            1|     73|   575|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |1      |            0|     97|   575|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |1      |            1|     27|   575|
|0-6 months (no birth st.)  |Guatemala BSC  |GUATEMALA    |0      |            0|    202|   223|
|0-6 months (no birth st.)  |Guatemala BSC  |GUATEMALA    |0      |            1|     21|   223|
|0-6 months (no birth st.)  |Guatemala BSC  |GUATEMALA    |1      |            0|      0|   223|
|0-6 months (no birth st.)  |Guatemala BSC  |GUATEMALA    |1      |            1|      0|   223|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |0      |            0|  14250| 18326|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |0      |            1|   2006| 18326|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |1      |            0|   1688| 18326|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |1      |            1|    382| 18326|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |0      |            0|   3067|  3657|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |0      |            1|    277|  3657|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |1      |            0|    277|  3657|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |1      |            1|     36|  3657|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |0      |            0|   1356|  2211|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |0      |            1|    418|  2211|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |1      |            0|    320|  2211|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |1      |            1|    117|  2211|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI       |0      |            0|    171|   175|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI       |0      |            1|      0|   175|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI       |1      |            0|      4|   175|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI       |1      |            1|      0|   175|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |0      |            0|    134|   210|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |0      |            1|     40|   210|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |1      |            0|     30|   210|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |1      |            1|      6|   210|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |0      |            0|    139|   217|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |0      |            1|     40|   217|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |1      |            0|     31|   217|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |1      |            1|      7|   217|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |0      |            0|    170|   266|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |0      |            1|     91|   266|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |1      |            0|      4|   266|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |1      |            1|      1|   266|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |0      |            0|    173|   211|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |0      |            1|     11|   211|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |1      |            0|     24|   211|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |1      |            1|      3|   211|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |0      |            0|    173|   200|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |0      |            1|     21|   200|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |1      |            0|      6|   200|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |1      |            1|      0|   200|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |0      |            0|    152|   219|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |0      |            1|     66|   219|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |1      |            0|      1|   219|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |1      |            1|      0|   219|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |0      |            0|    182|   275|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |0      |            1|     73|   275|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |1      |            0|     16|   275|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |1      |            1|      4|   275|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |0      |            0|    293|   530|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |0      |            1|     82|   530|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |1      |            0|    116|   530|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |1      |            1|     39|   530|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH   |0      |            0|    398|   653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH   |0      |            1|     87|   653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH   |1      |            0|    131|   653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH   |1      |            1|     37|   653|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |0      |            0|  12619| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |0      |            1|    886| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |1      |            0|   3114| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |1      |            1|    144| 16763|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |0      |            0|    428|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |0      |            1|     74|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |1      |            0|    104|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |1      |            1|     27|   633|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |0      |            0|     93|   202|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |0      |            1|     70|   202|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |1      |            0|     21|   202|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |1      |            1|     18|   202|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |0      |            0|    792|  1089|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |0      |            1|    180|  1089|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |1      |            0|     87|  1089|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |1      |            1|     30|  1089|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA        |0      |            0|    208|   257|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA        |0      |            1|      3|   257|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA        |1      |            0|     46|   257|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA        |1      |            1|      0|   257|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |0      |            0|   1810|  2228|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |0      |            1|    284|  2228|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |1      |            0|    113|  2228|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |1      |            1|     21|  2228|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |0      |            0|    166|   354|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |0      |            1|     77|   354|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |1      |            0|     68|   354|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |1      |            1|     43|   354|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |0      |            0|   8839| 12496|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |0      |            1|   1509| 12496|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |1      |            0|   1507| 12496|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |1      |            1|    641| 12496|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |0      |            0|     22|   184|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |0      |            1|    118|   184|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |1      |            0|      6|   184|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |1      |            1|     38|   184|
|6-24 months                |CMIN           |BANGLADESH   |0      |            0|     28|   111|
|6-24 months                |CMIN           |BANGLADESH   |0      |            1|     78|   111|
|6-24 months                |CMIN           |BANGLADESH   |1      |            0|      4|   111|
|6-24 months                |CMIN           |BANGLADESH   |1      |            1|      1|   111|
|6-24 months                |COHORTS        |INDIA        |0      |            0|   3541|  5701|
|6-24 months                |COHORTS        |INDIA        |0      |            1|   1171|  5701|
|6-24 months                |COHORTS        |INDIA        |1      |            0|    750|  5701|
|6-24 months                |COHORTS        |INDIA        |1      |            1|    239|  5701|
|6-24 months                |COHORTS        |GUATEMALA    |0      |            0|    165|   868|
|6-24 months                |COHORTS        |GUATEMALA    |0      |            1|    556|   868|
|6-24 months                |COHORTS        |GUATEMALA    |1      |            0|     36|   868|
|6-24 months                |COHORTS        |GUATEMALA    |1      |            1|    111|   868|
|6-24 months                |COHORTS        |PHILIPPINES  |0      |            0|    620|  2093|
|6-24 months                |COHORTS        |PHILIPPINES  |0      |            1|   1151|  2093|
|6-24 months                |COHORTS        |PHILIPPINES  |1      |            0|    126|  2093|
|6-24 months                |COHORTS        |PHILIPPINES  |1      |            1|    196|  2093|
|6-24 months                |CONTENT        |PERU         |0      |            0|    161|   188|
|6-24 months                |CONTENT        |PERU         |0      |            1|     26|   188|
|6-24 months                |CONTENT        |PERU         |1      |            0|      1|   188|
|6-24 months                |CONTENT        |PERU         |1      |            1|      0|   188|
|6-24 months                |EE             |PAKISTAN     |0      |            0|     36|    93|
|6-24 months                |EE             |PAKISTAN     |0      |            1|     43|    93|
|6-24 months                |EE             |PAKISTAN     |1      |            0|      3|    93|
|6-24 months                |EE             |PAKISTAN     |1      |            1|     11|    93|
|6-24 months                |GMS-Nepal      |NEPAL        |0      |            0|    137|   396|
|6-24 months                |GMS-Nepal      |NEPAL        |0      |            1|    181|   396|
|6-24 months                |GMS-Nepal      |NEPAL        |1      |            0|     35|   396|
|6-24 months                |GMS-Nepal      |NEPAL        |1      |            1|     43|   396|
|6-24 months                |Guatemala BSC  |GUATEMALA    |0      |            0|    120|   195|
|6-24 months                |Guatemala BSC  |GUATEMALA    |0      |            1|     74|   195|
|6-24 months                |Guatemala BSC  |GUATEMALA    |1      |            0|      1|   195|
|6-24 months                |Guatemala BSC  |GUATEMALA    |1      |            1|      0|   195|
|6-24 months                |iLiNS-Zinc     |BURKINA FASO |0      |            0|   1857|  3265|
|6-24 months                |iLiNS-Zinc     |BURKINA FASO |0      |            1|    859|  3265|
|6-24 months                |iLiNS-Zinc     |BURKINA FASO |1      |            0|    225|  3265|
|6-24 months                |iLiNS-Zinc     |BURKINA FASO |1      |            1|    324|  3265|
|6-24 months                |JiVitA-3       |BANGLADESH   |0      |            0|   7376| 10482|
|6-24 months                |JiVitA-3       |BANGLADESH   |0      |            1|   2061| 10482|
|6-24 months                |JiVitA-3       |BANGLADESH   |1      |            0|    845| 10482|
|6-24 months                |JiVitA-3       |BANGLADESH   |1      |            1|    200| 10482|
|6-24 months                |JiVitA-4       |BANGLADESH   |0      |            0|   2084|  3644|
|6-24 months                |JiVitA-4       |BANGLADESH   |0      |            1|   1261|  3644|
|6-24 months                |JiVitA-4       |BANGLADESH   |1      |            0|    184|  3644|
|6-24 months                |JiVitA-4       |BANGLADESH   |1      |            1|    115|  3644|
|6-24 months                |Keneba         |GAMBIA       |0      |            0|   1076|  1999|
|6-24 months                |Keneba         |GAMBIA       |0      |            1|    571|  1999|
|6-24 months                |Keneba         |GAMBIA       |1      |            0|    203|  1999|
|6-24 months                |Keneba         |GAMBIA       |1      |            1|    149|  1999|
|6-24 months                |LCNI-5         |MALAWI       |0      |            0|    289|   730|
|6-24 months                |LCNI-5         |MALAWI       |0      |            1|    427|   730|
|6-24 months                |LCNI-5         |MALAWI       |1      |            0|      3|   730|
|6-24 months                |LCNI-5         |MALAWI       |1      |            1|     11|   730|
|6-24 months                |MAL-ED         |INDIA        |0      |            0|     66|   154|
|6-24 months                |MAL-ED         |INDIA        |0      |            1|     58|   154|
|6-24 months                |MAL-ED         |INDIA        |1      |            0|     23|   154|
|6-24 months                |MAL-ED         |INDIA        |1      |            1|      7|   154|
|6-24 months                |MAL-ED         |BANGLADESH   |0      |            0|     72|   158|
|6-24 months                |MAL-ED         |BANGLADESH   |0      |            1|     58|   158|
|6-24 months                |MAL-ED         |BANGLADESH   |1      |            0|     19|   158|
|6-24 months                |MAL-ED         |BANGLADESH   |1      |            1|      9|   158|
|6-24 months                |MAL-ED         |PERU         |0      |            0|     88|   149|
|6-24 months                |MAL-ED         |PERU         |0      |            1|     57|   149|
|6-24 months                |MAL-ED         |PERU         |1      |            0|      2|   149|
|6-24 months                |MAL-ED         |PERU         |1      |            1|      2|   149|
|6-24 months                |MAL-ED         |NEPAL        |0      |            0|    138|   194|
|6-24 months                |MAL-ED         |NEPAL        |0      |            1|     34|   194|
|6-24 months                |MAL-ED         |NEPAL        |1      |            0|     15|   194|
|6-24 months                |MAL-ED         |NEPAL        |1      |            1|      7|   194|
|6-24 months                |MAL-ED         |BRAZIL       |0      |            0|    145|   161|
|6-24 months                |MAL-ED         |BRAZIL       |0      |            1|     10|   161|
|6-24 months                |MAL-ED         |BRAZIL       |1      |            0|      5|   161|
|6-24 months                |MAL-ED         |BRAZIL       |1      |            1|      1|   161|
|6-24 months                |MAL-ED         |TANZANIA     |0      |            0|     31|   144|
|6-24 months                |MAL-ED         |TANZANIA     |0      |            1|    112|   144|
|6-24 months                |MAL-ED         |TANZANIA     |1      |            0|      0|   144|
|6-24 months                |MAL-ED         |TANZANIA     |1      |            1|      1|   144|
|6-24 months                |MAL-ED         |SOUTH AFRICA |0      |            0|     89|   158|
|6-24 months                |MAL-ED         |SOUTH AFRICA |0      |            1|     58|   158|
|6-24 months                |MAL-ED         |SOUTH AFRICA |1      |            0|      9|   158|
|6-24 months                |MAL-ED         |SOUTH AFRICA |1      |            1|      2|   158|
|6-24 months                |NIH-Birth      |BANGLADESH   |0      |            0|    100|   345|
|6-24 months                |NIH-Birth      |BANGLADESH   |0      |            1|    151|   345|
|6-24 months                |NIH-Birth      |BANGLADESH   |1      |            0|     47|   345|
|6-24 months                |NIH-Birth      |BANGLADESH   |1      |            1|     47|   345|
|6-24 months                |NIH-Crypto     |BANGLADESH   |0      |            0|    276|   506|
|6-24 months                |NIH-Crypto     |BANGLADESH   |0      |            1|    103|   506|
|6-24 months                |NIH-Crypto     |BANGLADESH   |1      |            0|     97|   506|
|6-24 months                |NIH-Crypto     |BANGLADESH   |1      |            1|     30|   506|
|6-24 months                |PROBIT         |BELARUS      |0      |            0|  11605| 15467|
|6-24 months                |PROBIT         |BELARUS      |0      |            1|    783| 15467|
|6-24 months                |PROBIT         |BELARUS      |1      |            0|   2868| 15467|
|6-24 months                |PROBIT         |BELARUS      |1      |            1|    211| 15467|
|6-24 months                |PROVIDE        |BANGLADESH   |0      |            0|    258|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |0      |            1|    111|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |1      |            0|     61|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |1      |            1|     26|   456|
|6-24 months                |ResPak         |PAKISTAN     |0      |            0|     61|    97|
|6-24 months                |ResPak         |PAKISTAN     |0      |            1|     16|    97|
|6-24 months                |ResPak         |PAKISTAN     |1      |            0|     17|    97|
|6-24 months                |ResPak         |PAKISTAN     |1      |            1|      3|    97|
|6-24 months                |SAS-CompFeed   |INDIA        |0      |            0|    365|   813|
|6-24 months                |SAS-CompFeed   |INDIA        |0      |            1|    365|   813|
|6-24 months                |SAS-CompFeed   |INDIA        |1      |            0|     39|   813|
|6-24 months                |SAS-CompFeed   |INDIA        |1      |            1|     44|   813|
|6-24 months                |SAS-FoodSuppl  |INDIA        |0      |            0|     53|   243|
|6-24 months                |SAS-FoodSuppl  |INDIA        |0      |            1|    148|   243|
|6-24 months                |SAS-FoodSuppl  |INDIA        |1      |            0|      6|   243|
|6-24 months                |SAS-FoodSuppl  |INDIA        |1      |            1|     36|   243|
|6-24 months                |TanzaniaChild2 |TANZANIA     |0      |            0|   1160|  1596|
|6-24 months                |TanzaniaChild2 |TANZANIA     |0      |            1|    337|  1596|
|6-24 months                |TanzaniaChild2 |TANZANIA     |1      |            0|     76|  1596|
|6-24 months                |TanzaniaChild2 |TANZANIA     |1      |            1|     23|  1596|
|6-24 months                |Vellore Crypto |INDIA        |0      |            0|    103|   234|
|6-24 months                |Vellore Crypto |INDIA        |0      |            1|     63|   234|
|6-24 months                |Vellore Crypto |INDIA        |1      |            0|     42|   234|
|6-24 months                |Vellore Crypto |INDIA        |1      |            1|     26|   234|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |0      |            0|   5411|  8430|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |0      |            1|   1882|  8430|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |1      |            0|    798|  8430|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |1      |            1|    339|  8430|


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months (no birth st.), studyid: Vellore Crypto, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months (no birth st.), studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ZVITAMBO, country: ZIMBABWE
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

* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


