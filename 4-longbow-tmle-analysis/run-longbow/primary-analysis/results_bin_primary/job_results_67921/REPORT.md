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

**Intervention Variable:** mwtkg

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_nchldlt5
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |mwtkg      | ever_stunted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:----------|------------:|------:|-----:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg    |            0|    705|  3216|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg    |            1|    232|  3216|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<52 kg     |            0|    658|  3216|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<52 kg     |            1|    543|  3216|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[52-58) kg |            0|    706|  3216|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[52-58) kg |            1|    372|  3216|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg    |            0|    405| 27196|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg    |            1|    264| 27196|
|0-24 months |JiVitA-3       |BANGLADESH                   |<52 kg     |            0|  12291| 27196|
|0-24 months |JiVitA-3       |BANGLADESH                   |<52 kg     |            1|  12462| 27196|
|0-24 months |JiVitA-3       |BANGLADESH                   |[52-58) kg |            0|   1028| 27196|
|0-24 months |JiVitA-3       |BANGLADESH                   |[52-58) kg |            1|    746| 27196|
|0-24 months |LCNI-5         |MALAWI                       |>=58 kg    |            0|     55|   838|
|0-24 months |LCNI-5         |MALAWI                       |>=58 kg    |            1|     59|   838|
|0-24 months |LCNI-5         |MALAWI                       |<52 kg     |            0|    145|   838|
|0-24 months |LCNI-5         |MALAWI                       |<52 kg     |            1|    359|   838|
|0-24 months |LCNI-5         |MALAWI                       |[52-58) kg |            0|    105|   838|
|0-24 months |LCNI-5         |MALAWI                       |[52-58) kg |            1|    115|   838|
|0-24 months |MAL-ED         |BANGLADESH                   |>=58 kg    |            0|     28|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |>=58 kg    |            1|     20|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |<52 kg     |            0|     49|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |<52 kg     |            1|    113|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |[52-58) kg |            0|     21|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |[52-58) kg |            1|     23|   254|
|0-24 months |MAL-ED         |BRAZIL                       |>=58 kg    |            0|    106|   221|
|0-24 months |MAL-ED         |BRAZIL                       |>=58 kg    |            1|     37|   221|
|0-24 months |MAL-ED         |BRAZIL                       |<52 kg     |            0|     30|   221|
|0-24 months |MAL-ED         |BRAZIL                       |<52 kg     |            1|     12|   221|
|0-24 months |MAL-ED         |BRAZIL                       |[52-58) kg |            0|     28|   221|
|0-24 months |MAL-ED         |BRAZIL                       |[52-58) kg |            1|      8|   221|
|0-24 months |MAL-ED         |INDIA                        |>=58 kg    |            0|     22|   242|
|0-24 months |MAL-ED         |INDIA                        |>=58 kg    |            1|     20|   242|
|0-24 months |MAL-ED         |INDIA                        |<52 kg     |            0|     50|   242|
|0-24 months |MAL-ED         |INDIA                        |<52 kg     |            1|    100|   242|
|0-24 months |MAL-ED         |INDIA                        |[52-58) kg |            0|     21|   242|
|0-24 months |MAL-ED         |INDIA                        |[52-58) kg |            1|     29|   242|
|0-24 months |MAL-ED         |NEPAL                        |>=58 kg    |            0|     58|   238|
|0-24 months |MAL-ED         |NEPAL                        |>=58 kg    |            1|     22|   238|
|0-24 months |MAL-ED         |NEPAL                        |<52 kg     |            0|     37|   238|
|0-24 months |MAL-ED         |NEPAL                        |<52 kg     |            1|     39|   238|
|0-24 months |MAL-ED         |NEPAL                        |[52-58) kg |            0|     60|   238|
|0-24 months |MAL-ED         |NEPAL                        |[52-58) kg |            1|     22|   238|
|0-24 months |MAL-ED         |PERU                         |>=58 kg    |            0|     42|   290|
|0-24 months |MAL-ED         |PERU                         |>=58 kg    |            1|     62|   290|
|0-24 months |MAL-ED         |PERU                         |<52 kg     |            0|     42|   290|
|0-24 months |MAL-ED         |PERU                         |<52 kg     |            1|     73|   290|
|0-24 months |MAL-ED         |PERU                         |[52-58) kg |            0|     20|   290|
|0-24 months |MAL-ED         |PERU                         |[52-58) kg |            1|     51|   290|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=58 kg    |            0|     86|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=58 kg    |            1|    108|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<52 kg     |            0|      6|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<52 kg     |            1|     24|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[52-58) kg |            0|     16|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[52-58) kg |            1|     30|   270|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg    |            0|     17|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg    |            1|     81|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<52 kg     |            0|     11|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<52 kg     |            1|     88|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[52-58) kg |            0|      7|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[52-58) kg |            1|     52|   256|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg    |            0|     43|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg    |            1|     39|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |<52 kg     |            0|    134|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |<52 kg     |            1|    319|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |[52-58) kg |            0|     34|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |[52-58) kg |            1|     60|   629|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg    |            0|    125|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg    |            1|     67|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<52 kg     |            0|    184|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<52 kg     |            1|    222|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[52-58) kg |            0|     84|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[52-58) kg |            1|     73|   755|
|0-24 months |PROBIT         |BELARUS                      |>=58 kg    |            0|   9047| 13772|
|0-24 months |PROBIT         |BELARUS                      |>=58 kg    |            1|   1232| 13772|
|0-24 months |PROBIT         |BELARUS                      |<52 kg     |            0|    914| 13772|
|0-24 months |PROBIT         |BELARUS                      |<52 kg     |            1|    217| 13772|
|0-24 months |PROBIT         |BELARUS                      |[52-58) kg |            0|   2035| 13772|
|0-24 months |PROBIT         |BELARUS                      |[52-58) kg |            1|    327| 13772|
|0-24 months |PROVIDE        |BANGLADESH                   |>=58 kg    |            0|     90|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |>=58 kg    |            1|     30|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |<52 kg     |            0|    203|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |<52 kg     |            1|    229|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |[52-58) kg |            0|     73|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |[52-58) kg |            1|     44|   669|
|0-24 months |SAS-CompFeed   |INDIA                        |>=58 kg    |            0|     68|  1515|
|0-24 months |SAS-CompFeed   |INDIA                        |>=58 kg    |            1|     45|  1515|
|0-24 months |SAS-CompFeed   |INDIA                        |<52 kg     |            0|    295|  1515|
|0-24 months |SAS-CompFeed   |INDIA                        |<52 kg     |            1|    865|  1515|
|0-24 months |SAS-CompFeed   |INDIA                        |[52-58) kg |            0|    105|  1515|
|0-24 months |SAS-CompFeed   |INDIA                        |[52-58) kg |            1|    137|  1515|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg    |            0|   1028|  2352|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg    |            1|    448|  2352|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<52 kg     |            0|    211|  2352|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<52 kg     |            1|    182|  2352|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[52-58) kg |            0|    298|  2352|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[52-58) kg |            1|    185|  2352|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg    |            0|   3584| 11204|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg    |            1|   2259| 11204|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<52 kg     |            0|   1009| 11204|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<52 kg     |            1|   1399| 11204|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[52-58) kg |            0|   1498| 11204|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[52-58) kg |            1|   1455| 11204|
|0-6 months  |JiVitA-3       |BANGLADESH                   |>=58 kg    |            0|    456| 27130|
|0-6 months  |JiVitA-3       |BANGLADESH                   |>=58 kg    |            1|    212| 27130|
|0-6 months  |JiVitA-3       |BANGLADESH                   |<52 kg     |            0|  14307| 27130|
|0-6 months  |JiVitA-3       |BANGLADESH                   |<52 kg     |            1|  10385| 27130|
|0-6 months  |JiVitA-3       |BANGLADESH                   |[52-58) kg |            0|   1163| 27130|
|0-6 months  |JiVitA-3       |BANGLADESH                   |[52-58) kg |            1|    607| 27130|
|0-6 months  |LCNI-5         |MALAWI                       |>=58 kg    |            0|     24|   271|
|0-6 months  |LCNI-5         |MALAWI                       |>=58 kg    |            1|      9|   271|
|0-6 months  |LCNI-5         |MALAWI                       |<52 kg     |            0|     95|   271|
|0-6 months  |LCNI-5         |MALAWI                       |<52 kg     |            1|     72|   271|
|0-6 months  |LCNI-5         |MALAWI                       |[52-58) kg |            0|     55|   271|
|0-6 months  |LCNI-5         |MALAWI                       |[52-58) kg |            1|     16|   271|
|0-6 months  |MAL-ED         |BANGLADESH                   |>=58 kg    |            0|     38|   254|
|0-6 months  |MAL-ED         |BANGLADESH                   |>=58 kg    |            1|     10|   254|
|0-6 months  |MAL-ED         |BANGLADESH                   |<52 kg     |            0|     94|   254|
|0-6 months  |MAL-ED         |BANGLADESH                   |<52 kg     |            1|     68|   254|
|0-6 months  |MAL-ED         |BANGLADESH                   |[52-58) kg |            0|     33|   254|
|0-6 months  |MAL-ED         |BANGLADESH                   |[52-58) kg |            1|     11|   254|
|0-6 months  |MAL-ED         |BRAZIL                       |>=58 kg    |            0|    112|   221|
|0-6 months  |MAL-ED         |BRAZIL                       |>=58 kg    |            1|     31|   221|
|0-6 months  |MAL-ED         |BRAZIL                       |<52 kg     |            0|     35|   221|
|0-6 months  |MAL-ED         |BRAZIL                       |<52 kg     |            1|      7|   221|
|0-6 months  |MAL-ED         |BRAZIL                       |[52-58) kg |            0|     28|   221|
|0-6 months  |MAL-ED         |BRAZIL                       |[52-58) kg |            1|      8|   221|
|0-6 months  |MAL-ED         |INDIA                        |>=58 kg    |            0|     32|   242|
|0-6 months  |MAL-ED         |INDIA                        |>=58 kg    |            1|     10|   242|
|0-6 months  |MAL-ED         |INDIA                        |<52 kg     |            0|     95|   242|
|0-6 months  |MAL-ED         |INDIA                        |<52 kg     |            1|     55|   242|
|0-6 months  |MAL-ED         |INDIA                        |[52-58) kg |            0|     31|   242|
|0-6 months  |MAL-ED         |INDIA                        |[52-58) kg |            1|     19|   242|
|0-6 months  |MAL-ED         |NEPAL                        |>=58 kg    |            0|     66|   238|
|0-6 months  |MAL-ED         |NEPAL                        |>=58 kg    |            1|     14|   238|
|0-6 months  |MAL-ED         |NEPAL                        |<52 kg     |            0|     55|   238|
|0-6 months  |MAL-ED         |NEPAL                        |<52 kg     |            1|     21|   238|
|0-6 months  |MAL-ED         |NEPAL                        |[52-58) kg |            0|     75|   238|
|0-6 months  |MAL-ED         |NEPAL                        |[52-58) kg |            1|      7|   238|
|0-6 months  |MAL-ED         |PERU                         |>=58 kg    |            0|     65|   290|
|0-6 months  |MAL-ED         |PERU                         |>=58 kg    |            1|     39|   290|
|0-6 months  |MAL-ED         |PERU                         |<52 kg     |            0|     61|   290|
|0-6 months  |MAL-ED         |PERU                         |<52 kg     |            1|     54|   290|
|0-6 months  |MAL-ED         |PERU                         |[52-58) kg |            0|     36|   290|
|0-6 months  |MAL-ED         |PERU                         |[52-58) kg |            1|     35|   290|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |>=58 kg    |            0|    127|   270|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |>=58 kg    |            1|     67|   270|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |<52 kg     |            0|     13|   270|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |<52 kg     |            1|     17|   270|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |[52-58) kg |            0|     26|   270|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |[52-58) kg |            1|     20|   270|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg    |            0|     68|   256|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg    |            1|     30|   256|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<52 kg     |            0|     47|   256|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<52 kg     |            1|     52|   256|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[52-58) kg |            0|     33|   256|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[52-58) kg |            1|     26|   256|
|0-6 months  |NIH-Birth      |BANGLADESH                   |>=58 kg    |            0|     61|   629|
|0-6 months  |NIH-Birth      |BANGLADESH                   |>=58 kg    |            1|     21|   629|
|0-6 months  |NIH-Birth      |BANGLADESH                   |<52 kg     |            0|    278|   629|
|0-6 months  |NIH-Birth      |BANGLADESH                   |<52 kg     |            1|    175|   629|
|0-6 months  |NIH-Birth      |BANGLADESH                   |[52-58) kg |            0|     70|   629|
|0-6 months  |NIH-Birth      |BANGLADESH                   |[52-58) kg |            1|     24|   629|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |>=58 kg    |            0|    153|   755|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |>=58 kg    |            1|     39|   755|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |<52 kg     |            0|    262|   755|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |<52 kg     |            1|    144|   755|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |[52-58) kg |            0|    111|   755|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |[52-58) kg |            1|     46|   755|
|0-6 months  |PROBIT         |BELARUS                      |>=58 kg    |            0|   9655| 13772|
|0-6 months  |PROBIT         |BELARUS                      |>=58 kg    |            1|    624| 13772|
|0-6 months  |PROBIT         |BELARUS                      |<52 kg     |            0|   1014| 13772|
|0-6 months  |PROBIT         |BELARUS                      |<52 kg     |            1|    117| 13772|
|0-6 months  |PROBIT         |BELARUS                      |[52-58) kg |            0|   2195| 13772|
|0-6 months  |PROBIT         |BELARUS                      |[52-58) kg |            1|    167| 13772|
|0-6 months  |PROVIDE        |BANGLADESH                   |>=58 kg    |            0|    107|   669|
|0-6 months  |PROVIDE        |BANGLADESH                   |>=58 kg    |            1|     13|   669|
|0-6 months  |PROVIDE        |BANGLADESH                   |<52 kg     |            0|    309|   669|
|0-6 months  |PROVIDE        |BANGLADESH                   |<52 kg     |            1|    123|   669|
|0-6 months  |PROVIDE        |BANGLADESH                   |[52-58) kg |            0|     87|   669|
|0-6 months  |PROVIDE        |BANGLADESH                   |[52-58) kg |            1|     30|   669|
|0-6 months  |SAS-CompFeed   |INDIA                        |>=58 kg    |            0|     86|  1512|
|0-6 months  |SAS-CompFeed   |INDIA                        |>=58 kg    |            1|     27|  1512|
|0-6 months  |SAS-CompFeed   |INDIA                        |<52 kg     |            0|    622|  1512|
|0-6 months  |SAS-CompFeed   |INDIA                        |<52 kg     |            1|    536|  1512|
|0-6 months  |SAS-CompFeed   |INDIA                        |[52-58) kg |            0|    165|  1512|
|0-6 months  |SAS-CompFeed   |INDIA                        |[52-58) kg |            1|     76|  1512|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg    |            0|   1240|  2352|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg    |            1|    236|  2352|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<52 kg     |            0|    280|  2352|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<52 kg     |            1|    113|  2352|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[52-58) kg |            0|    375|  2352|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[52-58) kg |            1|    108|  2352|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |>=58 kg    |            0|   4494| 11190|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |>=58 kg    |            1|   1343| 11190|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |<52 kg     |            0|   1505| 11190|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |<52 kg     |            1|    900| 11190|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |[52-58) kg |            0|   2030| 11190|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |[52-58) kg |            1|    918| 11190|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg    |            0|    705|  3216|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg    |            1|    232|  3216|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |<52 kg     |            0|    658|  3216|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |<52 kg     |            1|    543|  3216|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |[52-58) kg |            0|    706|  3216|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |[52-58) kg |            1|    372|  3216|
|6-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg    |            0|    242| 10486|
|6-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg    |            1|     52| 10486|
|6-24 months |JiVitA-3       |BANGLADESH                   |<52 kg     |            0|   7318| 10486|
|6-24 months |JiVitA-3       |BANGLADESH                   |<52 kg     |            1|   2077| 10486|
|6-24 months |JiVitA-3       |BANGLADESH                   |[52-58) kg |            0|    658| 10486|
|6-24 months |JiVitA-3       |BANGLADESH                   |[52-58) kg |            1|    139| 10486|
|6-24 months |LCNI-5         |MALAWI                       |>=58 kg    |            0|     55|   728|
|6-24 months |LCNI-5         |MALAWI                       |>=58 kg    |            1|     50|   728|
|6-24 months |LCNI-5         |MALAWI                       |<52 kg     |            0|    138|   728|
|6-24 months |LCNI-5         |MALAWI                       |<52 kg     |            1|    287|   728|
|6-24 months |LCNI-5         |MALAWI                       |[52-58) kg |            0|     99|   728|
|6-24 months |LCNI-5         |MALAWI                       |[52-58) kg |            1|     99|   728|
|6-24 months |MAL-ED         |BANGLADESH                   |>=58 kg    |            0|     25|   158|
|6-24 months |MAL-ED         |BANGLADESH                   |>=58 kg    |            1|     10|   158|
|6-24 months |MAL-ED         |BANGLADESH                   |<52 kg     |            0|     45|   158|
|6-24 months |MAL-ED         |BANGLADESH                   |<52 kg     |            1|     45|   158|
|6-24 months |MAL-ED         |BANGLADESH                   |[52-58) kg |            0|     21|   158|
|6-24 months |MAL-ED         |BANGLADESH                   |[52-58) kg |            1|     12|   158|
|6-24 months |MAL-ED         |BRAZIL                       |>=58 kg    |            0|    101|   163|
|6-24 months |MAL-ED         |BRAZIL                       |>=58 kg    |            1|      6|   163|
|6-24 months |MAL-ED         |BRAZIL                       |<52 kg     |            0|     25|   163|
|6-24 months |MAL-ED         |BRAZIL                       |<52 kg     |            1|      5|   163|
|6-24 months |MAL-ED         |BRAZIL                       |[52-58) kg |            0|     26|   163|
|6-24 months |MAL-ED         |BRAZIL                       |[52-58) kg |            1|      0|   163|
|6-24 months |MAL-ED         |INDIA                        |>=58 kg    |            0|     21|   154|
|6-24 months |MAL-ED         |INDIA                        |>=58 kg    |            1|     10|   154|
|6-24 months |MAL-ED         |INDIA                        |<52 kg     |            0|     47|   154|
|6-24 months |MAL-ED         |INDIA                        |<52 kg     |            1|     45|   154|
|6-24 months |MAL-ED         |INDIA                        |[52-58) kg |            0|     21|   154|
|6-24 months |MAL-ED         |INDIA                        |[52-58) kg |            1|     10|   154|
|6-24 months |MAL-ED         |NEPAL                        |>=58 kg    |            0|     58|   194|
|6-24 months |MAL-ED         |NEPAL                        |>=58 kg    |            1|      8|   194|
|6-24 months |MAL-ED         |NEPAL                        |<52 kg     |            0|     36|   194|
|6-24 months |MAL-ED         |NEPAL                        |<52 kg     |            1|     18|   194|
|6-24 months |MAL-ED         |NEPAL                        |[52-58) kg |            0|     59|   194|
|6-24 months |MAL-ED         |NEPAL                        |[52-58) kg |            1|     15|   194|
|6-24 months |MAL-ED         |PERU                         |>=58 kg    |            0|     39|   148|
|6-24 months |MAL-ED         |PERU                         |>=58 kg    |            1|     23|   148|
|6-24 months |MAL-ED         |PERU                         |<52 kg     |            0|     35|   148|
|6-24 months |MAL-ED         |PERU                         |<52 kg     |            1|     19|   148|
|6-24 months |MAL-ED         |PERU                         |[52-58) kg |            0|     16|   148|
|6-24 months |MAL-ED         |PERU                         |[52-58) kg |            1|     16|   148|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |>=58 kg    |            0|     78|   155|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |>=58 kg    |            1|     41|   155|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |<52 kg     |            0|      6|   155|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |<52 kg     |            1|      7|   155|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |[52-58) kg |            0|     13|   155|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |[52-58) kg |            1|     10|   155|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg    |            0|     16|   144|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg    |            1|     51|   144|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<52 kg     |            0|      8|   144|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<52 kg     |            1|     36|   144|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[52-58) kg |            0|      7|   144|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[52-58) kg |            1|     26|   144|
|6-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg    |            0|     34|   345|
|6-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg    |            1|     18|   345|
|6-24 months |NIH-Birth      |BANGLADESH                   |<52 kg     |            0|     85|   345|
|6-24 months |NIH-Birth      |BANGLADESH                   |<52 kg     |            1|    144|   345|
|6-24 months |NIH-Birth      |BANGLADESH                   |[52-58) kg |            0|     28|   345|
|6-24 months |NIH-Birth      |BANGLADESH                   |[52-58) kg |            1|     36|   345|
|6-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg    |            0|    121|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg    |            1|     28|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |<52 kg     |            0|    173|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |<52 kg     |            1|     78|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |[52-58) kg |            0|     79|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |[52-58) kg |            1|     27|   506|
|6-24 months |PROBIT         |BELARUS                      |>=58 kg    |            0|   9040| 12856|
|6-24 months |PROBIT         |BELARUS                      |>=58 kg    |            1|    608| 12856|
|6-24 months |PROBIT         |BELARUS                      |<52 kg     |            0|    914| 12856|
|6-24 months |PROBIT         |BELARUS                      |<52 kg     |            1|    100| 12856|
|6-24 months |PROBIT         |BELARUS                      |[52-58) kg |            0|   2034| 12856|
|6-24 months |PROBIT         |BELARUS                      |[52-58) kg |            1|    160| 12856|
|6-24 months |PROVIDE        |BANGLADESH                   |>=58 kg    |            0|     84|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |>=58 kg    |            1|     17|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |<52 kg     |            0|    169|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |<52 kg     |            1|    106|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |[52-58) kg |            0|     66|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |[52-58) kg |            1|     14|   456|
|6-24 months |SAS-CompFeed   |INDIA                        |>=58 kg    |            0|     62|   811|
|6-24 months |SAS-CompFeed   |INDIA                        |>=58 kg    |            1|     18|   811|
|6-24 months |SAS-CompFeed   |INDIA                        |<52 kg     |            0|    249|   811|
|6-24 months |SAS-CompFeed   |INDIA                        |<52 kg     |            1|    329|   811|
|6-24 months |SAS-CompFeed   |INDIA                        |[52-58) kg |            0|     92|   811|
|6-24 months |SAS-CompFeed   |INDIA                        |[52-58) kg |            1|     61|   811|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg    |            0|    829|  1572|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg    |            1|    212|  1572|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<52 kg     |            0|    147|  1572|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<52 kg     |            1|     69|  1572|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[52-58) kg |            0|    238|  1572|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[52-58) kg |            1|     77|  1572|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg    |            0|   3213|  7378|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg    |            1|    916|  7378|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |<52 kg     |            0|    879|  7378|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |<52 kg     |            1|    499|  7378|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |[52-58) kg |            0|   1334|  7378|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |[52-58) kg |            1|    537|  7378|


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

* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/fa44bef6-6e9a-4d9f-836b-c6f7dda95f90/49988027-98e0-4f84-a4ea-c1f6dce158b8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fa44bef6-6e9a-4d9f-836b-c6f7dda95f90/49988027-98e0-4f84-a4ea-c1f6dce158b8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fa44bef6-6e9a-4d9f-836b-c6f7dda95f90/49988027-98e0-4f84-a4ea-c1f6dce158b8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fa44bef6-6e9a-4d9f-836b-c6f7dda95f90/49988027-98e0-4f84-a4ea-c1f6dce158b8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg            |NA             | 0.2493530| 0.0603175| 0.4383885|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<52 kg             |NA             | 0.4516361| 0.3917896| 0.5114826|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[52-58) kg         |NA             | 0.3420699| 0.2987834| 0.3853564|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg            |NA             | 0.4450505| 0.4103869| 0.4797140|
|0-24 months |JiVitA-3       |BANGLADESH                   |<52 kg             |NA             | 0.5012424| 0.4931678| 0.5093170|
|0-24 months |JiVitA-3       |BANGLADESH                   |[52-58) kg         |NA             | 0.4393183| 0.4148068| 0.4638299|
|0-24 months |LCNI-5         |MALAWI                       |>=58 kg            |NA             | 0.5209312| 0.4285223| 0.6133400|
|0-24 months |LCNI-5         |MALAWI                       |<52 kg             |NA             | 0.7135603| 0.6740034| 0.7531171|
|0-24 months |LCNI-5         |MALAWI                       |[52-58) kg         |NA             | 0.5179666| 0.4505161| 0.5854171|
|0-24 months |MAL-ED         |BANGLADESH                   |>=58 kg            |NA             | 0.4332183| 0.2744105| 0.5920260|
|0-24 months |MAL-ED         |BANGLADESH                   |<52 kg             |NA             | 0.6827095| 0.6095394| 0.7558795|
|0-24 months |MAL-ED         |BANGLADESH                   |[52-58) kg         |NA             | 0.4926446| 0.3467692| 0.6385200|
|0-24 months |MAL-ED         |BRAZIL                       |>=58 kg            |NA             | 0.2587413| 0.1867992| 0.3306833|
|0-24 months |MAL-ED         |BRAZIL                       |<52 kg             |NA             | 0.2857143| 0.1487806| 0.4226479|
|0-24 months |MAL-ED         |BRAZIL                       |[52-58) kg         |NA             | 0.2222222| 0.0861081| 0.3583363|
|0-24 months |MAL-ED         |INDIA                        |>=58 kg            |NA             | 0.4638460| 0.3095006| 0.6181914|
|0-24 months |MAL-ED         |INDIA                        |<52 kg             |NA             | 0.6671050| 0.5916666| 0.7425433|
|0-24 months |MAL-ED         |INDIA                        |[52-58) kg         |NA             | 0.5498849| 0.4067449| 0.6930249|
|0-24 months |MAL-ED         |NEPAL                        |>=58 kg            |NA             | 0.2724614| 0.1706699| 0.3742528|
|0-24 months |MAL-ED         |NEPAL                        |<52 kg             |NA             | 0.5179918| 0.4080001| 0.6279834|
|0-24 months |MAL-ED         |NEPAL                        |[52-58) kg         |NA             | 0.2684135| 0.1721510| 0.3646760|
|0-24 months |MAL-ED         |PERU                         |>=58 kg            |NA             | 0.5850470| 0.4900618| 0.6800322|
|0-24 months |MAL-ED         |PERU                         |<52 kg             |NA             | 0.6465471| 0.5581775| 0.7349167|
|0-24 months |MAL-ED         |PERU                         |[52-58) kg         |NA             | 0.7149918| 0.6001673| 0.8298164|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=58 kg            |NA             | 0.5567010| 0.4866665| 0.6267356|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<52 kg             |NA             | 0.8000000| 0.6565987| 0.9434013|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[52-58) kg         |NA             | 0.6521739| 0.5142823| 0.7900655|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             | 0.8265306| 0.7514158| 0.9016455|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<52 kg             |NA             | 0.8888889| 0.8268616| 0.9509162|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[52-58) kg         |NA             | 0.8813559| 0.7986816| 0.9640303|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg            |NA             | 0.4916423| 0.3838439| 0.5994407|
|0-24 months |NIH-Birth      |BANGLADESH                   |<52 kg             |NA             | 0.7033938| 0.6611770| 0.7456106|
|0-24 months |NIH-Birth      |BANGLADESH                   |[52-58) kg         |NA             | 0.6320600| 0.5309884| 0.7331316|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg            |NA             | 0.3622470| 0.2907081| 0.4337859|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<52 kg             |NA             | 0.5358787| 0.4872103| 0.5845471|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[52-58) kg         |NA             | 0.4567551| 0.3732255| 0.5402847|
|0-24 months |PROBIT         |BELARUS                      |>=58 kg            |NA             | 0.1209255| 0.1040284| 0.1378227|
|0-24 months |PROBIT         |BELARUS                      |<52 kg             |NA             | 0.1844633| 0.1559927| 0.2129339|
|0-24 months |PROBIT         |BELARUS                      |[52-58) kg         |NA             | 0.1407169| 0.1188723| 0.1625614|
|0-24 months |PROVIDE        |BANGLADESH                   |>=58 kg            |NA             | 0.2473244| 0.1687712| 0.3258775|
|0-24 months |PROVIDE        |BANGLADESH                   |<52 kg             |NA             | 0.5342287| 0.4868694| 0.5815879|
|0-24 months |PROVIDE        |BANGLADESH                   |[52-58) kg         |NA             | 0.3660623| 0.2730153| 0.4591092|
|0-24 months |SAS-CompFeed   |INDIA                        |>=58 kg            |NA             | 0.4519247| 0.3688712| 0.5349782|
|0-24 months |SAS-CompFeed   |INDIA                        |<52 kg             |NA             | 0.7358500| 0.6918770| 0.7798230|
|0-24 months |SAS-CompFeed   |INDIA                        |[52-58) kg         |NA             | 0.5870668| 0.5077075| 0.6664261|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             | 0.3026163| 0.2790804| 0.3261522|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<52 kg             |NA             | 0.4710179| 0.4208813| 0.5211545|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[52-58) kg         |NA             | 0.3852630| 0.3403790| 0.4301470|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg            |NA             | 0.3871452| 0.3745577| 0.3997328|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<52 kg             |NA             | 0.5838166| 0.5638145| 0.6038187|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[52-58) kg         |NA             | 0.4951120| 0.4766739| 0.5135500|
|0-6 months  |JiVitA-3       |BANGLADESH                   |>=58 kg            |NA             | 0.3584408| 0.3252404| 0.3916412|
|0-6 months  |JiVitA-3       |BANGLADESH                   |<52 kg             |NA             | 0.4186284| 0.4109193| 0.4263375|
|0-6 months  |JiVitA-3       |BANGLADESH                   |[52-58) kg         |NA             | 0.3593588| 0.3355627| 0.3831548|
|0-6 months  |LCNI-5         |MALAWI                       |>=58 kg            |NA             | 0.2727273| 0.1204950| 0.4249596|
|0-6 months  |LCNI-5         |MALAWI                       |<52 kg             |NA             | 0.4311377| 0.3558881| 0.5063873|
|0-6 months  |LCNI-5         |MALAWI                       |[52-58) kg         |NA             | 0.2253521| 0.1279867| 0.3227175|
|0-6 months  |MAL-ED         |BANGLADESH                   |>=58 kg            |NA             | 0.2016700| 0.0871147| 0.3162253|
|0-6 months  |MAL-ED         |BANGLADESH                   |<52 kg             |NA             | 0.4167269| 0.3402020| 0.4932519|
|0-6 months  |MAL-ED         |BANGLADESH                   |[52-58) kg         |NA             | 0.2620798| 0.1276730| 0.3964865|
|0-6 months  |MAL-ED         |BRAZIL                       |>=58 kg            |NA             | 0.2167832| 0.1490941| 0.2844723|
|0-6 months  |MAL-ED         |BRAZIL                       |<52 kg             |NA             | 0.1666667| 0.0537022| 0.2796312|
|0-6 months  |MAL-ED         |BRAZIL                       |[52-58) kg         |NA             | 0.2222222| 0.0861081| 0.3583363|
|0-6 months  |MAL-ED         |INDIA                        |>=58 kg            |NA             | 0.2473598| 0.1122245| 0.3824952|
|0-6 months  |MAL-ED         |INDIA                        |<52 kg             |NA             | 0.3667493| 0.2896744| 0.4438242|
|0-6 months  |MAL-ED         |INDIA                        |[52-58) kg         |NA             | 0.3825222| 0.2449271| 0.5201174|
|0-6 months  |MAL-ED         |NEPAL                        |>=58 kg            |NA             | 0.1750000| 0.0915621| 0.2584379|
|0-6 months  |MAL-ED         |NEPAL                        |<52 kg             |NA             | 0.2763158| 0.1755686| 0.3770630|
|0-6 months  |MAL-ED         |NEPAL                        |[52-58) kg         |NA             | 0.0853659| 0.0247591| 0.1459726|
|0-6 months  |MAL-ED         |PERU                         |>=58 kg            |NA             | 0.3593802| 0.2672599| 0.4515005|
|0-6 months  |MAL-ED         |PERU                         |<52 kg             |NA             | 0.4675936| 0.3755029| 0.5596844|
|0-6 months  |MAL-ED         |PERU                         |[52-58) kg         |NA             | 0.4993218| 0.3639008| 0.6347429|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |>=58 kg            |NA             | 0.3472469| 0.2800540| 0.4144398|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |<52 kg             |NA             | 0.5571289| 0.3713095| 0.7429483|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |[52-58) kg         |NA             | 0.4188397| 0.2689613| 0.5687180|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             | 0.2997126| 0.2073109| 0.3921143|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<52 kg             |NA             | 0.5179563| 0.4181484| 0.6177641|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[52-58) kg         |NA             | 0.4307499| 0.3042286| 0.5572711|
|0-6 months  |NIH-Birth      |BANGLADESH                   |>=58 kg            |NA             | 0.2458339| 0.1492784| 0.3423894|
|0-6 months  |NIH-Birth      |BANGLADESH                   |<52 kg             |NA             | 0.3886380| 0.3438159| 0.4334601|
|0-6 months  |NIH-Birth      |BANGLADESH                   |[52-58) kg         |NA             | 0.2499356| 0.1607593| 0.3391120|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |>=58 kg            |NA             | 0.2135379| 0.1526238| 0.2744519|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |<52 kg             |NA             | 0.3397700| 0.2937942| 0.3857457|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |[52-58) kg         |NA             | 0.3113559| 0.2329770| 0.3897348|
|0-6 months  |PROBIT         |BELARUS                      |>=58 kg            |NA             | 0.0614205| 0.0507835| 0.0720576|
|0-6 months  |PROBIT         |BELARUS                      |<52 kg             |NA             | 0.0982916| 0.0775539| 0.1190292|
|0-6 months  |PROBIT         |BELARUS                      |[52-58) kg         |NA             | 0.0708398| 0.0539416| 0.0877381|
|0-6 months  |PROVIDE        |BANGLADESH                   |>=58 kg            |NA             | 0.1025384| 0.0465620| 0.1585149|
|0-6 months  |PROVIDE        |BANGLADESH                   |<52 kg             |NA             | 0.2871554| 0.2444864| 0.3298244|
|0-6 months  |PROVIDE        |BANGLADESH                   |[52-58) kg         |NA             | 0.2558205| 0.1751189| 0.3365221|
|0-6 months  |SAS-CompFeed   |INDIA                        |>=58 kg            |NA             | 0.2328352| 0.1748618| 0.2908086|
|0-6 months  |SAS-CompFeed   |INDIA                        |<52 kg             |NA             | 0.4619500| 0.4240349| 0.4998651|
|0-6 months  |SAS-CompFeed   |INDIA                        |[52-58) kg         |NA             | 0.3214518| 0.2898930| 0.3530106|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             | 0.1607063| 0.1418670| 0.1795456|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<52 kg             |NA             | 0.2867501| 0.2412526| 0.3322475|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[52-58) kg         |NA             | 0.2265907| 0.1876914| 0.2654900|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |>=58 kg            |NA             | 0.2305838| 0.2196858| 0.2414819|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |<52 kg             |NA             | 0.3758194| 0.3559350| 0.3957039|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |[52-58) kg         |NA             | 0.3149897| 0.2977981| 0.3321813|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg            |NA             | 0.2498209| 0.0462717| 0.4533701|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |<52 kg             |NA             | 0.4514283| 0.3926646| 0.5101920|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |[52-58) kg         |NA             | 0.3411021| 0.2979993| 0.3842049|
|6-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg            |NA             | 0.1929706| 0.1518341| 0.2341071|
|6-24 months |JiVitA-3       |BANGLADESH                   |<52 kg             |NA             | 0.2198040| 0.2098247| 0.2297833|
|6-24 months |JiVitA-3       |BANGLADESH                   |[52-58) kg         |NA             | 0.1827957| 0.1528698| 0.2127217|
|6-24 months |LCNI-5         |MALAWI                       |>=58 kg            |NA             | 0.4710526| 0.3733101| 0.5687952|
|6-24 months |LCNI-5         |MALAWI                       |<52 kg             |NA             | 0.6771622| 0.6325487| 0.7217758|
|6-24 months |LCNI-5         |MALAWI                       |[52-58) kg         |NA             | 0.4954506| 0.4250600| 0.5658412|
|6-24 months |MAL-ED         |BANGLADESH                   |>=58 kg            |NA             | 0.3003008| 0.1445160| 0.4560855|
|6-24 months |MAL-ED         |BANGLADESH                   |<52 kg             |NA             | 0.4966773| 0.3908693| 0.6024853|
|6-24 months |MAL-ED         |BANGLADESH                   |[52-58) kg         |NA             | 0.3456810| 0.1613899| 0.5299721|
|6-24 months |MAL-ED         |INDIA                        |>=58 kg            |NA             | 0.3291880| 0.1486892| 0.5096868|
|6-24 months |MAL-ED         |INDIA                        |<52 kg             |NA             | 0.4937867| 0.3898990| 0.5976743|
|6-24 months |MAL-ED         |INDIA                        |[52-58) kg         |NA             | 0.2948555| 0.1262886| 0.4634223|
|6-24 months |MAL-ED         |NEPAL                        |>=58 kg            |NA             | 0.1212121| 0.0422692| 0.2001551|
|6-24 months |MAL-ED         |NEPAL                        |<52 kg             |NA             | 0.3333333| 0.2072763| 0.4593904|
|6-24 months |MAL-ED         |NEPAL                        |[52-58) kg         |NA             | 0.2027027| 0.1108706| 0.2945348|
|6-24 months |MAL-ED         |PERU                         |>=58 kg            |NA             | 0.3592828| 0.2357148| 0.4828509|
|6-24 months |MAL-ED         |PERU                         |<52 kg             |NA             | 0.3446713| 0.2151243| 0.4742183|
|6-24 months |MAL-ED         |PERU                         |[52-58) kg         |NA             | 0.4519165| 0.2767242| 0.6271087|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |>=58 kg            |NA             | 0.3445378| 0.2588789| 0.4301967|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |<52 kg             |NA             | 0.5384615| 0.2665903| 0.8103327|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |[52-58) kg         |NA             | 0.4347826| 0.2315312| 0.6380340|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             | 0.7611940| 0.6587482| 0.8636398|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<52 kg             |NA             | 0.8181818| 0.7038207| 0.9325430|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[52-58) kg         |NA             | 0.7878788| 0.6479116| 0.9278459|
|6-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg            |NA             | 0.3654693| 0.2281252| 0.5028134|
|6-24 months |NIH-Birth      |BANGLADESH                   |<52 kg             |NA             | 0.6272665| 0.5639467| 0.6905863|
|6-24 months |NIH-Birth      |BANGLADESH                   |[52-58) kg         |NA             | 0.5685237| 0.4422864| 0.6947610|
|6-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg            |NA             | 0.1652911| 0.1032773| 0.2273050|
|6-24 months |NIH-Crypto     |BANGLADESH                   |<52 kg             |NA             | 0.3289538| 0.2701136| 0.3877939|
|6-24 months |NIH-Crypto     |BANGLADESH                   |[52-58) kg         |NA             | 0.2418854| 0.1532922| 0.3304785|
|6-24 months |PROBIT         |BELARUS                      |>=58 kg            |NA             | 0.0633635| 0.0500951| 0.0766318|
|6-24 months |PROBIT         |BELARUS                      |<52 kg             |NA             | 0.0995266| 0.0797679| 0.1192854|
|6-24 months |PROBIT         |BELARUS                      |[52-58) kg         |NA             | 0.0748939| 0.0597264| 0.0900613|
|6-24 months |PROVIDE        |BANGLADESH                   |>=58 kg            |NA             | 0.1761958| 0.0966451| 0.2557465|
|6-24 months |PROVIDE        |BANGLADESH                   |<52 kg             |NA             | 0.3917234| 0.3333895| 0.4500574|
|6-24 months |PROVIDE        |BANGLADESH                   |[52-58) kg         |NA             | 0.1728711| 0.0774870| 0.2682551|
|6-24 months |SAS-CompFeed   |INDIA                        |>=58 kg            |NA             | 0.2101520| 0.1138746| 0.3064293|
|6-24 months |SAS-CompFeed   |INDIA                        |<52 kg             |NA             | 0.5687191| 0.5213040| 0.6161342|
|6-24 months |SAS-CompFeed   |INDIA                        |[52-58) kg         |NA             | 0.4087702| 0.3078915| 0.5096488|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             | 0.2036384| 0.1791931| 0.2280836|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<52 kg             |NA             | 0.3224747| 0.2588971| 0.3860522|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[52-58) kg         |NA             | 0.2471881| 0.1971904| 0.2971857|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg            |NA             | 0.2219215| 0.2091257| 0.2347174|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |<52 kg             |NA             | 0.3671479| 0.3412455| 0.3930502|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |[52-58) kg         |NA             | 0.2904311| 0.2692856| 0.3115765|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.3566542| 0.3069876| 0.4063208|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.4953670| 0.4875503| 0.5031837|
|0-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.6360382| 0.6034429| 0.6686335|
|0-24 months |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.6141732| 0.5541901| 0.6741564|
|0-24 months |MAL-ED         |BRAZIL                       |NA                 |NA             | 0.2579186| 0.2001084| 0.3157287|
|0-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.6157025| 0.5542897| 0.6771153|
|0-24 months |MAL-ED         |NEPAL                        |NA                 |NA             | 0.3487395| 0.2880656| 0.4094134|
|0-24 months |MAL-ED         |PERU                         |NA                 |NA             | 0.6413793| 0.5860858| 0.6966728|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.6000000| 0.5414566| 0.6585434|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.8632812| 0.8211147| 0.9054478|
|0-24 months |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.6645469| 0.6276196| 0.7014742|
|0-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.4794702| 0.4438115| 0.5151289|
|0-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.1289573| 0.1128390| 0.1450756|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.4529148| 0.4151667| 0.4906629|
|0-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.6910891| 0.6503148| 0.7318634|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.3465136| 0.3272783| 0.3657490|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.4563549| 0.4471315| 0.4655783|
|0-6 months  |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.4129746| 0.4055418| 0.4204074|
|0-6 months  |LCNI-5         |MALAWI                       |NA                 |NA             | 0.3579336| 0.3007518| 0.4151153|
|0-6 months  |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.3503937| 0.2916054| 0.4091820|
|0-6 months  |MAL-ED         |BRAZIL                       |NA                 |NA             | 0.2081448| 0.1544982| 0.2617914|
|0-6 months  |MAL-ED         |INDIA                        |NA                 |NA             | 0.3471074| 0.2870050| 0.4072099|
|0-6 months  |MAL-ED         |NEPAL                        |NA                 |NA             | 0.1764706| 0.1279362| 0.2250050|
|0-6 months  |MAL-ED         |PERU                         |NA                 |NA             | 0.4413793| 0.3841309| 0.4986278|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.3851852| 0.3270313| 0.4433391|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.4218750| 0.3612599| 0.4824901|
|0-6 months  |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.3497615| 0.3124631| 0.3870600|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.3033113| 0.2704998| 0.3361228|
|0-6 months  |PROBIT         |BELARUS                      |NA                 |NA             | 0.0659309| 0.0552270| 0.0766347|
|0-6 months  |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.2481315| 0.2153770| 0.2808861|
|0-6 months  |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.4226190| 0.3935114| 0.4517267|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1943027| 0.1783091| 0.2102964|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.2824844| 0.2741425| 0.2908263|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.3566542| 0.3069876| 0.4063208|
|6-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.2162884| 0.2069101| 0.2256667|
|6-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.5989011| 0.5632737| 0.6345285|
|6-24 months |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.4240506| 0.3467471| 0.5013542|
|6-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.4220779| 0.3438191| 0.5003367|
|6-24 months |MAL-ED         |NEPAL                        |NA                 |NA             | 0.2113402| 0.1537425| 0.2689379|
|6-24 months |MAL-ED         |PERU                         |NA                 |NA             | 0.3918919| 0.3129763| 0.4708075|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.3741935| 0.2977649| 0.4506221|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.7847222| 0.7173567| 0.8520877|
|6-24 months |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.5739130| 0.5216565| 0.6261696|
|6-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.2628458| 0.2244546| 0.3012371|
|6-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.0675171| 0.0551317| 0.0799025|
|6-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.3004386| 0.2583143| 0.3425629|
|6-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.5030826| 0.4587775| 0.5473878|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.2277354| 0.2069978| 0.2484730|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.2645703| 0.2545045| 0.2746362|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<52 kg             |>=58 kg        | 1.8112320| 0.8364084| 3.922200|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[52-58) kg         |>=58 kg        | 1.3718300| 0.6327212| 2.974324|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |<52 kg             |>=58 kg        | 1.1262596| 1.0410056| 1.218496|
|0-24 months |JiVitA-3       |BANGLADESH                   |[52-58) kg         |>=58 kg        | 0.9871203| 0.8989258| 1.083968|
|0-24 months |LCNI-5         |MALAWI                       |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |LCNI-5         |MALAWI                       |<52 kg             |>=58 kg        | 1.3697784| 1.1374710| 1.649530|
|0-24 months |LCNI-5         |MALAWI                       |[52-58) kg         |>=58 kg        | 0.9943090| 0.7977936| 1.239231|
|0-24 months |MAL-ED         |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |BANGLADESH                   |<52 kg             |>=58 kg        | 1.5759019| 1.0740610| 2.312222|
|0-24 months |MAL-ED         |BANGLADESH                   |[52-58) kg         |>=58 kg        | 1.1371741| 0.7092165| 1.823371|
|0-24 months |MAL-ED         |BRAZIL                       |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |BRAZIL                       |<52 kg             |>=58 kg        | 1.1042471| 0.6344996| 1.921769|
|0-24 months |MAL-ED         |BRAZIL                       |[52-58) kg         |>=58 kg        | 0.8588589| 0.4383144| 1.682898|
|0-24 months |MAL-ED         |INDIA                        |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |INDIA                        |<52 kg             |>=58 kg        | 1.4382037| 1.0107875| 2.046355|
|0-24 months |MAL-ED         |INDIA                        |[52-58) kg         |>=58 kg        | 1.1854903| 0.7764541| 1.810007|
|0-24 months |MAL-ED         |NEPAL                        |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |NEPAL                        |<52 kg             |>=58 kg        | 1.9011568| 1.2348711| 2.926943|
|0-24 months |MAL-ED         |NEPAL                        |[52-58) kg         |>=58 kg        | 0.9851435| 0.5853532| 1.657986|
|0-24 months |MAL-ED         |PERU                         |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |PERU                         |<52 kg             |>=58 kg        | 1.1051199| 0.8934626| 1.366918|
|0-24 months |MAL-ED         |PERU                         |[52-58) kg         |>=58 kg        | 1.2221101| 0.9722313| 1.536212|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<52 kg             |>=58 kg        | 1.4370370| 1.1544123| 1.788854|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[52-58) kg         |>=58 kg        | 1.1714976| 0.9159929| 1.498272|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<52 kg             |>=58 kg        | 1.0754458| 0.9590191| 1.206007|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[52-58) kg         |>=58 kg        | 1.0663319| 0.9357728| 1.215107|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Birth      |BANGLADESH                   |<52 kg             |>=58 kg        | 1.4307023| 1.1397624| 1.795908|
|0-24 months |NIH-Birth      |BANGLADESH                   |[52-58) kg         |>=58 kg        | 1.2856094| 0.9803683| 1.685888|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<52 kg             |>=58 kg        | 1.4793185| 1.1913779| 1.836850|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[52-58) kg         |>=58 kg        | 1.2608940| 0.9634829| 1.650111|
|0-24 months |PROBIT         |BELARUS                      |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROBIT         |BELARUS                      |<52 kg             |>=58 kg        | 1.5254285| 1.3157947| 1.768461|
|0-24 months |PROBIT         |BELARUS                      |[52-58) kg         |>=58 kg        | 1.1636654| 1.0317014| 1.312509|
|0-24 months |PROVIDE        |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROVIDE        |BANGLADESH                   |<52 kg             |>=58 kg        | 2.1600324| 1.5533243| 3.003713|
|0-24 months |PROVIDE        |BANGLADESH                   |[52-58) kg         |>=58 kg        | 1.4800896| 0.9852278| 2.223511|
|0-24 months |SAS-CompFeed   |INDIA                        |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-CompFeed   |INDIA                        |<52 kg             |>=58 kg        | 1.6282580| 1.3995398| 1.894354|
|0-24 months |SAS-CompFeed   |INDIA                        |[52-58) kg         |>=58 kg        | 1.2990369| 1.0079200| 1.674237|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<52 kg             |>=58 kg        | 1.5564858| 1.3641110| 1.775990|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[52-58) kg         |>=58 kg        | 1.2731073| 1.1065960| 1.464674|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<52 kg             |>=58 kg        | 1.5080041| 1.4385274| 1.580836|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[52-58) kg         |>=58 kg        | 1.2788792| 1.2172726| 1.343604|
|0-6 months  |JiVitA-3       |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |JiVitA-3       |BANGLADESH                   |<52 kg             |>=58 kg        | 1.1679149| 1.0634501| 1.282641|
|0-6 months  |JiVitA-3       |BANGLADESH                   |[52-58) kg         |>=58 kg        | 1.0025609| 0.8985238| 1.118644|
|0-6 months  |LCNI-5         |MALAWI                       |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |LCNI-5         |MALAWI                       |<52 kg             |>=58 kg        | 1.5808383| 0.8808382| 2.837127|
|0-6 months  |LCNI-5         |MALAWI                       |[52-58) kg         |>=58 kg        | 0.8262911| 0.4079244| 1.673734|
|0-6 months  |MAL-ED         |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |MAL-ED         |BANGLADESH                   |<52 kg             |>=58 kg        | 2.0663802| 1.1367520| 3.756252|
|0-6 months  |MAL-ED         |BANGLADESH                   |[52-58) kg         |>=58 kg        | 1.2995474| 0.6035647| 2.798082|
|0-6 months  |MAL-ED         |BRAZIL                       |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |MAL-ED         |BRAZIL                       |<52 kg             |>=58 kg        | 0.7688172| 0.3645275| 1.621496|
|0-6 months  |MAL-ED         |BRAZIL                       |[52-58) kg         |>=58 kg        | 1.0250896| 0.5154428| 2.038652|
|0-6 months  |MAL-ED         |INDIA                        |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |MAL-ED         |INDIA                        |<52 kg             |>=58 kg        | 1.4826550| 0.8242617| 2.666951|
|0-6 months  |MAL-ED         |INDIA                        |[52-58) kg         |>=58 kg        | 1.5464202| 0.8044800| 2.972623|
|0-6 months  |MAL-ED         |NEPAL                        |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |MAL-ED         |NEPAL                        |<52 kg             |>=58 kg        | 1.5789474| 0.8663523| 2.877669|
|0-6 months  |MAL-ED         |NEPAL                        |[52-58) kg         |>=58 kg        | 0.4878049| 0.2074125| 1.147248|
|0-6 months  |MAL-ED         |PERU                         |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |MAL-ED         |PERU                         |<52 kg             |>=58 kg        | 1.3011113| 0.9415853| 1.797915|
|0-6 months  |MAL-ED         |PERU                         |[52-58) kg         |>=58 kg        | 1.3893971| 0.9561487| 2.018958|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |<52 kg             |>=58 kg        | 1.6044172| 1.0900436| 2.361515|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |[52-58) kg         |>=58 kg        | 1.2061724| 0.8028530| 1.812102|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<52 kg             |>=58 kg        | 1.7281766| 1.2027172| 2.483206|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[52-58) kg         |>=58 kg        | 1.4372098| 0.9382643| 2.201482|
|0-6 months  |NIH-Birth      |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |NIH-Birth      |BANGLADESH                   |<52 kg             |>=58 kg        | 1.5808968| 1.0495255| 2.381299|
|0-6 months  |NIH-Birth      |BANGLADESH                   |[52-58) kg         |>=58 kg        | 1.0166850| 0.5982269| 1.727853|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |<52 kg             |>=58 kg        | 1.5911462| 1.1602305| 2.182107|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |[52-58) kg         |>=58 kg        | 1.4580831| 0.9960563| 2.134424|
|0-6 months  |PROBIT         |BELARUS                      |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |PROBIT         |BELARUS                      |<52 kg             |>=58 kg        | 1.6003044| 1.3184796| 1.942369|
|0-6 months  |PROBIT         |BELARUS                      |[52-58) kg         |>=58 kg        | 1.1533574| 0.9527654| 1.396181|
|0-6 months  |PROVIDE        |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |PROVIDE        |BANGLADESH                   |<52 kg             |>=58 kg        | 2.8004666| 1.5914827| 4.927866|
|0-6 months  |PROVIDE        |BANGLADESH                   |[52-58) kg         |>=58 kg        | 2.4948748| 1.3289019| 4.683867|
|0-6 months  |SAS-CompFeed   |INDIA                        |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |SAS-CompFeed   |INDIA                        |<52 kg             |>=58 kg        | 1.9840214| 1.4699877| 2.677805|
|0-6 months  |SAS-CompFeed   |INDIA                        |[52-58) kg         |>=58 kg        | 1.3805980| 1.0366475| 1.838668|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<52 kg             |>=58 kg        | 1.7843114| 1.4644753| 2.173999|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[52-58) kg         |>=58 kg        | 1.4099676| 1.1450803| 1.736130|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |<52 kg             |>=58 kg        | 1.6298604| 1.5183280| 1.749586|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |[52-58) kg         |>=58 kg        | 1.3660530| 1.2710017| 1.468213|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |<52 kg             |>=58 kg        | 1.8070080| 0.7900652| 4.132922|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |[52-58) kg         |>=58 kg        | 1.3653867| 0.5971660| 3.121880|
|6-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|6-24 months |JiVitA-3       |BANGLADESH                   |<52 kg             |>=58 kg        | 1.1390541| 0.9165150| 1.415628|
|6-24 months |JiVitA-3       |BANGLADESH                   |[52-58) kg         |>=58 kg        | 0.9472723| 0.7256692| 1.236548|
|6-24 months |LCNI-5         |MALAWI                       |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|6-24 months |LCNI-5         |MALAWI                       |<52 kg             |>=58 kg        | 1.4375511| 1.1562081| 1.787354|
|6-24 months |LCNI-5         |MALAWI                       |[52-58) kg         |>=58 kg        | 1.0517945| 0.8178616| 1.352639|
|6-24 months |MAL-ED         |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|6-24 months |MAL-ED         |BANGLADESH                   |<52 kg             |>=58 kg        | 1.6539328| 0.9457502| 2.892406|
|6-24 months |MAL-ED         |BANGLADESH                   |[52-58) kg         |>=58 kg        | 1.1511160| 0.5488664| 2.414191|
|6-24 months |MAL-ED         |INDIA                        |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|6-24 months |MAL-ED         |INDIA                        |<52 kg             |>=58 kg        | 1.5000142| 0.8300497| 2.710732|
|6-24 months |MAL-ED         |INDIA                        |[52-58) kg         |>=58 kg        | 0.8957054| 0.4052258| 1.979855|
|6-24 months |MAL-ED         |NEPAL                        |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|6-24 months |MAL-ED         |NEPAL                        |<52 kg             |>=58 kg        | 2.7500000| 1.2949713| 5.839898|
|6-24 months |MAL-ED         |NEPAL                        |[52-58) kg         |>=58 kg        | 1.6722973| 0.7564231| 3.697108|
|6-24 months |MAL-ED         |PERU                         |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|6-24 months |MAL-ED         |PERU                         |<52 kg             |>=58 kg        | 0.9593314| 0.5738425| 1.603779|
|6-24 months |MAL-ED         |PERU                         |[52-58) kg         |>=58 kg        | 1.2578293| 0.7480645| 2.114971|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |<52 kg             |>=58 kg        | 1.5628518| 0.8902225| 2.743702|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |[52-58) kg         |>=58 kg        | 1.2619300| 0.7431657| 2.142816|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<52 kg             |>=58 kg        | 1.0748663| 0.8852895| 1.305039|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[52-58) kg         |>=58 kg        | 1.0350564| 0.8282680| 1.293473|
|6-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|6-24 months |NIH-Birth      |BANGLADESH                   |<52 kg             |>=58 kg        | 1.7163317| 1.1630190| 2.532886|
|6-24 months |NIH-Birth      |BANGLADESH                   |[52-58) kg         |>=58 kg        | 1.5555992| 1.0062439| 2.404873|
|6-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|6-24 months |NIH-Crypto     |BANGLADESH                   |<52 kg             |>=58 kg        | 1.9901475| 1.3147277| 3.012553|
|6-24 months |NIH-Crypto     |BANGLADESH                   |[52-58) kg         |>=58 kg        | 1.4633898| 0.8676326| 2.468222|
|6-24 months |PROBIT         |BELARUS                      |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|6-24 months |PROBIT         |BELARUS                      |<52 kg             |>=58 kg        | 1.5707260| 1.2609757| 1.956565|
|6-24 months |PROBIT         |BELARUS                      |[52-58) kg         |>=58 kg        | 1.1819725| 0.9944051| 1.404919|
|6-24 months |PROVIDE        |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|6-24 months |PROVIDE        |BANGLADESH                   |<52 kg             |>=58 kg        | 2.2232277| 1.3825666| 3.575048|
|6-24 months |PROVIDE        |BANGLADESH                   |[52-58) kg         |>=58 kg        | 0.9811303| 0.4804743| 2.003472|
|6-24 months |SAS-CompFeed   |INDIA                        |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|6-24 months |SAS-CompFeed   |INDIA                        |<52 kg             |>=58 kg        | 2.7062280| 1.7966862| 4.076210|
|6-24 months |SAS-CompFeed   |INDIA                        |[52-58) kg         |>=58 kg        | 1.9451171| 1.1764403| 3.216041|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<52 kg             |>=58 kg        | 1.5835655| 1.2571629| 1.994713|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[52-58) kg         |>=58 kg        | 1.2138580| 0.9594059| 1.535796|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |<52 kg             |>=58 kg        | 1.6544039| 1.5104837| 1.812037|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |[52-58) kg         |>=58 kg        | 1.3087105| 1.1927345| 1.435963|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg            |NA             |  0.1073013| -0.0433367| 0.2579392|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg            |NA             |  0.0503165|  0.0161547| 0.0844783|
|0-24 months |LCNI-5         |MALAWI                       |>=58 kg            |NA             |  0.1151070|  0.0295957| 0.2006184|
|0-24 months |MAL-ED         |BANGLADESH                   |>=58 kg            |NA             |  0.1809550|  0.0358968| 0.3260131|
|0-24 months |MAL-ED         |BRAZIL                       |>=58 kg            |NA             | -0.0008227| -0.0434813| 0.0418359|
|0-24 months |MAL-ED         |INDIA                        |>=58 kg            |NA             |  0.1518565|  0.0113812| 0.2923318|
|0-24 months |MAL-ED         |NEPAL                        |>=58 kg            |NA             |  0.0762781| -0.0094581| 0.1620143|
|0-24 months |MAL-ED         |PERU                         |>=58 kg            |NA             |  0.0563323| -0.0200261| 0.1326908|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=58 kg            |NA             |  0.0432990|  0.0074698| 0.0791281|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             |  0.0367506| -0.0189308| 0.0924320|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg            |NA             |  0.1729046|  0.0729371| 0.2728720|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg            |NA             |  0.1172232|  0.0536121| 0.1808343|
|0-24 months |PROBIT         |BELARUS                      |>=58 kg            |NA             |  0.0080318|  0.0045919| 0.0114716|
|0-24 months |PROVIDE        |BANGLADESH                   |>=58 kg            |NA             |  0.2055904|  0.1316372| 0.2795436|
|0-24 months |SAS-CompFeed   |INDIA                        |>=58 kg            |NA             |  0.2391644|  0.1693339| 0.3089950|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             |  0.0438973|  0.0285846| 0.0592101|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg            |NA             |  0.0692096|  0.0602106| 0.0782086|
|0-6 months  |JiVitA-3       |BANGLADESH                   |>=58 kg            |NA             |  0.0545337|  0.0217949| 0.0872725|
|0-6 months  |LCNI-5         |MALAWI                       |>=58 kg            |NA             |  0.0852063| -0.0590172| 0.2294298|
|0-6 months  |MAL-ED         |BANGLADESH                   |>=58 kg            |NA             |  0.1487237|  0.0409271| 0.2565202|
|0-6 months  |MAL-ED         |BRAZIL                       |>=58 kg            |NA             | -0.0086384| -0.0477583| 0.0304815|
|0-6 months  |MAL-ED         |INDIA                        |>=58 kg            |NA             |  0.0997476| -0.0263695| 0.2258647|
|0-6 months  |MAL-ED         |NEPAL                        |>=58 kg            |NA             |  0.0014706| -0.0666265| 0.0695677|
|0-6 months  |MAL-ED         |PERU                         |>=58 kg            |NA             |  0.0819991|  0.0054247| 0.1585736|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |>=58 kg            |NA             |  0.0379383|  0.0000529| 0.0758236|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             |  0.1221624|  0.0463127| 0.1980121|
|0-6 months  |NIH-Birth      |BANGLADESH                   |>=58 kg            |NA             |  0.1039276|  0.0124000| 0.1954552|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |>=58 kg            |NA             |  0.0897734|  0.0342768| 0.1452700|
|0-6 months  |PROBIT         |BELARUS                      |>=58 kg            |NA             |  0.0045103|  0.0017686| 0.0072521|
|0-6 months  |PROVIDE        |BANGLADESH                   |>=58 kg            |NA             |  0.1455931|  0.0899806| 0.2012056|
|0-6 months  |SAS-CompFeed   |INDIA                        |>=58 kg            |NA             |  0.1897839|  0.1155370| 0.2640307|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             |  0.0335964|  0.0205177| 0.0466751|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |>=58 kg            |NA             |  0.0519005|  0.0437269| 0.0600742|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg            |NA             |  0.1068333| -0.0583896| 0.2720563|
|6-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg            |NA             |  0.0233178| -0.0174920| 0.0641275|
|6-24 months |LCNI-5         |MALAWI                       |>=58 kg            |NA             |  0.1278485|  0.0376138| 0.2180831|
|6-24 months |MAL-ED         |BANGLADESH                   |>=58 kg            |NA             |  0.1237499| -0.0180040| 0.2655037|
|6-24 months |MAL-ED         |INDIA                        |>=58 kg            |NA             |  0.0928899| -0.0714234| 0.2572032|
|6-24 months |MAL-ED         |NEPAL                        |>=58 kg            |NA             |  0.0901281|  0.0172641| 0.1629921|
|6-24 months |MAL-ED         |PERU                         |>=58 kg            |NA             |  0.0326091| -0.0639600| 0.1291781|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |>=58 kg            |NA             |  0.0296557| -0.0140735| 0.0733850|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             |  0.0235282| -0.0490455| 0.0961019|
|6-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg            |NA             |  0.2084438|  0.0806767| 0.3362108|
|6-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg            |NA             |  0.0975547|  0.0417528| 0.1533566|
|6-24 months |PROBIT         |BELARUS                      |>=58 kg            |NA             |  0.0041536|  0.0014184| 0.0068889|
|6-24 months |PROVIDE        |BANGLADESH                   |>=58 kg            |NA             |  0.1242428|  0.0491142| 0.1993713|
|6-24 months |SAS-CompFeed   |INDIA                        |>=58 kg            |NA             |  0.2929306|  0.2195259| 0.3663354|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             |  0.0240970|  0.0087066| 0.0394874|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg            |NA             |  0.0426488|  0.0334259| 0.0518717|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg            |NA             |  0.3008551| -0.3363746| 0.6342316|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg            |NA             |  0.1015742|  0.0299618| 0.1678998|
|0-24 months |LCNI-5         |MALAWI                       |>=58 kg            |NA             |  0.1809750|  0.0341687| 0.3054668|
|0-24 months |MAL-ED         |BANGLADESH                   |>=58 kg            |NA             |  0.2946318|  0.0103202| 0.4972674|
|0-24 months |MAL-ED         |BRAZIL                       |>=58 kg            |NA             | -0.0031898| -0.1830006| 0.1492905|
|0-24 months |MAL-ED         |INDIA                        |>=58 kg            |NA             |  0.2466395| -0.0222338| 0.4447923|
|0-24 months |MAL-ED         |NEPAL                        |>=58 kg            |NA             |  0.2187253| -0.0708732| 0.4300070|
|0-24 months |MAL-ED         |PERU                         |>=58 kg            |NA             |  0.0878300| -0.0397530| 0.1997579|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=58 kg            |NA             |  0.0721649|  0.0097011| 0.1306889|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             |  0.0425709| -0.0245477| 0.1052924|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg            |NA             |  0.2601842|  0.0918907| 0.3972890|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg            |NA             |  0.2444848|  0.0989255| 0.3665306|
|0-24 months |PROBIT         |BELARUS                      |>=58 kg            |NA             |  0.0622823|  0.0331309| 0.0905547|
|0-24 months |PROVIDE        |BANGLADESH                   |>=58 kg            |NA             |  0.4539274|  0.2643069| 0.5946743|
|0-24 months |SAS-CompFeed   |INDIA                        |>=58 kg            |NA             |  0.3460689|  0.2329430| 0.4425109|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             |  0.1266829|  0.0814008| 0.1697328|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg            |NA             |  0.1516575|  0.1316073| 0.1712447|
|0-6 months  |JiVitA-3       |BANGLADESH                   |>=58 kg            |NA             |  0.1320511|  0.0491361| 0.2077359|
|0-6 months  |LCNI-5         |MALAWI                       |>=58 kg            |NA             |  0.2380506| -0.2925147| 0.5508238|
|0-6 months  |MAL-ED         |BANGLADESH                   |>=58 kg            |NA             |  0.4244473|  0.0224189| 0.6611423|
|0-6 months  |MAL-ED         |BRAZIL                       |>=58 kg            |NA             | -0.0415020| -0.2473085| 0.1303464|
|0-6 months  |MAL-ED         |INDIA                        |>=58 kg            |NA             |  0.2873681| -0.1853719| 0.5715739|
|0-6 months  |MAL-ED         |NEPAL                        |>=58 kg            |NA             |  0.0083333| -0.4633876| 0.3279957|
|0-6 months  |MAL-ED         |PERU                         |>=58 kg            |NA             |  0.1857792| -0.0074219| 0.3419287|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |>=58 kg            |NA             |  0.0984936| -0.0055445| 0.1917675|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             |  0.2895702|  0.0839648| 0.4490271|
|0-6 months  |NIH-Birth      |BANGLADESH                   |>=58 kg            |NA             |  0.2971385| -0.0196987| 0.5155292|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |>=58 kg            |NA             |  0.2959778|  0.0884865| 0.4562371|
|0-6 months  |PROBIT         |BELARUS                      |>=58 kg            |NA             |  0.0684099|  0.0261016| 0.1088803|
|0-6 months  |PROVIDE        |BANGLADESH                   |>=58 kg            |NA             |  0.5867578|  0.3040626| 0.7546200|
|0-6 months  |SAS-CompFeed   |INDIA                        |>=58 kg            |NA             |  0.4490660|  0.2689735| 0.5847917|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             |  0.1729076|  0.1038109| 0.2366770|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |>=58 kg            |NA             |  0.1837289|  0.1544755| 0.2119702|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg            |NA             |  0.2995432| -0.4175387| 0.6538791|
|6-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg            |NA             |  0.1078086| -0.1019186| 0.2776187|
|6-24 months |LCNI-5         |MALAWI                       |>=58 kg            |NA             |  0.2134717|  0.0464208| 0.3512582|
|6-24 months |MAL-ED         |BANGLADESH                   |>=58 kg            |NA             |  0.2918280| -0.1351619| 0.5582062|
|6-24 months |MAL-ED         |INDIA                        |>=58 kg            |NA             |  0.2200776| -0.2868791| 0.5273224|
|6-24 months |MAL-ED         |NEPAL                        |>=58 kg            |NA             |  0.4264597| -0.0212821| 0.6779064|
|6-24 months |MAL-ED         |PERU                         |>=58 kg            |NA             |  0.0832093| -0.1998387| 0.2994849|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |>=58 kg            |NA             |  0.0792524| -0.0454791| 0.1891027|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             |  0.0299828| -0.0672917| 0.1183916|
|6-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg            |NA             |  0.3631975|  0.0938957| 0.5524605|
|6-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg            |NA             |  0.3711480|  0.1220871| 0.5495511|
|6-24 months |PROBIT         |BELARUS                      |>=58 kg            |NA             |  0.0615199|  0.0160295| 0.1049072|
|6-24 months |PROVIDE        |BANGLADESH                   |>=58 kg            |NA             |  0.4135380|  0.1067267| 0.6149693|
|6-24 months |SAS-CompFeed   |INDIA                        |>=58 kg            |NA             |  0.5822715|  0.3749845| 0.7208115|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             |  0.1058114|  0.0360009| 0.1705665|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg            |NA             |  0.1612002|  0.1258238| 0.1951450|
