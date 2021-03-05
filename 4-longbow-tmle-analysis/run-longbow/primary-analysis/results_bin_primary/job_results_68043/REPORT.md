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

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nchldlt5
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |mbmi          | ever_wasted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:-------------|-----------:|------:|-----:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Normal weight |           0|   2161|  3217|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Normal weight |           1|    602|  3217|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Underweight   |           0|    323|  3217|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Underweight   |           1|    131|  3217|
|0-24 months |JiVitA-3       |BANGLADESH                   |Normal weight |           0|  12433| 26836|
|0-24 months |JiVitA-3       |BANGLADESH                   |Normal weight |           1|   4127| 26836|
|0-24 months |JiVitA-3       |BANGLADESH                   |Underweight   |           0|   7478| 26836|
|0-24 months |JiVitA-3       |BANGLADESH                   |Underweight   |           1|   2798| 26836|
|0-24 months |LCNI-5         |MALAWI                       |Normal weight |           0|    651|   837|
|0-24 months |LCNI-5         |MALAWI                       |Normal weight |           1|     41|   837|
|0-24 months |LCNI-5         |MALAWI                       |Underweight   |           0|    120|   837|
|0-24 months |LCNI-5         |MALAWI                       |Underweight   |           1|     25|   837|
|0-24 months |MAL-ED         |BANGLADESH                   |Normal weight |           0|    154|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |Normal weight |           1|     68|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |Underweight   |           0|     15|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |Underweight   |           1|     17|   254|
|0-24 months |MAL-ED         |BRAZIL                       |Normal weight |           0|    194|   221|
|0-24 months |MAL-ED         |BRAZIL                       |Normal weight |           1|     17|   221|
|0-24 months |MAL-ED         |BRAZIL                       |Underweight   |           0|      8|   221|
|0-24 months |MAL-ED         |BRAZIL                       |Underweight   |           1|      2|   221|
|0-24 months |MAL-ED         |INDIA                        |Normal weight |           0|    105|   242|
|0-24 months |MAL-ED         |INDIA                        |Normal weight |           1|     88|   242|
|0-24 months |MAL-ED         |INDIA                        |Underweight   |           0|     20|   242|
|0-24 months |MAL-ED         |INDIA                        |Underweight   |           1|     29|   242|
|0-24 months |MAL-ED         |NEPAL                        |Normal weight |           0|    164|   238|
|0-24 months |MAL-ED         |NEPAL                        |Normal weight |           1|     74|   238|
|0-24 months |MAL-ED         |NEPAL                        |Underweight   |           0|      0|   238|
|0-24 months |MAL-ED         |NEPAL                        |Underweight   |           1|      0|   238|
|0-24 months |MAL-ED         |PERU                         |Normal weight |           0|    260|   290|
|0-24 months |MAL-ED         |PERU                         |Normal weight |           1|     25|   290|
|0-24 months |MAL-ED         |PERU                         |Underweight   |           0|      3|   290|
|0-24 months |MAL-ED         |PERU                         |Underweight   |           1|      2|   290|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Normal weight |           0|    205|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Normal weight |           1|     57|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Underweight   |           0|      8|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Underweight   |           1|      0|   270|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Normal weight |           0|    210|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Normal weight |           1|     32|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Underweight   |           0|     10|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Underweight   |           1|      4|   256|
|0-24 months |NIH-Birth      |BANGLADESH                   |Normal weight |           0|    282|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |Normal weight |           1|    238|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |Underweight   |           0|     44|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |Underweight   |           1|     60|   624|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Normal weight |           0|    470|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Normal weight |           1|    217|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Underweight   |           0|     36|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Underweight   |           1|     32|   755|
|0-24 months |PROBIT         |BELARUS                      |Normal weight |           0|   9524| 13728|
|0-24 months |PROBIT         |BELARUS                      |Normal weight |           1|   3681| 13728|
|0-24 months |PROBIT         |BELARUS                      |Underweight   |           0|    350| 13728|
|0-24 months |PROBIT         |BELARUS                      |Underweight   |           1|    173| 13728|
|0-24 months |PROVIDE        |BANGLADESH                   |Normal weight |           0|    364|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |Normal weight |           1|    178|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |Underweight   |           0|     64|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |Underweight   |           1|     63|   669|
|0-24 months |SAS-CompFeed   |INDIA                        |Normal weight |           0|    646|  1390|
|0-24 months |SAS-CompFeed   |INDIA                        |Normal weight |           1|    373|  1390|
|0-24 months |SAS-CompFeed   |INDIA                        |Underweight   |           0|    173|  1390|
|0-24 months |SAS-CompFeed   |INDIA                        |Underweight   |           1|    198|  1390|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight |           0|   1764|  2345|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight |           1|    543|  2345|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Underweight   |           0|     25|  2345|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Underweight   |           1|     13|  2345|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Normal weight |           0|   7029|  9797|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Normal weight |           1|   2252|  9797|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Underweight   |           0|    347|  9797|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Underweight   |           1|    169|  9797|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Normal weight |           0|  13683| 26739|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Normal weight |           1|   2817| 26739|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Underweight   |           0|   8344| 26739|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Underweight   |           1|   1895| 26739|
|0-6 months  |LCNI-5         |MALAWI                       |Normal weight |           0|    220|   271|
|0-6 months  |LCNI-5         |MALAWI                       |Normal weight |           1|      4|   271|
|0-6 months  |LCNI-5         |MALAWI                       |Underweight   |           0|     47|   271|
|0-6 months  |LCNI-5         |MALAWI                       |Underweight   |           1|      0|   271|
|0-6 months  |MAL-ED         |BANGLADESH                   |Normal weight |           0|    177|   254|
|0-6 months  |MAL-ED         |BANGLADESH                   |Normal weight |           1|     45|   254|
|0-6 months  |MAL-ED         |BANGLADESH                   |Underweight   |           0|     19|   254|
|0-6 months  |MAL-ED         |BANGLADESH                   |Underweight   |           1|     13|   254|
|0-6 months  |MAL-ED         |BRAZIL                       |Normal weight |           0|    199|   221|
|0-6 months  |MAL-ED         |BRAZIL                       |Normal weight |           1|     12|   221|
|0-6 months  |MAL-ED         |BRAZIL                       |Underweight   |           0|      8|   221|
|0-6 months  |MAL-ED         |BRAZIL                       |Underweight   |           1|      2|   221|
|0-6 months  |MAL-ED         |INDIA                        |Normal weight |           0|    135|   242|
|0-6 months  |MAL-ED         |INDIA                        |Normal weight |           1|     58|   242|
|0-6 months  |MAL-ED         |INDIA                        |Underweight   |           0|     28|   242|
|0-6 months  |MAL-ED         |INDIA                        |Underweight   |           1|     21|   242|
|0-6 months  |MAL-ED         |NEPAL                        |Normal weight |           0|    190|   238|
|0-6 months  |MAL-ED         |NEPAL                        |Normal weight |           1|     48|   238|
|0-6 months  |MAL-ED         |NEPAL                        |Underweight   |           0|      0|   238|
|0-6 months  |MAL-ED         |NEPAL                        |Underweight   |           1|      0|   238|
|0-6 months  |MAL-ED         |PERU                         |Normal weight |           0|    274|   290|
|0-6 months  |MAL-ED         |PERU                         |Normal weight |           1|     11|   290|
|0-6 months  |MAL-ED         |PERU                         |Underweight   |           0|      5|   290|
|0-6 months  |MAL-ED         |PERU                         |Underweight   |           1|      0|   290|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Normal weight |           0|    234|   270|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Normal weight |           1|     28|   270|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Underweight   |           0|      8|   270|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Underweight   |           1|      0|   270|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Normal weight |           0|    230|   256|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Normal weight |           1|     12|   256|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Underweight   |           0|     13|   256|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Underweight   |           1|      1|   256|
|0-6 months  |NIH-Birth      |BANGLADESH                   |Normal weight |           0|    341|   622|
|0-6 months  |NIH-Birth      |BANGLADESH                   |Normal weight |           1|    178|   622|
|0-6 months  |NIH-Birth      |BANGLADESH                   |Underweight   |           0|     59|   622|
|0-6 months  |NIH-Birth      |BANGLADESH                   |Underweight   |           1|     44|   622|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Normal weight |           0|    513|   755|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Normal weight |           1|    174|   755|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Underweight   |           0|     48|   755|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Underweight   |           1|     20|   755|
|0-6 months  |PROBIT         |BELARUS                      |Normal weight |           0|   9601| 13728|
|0-6 months  |PROBIT         |BELARUS                      |Normal weight |           1|   3604| 13728|
|0-6 months  |PROBIT         |BELARUS                      |Underweight   |           0|    352| 13728|
|0-6 months  |PROBIT         |BELARUS                      |Underweight   |           1|    171| 13728|
|0-6 months  |PROVIDE        |BANGLADESH                   |Normal weight |           0|    414|   669|
|0-6 months  |PROVIDE        |BANGLADESH                   |Normal weight |           1|    128|   669|
|0-6 months  |PROVIDE        |BANGLADESH                   |Underweight   |           0|     79|   669|
|0-6 months  |PROVIDE        |BANGLADESH                   |Underweight   |           1|     48|   669|
|0-6 months  |SAS-CompFeed   |INDIA                        |Normal weight |           0|    819|  1383|
|0-6 months  |SAS-CompFeed   |INDIA                        |Normal weight |           1|    195|  1383|
|0-6 months  |SAS-CompFeed   |INDIA                        |Underweight   |           0|    266|  1383|
|0-6 months  |SAS-CompFeed   |INDIA                        |Underweight   |           1|    103|  1383|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight |           0|   1986|  2345|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight |           1|    321|  2345|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Underweight   |           0|     30|  2345|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Underweight   |           1|      8|  2345|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Normal weight |           0|   7587|  9760|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Normal weight |           1|   1664|  9760|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Underweight   |           0|    391|  9760|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Underweight   |           1|    118|  9760|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |Normal weight |           0|   2161|  3217|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |Normal weight |           1|    602|  3217|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |Underweight   |           0|    323|  3217|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |Underweight   |           1|    131|  3217|
|6-24 months |JiVitA-3       |BANGLADESH                   |Normal weight |           0|   8966| 17246|
|6-24 months |JiVitA-3       |BANGLADESH                   |Normal weight |           1|   1661| 17246|
|6-24 months |JiVitA-3       |BANGLADESH                   |Underweight   |           0|   5456| 17246|
|6-24 months |JiVitA-3       |BANGLADESH                   |Underweight   |           1|   1163| 17246|
|6-24 months |LCNI-5         |MALAWI                       |Normal weight |           0|    646|   823|
|6-24 months |LCNI-5         |MALAWI                       |Normal weight |           1|     38|   823|
|6-24 months |LCNI-5         |MALAWI                       |Underweight   |           0|    114|   823|
|6-24 months |LCNI-5         |MALAWI                       |Underweight   |           1|     25|   823|
|6-24 months |MAL-ED         |BANGLADESH                   |Normal weight |           0|    174|   240|
|6-24 months |MAL-ED         |BANGLADESH                   |Normal weight |           1|     35|   240|
|6-24 months |MAL-ED         |BANGLADESH                   |Underweight   |           0|     23|   240|
|6-24 months |MAL-ED         |BANGLADESH                   |Underweight   |           1|      8|   240|
|6-24 months |MAL-ED         |BRAZIL                       |Normal weight |           0|    191|   206|
|6-24 months |MAL-ED         |BRAZIL                       |Normal weight |           1|      6|   206|
|6-24 months |MAL-ED         |BRAZIL                       |Underweight   |           0|      9|   206|
|6-24 months |MAL-ED         |BRAZIL                       |Underweight   |           1|      0|   206|
|6-24 months |MAL-ED         |INDIA                        |Normal weight |           0|    138|   234|
|6-24 months |MAL-ED         |INDIA                        |Normal weight |           1|     48|   234|
|6-24 months |MAL-ED         |INDIA                        |Underweight   |           0|     32|   234|
|6-24 months |MAL-ED         |INDIA                        |Underweight   |           1|     16|   234|
|6-24 months |MAL-ED         |NEPAL                        |Normal weight |           0|    199|   235|
|6-24 months |MAL-ED         |NEPAL                        |Normal weight |           1|     36|   235|
|6-24 months |MAL-ED         |NEPAL                        |Underweight   |           0|      0|   235|
|6-24 months |MAL-ED         |NEPAL                        |Underweight   |           1|      0|   235|
|6-24 months |MAL-ED         |PERU                         |Normal weight |           0|    248|   269|
|6-24 months |MAL-ED         |PERU                         |Normal weight |           1|     16|   269|
|6-24 months |MAL-ED         |PERU                         |Underweight   |           0|      3|   269|
|6-24 months |MAL-ED         |PERU                         |Underweight   |           1|      2|   269|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Normal weight |           0|    210|   254|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Normal weight |           1|     37|   254|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Underweight   |           0|      7|   254|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Underweight   |           1|      0|   254|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Normal weight |           0|    207|   245|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Normal weight |           1|     25|   245|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Underweight   |           0|     10|   245|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Underweight   |           1|      3|   245|
|6-24 months |NIH-Birth      |BANGLADESH                   |Normal weight |           0|    327|   542|
|6-24 months |NIH-Birth      |BANGLADESH                   |Normal weight |           1|    122|   542|
|6-24 months |NIH-Birth      |BANGLADESH                   |Underweight   |           0|     56|   542|
|6-24 months |NIH-Birth      |BANGLADESH                   |Underweight   |           1|     37|   542|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Normal weight |           0|    585|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Normal weight |           1|     78|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Underweight   |           0|     49|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Underweight   |           1|     18|   730|
|6-24 months |PROBIT         |BELARUS                      |Normal weight |           0|  13079| 13720|
|6-24 months |PROBIT         |BELARUS                      |Normal weight |           1|    118| 13720|
|6-24 months |PROBIT         |BELARUS                      |Underweight   |           0|    517| 13720|
|6-24 months |PROBIT         |BELARUS                      |Underweight   |           1|      6| 13720|
|6-24 months |PROVIDE        |BANGLADESH                   |Normal weight |           0|    434|   614|
|6-24 months |PROVIDE        |BANGLADESH                   |Normal weight |           1|     72|   614|
|6-24 months |PROVIDE        |BANGLADESH                   |Underweight   |           0|     81|   614|
|6-24 months |PROVIDE        |BANGLADESH                   |Underweight   |           1|     27|   614|
|6-24 months |SAS-CompFeed   |INDIA                        |Normal weight |           0|    689|  1277|
|6-24 months |SAS-CompFeed   |INDIA                        |Normal weight |           1|    248|  1277|
|6-24 months |SAS-CompFeed   |INDIA                        |Underweight   |           0|    195|  1277|
|6-24 months |SAS-CompFeed   |INDIA                        |Underweight   |           1|    145|  1277|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight |           0|   1630|  1972|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight |           1|    312|  1972|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Underweight   |           0|     24|  1972|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Underweight   |           1|      6|  1972|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Normal weight |           0|   7367|  8597|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Normal weight |           1|    772|  8597|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Underweight   |           0|    382|  8597|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Underweight   |           1|     76|  8597|


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
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

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




