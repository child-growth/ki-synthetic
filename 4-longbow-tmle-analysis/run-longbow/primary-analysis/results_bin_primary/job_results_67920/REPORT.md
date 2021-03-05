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

**Intervention Variable:** mhtcm

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |mhtcm        | ever_stunted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:------------|------------:|------:|-----:|
|0-24 months |COHORTS        |GUATEMALA                    |>=155 cm     |            0|     65|  1292|
|0-24 months |COHORTS        |GUATEMALA                    |>=155 cm     |            1|    101|  1292|
|0-24 months |COHORTS        |GUATEMALA                    |<151 cm      |            0|    160|  1292|
|0-24 months |COHORTS        |GUATEMALA                    |<151 cm      |            1|    685|  1292|
|0-24 months |COHORTS        |GUATEMALA                    |[151-155) cm |            0|     77|  1292|
|0-24 months |COHORTS        |GUATEMALA                    |[151-155) cm |            1|    204|  1292|
|0-24 months |COHORTS        |INDIA                        |>=155 cm     |            0|    454|  1906|
|0-24 months |COHORTS        |INDIA                        |>=155 cm     |            1|    117|  1906|
|0-24 months |COHORTS        |INDIA                        |<151 cm      |            0|    437|  1906|
|0-24 months |COHORTS        |INDIA                        |<151 cm      |            1|    387|  1906|
|0-24 months |COHORTS        |INDIA                        |[151-155) cm |            0|    329|  1906|
|0-24 months |COHORTS        |INDIA                        |[151-155) cm |            1|    182|  1906|
|0-24 months |COHORTS        |PHILIPPINES                  |>=155 cm     |            0|    290|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |>=155 cm     |            1|    342|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |<151 cm      |            0|    361|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |<151 cm      |            1|   1188|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |[151-155) cm |            0|    308|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |[151-155) cm |            1|    569|  3058|
|0-24 months |Guatemala BSC  |GUATEMALA                    |>=155 cm     |            0|     19|   235|
|0-24 months |Guatemala BSC  |GUATEMALA                    |>=155 cm     |            1|     17|   235|
|0-24 months |Guatemala BSC  |GUATEMALA                    |<151 cm      |            0|     56|   235|
|0-24 months |Guatemala BSC  |GUATEMALA                    |<151 cm      |            1|     87|   235|
|0-24 months |Guatemala BSC  |GUATEMALA                    |[151-155) cm |            0|     29|   235|
|0-24 months |Guatemala BSC  |GUATEMALA                    |[151-155) cm |            1|     27|   235|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm     |            0|   1942|  3216|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm     |            1|    957|  3216|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<151 cm      |            0|     31|  3216|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<151 cm      |            1|     60|  3216|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[151-155) cm |            0|     96|  3216|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[151-155) cm |            1|    130|  3216|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm     |            0|   2910| 27106|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm     |            1|   1245| 27106|
|0-24 months |JiVitA-3       |BANGLADESH                   |<151 cm      |            0|   6741| 27106|
|0-24 months |JiVitA-3       |BANGLADESH                   |<151 cm      |            1|   9354| 27106|
|0-24 months |JiVitA-3       |BANGLADESH                   |[151-155) cm |            0|   4023| 27106|
|0-24 months |JiVitA-3       |BANGLADESH                   |[151-155) cm |            1|   2833| 27106|
|0-24 months |Keneba         |GAMBIA                       |>=155 cm     |            0|    979|  2430|
|0-24 months |Keneba         |GAMBIA                       |>=155 cm     |            1|   1032|  2430|
|0-24 months |Keneba         |GAMBIA                       |<151 cm      |            0|     16|  2430|
|0-24 months |Keneba         |GAMBIA                       |<151 cm      |            1|     77|  2430|
|0-24 months |Keneba         |GAMBIA                       |[151-155) cm |            0|    118|  2430|
|0-24 months |Keneba         |GAMBIA                       |[151-155) cm |            1|    208|  2430|
|0-24 months |LCNI-5         |MALAWI                       |>=155 cm     |            0|    229|   837|
|0-24 months |LCNI-5         |MALAWI                       |>=155 cm     |            1|    285|   837|
|0-24 months |LCNI-5         |MALAWI                       |<151 cm      |            0|     20|   837|
|0-24 months |LCNI-5         |MALAWI                       |<151 cm      |            1|    111|   837|
|0-24 months |LCNI-5         |MALAWI                       |[151-155) cm |            0|     56|   837|
|0-24 months |LCNI-5         |MALAWI                       |[151-155) cm |            1|    136|   837|
|0-24 months |MAL-ED         |BANGLADESH                   |>=155 cm     |            0|     17|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |>=155 cm     |            1|      8|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |<151 cm      |            0|     45|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |<151 cm      |            1|    118|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |[151-155) cm |            0|     36|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |[151-155) cm |            1|     30|   254|
|0-24 months |MAL-ED         |BRAZIL                       |>=155 cm     |            0|     99|   222|
|0-24 months |MAL-ED         |BRAZIL                       |>=155 cm     |            1|     31|   222|
|0-24 months |MAL-ED         |BRAZIL                       |<151 cm      |            0|     38|   222|
|0-24 months |MAL-ED         |BRAZIL                       |<151 cm      |            1|     15|   222|
|0-24 months |MAL-ED         |BRAZIL                       |[151-155) cm |            0|     27|   222|
|0-24 months |MAL-ED         |BRAZIL                       |[151-155) cm |            1|     12|   222|
|0-24 months |MAL-ED         |INDIA                        |>=155 cm     |            0|     32|   242|
|0-24 months |MAL-ED         |INDIA                        |>=155 cm     |            1|     23|   242|
|0-24 months |MAL-ED         |INDIA                        |<151 cm      |            0|     29|   242|
|0-24 months |MAL-ED         |INDIA                        |<151 cm      |            1|     86|   242|
|0-24 months |MAL-ED         |INDIA                        |[151-155) cm |            0|     32|   242|
|0-24 months |MAL-ED         |INDIA                        |[151-155) cm |            1|     40|   242|
|0-24 months |MAL-ED         |NEPAL                        |>=155 cm     |            0|     38|   238|
|0-24 months |MAL-ED         |NEPAL                        |>=155 cm     |            1|      3|   238|
|0-24 months |MAL-ED         |NEPAL                        |<151 cm      |            0|     74|   238|
|0-24 months |MAL-ED         |NEPAL                        |<151 cm      |            1|     59|   238|
|0-24 months |MAL-ED         |NEPAL                        |[151-155) cm |            0|     43|   238|
|0-24 months |MAL-ED         |NEPAL                        |[151-155) cm |            1|     21|   238|
|0-24 months |MAL-ED         |PERU                         |>=155 cm     |            0|     27|   290|
|0-24 months |MAL-ED         |PERU                         |>=155 cm     |            1|     33|   290|
|0-24 months |MAL-ED         |PERU                         |<151 cm      |            0|     53|   290|
|0-24 months |MAL-ED         |PERU                         |<151 cm      |            1|    116|   290|
|0-24 months |MAL-ED         |PERU                         |[151-155) cm |            0|     24|   290|
|0-24 months |MAL-ED         |PERU                         |[151-155) cm |            1|     37|   290|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=155 cm     |            0|     89|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=155 cm     |            1|    115|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<151 cm      |            0|      6|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<151 cm      |            1|     27|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[151-155) cm |            0|     13|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[151-155) cm |            1|     20|   270|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=155 cm     |            0|     28|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=155 cm     |            1|    125|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<151 cm      |            0|      3|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<151 cm      |            1|     48|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[151-155) cm |            0|      4|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[151-155) cm |            1|     48|   256|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm     |            0|     60|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm     |            1|     57|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |<151 cm      |            0|     93|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |<151 cm      |            1|    273|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |[151-155) cm |            0|     58|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |[151-155) cm |            1|     88|   629|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm     |            0|    100|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm     |            1|     40|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<151 cm      |            0|    192|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<151 cm      |            1|    243|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[151-155) cm |            0|    101|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[151-155) cm |            1|     79|   755|
|0-24 months |PROBIT         |BELARUS                      |>=155 cm     |            0|  11571| 13734|
|0-24 months |PROBIT         |BELARUS                      |>=155 cm     |            1|   1640| 13734|
|0-24 months |PROBIT         |BELARUS                      |<151 cm      |            0|     89| 13734|
|0-24 months |PROBIT         |BELARUS                      |<151 cm      |            1|     36| 13734|
|0-24 months |PROBIT         |BELARUS                      |[151-155) cm |            0|    310| 13734|
|0-24 months |PROBIT         |BELARUS                      |[151-155) cm |            1|     88| 13734|
|0-24 months |PROVIDE        |BANGLADESH                   |>=155 cm     |            0|    102|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |>=155 cm     |            1|     36|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |<151 cm      |            0|    173|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |<151 cm      |            1|    200|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |[151-155) cm |            0|     91|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |[151-155) cm |            1|     67|   669|
|0-24 months |SAS-CompFeed   |INDIA                        |>=155 cm     |            0|    238|  1407|
|0-24 months |SAS-CompFeed   |INDIA                        |>=155 cm     |            1|    334|  1407|
|0-24 months |SAS-CompFeed   |INDIA                        |<151 cm      |            0|    103|  1407|
|0-24 months |SAS-CompFeed   |INDIA                        |<151 cm      |            1|    391|  1407|
|0-24 months |SAS-CompFeed   |INDIA                        |[151-155) cm |            0|    100|  1407|
|0-24 months |SAS-CompFeed   |INDIA                        |[151-155) cm |            1|    241|  1407|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm     |            0|     22|   409|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm     |            1|     56|   409|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<151 cm      |            0|     28|   409|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<151 cm      |            1|    192|   409|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[151-155) cm |            0|     16|   409|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[151-155) cm |            1|     95|   409|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm     |            0|   1058|  2359|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm     |            1|    432|  2359|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<151 cm      |            0|    182|  2359|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<151 cm      |            1|    176|  2359|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[151-155) cm |            0|    304|  2359|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[151-155) cm |            1|    207|  2359|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm     |            0|   4447|  9852|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm     |            1|   3392|  9852|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<151 cm      |            0|    205|  9852|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<151 cm      |            1|    369|  9852|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[151-155) cm |            0|    682|  9852|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[151-155) cm |            1|    757|  9852|
|0-6 months  |COHORTS        |GUATEMALA                    |>=155 cm     |            0|    111|  1070|
|0-6 months  |COHORTS        |GUATEMALA                    |>=155 cm     |            1|     27|  1070|
|0-6 months  |COHORTS        |GUATEMALA                    |<151 cm      |            0|    434|  1070|
|0-6 months  |COHORTS        |GUATEMALA                    |<151 cm      |            1|    269|  1070|
|0-6 months  |COHORTS        |GUATEMALA                    |[151-155) cm |            0|    176|  1070|
|0-6 months  |COHORTS        |GUATEMALA                    |[151-155) cm |            1|     53|  1070|
|0-6 months  |COHORTS        |INDIA                        |>=155 cm     |            0|    507|  1872|
|0-6 months  |COHORTS        |INDIA                        |>=155 cm     |            1|     52|  1872|
|0-6 months  |COHORTS        |INDIA                        |<151 cm      |            0|    619|  1872|
|0-6 months  |COHORTS        |INDIA                        |<151 cm      |            1|    191|  1872|
|0-6 months  |COHORTS        |INDIA                        |[151-155) cm |            0|    425|  1872|
|0-6 months  |COHORTS        |INDIA                        |[151-155) cm |            1|     78|  1872|
|0-6 months  |COHORTS        |PHILIPPINES                  |>=155 cm     |            0|    546|  3058|
|0-6 months  |COHORTS        |PHILIPPINES                  |>=155 cm     |            1|     86|  3058|
|0-6 months  |COHORTS        |PHILIPPINES                  |<151 cm      |            0|   1066|  3058|
|0-6 months  |COHORTS        |PHILIPPINES                  |<151 cm      |            1|    483|  3058|
|0-6 months  |COHORTS        |PHILIPPINES                  |[151-155) cm |            0|    715|  3058|
|0-6 months  |COHORTS        |PHILIPPINES                  |[151-155) cm |            1|    162|  3058|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |>=155 cm     |            0|     27|   219|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |>=155 cm     |            1|      7|   219|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |<151 cm      |            0|     83|   219|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |<151 cm      |            1|     49|   219|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |[151-155) cm |            0|     39|   219|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |[151-155) cm |            1|     14|   219|
|0-6 months  |JiVitA-3       |BANGLADESH                   |>=155 cm     |            0|   3139| 27040|
|0-6 months  |JiVitA-3       |BANGLADESH                   |>=155 cm     |            1|   1006| 27040|
|0-6 months  |JiVitA-3       |BANGLADESH                   |<151 cm      |            0|   8194| 27040|
|0-6 months  |JiVitA-3       |BANGLADESH                   |<151 cm      |            1|   7863| 27040|
|0-6 months  |JiVitA-3       |BANGLADESH                   |[151-155) cm |            0|   4538| 27040|
|0-6 months  |JiVitA-3       |BANGLADESH                   |[151-155) cm |            1|   2300| 27040|
|0-6 months  |Keneba         |GAMBIA                       |>=155 cm     |            0|   1272|  2158|
|0-6 months  |Keneba         |GAMBIA                       |>=155 cm     |            1|    523|  2158|
|0-6 months  |Keneba         |GAMBIA                       |<151 cm      |            0|     38|  2158|
|0-6 months  |Keneba         |GAMBIA                       |<151 cm      |            1|     38|  2158|
|0-6 months  |Keneba         |GAMBIA                       |[151-155) cm |            0|    170|  2158|
|0-6 months  |Keneba         |GAMBIA                       |[151-155) cm |            1|    117|  2158|
|0-6 months  |LCNI-5         |MALAWI                       |>=155 cm     |            0|    121|   271|
|0-6 months  |LCNI-5         |MALAWI                       |>=155 cm     |            1|     40|   271|
|0-6 months  |LCNI-5         |MALAWI                       |<151 cm      |            0|     17|   271|
|0-6 months  |LCNI-5         |MALAWI                       |<151 cm      |            1|     21|   271|
|0-6 months  |LCNI-5         |MALAWI                       |[151-155) cm |            0|     36|   271|
|0-6 months  |LCNI-5         |MALAWI                       |[151-155) cm |            1|     36|   271|
|0-6 months  |MAL-ED         |BANGLADESH                   |>=155 cm     |            0|     20|   254|
|0-6 months  |MAL-ED         |BANGLADESH                   |>=155 cm     |            1|      5|   254|
|0-6 months  |MAL-ED         |BANGLADESH                   |<151 cm      |            0|     92|   254|
|0-6 months  |MAL-ED         |BANGLADESH                   |<151 cm      |            1|     71|   254|
|0-6 months  |MAL-ED         |BANGLADESH                   |[151-155) cm |            0|     53|   254|
|0-6 months  |MAL-ED         |BANGLADESH                   |[151-155) cm |            1|     13|   254|
|0-6 months  |MAL-ED         |BRAZIL                       |>=155 cm     |            0|    105|   222|
|0-6 months  |MAL-ED         |BRAZIL                       |>=155 cm     |            1|     25|   222|
|0-6 months  |MAL-ED         |BRAZIL                       |<151 cm      |            0|     40|   222|
|0-6 months  |MAL-ED         |BRAZIL                       |<151 cm      |            1|     13|   222|
|0-6 months  |MAL-ED         |BRAZIL                       |[151-155) cm |            0|     30|   222|
|0-6 months  |MAL-ED         |BRAZIL                       |[151-155) cm |            1|      9|   222|
|0-6 months  |MAL-ED         |INDIA                        |>=155 cm     |            0|     42|   242|
|0-6 months  |MAL-ED         |INDIA                        |>=155 cm     |            1|     13|   242|
|0-6 months  |MAL-ED         |INDIA                        |<151 cm      |            0|     67|   242|
|0-6 months  |MAL-ED         |INDIA                        |<151 cm      |            1|     48|   242|
|0-6 months  |MAL-ED         |INDIA                        |[151-155) cm |            0|     49|   242|
|0-6 months  |MAL-ED         |INDIA                        |[151-155) cm |            1|     23|   242|
|0-6 months  |MAL-ED         |NEPAL                        |>=155 cm     |            0|     38|   238|
|0-6 months  |MAL-ED         |NEPAL                        |>=155 cm     |            1|      3|   238|
|0-6 months  |MAL-ED         |NEPAL                        |<151 cm      |            0|    105|   238|
|0-6 months  |MAL-ED         |NEPAL                        |<151 cm      |            1|     28|   238|
|0-6 months  |MAL-ED         |NEPAL                        |[151-155) cm |            0|     53|   238|
|0-6 months  |MAL-ED         |NEPAL                        |[151-155) cm |            1|     11|   238|
|0-6 months  |MAL-ED         |PERU                         |>=155 cm     |            0|     40|   290|
|0-6 months  |MAL-ED         |PERU                         |>=155 cm     |            1|     20|   290|
|0-6 months  |MAL-ED         |PERU                         |<151 cm      |            0|     89|   290|
|0-6 months  |MAL-ED         |PERU                         |<151 cm      |            1|     80|   290|
|0-6 months  |MAL-ED         |PERU                         |[151-155) cm |            0|     33|   290|
|0-6 months  |MAL-ED         |PERU                         |[151-155) cm |            1|     28|   290|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |>=155 cm     |            0|    133|   270|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |>=155 cm     |            1|     71|   270|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |<151 cm      |            0|     15|   270|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |<151 cm      |            1|     18|   270|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |[151-155) cm |            0|     18|   270|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |[151-155) cm |            1|     15|   270|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=155 cm     |            0|     97|   256|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=155 cm     |            1|     56|   256|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<151 cm      |            0|     17|   256|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<151 cm      |            1|     34|   256|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[151-155) cm |            0|     34|   256|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[151-155) cm |            1|     18|   256|
|0-6 months  |NIH-Birth      |BANGLADESH                   |>=155 cm     |            0|     94|   629|
|0-6 months  |NIH-Birth      |BANGLADESH                   |>=155 cm     |            1|     23|   629|
|0-6 months  |NIH-Birth      |BANGLADESH                   |<151 cm      |            0|    209|   629|
|0-6 months  |NIH-Birth      |BANGLADESH                   |<151 cm      |            1|    157|   629|
|0-6 months  |NIH-Birth      |BANGLADESH                   |[151-155) cm |            0|    106|   629|
|0-6 months  |NIH-Birth      |BANGLADESH                   |[151-155) cm |            1|     40|   629|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |>=155 cm     |            0|    115|   755|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |>=155 cm     |            1|     25|   755|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |<151 cm      |            0|    279|   755|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |<151 cm      |            1|    156|   755|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |[151-155) cm |            0|    132|   755|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |[151-155) cm |            1|     48|   755|
|0-6 months  |PROBIT         |BELARUS                      |>=155 cm     |            0|  12370| 13734|
|0-6 months  |PROBIT         |BELARUS                      |>=155 cm     |            1|    841| 13734|
|0-6 months  |PROBIT         |BELARUS                      |<151 cm      |            0|    107| 13734|
|0-6 months  |PROBIT         |BELARUS                      |<151 cm      |            1|     18| 13734|
|0-6 months  |PROBIT         |BELARUS                      |[151-155) cm |            0|    356| 13734|
|0-6 months  |PROBIT         |BELARUS                      |[151-155) cm |            1|     42| 13734|
|0-6 months  |PROVIDE        |BANGLADESH                   |>=155 cm     |            0|    118|   669|
|0-6 months  |PROVIDE        |BANGLADESH                   |>=155 cm     |            1|     20|   669|
|0-6 months  |PROVIDE        |BANGLADESH                   |<151 cm      |            0|    261|   669|
|0-6 months  |PROVIDE        |BANGLADESH                   |<151 cm      |            1|    112|   669|
|0-6 months  |PROVIDE        |BANGLADESH                   |[151-155) cm |            0|    124|   669|
|0-6 months  |PROVIDE        |BANGLADESH                   |[151-155) cm |            1|     34|   669|
|0-6 months  |SAS-CompFeed   |INDIA                        |>=155 cm     |            0|    393|  1404|
|0-6 months  |SAS-CompFeed   |INDIA                        |>=155 cm     |            1|    178|  1404|
|0-6 months  |SAS-CompFeed   |INDIA                        |<151 cm      |            0|    220|  1404|
|0-6 months  |SAS-CompFeed   |INDIA                        |<151 cm      |            1|    272|  1404|
|0-6 months  |SAS-CompFeed   |INDIA                        |[151-155) cm |            0|    192|  1404|
|0-6 months  |SAS-CompFeed   |INDIA                        |[151-155) cm |            1|    149|  1404|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |>=155 cm     |            0|     59|   407|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |>=155 cm     |            1|     19|   407|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |<151 cm      |            0|    114|   407|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |<151 cm      |            1|    106|   407|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |[151-155) cm |            0|     75|   407|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |[151-155) cm |            1|     34|   407|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm     |            0|   1268|  2359|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm     |            1|    222|  2359|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<151 cm      |            0|    253|  2359|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<151 cm      |            1|    105|  2359|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[151-155) cm |            0|    381|  2359|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[151-155) cm |            1|    130|  2359|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |>=155 cm     |            0|   5758|  9841|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |>=155 cm     |            1|   2074|  9841|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |<151 cm      |            0|    325|  9841|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |<151 cm      |            1|    247|  9841|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |[151-155) cm |            0|    938|  9841|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |[151-155) cm |            1|    499|  9841|
|6-24 months |COHORTS        |GUATEMALA                    |>=155 cm     |            0|     48|   842|
|6-24 months |COHORTS        |GUATEMALA                    |>=155 cm     |            1|     74|   842|
|6-24 months |COHORTS        |GUATEMALA                    |<151 cm      |            0|    102|   842|
|6-24 months |COHORTS        |GUATEMALA                    |<151 cm      |            1|    416|   842|
|6-24 months |COHORTS        |GUATEMALA                    |[151-155) cm |            0|     51|   842|
|6-24 months |COHORTS        |GUATEMALA                    |[151-155) cm |            1|    151|   842|
|6-24 months |COHORTS        |INDIA                        |>=155 cm     |            0|    432|  1530|
|6-24 months |COHORTS        |INDIA                        |>=155 cm     |            1|     65|  1530|
|6-24 months |COHORTS        |INDIA                        |<151 cm      |            0|    418|  1530|
|6-24 months |COHORTS        |INDIA                        |<151 cm      |            1|    196|  1530|
|6-24 months |COHORTS        |INDIA                        |[151-155) cm |            0|    315|  1530|
|6-24 months |COHORTS        |INDIA                        |[151-155) cm |            1|    104|  1530|
|6-24 months |COHORTS        |PHILIPPINES                  |>=155 cm     |            0|    245|  2121|
|6-24 months |COHORTS        |PHILIPPINES                  |>=155 cm     |            1|    256|  2121|
|6-24 months |COHORTS        |PHILIPPINES                  |<151 cm      |            0|    264|  2121|
|6-24 months |COHORTS        |PHILIPPINES                  |<151 cm      |            1|    705|  2121|
|6-24 months |COHORTS        |PHILIPPINES                  |[151-155) cm |            0|    244|  2121|
|6-24 months |COHORTS        |PHILIPPINES                  |[151-155) cm |            1|    407|  2121|
|6-24 months |Guatemala BSC  |GUATEMALA                    |>=155 cm     |            0|     19|   157|
|6-24 months |Guatemala BSC  |GUATEMALA                    |>=155 cm     |            1|     10|   157|
|6-24 months |Guatemala BSC  |GUATEMALA                    |<151 cm      |            0|     50|   157|
|6-24 months |Guatemala BSC  |GUATEMALA                    |<151 cm      |            1|     38|   157|
|6-24 months |Guatemala BSC  |GUATEMALA                    |[151-155) cm |            0|     27|   157|
|6-24 months |Guatemala BSC  |GUATEMALA                    |[151-155) cm |            1|     13|   157|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm     |            0|   1942|  3216|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm     |            1|    957|  3216|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |<151 cm      |            0|     31|  3216|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |<151 cm      |            1|     60|  3216|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |[151-155) cm |            0|     96|  3216|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |[151-155) cm |            1|    130|  3216|
|6-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm     |            0|   1893| 10460|
|6-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm     |            1|    239| 10460|
|6-24 months |JiVitA-3       |BANGLADESH                   |<151 cm      |            0|   3833| 10460|
|6-24 months |JiVitA-3       |BANGLADESH                   |<151 cm      |            1|   1491| 10460|
|6-24 months |JiVitA-3       |BANGLADESH                   |[151-155) cm |            0|   2471| 10460|
|6-24 months |JiVitA-3       |BANGLADESH                   |[151-155) cm |            1|    533| 10460|
|6-24 months |Keneba         |GAMBIA                       |>=155 cm     |            0|    917|  1679|
|6-24 months |Keneba         |GAMBIA                       |>=155 cm     |            1|    509|  1679|
|6-24 months |Keneba         |GAMBIA                       |<151 cm      |            0|     15|  1679|
|6-24 months |Keneba         |GAMBIA                       |<151 cm      |            1|     39|  1679|
|6-24 months |Keneba         |GAMBIA                       |[151-155) cm |            0|    108|  1679|
|6-24 months |Keneba         |GAMBIA                       |[151-155) cm |            1|     91|  1679|
|6-24 months |LCNI-5         |MALAWI                       |>=155 cm     |            0|    221|   727|
|6-24 months |LCNI-5         |MALAWI                       |>=155 cm     |            1|    245|   727|
|6-24 months |LCNI-5         |MALAWI                       |<151 cm      |            0|     19|   727|
|6-24 months |LCNI-5         |MALAWI                       |<151 cm      |            1|     90|   727|
|6-24 months |LCNI-5         |MALAWI                       |[151-155) cm |            0|     52|   727|
|6-24 months |LCNI-5         |MALAWI                       |[151-155) cm |            1|    100|   727|
|6-24 months |MAL-ED         |BANGLADESH                   |>=155 cm     |            0|     16|   158|
|6-24 months |MAL-ED         |BANGLADESH                   |>=155 cm     |            1|      3|   158|
|6-24 months |MAL-ED         |BANGLADESH                   |<151 cm      |            0|     43|   158|
|6-24 months |MAL-ED         |BANGLADESH                   |<151 cm      |            1|     47|   158|
|6-24 months |MAL-ED         |BANGLADESH                   |[151-155) cm |            0|     32|   158|
|6-24 months |MAL-ED         |BANGLADESH                   |[151-155) cm |            1|     17|   158|
|6-24 months |MAL-ED         |BRAZIL                       |>=155 cm     |            0|     91|   163|
|6-24 months |MAL-ED         |BRAZIL                       |>=155 cm     |            1|      6|   163|
|6-24 months |MAL-ED         |BRAZIL                       |<151 cm      |            0|     36|   163|
|6-24 months |MAL-ED         |BRAZIL                       |<151 cm      |            1|      2|   163|
|6-24 months |MAL-ED         |BRAZIL                       |[151-155) cm |            0|     25|   163|
|6-24 months |MAL-ED         |BRAZIL                       |[151-155) cm |            1|      3|   163|
|6-24 months |MAL-ED         |INDIA                        |>=155 cm     |            0|     32|   154|
|6-24 months |MAL-ED         |INDIA                        |>=155 cm     |            1|     10|   154|
|6-24 months |MAL-ED         |INDIA                        |<151 cm      |            0|     28|   154|
|6-24 months |MAL-ED         |INDIA                        |<151 cm      |            1|     38|   154|
|6-24 months |MAL-ED         |INDIA                        |[151-155) cm |            0|     29|   154|
|6-24 months |MAL-ED         |INDIA                        |[151-155) cm |            1|     17|   154|
|6-24 months |MAL-ED         |NEPAL                        |>=155 cm     |            0|     38|   194|
|6-24 months |MAL-ED         |NEPAL                        |>=155 cm     |            1|      0|   194|
|6-24 months |MAL-ED         |NEPAL                        |<151 cm      |            0|     72|   194|
|6-24 months |MAL-ED         |NEPAL                        |<151 cm      |            1|     31|   194|
|6-24 months |MAL-ED         |NEPAL                        |[151-155) cm |            0|     43|   194|
|6-24 months |MAL-ED         |NEPAL                        |[151-155) cm |            1|     10|   194|
|6-24 months |MAL-ED         |PERU                         |>=155 cm     |            0|     26|   148|
|6-24 months |MAL-ED         |PERU                         |>=155 cm     |            1|     13|   148|
|6-24 months |MAL-ED         |PERU                         |<151 cm      |            0|     44|   148|
|6-24 months |MAL-ED         |PERU                         |<151 cm      |            1|     36|   148|
|6-24 months |MAL-ED         |PERU                         |[151-155) cm |            0|     20|   148|
|6-24 months |MAL-ED         |PERU                         |[151-155) cm |            1|      9|   148|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |>=155 cm     |            0|     80|   155|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |>=155 cm     |            1|     44|   155|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |<151 cm      |            0|      6|   155|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |<151 cm      |            1|      9|   155|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |[151-155) cm |            0|     11|   155|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |[151-155) cm |            1|      5|   155|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=155 cm     |            0|     26|   144|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=155 cm     |            1|     69|   144|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<151 cm      |            0|      1|   144|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<151 cm      |            1|     14|   144|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[151-155) cm |            0|      4|   144|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[151-155) cm |            1|     30|   144|
|6-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm     |            0|     45|   345|
|6-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm     |            1|     34|   345|
|6-24 months |NIH-Birth      |BANGLADESH                   |<151 cm      |            0|     58|   345|
|6-24 months |NIH-Birth      |BANGLADESH                   |<151 cm      |            1|    116|   345|
|6-24 months |NIH-Birth      |BANGLADESH                   |[151-155) cm |            0|     44|   345|
|6-24 months |NIH-Birth      |BANGLADESH                   |[151-155) cm |            1|     48|   345|
|6-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm     |            0|     98|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm     |            1|     15|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |<151 cm      |            0|    181|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |<151 cm      |            1|     87|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |[151-155) cm |            0|     94|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |[151-155) cm |            1|     31|   506|
|6-24 months |PROBIT         |BELARUS                      |>=155 cm     |            0|  11563| 12825|
|6-24 months |PROBIT         |BELARUS                      |>=155 cm     |            1|    799| 12825|
|6-24 months |PROBIT         |BELARUS                      |<151 cm      |            0|     89| 12825|
|6-24 months |PROBIT         |BELARUS                      |<151 cm      |            1|     18| 12825|
|6-24 months |PROBIT         |BELARUS                      |[151-155) cm |            0|    310| 12825|
|6-24 months |PROBIT         |BELARUS                      |[151-155) cm |            1|     46| 12825|
|6-24 months |PROVIDE        |BANGLADESH                   |>=155 cm     |            0|     93|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |>=155 cm     |            1|     16|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |<151 cm      |            0|    142|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |<151 cm      |            1|     88|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |[151-155) cm |            0|     84|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |[151-155) cm |            1|     33|   456|
|6-24 months |SAS-CompFeed   |INDIA                        |>=155 cm     |            0|    216|   743|
|6-24 months |SAS-CompFeed   |INDIA                        |>=155 cm     |            1|    156|   743|
|6-24 months |SAS-CompFeed   |INDIA                        |<151 cm      |            0|     75|   743|
|6-24 months |SAS-CompFeed   |INDIA                        |<151 cm      |            1|    119|   743|
|6-24 months |SAS-CompFeed   |INDIA                        |[151-155) cm |            0|     85|   743|
|6-24 months |SAS-CompFeed   |INDIA                        |[151-155) cm |            1|     92|   743|
|6-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm     |            0|     20|   243|
|6-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm     |            1|     37|   243|
|6-24 months |SAS-FoodSuppl  |INDIA                        |<151 cm      |            0|     24|   243|
|6-24 months |SAS-FoodSuppl  |INDIA                        |<151 cm      |            1|     86|   243|
|6-24 months |SAS-FoodSuppl  |INDIA                        |[151-155) cm |            0|     15|   243|
|6-24 months |SAS-FoodSuppl  |INDIA                        |[151-155) cm |            1|     61|   243|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm     |            0|    843|  1578|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm     |            1|    210|  1578|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<151 cm      |            0|    136|  1578|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<151 cm      |            1|     71|  1578|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[151-155) cm |            0|    241|  1578|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[151-155) cm |            1|     77|  1578|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm     |            0|   4007|  6493|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm     |            1|   1318|  6493|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |<151 cm      |            0|    181|  6493|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |<151 cm      |            1|    122|  6493|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |[151-155) cm |            0|    607|  6493|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |[151-155) cm |            1|    258|  6493|


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

* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/9a13562c-a7f7-487f-ae1e-b3ec0d898f07/cd346006-0421-48a3-9d34-b425c37a598c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9a13562c-a7f7-487f-ae1e-b3ec0d898f07/cd346006-0421-48a3-9d34-b425c37a598c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9a13562c-a7f7-487f-ae1e-b3ec0d898f07/cd346006-0421-48a3-9d34-b425c37a598c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9a13562c-a7f7-487f-ae1e-b3ec0d898f07/cd346006-0421-48a3-9d34-b425c37a598c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |>=155 cm           |NA             | 0.6092201| 0.5361486| 0.6822916|
|0-24 months |COHORTS        |GUATEMALA                    |<151 cm            |NA             | 0.8110505| 0.7845638| 0.8375372|
|0-24 months |COHORTS        |GUATEMALA                    |[151-155) cm       |NA             | 0.7224653| 0.6671559| 0.7777747|
|0-24 months |COHORTS        |INDIA                        |>=155 cm           |NA             | 0.2193122| 0.1864673| 0.2521571|
|0-24 months |COHORTS        |INDIA                        |<151 cm            |NA             | 0.4590967| 0.4254490| 0.4927445|
|0-24 months |COHORTS        |INDIA                        |[151-155) cm       |NA             | 0.3526241| 0.3107696| 0.3944787|
|0-24 months |COHORTS        |PHILIPPINES                  |>=155 cm           |NA             | 0.5715710| 0.5335752| 0.6095669|
|0-24 months |COHORTS        |PHILIPPINES                  |<151 cm            |NA             | 0.7533385| 0.7321648| 0.7745122|
|0-24 months |COHORTS        |PHILIPPINES                  |[151-155) cm       |NA             | 0.6609450| 0.6299192| 0.6919707|
|0-24 months |Guatemala BSC  |GUATEMALA                    |>=155 cm           |NA             | 0.4519096| 0.2881062| 0.6157130|
|0-24 months |Guatemala BSC  |GUATEMALA                    |<151 cm            |NA             | 0.6065405| 0.5252621| 0.6878188|
|0-24 months |Guatemala BSC  |GUATEMALA                    |[151-155) cm       |NA             | 0.5088892| 0.3775785| 0.6402000|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm           |NA             | 0.3303090| 0.2778842| 0.3827338|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<151 cm            |NA             | 0.6544957| 0.5233892| 0.7856022|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[151-155) cm       |NA             | 0.5762317| 0.3851391| 0.7673243|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm           |NA             | 0.3234356| 0.3072112| 0.3396599|
|0-24 months |JiVitA-3       |BANGLADESH                   |<151 cm            |NA             | 0.5718142| 0.5623951| 0.5812333|
|0-24 months |JiVitA-3       |BANGLADESH                   |[151-155) cm       |NA             | 0.4225162| 0.4092473| 0.4357851|
|0-24 months |Keneba         |GAMBIA                       |>=155 cm           |NA             | 0.5140491| 0.4921897| 0.5359084|
|0-24 months |Keneba         |GAMBIA                       |<151 cm            |NA             | 0.8315594| 0.7533585| 0.9097602|
|0-24 months |Keneba         |GAMBIA                       |[151-155) cm       |NA             | 0.6344524| 0.5820659| 0.6868390|
|0-24 months |LCNI-5         |MALAWI                       |>=155 cm           |NA             | 0.5553498| 0.5123588| 0.5983408|
|0-24 months |LCNI-5         |MALAWI                       |<151 cm            |NA             | 0.8379574| 0.7750368| 0.9008779|
|0-24 months |LCNI-5         |MALAWI                       |[151-155) cm       |NA             | 0.7079830| 0.6431098| 0.7728562|
|0-24 months |MAL-ED         |BANGLADESH                   |>=155 cm           |NA             | 0.3200000| 0.1367837| 0.5032163|
|0-24 months |MAL-ED         |BANGLADESH                   |<151 cm            |NA             | 0.7239264| 0.6551609| 0.7926919|
|0-24 months |MAL-ED         |BANGLADESH                   |[151-155) cm       |NA             | 0.4545455| 0.3341803| 0.5749106|
|0-24 months |MAL-ED         |BRAZIL                       |>=155 cm           |NA             | 0.2484487| 0.1739841| 0.3229133|
|0-24 months |MAL-ED         |BRAZIL                       |<151 cm            |NA             | 0.3001613| 0.1809366| 0.4193861|
|0-24 months |MAL-ED         |BRAZIL                       |[151-155) cm       |NA             | 0.3388768| 0.1965510| 0.4812025|
|0-24 months |MAL-ED         |INDIA                        |>=155 cm           |NA             | 0.4136053| 0.2808111| 0.5463996|
|0-24 months |MAL-ED         |INDIA                        |<151 cm            |NA             | 0.7468975| 0.6663311| 0.8274640|
|0-24 months |MAL-ED         |INDIA                        |[151-155) cm       |NA             | 0.5576450| 0.4400244| 0.6752656|
|0-24 months |MAL-ED         |PERU                         |>=155 cm           |NA             | 0.5607562| 0.4327353| 0.6887771|
|0-24 months |MAL-ED         |PERU                         |<151 cm            |NA             | 0.6870430| 0.6168182| 0.7572677|
|0-24 months |MAL-ED         |PERU                         |[151-155) cm       |NA             | 0.6187922| 0.5021557| 0.7354287|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=155 cm           |NA             | 0.5637255| 0.4955462| 0.6319048|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<151 cm            |NA             | 0.8181818| 0.6863439| 0.9500198|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[151-155) cm       |NA             | 0.6060606| 0.4390402| 0.7730810|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm           |NA             | 0.4961331| 0.4064984| 0.5857677|
|0-24 months |NIH-Birth      |BANGLADESH                   |<151 cm            |NA             | 0.7441904| 0.6995149| 0.7888659|
|0-24 months |NIH-Birth      |BANGLADESH                   |[151-155) cm       |NA             | 0.5983433| 0.5190996| 0.6775869|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm           |NA             | 0.3034301| 0.2288456| 0.3780146|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<151 cm            |NA             | 0.5563530| 0.5098182| 0.6028878|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[151-155) cm       |NA             | 0.4365596| 0.3658132| 0.5073061|
|0-24 months |PROBIT         |BELARUS                      |>=155 cm           |NA             | 0.1243307| 0.1086373| 0.1400242|
|0-24 months |PROBIT         |BELARUS                      |<151 cm            |NA             | 0.2708416| 0.2464556| 0.2952275|
|0-24 months |PROBIT         |BELARUS                      |[151-155) cm       |NA             | 0.2125043| 0.1666093| 0.2583992|
|0-24 months |PROVIDE        |BANGLADESH                   |>=155 cm           |NA             | 0.2571893| 0.1835072| 0.3308715|
|0-24 months |PROVIDE        |BANGLADESH                   |<151 cm            |NA             | 0.5324795| 0.4812558| 0.5837033|
|0-24 months |PROVIDE        |BANGLADESH                   |[151-155) cm       |NA             | 0.4320063| 0.3541930| 0.5098196|
|0-24 months |SAS-CompFeed   |INDIA                        |>=155 cm           |NA             | 0.5902069| 0.5542518| 0.6261620|
|0-24 months |SAS-CompFeed   |INDIA                        |<151 cm            |NA             | 0.7815654| 0.7141575| 0.8489733|
|0-24 months |SAS-CompFeed   |INDIA                        |[151-155) cm       |NA             | 0.7116173| 0.6364828| 0.7867517|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm           |NA             | 0.6885324| 0.5888903| 0.7881745|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<151 cm            |NA             | 0.8714125| 0.8271776| 0.9156473|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[151-155) cm       |NA             | 0.8502586| 0.7849923| 0.9155249|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             | 0.2906637| 0.2675385| 0.3137888|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<151 cm            |NA             | 0.4902869| 0.4381215| 0.5424524|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[151-155) cm       |NA             | 0.4046893| 0.3611830| 0.4481957|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm           |NA             | 0.4334754| 0.4225076| 0.4444431|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<151 cm            |NA             | 0.6436866| 0.6048084| 0.6825649|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[151-155) cm       |NA             | 0.5244397| 0.4985563| 0.5503231|
|0-6 months  |COHORTS        |GUATEMALA                    |>=155 cm           |NA             | 0.1944172| 0.1267761| 0.2620584|
|0-6 months  |COHORTS        |GUATEMALA                    |<151 cm            |NA             | 0.3792627| 0.3433366| 0.4151887|
|0-6 months  |COHORTS        |GUATEMALA                    |[151-155) cm       |NA             | 0.2315071| 0.1763787| 0.2866355|
|0-6 months  |COHORTS        |INDIA                        |>=155 cm           |NA             | 0.0966990| 0.0726269| 0.1207711|
|0-6 months  |COHORTS        |INDIA                        |<151 cm            |NA             | 0.2329951| 0.2037042| 0.2622860|
|0-6 months  |COHORTS        |INDIA                        |[151-155) cm       |NA             | 0.1538243| 0.1217952| 0.1858533|
|0-6 months  |COHORTS        |PHILIPPINES                  |>=155 cm           |NA             | 0.1400492| 0.1132124| 0.1668859|
|0-6 months  |COHORTS        |PHILIPPINES                  |<151 cm            |NA             | 0.3029986| 0.2800972| 0.3259001|
|0-6 months  |COHORTS        |PHILIPPINES                  |[151-155) cm       |NA             | 0.1888507| 0.1627471| 0.2149542|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |>=155 cm           |NA             | 0.2058824| 0.0696581| 0.3421066|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |<151 cm            |NA             | 0.3712121| 0.2886049| 0.4538194|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |[151-155) cm       |NA             | 0.2641509| 0.1451845| 0.3831174|
|0-6 months  |JiVitA-3       |BANGLADESH                   |>=155 cm           |NA             | 0.2612865| 0.2457212| 0.2768518|
|0-6 months  |JiVitA-3       |BANGLADESH                   |<151 cm            |NA             | 0.4802420| 0.4710436| 0.4894404|
|0-6 months  |JiVitA-3       |BANGLADESH                   |[151-155) cm       |NA             | 0.3444047| 0.3315263| 0.3572832|
|0-6 months  |Keneba         |GAMBIA                       |>=155 cm           |NA             | 0.2916525| 0.2706138| 0.3126913|
|0-6 months  |Keneba         |GAMBIA                       |<151 cm            |NA             | 0.4987824| 0.3845224| 0.6130424|
|0-6 months  |Keneba         |GAMBIA                       |[151-155) cm       |NA             | 0.4049852| 0.3474926| 0.4624779|
|0-6 months  |LCNI-5         |MALAWI                       |>=155 cm           |NA             | 0.2501894| 0.1824275| 0.3179513|
|0-6 months  |LCNI-5         |MALAWI                       |<151 cm            |NA             | 0.5424898| 0.3785394| 0.7064403|
|0-6 months  |LCNI-5         |MALAWI                       |[151-155) cm       |NA             | 0.4974592| 0.3790766| 0.6158417|
|0-6 months  |MAL-ED         |BANGLADESH                   |>=155 cm           |NA             | 0.2000000| 0.0428933| 0.3571067|
|0-6 months  |MAL-ED         |BANGLADESH                   |<151 cm            |NA             | 0.4355828| 0.3593141| 0.5118515|
|0-6 months  |MAL-ED         |BANGLADESH                   |[151-155) cm       |NA             | 0.1969697| 0.1008310| 0.2931084|
|0-6 months  |MAL-ED         |BRAZIL                       |>=155 cm           |NA             | 0.1923077| 0.1244064| 0.2602090|
|0-6 months  |MAL-ED         |BRAZIL                       |<151 cm            |NA             | 0.2452830| 0.1291873| 0.3613788|
|0-6 months  |MAL-ED         |BRAZIL                       |[151-155) cm       |NA             | 0.2307692| 0.0982395| 0.3632990|
|0-6 months  |MAL-ED         |INDIA                        |>=155 cm           |NA             | 0.2333349| 0.1243386| 0.3423312|
|0-6 months  |MAL-ED         |INDIA                        |<151 cm            |NA             | 0.4215367| 0.3311572| 0.5119161|
|0-6 months  |MAL-ED         |INDIA                        |[151-155) cm       |NA             | 0.3340442| 0.2207908| 0.4472975|
|0-6 months  |MAL-ED         |PERU                         |>=155 cm           |NA             | 0.3317832| 0.2087457| 0.4548208|
|0-6 months  |MAL-ED         |PERU                         |<151 cm            |NA             | 0.4702341| 0.3940329| 0.5464353|
|0-6 months  |MAL-ED         |PERU                         |[151-155) cm       |NA             | 0.4651181| 0.3383515| 0.5918846|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |>=155 cm           |NA             | 0.3463492| 0.2809114| 0.4117869|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |<151 cm            |NA             | 0.5517026| 0.3782003| 0.7252049|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |[151-155) cm       |NA             | 0.4573904| 0.2815258| 0.6332550|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             | 0.3634883| 0.2868966| 0.4400800|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<151 cm            |NA             | 0.6596206| 0.5235376| 0.7957037|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[151-155) cm       |NA             | 0.3635326| 0.2263488| 0.5007164|
|0-6 months  |NIH-Birth      |BANGLADESH                   |>=155 cm           |NA             | 0.1947319| 0.1212511| 0.2682127|
|0-6 months  |NIH-Birth      |BANGLADESH                   |<151 cm            |NA             | 0.4278506| 0.3768718| 0.4788294|
|0-6 months  |NIH-Birth      |BANGLADESH                   |[151-155) cm       |NA             | 0.2729863| 0.1987667| 0.3472059|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |>=155 cm           |NA             | 0.1839446| 0.1199219| 0.2479673|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |<151 cm            |NA             | 0.3524943| 0.3073215| 0.3976672|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |[151-155) cm       |NA             | 0.2699804| 0.2060298| 0.3339310|
|0-6 months  |PROBIT         |BELARUS                      |>=155 cm           |NA             | 0.0637200| 0.0532977| 0.0741423|
|0-6 months  |PROBIT         |BELARUS                      |<151 cm            |NA             | 0.1344948| 0.1103712| 0.1586183|
|0-6 months  |PROBIT         |BELARUS                      |[151-155) cm       |NA             | 0.1038441| 0.0708267| 0.1368615|
|0-6 months  |PROVIDE        |BANGLADESH                   |>=155 cm           |NA             | 0.1423479| 0.0837470| 0.2009487|
|0-6 months  |PROVIDE        |BANGLADESH                   |<151 cm            |NA             | 0.2972060| 0.2502023| 0.3442096|
|0-6 months  |PROVIDE        |BANGLADESH                   |[151-155) cm       |NA             | 0.2203099| 0.1555181| 0.2851018|
|0-6 months  |SAS-CompFeed   |INDIA                        |>=155 cm           |NA             | 0.3095792| 0.2672807| 0.3518777|
|0-6 months  |SAS-CompFeed   |INDIA                        |<151 cm            |NA             | 0.5486693| 0.4885561| 0.6087825|
|0-6 months  |SAS-CompFeed   |INDIA                        |[151-155) cm       |NA             | 0.4423012| 0.3810344| 0.5035679|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |>=155 cm           |NA             | 0.2418346| 0.1452976| 0.3383715|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |<151 cm            |NA             | 0.4842812| 0.4176441| 0.5509183|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |[151-155) cm       |NA             | 0.3132182| 0.2242924| 0.4021439|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             | 0.1490221| 0.1309098| 0.1671343|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<151 cm            |NA             | 0.2927651| 0.2453284| 0.3402018|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[151-155) cm       |NA             | 0.2530434| 0.2148209| 0.2912659|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |>=155 cm           |NA             | 0.2651957| 0.2554182| 0.2749732|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |<151 cm            |NA             | 0.4333759| 0.3927523| 0.4739995|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |[151-155) cm       |NA             | 0.3452442| 0.3204415| 0.3700469|
|6-24 months |COHORTS        |GUATEMALA                    |>=155 cm           |NA             | 0.6094580| 0.5238899| 0.6950262|
|6-24 months |COHORTS        |GUATEMALA                    |<151 cm            |NA             | 0.8022114| 0.7678524| 0.8365704|
|6-24 months |COHORTS        |GUATEMALA                    |[151-155) cm       |NA             | 0.7470301| 0.6853545| 0.8087058|
|6-24 months |COHORTS        |INDIA                        |>=155 cm           |NA             | 0.1417557| 0.1118097| 0.1717018|
|6-24 months |COHORTS        |INDIA                        |<151 cm            |NA             | 0.3051806| 0.2691400| 0.3412211|
|6-24 months |COHORTS        |INDIA                        |[151-155) cm       |NA             | 0.2451175| 0.2034654| 0.2867696|
|6-24 months |COHORTS        |PHILIPPINES                  |>=155 cm           |NA             | 0.5328583| 0.4899441| 0.5757725|
|6-24 months |COHORTS        |PHILIPPINES                  |<151 cm            |NA             | 0.7146315| 0.6866653| 0.7425977|
|6-24 months |COHORTS        |PHILIPPINES                  |[151-155) cm       |NA             | 0.6317837| 0.5950252| 0.6685421|
|6-24 months |Guatemala BSC  |GUATEMALA                    |>=155 cm           |NA             | 0.3299874| 0.1580417| 0.5019330|
|6-24 months |Guatemala BSC  |GUATEMALA                    |<151 cm            |NA             | 0.4225916| 0.3175933| 0.5275900|
|6-24 months |Guatemala BSC  |GUATEMALA                    |[151-155) cm       |NA             | 0.3554332| 0.2065756| 0.5042909|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm           |NA             | 0.3303318| 0.2781300| 0.3825336|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |<151 cm            |NA             | 0.6405323| 0.5055267| 0.7755379|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |[151-155) cm       |NA             | 0.5699310| 0.4017842| 0.7380777|
|6-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm           |NA             | 0.1194508| 0.1038980| 0.1350036|
|6-24 months |JiVitA-3       |BANGLADESH                   |<151 cm            |NA             | 0.2745047| 0.2605884| 0.2884211|
|6-24 months |JiVitA-3       |BANGLADESH                   |[151-155) cm       |NA             | 0.1810525| 0.1655363| 0.1965688|
|6-24 months |Keneba         |GAMBIA                       |>=155 cm           |NA             | 0.3580175| 0.3331411| 0.3828938|
|6-24 months |Keneba         |GAMBIA                       |<151 cm            |NA             | 0.7170944| 0.5948118| 0.8393770|
|6-24 months |Keneba         |GAMBIA                       |[151-155) cm       |NA             | 0.4597792| 0.3907115| 0.5288470|
|6-24 months |LCNI-5         |MALAWI                       |>=155 cm           |NA             | 0.5257103| 0.4802643| 0.5711563|
|6-24 months |LCNI-5         |MALAWI                       |<151 cm            |NA             | 0.8268847| 0.7550410| 0.8987284|
|6-24 months |LCNI-5         |MALAWI                       |[151-155) cm       |NA             | 0.6623935| 0.5862015| 0.7385855|
|6-24 months |MAL-ED         |INDIA                        |>=155 cm           |NA             | 0.2237383| 0.0855099| 0.3619666|
|6-24 months |MAL-ED         |INDIA                        |<151 cm            |NA             | 0.5635558| 0.4406405| 0.6864710|
|6-24 months |MAL-ED         |INDIA                        |[151-155) cm       |NA             | 0.3637900| 0.2207875| 0.5067924|
|6-24 months |MAL-ED         |PERU                         |>=155 cm           |NA             | 0.3333333| 0.1848828| 0.4817839|
|6-24 months |MAL-ED         |PERU                         |<151 cm            |NA             | 0.4500000| 0.3406137| 0.5593863|
|6-24 months |MAL-ED         |PERU                         |[151-155) cm       |NA             | 0.3103448| 0.1413943| 0.4792953|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |>=155 cm           |NA             | 0.3548387| 0.2703512| 0.4393262|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |<151 cm            |NA             | 0.6000000| 0.3512784| 0.8487216|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |[151-155) cm       |NA             | 0.3125000| 0.0846469| 0.5403531|
|6-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm           |NA             | 0.4298164| 0.3197145| 0.5399182|
|6-24 months |NIH-Birth      |BANGLADESH                   |<151 cm            |NA             | 0.6622229| 0.5918321| 0.7326138|
|6-24 months |NIH-Birth      |BANGLADESH                   |[151-155) cm       |NA             | 0.5214015| 0.4177307| 0.6250723|
|6-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm           |NA             | 0.1300433| 0.0665192| 0.1935674|
|6-24 months |NIH-Crypto     |BANGLADESH                   |<151 cm            |NA             | 0.3268225| 0.2706996| 0.3829453|
|6-24 months |NIH-Crypto     |BANGLADESH                   |[151-155) cm       |NA             | 0.2464389| 0.1695225| 0.3233552|
|6-24 months |PROBIT         |BELARUS                      |>=155 cm           |NA             | 0.0646982| 0.0523803| 0.0770161|
|6-24 months |PROBIT         |BELARUS                      |<151 cm            |NA             | 0.1595110| 0.1345866| 0.1844355|
|6-24 months |PROBIT         |BELARUS                      |[151-155) cm       |NA             | 0.1269645| 0.0891344| 0.1647945|
|6-24 months |PROVIDE        |BANGLADESH                   |>=155 cm           |NA             | 0.1464509| 0.0788574| 0.2140444|
|6-24 months |PROVIDE        |BANGLADESH                   |<151 cm            |NA             | 0.3832120| 0.3201036| 0.4463204|
|6-24 months |PROVIDE        |BANGLADESH                   |[151-155) cm       |NA             | 0.2799345| 0.1968784| 0.3629906|
|6-24 months |SAS-CompFeed   |INDIA                        |>=155 cm           |NA             | 0.4237951| 0.3678638| 0.4797264|
|6-24 months |SAS-CompFeed   |INDIA                        |<151 cm            |NA             | 0.6084683| 0.5225545| 0.6943822|
|6-24 months |SAS-CompFeed   |INDIA                        |[151-155) cm       |NA             | 0.5178525| 0.4420981| 0.5936069|
|6-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm           |NA             | 0.6491948| 0.5226841| 0.7757056|
|6-24 months |SAS-FoodSuppl  |INDIA                        |<151 cm            |NA             | 0.7869647| 0.7090049| 0.8649246|
|6-24 months |SAS-FoodSuppl  |INDIA                        |[151-155) cm       |NA             | 0.8023725| 0.7110166| 0.8937284|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             | 0.1993319| 0.1751664| 0.2234974|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<151 cm            |NA             | 0.3386395| 0.2744712| 0.4028079|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[151-155) cm       |NA             | 0.2448006| 0.1972943| 0.2923068|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm           |NA             | 0.2483546| 0.2367652| 0.2599440|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |<151 cm            |NA             | 0.3987966| 0.3439272| 0.4536660|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |[151-155) cm       |NA             | 0.2939155| 0.2634183| 0.3244126|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.7662539| 0.7431681| 0.7893396|
|0-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.3599161| 0.3383625| 0.3814696|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.6863963| 0.6699497| 0.7028430|
|0-24 months |Guatemala BSC  |GUATEMALA                    |NA                 |NA             | 0.5574468| 0.4938076| 0.6210860|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.3566542| 0.3069876| 0.4063208|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.4955360| 0.4876904| 0.5033817|
|0-24 months |Keneba         |GAMBIA                       |NA                 |NA             | 0.5419753| 0.5221615| 0.5617891|
|0-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.6356033| 0.6029802| 0.6682264|
|0-24 months |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.6141732| 0.5541901| 0.6741564|
|0-24 months |MAL-ED         |BRAZIL                       |NA                 |NA             | 0.2612613| 0.2033404| 0.3191821|
|0-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.6157025| 0.5542897| 0.6771153|
|0-24 months |MAL-ED         |PERU                         |NA                 |NA             | 0.6413793| 0.5860858| 0.6966728|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.6000000| 0.5414566| 0.6585434|
|0-24 months |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.6645469| 0.6276196| 0.7014742|
|0-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.4794702| 0.4438115| 0.5151289|
|0-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.1284404| 0.1123257| 0.1445550|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.4529148| 0.4151667| 0.4906629|
|0-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.6865672| 0.6433613| 0.7297731|
|0-24 months |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.8386308| 0.8029353| 0.8743263|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.3454854| 0.3262920| 0.3646787|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.4585871| 0.4487474| 0.4684268|
|0-6 months  |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.3261682| 0.2980650| 0.3542714|
|0-6 months  |COHORTS        |INDIA                        |NA                 |NA             | 0.1714744| 0.1543953| 0.1885534|
|0-6 months  |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.2390451| 0.2239262| 0.2541640|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |NA                 |NA             | 0.3196347| 0.2577308| 0.3815386|
|0-6 months  |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.4130547| 0.4055931| 0.4205164|
|0-6 months  |Keneba         |GAMBIA                       |NA                 |NA             | 0.3141798| 0.2945906| 0.3337690|
|0-6 months  |LCNI-5         |MALAWI                       |NA                 |NA             | 0.3579336| 0.3007518| 0.4151153|
|0-6 months  |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.3503937| 0.2916054| 0.4091820|
|0-6 months  |MAL-ED         |BRAZIL                       |NA                 |NA             | 0.2117117| 0.1578516| 0.2655718|
|0-6 months  |MAL-ED         |INDIA                        |NA                 |NA             | 0.3471074| 0.2870050| 0.4072099|
|0-6 months  |MAL-ED         |PERU                         |NA                 |NA             | 0.4413793| 0.3841309| 0.4986278|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.3851852| 0.3270313| 0.4433391|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.4218750| 0.3612599| 0.4824901|
|0-6 months  |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.3497615| 0.3124631| 0.3870600|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.3033113| 0.2704998| 0.3361228|
|0-6 months  |PROBIT         |BELARUS                      |NA                 |NA             | 0.0656036| 0.0549747| 0.0762326|
|0-6 months  |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.2481315| 0.2153770| 0.2808861|
|0-6 months  |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.4266382| 0.3925570| 0.4607194|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.3906634| 0.3432048| 0.4381220|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1937262| 0.1777743| 0.2096780|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.2865562| 0.2776225| 0.2954900|
|6-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.7612827| 0.7324712| 0.7900941|
|6-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.2385621| 0.2171991| 0.2599251|
|6-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.6449788| 0.6246093| 0.6653483|
|6-24 months |Guatemala BSC  |GUATEMALA                    |NA                 |NA             | 0.3885350| 0.3120482| 0.4650219|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.3566542| 0.3069876| 0.4063208|
|6-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.2163480| 0.2069669| 0.2257290|
|6-24 months |Keneba         |GAMBIA                       |NA                 |NA             | 0.3805837| 0.3573526| 0.4038147|
|6-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.5983494| 0.5626894| 0.6340094|
|6-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.4220779| 0.3438191| 0.5003367|
|6-24 months |MAL-ED         |PERU                         |NA                 |NA             | 0.3918919| 0.3129763| 0.4708075|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.3741935| 0.2977649| 0.4506221|
|6-24 months |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.5739130| 0.5216565| 0.6261696|
|6-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.2628458| 0.2244546| 0.3012371|
|6-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.0672904| 0.0549305| 0.0796504|
|6-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.3004386| 0.2583143| 0.3425629|
|6-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.4939435| 0.4498186| 0.5380683|
|6-24 months |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.7572016| 0.7031798| 0.8112234|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.2268695| 0.2061992| 0.2475397|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.2615124| 0.2508224| 0.2722024|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |COHORTS        |GUATEMALA                    |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |GUATEMALA                    |<151 cm            |>=155 cm       | 1.3312931| 1.1759933| 1.507102|
|0-24 months |COHORTS        |GUATEMALA                    |[151-155) cm       |>=155 cm       | 1.1858855| 1.0288634| 1.366872|
|0-24 months |COHORTS        |INDIA                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |INDIA                        |<151 cm            |>=155 cm       | 2.0933478| 1.7741921| 2.469916|
|0-24 months |COHORTS        |INDIA                        |[151-155) cm       |>=155 cm       | 1.6078637| 1.3290240| 1.945206|
|0-24 months |COHORTS        |PHILIPPINES                  |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |PHILIPPINES                  |<151 cm            |>=155 cm       | 1.3180138| 1.2267593| 1.416056|
|0-24 months |COHORTS        |PHILIPPINES                  |[151-155) cm       |>=155 cm       | 1.1563654| 1.0666640| 1.253610|
|0-24 months |Guatemala BSC  |GUATEMALA                    |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |Guatemala BSC  |GUATEMALA                    |<151 cm            |>=155 cm       | 1.3421721| 0.9127678| 1.973586|
|0-24 months |Guatemala BSC  |GUATEMALA                    |[151-155) cm       |>=155 cm       | 1.1260863| 0.7230692| 1.753733|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<151 cm            |>=155 cm       | 1.9814650| 1.5458656| 2.539809|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[151-155) cm       |>=155 cm       | 1.7445233| 1.2489569| 2.436723|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |<151 cm            |>=155 cm       | 1.7679384| 1.6802081| 1.860249|
|0-24 months |JiVitA-3       |BANGLADESH                   |[151-155) cm       |>=155 cm       | 1.3063380| 1.2327505| 1.384318|
|0-24 months |Keneba         |GAMBIA                       |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |Keneba         |GAMBIA                       |<151 cm            |>=155 cm       | 1.6176654| 1.4589626| 1.793631|
|0-24 months |Keneba         |GAMBIA                       |[151-155) cm       |>=155 cm       | 1.2342255| 1.1249250| 1.354146|
|0-24 months |LCNI-5         |MALAWI                       |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |LCNI-5         |MALAWI                       |<151 cm            |>=155 cm       | 1.5088822| 1.3546432| 1.680683|
|0-24 months |LCNI-5         |MALAWI                       |[151-155) cm       |>=155 cm       | 1.2748417| 1.1305560| 1.437542|
|0-24 months |MAL-ED         |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |BANGLADESH                   |<151 cm            |>=155 cm       | 2.2622699| 1.2661636| 4.042025|
|0-24 months |MAL-ED         |BANGLADESH                   |[151-155) cm       |>=155 cm       | 1.4204545| 0.7559014| 2.669252|
|0-24 months |MAL-ED         |BRAZIL                       |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |BRAZIL                       |<151 cm            |>=155 cm       | 1.2081421| 0.7331816| 1.990785|
|0-24 months |MAL-ED         |BRAZIL                       |[151-155) cm       |>=155 cm       | 1.3639707| 0.8106408| 2.294995|
|0-24 months |MAL-ED         |INDIA                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |INDIA                        |<151 cm            |>=155 cm       | 1.8058219| 1.2871415| 2.533515|
|0-24 months |MAL-ED         |INDIA                        |[151-155) cm       |>=155 cm       | 1.3482539| 0.9179964| 1.980170|
|0-24 months |MAL-ED         |PERU                         |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |PERU                         |<151 cm            |>=155 cm       | 1.2252079| 0.9539784| 1.573552|
|0-24 months |MAL-ED         |PERU                         |[151-155) cm       |>=155 cm       | 1.1034959| 0.8202389| 1.484571|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<151 cm            |>=155 cm       | 1.4513834| 1.1865411| 1.775340|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[151-155) cm       |>=155 cm       | 1.0750988| 0.7956926| 1.452618|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Birth      |BANGLADESH                   |<151 cm            |>=155 cm       | 1.4999815| 1.2401155| 1.814302|
|0-24 months |NIH-Birth      |BANGLADESH                   |[151-155) cm       |>=155 cm       | 1.2060137| 0.9640043| 1.508779|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<151 cm            |>=155 cm       | 1.8335457| 1.4152640| 2.375451|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[151-155) cm       |>=155 cm       | 1.4387484| 1.0734765| 1.928311|
|0-24 months |PROBIT         |BELARUS                      |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROBIT         |BELARUS                      |<151 cm            |>=155 cm       | 2.1783963| 1.9173205| 2.475022|
|0-24 months |PROBIT         |BELARUS                      |[151-155) cm       |>=155 cm       | 1.7091856| 1.4291638| 2.044073|
|0-24 months |PROVIDE        |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROVIDE        |BANGLADESH                   |<151 cm            |>=155 cm       | 2.0703796| 1.5302142| 2.801223|
|0-24 months |PROVIDE        |BANGLADESH                   |[151-155) cm       |>=155 cm       | 1.6797210| 1.1985793| 2.354006|
|0-24 months |SAS-CompFeed   |INDIA                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-CompFeed   |INDIA                        |<151 cm            |>=155 cm       | 1.3242228| 1.2143117| 1.444082|
|0-24 months |SAS-CompFeed   |INDIA                        |[151-155) cm       |>=155 cm       | 1.2057082| 1.1142350| 1.304691|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<151 cm            |>=155 cm       | 1.2656084| 1.0856298| 1.475424|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[151-155) cm       |>=155 cm       | 1.2348853| 1.0484595| 1.454459|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<151 cm            |>=155 cm       | 1.6867844| 1.4769066| 1.926487|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[151-155) cm       |>=155 cm       | 1.3922942| 1.2178347| 1.591746|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<151 cm            |>=155 cm       | 1.4849440| 1.3908646| 1.585387|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[151-155) cm       |>=155 cm       | 1.2098490| 1.1446119| 1.278804|
|0-6 months  |COHORTS        |GUATEMALA                    |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |COHORTS        |GUATEMALA                    |<151 cm            |>=155 cm       | 1.9507669| 1.3600272| 2.798100|
|0-6 months  |COHORTS        |GUATEMALA                    |[151-155) cm       |>=155 cm       | 1.1907748| 0.7809947| 1.815562|
|0-6 months  |COHORTS        |INDIA                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |COHORTS        |INDIA                        |<151 cm            |>=155 cm       | 2.4094882| 1.8233259| 3.184090|
|0-6 months  |COHORTS        |INDIA                        |[151-155) cm       |>=155 cm       | 1.5907535| 1.1499990| 2.200434|
|0-6 months  |COHORTS        |PHILIPPINES                  |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |COHORTS        |PHILIPPINES                  |<151 cm            |>=155 cm       | 2.1635165| 1.7609876| 2.658056|
|0-6 months  |COHORTS        |PHILIPPINES                  |[151-155) cm       |>=155 cm       | 1.3484599| 1.0649130| 1.707505|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |<151 cm            |>=155 cm       | 1.8030303| 0.8970788| 3.623894|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |[151-155) cm       |>=155 cm       | 1.2830189| 0.5762704| 2.856536|
|0-6 months  |JiVitA-3       |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |JiVitA-3       |BANGLADESH                   |<151 cm            |>=155 cm       | 1.8379902| 1.7293316| 1.953476|
|0-6 months  |JiVitA-3       |BANGLADESH                   |[151-155) cm       |>=155 cm       | 1.3181115| 1.2296802| 1.412902|
|0-6 months  |Keneba         |GAMBIA                       |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |Keneba         |GAMBIA                       |<151 cm            |>=155 cm       | 1.7101941| 1.3449927| 2.174557|
|0-6 months  |Keneba         |GAMBIA                       |[151-155) cm       |>=155 cm       | 1.3885882| 1.1842375| 1.628201|
|0-6 months  |LCNI-5         |MALAWI                       |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |LCNI-5         |MALAWI                       |<151 cm            |>=155 cm       | 2.1683167| 1.4459176| 3.251636|
|0-6 months  |LCNI-5         |MALAWI                       |[151-155) cm       |>=155 cm       | 1.9883304| 1.3859736| 2.852477|
|0-6 months  |MAL-ED         |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |MAL-ED         |BANGLADESH                   |<151 cm            |>=155 cm       | 2.1779141| 0.9739028| 4.870414|
|0-6 months  |MAL-ED         |BANGLADESH                   |[151-155) cm       |>=155 cm       | 0.9848485| 0.3905933| 2.483213|
|0-6 months  |MAL-ED         |BRAZIL                       |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |MAL-ED         |BRAZIL                       |<151 cm            |>=155 cm       | 1.2754717| 0.7066720| 2.302098|
|0-6 months  |MAL-ED         |BRAZIL                       |[151-155) cm       |>=155 cm       | 1.2000000| 0.6115039| 2.354850|
|0-6 months  |MAL-ED         |INDIA                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |MAL-ED         |INDIA                        |<151 cm            |>=155 cm       | 1.8065734| 1.0814880| 3.017794|
|0-6 months  |MAL-ED         |INDIA                        |[151-155) cm       |>=155 cm       | 1.4316081| 0.8045102| 2.547515|
|0-6 months  |MAL-ED         |PERU                         |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |MAL-ED         |PERU                         |<151 cm            |>=155 cm       | 1.4172931| 0.9460454| 2.123280|
|0-6 months  |MAL-ED         |PERU                         |[151-155) cm       |>=155 cm       | 1.4018732| 0.8833690| 2.224720|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |<151 cm            |>=155 cm       | 1.5929087| 1.1016125| 2.303313|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |[151-155) cm       |>=155 cm       | 1.3206049| 0.8602319| 2.027357|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<151 cm            |>=155 cm       | 1.8146956| 1.3507867| 2.437928|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[151-155) cm       |>=155 cm       | 1.0001218| 0.6489049| 1.541433|
|0-6 months  |NIH-Birth      |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |NIH-Birth      |BANGLADESH                   |<151 cm            |>=155 cm       | 2.1971261| 1.4788247| 3.264324|
|0-6 months  |NIH-Birth      |BANGLADESH                   |[151-155) cm       |>=155 cm       | 1.4018568| 0.8800670| 2.233015|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |<151 cm            |>=155 cm       | 1.9163067| 1.3221153| 2.777543|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |[151-155) cm       |>=155 cm       | 1.4677263| 0.9638159| 2.235095|
|0-6 months  |PROBIT         |BELARUS                      |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |PROBIT         |BELARUS                      |<151 cm            |>=155 cm       | 2.1107140| 1.7330859| 2.570625|
|0-6 months  |PROBIT         |BELARUS                      |[151-155) cm       |>=155 cm       | 1.6296932| 1.2006097| 2.212126|
|0-6 months  |PROVIDE        |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |PROVIDE        |BANGLADESH                   |<151 cm            |>=155 cm       | 2.0878850| 1.3432963| 3.245199|
|0-6 months  |PROVIDE        |BANGLADESH                   |[151-155) cm       |>=155 cm       | 1.5476869| 0.9338770| 2.564936|
|0-6 months  |SAS-CompFeed   |INDIA                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |SAS-CompFeed   |INDIA                        |<151 cm            |>=155 cm       | 1.7723068| 1.4504722| 2.165551|
|0-6 months  |SAS-CompFeed   |INDIA                        |[151-155) cm       |>=155 cm       | 1.4287174| 1.1376959| 1.794182|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |<151 cm            |>=155 cm       | 2.0025310| 1.3124043| 3.055560|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |[151-155) cm       |>=155 cm       | 1.2951754| 0.7934771| 2.114086|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<151 cm            |>=155 cm       | 1.9645755| 1.6042815| 2.405785|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[151-155) cm       |>=155 cm       | 1.6980263| 1.3985874| 2.061575|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |<151 cm            |>=155 cm       | 1.6341738| 1.4775567| 1.807392|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |[151-155) cm       |>=155 cm       | 1.3018468| 1.2008353| 1.411355|
|6-24 months |COHORTS        |GUATEMALA                    |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|6-24 months |COHORTS        |GUATEMALA                    |<151 cm            |>=155 cm       | 1.3162702| 1.1369215| 1.523911|
|6-24 months |COHORTS        |GUATEMALA                    |[151-155) cm       |>=155 cm       | 1.2257286| 1.0419953| 1.441859|
|6-24 months |COHORTS        |INDIA                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|6-24 months |COHORTS        |INDIA                        |<151 cm            |>=155 cm       | 2.1528621| 1.6936108| 2.736647|
|6-24 months |COHORTS        |INDIA                        |[151-155) cm       |>=155 cm       | 1.7291538| 1.3195895| 2.265836|
|6-24 months |COHORTS        |PHILIPPINES                  |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|6-24 months |COHORTS        |PHILIPPINES                  |<151 cm            |>=155 cm       | 1.3411286| 1.2269161| 1.465973|
|6-24 months |COHORTS        |PHILIPPINES                  |[151-155) cm       |>=155 cm       | 1.1856504| 1.0743194| 1.308519|
|6-24 months |Guatemala BSC  |GUATEMALA                    |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|6-24 months |Guatemala BSC  |GUATEMALA                    |<151 cm            |>=155 cm       | 1.2806297| 0.7213188| 2.273631|
|6-24 months |Guatemala BSC  |GUATEMALA                    |[151-155) cm       |>=155 cm       | 1.0771116| 0.5525280| 2.099748|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |<151 cm            |>=155 cm       | 1.9390576| 1.5045750| 2.499007|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |[151-155) cm       |>=155 cm       | 1.7253289| 1.2812203| 2.323379|
|6-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|6-24 months |JiVitA-3       |BANGLADESH                   |<151 cm            |>=155 cm       | 2.2980574| 2.0024486| 2.637305|
|6-24 months |JiVitA-3       |BANGLADESH                   |[151-155) cm       |>=155 cm       | 1.5157084| 1.2984503| 1.769318|
|6-24 months |Keneba         |GAMBIA                       |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|6-24 months |Keneba         |GAMBIA                       |<151 cm            |>=155 cm       | 2.0029593| 1.6657707| 2.408402|
|6-24 months |Keneba         |GAMBIA                       |[151-155) cm       |>=155 cm       | 1.2842370| 1.0886374| 1.514981|
|6-24 months |LCNI-5         |MALAWI                       |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|6-24 months |LCNI-5         |MALAWI                       |<151 cm            |>=155 cm       | 1.5728904| 1.3913413| 1.778129|
|6-24 months |LCNI-5         |MALAWI                       |[151-155) cm       |>=155 cm       | 1.2599971| 1.0912549| 1.454832|
|6-24 months |MAL-ED         |INDIA                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|6-24 months |MAL-ED         |INDIA                        |<151 cm            |>=155 cm       | 2.5188169| 1.3078476| 4.851053|
|6-24 months |MAL-ED         |INDIA                        |[151-155) cm       |>=155 cm       | 1.6259622| 0.7838587| 3.372742|
|6-24 months |MAL-ED         |PERU                         |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|6-24 months |MAL-ED         |PERU                         |<151 cm            |>=155 cm       | 1.3500000| 0.8128024| 2.242242|
|6-24 months |MAL-ED         |PERU                         |[151-155) cm       |>=155 cm       | 0.9310345| 0.4607905| 1.881170|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |<151 cm            |>=155 cm       | 1.6909091| 1.0483482| 2.727313|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |[151-155) cm       |>=155 cm       | 0.8806818| 0.4089834| 1.896411|
|6-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|6-24 months |NIH-Birth      |BANGLADESH                   |<151 cm            |>=155 cm       | 1.5407114| 1.1684012| 2.031658|
|6-24 months |NIH-Birth      |BANGLADESH                   |[151-155) cm       |>=155 cm       | 1.2130798| 0.8775054| 1.676984|
|6-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|6-24 months |NIH-Crypto     |BANGLADESH                   |<151 cm            |>=155 cm       | 2.5131819| 1.4972270| 4.218521|
|6-24 months |NIH-Crypto     |BANGLADESH                   |[151-155) cm       |>=155 cm       | 1.8950521| 1.0612228| 3.384042|
|6-24 months |PROBIT         |BELARUS                      |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|6-24 months |PROBIT         |BELARUS                      |<151 cm            |>=155 cm       | 2.4654641| 1.8931017| 3.210875|
|6-24 months |PROBIT         |BELARUS                      |[151-155) cm       |>=155 cm       | 1.9624120| 1.5262010| 2.523299|
|6-24 months |PROVIDE        |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|6-24 months |PROVIDE        |BANGLADESH                   |<151 cm            |>=155 cm       | 2.6166591| 1.6025334| 4.272551|
|6-24 months |PROVIDE        |BANGLADESH                   |[151-155) cm       |>=155 cm       | 1.9114565| 1.1054573| 3.305117|
|6-24 months |SAS-CompFeed   |INDIA                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|6-24 months |SAS-CompFeed   |INDIA                        |<151 cm            |>=155 cm       | 1.4357605| 1.1794218| 1.747813|
|6-24 months |SAS-CompFeed   |INDIA                        |[151-155) cm       |>=155 cm       | 1.2219406| 1.0605598| 1.407878|
|6-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|6-24 months |SAS-FoodSuppl  |INDIA                        |<151 cm            |>=155 cm       | 1.2122165| 0.9742030| 1.508380|
|6-24 months |SAS-FoodSuppl  |INDIA                        |[151-155) cm       |>=155 cm       | 1.2359502| 0.9860941| 1.549115|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<151 cm            |>=155 cm       | 1.6988729| 1.3564613| 2.127719|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[151-155) cm       |>=155 cm       | 1.2281055| 0.9768718| 1.543952|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |<151 cm            |>=155 cm       | 1.6057549| 1.3886435| 1.856811|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |[151-155) cm       |>=155 cm       | 1.1834510| 1.0563072| 1.325899|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |>=155 cm           |NA             | 0.1570338|  0.0898983| 0.2241692|
|0-24 months |COHORTS        |INDIA                        |>=155 cm           |NA             | 0.1406038|  0.1110276| 0.1701801|
|0-24 months |COHORTS        |PHILIPPINES                  |>=155 cm           |NA             | 0.1148253|  0.0817191| 0.1479315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |>=155 cm           |NA             | 0.1055372| -0.0461552| 0.2572295|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm           |NA             | 0.0263452|  0.0157744| 0.0369161|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm           |NA             | 0.1721005|  0.1572282| 0.1869727|
|0-24 months |Keneba         |GAMBIA                       |>=155 cm           |NA             | 0.0279263|  0.0190469| 0.0368056|
|0-24 months |LCNI-5         |MALAWI                       |>=155 cm           |NA             | 0.0802536|  0.0548100| 0.1056971|
|0-24 months |MAL-ED         |BANGLADESH                   |>=155 cm           |NA             | 0.2941732|  0.1193640| 0.4689825|
|0-24 months |MAL-ED         |BRAZIL                       |>=155 cm           |NA             | 0.0128126| -0.0387146| 0.0643397|
|0-24 months |MAL-ED         |INDIA                        |>=155 cm           |NA             | 0.2020972|  0.0857297| 0.3184646|
|0-24 months |MAL-ED         |PERU                         |>=155 cm           |NA             | 0.0806231| -0.0335929| 0.1948391|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=155 cm           |NA             | 0.0362745|  0.0038482| 0.0687008|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm           |NA             | 0.1684138|  0.0881310| 0.2486967|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm           |NA             | 0.1760401|  0.1073793| 0.2447008|
|0-24 months |PROBIT         |BELARUS                      |>=155 cm           |NA             | 0.0041097|  0.0026712| 0.0055481|
|0-24 months |PROVIDE        |BANGLADESH                   |>=155 cm           |NA             | 0.1957255|  0.1274707| 0.2639803|
|0-24 months |SAS-CompFeed   |INDIA                        |>=155 cm           |NA             | 0.0963603|  0.0753939| 0.1173266|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm           |NA             | 0.1500984|  0.0635838| 0.2366129|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             | 0.0548217|  0.0396176| 0.0700258|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm           |NA             | 0.0251117|  0.0200584| 0.0301651|
|0-6 months  |COHORTS        |GUATEMALA                    |>=155 cm           |NA             | 0.1317510|  0.0668601| 0.1966419|
|0-6 months  |COHORTS        |INDIA                        |>=155 cm           |NA             | 0.0747754|  0.0518790| 0.0976717|
|0-6 months  |COHORTS        |PHILIPPINES                  |>=155 cm           |NA             | 0.0989960|  0.0734627| 0.1245292|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |>=155 cm           |NA             | 0.1137524| -0.0151939| 0.2426986|
|0-6 months  |JiVitA-3       |BANGLADESH                   |>=155 cm           |NA             | 0.1517683|  0.1372424| 0.1662941|
|0-6 months  |Keneba         |GAMBIA                       |>=155 cm           |NA             | 0.0225273|  0.0130311| 0.0320234|
|0-6 months  |LCNI-5         |MALAWI                       |>=155 cm           |NA             | 0.1077442|  0.0581128| 0.1573755|
|0-6 months  |MAL-ED         |BANGLADESH                   |>=155 cm           |NA             | 0.1503937| -0.0021835| 0.3029709|
|0-6 months  |MAL-ED         |BRAZIL                       |>=155 cm           |NA             | 0.0194040| -0.0265493| 0.0653573|
|0-6 months  |MAL-ED         |INDIA                        |>=155 cm           |NA             | 0.1137725|  0.0140474| 0.2134976|
|0-6 months  |MAL-ED         |PERU                         |>=155 cm           |NA             | 0.1095961| -0.0017161| 0.2209082|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |>=155 cm           |NA             | 0.0388360|  0.0038795| 0.0737925|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             | 0.0583867|  0.0080080| 0.1087653|
|0-6 months  |NIH-Birth      |BANGLADESH                   |>=155 cm           |NA             | 0.1550296|  0.0855069| 0.2245523|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |>=155 cm           |NA             | 0.1193666|  0.0588350| 0.1798982|
|0-6 months  |PROBIT         |BELARUS                      |>=155 cm           |NA             | 0.0018836|  0.0007724| 0.0029948|
|0-6 months  |PROVIDE        |BANGLADESH                   |>=155 cm           |NA             | 0.1057837|  0.0501295| 0.1614379|
|0-6 months  |SAS-CompFeed   |INDIA                        |>=155 cm           |NA             | 0.1170590|  0.0783016| 0.1558163|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |>=155 cm           |NA             | 0.1488288|  0.0590647| 0.2385930|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             | 0.0447041|  0.0316915| 0.0577167|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |>=155 cm           |NA             | 0.0213605|  0.0165267| 0.0261944|
|6-24 months |COHORTS        |GUATEMALA                    |>=155 cm           |NA             | 0.1518246|  0.0741964| 0.2294529|
|6-24 months |COHORTS        |INDIA                        |>=155 cm           |NA             | 0.0968063|  0.0691560| 0.1244567|
|6-24 months |COHORTS        |PHILIPPINES                  |>=155 cm           |NA             | 0.1121205|  0.0753143| 0.1489267|
|6-24 months |Guatemala BSC  |GUATEMALA                    |>=155 cm           |NA             | 0.0585477| -0.0977729| 0.2148682|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm           |NA             | 0.0263225|  0.0160675| 0.0365774|
|6-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm           |NA             | 0.0968972|  0.0817669| 0.1120275|
|6-24 months |Keneba         |GAMBIA                       |>=155 cm           |NA             | 0.0225662|  0.0122621| 0.0328704|
|6-24 months |LCNI-5         |MALAWI                       |>=155 cm           |NA             | 0.0726391|  0.0462836| 0.0989946|
|6-24 months |MAL-ED         |INDIA                        |>=155 cm           |NA             | 0.1983396|  0.0738302| 0.3228490|
|6-24 months |MAL-ED         |PERU                         |>=155 cm           |NA             | 0.0585586| -0.0704796| 0.1875967|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |>=155 cm           |NA             | 0.0193548| -0.0201224| 0.0588320|
|6-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm           |NA             | 0.1440967|  0.0468194| 0.2413740|
|6-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm           |NA             | 0.1328025|  0.0717879| 0.1938171|
|6-24 months |PROBIT         |BELARUS                      |>=155 cm           |NA             | 0.0025923|  0.0014648| 0.0037197|
|6-24 months |PROVIDE        |BANGLADESH                   |>=155 cm           |NA             | 0.1539877|  0.0892485| 0.2187270|
|6-24 months |SAS-CompFeed   |INDIA                        |>=155 cm           |NA             | 0.0701483|  0.0293705| 0.1109261|
|6-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm           |NA             | 0.1080068|  0.0004974| 0.2155162|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             | 0.0275376|  0.0122387| 0.0428364|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm           |NA             | 0.0131578|  0.0078646| 0.0184511|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |>=155 cm           |NA             | 0.2049370|  0.1114071| 0.2886223|
|0-24 months |COHORTS        |INDIA                        |>=155 cm           |NA             | 0.3906573|  0.3043559| 0.4662522|
|0-24 months |COHORTS        |PHILIPPINES                  |>=155 cm           |NA             | 0.1672872|  0.1171556| 0.2145720|
|0-24 months |Guatemala BSC  |GUATEMALA                    |>=155 cm           |NA             | 0.1893224| -0.1348796| 0.4209094|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm           |NA             | 0.0738677|  0.0403684| 0.1061977|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm           |NA             | 0.3473016|  0.3165424| 0.3766765|
|0-24 months |Keneba         |GAMBIA                       |>=155 cm           |NA             | 0.0515268|  0.0348567| 0.0679090|
|0-24 months |LCNI-5         |MALAWI                       |>=155 cm           |NA             | 0.1262636|  0.0842081| 0.1663878|
|0-24 months |MAL-ED         |BANGLADESH                   |>=155 cm           |NA             | 0.4789744|  0.0959206| 0.6997302|
|0-24 months |MAL-ED         |BRAZIL                       |>=155 cm           |NA             | 0.0490412| -0.1694516| 0.2267122|
|0-24 months |MAL-ED         |INDIA                        |>=155 cm           |NA             | 0.3282383|  0.1052713| 0.4956418|
|0-24 months |MAL-ED         |PERU                         |>=155 cm           |NA             | 0.1257027| -0.0725133| 0.2872854|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=155 cm           |NA             | 0.0604575|  0.0042120| 0.1135261|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm           |NA             | 0.2534266|  0.1207076| 0.3661132|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm           |NA             | 0.3671554|  0.2061513| 0.4955055|
|0-24 months |PROBIT         |BELARUS                      |>=155 cm           |NA             | 0.0319966|  0.0213771| 0.0425008|
|0-24 months |PROVIDE        |BANGLADESH                   |>=155 cm           |NA             | 0.4321464|  0.2599092| 0.5642998|
|0-24 months |SAS-CompFeed   |INDIA                        |>=155 cm           |NA             | 0.1403508|  0.1133112| 0.1665659|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm           |NA             | 0.1789803|  0.0671166| 0.2774302|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             | 0.1586803|  0.1136017| 0.2014663|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm           |NA             | 0.0547589|  0.0436364| 0.0657521|
|0-6 months  |COHORTS        |GUATEMALA                    |>=155 cm           |NA             | 0.4039358|  0.1691791| 0.5723596|
|0-6 months  |COHORTS        |INDIA                        |>=155 cm           |NA             | 0.4360732|  0.2932431| 0.5500384|
|0-6 months  |COHORTS        |PHILIPPINES                  |>=155 cm           |NA             | 0.4141309|  0.2996568| 0.5098938|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |>=155 cm           |NA             | 0.3558824| -0.2005949| 0.6544317|
|0-6 months  |JiVitA-3       |BANGLADESH                   |>=155 cm           |NA             | 0.3674289|  0.3313938| 0.4015219|
|0-6 months  |Keneba         |GAMBIA                       |>=155 cm           |NA             | 0.0717018|  0.0410261| 0.1013964|
|0-6 months  |LCNI-5         |MALAWI                       |>=155 cm           |NA             | 0.3010173|  0.1492760| 0.4256928|
|0-6 months  |MAL-ED         |BANGLADESH                   |>=155 cm           |NA             | 0.4292135| -0.2191174| 0.7327597|
|0-6 months  |MAL-ED         |BRAZIL                       |>=155 cm           |NA             | 0.0916530| -0.1527165| 0.2842176|
|0-6 months  |MAL-ED         |INDIA                        |>=155 cm           |NA             | 0.3277732| -0.0271040| 0.5600359|
|0-6 months  |MAL-ED         |PERU                         |>=155 cm           |NA             | 0.2483036| -0.0523524| 0.4630625|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |>=155 cm           |NA             | 0.1008243|  0.0052544| 0.1872123|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             | 0.1383981|  0.0097038| 0.2503679|
|0-6 months  |NIH-Birth      |BANGLADESH                   |>=155 cm           |NA             | 0.4432437|  0.2070858| 0.6090655|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |>=155 cm           |NA             | 0.3935450|  0.1604811| 0.5619066|
|0-6 months  |PROBIT         |BELARUS                      |>=155 cm           |NA             | 0.0287116|  0.0121006| 0.0450433|
|0-6 months  |PROVIDE        |BANGLADESH                   |>=155 cm           |NA             | 0.4263210|  0.1582626| 0.6090139|
|0-6 months  |SAS-CompFeed   |INDIA                        |>=155 cm           |NA             | 0.2743753|  0.1829489| 0.3555713|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |>=155 cm           |NA             | 0.3809644|  0.1037866| 0.5724176|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             | 0.2307592|  0.1624398| 0.2935058|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |>=155 cm           |NA             | 0.0745422|  0.0575634| 0.0912150|
|6-24 months |COHORTS        |GUATEMALA                    |>=155 cm           |NA             | 0.1994327|  0.0894792| 0.2961083|
|6-24 months |COHORTS        |INDIA                        |>=155 cm           |NA             | 0.4057910|  0.2830857| 0.5074943|
|6-24 months |COHORTS        |PHILIPPINES                  |>=155 cm           |NA             | 0.1738359|  0.1141901| 0.2294655|
|6-24 months |Guatemala BSC  |GUATEMALA                    |>=155 cm           |NA             | 0.1506883| -0.3642737| 0.4712715|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm           |NA             | 0.0738039|  0.0412899| 0.1052151|
|6-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm           |NA             | 0.4478767|  0.3761293| 0.5113728|
|6-24 months |Keneba         |GAMBIA                       |>=155 cm           |NA             | 0.0592937|  0.0317871| 0.0860189|
|6-24 months |LCNI-5         |MALAWI                       |>=155 cm           |NA             | 0.1213991|  0.0752141| 0.1652776|
|6-24 months |MAL-ED         |INDIA                        |>=155 cm           |NA             | 0.4699124|  0.0724476| 0.6970598|
|6-24 months |MAL-ED         |PERU                         |>=155 cm           |NA             | 0.1494253| -0.2528576| 0.4225383|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |>=155 cm           |NA             | 0.0517241| -0.0599469| 0.1516301|
|6-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm           |NA             | 0.2510776|  0.0591387| 0.4038602|
|6-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm           |NA             | 0.5052488|  0.2196190| 0.6863343|
|6-24 months |PROBIT         |BELARUS                      |>=155 cm           |NA             | 0.0385238|  0.0207215| 0.0560024|
|6-24 months |PROVIDE        |BANGLADESH                   |>=155 cm           |NA             | 0.5125431|  0.2516405| 0.6824865|
|6-24 months |SAS-CompFeed   |INDIA                        |>=155 cm           |NA             | 0.1420169|  0.0561580| 0.2200655|
|6-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm           |NA             | 0.1426394| -0.0137769| 0.2749222|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             | 0.1213807|  0.0517735| 0.1858782|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm           |NA             | 0.0503143|  0.0298976| 0.0703013|
