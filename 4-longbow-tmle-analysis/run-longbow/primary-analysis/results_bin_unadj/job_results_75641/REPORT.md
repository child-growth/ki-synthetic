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

**Outcome Variable:** ever_swasted

## Predictor Variables

**Intervention Variable:** mbmi

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |mbmi          | ever_swasted| n_cell|     n|
|:-----------|:--------------|:------------|:-------------|------------:|------:|-----:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |Normal weight |            0|   2605|  3217|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |Normal weight |            1|    120|  3217|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |Underweight   |            0|    454|  3217|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |Underweight   |            1|     38|  3217|
|0-24 months |JiVitA-3       |BANGLADESH   |Normal weight |            0|  15235| 26689|
|0-24 months |JiVitA-3       |BANGLADESH   |Normal weight |            1|    969| 26689|
|0-24 months |JiVitA-3       |BANGLADESH   |Underweight   |            0|   9830| 26689|
|0-24 months |JiVitA-3       |BANGLADESH   |Underweight   |            1|    655| 26689|
|0-24 months |LCNI-5         |MALAWI       |Normal weight |            0|    669|   836|
|0-24 months |LCNI-5         |MALAWI       |Normal weight |            1|      6|   836|
|0-24 months |LCNI-5         |MALAWI       |Underweight   |            0|    159|   836|
|0-24 months |LCNI-5         |MALAWI       |Underweight   |            1|      2|   836|
|0-24 months |MAL-ED         |INDIA        |Normal weight |            0|    172|   241|
|0-24 months |MAL-ED         |INDIA        |Normal weight |            1|     18|   241|
|0-24 months |MAL-ED         |INDIA        |Underweight   |            0|     44|   241|
|0-24 months |MAL-ED         |INDIA        |Underweight   |            1|      7|   241|
|0-24 months |MAL-ED         |BANGLADESH   |Normal weight |            0|    205|   250|
|0-24 months |MAL-ED         |BANGLADESH   |Normal weight |            1|     12|   250|
|0-24 months |MAL-ED         |BANGLADESH   |Underweight   |            0|     26|   250|
|0-24 months |MAL-ED         |BANGLADESH   |Underweight   |            1|      7|   250|
|0-24 months |MAL-ED         |PERU         |Normal weight |            0|    281|   289|
|0-24 months |MAL-ED         |PERU         |Normal weight |            1|      4|   289|
|0-24 months |MAL-ED         |PERU         |Underweight   |            0|      4|   289|
|0-24 months |MAL-ED         |PERU         |Underweight   |            1|      0|   289|
|0-24 months |MAL-ED         |NEPAL        |Normal weight |            0|    227|   238|
|0-24 months |MAL-ED         |NEPAL        |Normal weight |            1|      9|   238|
|0-24 months |MAL-ED         |NEPAL        |Underweight   |            0|      2|   238|
|0-24 months |MAL-ED         |NEPAL        |Underweight   |            1|      0|   238|
|0-24 months |MAL-ED         |BRAZIL       |Normal weight |            0|    195|   219|
|0-24 months |MAL-ED         |BRAZIL       |Normal weight |            1|      3|   219|
|0-24 months |MAL-ED         |BRAZIL       |Underweight   |            0|     20|   219|
|0-24 months |MAL-ED         |BRAZIL       |Underweight   |            1|      1|   219|
|0-24 months |MAL-ED         |TANZANIA     |Normal weight |            0|    226|   253|
|0-24 months |MAL-ED         |TANZANIA     |Normal weight |            1|      7|   253|
|0-24 months |MAL-ED         |TANZANIA     |Underweight   |            0|     18|   253|
|0-24 months |MAL-ED         |TANZANIA     |Underweight   |            1|      2|   253|
|0-24 months |MAL-ED         |SOUTH AFRICA |Normal weight |            0|    242|   268|
|0-24 months |MAL-ED         |SOUTH AFRICA |Normal weight |            1|     12|   268|
|0-24 months |MAL-ED         |SOUTH AFRICA |Underweight   |            0|     13|   268|
|0-24 months |MAL-ED         |SOUTH AFRICA |Underweight   |            1|      1|   268|
|0-24 months |NIH-Birth      |BANGLADESH   |Normal weight |            0|    459|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |Normal weight |            1|     73|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |Underweight   |            0|     66|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |Underweight   |            1|     26|   624|
|0-24 months |NIH-Crypto     |BANGLADESH   |Normal weight |            0|    642|   754|
|0-24 months |NIH-Crypto     |BANGLADESH   |Normal weight |            1|     61|   754|
|0-24 months |NIH-Crypto     |BANGLADESH   |Underweight   |            0|     46|   754|
|0-24 months |NIH-Crypto     |BANGLADESH   |Underweight   |            1|      5|   754|
|0-24 months |PROBIT         |BELARUS      |Normal weight |            0|  12094| 13797|
|0-24 months |PROBIT         |BELARUS      |Normal weight |            1|   1149| 13797|
|0-24 months |PROBIT         |BELARUS      |Underweight   |            0|    493| 13797|
|0-24 months |PROBIT         |BELARUS      |Underweight   |            1|     61| 13797|
|0-24 months |PROVIDE        |BANGLADESH   |Normal weight |            0|    511|   668|
|0-24 months |PROVIDE        |BANGLADESH   |Normal weight |            1|     28|   668|
|0-24 months |PROVIDE        |BANGLADESH   |Underweight   |            0|    117|   668|
|0-24 months |PROVIDE        |BANGLADESH   |Underweight   |            1|     12|   668|
|0-24 months |SAS-CompFeed   |INDIA        |Normal weight |            0|    862|  1390|
|0-24 months |SAS-CompFeed   |INDIA        |Normal weight |            1|    119|  1390|
|0-24 months |SAS-CompFeed   |INDIA        |Underweight   |            0|    326|  1390|
|0-24 months |SAS-CompFeed   |INDIA        |Underweight   |            1|     83|  1390|
|0-24 months |TanzaniaChild2 |TANZANIA     |Normal weight |            0|   2154|  2360|
|0-24 months |TanzaniaChild2 |TANZANIA     |Normal weight |            1|    154|  2360|
|0-24 months |TanzaniaChild2 |TANZANIA     |Underweight   |            0|     49|  2360|
|0-24 months |TanzaniaChild2 |TANZANIA     |Underweight   |            1|      3|  2360|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Normal weight |            0|   8238|  9598|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Normal weight |            1|    833|  9598|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Underweight   |            0|    453|  9598|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Underweight   |            1|     74|  9598|
|0-6 months  |JiVitA-3       |BANGLADESH   |Normal weight |            0|  15477| 26594|
|0-6 months  |JiVitA-3       |BANGLADESH   |Normal weight |            1|    669| 26594|
|0-6 months  |JiVitA-3       |BANGLADESH   |Underweight   |            0|  10020| 26594|
|0-6 months  |JiVitA-3       |BANGLADESH   |Underweight   |            1|    428| 26594|
|0-6 months  |LCNI-5         |MALAWI       |Normal weight |            0|    221|   271|
|0-6 months  |LCNI-5         |MALAWI       |Normal weight |            1|      0|   271|
|0-6 months  |LCNI-5         |MALAWI       |Underweight   |            0|     50|   271|
|0-6 months  |LCNI-5         |MALAWI       |Underweight   |            1|      0|   271|
|0-6 months  |MAL-ED         |INDIA        |Normal weight |            0|    176|   241|
|0-6 months  |MAL-ED         |INDIA        |Normal weight |            1|     14|   241|
|0-6 months  |MAL-ED         |INDIA        |Underweight   |            0|     45|   241|
|0-6 months  |MAL-ED         |INDIA        |Underweight   |            1|      6|   241|
|0-6 months  |MAL-ED         |BANGLADESH   |Normal weight |            0|    206|   250|
|0-6 months  |MAL-ED         |BANGLADESH   |Normal weight |            1|     11|   250|
|0-6 months  |MAL-ED         |BANGLADESH   |Underweight   |            0|     30|   250|
|0-6 months  |MAL-ED         |BANGLADESH   |Underweight   |            1|      3|   250|
|0-6 months  |MAL-ED         |PERU         |Normal weight |            0|    284|   289|
|0-6 months  |MAL-ED         |PERU         |Normal weight |            1|      1|   289|
|0-6 months  |MAL-ED         |PERU         |Underweight   |            0|      4|   289|
|0-6 months  |MAL-ED         |PERU         |Underweight   |            1|      0|   289|
|0-6 months  |MAL-ED         |NEPAL        |Normal weight |            0|    229|   238|
|0-6 months  |MAL-ED         |NEPAL        |Normal weight |            1|      7|   238|
|0-6 months  |MAL-ED         |NEPAL        |Underweight   |            0|      2|   238|
|0-6 months  |MAL-ED         |NEPAL        |Underweight   |            1|      0|   238|
|0-6 months  |MAL-ED         |BRAZIL       |Normal weight |            0|    195|   219|
|0-6 months  |MAL-ED         |BRAZIL       |Normal weight |            1|      3|   219|
|0-6 months  |MAL-ED         |BRAZIL       |Underweight   |            0|     21|   219|
|0-6 months  |MAL-ED         |BRAZIL       |Underweight   |            1|      0|   219|
|0-6 months  |MAL-ED         |TANZANIA     |Normal weight |            0|    230|   253|
|0-6 months  |MAL-ED         |TANZANIA     |Normal weight |            1|      3|   253|
|0-6 months  |MAL-ED         |TANZANIA     |Underweight   |            0|     19|   253|
|0-6 months  |MAL-ED         |TANZANIA     |Underweight   |            1|      1|   253|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Normal weight |            0|    249|   268|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Normal weight |            1|      5|   268|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Underweight   |            0|     14|   268|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Underweight   |            1|      0|   268|
|0-6 months  |NIH-Birth      |BANGLADESH   |Normal weight |            0|    486|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |Normal weight |            1|     44|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |Underweight   |            0|     80|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |Underweight   |            1|     12|   622|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Normal weight |            0|    656|   754|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Normal weight |            1|     47|   754|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Underweight   |            0|     48|   754|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Underweight   |            1|      3|   754|
|0-6 months  |PROBIT         |BELARUS      |Normal weight |            0|  12103| 13797|
|0-6 months  |PROBIT         |BELARUS      |Normal weight |            1|   1140| 13797|
|0-6 months  |PROBIT         |BELARUS      |Underweight   |            0|    494| 13797|
|0-6 months  |PROBIT         |BELARUS      |Underweight   |            1|     60| 13797|
|0-6 months  |PROVIDE        |BANGLADESH   |Normal weight |            0|    521|   668|
|0-6 months  |PROVIDE        |BANGLADESH   |Normal weight |            1|     18|   668|
|0-6 months  |PROVIDE        |BANGLADESH   |Underweight   |            0|    120|   668|
|0-6 months  |PROVIDE        |BANGLADESH   |Underweight   |            1|      9|   668|
|0-6 months  |SAS-CompFeed   |INDIA        |Normal weight |            0|    918|  1382|
|0-6 months  |SAS-CompFeed   |INDIA        |Normal weight |            1|     57|  1382|
|0-6 months  |SAS-CompFeed   |INDIA        |Underweight   |            0|    375|  1382|
|0-6 months  |SAS-CompFeed   |INDIA        |Underweight   |            1|     32|  1382|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Normal weight |            0|   2231|  2360|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Normal weight |            1|     77|  2360|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Underweight   |            0|     50|  2360|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Underweight   |            1|      2|  2360|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Normal weight |            0|   8449|  9561|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Normal weight |            1|    592|  9561|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Underweight   |            0|    471|  9561|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Underweight   |            1|     49|  9561|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |Normal weight |            0|   2605|  3217|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |Normal weight |            1|    120|  3217|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |Underweight   |            0|    454|  3217|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |Underweight   |            1|     38|  3217|
|6-24 months |JiVitA-3       |BANGLADESH   |Normal weight |            0|  10086| 17169|
|6-24 months |JiVitA-3       |BANGLADESH   |Normal weight |            1|    308| 17169|
|6-24 months |JiVitA-3       |BANGLADESH   |Underweight   |            0|   6537| 17169|
|6-24 months |JiVitA-3       |BANGLADESH   |Underweight   |            1|    238| 17169|
|6-24 months |LCNI-5         |MALAWI       |Normal weight |            0|    660|   822|
|6-24 months |LCNI-5         |MALAWI       |Normal weight |            1|      6|   822|
|6-24 months |LCNI-5         |MALAWI       |Underweight   |            0|    154|   822|
|6-24 months |LCNI-5         |MALAWI       |Underweight   |            1|      2|   822|
|6-24 months |MAL-ED         |INDIA        |Normal weight |            0|    175|   226|
|6-24 months |MAL-ED         |INDIA        |Normal weight |            1|      4|   226|
|6-24 months |MAL-ED         |INDIA        |Underweight   |            0|     45|   226|
|6-24 months |MAL-ED         |INDIA        |Underweight   |            1|      2|   226|
|6-24 months |MAL-ED         |BANGLADESH   |Normal weight |            0|    194|   227|
|6-24 months |MAL-ED         |BANGLADESH   |Normal weight |            1|      1|   227|
|6-24 months |MAL-ED         |BANGLADESH   |Underweight   |            0|     28|   227|
|6-24 months |MAL-ED         |BANGLADESH   |Underweight   |            1|      4|   227|
|6-24 months |MAL-ED         |PERU         |Normal weight |            0|    251|   258|
|6-24 months |MAL-ED         |PERU         |Normal weight |            1|      3|   258|
|6-24 months |MAL-ED         |PERU         |Underweight   |            0|      4|   258|
|6-24 months |MAL-ED         |PERU         |Underweight   |            1|      0|   258|
|6-24 months |MAL-ED         |NEPAL        |Normal weight |            0|    229|   233|
|6-24 months |MAL-ED         |NEPAL        |Normal weight |            1|      2|   233|
|6-24 months |MAL-ED         |NEPAL        |Underweight   |            0|      2|   233|
|6-24 months |MAL-ED         |NEPAL        |Underweight   |            1|      0|   233|
|6-24 months |MAL-ED         |BRAZIL       |Normal weight |            0|    181|   196|
|6-24 months |MAL-ED         |BRAZIL       |Normal weight |            1|      0|   196|
|6-24 months |MAL-ED         |BRAZIL       |Underweight   |            0|     14|   196|
|6-24 months |MAL-ED         |BRAZIL       |Underweight   |            1|      1|   196|
|6-24 months |MAL-ED         |TANZANIA     |Normal weight |            0|    215|   238|
|6-24 months |MAL-ED         |TANZANIA     |Normal weight |            1|      4|   238|
|6-24 months |MAL-ED         |TANZANIA     |Underweight   |            0|     18|   238|
|6-24 months |MAL-ED         |TANZANIA     |Underweight   |            1|      1|   238|
|6-24 months |MAL-ED         |SOUTH AFRICA |Normal weight |            0|    218|   236|
|6-24 months |MAL-ED         |SOUTH AFRICA |Normal weight |            1|      7|   236|
|6-24 months |MAL-ED         |SOUTH AFRICA |Underweight   |            0|     10|   236|
|6-24 months |MAL-ED         |SOUTH AFRICA |Underweight   |            1|      1|   236|
|6-24 months |NIH-Birth      |BANGLADESH   |Normal weight |            0|    428|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |Normal weight |            1|     31|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |Underweight   |            0|     66|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |Underweight   |            1|     17|   542|
|6-24 months |NIH-Crypto     |BANGLADESH   |Normal weight |            0|    657|   726|
|6-24 months |NIH-Crypto     |BANGLADESH   |Normal weight |            1|     18|   726|
|6-24 months |NIH-Crypto     |BANGLADESH   |Underweight   |            0|     49|   726|
|6-24 months |NIH-Crypto     |BANGLADESH   |Underweight   |            1|      2|   726|
|6-24 months |PROBIT         |BELARUS      |Normal weight |            0|  13218| 13780|
|6-24 months |PROBIT         |BELARUS      |Normal weight |            1|      9| 13780|
|6-24 months |PROBIT         |BELARUS      |Underweight   |            0|    552| 13780|
|6-24 months |PROBIT         |BELARUS      |Underweight   |            1|      1| 13780|
|6-24 months |PROVIDE        |BANGLADESH   |Normal weight |            0|    478|   598|
|6-24 months |PROVIDE        |BANGLADESH   |Normal weight |            1|     10|   598|
|6-24 months |PROVIDE        |BANGLADESH   |Underweight   |            0|    107|   598|
|6-24 months |PROVIDE        |BANGLADESH   |Underweight   |            1|      3|   598|
|6-24 months |SAS-CompFeed   |INDIA        |Normal weight |            0|    836|  1274|
|6-24 months |SAS-CompFeed   |INDIA        |Normal weight |            1|     65|  1274|
|6-24 months |SAS-CompFeed   |INDIA        |Underweight   |            0|    315|  1274|
|6-24 months |SAS-CompFeed   |INDIA        |Underweight   |            1|     58|  1274|
|6-24 months |TanzaniaChild2 |TANZANIA     |Normal weight |            0|   1861|  1983|
|6-24 months |TanzaniaChild2 |TANZANIA     |Normal weight |            1|     81|  1983|
|6-24 months |TanzaniaChild2 |TANZANIA     |Underweight   |            0|     40|  1983|
|6-24 months |TanzaniaChild2 |TANZANIA     |Underweight   |            1|      1|  1983|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Normal weight |            0|   7748|  8472|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Normal weight |            1|    257|  8472|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Underweight   |            0|    440|  8472|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Underweight   |            1|     27|  8472|


The following strata were considered:

* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
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


