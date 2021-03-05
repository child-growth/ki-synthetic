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

**Intervention Variable:** mhtcm

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* delta_W_mage
* delta_meducyrs
* delta_feducyrs

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |mhtcm        | ever_wasted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:------------|-----------:|------:|-----:|
|0-24 months |COHORTS        |GUATEMALA                    |>=155 cm     |           0|    121|  1275|
|0-24 months |COHORTS        |GUATEMALA                    |>=155 cm     |           1|     44|  1275|
|0-24 months |COHORTS        |GUATEMALA                    |<151 cm      |           0|    605|  1275|
|0-24 months |COHORTS        |GUATEMALA                    |<151 cm      |           1|    230|  1275|
|0-24 months |COHORTS        |GUATEMALA                    |[151-155) cm |           0|    214|  1275|
|0-24 months |COHORTS        |GUATEMALA                    |[151-155) cm |           1|     61|  1275|
|0-24 months |COHORTS        |INDIA                        |>=155 cm     |           0|    381|  1905|
|0-24 months |COHORTS        |INDIA                        |>=155 cm     |           1|    190|  1905|
|0-24 months |COHORTS        |INDIA                        |<151 cm      |           0|    547|  1905|
|0-24 months |COHORTS        |INDIA                        |<151 cm      |           1|    276|  1905|
|0-24 months |COHORTS        |INDIA                        |[151-155) cm |           0|    341|  1905|
|0-24 months |COHORTS        |INDIA                        |[151-155) cm |           1|    170|  1905|
|0-24 months |COHORTS        |PHILIPPINES                  |>=155 cm     |           0|    389|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |>=155 cm     |           1|    240|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |<151 cm      |           0|    878|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |<151 cm      |           1|    662|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |[151-155) cm |           0|    549|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |[151-155) cm |           1|    327|  3045|
|0-24 months |Guatemala BSC  |GUATEMALA                    |>=155 cm     |           0|     33|   235|
|0-24 months |Guatemala BSC  |GUATEMALA                    |>=155 cm     |           1|      3|   235|
|0-24 months |Guatemala BSC  |GUATEMALA                    |<151 cm      |           0|    127|   235|
|0-24 months |Guatemala BSC  |GUATEMALA                    |<151 cm      |           1|     16|   235|
|0-24 months |Guatemala BSC  |GUATEMALA                    |[151-155) cm |           0|     49|   235|
|0-24 months |Guatemala BSC  |GUATEMALA                    |[151-155) cm |           1|      7|   235|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm     |           0|   2261|  3217|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm     |           1|    639|  3217|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<151 cm      |           0|     62|  3217|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<151 cm      |           1|     29|  3217|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[151-155) cm |           0|    161|  3217|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[151-155) cm |           1|     65|  3217|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm     |           0|   3093| 26837|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm     |           1|   1033| 26837|
|0-24 months |JiVitA-3       |BANGLADESH                   |<151 cm      |           0|  11759| 26837|
|0-24 months |JiVitA-3       |BANGLADESH                   |<151 cm      |           1|   4157| 26837|
|0-24 months |JiVitA-3       |BANGLADESH                   |[151-155) cm |           0|   5060| 26837|
|0-24 months |JiVitA-3       |BANGLADESH                   |[151-155) cm |           1|   1735| 26837|
|0-24 months |Keneba         |GAMBIA                       |>=155 cm     |           0|   1076|  2434|
|0-24 months |Keneba         |GAMBIA                       |>=155 cm     |           1|    939|  2434|
|0-24 months |Keneba         |GAMBIA                       |<151 cm      |           0|     50|  2434|
|0-24 months |Keneba         |GAMBIA                       |<151 cm      |           1|     43|  2434|
|0-24 months |Keneba         |GAMBIA                       |[151-155) cm |           0|    173|  2434|
|0-24 months |Keneba         |GAMBIA                       |[151-155) cm |           1|    153|  2434|
|0-24 months |LCNI-5         |MALAWI                       |>=155 cm     |           0|    474|   837|
|0-24 months |LCNI-5         |MALAWI                       |>=155 cm     |           1|     40|   837|
|0-24 months |LCNI-5         |MALAWI                       |<151 cm      |           0|    123|   837|
|0-24 months |LCNI-5         |MALAWI                       |<151 cm      |           1|      8|   837|
|0-24 months |LCNI-5         |MALAWI                       |[151-155) cm |           0|    174|   837|
|0-24 months |LCNI-5         |MALAWI                       |[151-155) cm |           1|     18|   837|
|0-24 months |MAL-ED         |BANGLADESH                   |>=155 cm     |           0|     19|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |>=155 cm     |           1|      6|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |<151 cm      |           0|    104|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |<151 cm      |           1|     59|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |[151-155) cm |           0|     46|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |[151-155) cm |           1|     20|   254|
|0-24 months |MAL-ED         |BRAZIL                       |>=155 cm     |           0|    115|   222|
|0-24 months |MAL-ED         |BRAZIL                       |>=155 cm     |           1|     15|   222|
|0-24 months |MAL-ED         |BRAZIL                       |<151 cm      |           0|     49|   222|
|0-24 months |MAL-ED         |BRAZIL                       |<151 cm      |           1|      4|   222|
|0-24 months |MAL-ED         |BRAZIL                       |[151-155) cm |           0|     38|   222|
|0-24 months |MAL-ED         |BRAZIL                       |[151-155) cm |           1|      1|   222|
|0-24 months |MAL-ED         |INDIA                        |>=155 cm     |           0|     30|   242|
|0-24 months |MAL-ED         |INDIA                        |>=155 cm     |           1|     25|   242|
|0-24 months |MAL-ED         |INDIA                        |<151 cm      |           0|     56|   242|
|0-24 months |MAL-ED         |INDIA                        |<151 cm      |           1|     59|   242|
|0-24 months |MAL-ED         |INDIA                        |[151-155) cm |           0|     39|   242|
|0-24 months |MAL-ED         |INDIA                        |[151-155) cm |           1|     33|   242|
|0-24 months |MAL-ED         |NEPAL                        |>=155 cm     |           0|     31|   238|
|0-24 months |MAL-ED         |NEPAL                        |>=155 cm     |           1|     10|   238|
|0-24 months |MAL-ED         |NEPAL                        |<151 cm      |           0|     88|   238|
|0-24 months |MAL-ED         |NEPAL                        |<151 cm      |           1|     45|   238|
|0-24 months |MAL-ED         |NEPAL                        |[151-155) cm |           0|     45|   238|
|0-24 months |MAL-ED         |NEPAL                        |[151-155) cm |           1|     19|   238|
|0-24 months |MAL-ED         |PERU                         |>=155 cm     |           0|     57|   290|
|0-24 months |MAL-ED         |PERU                         |>=155 cm     |           1|      3|   290|
|0-24 months |MAL-ED         |PERU                         |<151 cm      |           0|    149|   290|
|0-24 months |MAL-ED         |PERU                         |<151 cm      |           1|     20|   290|
|0-24 months |MAL-ED         |PERU                         |[151-155) cm |           0|     57|   290|
|0-24 months |MAL-ED         |PERU                         |[151-155) cm |           1|      4|   290|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=155 cm     |           0|    161|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=155 cm     |           1|     43|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<151 cm      |           0|     23|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<151 cm      |           1|     10|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[151-155) cm |           0|     29|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[151-155) cm |           1|      4|   270|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=155 cm     |           0|    138|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=155 cm     |           1|     15|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<151 cm      |           0|     42|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<151 cm      |           1|      9|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[151-155) cm |           0|     40|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[151-155) cm |           1|     12|   256|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm     |           0|     62|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm     |           1|     54|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |<151 cm      |           0|    180|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |<151 cm      |           1|    182|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |[151-155) cm |           0|     84|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |[151-155) cm |           1|     62|   624|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm     |           0|     98|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm     |           1|     42|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<151 cm      |           0|    285|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<151 cm      |           1|    150|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[151-155) cm |           0|    123|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[151-155) cm |           1|     57|   755|
|0-24 months |PROBIT         |BELARUS                      |>=155 cm     |           0|   9503| 13734|
|0-24 months |PROBIT         |BELARUS                      |>=155 cm     |           1|   3708| 13734|
|0-24 months |PROBIT         |BELARUS                      |<151 cm      |           0|     91| 13734|
|0-24 months |PROBIT         |BELARUS                      |<151 cm      |           1|     34| 13734|
|0-24 months |PROBIT         |BELARUS                      |[151-155) cm |           0|    284| 13734|
|0-24 months |PROBIT         |BELARUS                      |[151-155) cm |           1|    114| 13734|
|0-24 months |PROVIDE        |BANGLADESH                   |>=155 cm     |           0|     98|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |>=155 cm     |           1|     40|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |<151 cm      |           0|    229|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |<151 cm      |           1|    144|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |[151-155) cm |           0|    101|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |[151-155) cm |           1|     57|   669|
|0-24 months |SAS-CompFeed   |INDIA                        |>=155 cm     |           0|    350|  1390|
|0-24 months |SAS-CompFeed   |INDIA                        |>=155 cm     |           1|    218|  1390|
|0-24 months |SAS-CompFeed   |INDIA                        |<151 cm      |           0|    270|  1390|
|0-24 months |SAS-CompFeed   |INDIA                        |<151 cm      |           1|    217|  1390|
|0-24 months |SAS-CompFeed   |INDIA                        |[151-155) cm |           0|    199|  1390|
|0-24 months |SAS-CompFeed   |INDIA                        |[151-155) cm |           1|    136|  1390|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm     |           0|     46|   409|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm     |           1|     32|   409|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<151 cm      |           0|    113|   409|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<151 cm      |           1|    107|   409|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[151-155) cm |           0|     56|   409|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[151-155) cm |           1|     55|   409|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm     |           0|   1138|  2359|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm     |           1|    352|  2359|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<151 cm      |           0|    282|  2359|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<151 cm      |           1|     76|  2359|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[151-155) cm |           0|    380|  2359|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[151-155) cm |           1|    131|  2359|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm     |           0|   5901|  9830|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm     |           1|   1918|  9830|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<151 cm      |           0|    410|  9830|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<151 cm      |           1|    164|  9830|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[151-155) cm |           0|   1093|  9830|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[151-155) cm |           1|    344|  9830|
|0-6 months  |COHORTS        |GUATEMALA                    |>=155 cm     |           0|    103|  1045|
|0-6 months  |COHORTS        |GUATEMALA                    |>=155 cm     |           1|     33|  1045|
|0-6 months  |COHORTS        |GUATEMALA                    |<151 cm      |           0|    543|  1045|
|0-6 months  |COHORTS        |GUATEMALA                    |<151 cm      |           1|    143|  1045|
|0-6 months  |COHORTS        |GUATEMALA                    |[151-155) cm |           0|    188|  1045|
|0-6 months  |COHORTS        |GUATEMALA                    |[151-155) cm |           1|     35|  1045|
|0-6 months  |COHORTS        |INDIA                        |>=155 cm     |           0|    402|  1863|
|0-6 months  |COHORTS        |INDIA                        |>=155 cm     |           1|    153|  1863|
|0-6 months  |COHORTS        |INDIA                        |<151 cm      |           0|    618|  1863|
|0-6 months  |COHORTS        |INDIA                        |<151 cm      |           1|    189|  1863|
|0-6 months  |COHORTS        |INDIA                        |[151-155) cm |           0|    372|  1863|
|0-6 months  |COHORTS        |INDIA                        |[151-155) cm |           1|    129|  1863|
|0-6 months  |COHORTS        |PHILIPPINES                  |>=155 cm     |           0|    475|  3044|
|0-6 months  |COHORTS        |PHILIPPINES                  |>=155 cm     |           1|    154|  3044|
|0-6 months  |COHORTS        |PHILIPPINES                  |<151 cm      |           0|   1169|  3044|
|0-6 months  |COHORTS        |PHILIPPINES                  |<151 cm      |           1|    370|  3044|
|0-6 months  |COHORTS        |PHILIPPINES                  |[151-155) cm |           0|    683|  3044|
|0-6 months  |COHORTS        |PHILIPPINES                  |[151-155) cm |           1|    193|  3044|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |>=155 cm     |           0|     34|   219|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |>=155 cm     |           1|      0|   219|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |<151 cm      |           0|    127|   219|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |<151 cm      |           1|      5|   219|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |[151-155) cm |           0|     51|   219|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |[151-155) cm |           1|      2|   219|
|0-6 months  |JiVitA-3       |BANGLADESH                   |>=155 cm     |           0|   3368| 26740|
|0-6 months  |JiVitA-3       |BANGLADESH                   |>=155 cm     |           1|    744| 26740|
|0-6 months  |JiVitA-3       |BANGLADESH                   |<151 cm      |           0|  13102| 26740|
|0-6 months  |JiVitA-3       |BANGLADESH                   |<151 cm      |           1|   2756| 26740|
|0-6 months  |JiVitA-3       |BANGLADESH                   |[151-155) cm |           0|   5558| 26740|
|0-6 months  |JiVitA-3       |BANGLADESH                   |[151-155) cm |           1|   1212| 26740|
|0-6 months  |Keneba         |GAMBIA                       |>=155 cm     |           0|   1284|  2159|
|0-6 months  |Keneba         |GAMBIA                       |>=155 cm     |           1|    512|  2159|
|0-6 months  |Keneba         |GAMBIA                       |<151 cm      |           0|     51|  2159|
|0-6 months  |Keneba         |GAMBIA                       |<151 cm      |           1|     25|  2159|
|0-6 months  |Keneba         |GAMBIA                       |[151-155) cm |           0|    210|  2159|
|0-6 months  |Keneba         |GAMBIA                       |[151-155) cm |           1|     77|  2159|
|0-6 months  |LCNI-5         |MALAWI                       |>=155 cm     |           0|    159|   271|
|0-6 months  |LCNI-5         |MALAWI                       |>=155 cm     |           1|      2|   271|
|0-6 months  |LCNI-5         |MALAWI                       |<151 cm      |           0|     38|   271|
|0-6 months  |LCNI-5         |MALAWI                       |<151 cm      |           1|      0|   271|
|0-6 months  |LCNI-5         |MALAWI                       |[151-155) cm |           0|     70|   271|
|0-6 months  |LCNI-5         |MALAWI                       |[151-155) cm |           1|      2|   271|
|0-6 months  |MAL-ED         |BANGLADESH                   |>=155 cm     |           0|     19|   254|
|0-6 months  |MAL-ED         |BANGLADESH                   |>=155 cm     |           1|      6|   254|
|0-6 months  |MAL-ED         |BANGLADESH                   |<151 cm      |           0|    125|   254|
|0-6 months  |MAL-ED         |BANGLADESH                   |<151 cm      |           1|     38|   254|
|0-6 months  |MAL-ED         |BANGLADESH                   |[151-155) cm |           0|     52|   254|
|0-6 months  |MAL-ED         |BANGLADESH                   |[151-155) cm |           1|     14|   254|
|0-6 months  |MAL-ED         |BRAZIL                       |>=155 cm     |           0|    118|   222|
|0-6 months  |MAL-ED         |BRAZIL                       |>=155 cm     |           1|     12|   222|
|0-6 months  |MAL-ED         |BRAZIL                       |<151 cm      |           0|     51|   222|
|0-6 months  |MAL-ED         |BRAZIL                       |<151 cm      |           1|      2|   222|
|0-6 months  |MAL-ED         |BRAZIL                       |[151-155) cm |           0|     38|   222|
|0-6 months  |MAL-ED         |BRAZIL                       |[151-155) cm |           1|      1|   222|
|0-6 months  |MAL-ED         |INDIA                        |>=155 cm     |           0|     37|   242|
|0-6 months  |MAL-ED         |INDIA                        |>=155 cm     |           1|     18|   242|
|0-6 months  |MAL-ED         |INDIA                        |<151 cm      |           0|     79|   242|
|0-6 months  |MAL-ED         |INDIA                        |<151 cm      |           1|     36|   242|
|0-6 months  |MAL-ED         |INDIA                        |[151-155) cm |           0|     47|   242|
|0-6 months  |MAL-ED         |INDIA                        |[151-155) cm |           1|     25|   242|
|0-6 months  |MAL-ED         |NEPAL                        |>=155 cm     |           0|     34|   238|
|0-6 months  |MAL-ED         |NEPAL                        |>=155 cm     |           1|      7|   238|
|0-6 months  |MAL-ED         |NEPAL                        |<151 cm      |           0|    108|   238|
|0-6 months  |MAL-ED         |NEPAL                        |<151 cm      |           1|     25|   238|
|0-6 months  |MAL-ED         |NEPAL                        |[151-155) cm |           0|     48|   238|
|0-6 months  |MAL-ED         |NEPAL                        |[151-155) cm |           1|     16|   238|
|0-6 months  |MAL-ED         |PERU                         |>=155 cm     |           0|     59|   290|
|0-6 months  |MAL-ED         |PERU                         |>=155 cm     |           1|      1|   290|
|0-6 months  |MAL-ED         |PERU                         |<151 cm      |           0|    160|   290|
|0-6 months  |MAL-ED         |PERU                         |<151 cm      |           1|      9|   290|
|0-6 months  |MAL-ED         |PERU                         |[151-155) cm |           0|     60|   290|
|0-6 months  |MAL-ED         |PERU                         |[151-155) cm |           1|      1|   290|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |>=155 cm     |           0|    185|   270|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |>=155 cm     |           1|     19|   270|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |<151 cm      |           0|     27|   270|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |<151 cm      |           1|      6|   270|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |[151-155) cm |           0|     30|   270|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |[151-155) cm |           1|      3|   270|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=155 cm     |           0|    146|   256|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=155 cm     |           1|      7|   256|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<151 cm      |           0|     50|   256|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<151 cm      |           1|      1|   256|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[151-155) cm |           0|     47|   256|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[151-155) cm |           1|      5|   256|
|0-6 months  |NIH-Birth      |BANGLADESH                   |>=155 cm     |           0|     77|   622|
|0-6 months  |NIH-Birth      |BANGLADESH                   |>=155 cm     |           1|     39|   622|
|0-6 months  |NIH-Birth      |BANGLADESH                   |<151 cm      |           0|    222|   622|
|0-6 months  |NIH-Birth      |BANGLADESH                   |<151 cm      |           1|    138|   622|
|0-6 months  |NIH-Birth      |BANGLADESH                   |[151-155) cm |           0|    101|   622|
|0-6 months  |NIH-Birth      |BANGLADESH                   |[151-155) cm |           1|     45|   622|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |>=155 cm     |           0|    108|   755|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |>=155 cm     |           1|     32|   755|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |<151 cm      |           0|    316|   755|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |<151 cm      |           1|    119|   755|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |[151-155) cm |           0|    137|   755|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |[151-155) cm |           1|     43|   755|
|0-6 months  |PROBIT         |BELARUS                      |>=155 cm     |           0|   9577| 13734|
|0-6 months  |PROBIT         |BELARUS                      |>=155 cm     |           1|   3634| 13734|
|0-6 months  |PROBIT         |BELARUS                      |<151 cm      |           0|     93| 13734|
|0-6 months  |PROBIT         |BELARUS                      |<151 cm      |           1|     32| 13734|
|0-6 months  |PROBIT         |BELARUS                      |[151-155) cm |           0|    287| 13734|
|0-6 months  |PROBIT         |BELARUS                      |[151-155) cm |           1|    111| 13734|
|0-6 months  |PROVIDE        |BANGLADESH                   |>=155 cm     |           0|    105|   669|
|0-6 months  |PROVIDE        |BANGLADESH                   |>=155 cm     |           1|     33|   669|
|0-6 months  |PROVIDE        |BANGLADESH                   |<151 cm      |           0|    272|   669|
|0-6 months  |PROVIDE        |BANGLADESH                   |<151 cm      |           1|    101|   669|
|0-6 months  |PROVIDE        |BANGLADESH                   |[151-155) cm |           0|    116|   669|
|0-6 months  |PROVIDE        |BANGLADESH                   |[151-155) cm |           1|     42|   669|
|0-6 months  |SAS-CompFeed   |INDIA                        |>=155 cm     |           0|    436|  1383|
|0-6 months  |SAS-CompFeed   |INDIA                        |>=155 cm     |           1|    129|  1383|
|0-6 months  |SAS-CompFeed   |INDIA                        |<151 cm      |           0|    377|  1383|
|0-6 months  |SAS-CompFeed   |INDIA                        |<151 cm      |           1|    107|  1383|
|0-6 months  |SAS-CompFeed   |INDIA                        |[151-155) cm |           0|    272|  1383|
|0-6 months  |SAS-CompFeed   |INDIA                        |[151-155) cm |           1|     62|  1383|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |>=155 cm     |           0|     67|   409|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |>=155 cm     |           1|     11|   409|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |<151 cm      |           0|    178|   409|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |<151 cm      |           1|     42|   409|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |[151-155) cm |           0|     89|   409|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |[151-155) cm |           1|     22|   409|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm     |           0|   1279|  2359|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm     |           1|    211|  2359|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<151 cm      |           0|    312|  2359|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<151 cm      |           1|     46|  2359|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[151-155) cm |           0|    439|  2359|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[151-155) cm |           1|     72|  2359|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |>=155 cm     |           0|   6392|  9792|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |>=155 cm     |           1|   1396|  9792|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |<151 cm      |           0|    447|  9792|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |<151 cm      |           1|    123|  9792|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |[151-155) cm |           0|   1168|  9792|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |[151-155) cm |           1|    266|  9792|
|6-24 months |COHORTS        |GUATEMALA                    |>=155 cm     |           0|    132|  1156|
|6-24 months |COHORTS        |GUATEMALA                    |>=155 cm     |           1|     14|  1156|
|6-24 months |COHORTS        |GUATEMALA                    |<151 cm      |           0|    658|  1156|
|6-24 months |COHORTS        |GUATEMALA                    |<151 cm      |           1|    104|  1156|
|6-24 months |COHORTS        |GUATEMALA                    |[151-155) cm |           0|    217|  1156|
|6-24 months |COHORTS        |GUATEMALA                    |[151-155) cm |           1|     31|  1156|
|6-24 months |COHORTS        |INDIA                        |>=155 cm     |           0|    493|  1843|
|6-24 months |COHORTS        |INDIA                        |>=155 cm     |           1|     55|  1843|
|6-24 months |COHORTS        |INDIA                        |<151 cm      |           0|    684|  1843|
|6-24 months |COHORTS        |INDIA                        |<151 cm      |           1|    115|  1843|
|6-24 months |COHORTS        |INDIA                        |[151-155) cm |           0|    445|  1843|
|6-24 months |COHORTS        |INDIA                        |[151-155) cm |           1|     51|  1843|
|6-24 months |COHORTS        |PHILIPPINES                  |>=155 cm     |           0|    449|  2809|
|6-24 months |COHORTS        |PHILIPPINES                  |>=155 cm     |           1|    132|  2809|
|6-24 months |COHORTS        |PHILIPPINES                  |<151 cm      |           0|    991|  2809|
|6-24 months |COHORTS        |PHILIPPINES                  |<151 cm      |           1|    431|  2809|
|6-24 months |COHORTS        |PHILIPPINES                  |[151-155) cm |           0|    620|  2809|
|6-24 months |COHORTS        |PHILIPPINES                  |[151-155) cm |           1|    186|  2809|
|6-24 months |Guatemala BSC  |GUATEMALA                    |>=155 cm     |           0|     33|   225|
|6-24 months |Guatemala BSC  |GUATEMALA                    |>=155 cm     |           1|      3|   225|
|6-24 months |Guatemala BSC  |GUATEMALA                    |<151 cm      |           0|    124|   225|
|6-24 months |Guatemala BSC  |GUATEMALA                    |<151 cm      |           1|     12|   225|
|6-24 months |Guatemala BSC  |GUATEMALA                    |[151-155) cm |           0|     47|   225|
|6-24 months |Guatemala BSC  |GUATEMALA                    |[151-155) cm |           1|      6|   225|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm     |           0|   2261|  3217|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm     |           1|    639|  3217|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |<151 cm      |           0|     62|  3217|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |<151 cm      |           1|     29|  3217|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |[151-155) cm |           0|    161|  3217|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |[151-155) cm |           1|     65|  3217|
|6-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm     |           0|   2352| 17247|
|6-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm     |           1|    363| 17247|
|6-24 months |JiVitA-3       |BANGLADESH                   |<151 cm      |           0|   8339| 17247|
|6-24 months |JiVitA-3       |BANGLADESH                   |<151 cm      |           1|   1771| 17247|
|6-24 months |JiVitA-3       |BANGLADESH                   |[151-155) cm |           0|   3732| 17247|
|6-24 months |JiVitA-3       |BANGLADESH                   |[151-155) cm |           1|    690| 17247|
|6-24 months |Keneba         |GAMBIA                       |>=155 cm     |           0|   1291|  2326|
|6-24 months |Keneba         |GAMBIA                       |>=155 cm     |           1|    632|  2326|
|6-24 months |Keneba         |GAMBIA                       |<151 cm      |           0|     64|  2326|
|6-24 months |Keneba         |GAMBIA                       |<151 cm      |           1|     26|  2326|
|6-24 months |Keneba         |GAMBIA                       |[151-155) cm |           0|    207|  2326|
|6-24 months |Keneba         |GAMBIA                       |[151-155) cm |           1|    106|  2326|
|6-24 months |LCNI-5         |MALAWI                       |>=155 cm     |           0|    468|   823|
|6-24 months |LCNI-5         |MALAWI                       |>=155 cm     |           1|     38|   823|
|6-24 months |LCNI-5         |MALAWI                       |<151 cm      |           0|    122|   823|
|6-24 months |LCNI-5         |MALAWI                       |<151 cm      |           1|      8|   823|
|6-24 months |LCNI-5         |MALAWI                       |[151-155) cm |           0|    170|   823|
|6-24 months |LCNI-5         |MALAWI                       |[151-155) cm |           1|     17|   823|
|6-24 months |MAL-ED         |BANGLADESH                   |>=155 cm     |           0|     22|   240|
|6-24 months |MAL-ED         |BANGLADESH                   |>=155 cm     |           1|      2|   240|
|6-24 months |MAL-ED         |BANGLADESH                   |<151 cm      |           0|    125|   240|
|6-24 months |MAL-ED         |BANGLADESH                   |<151 cm      |           1|     32|   240|
|6-24 months |MAL-ED         |BANGLADESH                   |[151-155) cm |           0|     50|   240|
|6-24 months |MAL-ED         |BANGLADESH                   |[151-155) cm |           1|      9|   240|
|6-24 months |MAL-ED         |BRAZIL                       |>=155 cm     |           0|    116|   207|
|6-24 months |MAL-ED         |BRAZIL                       |>=155 cm     |           1|      4|   207|
|6-24 months |MAL-ED         |BRAZIL                       |<151 cm      |           0|     48|   207|
|6-24 months |MAL-ED         |BRAZIL                       |<151 cm      |           1|      2|   207|
|6-24 months |MAL-ED         |BRAZIL                       |[151-155) cm |           0|     37|   207|
|6-24 months |MAL-ED         |BRAZIL                       |[151-155) cm |           1|      0|   207|
|6-24 months |MAL-ED         |INDIA                        |>=155 cm     |           0|     45|   234|
|6-24 months |MAL-ED         |INDIA                        |>=155 cm     |           1|     10|   234|
|6-24 months |MAL-ED         |INDIA                        |<151 cm      |           0|     75|   234|
|6-24 months |MAL-ED         |INDIA                        |<151 cm      |           1|     36|   234|
|6-24 months |MAL-ED         |INDIA                        |[151-155) cm |           0|     50|   234|
|6-24 months |MAL-ED         |INDIA                        |[151-155) cm |           1|     18|   234|
|6-24 months |MAL-ED         |NEPAL                        |>=155 cm     |           0|     36|   235|
|6-24 months |MAL-ED         |NEPAL                        |>=155 cm     |           1|      5|   235|
|6-24 months |MAL-ED         |NEPAL                        |<151 cm      |           0|    107|   235|
|6-24 months |MAL-ED         |NEPAL                        |<151 cm      |           1|     24|   235|
|6-24 months |MAL-ED         |NEPAL                        |[151-155) cm |           0|     56|   235|
|6-24 months |MAL-ED         |NEPAL                        |[151-155) cm |           1|      7|   235|
|6-24 months |MAL-ED         |PERU                         |>=155 cm     |           0|     56|   269|
|6-24 months |MAL-ED         |PERU                         |>=155 cm     |           1|      2|   269|
|6-24 months |MAL-ED         |PERU                         |<151 cm      |           0|    142|   269|
|6-24 months |MAL-ED         |PERU                         |<151 cm      |           1|     13|   269|
|6-24 months |MAL-ED         |PERU                         |[151-155) cm |           0|     53|   269|
|6-24 months |MAL-ED         |PERU                         |[151-155) cm |           1|      3|   269|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |>=155 cm     |           0|    163|   254|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |>=155 cm     |           1|     28|   254|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |<151 cm      |           0|     25|   254|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |<151 cm      |           1|      7|   254|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |[151-155) cm |           0|     29|   254|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |[151-155) cm |           1|      2|   254|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=155 cm     |           0|    136|   245|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=155 cm     |           1|     11|   245|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<151 cm      |           0|     38|   245|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<151 cm      |           1|      8|   245|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[151-155) cm |           0|     43|   245|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[151-155) cm |           1|      9|   245|
|6-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm     |           0|     70|   542|
|6-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm     |           1|     28|   542|
|6-24 months |NIH-Birth      |BANGLADESH                   |<151 cm      |           0|    220|   542|
|6-24 months |NIH-Birth      |BANGLADESH                   |<151 cm      |           1|     97|   542|
|6-24 months |NIH-Birth      |BANGLADESH                   |[151-155) cm |           0|     93|   542|
|6-24 months |NIH-Birth      |BANGLADESH                   |[151-155) cm |           1|     34|   542|
|6-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm     |           0|    123|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm     |           1|     15|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |<151 cm      |           0|    362|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |<151 cm      |           1|     57|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |[151-155) cm |           0|    149|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |[151-155) cm |           1|     24|   730|
|6-24 months |PROBIT         |BELARUS                      |>=155 cm     |           0|  13086| 13726|
|6-24 months |PROBIT         |BELARUS                      |>=155 cm     |           1|    117| 13726|
|6-24 months |PROBIT         |BELARUS                      |<151 cm      |           0|    122| 13726|
|6-24 months |PROBIT         |BELARUS                      |<151 cm      |           1|      3| 13726|
|6-24 months |PROBIT         |BELARUS                      |[151-155) cm |           0|    394| 13726|
|6-24 months |PROBIT         |BELARUS                      |[151-155) cm |           1|      4| 13726|
|6-24 months |PROVIDE        |BANGLADESH                   |>=155 cm     |           0|    116|   614|
|6-24 months |PROVIDE        |BANGLADESH                   |>=155 cm     |           1|     13|   614|
|6-24 months |PROVIDE        |BANGLADESH                   |<151 cm      |           0|    275|   614|
|6-24 months |PROVIDE        |BANGLADESH                   |<151 cm      |           1|     61|   614|
|6-24 months |PROVIDE        |BANGLADESH                   |[151-155) cm |           0|    124|   614|
|6-24 months |PROVIDE        |BANGLADESH                   |[151-155) cm |           1|     25|   614|
|6-24 months |SAS-CompFeed   |INDIA                        |>=155 cm     |           0|    407|  1277|
|6-24 months |SAS-CompFeed   |INDIA                        |>=155 cm     |           1|    132|  1277|
|6-24 months |SAS-CompFeed   |INDIA                        |<151 cm      |           0|    276|  1277|
|6-24 months |SAS-CompFeed   |INDIA                        |<151 cm      |           1|    156|  1277|
|6-24 months |SAS-CompFeed   |INDIA                        |[151-155) cm |           0|    201|  1277|
|6-24 months |SAS-CompFeed   |INDIA                        |[151-155) cm |           1|    105|  1277|
|6-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm     |           0|     52|   401|
|6-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm     |           1|     24|   401|
|6-24 months |SAS-FoodSuppl  |INDIA                        |<151 cm      |           0|    139|   401|
|6-24 months |SAS-FoodSuppl  |INDIA                        |<151 cm      |           1|     76|   401|
|6-24 months |SAS-FoodSuppl  |INDIA                        |[151-155) cm |           0|     67|   401|
|6-24 months |SAS-FoodSuppl  |INDIA                        |[151-155) cm |           1|     43|   401|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm     |           0|   1050|  1985|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm     |           1|    196|  1985|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<151 cm      |           0|    256|  1985|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<151 cm      |           1|     47|  1985|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[151-155) cm |           0|    358|  1985|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[151-155) cm |           1|     78|  1985|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm     |           0|   6162|  8624|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm     |           1|    681|  8624|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |<151 cm      |           0|    464|  8624|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |<151 cm      |           1|     55|  8624|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |[151-155) cm |           0|   1148|  8624|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |[151-155) cm |           1|    114|  8624|


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
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
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
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
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
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
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/b8beac2e-8c20-431a-a461-9145037d8e02/ce99f715-0ea2-4b1b-be7b-266ec112d51c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b8beac2e-8c20-431a-a461-9145037d8e02/ce99f715-0ea2-4b1b-be7b-266ec112d51c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b8beac2e-8c20-431a-a461-9145037d8e02/ce99f715-0ea2-4b1b-be7b-266ec112d51c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b8beac2e-8c20-431a-a461-9145037d8e02/ce99f715-0ea2-4b1b-be7b-266ec112d51c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |>=155 cm           |NA             | 0.2629240| 0.1967087| 0.3291393|
|0-24 months |COHORTS        |GUATEMALA                    |<151 cm            |NA             | 0.2730109| 0.2427249| 0.3032970|
|0-24 months |COHORTS        |GUATEMALA                    |[151-155) cm       |NA             | 0.2228651| 0.1744005| 0.2713298|
|0-24 months |COHORTS        |INDIA                        |>=155 cm           |NA             | 0.3405335| 0.3018844| 0.3791827|
|0-24 months |COHORTS        |INDIA                        |<151 cm            |NA             | 0.3309919| 0.2987712| 0.3632125|
|0-24 months |COHORTS        |INDIA                        |[151-155) cm       |NA             | 0.3304602| 0.2895007| 0.3714198|
|0-24 months |COHORTS        |PHILIPPINES                  |>=155 cm           |NA             | 0.3838478| 0.3454857| 0.4222099|
|0-24 months |COHORTS        |PHILIPPINES                  |<151 cm            |NA             | 0.4280134| 0.4032944| 0.4527323|
|0-24 months |COHORTS        |PHILIPPINES                  |[151-155) cm       |NA             | 0.3757631| 0.3432745| 0.4082517|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm           |NA             | 0.2203509| 0.1914041| 0.2492978|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<151 cm            |NA             | 0.3186787| 0.1815533| 0.4558042|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[151-155) cm       |NA             | 0.2855799| 0.2231718| 0.3479879|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm           |NA             | 0.2515276| 0.2370178| 0.2660375|
|0-24 months |JiVitA-3       |BANGLADESH                   |<151 cm            |NA             | 0.2605865| 0.2526893| 0.2684836|
|0-24 months |JiVitA-3       |BANGLADESH                   |[151-155) cm       |NA             | 0.2586081| 0.2469330| 0.2702831|
|0-24 months |Keneba         |GAMBIA                       |>=155 cm           |NA             | 0.4671396| 0.4453519| 0.4889274|
|0-24 months |Keneba         |GAMBIA                       |<151 cm            |NA             | 0.4482192| 0.3477480| 0.5486904|
|0-24 months |Keneba         |GAMBIA                       |[151-155) cm       |NA             | 0.4661294| 0.4111936| 0.5210651|
|0-24 months |LCNI-5         |MALAWI                       |>=155 cm           |NA             | 0.0778210| 0.0546480| 0.1009940|
|0-24 months |LCNI-5         |MALAWI                       |<151 cm            |NA             | 0.0610687| 0.0200390| 0.1020984|
|0-24 months |LCNI-5         |MALAWI                       |[151-155) cm       |NA             | 0.0937500| 0.0524959| 0.1350041|
|0-24 months |MAL-ED         |BANGLADESH                   |>=155 cm           |NA             | 0.2400000| 0.0722560| 0.4077440|
|0-24 months |MAL-ED         |BANGLADESH                   |<151 cm            |NA             | 0.3619632| 0.2880425| 0.4358839|
|0-24 months |MAL-ED         |BANGLADESH                   |[151-155) cm       |NA             | 0.3030303| 0.1919383| 0.4141223|
|0-24 months |MAL-ED         |INDIA                        |>=155 cm           |NA             | 0.4538557| 0.3202504| 0.5874609|
|0-24 months |MAL-ED         |INDIA                        |<151 cm            |NA             | 0.5097413| 0.4178867| 0.6015960|
|0-24 months |MAL-ED         |INDIA                        |[151-155) cm       |NA             | 0.4543047| 0.3377340| 0.5708754|
|0-24 months |MAL-ED         |NEPAL                        |>=155 cm           |NA             | 0.2260438| 0.0928826| 0.3592050|
|0-24 months |MAL-ED         |NEPAL                        |<151 cm            |NA             | 0.3354363| 0.2548730| 0.4159995|
|0-24 months |MAL-ED         |NEPAL                        |[151-155) cm       |NA             | 0.2838588| 0.1706349| 0.3970828|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             | 0.0980392| 0.0508279| 0.1452505|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<151 cm            |NA             | 0.1764706| 0.0716399| 0.2813013|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[151-155) cm       |NA             | 0.2307692| 0.1160296| 0.3455089|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm           |NA             | 0.4666329| 0.3754887| 0.5577771|
|0-24 months |NIH-Birth      |BANGLADESH                   |<151 cm            |NA             | 0.5025710| 0.4507997| 0.5543423|
|0-24 months |NIH-Birth      |BANGLADESH                   |[151-155) cm       |NA             | 0.4284303| 0.3470911| 0.5097695|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm           |NA             | 0.3203112| 0.2453612| 0.3952611|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<151 cm            |NA             | 0.3486435| 0.3038290| 0.3934581|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[151-155) cm       |NA             | 0.3209209| 0.2526182| 0.3892235|
|0-24 months |PROBIT         |BELARUS                      |>=155 cm           |NA             | 0.2807518| 0.2183580| 0.3431456|
|0-24 months |PROBIT         |BELARUS                      |<151 cm            |NA             | 0.2776674| 0.2484084| 0.3069264|
|0-24 months |PROBIT         |BELARUS                      |[151-155) cm       |NA             | 0.2825432| 0.2057343| 0.3593520|
|0-24 months |PROVIDE        |BANGLADESH                   |>=155 cm           |NA             | 0.2956041| 0.2197855| 0.3714227|
|0-24 months |PROVIDE        |BANGLADESH                   |<151 cm            |NA             | 0.3826206| 0.3327346| 0.4325065|
|0-24 months |PROVIDE        |BANGLADESH                   |[151-155) cm       |NA             | 0.3630653| 0.2868108| 0.4393198|
|0-24 months |SAS-CompFeed   |INDIA                        |>=155 cm           |NA             | 0.3855338| 0.3092567| 0.4618110|
|0-24 months |SAS-CompFeed   |INDIA                        |<151 cm            |NA             | 0.4426751| 0.3915680| 0.4937821|
|0-24 months |SAS-CompFeed   |INDIA                        |[151-155) cm       |NA             | 0.4062131| 0.3144862| 0.4979400|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm           |NA             | 0.3941540| 0.2840312| 0.5042767|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<151 cm            |NA             | 0.4831036| 0.4168328| 0.5493744|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[151-155) cm       |NA             | 0.4854882| 0.3916555| 0.5793208|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             | 0.2360480| 0.2144542| 0.2576418|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<151 cm            |NA             | 0.2118388| 0.1693719| 0.2543057|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[151-155) cm       |NA             | 0.2548984| 0.2165527| 0.2932441|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm           |NA             | 0.2454291| 0.2358872| 0.2549710|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<151 cm            |NA             | 0.2836649| 0.2469939| 0.3203359|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[151-155) cm       |NA             | 0.2392657| 0.2171073| 0.2614242|
|0-6 months  |COHORTS        |GUATEMALA                    |>=155 cm           |NA             | 0.2422397| 0.1696534| 0.3148259|
|0-6 months  |COHORTS        |GUATEMALA                    |<151 cm            |NA             | 0.2080363| 0.1776533| 0.2384193|
|0-6 months  |COHORTS        |GUATEMALA                    |[151-155) cm       |NA             | 0.1609525| 0.1125592| 0.2093459|
|0-6 months  |COHORTS        |INDIA                        |>=155 cm           |NA             | 0.2786507| 0.2413665| 0.3159348|
|0-6 months  |COHORTS        |INDIA                        |<151 cm            |NA             | 0.2334603| 0.2041702| 0.2627504|
|0-6 months  |COHORTS        |INDIA                        |[151-155) cm       |NA             | 0.2570638| 0.2186253| 0.2955023|
|0-6 months  |COHORTS        |PHILIPPINES                  |>=155 cm           |NA             | 0.2384798| 0.2050045| 0.2719550|
|0-6 months  |COHORTS        |PHILIPPINES                  |<151 cm            |NA             | 0.2419775| 0.2206001| 0.2633549|
|0-6 months  |COHORTS        |PHILIPPINES                  |[151-155) cm       |NA             | 0.2193724| 0.1916715| 0.2470733|
|0-6 months  |JiVitA-3       |BANGLADESH                   |>=155 cm           |NA             | 0.1800263| 0.1669679| 0.1930848|
|0-6 months  |JiVitA-3       |BANGLADESH                   |<151 cm            |NA             | 0.1733814| 0.1664004| 0.1803624|
|0-6 months  |JiVitA-3       |BANGLADESH                   |[151-155) cm       |NA             | 0.1811760| 0.1709326| 0.1914194|
|0-6 months  |Keneba         |GAMBIA                       |>=155 cm           |NA             | 0.2852777| 0.2643889| 0.3061665|
|0-6 months  |Keneba         |GAMBIA                       |<151 cm            |NA             | 0.3213124| 0.2137246| 0.4289002|
|0-6 months  |Keneba         |GAMBIA                       |[151-155) cm       |NA             | 0.2633469| 0.2114990| 0.3151948|
|0-6 months  |MAL-ED         |BANGLADESH                   |>=155 cm           |NA             | 0.2400000| 0.0722560| 0.4077440|
|0-6 months  |MAL-ED         |BANGLADESH                   |<151 cm            |NA             | 0.2331288| 0.1680904| 0.2981673|
|0-6 months  |MAL-ED         |BANGLADESH                   |[151-155) cm       |NA             | 0.2121212| 0.1132990| 0.3109434|
|0-6 months  |MAL-ED         |INDIA                        |>=155 cm           |NA             | 0.3339684| 0.2037719| 0.4641648|
|0-6 months  |MAL-ED         |INDIA                        |<151 cm            |NA             | 0.3071668| 0.2218347| 0.3924990|
|0-6 months  |MAL-ED         |INDIA                        |[151-155) cm       |NA             | 0.3491081| 0.2368821| 0.4613341|
|0-6 months  |MAL-ED         |NEPAL                        |>=155 cm           |NA             | 0.1707317| 0.0553133| 0.2861501|
|0-6 months  |MAL-ED         |NEPAL                        |<151 cm            |NA             | 0.1879699| 0.1214324| 0.2545075|
|0-6 months  |MAL-ED         |NEPAL                        |[151-155) cm       |NA             | 0.2500000| 0.1436903| 0.3563097|
|0-6 months  |NIH-Birth      |BANGLADESH                   |>=155 cm           |NA             | 0.3371689| 0.2506257| 0.4237122|
|0-6 months  |NIH-Birth      |BANGLADESH                   |<151 cm            |NA             | 0.3828436| 0.3325636| 0.4331236|
|0-6 months  |NIH-Birth      |BANGLADESH                   |[151-155) cm       |NA             | 0.3122910| 0.2376447| 0.3869374|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |>=155 cm           |NA             | 0.2289980| 0.1588509| 0.2991451|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |<151 cm            |NA             | 0.2748616| 0.2328407| 0.3168824|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |[151-155) cm       |NA             | 0.2416078| 0.1797675| 0.3034481|
|0-6 months  |PROBIT         |BELARUS                      |>=155 cm           |NA             | 0.2750665| 0.2124192| 0.3377138|
|0-6 months  |PROBIT         |BELARUS                      |<151 cm            |NA             | 0.2643701| 0.2363841| 0.2923562|
|0-6 months  |PROBIT         |BELARUS                      |[151-155) cm       |NA             | 0.2772349| 0.2040603| 0.3504096|
|0-6 months  |PROVIDE        |BANGLADESH                   |>=155 cm           |NA             | 0.2465478| 0.1720077| 0.3210879|
|0-6 months  |PROVIDE        |BANGLADESH                   |<151 cm            |NA             | 0.2695693| 0.2237822| 0.3153564|
|0-6 months  |PROVIDE        |BANGLADESH                   |[151-155) cm       |NA             | 0.2740606| 0.2031684| 0.3449527|
|0-6 months  |SAS-CompFeed   |INDIA                        |>=155 cm           |NA             | 0.2308480| 0.1651994| 0.2964965|
|0-6 months  |SAS-CompFeed   |INDIA                        |<151 cm            |NA             | 0.2177567| 0.1684812| 0.2670322|
|0-6 months  |SAS-CompFeed   |INDIA                        |[151-155) cm       |NA             | 0.1863948| 0.1325286| 0.2402609|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |>=155 cm           |NA             | 0.1390395| 0.0610806| 0.2169984|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |<151 cm            |NA             | 0.1903204| 0.1380083| 0.2426324|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |[151-155) cm       |NA             | 0.2012066| 0.1251796| 0.2772337|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             | 0.1413693| 0.1236770| 0.1590617|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<151 cm            |NA             | 0.1282154| 0.0935498| 0.1628810|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[151-155) cm       |NA             | 0.1408169| 0.1104885| 0.1711452|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |>=155 cm           |NA             | 0.1790954| 0.1705738| 0.1876170|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |<151 cm            |NA             | 0.2175205| 0.1837846| 0.2512564|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |[151-155) cm       |NA             | 0.1855651| 0.1653565| 0.2057736|
|6-24 months |COHORTS        |GUATEMALA                    |>=155 cm           |NA             | 0.0928942| 0.0462975| 0.1394910|
|6-24 months |COHORTS        |GUATEMALA                    |<151 cm            |NA             | 0.1361622| 0.1117985| 0.1605259|
|6-24 months |COHORTS        |GUATEMALA                    |[151-155) cm       |NA             | 0.1277712| 0.0861727| 0.1693697|
|6-24 months |COHORTS        |INDIA                        |>=155 cm           |NA             | 0.1073293| 0.0821429| 0.1325156|
|6-24 months |COHORTS        |INDIA                        |<151 cm            |NA             | 0.1377611| 0.1136753| 0.1618468|
|6-24 months |COHORTS        |INDIA                        |[151-155) cm       |NA             | 0.1032088| 0.0762198| 0.1301977|
|6-24 months |COHORTS        |PHILIPPINES                  |>=155 cm           |NA             | 0.2399273| 0.2054865| 0.2743682|
|6-24 months |COHORTS        |PHILIPPINES                  |<151 cm            |NA             | 0.2942263| 0.2704648| 0.3179877|
|6-24 months |COHORTS        |PHILIPPINES                  |[151-155) cm       |NA             | 0.2357047| 0.2062713| 0.2651382|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm           |NA             | 0.2202925| 0.1913441| 0.2492409|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |<151 cm            |NA             | 0.3303350| 0.1915751| 0.4690948|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |[151-155) cm       |NA             | 0.2844487| 0.2206473| 0.3482502|
|6-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm           |NA             | 0.1406948| 0.1266396| 0.1547501|
|6-24 months |JiVitA-3       |BANGLADESH                   |<151 cm            |NA             | 0.1738416| 0.1661016| 0.1815815|
|6-24 months |JiVitA-3       |BANGLADESH                   |[151-155) cm       |NA             | 0.1590904| 0.1474841| 0.1706967|
|6-24 months |Keneba         |GAMBIA                       |>=155 cm           |NA             | 0.3301089| 0.3091113| 0.3511065|
|6-24 months |Keneba         |GAMBIA                       |<151 cm            |NA             | 0.2796986| 0.1869273| 0.3724698|
|6-24 months |Keneba         |GAMBIA                       |[151-155) cm       |NA             | 0.3338961| 0.2810764| 0.3867159|
|6-24 months |LCNI-5         |MALAWI                       |>=155 cm           |NA             | 0.0750988| 0.0521214| 0.0980762|
|6-24 months |LCNI-5         |MALAWI                       |<151 cm            |NA             | 0.0615385| 0.0202031| 0.1028738|
|6-24 months |LCNI-5         |MALAWI                       |[151-155) cm       |NA             | 0.0909091| 0.0496805| 0.1321377|
|6-24 months |MAL-ED         |INDIA                        |>=155 cm           |NA             | 0.2041099| 0.0921633| 0.3160565|
|6-24 months |MAL-ED         |INDIA                        |<151 cm            |NA             | 0.3146732| 0.2278014| 0.4015451|
|6-24 months |MAL-ED         |INDIA                        |[151-155) cm       |NA             | 0.2638630| 0.1594968| 0.3682293|
|6-24 months |MAL-ED         |NEPAL                        |>=155 cm           |NA             | 0.1219512| 0.0215741| 0.2223283|
|6-24 months |MAL-ED         |NEPAL                        |<151 cm            |NA             | 0.1832061| 0.1168219| 0.2495903|
|6-24 months |MAL-ED         |NEPAL                        |[151-155) cm       |NA             | 0.1111111| 0.0333421| 0.1888801|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             | 0.0748299| 0.0322087| 0.1174512|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<151 cm            |NA             | 0.1739130| 0.0641550| 0.2836711|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[151-155) cm       |NA             | 0.1730769| 0.0700415| 0.2761124|
|6-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm           |NA             | 0.2909344| 0.2026978| 0.3791710|
|6-24 months |NIH-Birth      |BANGLADESH                   |<151 cm            |NA             | 0.3074844| 0.2565421| 0.3584267|
|6-24 months |NIH-Birth      |BANGLADESH                   |[151-155) cm       |NA             | 0.2690563| 0.1924529| 0.3456598|
|6-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm           |NA             | 0.1130139| 0.0593048| 0.1667230|
|6-24 months |NIH-Crypto     |BANGLADESH                   |<151 cm            |NA             | 0.1353701| 0.1024600| 0.1682801|
|6-24 months |NIH-Crypto     |BANGLADESH                   |[151-155) cm       |NA             | 0.1365715| 0.0853152| 0.1878277|
|6-24 months |PROVIDE        |BANGLADESH                   |>=155 cm           |NA             | 0.1004648| 0.0475918| 0.1533379|
|6-24 months |PROVIDE        |BANGLADESH                   |<151 cm            |NA             | 0.1785527| 0.1374444| 0.2196611|
|6-24 months |PROVIDE        |BANGLADESH                   |[151-155) cm       |NA             | 0.1781711| 0.1152475| 0.2410948|
|6-24 months |SAS-CompFeed   |INDIA                        |>=155 cm           |NA             | 0.2449651| 0.1838859| 0.3060443|
|6-24 months |SAS-CompFeed   |INDIA                        |<151 cm            |NA             | 0.3647444| 0.3082495| 0.4212393|
|6-24 months |SAS-CompFeed   |INDIA                        |[151-155) cm       |NA             | 0.3424219| 0.2590641| 0.4257797|
|6-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm           |NA             | 0.3098492| 0.2032797| 0.4164188|
|6-24 months |SAS-FoodSuppl  |INDIA                        |<151 cm            |NA             | 0.3512538| 0.2870050| 0.4155025|
|6-24 months |SAS-FoodSuppl  |INDIA                        |[151-155) cm       |NA             | 0.3894235| 0.2977441| 0.4811029|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             | 0.1570281| 0.1367916| 0.1772646|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<151 cm            |NA             | 0.1561097| 0.1153523| 0.1968671|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[151-155) cm       |NA             | 0.1799207| 0.1433201| 0.2165213|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm           |NA             | 0.0997644| 0.0926694| 0.1068595|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |<151 cm            |NA             | 0.1026410| 0.0766717| 0.1286102|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |[151-155) cm       |NA             | 0.0897009| 0.0738659| 0.1055358|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.2627451| 0.2385772| 0.2869130|
|0-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.3338583| 0.3126757| 0.3550409|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.4036125| 0.3861835| 0.4210415|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.2278520| 0.2008644| 0.2548397|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.2580393| 0.2515701| 0.2645084|
|0-24 months |Keneba         |GAMBIA                       |NA                 |NA             | 0.4663106| 0.4464881| 0.4861331|
|0-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.0788530| 0.0605839| 0.0971222|
|0-24 months |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.3346457| 0.2765014| 0.3927899|
|0-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.4834711| 0.4203794| 0.5465628|
|0-24 months |MAL-ED         |NEPAL                        |NA                 |NA             | 0.3109244| 0.2519946| 0.3698541|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1406250| 0.0979572| 0.1832928|
|0-24 months |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.4775641| 0.4383415| 0.5167867|
|0-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.3298013| 0.2962438| 0.3633589|
|0-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.2807631| 0.2185905| 0.3429356|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.3602392| 0.3238339| 0.3966444|
|0-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.4107914| 0.3512139| 0.4703688|
|0-24 months |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.4743276| 0.4258753| 0.5227800|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.2369648| 0.2198019| 0.2541277|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.2467955| 0.2382720| 0.2553190|
|0-6 months  |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.2019139| 0.1775635| 0.2262643|
|0-6 months  |COHORTS        |INDIA                        |NA                 |NA             | 0.2528180| 0.2330767| 0.2725593|
|0-6 months  |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.2355453| 0.2204685| 0.2506222|
|0-6 months  |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.1762154| 0.1705946| 0.1818362|
|0-6 months  |Keneba         |GAMBIA                       |NA                 |NA             | 0.2843909| 0.2653574| 0.3034244|
|0-6 months  |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.2283465| 0.1766220| 0.2800709|
|0-6 months  |MAL-ED         |INDIA                        |NA                 |NA             | 0.3264463| 0.2672449| 0.3856476|
|0-6 months  |MAL-ED         |NEPAL                        |NA                 |NA             | 0.2016807| 0.1505956| 0.2527658|
|0-6 months  |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.3569132| 0.3192325| 0.3945938|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.2569536| 0.2257649| 0.2881424|
|0-6 months  |PROBIT         |BELARUS                      |NA                 |NA             | 0.2750109| 0.2125981| 0.3374238|
|0-6 months  |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.2630792| 0.2296894| 0.2964690|
|0-6 months  |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.2154736| 0.1691818| 0.2617655|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.1833741| 0.1458251| 0.2209231|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1394659| 0.1254831| 0.1534487|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.1822917| 0.1746442| 0.1899391|
|6-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.1288927| 0.1095683| 0.1482172|
|6-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.1199132| 0.1050778| 0.1347486|
|6-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.2666429| 0.2502871| 0.2829988|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.2278520| 0.2008644| 0.2548397|
|6-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.1637386| 0.1576238| 0.1698535|
|6-24 months |Keneba         |GAMBIA                       |NA                 |NA             | 0.3284609| 0.3093705| 0.3475512|
|6-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.0765492| 0.0583736| 0.0947248|
|6-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.2735043| 0.2162683| 0.3307402|
|6-24 months |MAL-ED         |NEPAL                        |NA                 |NA             | 0.1531915| 0.1070438| 0.1993392|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1142857| 0.0743652| 0.1542062|
|6-24 months |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.2933579| 0.2549918| 0.3317241|
|6-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.1315068| 0.1069744| 0.1560393|
|6-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.1612378| 0.1321259| 0.1903497|
|6-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.3077525| 0.2591695| 0.3563356|
|6-24 months |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.3566085| 0.3096676| 0.4035494|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1617128| 0.1455117| 0.1779140|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.0985622| 0.0922708| 0.1048535|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |COHORTS        |GUATEMALA                    |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |GUATEMALA                    |<151 cm            |>=155 cm       | 1.0383645| 0.7889564| 1.366616|
|0-24 months |COHORTS        |GUATEMALA                    |[151-155) cm       |>=155 cm       | 0.8476409| 0.6082004| 1.181346|
|0-24 months |COHORTS        |INDIA                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |INDIA                        |<151 cm            |>=155 cm       | 0.9719803| 0.8371957| 1.128464|
|0-24 months |COHORTS        |INDIA                        |[151-155) cm       |>=155 cm       | 0.9704191| 0.8204268| 1.147833|
|0-24 months |COHORTS        |PHILIPPINES                  |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |PHILIPPINES                  |<151 cm            |>=155 cm       | 1.1150601| 0.9935004| 1.251493|
|0-24 months |COHORTS        |PHILIPPINES                  |[151-155) cm       |>=155 cm       | 0.9789378| 0.8577683| 1.117224|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<151 cm            |>=155 cm       | 1.4462327| 0.9062497| 2.307961|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[151-155) cm       |>=155 cm       | 1.2960229| 1.0264020| 1.636469|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |<151 cm            |>=155 cm       | 1.0360153| 0.9758309| 1.099911|
|0-24 months |JiVitA-3       |BANGLADESH                   |[151-155) cm       |>=155 cm       | 1.0281497| 0.9567966| 1.104824|
|0-24 months |Keneba         |GAMBIA                       |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |Keneba         |GAMBIA                       |<151 cm            |>=155 cm       | 0.9594972| 0.7631608| 1.206345|
|0-24 months |Keneba         |GAMBIA                       |[151-155) cm       |>=155 cm       | 0.9978374| 0.8790693| 1.132652|
|0-24 months |LCNI-5         |MALAWI                       |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |LCNI-5         |MALAWI                       |<151 cm            |>=155 cm       | 0.7847328| 0.3763243| 1.636370|
|0-24 months |LCNI-5         |MALAWI                       |[151-155) cm       |>=155 cm       | 1.2046875| 0.7081457| 2.049397|
|0-24 months |MAL-ED         |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |BANGLADESH                   |<151 cm            |>=155 cm       | 1.5081800| 0.7281453| 3.123836|
|0-24 months |MAL-ED         |BANGLADESH                   |[151-155) cm       |>=155 cm       | 1.2626263| 0.5734697| 2.779964|
|0-24 months |MAL-ED         |INDIA                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |INDIA                        |<151 cm            |>=155 cm       | 1.1231353| 0.7953299| 1.586050|
|0-24 months |MAL-ED         |INDIA                        |[151-155) cm       |>=155 cm       | 1.0009894| 0.6771294| 1.479746|
|0-24 months |MAL-ED         |NEPAL                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |NEPAL                        |<151 cm            |>=155 cm       | 1.4839437| 0.7860777| 2.801363|
|0-24 months |MAL-ED         |NEPAL                        |[151-155) cm       |>=155 cm       | 1.2557692| 0.6175299| 2.553651|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<151 cm            |>=155 cm       | 1.8000000| 0.8378448| 3.867065|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[151-155) cm       |>=155 cm       | 2.3538462| 1.1780658| 4.703126|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Birth      |BANGLADESH                   |<151 cm            |>=155 cm       | 1.0770157| 0.8637168| 1.342990|
|0-24 months |NIH-Birth      |BANGLADESH                   |[151-155) cm       |>=155 cm       | 0.9181313| 0.6989540| 1.206038|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<151 cm            |>=155 cm       | 1.0884527| 0.8330919| 1.422087|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[151-155) cm       |>=155 cm       | 1.0019035| 0.7305567| 1.374035|
|0-24 months |PROBIT         |BELARUS                      |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROBIT         |BELARUS                      |<151 cm            |>=155 cm       | 0.9890140| 0.8007120| 1.221599|
|0-24 months |PROBIT         |BELARUS                      |[151-155) cm       |>=155 cm       | 1.0063806| 0.8641631| 1.172003|
|0-24 months |PROVIDE        |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROVIDE        |BANGLADESH                   |<151 cm            |>=155 cm       | 1.2943682| 0.9709744| 1.725472|
|0-24 months |PROVIDE        |BANGLADESH                   |[151-155) cm       |>=155 cm       | 1.2282147| 0.8818840| 1.710555|
|0-24 months |SAS-CompFeed   |INDIA                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-CompFeed   |INDIA                        |<151 cm            |>=155 cm       | 1.1482133| 0.9508572| 1.386532|
|0-24 months |SAS-CompFeed   |INDIA                        |[151-155) cm       |>=155 cm       | 1.0536381| 0.9194304| 1.207436|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<151 cm            |>=155 cm       | 1.2256723| 0.8973337| 1.674152|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[151-155) cm       |>=155 cm       | 1.2317221| 0.8770305| 1.729859|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<151 cm            |>=155 cm       | 0.8974395| 0.7198704| 1.118809|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[151-155) cm       |>=155 cm       | 1.0798583| 0.9055825| 1.287673|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<151 cm            |>=155 cm       | 1.1557916| 1.0098377| 1.322841|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[151-155) cm       |>=155 cm       | 0.9748875| 0.8817368| 1.077879|
|0-6 months  |COHORTS        |GUATEMALA                    |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |COHORTS        |GUATEMALA                    |<151 cm            |>=155 cm       | 0.8588036| 0.6151680| 1.198930|
|0-6 months  |COHORTS        |GUATEMALA                    |[151-155) cm       |>=155 cm       | 0.6644351| 0.4346567| 1.015684|
|0-6 months  |COHORTS        |INDIA                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |COHORTS        |INDIA                        |<151 cm            |>=155 cm       | 0.8378243| 0.6974453| 1.006458|
|0-6 months  |COHORTS        |INDIA                        |[151-155) cm       |>=155 cm       | 0.9225307| 0.7548471| 1.127464|
|0-6 months  |COHORTS        |PHILIPPINES                  |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |COHORTS        |PHILIPPINES                  |<151 cm            |>=155 cm       | 1.0146667| 0.8596550| 1.197630|
|0-6 months  |COHORTS        |PHILIPPINES                  |[151-155) cm       |>=155 cm       | 0.9198785| 0.7616814| 1.110932|
|0-6 months  |JiVitA-3       |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |JiVitA-3       |BANGLADESH                   |<151 cm            |>=155 cm       | 0.9630889| 0.8916090| 1.040299|
|0-6 months  |JiVitA-3       |BANGLADESH                   |[151-155) cm       |>=155 cm       | 1.0063859| 0.9183187| 1.102899|
|0-6 months  |Keneba         |GAMBIA                       |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |Keneba         |GAMBIA                       |<151 cm            |>=155 cm       | 1.1263143| 0.7994220| 1.586876|
|0-6 months  |Keneba         |GAMBIA                       |[151-155) cm       |>=155 cm       | 0.9231246| 0.7481989| 1.138947|
|0-6 months  |MAL-ED         |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |MAL-ED         |BANGLADESH                   |<151 cm            |>=155 cm       | 0.9713701| 0.4576722| 2.061650|
|0-6 months  |MAL-ED         |BANGLADESH                   |[151-155) cm       |>=155 cm       | 0.8838384| 0.3815740| 2.047231|
|0-6 months  |MAL-ED         |INDIA                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |MAL-ED         |INDIA                        |<151 cm            |>=155 cm       | 0.9197483| 0.5692844| 1.485966|
|0-6 months  |MAL-ED         |INDIA                        |[151-155) cm       |>=155 cm       | 1.0453330| 0.6300838| 1.734247|
|0-6 months  |MAL-ED         |NEPAL                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |MAL-ED         |NEPAL                        |<151 cm            |>=155 cm       | 1.1009667| 0.5132962| 2.361458|
|0-6 months  |MAL-ED         |NEPAL                        |[151-155) cm       |>=155 cm       | 1.4642857| 0.6588380| 3.254415|
|0-6 months  |NIH-Birth      |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |NIH-Birth      |BANGLADESH                   |<151 cm            |>=155 cm       | 1.1354654| 0.8513092| 1.514469|
|0-6 months  |NIH-Birth      |BANGLADESH                   |[151-155) cm       |>=155 cm       | 0.9262154| 0.6515550| 1.316658|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |<151 cm            |>=155 cm       | 1.2002793| 0.8523751| 1.690184|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |[151-155) cm       |>=155 cm       | 1.0550650| 0.7081325| 1.571969|
|0-6 months  |PROBIT         |BELARUS                      |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |PROBIT         |BELARUS                      |<151 cm            |>=155 cm       | 0.9611136| 0.7814631| 1.182064|
|0-6 months  |PROBIT         |BELARUS                      |[151-155) cm       |>=155 cm       | 1.0078833| 0.8765492| 1.158895|
|0-6 months  |PROVIDE        |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |PROVIDE        |BANGLADESH                   |<151 cm            |>=155 cm       | 1.0933753| 0.7729275| 1.546677|
|0-6 months  |PROVIDE        |BANGLADESH                   |[151-155) cm       |>=155 cm       | 1.1115918| 0.7467331| 1.654723|
|0-6 months  |SAS-CompFeed   |INDIA                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |SAS-CompFeed   |INDIA                        |<151 cm            |>=155 cm       | 0.9432905| 0.7123681| 1.249069|
|0-6 months  |SAS-CompFeed   |INDIA                        |[151-155) cm       |>=155 cm       | 0.8074351| 0.6337535| 1.028714|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |<151 cm            |>=155 cm       | 1.3688225| 0.7331672| 2.555590|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |[151-155) cm       |>=155 cm       | 1.4471186| 0.7363747| 2.843868|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<151 cm            |>=155 cm       | 0.9069534| 0.6732783| 1.221730|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[151-155) cm       |>=155 cm       | 0.9960920| 0.7764033| 1.277943|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |<151 cm            |>=155 cm       | 1.2145510| 1.0326386| 1.428510|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |[151-155) cm       |>=155 cm       | 1.0361243| 0.9200066| 1.166898|
|6-24 months |COHORTS        |GUATEMALA                    |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|6-24 months |COHORTS        |GUATEMALA                    |<151 cm            |>=155 cm       | 1.4657770| 0.8597680| 2.498933|
|6-24 months |COHORTS        |GUATEMALA                    |[151-155) cm       |>=155 cm       | 1.3754484| 0.7569943| 2.499171|
|6-24 months |COHORTS        |INDIA                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|6-24 months |COHORTS        |INDIA                        |<151 cm            |>=155 cm       | 1.2835365| 0.9587332| 1.718378|
|6-24 months |COHORTS        |INDIA                        |[151-155) cm       |>=155 cm       | 0.9616088| 0.6771983| 1.365466|
|6-24 months |COHORTS        |PHILIPPINES                  |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|6-24 months |COHORTS        |PHILIPPINES                  |<151 cm            |>=155 cm       | 1.2263142| 1.0405826| 1.445197|
|6-24 months |COHORTS        |PHILIPPINES                  |[151-155) cm       |>=155 cm       | 0.9824006| 0.8125817| 1.187709|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |<151 cm            |>=155 cm       | 1.4995289| 0.9492651| 2.368766|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |[151-155) cm       |>=155 cm       | 1.2912320| 1.0142771| 1.643811|
|6-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|6-24 months |JiVitA-3       |BANGLADESH                   |<151 cm            |>=155 cm       | 1.2355931| 1.1111164| 1.374015|
|6-24 months |JiVitA-3       |BANGLADESH                   |[151-155) cm       |>=155 cm       | 1.1307483| 1.0036390| 1.273956|
|6-24 months |Keneba         |GAMBIA                       |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|6-24 months |Keneba         |GAMBIA                       |<151 cm            |>=155 cm       | 0.8472918| 0.6044653| 1.187667|
|6-24 months |Keneba         |GAMBIA                       |[151-155) cm       |>=155 cm       | 1.0114727| 0.8530720| 1.199286|
|6-24 months |LCNI-5         |MALAWI                       |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|6-24 months |LCNI-5         |MALAWI                       |<151 cm            |>=155 cm       | 0.8194332| 0.3917059| 1.714222|
|6-24 months |LCNI-5         |MALAWI                       |[151-155) cm       |>=155 cm       | 1.2105263| 0.7004604| 2.092015|
|6-24 months |MAL-ED         |INDIA                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|6-24 months |MAL-ED         |INDIA                        |<151 cm            |>=155 cm       | 1.5416851| 0.8340482| 2.849707|
|6-24 months |MAL-ED         |INDIA                        |[151-155) cm       |>=155 cm       | 1.2927497| 0.6576955| 2.540996|
|6-24 months |MAL-ED         |NEPAL                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|6-24 months |MAL-ED         |NEPAL                        |<151 cm            |>=155 cm       | 1.5022901| 0.6112012| 3.692525|
|6-24 months |MAL-ED         |NEPAL                        |[151-155) cm       |>=155 cm       | 0.9111111| 0.3092704| 2.684134|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<151 cm            |>=155 cm       | 2.3241107| 0.9932349| 5.438281|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[151-155) cm       |>=155 cm       | 2.3129371| 1.0147224| 5.272061|
|6-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|6-24 months |NIH-Birth      |BANGLADESH                   |<151 cm            |>=155 cm       | 1.0568857| 0.7491702| 1.490993|
|6-24 months |NIH-Birth      |BANGLADESH                   |[151-155) cm       |>=155 cm       | 0.9248007| 0.6109552| 1.399868|
|6-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|6-24 months |NIH-Crypto     |BANGLADESH                   |<151 cm            |>=155 cm       | 1.1978180| 0.7025146| 2.042332|
|6-24 months |NIH-Crypto     |BANGLADESH                   |[151-155) cm       |>=155 cm       | 1.2084483| 0.6601072| 2.212288|
|6-24 months |PROVIDE        |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|6-24 months |PROVIDE        |BANGLADESH                   |<151 cm            |>=155 cm       | 1.7772663| 1.0016373| 3.153512|
|6-24 months |PROVIDE        |BANGLADESH                   |[151-155) cm       |>=155 cm       | 1.7734680| 0.9428299| 3.335902|
|6-24 months |SAS-CompFeed   |INDIA                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|6-24 months |SAS-CompFeed   |INDIA                        |<151 cm            |>=155 cm       | 1.4889647| 1.0873959| 2.038830|
|6-24 months |SAS-CompFeed   |INDIA                        |[151-155) cm       |>=155 cm       | 1.3978395| 1.1684041| 1.672328|
|6-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|6-24 months |SAS-FoodSuppl  |INDIA                        |<151 cm            |>=155 cm       | 1.1336280| 0.7677091| 1.673957|
|6-24 months |SAS-FoodSuppl  |INDIA                        |[151-155) cm       |>=155 cm       | 1.2568160| 0.8283348| 1.906942|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<151 cm            |>=155 cm       | 0.9941516| 0.7430432| 1.330121|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[151-155) cm       |>=155 cm       | 1.1457866| 0.9006069| 1.457714|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |<151 cm            |>=155 cm       | 1.0288332| 0.7910807| 1.338040|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |[151-155) cm       |>=155 cm       | 0.8991269| 0.7433349| 1.087571|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |>=155 cm           |NA             | -0.0001789| -0.0620158| 0.0616580|
|0-24 months |COHORTS        |INDIA                        |>=155 cm           |NA             | -0.0066753| -0.0389789| 0.0256284|
|0-24 months |COHORTS        |PHILIPPINES                  |>=155 cm           |NA             |  0.0197647| -0.0145512| 0.0540805|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm           |NA             |  0.0075011|  0.0009198| 0.0140824|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm           |NA             |  0.0065116| -0.0061849| 0.0192082|
|0-24 months |Keneba         |GAMBIA                       |>=155 cm           |NA             | -0.0008290| -0.0098841| 0.0082260|
|0-24 months |LCNI-5         |MALAWI                       |>=155 cm           |NA             |  0.0010320| -0.0135015| 0.0155656|
|0-24 months |MAL-ED         |BANGLADESH                   |>=155 cm           |NA             |  0.0946457| -0.0665369| 0.2558283|
|0-24 months |MAL-ED         |INDIA                        |>=155 cm           |NA             |  0.0296154| -0.0880840| 0.1473149|
|0-24 months |MAL-ED         |NEPAL                        |>=155 cm           |NA             |  0.0848806| -0.0380936| 0.2078547|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             |  0.0425858|  0.0053674| 0.0798042|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm           |NA             |  0.0109312| -0.0714357| 0.0932981|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm           |NA             |  0.0094902| -0.0586702| 0.0776505|
|0-24 months |PROBIT         |BELARUS                      |>=155 cm           |NA             |  0.0000113| -0.0013897| 0.0014123|
|0-24 months |PROVIDE        |BANGLADESH                   |>=155 cm           |NA             |  0.0646350| -0.0040889| 0.1333590|
|0-24 months |SAS-CompFeed   |INDIA                        |>=155 cm           |NA             |  0.0252576| -0.0061065| 0.0566216|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm           |NA             |  0.0801736| -0.0194414| 0.1797887|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             |  0.0009168| -0.0122371| 0.0140708|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm           |NA             |  0.0013664| -0.0029832| 0.0057161|
|0-6 months  |COHORTS        |GUATEMALA                    |>=155 cm           |NA             | -0.0403258| -0.1074340| 0.0267825|
|0-6 months  |COHORTS        |INDIA                        |>=155 cm           |NA             | -0.0258326| -0.0567310| 0.0050658|
|0-6 months  |COHORTS        |PHILIPPINES                  |>=155 cm           |NA             | -0.0029344| -0.0327091| 0.0268402|
|0-6 months  |JiVitA-3       |BANGLADESH                   |>=155 cm           |NA             | -0.0038109| -0.0153922| 0.0077703|
|0-6 months  |Keneba         |GAMBIA                       |>=155 cm           |NA             | -0.0008868| -0.0094356| 0.0076620|
|0-6 months  |MAL-ED         |BANGLADESH                   |>=155 cm           |NA             | -0.0116535| -0.1706331| 0.1473260|
|0-6 months  |MAL-ED         |INDIA                        |>=155 cm           |NA             | -0.0075221| -0.1228912| 0.1078471|
|0-6 months  |MAL-ED         |NEPAL                        |>=155 cm           |NA             |  0.0309490| -0.0755469| 0.1374448|
|0-6 months  |NIH-Birth      |BANGLADESH                   |>=155 cm           |NA             |  0.0197443| -0.0586722| 0.0981607|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |>=155 cm           |NA             |  0.0279556| -0.0359170| 0.0918282|
|0-6 months  |PROBIT         |BELARUS                      |>=155 cm           |NA             | -0.0000556| -0.0013256| 0.0012144|
|0-6 months  |PROVIDE        |BANGLADESH                   |>=155 cm           |NA             |  0.0165314| -0.0508309| 0.0838936|
|0-6 months  |SAS-CompFeed   |INDIA                        |>=155 cm           |NA             | -0.0153744| -0.0482530| 0.0175042|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |>=155 cm           |NA             |  0.0443346| -0.0277056| 0.1163748|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             | -0.0019035| -0.0125332| 0.0087263|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |>=155 cm           |NA             |  0.0031963| -0.0007604| 0.0071530|
|6-24 months |COHORTS        |GUATEMALA                    |>=155 cm           |NA             |  0.0359985| -0.0085690| 0.0805660|
|6-24 months |COHORTS        |INDIA                        |>=155 cm           |NA             |  0.0125839| -0.0091923| 0.0343601|
|6-24 months |COHORTS        |PHILIPPINES                  |>=155 cm           |NA             |  0.0267156| -0.0043973| 0.0578285|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm           |NA             |  0.0075595|  0.0009935| 0.0141256|
|6-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm           |NA             |  0.0230438|  0.0103719| 0.0357157|
|6-24 months |Keneba         |GAMBIA                       |>=155 cm           |NA             | -0.0016480| -0.0103654| 0.0070694|
|6-24 months |LCNI-5         |MALAWI                       |>=155 cm           |NA             |  0.0014504| -0.0130102| 0.0159110|
|6-24 months |MAL-ED         |INDIA                        |>=155 cm           |NA             |  0.0693944| -0.0332094| 0.1719981|
|6-24 months |MAL-ED         |NEPAL                        |>=155 cm           |NA             |  0.0312403| -0.0619769| 0.1244574|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             |  0.0394558|  0.0043797| 0.0745319|
|6-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm           |NA             |  0.0024236| -0.0774540| 0.0823011|
|6-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm           |NA             |  0.0184930| -0.0308024| 0.0677883|
|6-24 months |PROVIDE        |BANGLADESH                   |>=155 cm           |NA             |  0.0607730|  0.0106956| 0.1108503|
|6-24 months |SAS-CompFeed   |INDIA                        |>=155 cm           |NA             |  0.0627874|  0.0308714| 0.0947035|
|6-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm           |NA             |  0.0467592| -0.0498734| 0.1433918|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             |  0.0046847| -0.0079060| 0.0172755|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm           |NA             | -0.0012023| -0.0043722| 0.0019676|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |>=155 cm           |NA             | -0.0006809| -0.2660103| 0.2090409|
|0-24 months |COHORTS        |INDIA                        |>=155 cm           |NA             | -0.0199943| -0.1214984| 0.0723229|
|0-24 months |COHORTS        |PHILIPPINES                  |>=155 cm           |NA             |  0.0489695| -0.0399786| 0.1303099|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm           |NA             |  0.0329209|  0.0025968| 0.0623231|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm           |NA             |  0.0252350| -0.0252665| 0.0732490|
|0-24 months |Keneba         |GAMBIA                       |>=155 cm           |NA             | -0.0017779| -0.0213861| 0.0174539|
|0-24 months |LCNI-5         |MALAWI                       |>=155 cm           |NA             |  0.0130881| -0.1895327| 0.1811952|
|0-24 months |MAL-ED         |BANGLADESH                   |>=155 cm           |NA             |  0.2828235| -0.4024019| 0.6332420|
|0-24 months |MAL-ED         |INDIA                        |>=155 cm           |NA             |  0.0612558| -0.2168546| 0.2758045|
|0-24 months |MAL-ED         |NEPAL                        |>=155 cm           |NA             |  0.2729943| -0.2531022| 0.5782169|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             |  0.3028322| -0.0008100| 0.5143505|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm           |NA             |  0.0228894| -0.1657489| 0.1810028|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm           |NA             |  0.0287754| -0.2014344| 0.2148742|
|0-24 months |PROBIT         |BELARUS                      |>=155 cm           |NA             |  0.0000402| -0.0049635| 0.0050191|
|0-24 months |PROVIDE        |BANGLADESH                   |>=155 cm           |NA             |  0.1794226| -0.0350659| 0.3494643|
|0-24 months |SAS-CompFeed   |INDIA                        |>=155 cm           |NA             |  0.0614851| -0.0218675| 0.1380388|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm           |NA             |  0.1690259| -0.0704923| 0.3549529|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             |  0.0038691| -0.0532169| 0.0578609|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm           |NA             |  0.0055367| -0.0122447| 0.0230057|
|0-6 months  |COHORTS        |GUATEMALA                    |>=155 cm           |NA             | -0.1997177| -0.5821548| 0.0902770|
|0-6 months  |COHORTS        |INDIA                        |>=155 cm           |NA             | -0.1021787| -0.2313855| 0.0134707|
|0-6 months  |COHORTS        |PHILIPPINES                  |>=155 cm           |NA             | -0.0124581| -0.1470913| 0.1063734|
|0-6 months  |JiVitA-3       |BANGLADESH                   |>=155 cm           |NA             | -0.0216266| -0.0894852| 0.0420055|
|0-6 months  |Keneba         |GAMBIA                       |>=155 cm           |NA             | -0.0031183| -0.0336333| 0.0264959|
|0-6 months  |MAL-ED         |BANGLADESH                   |>=155 cm           |NA             | -0.0510345| -1.0383796| 0.4580629|
|0-6 months  |MAL-ED         |INDIA                        |>=155 cm           |NA             | -0.0230423| -0.4451506| 0.2757740|
|0-6 months  |MAL-ED         |NEPAL                        |>=155 cm           |NA             |  0.1534553| -0.5780681| 0.5458764|
|0-6 months  |NIH-Birth      |BANGLADESH                   |>=155 cm           |NA             |  0.0553195| -0.1920375| 0.2513480|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |>=155 cm           |NA             |  0.1087963| -0.1777937| 0.3256511|
|0-6 months  |PROBIT         |BELARUS                      |>=155 cm           |NA             | -0.0002021| -0.0048230| 0.0043975|
|0-6 months  |PROVIDE        |BANGLADESH                   |>=155 cm           |NA             |  0.0628381| -0.2315492| 0.2868555|
|0-6 months  |SAS-CompFeed   |INDIA                        |>=155 cm           |NA             | -0.0713515| -0.2298492| 0.0667197|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |>=155 cm           |NA             |  0.2417713| -0.2701887| 0.5473816|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             | -0.0136482| -0.0927955| 0.0597667|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |>=155 cm           |NA             |  0.0175339| -0.0044067| 0.0389952|
|6-24 months |COHORTS        |GUATEMALA                    |>=155 cm           |NA             |  0.2792904| -0.1611375| 0.5526608|
|6-24 months |COHORTS        |INDIA                        |>=155 cm           |NA             |  0.1049418| -0.0954840| 0.2686984|
|6-24 months |COHORTS        |PHILIPPINES                  |>=155 cm           |NA             |  0.1001925| -0.0242397| 0.2095077|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm           |NA             |  0.0331774|  0.0029071| 0.0625288|
|6-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm           |NA             |  0.1407352|  0.0595726| 0.2148932|
|6-24 months |Keneba         |GAMBIA                       |>=155 cm           |NA             | -0.0050173| -0.0319122| 0.0211765|
|6-24 months |LCNI-5         |MALAWI                       |>=155 cm           |NA             |  0.0189472| -0.1893171| 0.1907419|
|6-24 months |MAL-ED         |INDIA                        |>=155 cm           |NA             |  0.2537231| -0.2304205| 0.5473668|
|6-24 months |MAL-ED         |NEPAL                        |>=155 cm           |NA             |  0.2039295| -0.7049484| 0.6283007|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             |  0.3452381| -0.0142598| 0.5773143|
|6-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm           |NA             |  0.0082614| -0.3050611| 0.2463607|
|6-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm           |NA             |  0.1406235| -0.3282332| 0.4439772|
|6-24 months |PROVIDE        |BANGLADESH                   |>=155 cm           |NA             |  0.3769151| -0.0164354| 0.6180429|
|6-24 months |SAS-CompFeed   |INDIA                        |>=155 cm           |NA             |  0.2040192|  0.0837256| 0.3085201|
|6-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm           |NA             |  0.1311221| -0.1871390| 0.3640603|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             |  0.0289696| -0.0520656| 0.1037630|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm           |NA             | -0.0121982| -0.0448712| 0.0194532|
