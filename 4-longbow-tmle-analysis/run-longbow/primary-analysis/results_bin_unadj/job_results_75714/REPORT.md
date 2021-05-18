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

**Intervention Variable:** mbmi

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |mbmi          | pers_wast| n_cell|     n|
|:-----------|:--------------|:------------|:-------------|---------:|------:|-----:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |Normal weight |         0|   1240|  1640|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |Normal weight |         1|    150|  1640|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |Underweight   |         0|    205|  1640|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |Underweight   |         1|     45|  1640|
|0-24 months |JiVitA-3       |BANGLADESH   |Normal weight |         0|   9009| 15689|
|0-24 months |JiVitA-3       |BANGLADESH   |Normal weight |         1|    485| 15689|
|0-24 months |JiVitA-3       |BANGLADESH   |Underweight   |         0|   5794| 15689|
|0-24 months |JiVitA-3       |BANGLADESH   |Underweight   |         1|    401| 15689|
|0-24 months |LCNI-5         |MALAWI       |Normal weight |         0|    579|   716|
|0-24 months |LCNI-5         |MALAWI       |Normal weight |         1|      4|   716|
|0-24 months |LCNI-5         |MALAWI       |Underweight   |         0|    131|   716|
|0-24 months |LCNI-5         |MALAWI       |Underweight   |         1|      2|   716|
|0-24 months |MAL-ED         |INDIA        |Normal weight |         0|    169|   231|
|0-24 months |MAL-ED         |INDIA        |Normal weight |         1|     14|   231|
|0-24 months |MAL-ED         |INDIA        |Underweight   |         0|     41|   231|
|0-24 months |MAL-ED         |INDIA        |Underweight   |         1|      7|   231|
|0-24 months |MAL-ED         |BANGLADESH   |Normal weight |         0|    196|   235|
|0-24 months |MAL-ED         |BANGLADESH   |Normal weight |         1|      7|   235|
|0-24 months |MAL-ED         |BANGLADESH   |Underweight   |         0|     27|   235|
|0-24 months |MAL-ED         |BANGLADESH   |Underweight   |         1|      5|   235|
|0-24 months |MAL-ED         |PERU         |Normal weight |         0|    267|   272|
|0-24 months |MAL-ED         |PERU         |Normal weight |         1|      1|   272|
|0-24 months |MAL-ED         |PERU         |Underweight   |         0|      4|   272|
|0-24 months |MAL-ED         |PERU         |Underweight   |         1|      0|   272|
|0-24 months |MAL-ED         |NEPAL        |Normal weight |         0|    230|   236|
|0-24 months |MAL-ED         |NEPAL        |Normal weight |         1|      4|   236|
|0-24 months |MAL-ED         |NEPAL        |Underweight   |         0|      2|   236|
|0-24 months |MAL-ED         |NEPAL        |Underweight   |         1|      0|   236|
|0-24 months |MAL-ED         |BRAZIL       |Normal weight |         0|    187|   206|
|0-24 months |MAL-ED         |BRAZIL       |Normal weight |         1|      2|   206|
|0-24 months |MAL-ED         |BRAZIL       |Underweight   |         0|     17|   206|
|0-24 months |MAL-ED         |BRAZIL       |Underweight   |         1|      0|   206|
|0-24 months |MAL-ED         |TANZANIA     |Normal weight |         0|    227|   246|
|0-24 months |MAL-ED         |TANZANIA     |Normal weight |         1|      0|   246|
|0-24 months |MAL-ED         |TANZANIA     |Underweight   |         0|     19|   246|
|0-24 months |MAL-ED         |TANZANIA     |Underweight   |         1|      0|   246|
|0-24 months |MAL-ED         |SOUTH AFRICA |Normal weight |         0|    237|   251|
|0-24 months |MAL-ED         |SOUTH AFRICA |Normal weight |         1|      1|   251|
|0-24 months |MAL-ED         |SOUTH AFRICA |Underweight   |         0|     12|   251|
|0-24 months |MAL-ED         |SOUTH AFRICA |Underweight   |         1|      1|   251|
|0-24 months |NIH-Birth      |BANGLADESH   |Normal weight |         0|    419|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |Normal weight |         1|     30|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |Underweight   |         0|     68|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |Underweight   |         1|     17|   534|
|0-24 months |NIH-Crypto     |BANGLADESH   |Normal weight |         0|    653|   726|
|0-24 months |NIH-Crypto     |BANGLADESH   |Normal weight |         1|     22|   726|
|0-24 months |NIH-Crypto     |BANGLADESH   |Underweight   |         0|     47|   726|
|0-24 months |NIH-Crypto     |BANGLADESH   |Underweight   |         1|      4|   726|
|0-24 months |PROBIT         |BELARUS      |Normal weight |         0|  13129| 13773|
|0-24 months |PROBIT         |BELARUS      |Normal weight |         1|     92| 13773|
|0-24 months |PROBIT         |BELARUS      |Underweight   |         0|    548| 13773|
|0-24 months |PROBIT         |BELARUS      |Underweight   |         1|      4| 13773|
|0-24 months |PROVIDE        |BANGLADESH   |Normal weight |         0|    496|   622|
|0-24 months |PROVIDE        |BANGLADESH   |Normal weight |         1|      7|   622|
|0-24 months |PROVIDE        |BANGLADESH   |Underweight   |         0|    111|   622|
|0-24 months |PROVIDE        |BANGLADESH   |Underweight   |         1|      8|   622|
|0-24 months |SAS-CompFeed   |INDIA        |Normal weight |         0|    821|  1253|
|0-24 months |SAS-CompFeed   |INDIA        |Normal weight |         1|     65|  1253|
|0-24 months |SAS-CompFeed   |INDIA        |Underweight   |         0|    328|  1253|
|0-24 months |SAS-CompFeed   |INDIA        |Underweight   |         1|     39|  1253|
|0-24 months |TanzaniaChild2 |TANZANIA     |Normal weight |         0|   2028|  2130|
|0-24 months |TanzaniaChild2 |TANZANIA     |Normal weight |         1|     54|  2130|
|0-24 months |TanzaniaChild2 |TANZANIA     |Underweight   |         0|     46|  2130|
|0-24 months |TanzaniaChild2 |TANZANIA     |Underweight   |         1|      2|  2130|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Normal weight |         0|   7476|  8029|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Normal weight |         1|    118|  8029|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Underweight   |         0|    416|  8029|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Underweight   |         1|     19|  8029|
|0-6 months  |JiVitA-3       |BANGLADESH   |Normal weight |         0|     30|    49|
|0-6 months  |JiVitA-3       |BANGLADESH   |Normal weight |         1|      1|    49|
|0-6 months  |JiVitA-3       |BANGLADESH   |Underweight   |         0|     17|    49|
|0-6 months  |JiVitA-3       |BANGLADESH   |Underweight   |         1|      1|    49|
|0-6 months  |MAL-ED         |INDIA        |Normal weight |         0|    171|   230|
|0-6 months  |MAL-ED         |INDIA        |Normal weight |         1|     11|   230|
|0-6 months  |MAL-ED         |INDIA        |Underweight   |         0|     41|   230|
|0-6 months  |MAL-ED         |INDIA        |Underweight   |         1|      7|   230|
|0-6 months  |MAL-ED         |BANGLADESH   |Normal weight |         0|    198|   235|
|0-6 months  |MAL-ED         |BANGLADESH   |Normal weight |         1|      5|   235|
|0-6 months  |MAL-ED         |BANGLADESH   |Underweight   |         0|     31|   235|
|0-6 months  |MAL-ED         |BANGLADESH   |Underweight   |         1|      1|   235|
|0-6 months  |MAL-ED         |PERU         |Normal weight |         0|    268|   272|
|0-6 months  |MAL-ED         |PERU         |Normal weight |         1|      0|   272|
|0-6 months  |MAL-ED         |PERU         |Underweight   |         0|      4|   272|
|0-6 months  |MAL-ED         |PERU         |Underweight   |         1|      0|   272|
|0-6 months  |MAL-ED         |NEPAL        |Normal weight |         0|    227|   236|
|0-6 months  |MAL-ED         |NEPAL        |Normal weight |         1|      7|   236|
|0-6 months  |MAL-ED         |NEPAL        |Underweight   |         0|      2|   236|
|0-6 months  |MAL-ED         |NEPAL        |Underweight   |         1|      0|   236|
|0-6 months  |MAL-ED         |BRAZIL       |Normal weight |         0|    188|   206|
|0-6 months  |MAL-ED         |BRAZIL       |Normal weight |         1|      1|   206|
|0-6 months  |MAL-ED         |BRAZIL       |Underweight   |         0|     17|   206|
|0-6 months  |MAL-ED         |BRAZIL       |Underweight   |         1|      0|   206|
|0-6 months  |MAL-ED         |TANZANIA     |Normal weight |         0|    227|   246|
|0-6 months  |MAL-ED         |TANZANIA     |Normal weight |         1|      0|   246|
|0-6 months  |MAL-ED         |TANZANIA     |Underweight   |         0|     19|   246|
|0-6 months  |MAL-ED         |TANZANIA     |Underweight   |         1|      0|   246|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Normal weight |         0|    236|   251|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Normal weight |         1|      2|   251|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Underweight   |         0|     13|   251|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Underweight   |         1|      0|   251|
|0-6 months  |NIH-Birth      |BANGLADESH   |Normal weight |         0|    134|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |Normal weight |         1|      9|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |Underweight   |         0|     24|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |Underweight   |         1|      2|   169|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Normal weight |         0|    231|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Normal weight |         1|      5|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Underweight   |         0|     14|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Underweight   |         1|      0|   250|
|0-6 months  |PROBIT         |BELARUS      |Normal weight |         0|  11598| 13143|
|0-6 months  |PROBIT         |BELARUS      |Normal weight |         1|   1026| 13143|
|0-6 months  |PROBIT         |BELARUS      |Underweight   |         0|    473| 13143|
|0-6 months  |PROBIT         |BELARUS      |Underweight   |         1|     46| 13143|
|0-6 months  |PROVIDE        |BANGLADESH   |Normal weight |         0|    492|   619|
|0-6 months  |PROVIDE        |BANGLADESH   |Normal weight |         1|      8|   619|
|0-6 months  |PROVIDE        |BANGLADESH   |Underweight   |         0|    114|   619|
|0-6 months  |PROVIDE        |BANGLADESH   |Underweight   |         1|      5|   619|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Normal weight |         0|   1932|  2028|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Normal weight |         1|     51|  2028|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Underweight   |         0|     44|  2028|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Underweight   |         1|      1|  2028|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Normal weight |         0|    541|   575|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Normal weight |         1|     10|   575|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Underweight   |         0|     22|   575|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Underweight   |         1|      2|   575|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |Normal weight |         0|   1240|  1640|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |Normal weight |         1|    150|  1640|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |Underweight   |         0|    205|  1640|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |Underweight   |         1|     45|  1640|
|6-24 months |JiVitA-3       |BANGLADESH   |Normal weight |         0|   9009| 15689|
|6-24 months |JiVitA-3       |BANGLADESH   |Normal weight |         1|    485| 15689|
|6-24 months |JiVitA-3       |BANGLADESH   |Underweight   |         0|   5794| 15689|
|6-24 months |JiVitA-3       |BANGLADESH   |Underweight   |         1|    401| 15689|
|6-24 months |LCNI-5         |MALAWI       |Normal weight |         0|    579|   716|
|6-24 months |LCNI-5         |MALAWI       |Normal weight |         1|      4|   716|
|6-24 months |LCNI-5         |MALAWI       |Underweight   |         0|    131|   716|
|6-24 months |LCNI-5         |MALAWI       |Underweight   |         1|      2|   716|
|6-24 months |MAL-ED         |INDIA        |Normal weight |         0|    169|   231|
|6-24 months |MAL-ED         |INDIA        |Normal weight |         1|     14|   231|
|6-24 months |MAL-ED         |INDIA        |Underweight   |         0|     41|   231|
|6-24 months |MAL-ED         |INDIA        |Underweight   |         1|      7|   231|
|6-24 months |MAL-ED         |BANGLADESH   |Normal weight |         0|    196|   235|
|6-24 months |MAL-ED         |BANGLADESH   |Normal weight |         1|      7|   235|
|6-24 months |MAL-ED         |BANGLADESH   |Underweight   |         0|     27|   235|
|6-24 months |MAL-ED         |BANGLADESH   |Underweight   |         1|      5|   235|
|6-24 months |MAL-ED         |PERU         |Normal weight |         0|    267|   272|
|6-24 months |MAL-ED         |PERU         |Normal weight |         1|      1|   272|
|6-24 months |MAL-ED         |PERU         |Underweight   |         0|      4|   272|
|6-24 months |MAL-ED         |PERU         |Underweight   |         1|      0|   272|
|6-24 months |MAL-ED         |NEPAL        |Normal weight |         0|    230|   236|
|6-24 months |MAL-ED         |NEPAL        |Normal weight |         1|      4|   236|
|6-24 months |MAL-ED         |NEPAL        |Underweight   |         0|      2|   236|
|6-24 months |MAL-ED         |NEPAL        |Underweight   |         1|      0|   236|
|6-24 months |MAL-ED         |BRAZIL       |Normal weight |         0|    187|   206|
|6-24 months |MAL-ED         |BRAZIL       |Normal weight |         1|      2|   206|
|6-24 months |MAL-ED         |BRAZIL       |Underweight   |         0|     17|   206|
|6-24 months |MAL-ED         |BRAZIL       |Underweight   |         1|      0|   206|
|6-24 months |MAL-ED         |TANZANIA     |Normal weight |         0|    227|   246|
|6-24 months |MAL-ED         |TANZANIA     |Normal weight |         1|      0|   246|
|6-24 months |MAL-ED         |TANZANIA     |Underweight   |         0|     19|   246|
|6-24 months |MAL-ED         |TANZANIA     |Underweight   |         1|      0|   246|
|6-24 months |MAL-ED         |SOUTH AFRICA |Normal weight |         0|    237|   251|
|6-24 months |MAL-ED         |SOUTH AFRICA |Normal weight |         1|      1|   251|
|6-24 months |MAL-ED         |SOUTH AFRICA |Underweight   |         0|     12|   251|
|6-24 months |MAL-ED         |SOUTH AFRICA |Underweight   |         1|      1|   251|
|6-24 months |NIH-Birth      |BANGLADESH   |Normal weight |         0|    419|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |Normal weight |         1|     30|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |Underweight   |         0|     68|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |Underweight   |         1|     17|   534|
|6-24 months |NIH-Crypto     |BANGLADESH   |Normal weight |         0|    653|   726|
|6-24 months |NIH-Crypto     |BANGLADESH   |Normal weight |         1|     22|   726|
|6-24 months |NIH-Crypto     |BANGLADESH   |Underweight   |         0|     47|   726|
|6-24 months |NIH-Crypto     |BANGLADESH   |Underweight   |         1|      4|   726|
|6-24 months |PROBIT         |BELARUS      |Normal weight |         0|  13129| 13773|
|6-24 months |PROBIT         |BELARUS      |Normal weight |         1|     92| 13773|
|6-24 months |PROBIT         |BELARUS      |Underweight   |         0|    548| 13773|
|6-24 months |PROBIT         |BELARUS      |Underweight   |         1|      4| 13773|
|6-24 months |PROVIDE        |BANGLADESH   |Normal weight |         0|    496|   622|
|6-24 months |PROVIDE        |BANGLADESH   |Normal weight |         1|      7|   622|
|6-24 months |PROVIDE        |BANGLADESH   |Underweight   |         0|    111|   622|
|6-24 months |PROVIDE        |BANGLADESH   |Underweight   |         1|      8|   622|
|6-24 months |SAS-CompFeed   |INDIA        |Normal weight |         0|    821|  1253|
|6-24 months |SAS-CompFeed   |INDIA        |Normal weight |         1|     65|  1253|
|6-24 months |SAS-CompFeed   |INDIA        |Underweight   |         0|    328|  1253|
|6-24 months |SAS-CompFeed   |INDIA        |Underweight   |         1|     39|  1253|
|6-24 months |TanzaniaChild2 |TANZANIA     |Normal weight |         0|   2028|  2130|
|6-24 months |TanzaniaChild2 |TANZANIA     |Normal weight |         1|     54|  2130|
|6-24 months |TanzaniaChild2 |TANZANIA     |Underweight   |         0|     46|  2130|
|6-24 months |TanzaniaChild2 |TANZANIA     |Underweight   |         1|      2|  2130|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Normal weight |         0|   7476|  8029|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Normal weight |         1|    118|  8029|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Underweight   |         0|    416|  8029|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Underweight   |         1|     19|  8029|


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
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
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


