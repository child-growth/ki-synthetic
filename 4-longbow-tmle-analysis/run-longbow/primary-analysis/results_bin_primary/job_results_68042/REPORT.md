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

|agecat      |studyid        |country                      |mwtkg      | ever_wasted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:----------|-----------:|------:|-----:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg    |           0|    764|  3217|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg    |           1|    173|  3217|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<52 kg     |           0|    865|  3217|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<52 kg     |           1|    336|  3217|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[52-58) kg |           0|    855|  3217|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[52-58) kg |           1|    224|  3217|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg    |           0|    506| 26925|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg    |           1|    155| 26925|
|0-24 months |JiVitA-3       |BANGLADESH                   |<52 kg     |           0|  18166| 26925|
|0-24 months |JiVitA-3       |BANGLADESH                   |<52 kg     |           1|   6340| 26925|
|0-24 months |JiVitA-3       |BANGLADESH                   |[52-58) kg |           0|   1306| 26925|
|0-24 months |JiVitA-3       |BANGLADESH                   |[52-58) kg |           1|    452| 26925|
|0-24 months |LCNI-5         |MALAWI                       |>=58 kg    |           0|    109|   838|
|0-24 months |LCNI-5         |MALAWI                       |>=58 kg    |           1|      5|   838|
|0-24 months |LCNI-5         |MALAWI                       |<52 kg     |           0|    457|   838|
|0-24 months |LCNI-5         |MALAWI                       |<52 kg     |           1|     47|   838|
|0-24 months |LCNI-5         |MALAWI                       |[52-58) kg |           0|    206|   838|
|0-24 months |LCNI-5         |MALAWI                       |[52-58) kg |           1|     14|   838|
|0-24 months |MAL-ED         |BANGLADESH                   |>=58 kg    |           0|     39|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |>=58 kg    |           1|      9|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |<52 kg     |           0|     97|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |<52 kg     |           1|     65|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |[52-58) kg |           0|     33|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |[52-58) kg |           1|     11|   254|
|0-24 months |MAL-ED         |BRAZIL                       |>=58 kg    |           0|    132|   221|
|0-24 months |MAL-ED         |BRAZIL                       |>=58 kg    |           1|     11|   221|
|0-24 months |MAL-ED         |BRAZIL                       |<52 kg     |           0|     40|   221|
|0-24 months |MAL-ED         |BRAZIL                       |<52 kg     |           1|      2|   221|
|0-24 months |MAL-ED         |BRAZIL                       |[52-58) kg |           0|     30|   221|
|0-24 months |MAL-ED         |BRAZIL                       |[52-58) kg |           1|      6|   221|
|0-24 months |MAL-ED         |INDIA                        |>=58 kg    |           0|     31|   242|
|0-24 months |MAL-ED         |INDIA                        |>=58 kg    |           1|     11|   242|
|0-24 months |MAL-ED         |INDIA                        |<52 kg     |           0|     66|   242|
|0-24 months |MAL-ED         |INDIA                        |<52 kg     |           1|     84|   242|
|0-24 months |MAL-ED         |INDIA                        |[52-58) kg |           0|     28|   242|
|0-24 months |MAL-ED         |INDIA                        |[52-58) kg |           1|     22|   242|
|0-24 months |MAL-ED         |NEPAL                        |>=58 kg    |           0|     66|   238|
|0-24 months |MAL-ED         |NEPAL                        |>=58 kg    |           1|     14|   238|
|0-24 months |MAL-ED         |NEPAL                        |<52 kg     |           0|     37|   238|
|0-24 months |MAL-ED         |NEPAL                        |<52 kg     |           1|     39|   238|
|0-24 months |MAL-ED         |NEPAL                        |[52-58) kg |           0|     61|   238|
|0-24 months |MAL-ED         |NEPAL                        |[52-58) kg |           1|     21|   238|
|0-24 months |MAL-ED         |PERU                         |>=58 kg    |           0|     96|   290|
|0-24 months |MAL-ED         |PERU                         |>=58 kg    |           1|      8|   290|
|0-24 months |MAL-ED         |PERU                         |<52 kg     |           0|    101|   290|
|0-24 months |MAL-ED         |PERU                         |<52 kg     |           1|     14|   290|
|0-24 months |MAL-ED         |PERU                         |[52-58) kg |           0|     66|   290|
|0-24 months |MAL-ED         |PERU                         |[52-58) kg |           1|      5|   290|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=58 kg    |           0|    155|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=58 kg    |           1|     39|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<52 kg     |           0|     25|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<52 kg     |           1|      5|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[52-58) kg |           0|     33|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[52-58) kg |           1|     13|   270|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg    |           0|     90|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg    |           1|      8|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<52 kg     |           0|     77|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<52 kg     |           1|     22|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[52-58) kg |           0|     53|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[52-58) kg |           1|      6|   256|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg    |           0|     49|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg    |           1|     33|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |<52 kg     |           0|    224|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |<52 kg     |           1|    224|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |[52-58) kg |           0|     53|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |[52-58) kg |           1|     41|   624|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg    |           0|    149|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg    |           1|     43|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<52 kg     |           0|    240|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<52 kg     |           1|    166|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[52-58) kg |           0|    117|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[52-58) kg |           1|     40|   755|
|0-24 months |PROBIT         |BELARUS                      |>=58 kg    |           0|   7443| 13772|
|0-24 months |PROBIT         |BELARUS                      |>=58 kg    |           1|   2836| 13772|
|0-24 months |PROBIT         |BELARUS                      |<52 kg     |           0|    798| 13772|
|0-24 months |PROBIT         |BELARUS                      |<52 kg     |           1|    333| 13772|
|0-24 months |PROBIT         |BELARUS                      |[52-58) kg |           0|   1667| 13772|
|0-24 months |PROBIT         |BELARUS                      |[52-58) kg |           1|    695| 13772|
|0-24 months |PROVIDE        |BANGLADESH                   |>=58 kg    |           0|     92|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |>=58 kg    |           1|     28|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |<52 kg     |           0|    256|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |<52 kg     |           1|    176|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |[52-58) kg |           0|     80|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |[52-58) kg |           1|     37|   669|
|0-24 months |SAS-CompFeed   |INDIA                        |>=58 kg    |           0|     83|  1498|
|0-24 months |SAS-CompFeed   |INDIA                        |>=58 kg    |           1|     30|  1498|
|0-24 months |SAS-CompFeed   |INDIA                        |<52 kg     |           0|    628|  1498|
|0-24 months |SAS-CompFeed   |INDIA                        |<52 kg     |           1|    516|  1498|
|0-24 months |SAS-CompFeed   |INDIA                        |[52-58) kg |           0|    162|  1498|
|0-24 months |SAS-CompFeed   |INDIA                        |[52-58) kg |           1|     79|  1498|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg    |           0|   1147|  2352|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg    |           1|    329|  2352|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<52 kg     |           0|    292|  2352|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<52 kg     |           1|    101|  2352|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[52-58) kg |           0|    355|  2352|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[52-58) kg |           1|    128|  2352|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg    |           0|   4539| 11168|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg    |           1|   1283| 11168|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<52 kg     |           0|   1680| 11168|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<52 kg     |           1|    719| 11168|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[52-58) kg |           0|   2204| 11168|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[52-58) kg |           1|    743| 11168|
|0-6 months  |JiVitA-3       |BANGLADESH                   |>=58 kg    |           0|    551| 26828|
|0-6 months  |JiVitA-3       |BANGLADESH                   |>=58 kg    |           1|    108| 26828|
|0-6 months  |JiVitA-3       |BANGLADESH                   |<52 kg     |           0|  20107| 26828|
|0-6 months  |JiVitA-3       |BANGLADESH                   |<52 kg     |           1|   4310| 26828|
|0-6 months  |JiVitA-3       |BANGLADESH                   |[52-58) kg |           0|   1443| 26828|
|0-6 months  |JiVitA-3       |BANGLADESH                   |[52-58) kg |           1|    309| 26828|
|0-6 months  |LCNI-5         |MALAWI                       |>=58 kg    |           0|     33|   271|
|0-6 months  |LCNI-5         |MALAWI                       |>=58 kg    |           1|      0|   271|
|0-6 months  |LCNI-5         |MALAWI                       |<52 kg     |           0|    164|   271|
|0-6 months  |LCNI-5         |MALAWI                       |<52 kg     |           1|      3|   271|
|0-6 months  |LCNI-5         |MALAWI                       |[52-58) kg |           0|     70|   271|
|0-6 months  |LCNI-5         |MALAWI                       |[52-58) kg |           1|      1|   271|
|0-6 months  |MAL-ED         |BANGLADESH                   |>=58 kg    |           0|     41|   254|
|0-6 months  |MAL-ED         |BANGLADESH                   |>=58 kg    |           1|      7|   254|
|0-6 months  |MAL-ED         |BANGLADESH                   |<52 kg     |           0|    121|   254|
|0-6 months  |MAL-ED         |BANGLADESH                   |<52 kg     |           1|     41|   254|
|0-6 months  |MAL-ED         |BANGLADESH                   |[52-58) kg |           0|     34|   254|
|0-6 months  |MAL-ED         |BANGLADESH                   |[52-58) kg |           1|     10|   254|
|0-6 months  |MAL-ED         |BRAZIL                       |>=58 kg    |           0|    134|   221|
|0-6 months  |MAL-ED         |BRAZIL                       |>=58 kg    |           1|      9|   221|
|0-6 months  |MAL-ED         |BRAZIL                       |<52 kg     |           0|     40|   221|
|0-6 months  |MAL-ED         |BRAZIL                       |<52 kg     |           1|      2|   221|
|0-6 months  |MAL-ED         |BRAZIL                       |[52-58) kg |           0|     33|   221|
|0-6 months  |MAL-ED         |BRAZIL                       |[52-58) kg |           1|      3|   221|
|0-6 months  |MAL-ED         |INDIA                        |>=58 kg    |           0|     32|   242|
|0-6 months  |MAL-ED         |INDIA                        |>=58 kg    |           1|     10|   242|
|0-6 months  |MAL-ED         |INDIA                        |<52 kg     |           0|     97|   242|
|0-6 months  |MAL-ED         |INDIA                        |<52 kg     |           1|     53|   242|
|0-6 months  |MAL-ED         |INDIA                        |[52-58) kg |           0|     34|   242|
|0-6 months  |MAL-ED         |INDIA                        |[52-58) kg |           1|     16|   242|
|0-6 months  |MAL-ED         |NEPAL                        |>=58 kg    |           0|     72|   238|
|0-6 months  |MAL-ED         |NEPAL                        |>=58 kg    |           1|      8|   238|
|0-6 months  |MAL-ED         |NEPAL                        |<52 kg     |           0|     50|   238|
|0-6 months  |MAL-ED         |NEPAL                        |<52 kg     |           1|     26|   238|
|0-6 months  |MAL-ED         |NEPAL                        |[52-58) kg |           0|     68|   238|
|0-6 months  |MAL-ED         |NEPAL                        |[52-58) kg |           1|     14|   238|
|0-6 months  |MAL-ED         |PERU                         |>=58 kg    |           0|    100|   290|
|0-6 months  |MAL-ED         |PERU                         |>=58 kg    |           1|      4|   290|
|0-6 months  |MAL-ED         |PERU                         |<52 kg     |           0|    110|   290|
|0-6 months  |MAL-ED         |PERU                         |<52 kg     |           1|      5|   290|
|0-6 months  |MAL-ED         |PERU                         |[52-58) kg |           0|     69|   290|
|0-6 months  |MAL-ED         |PERU                         |[52-58) kg |           1|      2|   290|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |>=58 kg    |           0|    177|   270|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |>=58 kg    |           1|     17|   270|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |<52 kg     |           0|     27|   270|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |<52 kg     |           1|      3|   270|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |[52-58) kg |           0|     38|   270|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |[52-58) kg |           1|      8|   270|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg    |           0|     92|   256|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg    |           1|      6|   256|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<52 kg     |           0|     94|   256|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<52 kg     |           1|      5|   256|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[52-58) kg |           0|     57|   256|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[52-58) kg |           1|      2|   256|
|0-6 months  |NIH-Birth      |BANGLADESH                   |>=58 kg    |           0|     60|   622|
|0-6 months  |NIH-Birth      |BANGLADESH                   |>=58 kg    |           1|     22|   622|
|0-6 months  |NIH-Birth      |BANGLADESH                   |<52 kg     |           0|    274|   622|
|0-6 months  |NIH-Birth      |BANGLADESH                   |<52 kg     |           1|    172|   622|
|0-6 months  |NIH-Birth      |BANGLADESH                   |[52-58) kg |           0|     66|   622|
|0-6 months  |NIH-Birth      |BANGLADESH                   |[52-58) kg |           1|     28|   622|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |>=58 kg    |           0|    159|   755|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |>=58 kg    |           1|     33|   755|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |<52 kg     |           0|    275|   755|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |<52 kg     |           1|    131|   755|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |[52-58) kg |           0|    127|   755|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |[52-58) kg |           1|     30|   755|
|0-6 months  |PROBIT         |BELARUS                      |>=58 kg    |           0|   7499| 13772|
|0-6 months  |PROBIT         |BELARUS                      |>=58 kg    |           1|   2780| 13772|
|0-6 months  |PROBIT         |BELARUS                      |<52 kg     |           0|    805| 13772|
|0-6 months  |PROBIT         |BELARUS                      |<52 kg     |           1|    326| 13772|
|0-6 months  |PROBIT         |BELARUS                      |[52-58) kg |           0|   1684| 13772|
|0-6 months  |PROBIT         |BELARUS                      |[52-58) kg |           1|    678| 13772|
|0-6 months  |PROVIDE        |BANGLADESH                   |>=58 kg    |           0|     96|   669|
|0-6 months  |PROVIDE        |BANGLADESH                   |>=58 kg    |           1|     24|   669|
|0-6 months  |PROVIDE        |BANGLADESH                   |<52 kg     |           0|    306|   669|
|0-6 months  |PROVIDE        |BANGLADESH                   |<52 kg     |           1|    126|   669|
|0-6 months  |PROVIDE        |BANGLADESH                   |[52-58) kg |           0|     91|   669|
|0-6 months  |PROVIDE        |BANGLADESH                   |[52-58) kg |           1|     26|   669|
|0-6 months  |SAS-CompFeed   |INDIA                        |>=58 kg    |           0|     95|  1491|
|0-6 months  |SAS-CompFeed   |INDIA                        |>=58 kg    |           1|     18|  1491|
|0-6 months  |SAS-CompFeed   |INDIA                        |<52 kg     |           0|    873|  1491|
|0-6 months  |SAS-CompFeed   |INDIA                        |<52 kg     |           1|    266|  1491|
|0-6 months  |SAS-CompFeed   |INDIA                        |[52-58) kg |           0|    194|  1491|
|0-6 months  |SAS-CompFeed   |INDIA                        |[52-58) kg |           1|     45|  1491|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg    |           0|   1284|  2352|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg    |           1|    192|  2352|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<52 kg     |           0|    335|  2352|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<52 kg     |           1|     58|  2352|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[52-58) kg |           0|    403|  2352|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[52-58) kg |           1|     80|  2352|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |>=58 kg    |           0|   4849| 11118|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |>=58 kg    |           1|    953| 11118|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |<52 kg     |           0|   1868| 11118|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |<52 kg     |           1|    513| 11118|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |[52-58) kg |           0|   2395| 11118|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |[52-58) kg |           1|    540| 11118|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg    |           0|    764|  3217|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg    |           1|    173|  3217|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |<52 kg     |           0|    865|  3217|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |<52 kg     |           1|    336|  3217|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |[52-58) kg |           0|    855|  3217|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |[52-58) kg |           1|    224|  3217|
|6-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg    |           0|    367| 17288|
|6-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg    |           1|     61| 17288|
|6-24 months |JiVitA-3       |BANGLADESH                   |<52 kg     |           0|  13083| 17288|
|6-24 months |JiVitA-3       |BANGLADESH                   |<52 kg     |           1|   2594| 17288|
|6-24 months |JiVitA-3       |BANGLADESH                   |[52-58) kg |           0|   1005| 17288|
|6-24 months |JiVitA-3       |BANGLADESH                   |[52-58) kg |           1|    178| 17288|
|6-24 months |LCNI-5         |MALAWI                       |>=58 kg    |           0|    109|   824|
|6-24 months |LCNI-5         |MALAWI                       |>=58 kg    |           1|      5|   824|
|6-24 months |LCNI-5         |MALAWI                       |<52 kg     |           0|    451|   824|
|6-24 months |LCNI-5         |MALAWI                       |<52 kg     |           1|     45|   824|
|6-24 months |LCNI-5         |MALAWI                       |[52-58) kg |           0|    201|   824|
|6-24 months |LCNI-5         |MALAWI                       |[52-58) kg |           1|     13|   824|
|6-24 months |MAL-ED         |BANGLADESH                   |>=58 kg    |           0|     41|   240|
|6-24 months |MAL-ED         |BANGLADESH                   |>=58 kg    |           1|      3|   240|
|6-24 months |MAL-ED         |BANGLADESH                   |<52 kg     |           0|    119|   240|
|6-24 months |MAL-ED         |BANGLADESH                   |<52 kg     |           1|     36|   240|
|6-24 months |MAL-ED         |BANGLADESH                   |[52-58) kg |           0|     37|   240|
|6-24 months |MAL-ED         |BANGLADESH                   |[52-58) kg |           1|      4|   240|
|6-24 months |MAL-ED         |BRAZIL                       |>=58 kg    |           0|    133|   206|
|6-24 months |MAL-ED         |BRAZIL                       |>=58 kg    |           1|      2|   206|
|6-24 months |MAL-ED         |BRAZIL                       |<52 kg     |           0|     37|   206|
|6-24 months |MAL-ED         |BRAZIL                       |<52 kg     |           1|      0|   206|
|6-24 months |MAL-ED         |BRAZIL                       |[52-58) kg |           0|     30|   206|
|6-24 months |MAL-ED         |BRAZIL                       |[52-58) kg |           1|      4|   206|
|6-24 months |MAL-ED         |INDIA                        |>=58 kg    |           0|     37|   234|
|6-24 months |MAL-ED         |INDIA                        |>=58 kg    |           1|      3|   234|
|6-24 months |MAL-ED         |INDIA                        |<52 kg     |           0|     94|   234|
|6-24 months |MAL-ED         |INDIA                        |<52 kg     |           1|     51|   234|
|6-24 months |MAL-ED         |INDIA                        |[52-58) kg |           0|     39|   234|
|6-24 months |MAL-ED         |INDIA                        |[52-58) kg |           1|     10|   234|
|6-24 months |MAL-ED         |NEPAL                        |>=58 kg    |           0|     72|   235|
|6-24 months |MAL-ED         |NEPAL                        |>=58 kg    |           1|      7|   235|
|6-24 months |MAL-ED         |NEPAL                        |<52 kg     |           0|     57|   235|
|6-24 months |MAL-ED         |NEPAL                        |<52 kg     |           1|     18|   235|
|6-24 months |MAL-ED         |NEPAL                        |[52-58) kg |           0|     70|   235|
|6-24 months |MAL-ED         |NEPAL                        |[52-58) kg |           1|     11|   235|
|6-24 months |MAL-ED         |PERU                         |>=58 kg    |           0|     96|   269|
|6-24 months |MAL-ED         |PERU                         |>=58 kg    |           1|      4|   269|
|6-24 months |MAL-ED         |PERU                         |<52 kg     |           0|     95|   269|
|6-24 months |MAL-ED         |PERU                         |<52 kg     |           1|     10|   269|
|6-24 months |MAL-ED         |PERU                         |[52-58) kg |           0|     60|   269|
|6-24 months |MAL-ED         |PERU                         |[52-58) kg |           1|      4|   269|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |>=58 kg    |           0|    156|   254|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |>=58 kg    |           1|     26|   254|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |<52 kg     |           0|     26|   254|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |<52 kg     |           1|      4|   254|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |[52-58) kg |           0|     35|   254|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |[52-58) kg |           1|      7|   254|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg    |           0|     91|   245|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg    |           1|      4|   245|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<52 kg     |           0|     74|   245|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<52 kg     |           1|     18|   245|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[52-58) kg |           0|     52|   245|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[52-58) kg |           1|      6|   245|
|6-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg    |           0|     55|   542|
|6-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg    |           1|     17|   542|
|6-24 months |NIH-Birth      |BANGLADESH                   |<52 kg     |           0|    265|   542|
|6-24 months |NIH-Birth      |BANGLADESH                   |<52 kg     |           1|    123|   542|
|6-24 months |NIH-Birth      |BANGLADESH                   |[52-58) kg |           0|     63|   542|
|6-24 months |NIH-Birth      |BANGLADESH                   |[52-58) kg |           1|     19|   542|
|6-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg    |           0|    174|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg    |           1|     14|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |<52 kg     |           0|    324|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |<52 kg     |           1|     67|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |[52-58) kg |           0|    136|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |[52-58) kg |           1|     15|   730|
|6-24 months |PROBIT         |BELARUS                      |>=58 kg    |           0|  10186| 13764|
|6-24 months |PROBIT         |BELARUS                      |>=58 kg    |           1|     86| 13764|
|6-24 months |PROBIT         |BELARUS                      |<52 kg     |           0|   1119| 13764|
|6-24 months |PROBIT         |BELARUS                      |<52 kg     |           1|     12| 13764|
|6-24 months |PROBIT         |BELARUS                      |[52-58) kg |           0|   2334| 13764|
|6-24 months |PROBIT         |BELARUS                      |[52-58) kg |           1|     27| 13764|
|6-24 months |PROVIDE        |BANGLADESH                   |>=58 kg    |           0|    107|   614|
|6-24 months |PROVIDE        |BANGLADESH                   |>=58 kg    |           1|      7|   614|
|6-24 months |PROVIDE        |BANGLADESH                   |<52 kg     |           0|    313|   614|
|6-24 months |PROVIDE        |BANGLADESH                   |<52 kg     |           1|     79|   614|
|6-24 months |PROVIDE        |BANGLADESH                   |[52-58) kg |           0|     95|   614|
|6-24 months |PROVIDE        |BANGLADESH                   |[52-58) kg |           1|     13|   614|
|6-24 months |SAS-CompFeed   |INDIA                        |>=58 kg    |           0|     92|  1382|
|6-24 months |SAS-CompFeed   |INDIA                        |>=58 kg    |           1|     14|  1382|
|6-24 months |SAS-CompFeed   |INDIA                        |<52 kg     |           0|    691|  1382|
|6-24 months |SAS-CompFeed   |INDIA                        |<52 kg     |           1|    362|  1382|
|6-24 months |SAS-CompFeed   |INDIA                        |[52-58) kg |           0|    176|  1382|
|6-24 months |SAS-CompFeed   |INDIA                        |[52-58) kg |           1|     47|  1382|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg    |           0|   1066|  1978|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg    |           1|    189|  1978|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<52 kg     |           0|    246|  1978|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<52 kg     |           1|     65|  1978|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[52-58) kg |           0|    347|  1978|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[52-58) kg |           1|     65|  1978|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg    |           0|   4608|  9744|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg    |           1|    413|  9744|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |<52 kg     |           0|   1842|  9744|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |<52 kg     |           1|    285|  9744|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |[52-58) kg |           0|   2324|  9744|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |[52-58) kg |           1|    272|  9744|


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
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/62d50c07-47ac-4606-8484-cca33ddecffb/90d0fbfa-bfdc-494b-a88c-469cbc7556fe/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/62d50c07-47ac-4606-8484-cca33ddecffb/90d0fbfa-bfdc-494b-a88c-469cbc7556fe/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/62d50c07-47ac-4606-8484-cca33ddecffb/90d0fbfa-bfdc-494b-a88c-469cbc7556fe/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/62d50c07-47ac-4606-8484-cca33ddecffb/90d0fbfa-bfdc-494b-a88c-469cbc7556fe/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg            |NA             | 0.1815657| 0.1342653| 0.2288660|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<52 kg             |NA             | 0.2820754| 0.2547114| 0.3094393|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[52-58) kg         |NA             | 0.2076954| 0.1756125| 0.2397782|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg            |NA             | 0.2420365| 0.2117633| 0.2723096|
|0-24 months |JiVitA-3       |BANGLADESH                   |<52 kg             |NA             | 0.2585657| 0.2519664| 0.2651650|
|0-24 months |JiVitA-3       |BANGLADESH                   |[52-58) kg         |NA             | 0.2566828| 0.2334168| 0.2799487|
|0-24 months |LCNI-5         |MALAWI                       |>=58 kg            |NA             | 0.0438596| 0.0062458| 0.0814735|
|0-24 months |LCNI-5         |MALAWI                       |<52 kg             |NA             | 0.0932540| 0.0678519| 0.1186560|
|0-24 months |LCNI-5         |MALAWI                       |[52-58) kg         |NA             | 0.0636364| 0.0313610| 0.0959117|
|0-24 months |MAL-ED         |BANGLADESH                   |>=58 kg            |NA             | 0.1875000| 0.0768640| 0.2981360|
|0-24 months |MAL-ED         |BANGLADESH                   |<52 kg             |NA             | 0.4012346| 0.3256079| 0.4768612|
|0-24 months |MAL-ED         |BANGLADESH                   |[52-58) kg         |NA             | 0.2500000| 0.1218027| 0.3781973|
|0-24 months |MAL-ED         |INDIA                        |>=58 kg            |NA             | 0.2568003| 0.1211764| 0.3924242|
|0-24 months |MAL-ED         |INDIA                        |<52 kg             |NA             | 0.5581390| 0.4780271| 0.6382508|
|0-24 months |MAL-ED         |INDIA                        |[52-58) kg         |NA             | 0.4485809| 0.3052508| 0.5919109|
|0-24 months |MAL-ED         |NEPAL                        |>=58 kg            |NA             | 0.1793889| 0.0951023| 0.2636754|
|0-24 months |MAL-ED         |NEPAL                        |<52 kg             |NA             | 0.5286268| 0.4174862| 0.6397674|
|0-24 months |MAL-ED         |NEPAL                        |[52-58) kg         |NA             | 0.2569512| 0.1606213| 0.3532812|
|0-24 months |MAL-ED         |PERU                         |>=58 kg            |NA             | 0.0769231| 0.0256217| 0.1282244|
|0-24 months |MAL-ED         |PERU                         |<52 kg             |NA             | 0.1217391| 0.0618737| 0.1816046|
|0-24 months |MAL-ED         |PERU                         |[52-58) kg         |NA             | 0.0704225| 0.0108059| 0.1300392|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=58 kg            |NA             | 0.2010309| 0.1445308| 0.2575311|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<52 kg             |NA             | 0.1666667| 0.0330604| 0.3002730|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[52-58) kg         |NA             | 0.2826087| 0.1522483| 0.4129691|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             | 0.0816327| 0.0273170| 0.1359483|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<52 kg             |NA             | 0.2222222| 0.1401678| 0.3042766|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[52-58) kg         |NA             | 0.1016949| 0.0244209| 0.1789689|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg            |NA             | 0.4052063| 0.2978452| 0.5125674|
|0-24 months |NIH-Birth      |BANGLADESH                   |<52 kg             |NA             | 0.4994607| 0.4531201| 0.5458014|
|0-24 months |NIH-Birth      |BANGLADESH                   |[52-58) kg         |NA             | 0.4295999| 0.3297918| 0.5294079|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg            |NA             | 0.2024775| 0.1445044| 0.2604507|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<52 kg             |NA             | 0.4167187| 0.3678358| 0.4656016|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[52-58) kg         |NA             | 0.2400403| 0.1699728| 0.3101078|
|0-24 months |PROBIT         |BELARUS                      |>=58 kg            |NA             | 0.2764708| 0.2136498| 0.3392918|
|0-24 months |PROBIT         |BELARUS                      |<52 kg             |NA             | 0.2944080| 0.2308527| 0.3579634|
|0-24 months |PROBIT         |BELARUS                      |[52-58) kg         |NA             | 0.2913606| 0.2281590| 0.3545622|
|0-24 months |PROVIDE        |BANGLADESH                   |>=58 kg            |NA             | 0.2349183| 0.1558448| 0.3139919|
|0-24 months |PROVIDE        |BANGLADESH                   |<52 kg             |NA             | 0.3993967| 0.3531092| 0.4456843|
|0-24 months |PROVIDE        |BANGLADESH                   |[52-58) kg         |NA             | 0.3093259| 0.2245930| 0.3940587|
|0-24 months |SAS-CompFeed   |INDIA                        |>=58 kg            |NA             | 0.2812728| 0.2037870| 0.3587586|
|0-24 months |SAS-CompFeed   |INDIA                        |<52 kg             |NA             | 0.4476586| 0.3839163| 0.5114010|
|0-24 months |SAS-CompFeed   |INDIA                        |[52-58) kg         |NA             | 0.3249240| 0.2593849| 0.3904631|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             | 0.2228523| 0.2016050| 0.2440997|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<52 kg             |NA             | 0.2795591| 0.2338485| 0.3252696|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[52-58) kg         |NA             | 0.2630889| 0.2220485| 0.3041293|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg            |NA             | 0.2219514| 0.2111669| 0.2327359|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<52 kg             |NA             | 0.3030704| 0.2841874| 0.3219534|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[52-58) kg         |NA             | 0.2528448| 0.2366982| 0.2689914|
|0-6 months  |JiVitA-3       |BANGLADESH                   |>=58 kg            |NA             | 0.1644326| 0.1369172| 0.1919481|
|0-6 months  |JiVitA-3       |BANGLADESH                   |<52 kg             |NA             | 0.1765570| 0.1708340| 0.1822799|
|0-6 months  |JiVitA-3       |BANGLADESH                   |[52-58) kg         |NA             | 0.1746263| 0.1541234| 0.1951292|
|0-6 months  |MAL-ED         |BANGLADESH                   |>=58 kg            |NA             | 0.1458333| 0.0457910| 0.2458757|
|0-6 months  |MAL-ED         |BANGLADESH                   |<52 kg             |NA             | 0.2530864| 0.1860028| 0.3201701|
|0-6 months  |MAL-ED         |BANGLADESH                   |[52-58) kg         |NA             | 0.2272727| 0.1032032| 0.3513423|
|0-6 months  |MAL-ED         |INDIA                        |>=58 kg            |NA             | 0.2127565| 0.0844606| 0.3410523|
|0-6 months  |MAL-ED         |INDIA                        |<52 kg             |NA             | 0.3585174| 0.2810874| 0.4359474|
|0-6 months  |MAL-ED         |INDIA                        |[52-58) kg         |NA             | 0.3355744| 0.2021738| 0.4689750|
|0-6 months  |MAL-ED         |NEPAL                        |>=58 kg            |NA             | 0.1000000| 0.0341223| 0.1658777|
|0-6 months  |MAL-ED         |NEPAL                        |<52 kg             |NA             | 0.3421053| 0.2352210| 0.4489895|
|0-6 months  |MAL-ED         |NEPAL                        |[52-58) kg         |NA             | 0.1707317| 0.0891186| 0.2523448|
|0-6 months  |NIH-Birth      |BANGLADESH                   |>=58 kg            |NA             | 0.2775861| 0.1785936| 0.3765785|
|0-6 months  |NIH-Birth      |BANGLADESH                   |<52 kg             |NA             | 0.3854675| 0.3402703| 0.4306646|
|0-6 months  |NIH-Birth      |BANGLADESH                   |[52-58) kg         |NA             | 0.2846599| 0.1928162| 0.3765037|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |>=58 kg            |NA             | 0.1647267| 0.1098547| 0.2195988|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |<52 kg             |NA             | 0.3194948| 0.2726898| 0.3662998|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |[52-58) kg         |NA             | 0.1940522| 0.1278380| 0.2602665|
|0-6 months  |PROBIT         |BELARUS                      |>=58 kg            |NA             | 0.2703591| 0.2070357| 0.3336824|
|0-6 months  |PROBIT         |BELARUS                      |<52 kg             |NA             | 0.2904773| 0.2255456| 0.3554090|
|0-6 months  |PROBIT         |BELARUS                      |[52-58) kg         |NA             | 0.2841677| 0.2215909| 0.3467445|
|0-6 months  |PROVIDE        |BANGLADESH                   |>=58 kg            |NA             | 0.1935629| 0.1205712| 0.2665545|
|0-6 months  |PROVIDE        |BANGLADESH                   |<52 kg             |NA             | 0.2883927| 0.2457829| 0.3310025|
|0-6 months  |PROVIDE        |BANGLADESH                   |[52-58) kg         |NA             | 0.2208865| 0.1425033| 0.2992697|
|0-6 months  |SAS-CompFeed   |INDIA                        |>=58 kg            |NA             | 0.1630601| 0.0962722| 0.2298480|
|0-6 months  |SAS-CompFeed   |INDIA                        |<52 kg             |NA             | 0.2337021| 0.1844236| 0.2829805|
|0-6 months  |SAS-CompFeed   |INDIA                        |[52-58) kg         |NA             | 0.1858174| 0.1266617| 0.2449731|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             | 0.1309885| 0.1137495| 0.1482275|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<52 kg             |NA             | 0.1628192| 0.1255633| 0.2000752|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[52-58) kg         |NA             | 0.1619421| 0.1282488| 0.1956353|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |>=58 kg            |NA             | 0.1669728| 0.1572381| 0.1767075|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |<52 kg             |NA             | 0.2177251| 0.2007073| 0.2347429|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |[52-58) kg         |NA             | 0.1846241| 0.1701625| 0.1990858|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg            |NA             | 0.1806142| 0.1339628| 0.2272656|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |<52 kg             |NA             | 0.2820797| 0.2551395| 0.3090199|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |[52-58) kg         |NA             | 0.2076206| 0.1753780| 0.2398633|
|6-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg            |NA             | 0.1548233| 0.1235450| 0.1861016|
|6-24 months |JiVitA-3       |BANGLADESH                   |<52 kg             |NA             | 0.1650809| 0.1587901| 0.1713716|
|6-24 months |JiVitA-3       |BANGLADESH                   |[52-58) kg         |NA             | 0.1541631| 0.1295057| 0.1788206|
|6-24 months |LCNI-5         |MALAWI                       |>=58 kg            |NA             | 0.0438596| 0.0062454| 0.0814739|
|6-24 months |LCNI-5         |MALAWI                       |<52 kg             |NA             | 0.0907258| 0.0654338| 0.1160178|
|6-24 months |LCNI-5         |MALAWI                       |[52-58) kg         |NA             | 0.0607477| 0.0287248| 0.0927706|
|6-24 months |MAL-ED         |NEPAL                        |>=58 kg            |NA             | 0.0886076| 0.0258092| 0.1514060|
|6-24 months |MAL-ED         |NEPAL                        |<52 kg             |NA             | 0.2400000| 0.1431375| 0.3368625|
|6-24 months |MAL-ED         |NEPAL                        |[52-58) kg         |NA             | 0.1358025| 0.0610386| 0.2105664|
|6-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg            |NA             | 0.2327321| 0.1268400| 0.3386241|
|6-24 months |NIH-Birth      |BANGLADESH                   |<52 kg             |NA             | 0.3196530| 0.2730161| 0.3662899|
|6-24 months |NIH-Birth      |BANGLADESH                   |[52-58) kg         |NA             | 0.2248236| 0.1347741| 0.3148731|
|6-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg            |NA             | 0.0713560| 0.0335962| 0.1091159|
|6-24 months |NIH-Crypto     |BANGLADESH                   |<52 kg             |NA             | 0.1757923| 0.1381764| 0.2134082|
|6-24 months |NIH-Crypto     |BANGLADESH                   |[52-58) kg         |NA             | 0.0990973| 0.0499223| 0.1482724|
|6-24 months |PROBIT         |BELARUS                      |>=58 kg            |NA             | 0.0083693| 0.0032380| 0.0135006|
|6-24 months |PROBIT         |BELARUS                      |<52 kg             |NA             | 0.0105057| 0.0020094| 0.0190019|
|6-24 months |PROBIT         |BELARUS                      |[52-58) kg         |NA             | 0.0115122| 0.0066924| 0.0163320|
|6-24 months |PROVIDE        |BANGLADESH                   |>=58 kg            |NA             | 0.0614035| 0.0172987| 0.1055083|
|6-24 months |PROVIDE        |BANGLADESH                   |<52 kg             |NA             | 0.2015306| 0.1617878| 0.2412734|
|6-24 months |PROVIDE        |BANGLADESH                   |[52-58) kg         |NA             | 0.1203704| 0.0589518| 0.1817890|
|6-24 months |SAS-CompFeed   |INDIA                        |>=58 kg            |NA             | 0.1227736| 0.0799771| 0.1655700|
|6-24 months |SAS-CompFeed   |INDIA                        |<52 kg             |NA             | 0.3442306| 0.2925434| 0.3959177|
|6-24 months |SAS-CompFeed   |INDIA                        |[52-58) kg         |NA             | 0.2154400| 0.1429075| 0.2879725|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             | 0.1503566| 0.1305573| 0.1701560|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<52 kg             |NA             | 0.2189299| 0.1729993| 0.2648605|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[52-58) kg         |NA             | 0.1600122| 0.1234464| 0.1965781|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg            |NA             | 0.0817349| 0.0741154| 0.0893544|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |<52 kg             |NA             | 0.1343816| 0.1193778| 0.1493853|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |[52-58) kg         |NA             | 0.1061199| 0.0939267| 0.1183131|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.2278520| 0.2008644| 0.2548397|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.2580130| 0.2515531| 0.2644729|
|0-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.0787589| 0.0605107| 0.0970072|
|0-24 months |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.3346457| 0.2765014| 0.3927899|
|0-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.4834711| 0.4203794| 0.5465628|
|0-24 months |MAL-ED         |NEPAL                        |NA                 |NA             | 0.3109244| 0.2519946| 0.3698541|
|0-24 months |MAL-ED         |PERU                         |NA                 |NA             | 0.0931034| 0.0596022| 0.1266047|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.2111111| 0.1623431| 0.2598792|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1406250| 0.0979572| 0.1832928|
|0-24 months |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.4775641| 0.4383415| 0.5167867|
|0-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.3298013| 0.2962438| 0.3633589|
|0-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.2805693| 0.2183906| 0.3427479|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.3602392| 0.3238339| 0.3966444|
|0-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.4172230| 0.3585449| 0.4759011|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.2372449| 0.2200495| 0.2544403|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.2457915| 0.2378059| 0.2537772|
|0-6 months  |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.1761965| 0.1705789| 0.1818141|
|0-6 months  |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.2283465| 0.1766220| 0.2800709|
|0-6 months  |MAL-ED         |INDIA                        |NA                 |NA             | 0.3264463| 0.2672449| 0.3856476|
|0-6 months  |MAL-ED         |NEPAL                        |NA                 |NA             | 0.2016807| 0.1505956| 0.2527658|
|0-6 months  |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.3569132| 0.3192325| 0.3945938|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.2569536| 0.2257649| 0.2881424|
|0-6 months  |PROBIT         |BELARUS                      |NA                 |NA             | 0.2747604| 0.2123223| 0.3371985|
|0-6 months  |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.2630792| 0.2296894| 0.2964690|
|0-6 months  |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.2206573| 0.1756202| 0.2656944|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1403061| 0.1262673| 0.1543450|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.1804281| 0.1732799| 0.1875764|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.2278520| 0.2008644| 0.2548397|
|6-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.1638709| 0.1577615| 0.1699803|
|6-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.0764563| 0.0583018| 0.0946108|
|6-24 months |MAL-ED         |NEPAL                        |NA                 |NA             | 0.1531915| 0.1070438| 0.1993392|
|6-24 months |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.2933579| 0.2549918| 0.3317241|
|6-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.1315068| 0.1069744| 0.1560393|
|6-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.0090817| 0.0046144| 0.0135489|
|6-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.1612378| 0.1321259| 0.1903497|
|6-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.3060781| 0.2622443| 0.3499120|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1612740| 0.1450620| 0.1774860|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.0995484| 0.0936035| 0.1054934|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<52 kg             |>=58 kg        | 1.5535722| 1.2124877| 1.990607|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[52-58) kg         |>=58 kg        | 1.1439133| 0.9021519| 1.450463|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |<52 kg             |>=58 kg        | 1.0682923| 0.9402549| 1.213765|
|0-24 months |JiVitA-3       |BANGLADESH                   |[52-58) kg         |>=58 kg        | 1.0605128| 0.9039918| 1.244134|
|0-24 months |LCNI-5         |MALAWI                       |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |LCNI-5         |MALAWI                       |<52 kg             |>=58 kg        | 2.1261905| 0.8646020| 5.228632|
|0-24 months |LCNI-5         |MALAWI                       |[52-58) kg         |>=58 kg        | 1.4509091| 0.5357128| 3.929600|
|0-24 months |MAL-ED         |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |BANGLADESH                   |<52 kg             |>=58 kg        | 2.1399177| 1.1518112| 3.975693|
|0-24 months |MAL-ED         |BANGLADESH                   |[52-58) kg         |>=58 kg        | 1.3333333| 0.6101437| 2.913704|
|0-24 months |MAL-ED         |INDIA                        |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |INDIA                        |<52 kg             |>=58 kg        | 2.1734360| 1.2573288| 3.757032|
|0-24 months |MAL-ED         |INDIA                        |[52-58) kg         |>=58 kg        | 1.7468083| 0.9429988| 3.235783|
|0-24 months |MAL-ED         |NEPAL                        |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |NEPAL                        |<52 kg             |>=58 kg        | 2.9468205| 1.7649384| 4.920144|
|0-24 months |MAL-ED         |NEPAL                        |[52-58) kg         |>=58 kg        | 1.4323700| 0.7851663| 2.613056|
|0-24 months |MAL-ED         |PERU                         |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |PERU                         |<52 kg             |>=58 kg        | 1.5826087| 0.6910535| 3.624394|
|0-24 months |MAL-ED         |PERU                         |[52-58) kg         |>=58 kg        | 0.9154930| 0.3116133| 2.689640|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<52 kg             |>=58 kg        | 0.8290598| 0.3545375| 1.938695|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[52-58) kg         |>=58 kg        | 1.4057971| 0.8191006| 2.412726|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<52 kg             |>=58 kg        | 2.7222222| 1.2718747| 5.826434|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[52-58) kg         |>=58 kg        | 1.2457627| 0.4537299| 3.420371|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Birth      |BANGLADESH                   |<52 kg             |>=58 kg        | 1.2326085| 0.9306160| 1.632600|
|0-24 months |NIH-Birth      |BANGLADESH                   |[52-58) kg         |>=58 kg        | 1.0602003| 0.7456070| 1.507530|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<52 kg             |>=58 kg        | 2.0580984| 1.5098496| 2.805425|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[52-58) kg         |>=58 kg        | 1.1855156| 0.7877164| 1.784205|
|0-24 months |PROBIT         |BELARUS                      |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROBIT         |BELARUS                      |<52 kg             |>=58 kg        | 1.0648794| 0.9488840| 1.195054|
|0-24 months |PROBIT         |BELARUS                      |[52-58) kg         |>=58 kg        | 1.0538569| 0.9921060| 1.119451|
|0-24 months |PROVIDE        |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROVIDE        |BANGLADESH                   |<52 kg             |>=58 kg        | 1.7001515| 1.1904567| 2.428072|
|0-24 months |PROVIDE        |BANGLADESH                   |[52-58) kg         |>=58 kg        | 1.3167379| 0.8530653| 2.032434|
|0-24 months |SAS-CompFeed   |INDIA                        |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-CompFeed   |INDIA                        |<52 kg             |>=58 kg        | 1.5915459| 1.2879810| 1.966658|
|0-24 months |SAS-CompFeed   |INDIA                        |[52-58) kg         |>=58 kg        | 1.1551915| 0.8460216| 1.577344|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<52 kg             |>=58 kg        | 1.2544586| 1.0381645| 1.515816|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[52-58) kg         |>=58 kg        | 1.1805525| 0.9833108| 1.417359|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<52 kg             |>=58 kg        | 1.3654809| 1.2617657| 1.477721|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[52-58) kg         |>=58 kg        | 1.1391898| 1.0513385| 1.234382|
|0-6 months  |JiVitA-3       |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |JiVitA-3       |BANGLADESH                   |<52 kg             |>=58 kg        | 1.0737343| 0.9066283| 1.271641|
|0-6 months  |JiVitA-3       |BANGLADESH                   |[52-58) kg         |>=58 kg        | 1.0619928| 0.8646949| 1.304308|
|0-6 months  |MAL-ED         |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |MAL-ED         |BANGLADESH                   |<52 kg             |>=58 kg        | 1.7354497| 0.8317982| 3.620813|
|0-6 months  |MAL-ED         |BANGLADESH                   |[52-58) kg         |>=58 kg        | 1.5584416| 0.6485470| 3.744895|
|0-6 months  |MAL-ED         |INDIA                        |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |MAL-ED         |INDIA                        |<52 kg             |>=58 kg        | 1.6851070| 0.8878311| 3.198340|
|0-6 months  |MAL-ED         |INDIA                        |[52-58) kg         |>=58 kg        | 1.5772700| 0.7658232| 3.248505|
|0-6 months  |MAL-ED         |NEPAL                        |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |MAL-ED         |NEPAL                        |<52 kg             |>=58 kg        | 3.4210526| 1.6501048| 7.092641|
|0-6 months  |MAL-ED         |NEPAL                        |[52-58) kg         |>=58 kg        | 1.7073171| 0.7565308| 3.853024|
|0-6 months  |NIH-Birth      |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |NIH-Birth      |BANGLADESH                   |<52 kg             |>=58 kg        | 1.3886413| 0.9543108| 2.020646|
|0-6 months  |NIH-Birth      |BANGLADESH                   |[52-58) kg         |>=58 kg        | 1.0254835| 0.6342402| 1.658073|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |<52 kg             |>=58 kg        | 1.9395440| 1.3471291| 2.792480|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |[52-58) kg         |>=58 kg        | 1.1780251| 0.7317879| 1.896373|
|0-6 months  |PROBIT         |BELARUS                      |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |PROBIT         |BELARUS                      |<52 kg             |>=58 kg        | 1.0744131| 0.9572206| 1.205953|
|0-6 months  |PROBIT         |BELARUS                      |[52-58) kg         |>=58 kg        | 1.0510752| 0.9823393| 1.124621|
|0-6 months  |PROVIDE        |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |PROVIDE        |BANGLADESH                   |<52 kg             |>=58 kg        | 1.4899174| 0.9933769| 2.234654|
|0-6 months  |PROVIDE        |BANGLADESH                   |[52-58) kg         |>=58 kg        | 1.1411616| 0.6801850| 1.914553|
|0-6 months  |SAS-CompFeed   |INDIA                        |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |SAS-CompFeed   |INDIA                        |<52 kg             |>=58 kg        | 1.4332264| 1.0713939| 1.917258|
|0-6 months  |SAS-CompFeed   |INDIA                        |[52-58) kg         |>=58 kg        | 1.1395638| 0.6976245| 1.861468|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<52 kg             |>=58 kg        | 1.2430040| 0.9549447| 1.617957|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[52-58) kg         |>=58 kg        | 1.2363076| 0.9666952| 1.581115|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |<52 kg             |>=58 kg        | 1.3039557| 1.1828090| 1.437511|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |[52-58) kg         |>=58 kg        | 1.1057140| 1.0028717| 1.219102|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |<52 kg             |>=58 kg        | 1.5617800| 1.2181049| 2.002419|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |[52-58) kg         |>=58 kg        | 1.1495254| 0.9069478| 1.456984|
|6-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|6-24 months |JiVitA-3       |BANGLADESH                   |<52 kg             |>=58 kg        | 1.0662534| 0.8684774| 1.309068|
|6-24 months |JiVitA-3       |BANGLADESH                   |[52-58) kg         |>=58 kg        | 0.9957362| 0.7620590| 1.301068|
|6-24 months |LCNI-5         |MALAWI                       |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|6-24 months |LCNI-5         |MALAWI                       |<52 kg             |>=58 kg        | 2.0685484| 0.8395155| 5.096859|
|6-24 months |LCNI-5         |MALAWI                       |[52-58) kg         |>=58 kg        | 1.3850467| 0.5061464| 3.790118|
|6-24 months |MAL-ED         |NEPAL                        |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|6-24 months |MAL-ED         |NEPAL                        |<52 kg             |>=58 kg        | 2.7085714| 1.1982188| 6.122721|
|6-24 months |MAL-ED         |NEPAL                        |[52-58) kg         |>=58 kg        | 1.5326279| 0.6247240| 3.759977|
|6-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|6-24 months |NIH-Birth      |BANGLADESH                   |<52 kg             |>=58 kg        | 1.3734804| 0.8518186| 2.214613|
|6-24 months |NIH-Birth      |BANGLADESH                   |[52-58) kg         |>=58 kg        | 0.9660189| 0.5269055| 1.771081|
|6-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|6-24 months |NIH-Crypto     |BANGLADESH                   |<52 kg             |>=58 kg        | 2.4635938| 1.3922689| 4.359283|
|6-24 months |NIH-Crypto     |BANGLADESH                   |[52-58) kg         |>=58 kg        | 1.3887729| 0.6721884| 2.869270|
|6-24 months |PROBIT         |BELARUS                      |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|6-24 months |PROBIT         |BELARUS                      |<52 kg             |>=58 kg        | 1.2552603| 0.5223015| 3.016798|
|6-24 months |PROBIT         |BELARUS                      |[52-58) kg         |>=58 kg        | 1.3755217| 0.7666731| 2.467883|
|6-24 months |PROVIDE        |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|6-24 months |PROVIDE        |BANGLADESH                   |<52 kg             |>=58 kg        | 3.2820700| 1.5583331| 6.912504|
|6-24 months |PROVIDE        |BANGLADESH                   |[52-58) kg         |>=58 kg        | 1.9603175| 0.8122410| 4.731163|
|6-24 months |SAS-CompFeed   |INDIA                        |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|6-24 months |SAS-CompFeed   |INDIA                        |<52 kg             |>=58 kg        | 2.8037843| 2.0925949| 3.756679|
|6-24 months |SAS-CompFeed   |INDIA                        |[52-58) kg         |>=58 kg        | 1.7547755| 1.0379995| 2.966511|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<52 kg             |>=58 kg        | 1.4560708| 1.1367201| 1.865140|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[52-58) kg         |>=58 kg        | 1.0642180| 0.8174258| 1.385520|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |<52 kg             |>=58 kg        | 1.6441146| 1.4216935| 1.901333|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |[52-58) kg         |>=58 kg        | 1.2983426| 1.1198294| 1.505313|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg            |NA             | 0.0462864|  0.0170100| 0.0755627|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg            |NA             | 0.0159765| -0.0142714| 0.0462245|
|0-24 months |LCNI-5         |MALAWI                       |>=58 kg            |NA             | 0.0348993| -0.0020178| 0.0718164|
|0-24 months |MAL-ED         |BANGLADESH                   |>=58 kg            |NA             | 0.1471457|  0.0422895| 0.2520018|
|0-24 months |MAL-ED         |INDIA                        |>=58 kg            |NA             | 0.2266708|  0.0995747| 0.3537669|
|0-24 months |MAL-ED         |NEPAL                        |>=58 kg            |NA             | 0.1315355|  0.0553000| 0.2077710|
|0-24 months |MAL-ED         |PERU                         |>=58 kg            |NA             | 0.0161804| -0.0270227| 0.0593834|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=58 kg            |NA             | 0.0100802| -0.0212756| 0.0414360|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             | 0.0589923|  0.0088725| 0.1091122|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg            |NA             | 0.0723578| -0.0281986| 0.1729142|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg            |NA             | 0.1273238|  0.0739615| 0.1806861|
|0-24 months |PROBIT         |BELARUS                      |>=58 kg            |NA             | 0.0040985| -0.0002377| 0.0084346|
|0-24 months |PROVIDE        |BANGLADESH                   |>=58 kg            |NA             | 0.1253208|  0.0511905| 0.1994512|
|0-24 months |SAS-CompFeed   |INDIA                        |>=58 kg            |NA             | 0.1359501|  0.0770541| 0.1948461|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             | 0.0143926|  0.0008010| 0.0279841|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg            |NA             | 0.0238402|  0.0159855| 0.0316948|
|0-6 months  |JiVitA-3       |BANGLADESH                   |>=58 kg            |NA             | 0.0117639| -0.0153716| 0.0388994|
|0-6 months  |MAL-ED         |BANGLADESH                   |>=58 kg            |NA             | 0.0825131| -0.0118328| 0.1768591|
|0-6 months  |MAL-ED         |INDIA                        |>=58 kg            |NA             | 0.1136898| -0.0059004| 0.2332801|
|0-6 months  |MAL-ED         |NEPAL                        |>=58 kg            |NA             | 0.1016807|  0.0381826| 0.1651787|
|0-6 months  |NIH-Birth      |BANGLADESH                   |>=58 kg            |NA             | 0.0793271| -0.0140678| 0.1727220|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |>=58 kg            |NA             | 0.0922269|  0.0411197| 0.1433341|
|0-6 months  |PROBIT         |BELARUS                      |>=58 kg            |NA             | 0.0044013| -0.0004615| 0.0092642|
|0-6 months  |PROVIDE        |BANGLADESH                   |>=58 kg            |NA             | 0.0695164|  0.0014971| 0.1375356|
|0-6 months  |SAS-CompFeed   |INDIA                        |>=58 kg            |NA             | 0.0575972|  0.0126409| 0.1025534|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             | 0.0093176| -0.0018434| 0.0204787|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |>=58 kg            |NA             | 0.0134554|  0.0063697| 0.0205410|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg            |NA             | 0.0472378|  0.0184150| 0.0760606|
|6-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg            |NA             | 0.0090476| -0.0220393| 0.0401345|
|6-24 months |LCNI-5         |MALAWI                       |>=58 kg            |NA             | 0.0325967| -0.0041856| 0.0693789|
|6-24 months |MAL-ED         |NEPAL                        |>=58 kg            |NA             | 0.0645839|  0.0060879| 0.1230799|
|6-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg            |NA             | 0.0606259| -0.0391993| 0.1604510|
|6-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg            |NA             | 0.0601508|  0.0240650| 0.0962367|
|6-24 months |PROBIT         |BELARUS                      |>=58 kg            |NA             | 0.0007124| -0.0005764| 0.0020011|
|6-24 months |PROVIDE        |BANGLADESH                   |>=58 kg            |NA             | 0.0998343|  0.0543326| 0.1453359|
|6-24 months |SAS-CompFeed   |INDIA                        |>=58 kg            |NA             | 0.1833046|  0.1406184| 0.2259908|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             | 0.0109174| -0.0017031| 0.0235379|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg            |NA             | 0.0178135|  0.0119510| 0.0236761|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg            |NA             | 0.2031422|  0.0499251| 0.3316503|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg            |NA             | 0.0619215| -0.0627838| 0.1719941|
|0-24 months |LCNI-5         |MALAWI                       |>=58 kg            |NA             | 0.4431154| -0.2685075| 0.7555233|
|0-24 months |MAL-ED         |BANGLADESH                   |>=58 kg            |NA             | 0.4397059|  0.0269915| 0.6773620|
|0-24 months |MAL-ED         |INDIA                        |>=58 kg            |NA             | 0.4688405|  0.1279128| 0.6764882|
|0-24 months |MAL-ED         |NEPAL                        |>=58 kg            |NA             | 0.4230466|  0.1273031| 0.6185672|
|0-24 months |MAL-ED         |PERU                         |>=58 kg            |NA             | 0.1737892| -0.4426530| 0.5268271|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=58 kg            |NA             | 0.0477482| -0.1127541| 0.1850999|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             | 0.4195011| -0.0382341| 0.6754307|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg            |NA             | 0.1515143| -0.0876967| 0.3381170|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg            |NA             | 0.3860621|  0.2034891| 0.5267865|
|0-24 months |PROBIT         |BELARUS                      |>=58 kg            |NA             | 0.0146077| -0.0016728| 0.0306237|
|0-24 months |PROVIDE        |BANGLADESH                   |>=58 kg            |NA             | 0.3478823|  0.1068873| 0.5238480|
|0-24 months |SAS-CompFeed   |INDIA                        |>=58 kg            |NA             | 0.3258453|  0.1670730| 0.4543524|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             | 0.0606654|  0.0017033| 0.1161450|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg            |NA             | 0.0969934|  0.0645423| 0.1283187|
|0-6 months  |JiVitA-3       |BANGLADESH                   |>=58 kg            |NA             | 0.0667657| -0.1006062| 0.2086850|
|0-6 months  |MAL-ED         |BANGLADESH                   |>=58 kg            |NA             | 0.3613506| -0.2099737| 0.6629075|
|0-6 months  |MAL-ED         |INDIA                        |>=58 kg            |NA             | 0.3482650| -0.1423845| 0.6281826|
|0-6 months  |MAL-ED         |NEPAL                        |>=58 kg            |NA             | 0.5041667|  0.1014472| 0.7263926|
|0-6 months  |NIH-Birth      |BANGLADESH                   |>=58 kg            |NA             | 0.2222589| -0.0886897| 0.4443952|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |>=58 kg            |NA             | 0.3589243|  0.1299272| 0.5276509|
|0-6 months  |PROBIT         |BELARUS                      |>=58 kg            |NA             | 0.0160188| -0.0027343| 0.0344212|
|0-6 months  |PROVIDE        |BANGLADESH                   |>=58 kg            |NA             | 0.2642412| -0.0443098| 0.4816279|
|0-6 months  |SAS-CompFeed   |INDIA                        |>=58 kg            |NA             | 0.2610255|  0.0104655| 0.4481412|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             | 0.0664093| -0.0163628| 0.1424404|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |>=58 kg            |NA             | 0.0745746|  0.0345411| 0.1129482|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg            |NA             | 0.2073179|  0.0564665| 0.3340513|
|6-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg            |NA             | 0.0552119| -0.1547238| 0.2269800|
|6-24 months |LCNI-5         |MALAWI                       |>=58 kg            |NA             | 0.4263436| -0.3046507| 0.7477627|
|6-24 months |MAL-ED         |NEPAL                        |>=58 kg            |NA             | 0.4215893| -0.0867215| 0.6921392|
|6-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg            |NA             | 0.2066617| -0.2186928| 0.4835568|
|6-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg            |NA             | 0.4573967|  0.1166376| 0.6667072|
|6-24 months |PROBIT         |BELARUS                      |>=58 kg            |NA             | 0.0784387| -0.0981712| 0.2266459|
|6-24 months |PROVIDE        |BANGLADESH                   |>=58 kg            |NA             | 0.6191742|  0.2410369| 0.8089126|
|6-24 months |SAS-CompFeed   |INDIA                        |>=58 kg            |NA             | 0.5988817|  0.4579734| 0.7031586|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             | 0.0676946| -0.0137157| 0.1425669|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg            |NA             | 0.1789434|  0.1187720| 0.2350062|
