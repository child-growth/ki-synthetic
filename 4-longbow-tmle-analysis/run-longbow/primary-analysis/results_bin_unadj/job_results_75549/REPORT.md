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

**Outcome Variable:** swasted

## Predictor Variables

**Intervention Variable:** mwtkg

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |mwtkg      | swasted| n_cell|     n|
|:---------|:--------------|:------------|:----------|-------:|------:|-----:|
|Birth     |JiVitA-3       |BANGLADESH   |>=58 kg    |       0|    449| 17987|
|Birth     |JiVitA-3       |BANGLADESH   |>=58 kg    |       1|      6| 17987|
|Birth     |JiVitA-3       |BANGLADESH   |[52-58) kg |       0|   1253| 17987|
|Birth     |JiVitA-3       |BANGLADESH   |[52-58) kg |       1|     23| 17987|
|Birth     |JiVitA-3       |BANGLADESH   |<52 kg     |       0|  15936| 17987|
|Birth     |JiVitA-3       |BANGLADESH   |<52 kg     |       1|    320| 17987|
|Birth     |MAL-ED         |INDIA        |>=58 kg    |       0|     11|    45|
|Birth     |MAL-ED         |INDIA        |>=58 kg    |       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |[52-58) kg |       0|      7|    45|
|Birth     |MAL-ED         |INDIA        |[52-58) kg |       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |<52 kg     |       0|     27|    45|
|Birth     |MAL-ED         |INDIA        |<52 kg     |       1|      0|    45|
|Birth     |MAL-ED         |BANGLADESH   |>=58 kg    |       0|     39|   214|
|Birth     |MAL-ED         |BANGLADESH   |>=58 kg    |       1|      1|   214|
|Birth     |MAL-ED         |BANGLADESH   |[52-58) kg |       0|     51|   214|
|Birth     |MAL-ED         |BANGLADESH   |[52-58) kg |       1|      0|   214|
|Birth     |MAL-ED         |BANGLADESH   |<52 kg     |       0|    116|   214|
|Birth     |MAL-ED         |BANGLADESH   |<52 kg     |       1|      7|   214|
|Birth     |MAL-ED         |PERU         |>=58 kg    |       0|     99|   224|
|Birth     |MAL-ED         |PERU         |>=58 kg    |       1|      0|   224|
|Birth     |MAL-ED         |PERU         |[52-58) kg |       0|     58|   224|
|Birth     |MAL-ED         |PERU         |[52-58) kg |       1|      0|   224|
|Birth     |MAL-ED         |PERU         |<52 kg     |       0|     67|   224|
|Birth     |MAL-ED         |PERU         |<52 kg     |       1|      0|   224|
|Birth     |MAL-ED         |NEPAL        |>=58 kg    |       0|     10|    26|
|Birth     |MAL-ED         |NEPAL        |>=58 kg    |       1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |[52-58) kg |       0|      8|    26|
|Birth     |MAL-ED         |NEPAL        |[52-58) kg |       1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |<52 kg     |       0|      7|    26|
|Birth     |MAL-ED         |NEPAL        |<52 kg     |       1|      1|    26|
|Birth     |MAL-ED         |BRAZIL       |>=58 kg    |       0|     40|    62|
|Birth     |MAL-ED         |BRAZIL       |>=58 kg    |       1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |[52-58) kg |       0|     10|    62|
|Birth     |MAL-ED         |BRAZIL       |[52-58) kg |       1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |<52 kg     |       0|     12|    62|
|Birth     |MAL-ED         |BRAZIL       |<52 kg     |       1|      0|    62|
|Birth     |MAL-ED         |TANZANIA     |>=58 kg    |       0|     45|   110|
|Birth     |MAL-ED         |TANZANIA     |>=58 kg    |       1|      0|   110|
|Birth     |MAL-ED         |TANZANIA     |[52-58) kg |       0|     27|   110|
|Birth     |MAL-ED         |TANZANIA     |[52-58) kg |       1|      0|   110|
|Birth     |MAL-ED         |TANZANIA     |<52 kg     |       0|     38|   110|
|Birth     |MAL-ED         |TANZANIA     |<52 kg     |       1|      0|   110|
|Birth     |MAL-ED         |SOUTH AFRICA |>=58 kg    |       0|     80|   109|
|Birth     |MAL-ED         |SOUTH AFRICA |>=58 kg    |       1|      0|   109|
|Birth     |MAL-ED         |SOUTH AFRICA |[52-58) kg |       0|     13|   109|
|Birth     |MAL-ED         |SOUTH AFRICA |[52-58) kg |       1|      0|   109|
|Birth     |MAL-ED         |SOUTH AFRICA |<52 kg     |       0|     16|   109|
|Birth     |MAL-ED         |SOUTH AFRICA |<52 kg     |       1|      0|   109|
|Birth     |NIH-Birth      |BANGLADESH   |>=58 kg    |       0|     81|   575|
|Birth     |NIH-Birth      |BANGLADESH   |>=58 kg    |       1|      3|   575|
|Birth     |NIH-Birth      |BANGLADESH   |[52-58) kg |       0|     69|   575|
|Birth     |NIH-Birth      |BANGLADESH   |[52-58) kg |       1|      6|   575|
|Birth     |NIH-Birth      |BANGLADESH   |<52 kg     |       0|    387|   575|
|Birth     |NIH-Birth      |BANGLADESH   |<52 kg     |       1|     29|   575|
|Birth     |NIH-Crypto     |BANGLADESH   |>=58 kg    |       0|    211|   706|
|Birth     |NIH-Crypto     |BANGLADESH   |>=58 kg    |       1|     11|   706|
|Birth     |NIH-Crypto     |BANGLADESH   |[52-58) kg |       0|    146|   706|
|Birth     |NIH-Crypto     |BANGLADESH   |[52-58) kg |       1|      5|   706|
|Birth     |NIH-Crypto     |BANGLADESH   |<52 kg     |       0|    303|   706|
|Birth     |NIH-Crypto     |BANGLADESH   |<52 kg     |       1|     30|   706|
|Birth     |PROBIT         |BELARUS      |>=58 kg    |       0|   9540| 13694|
|Birth     |PROBIT         |BELARUS      |>=58 kg    |       1|    682| 13694|
|Birth     |PROBIT         |BELARUS      |[52-58) kg |       0|   2180| 13694|
|Birth     |PROBIT         |BELARUS      |[52-58) kg |       1|    145| 13694|
|Birth     |PROBIT         |BELARUS      |<52 kg     |       0|   1065| 13694|
|Birth     |PROBIT         |BELARUS      |<52 kg     |       1|     82| 13694|
|Birth     |PROVIDE        |BANGLADESH   |>=58 kg    |       0|    105|   525|
|Birth     |PROVIDE        |BANGLADESH   |>=58 kg    |       1|      5|   525|
|Birth     |PROVIDE        |BANGLADESH   |[52-58) kg |       0|    111|   525|
|Birth     |PROVIDE        |BANGLADESH   |[52-58) kg |       1|      3|   525|
|Birth     |PROVIDE        |BANGLADESH   |<52 kg     |       0|    296|   525|
|Birth     |PROVIDE        |BANGLADESH   |<52 kg     |       1|      5|   525|
|Birth     |SAS-CompFeed   |INDIA        |>=58 kg    |       0|    118|  1103|
|Birth     |SAS-CompFeed   |INDIA        |>=58 kg    |       1|      2|  1103|
|Birth     |SAS-CompFeed   |INDIA        |[52-58) kg |       0|    168|  1103|
|Birth     |SAS-CompFeed   |INDIA        |[52-58) kg |       1|      2|  1103|
|Birth     |SAS-CompFeed   |INDIA        |<52 kg     |       0|    788|  1103|
|Birth     |SAS-CompFeed   |INDIA        |<52 kg     |       1|     25|  1103|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=58 kg    |       0|   4966| 10171|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=58 kg    |       1|    282| 10171|
|Birth     |ZVITAMBO       |ZIMBABWE     |[52-58) kg |       0|   2563| 10171|
|Birth     |ZVITAMBO       |ZIMBABWE     |[52-58) kg |       1|    154| 10171|
|Birth     |ZVITAMBO       |ZIMBABWE     |<52 kg     |       0|   2059| 10171|
|Birth     |ZVITAMBO       |ZIMBABWE     |<52 kg     |       1|    147| 10171|
|6 months  |JiVitA-3       |BANGLADESH   |>=58 kg    |       0|    425| 16769|
|6 months  |JiVitA-3       |BANGLADESH   |>=58 kg    |       1|      5| 16769|
|6 months  |JiVitA-3       |BANGLADESH   |[52-58) kg |       0|   1168| 16769|
|6 months  |JiVitA-3       |BANGLADESH   |[52-58) kg |       1|     11| 16769|
|6 months  |JiVitA-3       |BANGLADESH   |<52 kg     |       0|  14946| 16769|
|6 months  |JiVitA-3       |BANGLADESH   |<52 kg     |       1|    214| 16769|
|6 months  |LCNI-5         |MALAWI       |>=58 kg    |       0|    109|   837|
|6 months  |LCNI-5         |MALAWI       |>=58 kg    |       1|      0|   837|
|6 months  |LCNI-5         |MALAWI       |[52-58) kg |       0|    212|   837|
|6 months  |LCNI-5         |MALAWI       |[52-58) kg |       1|      0|   837|
|6 months  |LCNI-5         |MALAWI       |<52 kg     |       0|    516|   837|
|6 months  |LCNI-5         |MALAWI       |<52 kg     |       1|      0|   837|
|6 months  |MAL-ED         |INDIA        |>=58 kg    |       0|     42|   234|
|6 months  |MAL-ED         |INDIA        |>=58 kg    |       1|      2|   234|
|6 months  |MAL-ED         |INDIA        |[52-58) kg |       0|     38|   234|
|6 months  |MAL-ED         |INDIA        |[52-58) kg |       1|      0|   234|
|6 months  |MAL-ED         |INDIA        |<52 kg     |       0|    148|   234|
|6 months  |MAL-ED         |INDIA        |<52 kg     |       1|      4|   234|
|6 months  |MAL-ED         |BANGLADESH   |>=58 kg    |       0|     44|   240|
|6 months  |MAL-ED         |BANGLADESH   |>=58 kg    |       1|      1|   240|
|6 months  |MAL-ED         |BANGLADESH   |[52-58) kg |       0|     53|   240|
|6 months  |MAL-ED         |BANGLADESH   |[52-58) kg |       1|      0|   240|
|6 months  |MAL-ED         |BANGLADESH   |<52 kg     |       0|    142|   240|
|6 months  |MAL-ED         |BANGLADESH   |<52 kg     |       1|      0|   240|
|6 months  |MAL-ED         |PERU         |>=58 kg    |       0|    123|   270|
|6 months  |MAL-ED         |PERU         |>=58 kg    |       1|      0|   270|
|6 months  |MAL-ED         |PERU         |[52-58) kg |       0|     65|   270|
|6 months  |MAL-ED         |PERU         |[52-58) kg |       1|      0|   270|
|6 months  |MAL-ED         |PERU         |<52 kg     |       0|     82|   270|
|6 months  |MAL-ED         |PERU         |<52 kg     |       1|      0|   270|
|6 months  |MAL-ED         |NEPAL        |>=58 kg    |       0|     91|   231|
|6 months  |MAL-ED         |NEPAL        |>=58 kg    |       1|      0|   231|
|6 months  |MAL-ED         |NEPAL        |[52-58) kg |       0|     69|   231|
|6 months  |MAL-ED         |NEPAL        |[52-58) kg |       1|      0|   231|
|6 months  |MAL-ED         |NEPAL        |<52 kg     |       0|     71|   231|
|6 months  |MAL-ED         |NEPAL        |<52 kg     |       1|      0|   231|
|6 months  |MAL-ED         |BRAZIL       |>=58 kg    |       0|    127|   209|
|6 months  |MAL-ED         |BRAZIL       |>=58 kg    |       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |[52-58) kg |       0|     31|   209|
|6 months  |MAL-ED         |BRAZIL       |[52-58) kg |       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |<52 kg     |       0|     51|   209|
|6 months  |MAL-ED         |BRAZIL       |<52 kg     |       1|      0|   209|
|6 months  |MAL-ED         |TANZANIA     |>=58 kg    |       0|     96|   239|
|6 months  |MAL-ED         |TANZANIA     |>=58 kg    |       1|      0|   239|
|6 months  |MAL-ED         |TANZANIA     |[52-58) kg |       0|     59|   239|
|6 months  |MAL-ED         |TANZANIA     |[52-58) kg |       1|      0|   239|
|6 months  |MAL-ED         |TANZANIA     |<52 kg     |       0|     84|   239|
|6 months  |MAL-ED         |TANZANIA     |<52 kg     |       1|      0|   239|
|6 months  |MAL-ED         |SOUTH AFRICA |>=58 kg    |       0|    184|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |>=58 kg    |       1|      1|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |[52-58) kg |       0|     29|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |[52-58) kg |       1|      1|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |<52 kg     |       0|     30|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |<52 kg     |       1|      1|   246|
|6 months  |NIH-Birth      |BANGLADESH   |>=58 kg    |       0|     74|   537|
|6 months  |NIH-Birth      |BANGLADESH   |>=58 kg    |       1|      1|   537|
|6 months  |NIH-Birth      |BANGLADESH   |[52-58) kg |       0|     72|   537|
|6 months  |NIH-Birth      |BANGLADESH   |[52-58) kg |       1|      1|   537|
|6 months  |NIH-Birth      |BANGLADESH   |<52 kg     |       0|    385|   537|
|6 months  |NIH-Birth      |BANGLADESH   |<52 kg     |       1|      4|   537|
|6 months  |NIH-Crypto     |BANGLADESH   |>=58 kg    |       0|    221|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |>=58 kg    |       1|      0|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |[52-58) kg |       0|    158|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |[52-58) kg |       1|      0|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |<52 kg     |       0|    335|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |<52 kg     |       1|      0|   714|
|6 months  |PROBIT         |BELARUS      |>=58 kg    |       0|   9786| 13135|
|6 months  |PROBIT         |BELARUS      |>=58 kg    |       1|      5| 13135|
|6 months  |PROBIT         |BELARUS      |[52-58) kg |       0|   2228| 13135|
|6 months  |PROBIT         |BELARUS      |[52-58) kg |       1|      0| 13135|
|6 months  |PROBIT         |BELARUS      |<52 kg     |       0|   1115| 13135|
|6 months  |PROBIT         |BELARUS      |<52 kg     |       1|      1| 13135|
|6 months  |PROVIDE        |BANGLADESH   |>=58 kg    |       0|    123|   602|
|6 months  |PROVIDE        |BANGLADESH   |>=58 kg    |       1|      0|   602|
|6 months  |PROVIDE        |BANGLADESH   |[52-58) kg |       0|    121|   602|
|6 months  |PROVIDE        |BANGLADESH   |[52-58) kg |       1|      1|   602|
|6 months  |PROVIDE        |BANGLADESH   |<52 kg     |       0|    353|   602|
|6 months  |PROVIDE        |BANGLADESH   |<52 kg     |       1|      4|   602|
|6 months  |SAS-CompFeed   |INDIA        |>=58 kg    |       0|    130|  1334|
|6 months  |SAS-CompFeed   |INDIA        |>=58 kg    |       1|      3|  1334|
|6 months  |SAS-CompFeed   |INDIA        |[52-58) kg |       0|    203|  1334|
|6 months  |SAS-CompFeed   |INDIA        |[52-58) kg |       1|      7|  1334|
|6 months  |SAS-CompFeed   |INDIA        |<52 kg     |       0|    958|  1334|
|6 months  |SAS-CompFeed   |INDIA        |<52 kg     |       1|     33|  1334|
|6 months  |TanzaniaChild2 |TANZANIA     |>=58 kg    |       0|   1219|  2017|
|6 months  |TanzaniaChild2 |TANZANIA     |>=58 kg    |       1|      5|  2017|
|6 months  |TanzaniaChild2 |TANZANIA     |[52-58) kg |       0|    405|  2017|
|6 months  |TanzaniaChild2 |TANZANIA     |[52-58) kg |       1|      2|  2017|
|6 months  |TanzaniaChild2 |TANZANIA     |<52 kg     |       0|    381|  2017|
|6 months  |TanzaniaChild2 |TANZANIA     |<52 kg     |       1|      5|  2017|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=58 kg    |       0|   4080|  8036|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=58 kg    |       1|     32|  8036|
|6 months  |ZVITAMBO       |ZIMBABWE     |[52-58) kg |       0|   2151|  8036|
|6 months  |ZVITAMBO       |ZIMBABWE     |[52-58) kg |       1|     20|  8036|
|6 months  |ZVITAMBO       |ZIMBABWE     |<52 kg     |       0|   1730|  8036|
|6 months  |ZVITAMBO       |ZIMBABWE     |<52 kg     |       1|     23|  8036|
|24 months |JiVitA-3       |BANGLADESH   |>=58 kg    |       0|    205|  8596|
|24 months |JiVitA-3       |BANGLADESH   |>=58 kg    |       1|     11|  8596|
|24 months |JiVitA-3       |BANGLADESH   |[52-58) kg |       0|    556|  8596|
|24 months |JiVitA-3       |BANGLADESH   |[52-58) kg |       1|     19|  8596|
|24 months |JiVitA-3       |BANGLADESH   |<52 kg     |       0|   7501|  8596|
|24 months |JiVitA-3       |BANGLADESH   |<52 kg     |       1|    304|  8596|
|24 months |LCNI-5         |MALAWI       |>=58 kg    |       0|     71|   562|
|24 months |LCNI-5         |MALAWI       |>=58 kg    |       1|      0|   562|
|24 months |LCNI-5         |MALAWI       |[52-58) kg |       0|    146|   562|
|24 months |LCNI-5         |MALAWI       |[52-58) kg |       1|      0|   562|
|24 months |LCNI-5         |MALAWI       |<52 kg     |       0|    344|   562|
|24 months |LCNI-5         |MALAWI       |<52 kg     |       1|      1|   562|
|24 months |MAL-ED         |INDIA        |>=58 kg    |       0|     42|   225|
|24 months |MAL-ED         |INDIA        |>=58 kg    |       1|      0|   225|
|24 months |MAL-ED         |INDIA        |[52-58) kg |       0|     37|   225|
|24 months |MAL-ED         |INDIA        |[52-58) kg |       1|      0|   225|
|24 months |MAL-ED         |INDIA        |<52 kg     |       0|    144|   225|
|24 months |MAL-ED         |INDIA        |<52 kg     |       1|      2|   225|
|24 months |MAL-ED         |BANGLADESH   |>=58 kg    |       0|     40|   211|
|24 months |MAL-ED         |BANGLADESH   |>=58 kg    |       1|      0|   211|
|24 months |MAL-ED         |BANGLADESH   |[52-58) kg |       0|     46|   211|
|24 months |MAL-ED         |BANGLADESH   |[52-58) kg |       1|      0|   211|
|24 months |MAL-ED         |BANGLADESH   |<52 kg     |       0|    125|   211|
|24 months |MAL-ED         |BANGLADESH   |<52 kg     |       1|      0|   211|
|24 months |MAL-ED         |PERU         |>=58 kg    |       0|     93|   198|
|24 months |MAL-ED         |PERU         |>=58 kg    |       1|      0|   198|
|24 months |MAL-ED         |PERU         |[52-58) kg |       0|     47|   198|
|24 months |MAL-ED         |PERU         |[52-58) kg |       1|      0|   198|
|24 months |MAL-ED         |PERU         |<52 kg     |       0|     56|   198|
|24 months |MAL-ED         |PERU         |<52 kg     |       1|      2|   198|
|24 months |MAL-ED         |NEPAL        |>=58 kg    |       0|     88|   223|
|24 months |MAL-ED         |NEPAL        |>=58 kg    |       1|      0|   223|
|24 months |MAL-ED         |NEPAL        |[52-58) kg |       0|     64|   223|
|24 months |MAL-ED         |NEPAL        |[52-58) kg |       1|      0|   223|
|24 months |MAL-ED         |NEPAL        |<52 kg     |       0|     71|   223|
|24 months |MAL-ED         |NEPAL        |<52 kg     |       1|      0|   223|
|24 months |MAL-ED         |BRAZIL       |>=58 kg    |       0|    101|   169|
|24 months |MAL-ED         |BRAZIL       |>=58 kg    |       1|      1|   169|
|24 months |MAL-ED         |BRAZIL       |[52-58) kg |       0|     29|   169|
|24 months |MAL-ED         |BRAZIL       |[52-58) kg |       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |<52 kg     |       0|     38|   169|
|24 months |MAL-ED         |BRAZIL       |<52 kg     |       1|      0|   169|
|24 months |MAL-ED         |TANZANIA     |>=58 kg    |       0|     83|   206|
|24 months |MAL-ED         |TANZANIA     |>=58 kg    |       1|      0|   206|
|24 months |MAL-ED         |TANZANIA     |[52-58) kg |       0|     48|   206|
|24 months |MAL-ED         |TANZANIA     |[52-58) kg |       1|      0|   206|
|24 months |MAL-ED         |TANZANIA     |<52 kg     |       0|     75|   206|
|24 months |MAL-ED         |TANZANIA     |<52 kg     |       1|      0|   206|
|24 months |MAL-ED         |SOUTH AFRICA |>=58 kg    |       0|    176|   232|
|24 months |MAL-ED         |SOUTH AFRICA |>=58 kg    |       1|      0|   232|
|24 months |MAL-ED         |SOUTH AFRICA |[52-58) kg |       0|     29|   232|
|24 months |MAL-ED         |SOUTH AFRICA |[52-58) kg |       1|      0|   232|
|24 months |MAL-ED         |SOUTH AFRICA |<52 kg     |       0|     27|   232|
|24 months |MAL-ED         |SOUTH AFRICA |<52 kg     |       1|      0|   232|
|24 months |NIH-Birth      |BANGLADESH   |>=58 kg    |       0|     59|   428|
|24 months |NIH-Birth      |BANGLADESH   |>=58 kg    |       1|      1|   428|
|24 months |NIH-Birth      |BANGLADESH   |[52-58) kg |       0|     59|   428|
|24 months |NIH-Birth      |BANGLADESH   |[52-58) kg |       1|      0|   428|
|24 months |NIH-Birth      |BANGLADESH   |<52 kg     |       0|    300|   428|
|24 months |NIH-Birth      |BANGLADESH   |<52 kg     |       1|      9|   428|
|24 months |NIH-Crypto     |BANGLADESH   |>=58 kg    |       0|    165|   513|
|24 months |NIH-Crypto     |BANGLADESH   |>=58 kg    |       1|      0|   513|
|24 months |NIH-Crypto     |BANGLADESH   |[52-58) kg |       0|    105|   513|
|24 months |NIH-Crypto     |BANGLADESH   |[52-58) kg |       1|      2|   513|
|24 months |NIH-Crypto     |BANGLADESH   |<52 kg     |       0|    239|   513|
|24 months |NIH-Crypto     |BANGLADESH   |<52 kg     |       1|      2|   513|
|24 months |PROBIT         |BELARUS      |>=58 kg    |       0|   2949|  3949|
|24 months |PROBIT         |BELARUS      |>=58 kg    |       1|      3|  3949|
|24 months |PROBIT         |BELARUS      |[52-58) kg |       0|    659|  3949|
|24 months |PROBIT         |BELARUS      |[52-58) kg |       1|      2|  3949|
|24 months |PROBIT         |BELARUS      |<52 kg     |       0|    334|  3949|
|24 months |PROBIT         |BELARUS      |<52 kg     |       1|      2|  3949|
|24 months |PROVIDE        |BANGLADESH   |>=58 kg    |       0|    126|   579|
|24 months |PROVIDE        |BANGLADESH   |>=58 kg    |       1|      0|   579|
|24 months |PROVIDE        |BANGLADESH   |[52-58) kg |       0|    118|   579|
|24 months |PROVIDE        |BANGLADESH   |[52-58) kg |       1|      1|   579|
|24 months |PROVIDE        |BANGLADESH   |<52 kg     |       0|    326|   579|
|24 months |PROVIDE        |BANGLADESH   |<52 kg     |       1|      8|   579|
|24 months |TanzaniaChild2 |TANZANIA     |>=58 kg    |       0|      3|     6|
|24 months |TanzaniaChild2 |TANZANIA     |>=58 kg    |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |[52-58) kg |       0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |[52-58) kg |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |<52 kg     |       0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |<52 kg     |       1|      0|     6|
|24 months |ZVITAMBO       |ZIMBABWE     |>=58 kg    |       0|    146|   419|
|24 months |ZVITAMBO       |ZIMBABWE     |>=58 kg    |       1|     15|   419|
|24 months |ZVITAMBO       |ZIMBABWE     |[52-58) kg |       0|    112|   419|
|24 months |ZVITAMBO       |ZIMBABWE     |[52-58) kg |       1|      4|   419|
|24 months |ZVITAMBO       |ZIMBABWE     |<52 kg     |       0|    131|   419|
|24 months |ZVITAMBO       |ZIMBABWE     |<52 kg     |       1|     11|   419|


The following strata were considered:

* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