# Results Detail

## Results Plots
![](/tmp/714075fc-133e-4720-b8ca-a39e488f3c09/0c7b93eb-8e15-42e6-aea9-27bb73c177c3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/714075fc-133e-4720-b8ca-a39e488f3c09/0c7b93eb-8e15-42e6-aea9-27bb73c177c3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/714075fc-133e-4720-b8ca-a39e488f3c09/0c7b93eb-8e15-42e6-aea9-27bb73c177c3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/714075fc-133e-4720-b8ca-a39e488f3c09/0c7b93eb-8e15-42e6-aea9-27bb73c177c3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Normal weight      |NA             | 0.2176412|  0.1880735| 0.2472089|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Underweight        |NA             | 0.2820784|  0.2232777| 0.3408791|
|0-24 months |JiVitA-3       |BANGLADESH                   |Normal weight      |NA             | 0.2488069|  0.2411679| 0.2564458|
|0-24 months |JiVitA-3       |BANGLADESH                   |Underweight        |NA             | 0.2728160|  0.2633701| 0.2822618|
|0-24 months |LCNI-5         |MALAWI                       |Normal weight      |NA             | 0.0590987|  0.0414530| 0.0767444|
|0-24 months |LCNI-5         |MALAWI                       |Underweight        |NA             | 0.1637364|  0.1035981| 0.2238748|
|0-24 months |MAL-ED         |BANGLADESH                   |Normal weight      |NA             | 0.3084472|  0.2477239| 0.3691706|
|0-24 months |MAL-ED         |BANGLADESH                   |Underweight        |NA             | 0.5423914|  0.3588097| 0.7259731|
|0-24 months |MAL-ED         |INDIA                        |Normal weight      |NA             | 0.4562438|  0.3858525| 0.5266350|
|0-24 months |MAL-ED         |INDIA                        |Underweight        |NA             | 0.5916020|  0.4472910| 0.7359129|
|0-24 months |NIH-Birth      |BANGLADESH                   |Normal weight      |NA             | 0.4569878|  0.4140969| 0.4998787|
|0-24 months |NIH-Birth      |BANGLADESH                   |Underweight        |NA             | 0.5796186|  0.4841148| 0.6751225|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Normal weight      |NA             | 0.3187490|  0.2836887| 0.3538093|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Underweight        |NA             | 0.4913751|  0.3577768| 0.6249733|
|0-24 months |PROBIT         |BELARUS                      |Normal weight      |NA             | 0.2789093|  0.2166858| 0.3411328|
|0-24 months |PROBIT         |BELARUS                      |Underweight        |NA             | 0.3338725|  0.2537552| 0.4139897|
|0-24 months |PROVIDE        |BANGLADESH                   |Normal weight      |NA             | 0.3303989|  0.2907204| 0.3700773|
|0-24 months |PROVIDE        |BANGLADESH                   |Underweight        |NA             | 0.4861373|  0.3928289| 0.5794457|
|0-24 months |SAS-CompFeed   |INDIA                        |Normal weight      |NA             | 0.3631256|  0.3072146| 0.4190367|
|0-24 months |SAS-CompFeed   |INDIA                        |Underweight        |NA             | 0.5362040|  0.4523152| 0.6200928|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight      |NA             | 0.2354590|  0.2179679| 0.2529502|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Underweight        |NA             | 0.3313133|  0.2296872| 0.4329394|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Normal weight      |NA             | 0.2428821|  0.2341498| 0.2516144|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Underweight        |NA             | 0.3261700|  0.2836692| 0.3686709|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Normal weight      |NA             | 0.1701951|  0.1632787| 0.1771115|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Underweight        |NA             | 0.1858796|  0.1777388| 0.1940204|
|0-6 months  |MAL-ED         |BANGLADESH                   |Normal weight      |NA             | 0.2029432|  0.1498911| 0.2559952|
|0-6 months  |MAL-ED         |BANGLADESH                   |Underweight        |NA             | 0.4435621|  0.2594123| 0.6277119|
|0-6 months  |MAL-ED         |INDIA                        |Normal weight      |NA             | 0.2997508|  0.2348748| 0.3646267|
|0-6 months  |MAL-ED         |INDIA                        |Underweight        |NA             | 0.4272393|  0.2858159| 0.5686626|
|0-6 months  |NIH-Birth      |BANGLADESH                   |Normal weight      |NA             | 0.3416729|  0.3007915| 0.3825543|
|0-6 months  |NIH-Birth      |BANGLADESH                   |Underweight        |NA             | 0.4304596|  0.3340312| 0.5268881|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Normal weight      |NA             | 0.2540683|  0.2212971| 0.2868395|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Underweight        |NA             | 0.3197735|  0.1918234| 0.4477237|
|0-6 months  |PROBIT         |BELARUS                      |Normal weight      |NA             | 0.2729424|  0.2104762| 0.3354086|
|0-6 months  |PROBIT         |BELARUS                      |Underweight        |NA             | 0.3333887|  0.2565329| 0.4102444|
|0-6 months  |PROVIDE        |BANGLADESH                   |Normal weight      |NA             | 0.2384912|  0.2023464| 0.2746359|
|0-6 months  |PROVIDE        |BANGLADESH                   |Underweight        |NA             | 0.3878250|  0.2980572| 0.4775927|
|0-6 months  |SAS-CompFeed   |INDIA                        |Normal weight      |NA             | 0.1910618|  0.1494389| 0.2326847|
|0-6 months  |SAS-CompFeed   |INDIA                        |Underweight        |NA             | 0.2880964|  0.2171024| 0.3590904|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight      |NA             | 0.1391417|  0.1248886| 0.1533949|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Underweight        |NA             | 0.2105263|  0.1264891| 0.2945635|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Normal weight      |NA             | 0.1800032|  0.1721673| 0.1878391|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Underweight        |NA             | 0.2318533|  0.1940715| 0.2696352|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |Normal weight      |NA             | 0.2177097|  0.1880844| 0.2473351|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |Underweight        |NA             | 0.2906862|  0.2295085| 0.3518639|
|6-24 months |JiVitA-3       |BANGLADESH                   |Normal weight      |NA             | 0.1560630|  0.1487856| 0.1633405|
|6-24 months |JiVitA-3       |BANGLADESH                   |Underweight        |NA             | 0.1759899|  0.1663014| 0.1856784|
|6-24 months |LCNI-5         |MALAWI                       |Normal weight      |NA             | 0.0557168|  0.0384700| 0.0729636|
|6-24 months |LCNI-5         |MALAWI                       |Underweight        |NA             | 0.1681642|  0.1058909| 0.2304376|
|6-24 months |MAL-ED         |BANGLADESH                   |Normal weight      |NA             | 0.1674641|  0.1167366| 0.2181917|
|6-24 months |MAL-ED         |BANGLADESH                   |Underweight        |NA             | 0.2580645|  0.1037094| 0.4124197|
|6-24 months |MAL-ED         |INDIA                        |Normal weight      |NA             | 0.2588874|  0.1957007| 0.3220740|
|6-24 months |MAL-ED         |INDIA                        |Underweight        |NA             | 0.3166114|  0.1796811| 0.4535418|
|6-24 months |NIH-Birth      |BANGLADESH                   |Normal weight      |NA             | 0.2721823|  0.2310067| 0.3133579|
|6-24 months |NIH-Birth      |BANGLADESH                   |Underweight        |NA             | 0.4014451|  0.3001096| 0.5027805|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Normal weight      |NA             | 0.1175525|  0.0930077| 0.1420973|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Underweight        |NA             | 0.2580333|  0.1472101| 0.3688566|
|6-24 months |PROBIT         |BELARUS                      |Normal weight      |NA             | 0.0089414|  0.0044666| 0.0134163|
|6-24 months |PROBIT         |BELARUS                      |Underweight        |NA             | 0.0114723| -0.0012562| 0.0242007|
|6-24 months |PROVIDE        |BANGLADESH                   |Normal weight      |NA             | 0.1437014|  0.1132376| 0.1741652|
|6-24 months |PROVIDE        |BANGLADESH                   |Underweight        |NA             | 0.2478322|  0.1651698| 0.3304946|
|6-24 months |SAS-CompFeed   |INDIA                        |Normal weight      |NA             | 0.2636975|  0.2139379| 0.3134572|
|6-24 months |SAS-CompFeed   |INDIA                        |Underweight        |NA             | 0.4227097|  0.3456562| 0.4997632|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight      |NA             | 0.1606591|  0.1441588| 0.1771595|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Underweight        |NA             | 0.2000000|  0.1128772| 0.2871228|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Normal weight      |NA             | 0.0950480|  0.0886714| 0.1014246|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Underweight        |NA             | 0.1719282|  0.1352024| 0.2086541|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.2278520| 0.2008644| 0.2548397|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.2580489| 0.2515797| 0.2645181|
|0-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.0788530| 0.0605839| 0.0971222|
|0-24 months |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.3346457| 0.2765014| 0.3927899|
|0-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.4834711| 0.4203794| 0.5465628|
|0-24 months |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.4775641| 0.4383415| 0.5167867|
|0-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.3298013| 0.2962438| 0.3633589|
|0-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.2807401| 0.2185990| 0.3428812|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.3602392| 0.3238339| 0.3966444|
|0-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.4107914| 0.3512139| 0.4703688|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.2371002| 0.2198828| 0.2543177|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.2471165| 0.2385749| 0.2556580|
|0-6 months  |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.1762220| 0.1706009| 0.1818431|
|0-6 months  |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.2283465| 0.1766220| 0.2800709|
|0-6 months  |MAL-ED         |INDIA                        |NA                 |NA             | 0.3264463| 0.2672449| 0.3856476|
|0-6 months  |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.3569132| 0.3192325| 0.3945938|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.2569536| 0.2257649| 0.2881424|
|0-6 months  |PROBIT         |BELARUS                      |NA                 |NA             | 0.2749854| 0.2126043| 0.3373666|
|0-6 months  |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.2630792| 0.2296894| 0.2964690|
|0-6 months  |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.2154736| 0.1691818| 0.2617655|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1402985| 0.1262390| 0.1543580|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.1825820| 0.1749172| 0.1902467|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.2278520| 0.2008644| 0.2548397|
|6-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.1637481| 0.1576337| 0.1698625|
|6-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.0765492| 0.0583736| 0.0947248|
|6-24 months |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.1791667| 0.1305478| 0.2277856|
|6-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.2735043| 0.2162683| 0.3307402|
|6-24 months |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.2933579| 0.2549918| 0.3317241|
|6-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.1315068| 0.1069744| 0.1560393|
|6-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.0090379| 0.0045686| 0.0135072|
|6-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.1612378| 0.1321259| 0.1903497|
|6-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.3077525| 0.2591695| 0.3563356|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1612576| 0.1450216| 0.1774936|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.0986391| 0.0923357| 0.1049424|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level | estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|--------:|---------:|--------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Underweight        |Normal weight  | 1.296071| 1.0027483| 1.675195|
|0-24 months |JiVitA-3       |BANGLADESH                   |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |Underweight        |Normal weight  | 1.096497| 1.0520383| 1.142834|
|0-24 months |LCNI-5         |MALAWI                       |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|0-24 months |LCNI-5         |MALAWI                       |Underweight        |Normal weight  | 2.770559| 1.7266455| 4.445613|
|0-24 months |MAL-ED         |BANGLADESH                   |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |BANGLADESH                   |Underweight        |Normal weight  | 1.758458| 1.1878798| 2.603103|
|0-24 months |MAL-ED         |INDIA                        |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |INDIA                        |Underweight        |Normal weight  | 1.296679| 0.9689986| 1.735170|
|0-24 months |NIH-Birth      |BANGLADESH                   |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|0-24 months |NIH-Birth      |BANGLADESH                   |Underweight        |Normal weight  | 1.268346| 1.0491859| 1.533286|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Underweight        |Normal weight  | 1.541574| 1.1496347| 2.067134|
|0-24 months |PROBIT         |BELARUS                      |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|0-24 months |PROBIT         |BELARUS                      |Underweight        |Normal weight  | 1.197065| 1.0068345| 1.423237|
|0-24 months |PROVIDE        |BANGLADESH                   |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|0-24 months |PROVIDE        |BANGLADESH                   |Underweight        |Normal weight  | 1.471365| 1.1730927| 1.845476|
|0-24 months |SAS-CompFeed   |INDIA                        |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|0-24 months |SAS-CompFeed   |INDIA                        |Underweight        |Normal weight  | 1.476635| 1.2941174| 1.684894|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Underweight        |Normal weight  | 1.407095| 1.0261717| 1.929421|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Underweight        |Normal weight  | 1.342915| 1.1731221| 1.537283|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Underweight        |Normal weight  | 1.092156| 1.0333942| 1.154259|
|0-6 months  |MAL-ED         |BANGLADESH                   |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|0-6 months  |MAL-ED         |BANGLADESH                   |Underweight        |Normal weight  | 2.185646| 1.3357481| 3.576311|
|0-6 months  |MAL-ED         |INDIA                        |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|0-6 months  |MAL-ED         |INDIA                        |Underweight        |Normal weight  | 1.425315| 0.9588313| 2.118749|
|0-6 months  |NIH-Birth      |BANGLADESH                   |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|0-6 months  |NIH-Birth      |BANGLADESH                   |Underweight        |Normal weight  | 1.259859| 0.9780612| 1.622848|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Underweight        |Normal weight  | 1.258613| 0.8264609| 1.916734|
|0-6 months  |PROBIT         |BELARUS                      |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|0-6 months  |PROBIT         |BELARUS                      |Underweight        |Normal weight  | 1.221461| 1.0387846| 1.436263|
|0-6 months  |PROVIDE        |BANGLADESH                   |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|0-6 months  |PROVIDE        |BANGLADESH                   |Underweight        |Normal weight  | 1.626161| 1.2332598| 2.144235|
|0-6 months  |SAS-CompFeed   |INDIA                        |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|0-6 months  |SAS-CompFeed   |INDIA                        |Underweight        |Normal weight  | 1.507870| 1.2776398| 1.779588|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Underweight        |Normal weight  | 1.513035| 1.0020087| 2.284685|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Underweight        |Normal weight  | 1.288051| 1.0881383| 1.524692|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |Underweight        |Normal weight  | 1.335201| 1.0332322| 1.725421|
|6-24 months |JiVitA-3       |BANGLADESH                   |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|6-24 months |JiVitA-3       |BANGLADESH                   |Underweight        |Normal weight  | 1.127685| 1.0535262| 1.207063|
|6-24 months |LCNI-5         |MALAWI                       |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|6-24 months |LCNI-5         |MALAWI                       |Underweight        |Normal weight  | 3.018198| 1.8667224| 4.879954|
|6-24 months |MAL-ED         |BANGLADESH                   |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|6-24 months |MAL-ED         |BANGLADESH                   |Underweight        |Normal weight  | 1.541014| 0.7881894| 3.012884|
|6-24 months |MAL-ED         |INDIA                        |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|6-24 months |MAL-ED         |INDIA                        |Underweight        |Normal weight  | 1.222970| 0.7428578| 2.013380|
|6-24 months |NIH-Birth      |BANGLADESH                   |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|6-24 months |NIH-Birth      |BANGLADESH                   |Underweight        |Normal weight  | 1.474913| 1.0993343| 1.978804|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Underweight        |Normal weight  | 2.195048| 1.3611983| 3.539701|
|6-24 months |PROBIT         |BELARUS                      |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|6-24 months |PROBIT         |BELARUS                      |Underweight        |Normal weight  | 1.283048| 0.4377605| 3.760530|
|6-24 months |PROVIDE        |BANGLADESH                   |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|6-24 months |PROVIDE        |BANGLADESH                   |Underweight        |Normal weight  | 1.724633| 1.1617838| 2.560166|
|6-24 months |SAS-CompFeed   |INDIA                        |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|6-24 months |SAS-CompFeed   |INDIA                        |Underweight        |Normal weight  | 1.603010| 1.3019817| 1.973638|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Underweight        |Normal weight  | 1.244872| 0.7957064| 1.947585|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Underweight        |Normal weight  | 1.808857| 1.4459806| 2.262799|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Normal weight      |NA             | 0.0102108| -0.0001660| 0.0205876|
|0-24 months |JiVitA-3       |BANGLADESH                   |Normal weight      |NA             | 0.0092420|  0.0050987| 0.0133853|
|0-24 months |LCNI-5         |MALAWI                       |Normal weight      |NA             | 0.0197543|  0.0082627| 0.0312459|
|0-24 months |MAL-ED         |BANGLADESH                   |Normal weight      |NA             | 0.0261985|  0.0012372| 0.0511598|
|0-24 months |MAL-ED         |INDIA                        |Normal weight      |NA             | 0.0272273| -0.0060433| 0.0604979|
|0-24 months |NIH-Birth      |BANGLADESH                   |Normal weight      |NA             | 0.0205763|  0.0027953| 0.0383574|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Normal weight      |NA             | 0.0110523| -0.0008325| 0.0229371|
|0-24 months |PROBIT         |BELARUS                      |Normal weight      |NA             | 0.0018308| -0.0002748| 0.0039364|
|0-24 months |PROVIDE        |BANGLADESH                   |Normal weight      |NA             | 0.0298403|  0.0106004| 0.0490802|
|0-24 months |SAS-CompFeed   |INDIA                        |Normal weight      |NA             | 0.0476657|  0.0308812| 0.0644503|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight      |NA             | 0.0016412| -0.0008985| 0.0041809|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Normal weight      |NA             | 0.0042344|  0.0020111| 0.0064576|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Normal weight      |NA             | 0.0060269|  0.0022515| 0.0098023|
|0-6 months  |MAL-ED         |BANGLADESH                   |Normal weight      |NA             | 0.0254033|  0.0012589| 0.0495476|
|0-6 months  |MAL-ED         |INDIA                        |Normal weight      |NA             | 0.0266955| -0.0053233| 0.0587143|
|0-6 months  |NIH-Birth      |BANGLADESH                   |Normal weight      |NA             | 0.0152403| -0.0020728| 0.0325533|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Normal weight      |NA             | 0.0028854| -0.0075983| 0.0133691|
|0-6 months  |PROBIT         |BELARUS                      |Normal weight      |NA             | 0.0020430| -0.0000194| 0.0041054|
|0-6 months  |PROVIDE        |BANGLADESH                   |Normal weight      |NA             | 0.0245881|  0.0062858| 0.0428903|
|0-6 months  |SAS-CompFeed   |INDIA                        |Normal weight      |NA             | 0.0244118|  0.0133678| 0.0354558|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight      |NA             | 0.0011568| -0.0010052| 0.0033187|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Normal weight      |NA             | 0.0025788|  0.0006036| 0.0045539|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |Normal weight      |NA             | 0.0101423| -0.0001960| 0.0204806|
|6-24 months |JiVitA-3       |BANGLADESH                   |Normal weight      |NA             | 0.0076851|  0.0033128| 0.0120573|
|6-24 months |LCNI-5         |MALAWI                       |Normal weight      |NA             | 0.0208324|  0.0092600| 0.0324048|
|6-24 months |MAL-ED         |BANGLADESH                   |Normal weight      |NA             | 0.0117026| -0.0096347| 0.0330398|
|6-24 months |MAL-ED         |INDIA                        |Normal weight      |NA             | 0.0146169| -0.0161117| 0.0453454|
|6-24 months |NIH-Birth      |BANGLADESH                   |Normal weight      |NA             | 0.0211757|  0.0023435| 0.0400079|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Normal weight      |NA             | 0.0139544|  0.0034193| 0.0244894|
|6-24 months |PROBIT         |BELARUS                      |Normal weight      |NA             | 0.0000965| -0.0003675| 0.0005605|
|6-24 months |PROVIDE        |BANGLADESH                   |Normal weight      |NA             | 0.0175364|  0.0018821| 0.0331907|
|6-24 months |SAS-CompFeed   |INDIA                        |Normal weight      |NA             | 0.0440550|  0.0243570| 0.0637531|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight      |NA             | 0.0005985| -0.0016285| 0.0028255|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Normal weight      |NA             | 0.0035911|  0.0017081| 0.0054740|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Normal weight      |NA             | 0.0448134| -0.0025311| 0.0899221|
|0-24 months |JiVitA-3       |BANGLADESH                   |Normal weight      |NA             | 0.0358150|  0.0196100| 0.0517520|
|0-24 months |LCNI-5         |MALAWI                       |Normal weight      |NA             | 0.2505210|  0.1018922| 0.3745530|
|0-24 months |MAL-ED         |BANGLADESH                   |Normal weight      |NA             | 0.0782872|  0.0008595| 0.1497147|
|0-24 months |MAL-ED         |INDIA                        |Normal weight      |NA             | 0.0563163| -0.0152434| 0.1228321|
|0-24 months |NIH-Birth      |BANGLADESH                   |Normal weight      |NA             | 0.0430860|  0.0049842| 0.0797288|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Normal weight      |NA             | 0.0335120| -0.0032027| 0.0688831|
|0-24 months |PROBIT         |BELARUS                      |Normal weight      |NA             | 0.0065212| -0.0011777| 0.0141610|
|0-24 months |PROVIDE        |BANGLADESH                   |Normal weight      |NA             | 0.0828347|  0.0279123| 0.1346540|
|0-24 months |SAS-CompFeed   |INDIA                        |Normal weight      |NA             | 0.1160340|  0.0768798| 0.1535274|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight      |NA             | 0.0069219| -0.0038773| 0.0176048|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Normal weight      |NA             | 0.0171350|  0.0081034| 0.0260845|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Normal weight      |NA             | 0.0342005|  0.0124566| 0.0554657|
|0-6 months  |MAL-ED         |BANGLADESH                   |Normal weight      |NA             | 0.1112488|  0.0006384| 0.2096168|
|0-6 months  |MAL-ED         |INDIA                        |Normal weight      |NA             | 0.0817761| -0.0215866| 0.1746808|
|0-6 months  |NIH-Birth      |BANGLADESH                   |Normal weight      |NA             | 0.0427002| -0.0071023| 0.0900399|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Normal weight      |NA             | 0.0112292| -0.0304291| 0.0512032|
|0-6 months  |PROBIT         |BELARUS                      |Normal weight      |NA             | 0.0074294| -0.0003285| 0.0151272|
|0-6 months  |PROVIDE        |BANGLADESH                   |Normal weight      |NA             | 0.0934626|  0.0215661| 0.1600760|
|0-6 months  |SAS-CompFeed   |INDIA                        |Normal weight      |NA             | 0.1132936|  0.0683724| 0.1560488|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight      |NA             | 0.0082450| -0.0073186| 0.0235682|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Normal weight      |NA             | 0.0141238|  0.0032545| 0.0248746|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |Normal weight      |NA             | 0.0445126| -0.0026913| 0.0894943|
|6-24 months |JiVitA-3       |BANGLADESH                   |Normal weight      |NA             | 0.0469323|  0.0199139| 0.0732058|
|6-24 months |LCNI-5         |MALAWI                       |Normal weight      |NA             | 0.2721445|  0.1191554| 0.3985617|
|6-24 months |MAL-ED         |BANGLADESH                   |Normal weight      |NA             | 0.0653166| -0.0608054| 0.1764436|
|6-24 months |MAL-ED         |INDIA                        |Normal weight      |NA             | 0.0534430| -0.0656596| 0.1592341|
|6-24 months |NIH-Birth      |BANGLADESH                   |Normal weight      |NA             | 0.0721837|  0.0058903| 0.1340563|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Normal weight      |NA             | 0.1061113|  0.0242704| 0.1810876|
|6-24 months |PROBIT         |BELARUS                      |Normal weight      |NA             | 0.0106745| -0.0420841| 0.0607620|
|6-24 months |PROVIDE        |BANGLADESH                   |Normal weight      |NA             | 0.1087610|  0.0079379| 0.1993375|
|6-24 months |SAS-CompFeed   |INDIA                        |Normal weight      |NA             | 0.1431508|  0.0758637| 0.2055386|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight      |NA             | 0.0037114| -0.0102192| 0.0174499|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Normal weight      |NA             | 0.0364061|  0.0172439| 0.0551947|
