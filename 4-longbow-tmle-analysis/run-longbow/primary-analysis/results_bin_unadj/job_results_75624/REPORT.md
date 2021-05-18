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

**Outcome Variable:** ever_wasted

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

|agecat      |studyid        |country      |mbmi          | ever_wasted| n_cell|     n|
|:-----------|:--------------|:------------|:-------------|-----------:|------:|-----:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |Normal weight |           0|   2121|  3217|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |Normal weight |           1|    604|  3217|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |Underweight   |           0|    358|  3217|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |Underweight   |           1|    134|  3217|
|0-24 months |JiVitA-3       |BANGLADESH   |Normal weight |           0|  12162| 26689|
|0-24 months |JiVitA-3       |BANGLADESH   |Normal weight |           1|   4042| 26689|
|0-24 months |JiVitA-3       |BANGLADESH   |Underweight   |           0|   7639| 26689|
|0-24 months |JiVitA-3       |BANGLADESH   |Underweight   |           1|   2846| 26689|
|0-24 months |LCNI-5         |MALAWI       |Normal weight |           0|    634|   836|
|0-24 months |LCNI-5         |MALAWI       |Normal weight |           1|     41|   836|
|0-24 months |LCNI-5         |MALAWI       |Underweight   |           0|    136|   836|
|0-24 months |LCNI-5         |MALAWI       |Underweight   |           1|     25|   836|
|0-24 months |MAL-ED         |INDIA        |Normal weight |           0|    100|   241|
|0-24 months |MAL-ED         |INDIA        |Normal weight |           1|     90|   241|
|0-24 months |MAL-ED         |INDIA        |Underweight   |           0|     25|   241|
|0-24 months |MAL-ED         |INDIA        |Underweight   |           1|     26|   241|
|0-24 months |MAL-ED         |BANGLADESH   |Normal weight |           0|    151|   250|
|0-24 months |MAL-ED         |BANGLADESH   |Normal weight |           1|     66|   250|
|0-24 months |MAL-ED         |BANGLADESH   |Underweight   |           0|     18|   250|
|0-24 months |MAL-ED         |BANGLADESH   |Underweight   |           1|     15|   250|
|0-24 months |MAL-ED         |PERU         |Normal weight |           0|    262|   289|
|0-24 months |MAL-ED         |PERU         |Normal weight |           1|     23|   289|
|0-24 months |MAL-ED         |PERU         |Underweight   |           0|      3|   289|
|0-24 months |MAL-ED         |PERU         |Underweight   |           1|      1|   289|
|0-24 months |MAL-ED         |NEPAL        |Normal weight |           0|    163|   238|
|0-24 months |MAL-ED         |NEPAL        |Normal weight |           1|     73|   238|
|0-24 months |MAL-ED         |NEPAL        |Underweight   |           0|      2|   238|
|0-24 months |MAL-ED         |NEPAL        |Underweight   |           1|      0|   238|
|0-24 months |MAL-ED         |BRAZIL       |Normal weight |           0|    182|   219|
|0-24 months |MAL-ED         |BRAZIL       |Normal weight |           1|     16|   219|
|0-24 months |MAL-ED         |BRAZIL       |Underweight   |           0|     18|   219|
|0-24 months |MAL-ED         |BRAZIL       |Underweight   |           1|      3|   219|
|0-24 months |MAL-ED         |TANZANIA     |Normal weight |           0|    202|   253|
|0-24 months |MAL-ED         |TANZANIA     |Normal weight |           1|     31|   253|
|0-24 months |MAL-ED         |TANZANIA     |Underweight   |           0|     15|   253|
|0-24 months |MAL-ED         |TANZANIA     |Underweight   |           1|      5|   253|
|0-24 months |MAL-ED         |SOUTH AFRICA |Normal weight |           0|    203|   268|
|0-24 months |MAL-ED         |SOUTH AFRICA |Normal weight |           1|     51|   268|
|0-24 months |MAL-ED         |SOUTH AFRICA |Underweight   |           0|     10|   268|
|0-24 months |MAL-ED         |SOUTH AFRICA |Underweight   |           1|      4|   268|
|0-24 months |NIH-Birth      |BANGLADESH   |Normal weight |           0|    292|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |Normal weight |           1|    240|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |Underweight   |           0|     34|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |Underweight   |           1|     58|   624|
|0-24 months |NIH-Crypto     |BANGLADESH   |Normal weight |           0|    475|   754|
|0-24 months |NIH-Crypto     |BANGLADESH   |Normal weight |           1|    228|   754|
|0-24 months |NIH-Crypto     |BANGLADESH   |Underweight   |           0|     30|   754|
|0-24 months |NIH-Crypto     |BANGLADESH   |Underweight   |           1|     21|   754|
|0-24 months |PROBIT         |BELARUS      |Normal weight |           0|   9553| 13797|
|0-24 months |PROBIT         |BELARUS      |Normal weight |           1|   3690| 13797|
|0-24 months |PROBIT         |BELARUS      |Underweight   |           0|    374| 13797|
|0-24 months |PROBIT         |BELARUS      |Underweight   |           1|    180| 13797|
|0-24 months |PROVIDE        |BANGLADESH   |Normal weight |           0|    367|   668|
|0-24 months |PROVIDE        |BANGLADESH   |Normal weight |           1|    172|   668|
|0-24 months |PROVIDE        |BANGLADESH   |Underweight   |           0|     67|   668|
|0-24 months |PROVIDE        |BANGLADESH   |Underweight   |           1|     62|   668|
|0-24 months |SAS-CompFeed   |INDIA        |Normal weight |           0|    619|  1390|
|0-24 months |SAS-CompFeed   |INDIA        |Normal weight |           1|    362|  1390|
|0-24 months |SAS-CompFeed   |INDIA        |Underweight   |           0|    199|  1390|
|0-24 months |SAS-CompFeed   |INDIA        |Underweight   |           1|    210|  1390|
|0-24 months |TanzaniaChild2 |TANZANIA     |Normal weight |           0|   1764|  2360|
|0-24 months |TanzaniaChild2 |TANZANIA     |Normal weight |           1|    544|  2360|
|0-24 months |TanzaniaChild2 |TANZANIA     |Underweight   |           0|     42|  2360|
|0-24 months |TanzaniaChild2 |TANZANIA     |Underweight   |           1|     10|  2360|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Normal weight |           0|   6897|  9598|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Normal weight |           1|   2174|  9598|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Underweight   |           0|    356|  9598|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Underweight   |           1|    171|  9598|
|0-6 months  |JiVitA-3       |BANGLADESH   |Normal weight |           0|  13396| 26594|
|0-6 months  |JiVitA-3       |BANGLADESH   |Normal weight |           1|   2750| 26594|
|0-6 months  |JiVitA-3       |BANGLADESH   |Underweight   |           0|   8517| 26594|
|0-6 months  |JiVitA-3       |BANGLADESH   |Underweight   |           1|   1931| 26594|
|0-6 months  |LCNI-5         |MALAWI       |Normal weight |           0|    218|   271|
|0-6 months  |LCNI-5         |MALAWI       |Normal weight |           1|      3|   271|
|0-6 months  |LCNI-5         |MALAWI       |Underweight   |           0|     50|   271|
|0-6 months  |LCNI-5         |MALAWI       |Underweight   |           1|      0|   271|
|0-6 months  |MAL-ED         |INDIA        |Normal weight |           0|    131|   241|
|0-6 months  |MAL-ED         |INDIA        |Normal weight |           1|     59|   241|
|0-6 months  |MAL-ED         |INDIA        |Underweight   |           0|     32|   241|
|0-6 months  |MAL-ED         |INDIA        |Underweight   |           1|     19|   241|
|0-6 months  |MAL-ED         |BANGLADESH   |Normal weight |           0|    170|   250|
|0-6 months  |MAL-ED         |BANGLADESH   |Normal weight |           1|     47|   250|
|0-6 months  |MAL-ED         |BANGLADESH   |Underweight   |           0|     24|   250|
|0-6 months  |MAL-ED         |BANGLADESH   |Underweight   |           1|      9|   250|
|0-6 months  |MAL-ED         |PERU         |Normal weight |           0|    274|   289|
|0-6 months  |MAL-ED         |PERU         |Normal weight |           1|     11|   289|
|0-6 months  |MAL-ED         |PERU         |Underweight   |           0|      4|   289|
|0-6 months  |MAL-ED         |PERU         |Underweight   |           1|      0|   289|
|0-6 months  |MAL-ED         |NEPAL        |Normal weight |           0|    188|   238|
|0-6 months  |MAL-ED         |NEPAL        |Normal weight |           1|     48|   238|
|0-6 months  |MAL-ED         |NEPAL        |Underweight   |           0|      2|   238|
|0-6 months  |MAL-ED         |NEPAL        |Underweight   |           1|      0|   238|
|0-6 months  |MAL-ED         |BRAZIL       |Normal weight |           0|    186|   219|
|0-6 months  |MAL-ED         |BRAZIL       |Normal weight |           1|     12|   219|
|0-6 months  |MAL-ED         |BRAZIL       |Underweight   |           0|     19|   219|
|0-6 months  |MAL-ED         |BRAZIL       |Underweight   |           1|      2|   219|
|0-6 months  |MAL-ED         |TANZANIA     |Normal weight |           0|    223|   253|
|0-6 months  |MAL-ED         |TANZANIA     |Normal weight |           1|     10|   253|
|0-6 months  |MAL-ED         |TANZANIA     |Underweight   |           0|     17|   253|
|0-6 months  |MAL-ED         |TANZANIA     |Underweight   |           1|      3|   253|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Normal weight |           0|    226|   268|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Normal weight |           1|     28|   268|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Underweight   |           0|     12|   268|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Underweight   |           1|      2|   268|
|0-6 months  |NIH-Birth      |BANGLADESH   |Normal weight |           0|    350|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |Normal weight |           1|    180|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |Underweight   |           0|     50|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |Underweight   |           1|     42|   622|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Normal weight |           0|    520|   754|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Normal weight |           1|    183|   754|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Underweight   |           0|     40|   754|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Underweight   |           1|     11|   754|
|0-6 months  |PROBIT         |BELARUS      |Normal weight |           0|   9631| 13797|
|0-6 months  |PROBIT         |BELARUS      |Normal weight |           1|   3612| 13797|
|0-6 months  |PROBIT         |BELARUS      |Underweight   |           0|    376| 13797|
|0-6 months  |PROBIT         |BELARUS      |Underweight   |           1|    178| 13797|
|0-6 months  |PROVIDE        |BANGLADESH   |Normal weight |           0|    414|   668|
|0-6 months  |PROVIDE        |BANGLADESH   |Normal weight |           1|    125|   668|
|0-6 months  |PROVIDE        |BANGLADESH   |Underweight   |           0|     81|   668|
|0-6 months  |PROVIDE        |BANGLADESH   |Underweight   |           1|     48|   668|
|0-6 months  |SAS-CompFeed   |INDIA        |Normal weight |           0|    782|  1382|
|0-6 months  |SAS-CompFeed   |INDIA        |Normal weight |           1|    193|  1382|
|0-6 months  |SAS-CompFeed   |INDIA        |Underweight   |           0|    301|  1382|
|0-6 months  |SAS-CompFeed   |INDIA        |Underweight   |           1|    106|  1382|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Normal weight |           0|   1987|  2360|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Normal weight |           1|    321|  2360|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Underweight   |           0|     47|  2360|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Underweight   |           1|      5|  2360|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Normal weight |           0|   7432|  9561|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Normal weight |           1|   1609|  9561|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Underweight   |           0|    403|  9561|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Underweight   |           1|    117|  9561|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |Normal weight |           0|   2121|  3217|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |Normal weight |           1|    604|  3217|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |Underweight   |           0|    358|  3217|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |Underweight   |           1|    134|  3217|
|6-24 months |JiVitA-3       |BANGLADESH   |Normal weight |           0|   8764| 17169|
|6-24 months |JiVitA-3       |BANGLADESH   |Normal weight |           1|   1630| 17169|
|6-24 months |JiVitA-3       |BANGLADESH   |Underweight   |           0|   5594| 17169|
|6-24 months |JiVitA-3       |BANGLADESH   |Underweight   |           1|   1181| 17169|
|6-24 months |LCNI-5         |MALAWI       |Normal weight |           0|    627|   822|
|6-24 months |LCNI-5         |MALAWI       |Normal weight |           1|     39|   822|
|6-24 months |LCNI-5         |MALAWI       |Underweight   |           0|    131|   822|
|6-24 months |LCNI-5         |MALAWI       |Underweight   |           1|     25|   822|
|6-24 months |MAL-ED         |INDIA        |Normal weight |           0|    129|   226|
|6-24 months |MAL-ED         |INDIA        |Normal weight |           1|     50|   226|
|6-24 months |MAL-ED         |INDIA        |Underweight   |           0|     35|   226|
|6-24 months |MAL-ED         |INDIA        |Underweight   |           1|     12|   226|
|6-24 months |MAL-ED         |BANGLADESH   |Normal weight |           0|    165|   227|
|6-24 months |MAL-ED         |BANGLADESH   |Normal weight |           1|     30|   227|
|6-24 months |MAL-ED         |BANGLADESH   |Underweight   |           0|     23|   227|
|6-24 months |MAL-ED         |BANGLADESH   |Underweight   |           1|      9|   227|
|6-24 months |MAL-ED         |PERU         |Normal weight |           0|    240|   258|
|6-24 months |MAL-ED         |PERU         |Normal weight |           1|     14|   258|
|6-24 months |MAL-ED         |PERU         |Underweight   |           0|      3|   258|
|6-24 months |MAL-ED         |PERU         |Underweight   |           1|      1|   258|
|6-24 months |MAL-ED         |NEPAL        |Normal weight |           0|    196|   233|
|6-24 months |MAL-ED         |NEPAL        |Normal weight |           1|     35|   233|
|6-24 months |MAL-ED         |NEPAL        |Underweight   |           0|      2|   233|
|6-24 months |MAL-ED         |NEPAL        |Underweight   |           1|      0|   233|
|6-24 months |MAL-ED         |BRAZIL       |Normal weight |           0|    177|   196|
|6-24 months |MAL-ED         |BRAZIL       |Normal weight |           1|      4|   196|
|6-24 months |MAL-ED         |BRAZIL       |Underweight   |           0|     13|   196|
|6-24 months |MAL-ED         |BRAZIL       |Underweight   |           1|      2|   196|
|6-24 months |MAL-ED         |TANZANIA     |Normal weight |           0|    194|   238|
|6-24 months |MAL-ED         |TANZANIA     |Normal weight |           1|     25|   238|
|6-24 months |MAL-ED         |TANZANIA     |Underweight   |           0|     16|   238|
|6-24 months |MAL-ED         |TANZANIA     |Underweight   |           1|      3|   238|
|6-24 months |MAL-ED         |SOUTH AFRICA |Normal weight |           0|    194|   236|
|6-24 months |MAL-ED         |SOUTH AFRICA |Normal weight |           1|     31|   236|
|6-24 months |MAL-ED         |SOUTH AFRICA |Underweight   |           0|      9|   236|
|6-24 months |MAL-ED         |SOUTH AFRICA |Underweight   |           1|      2|   236|
|6-24 months |NIH-Birth      |BANGLADESH   |Normal weight |           0|    337|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |Normal weight |           1|    122|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |Underweight   |           0|     46|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |Underweight   |           1|     37|   542|
|6-24 months |NIH-Crypto     |BANGLADESH   |Normal weight |           0|    593|   726|
|6-24 months |NIH-Crypto     |BANGLADESH   |Normal weight |           1|     82|   726|
|6-24 months |NIH-Crypto     |BANGLADESH   |Underweight   |           0|     37|   726|
|6-24 months |NIH-Crypto     |BANGLADESH   |Underweight   |           1|     14|   726|
|6-24 months |PROBIT         |BELARUS      |Normal weight |           0|  13107| 13780|
|6-24 months |PROBIT         |BELARUS      |Normal weight |           1|    120| 13780|
|6-24 months |PROBIT         |BELARUS      |Underweight   |           0|    548| 13780|
|6-24 months |PROBIT         |BELARUS      |Underweight   |           1|      5| 13780|
|6-24 months |PROVIDE        |BANGLADESH   |Normal weight |           0|    419|   598|
|6-24 months |PROVIDE        |BANGLADESH   |Normal weight |           1|     69|   598|
|6-24 months |PROVIDE        |BANGLADESH   |Underweight   |           0|     85|   598|
|6-24 months |PROVIDE        |BANGLADESH   |Underweight   |           1|     25|   598|
|6-24 months |SAS-CompFeed   |INDIA        |Normal weight |           0|    666|  1274|
|6-24 months |SAS-CompFeed   |INDIA        |Normal weight |           1|    235|  1274|
|6-24 months |SAS-CompFeed   |INDIA        |Underweight   |           0|    217|  1274|
|6-24 months |SAS-CompFeed   |INDIA        |Underweight   |           1|    156|  1274|
|6-24 months |TanzaniaChild2 |TANZANIA     |Normal weight |           0|   1630|  1983|
|6-24 months |TanzaniaChild2 |TANZANIA     |Normal weight |           1|    312|  1983|
|6-24 months |TanzaniaChild2 |TANZANIA     |Underweight   |           0|     35|  1983|
|6-24 months |TanzaniaChild2 |TANZANIA     |Underweight   |           1|      6|  1983|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Normal weight |           0|   7256|  8472|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Normal weight |           1|    749|  8472|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Underweight   |           0|    393|  8472|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Underweight   |           1|     74|  8472|


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

* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
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


