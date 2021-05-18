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

**Outcome Variable:** wasted

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

|agecat    |studyid        |country      |mwtkg      | wasted| n_cell|     n|
|:---------|:--------------|:------------|:----------|------:|------:|-----:|
|Birth     |JiVitA-3       |BANGLADESH   |>=58 kg    |      0|    407| 17987|
|Birth     |JiVitA-3       |BANGLADESH   |>=58 kg    |      1|     48| 17987|
|Birth     |JiVitA-3       |BANGLADESH   |[52-58) kg |      0|   1137| 17987|
|Birth     |JiVitA-3       |BANGLADESH   |[52-58) kg |      1|    139| 17987|
|Birth     |JiVitA-3       |BANGLADESH   |<52 kg     |      0|  14471| 17987|
|Birth     |JiVitA-3       |BANGLADESH   |<52 kg     |      1|   1785| 17987|
|Birth     |MAL-ED         |INDIA        |>=58 kg    |      0|     10|    45|
|Birth     |MAL-ED         |INDIA        |>=58 kg    |      1|      1|    45|
|Birth     |MAL-ED         |INDIA        |[52-58) kg |      0|      7|    45|
|Birth     |MAL-ED         |INDIA        |[52-58) kg |      1|      0|    45|
|Birth     |MAL-ED         |INDIA        |<52 kg     |      0|     23|    45|
|Birth     |MAL-ED         |INDIA        |<52 kg     |      1|      4|    45|
|Birth     |MAL-ED         |BANGLADESH   |>=58 kg    |      0|     35|   214|
|Birth     |MAL-ED         |BANGLADESH   |>=58 kg    |      1|      5|   214|
|Birth     |MAL-ED         |BANGLADESH   |[52-58) kg |      0|     43|   214|
|Birth     |MAL-ED         |BANGLADESH   |[52-58) kg |      1|      8|   214|
|Birth     |MAL-ED         |BANGLADESH   |<52 kg     |      0|    101|   214|
|Birth     |MAL-ED         |BANGLADESH   |<52 kg     |      1|     22|   214|
|Birth     |MAL-ED         |PERU         |>=58 kg    |      0|     97|   224|
|Birth     |MAL-ED         |PERU         |>=58 kg    |      1|      2|   224|
|Birth     |MAL-ED         |PERU         |[52-58) kg |      0|     57|   224|
|Birth     |MAL-ED         |PERU         |[52-58) kg |      1|      1|   224|
|Birth     |MAL-ED         |PERU         |<52 kg     |      0|     65|   224|
|Birth     |MAL-ED         |PERU         |<52 kg     |      1|      2|   224|
|Birth     |MAL-ED         |NEPAL        |>=58 kg    |      0|     10|    26|
|Birth     |MAL-ED         |NEPAL        |>=58 kg    |      1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |[52-58) kg |      0|      8|    26|
|Birth     |MAL-ED         |NEPAL        |[52-58) kg |      1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |<52 kg     |      0|      6|    26|
|Birth     |MAL-ED         |NEPAL        |<52 kg     |      1|      2|    26|
|Birth     |MAL-ED         |BRAZIL       |>=58 kg    |      0|     38|    62|
|Birth     |MAL-ED         |BRAZIL       |>=58 kg    |      1|      2|    62|
|Birth     |MAL-ED         |BRAZIL       |[52-58) kg |      0|     10|    62|
|Birth     |MAL-ED         |BRAZIL       |[52-58) kg |      1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |<52 kg     |      0|     12|    62|
|Birth     |MAL-ED         |BRAZIL       |<52 kg     |      1|      0|    62|
|Birth     |MAL-ED         |TANZANIA     |>=58 kg    |      0|     45|   110|
|Birth     |MAL-ED         |TANZANIA     |>=58 kg    |      1|      0|   110|
|Birth     |MAL-ED         |TANZANIA     |[52-58) kg |      0|     26|   110|
|Birth     |MAL-ED         |TANZANIA     |[52-58) kg |      1|      1|   110|
|Birth     |MAL-ED         |TANZANIA     |<52 kg     |      0|     38|   110|
|Birth     |MAL-ED         |TANZANIA     |<52 kg     |      1|      0|   110|
|Birth     |MAL-ED         |SOUTH AFRICA |>=58 kg    |      0|     72|   109|
|Birth     |MAL-ED         |SOUTH AFRICA |>=58 kg    |      1|      8|   109|
|Birth     |MAL-ED         |SOUTH AFRICA |[52-58) kg |      0|     11|   109|
|Birth     |MAL-ED         |SOUTH AFRICA |[52-58) kg |      1|      2|   109|
|Birth     |MAL-ED         |SOUTH AFRICA |<52 kg     |      0|     15|   109|
|Birth     |MAL-ED         |SOUTH AFRICA |<52 kg     |      1|      1|   109|
|Birth     |NIH-Birth      |BANGLADESH   |>=58 kg    |      0|     68|   575|
|Birth     |NIH-Birth      |BANGLADESH   |>=58 kg    |      1|     16|   575|
|Birth     |NIH-Birth      |BANGLADESH   |[52-58) kg |      0|     55|   575|
|Birth     |NIH-Birth      |BANGLADESH   |[52-58) kg |      1|     20|   575|
|Birth     |NIH-Birth      |BANGLADESH   |<52 kg     |      0|    284|   575|
|Birth     |NIH-Birth      |BANGLADESH   |<52 kg     |      1|    132|   575|
|Birth     |NIH-Crypto     |BANGLADESH   |>=58 kg    |      0|    177|   706|
|Birth     |NIH-Crypto     |BANGLADESH   |>=58 kg    |      1|     45|   706|
|Birth     |NIH-Crypto     |BANGLADESH   |[52-58) kg |      0|    117|   706|
|Birth     |NIH-Crypto     |BANGLADESH   |[52-58) kg |      1|     34|   706|
|Birth     |NIH-Crypto     |BANGLADESH   |<52 kg     |      0|    241|   706|
|Birth     |NIH-Crypto     |BANGLADESH   |<52 kg     |      1|     92|   706|
|Birth     |PROBIT         |BELARUS      |>=58 kg    |      0|   8129| 13694|
|Birth     |PROBIT         |BELARUS      |>=58 kg    |      1|   2093| 13694|
|Birth     |PROBIT         |BELARUS      |[52-58) kg |      0|   1810| 13694|
|Birth     |PROBIT         |BELARUS      |[52-58) kg |      1|    515| 13694|
|Birth     |PROBIT         |BELARUS      |<52 kg     |      0|    878| 13694|
|Birth     |PROBIT         |BELARUS      |<52 kg     |      1|    269| 13694|
|Birth     |PROVIDE        |BANGLADESH   |>=58 kg    |      0|     87|   525|
|Birth     |PROVIDE        |BANGLADESH   |>=58 kg    |      1|     23|   525|
|Birth     |PROVIDE        |BANGLADESH   |[52-58) kg |      0|     95|   525|
|Birth     |PROVIDE        |BANGLADESH   |[52-58) kg |      1|     19|   525|
|Birth     |PROVIDE        |BANGLADESH   |<52 kg     |      0|    228|   525|
|Birth     |PROVIDE        |BANGLADESH   |<52 kg     |      1|     73|   525|
|Birth     |SAS-CompFeed   |INDIA        |>=58 kg    |      0|    113|  1103|
|Birth     |SAS-CompFeed   |INDIA        |>=58 kg    |      1|      7|  1103|
|Birth     |SAS-CompFeed   |INDIA        |[52-58) kg |      0|    157|  1103|
|Birth     |SAS-CompFeed   |INDIA        |[52-58) kg |      1|     13|  1103|
|Birth     |SAS-CompFeed   |INDIA        |<52 kg     |      0|    715|  1103|
|Birth     |SAS-CompFeed   |INDIA        |<52 kg     |      1|     98|  1103|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=58 kg    |      0|   4497| 10171|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=58 kg    |      1|    751| 10171|
|Birth     |ZVITAMBO       |ZIMBABWE     |[52-58) kg |      0|   2303| 10171|
|Birth     |ZVITAMBO       |ZIMBABWE     |[52-58) kg |      1|    414| 10171|
|Birth     |ZVITAMBO       |ZIMBABWE     |<52 kg     |      0|   1814| 10171|
|Birth     |ZVITAMBO       |ZIMBABWE     |<52 kg     |      1|    392| 10171|
|6 months  |JiVitA-3       |BANGLADESH   |>=58 kg    |      0|    395| 16769|
|6 months  |JiVitA-3       |BANGLADESH   |>=58 kg    |      1|     35| 16769|
|6 months  |JiVitA-3       |BANGLADESH   |[52-58) kg |      0|   1098| 16769|
|6 months  |JiVitA-3       |BANGLADESH   |[52-58) kg |      1|     81| 16769|
|6 months  |JiVitA-3       |BANGLADESH   |<52 kg     |      0|  13856| 16769|
|6 months  |JiVitA-3       |BANGLADESH   |<52 kg     |      1|   1304| 16769|
|6 months  |LCNI-5         |MALAWI       |>=58 kg    |      0|    107|   837|
|6 months  |LCNI-5         |MALAWI       |>=58 kg    |      1|      2|   837|
|6 months  |LCNI-5         |MALAWI       |[52-58) kg |      0|    209|   837|
|6 months  |LCNI-5         |MALAWI       |[52-58) kg |      1|      3|   837|
|6 months  |LCNI-5         |MALAWI       |<52 kg     |      0|    507|   837|
|6 months  |LCNI-5         |MALAWI       |<52 kg     |      1|      9|   837|
|6 months  |MAL-ED         |INDIA        |>=58 kg    |      0|     42|   234|
|6 months  |MAL-ED         |INDIA        |>=58 kg    |      1|      2|   234|
|6 months  |MAL-ED         |INDIA        |[52-58) kg |      0|     36|   234|
|6 months  |MAL-ED         |INDIA        |[52-58) kg |      1|      2|   234|
|6 months  |MAL-ED         |INDIA        |<52 kg     |      0|    137|   234|
|6 months  |MAL-ED         |INDIA        |<52 kg     |      1|     15|   234|
|6 months  |MAL-ED         |BANGLADESH   |>=58 kg    |      0|     43|   240|
|6 months  |MAL-ED         |BANGLADESH   |>=58 kg    |      1|      2|   240|
|6 months  |MAL-ED         |BANGLADESH   |[52-58) kg |      0|     53|   240|
|6 months  |MAL-ED         |BANGLADESH   |[52-58) kg |      1|      0|   240|
|6 months  |MAL-ED         |BANGLADESH   |<52 kg     |      0|    137|   240|
|6 months  |MAL-ED         |BANGLADESH   |<52 kg     |      1|      5|   240|
|6 months  |MAL-ED         |PERU         |>=58 kg    |      0|    123|   270|
|6 months  |MAL-ED         |PERU         |>=58 kg    |      1|      0|   270|
|6 months  |MAL-ED         |PERU         |[52-58) kg |      0|     65|   270|
|6 months  |MAL-ED         |PERU         |[52-58) kg |      1|      0|   270|
|6 months  |MAL-ED         |PERU         |<52 kg     |      0|     82|   270|
|6 months  |MAL-ED         |PERU         |<52 kg     |      1|      0|   270|
|6 months  |MAL-ED         |NEPAL        |>=58 kg    |      0|     90|   231|
|6 months  |MAL-ED         |NEPAL        |>=58 kg    |      1|      1|   231|
|6 months  |MAL-ED         |NEPAL        |[52-58) kg |      0|     68|   231|
|6 months  |MAL-ED         |NEPAL        |[52-58) kg |      1|      1|   231|
|6 months  |MAL-ED         |NEPAL        |<52 kg     |      0|     70|   231|
|6 months  |MAL-ED         |NEPAL        |<52 kg     |      1|      1|   231|
|6 months  |MAL-ED         |BRAZIL       |>=58 kg    |      0|    126|   209|
|6 months  |MAL-ED         |BRAZIL       |>=58 kg    |      1|      1|   209|
|6 months  |MAL-ED         |BRAZIL       |[52-58) kg |      0|     31|   209|
|6 months  |MAL-ED         |BRAZIL       |[52-58) kg |      1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |<52 kg     |      0|     51|   209|
|6 months  |MAL-ED         |BRAZIL       |<52 kg     |      1|      0|   209|
|6 months  |MAL-ED         |TANZANIA     |>=58 kg    |      0|     96|   239|
|6 months  |MAL-ED         |TANZANIA     |>=58 kg    |      1|      0|   239|
|6 months  |MAL-ED         |TANZANIA     |[52-58) kg |      0|     59|   239|
|6 months  |MAL-ED         |TANZANIA     |[52-58) kg |      1|      0|   239|
|6 months  |MAL-ED         |TANZANIA     |<52 kg     |      0|     83|   239|
|6 months  |MAL-ED         |TANZANIA     |<52 kg     |      1|      1|   239|
|6 months  |MAL-ED         |SOUTH AFRICA |>=58 kg    |      0|    180|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |>=58 kg    |      1|      5|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |[52-58) kg |      0|     29|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |[52-58) kg |      1|      1|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |<52 kg     |      0|     30|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |<52 kg     |      1|      1|   246|
|6 months  |NIH-Birth      |BANGLADESH   |>=58 kg    |      0|     72|   537|
|6 months  |NIH-Birth      |BANGLADESH   |>=58 kg    |      1|      3|   537|
|6 months  |NIH-Birth      |BANGLADESH   |[52-58) kg |      0|     70|   537|
|6 months  |NIH-Birth      |BANGLADESH   |[52-58) kg |      1|      3|   537|
|6 months  |NIH-Birth      |BANGLADESH   |<52 kg     |      0|    360|   537|
|6 months  |NIH-Birth      |BANGLADESH   |<52 kg     |      1|     29|   537|
|6 months  |NIH-Crypto     |BANGLADESH   |>=58 kg    |      0|    215|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |>=58 kg    |      1|      6|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |[52-58) kg |      0|    155|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |[52-58) kg |      1|      3|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |<52 kg     |      0|    323|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |<52 kg     |      1|     12|   714|
|6 months  |PROBIT         |BELARUS      |>=58 kg    |      0|   9727| 13135|
|6 months  |PROBIT         |BELARUS      |>=58 kg    |      1|     64| 13135|
|6 months  |PROBIT         |BELARUS      |[52-58) kg |      0|   2213| 13135|
|6 months  |PROBIT         |BELARUS      |[52-58) kg |      1|     15| 13135|
|6 months  |PROBIT         |BELARUS      |<52 kg     |      0|   1107| 13135|
|6 months  |PROBIT         |BELARUS      |<52 kg     |      1|      9| 13135|
|6 months  |PROVIDE        |BANGLADESH   |>=58 kg    |      0|    118|   602|
|6 months  |PROVIDE        |BANGLADESH   |>=58 kg    |      1|      5|   602|
|6 months  |PROVIDE        |BANGLADESH   |[52-58) kg |      0|    119|   602|
|6 months  |PROVIDE        |BANGLADESH   |[52-58) kg |      1|      3|   602|
|6 months  |PROVIDE        |BANGLADESH   |<52 kg     |      0|    340|   602|
|6 months  |PROVIDE        |BANGLADESH   |<52 kg     |      1|     17|   602|
|6 months  |SAS-CompFeed   |INDIA        |>=58 kg    |      0|    123|  1334|
|6 months  |SAS-CompFeed   |INDIA        |>=58 kg    |      1|     10|  1334|
|6 months  |SAS-CompFeed   |INDIA        |[52-58) kg |      0|    180|  1334|
|6 months  |SAS-CompFeed   |INDIA        |[52-58) kg |      1|     30|  1334|
|6 months  |SAS-CompFeed   |INDIA        |<52 kg     |      0|    865|  1334|
|6 months  |SAS-CompFeed   |INDIA        |<52 kg     |      1|    126|  1334|
|6 months  |TanzaniaChild2 |TANZANIA     |>=58 kg    |      0|   1176|  2017|
|6 months  |TanzaniaChild2 |TANZANIA     |>=58 kg    |      1|     48|  2017|
|6 months  |TanzaniaChild2 |TANZANIA     |[52-58) kg |      0|    383|  2017|
|6 months  |TanzaniaChild2 |TANZANIA     |[52-58) kg |      1|     24|  2017|
|6 months  |TanzaniaChild2 |TANZANIA     |<52 kg     |      0|    371|  2017|
|6 months  |TanzaniaChild2 |TANZANIA     |<52 kg     |      1|     15|  2017|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=58 kg    |      0|   4007|  8036|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=58 kg    |      1|    105|  8036|
|6 months  |ZVITAMBO       |ZIMBABWE     |[52-58) kg |      0|   2106|  8036|
|6 months  |ZVITAMBO       |ZIMBABWE     |[52-58) kg |      1|     65|  8036|
|6 months  |ZVITAMBO       |ZIMBABWE     |<52 kg     |      0|   1670|  8036|
|6 months  |ZVITAMBO       |ZIMBABWE     |<52 kg     |      1|     83|  8036|
|24 months |JiVitA-3       |BANGLADESH   |>=58 kg    |      0|    170|  8596|
|24 months |JiVitA-3       |BANGLADESH   |>=58 kg    |      1|     46|  8596|
|24 months |JiVitA-3       |BANGLADESH   |[52-58) kg |      0|    460|  8596|
|24 months |JiVitA-3       |BANGLADESH   |[52-58) kg |      1|    115|  8596|
|24 months |JiVitA-3       |BANGLADESH   |<52 kg     |      0|   6092|  8596|
|24 months |JiVitA-3       |BANGLADESH   |<52 kg     |      1|   1713|  8596|
|24 months |LCNI-5         |MALAWI       |>=58 kg    |      0|     71|   562|
|24 months |LCNI-5         |MALAWI       |>=58 kg    |      1|      0|   562|
|24 months |LCNI-5         |MALAWI       |[52-58) kg |      0|    145|   562|
|24 months |LCNI-5         |MALAWI       |[52-58) kg |      1|      1|   562|
|24 months |LCNI-5         |MALAWI       |<52 kg     |      0|    336|   562|
|24 months |LCNI-5         |MALAWI       |<52 kg     |      1|      9|   562|
|24 months |MAL-ED         |INDIA        |>=58 kg    |      0|     40|   225|
|24 months |MAL-ED         |INDIA        |>=58 kg    |      1|      2|   225|
|24 months |MAL-ED         |INDIA        |[52-58) kg |      0|     34|   225|
|24 months |MAL-ED         |INDIA        |[52-58) kg |      1|      3|   225|
|24 months |MAL-ED         |INDIA        |<52 kg     |      0|    124|   225|
|24 months |MAL-ED         |INDIA        |<52 kg     |      1|     22|   225|
|24 months |MAL-ED         |BANGLADESH   |>=58 kg    |      0|     38|   211|
|24 months |MAL-ED         |BANGLADESH   |>=58 kg    |      1|      2|   211|
|24 months |MAL-ED         |BANGLADESH   |[52-58) kg |      0|     42|   211|
|24 months |MAL-ED         |BANGLADESH   |[52-58) kg |      1|      4|   211|
|24 months |MAL-ED         |BANGLADESH   |<52 kg     |      0|    111|   211|
|24 months |MAL-ED         |BANGLADESH   |<52 kg     |      1|     14|   211|
|24 months |MAL-ED         |PERU         |>=58 kg    |      0|     93|   198|
|24 months |MAL-ED         |PERU         |>=58 kg    |      1|      0|   198|
|24 months |MAL-ED         |PERU         |[52-58) kg |      0|     46|   198|
|24 months |MAL-ED         |PERU         |[52-58) kg |      1|      1|   198|
|24 months |MAL-ED         |PERU         |<52 kg     |      0|     55|   198|
|24 months |MAL-ED         |PERU         |<52 kg     |      1|      3|   198|
|24 months |MAL-ED         |NEPAL        |>=58 kg    |      0|     86|   223|
|24 months |MAL-ED         |NEPAL        |>=58 kg    |      1|      2|   223|
|24 months |MAL-ED         |NEPAL        |[52-58) kg |      0|     63|   223|
|24 months |MAL-ED         |NEPAL        |[52-58) kg |      1|      1|   223|
|24 months |MAL-ED         |NEPAL        |<52 kg     |      0|     69|   223|
|24 months |MAL-ED         |NEPAL        |<52 kg     |      1|      2|   223|
|24 months |MAL-ED         |BRAZIL       |>=58 kg    |      0|    100|   169|
|24 months |MAL-ED         |BRAZIL       |>=58 kg    |      1|      2|   169|
|24 months |MAL-ED         |BRAZIL       |[52-58) kg |      0|     28|   169|
|24 months |MAL-ED         |BRAZIL       |[52-58) kg |      1|      1|   169|
|24 months |MAL-ED         |BRAZIL       |<52 kg     |      0|     38|   169|
|24 months |MAL-ED         |BRAZIL       |<52 kg     |      1|      0|   169|
|24 months |MAL-ED         |TANZANIA     |>=58 kg    |      0|     82|   206|
|24 months |MAL-ED         |TANZANIA     |>=58 kg    |      1|      1|   206|
|24 months |MAL-ED         |TANZANIA     |[52-58) kg |      0|     48|   206|
|24 months |MAL-ED         |TANZANIA     |[52-58) kg |      1|      0|   206|
|24 months |MAL-ED         |TANZANIA     |<52 kg     |      0|     72|   206|
|24 months |MAL-ED         |TANZANIA     |<52 kg     |      1|      3|   206|
|24 months |MAL-ED         |SOUTH AFRICA |>=58 kg    |      0|    175|   232|
|24 months |MAL-ED         |SOUTH AFRICA |>=58 kg    |      1|      1|   232|
|24 months |MAL-ED         |SOUTH AFRICA |[52-58) kg |      0|     29|   232|
|24 months |MAL-ED         |SOUTH AFRICA |[52-58) kg |      1|      0|   232|
|24 months |MAL-ED         |SOUTH AFRICA |<52 kg     |      0|     27|   232|
|24 months |MAL-ED         |SOUTH AFRICA |<52 kg     |      1|      0|   232|
|24 months |NIH-Birth      |BANGLADESH   |>=58 kg    |      0|     59|   428|
|24 months |NIH-Birth      |BANGLADESH   |>=58 kg    |      1|      1|   428|
|24 months |NIH-Birth      |BANGLADESH   |[52-58) kg |      0|     55|   428|
|24 months |NIH-Birth      |BANGLADESH   |[52-58) kg |      1|      4|   428|
|24 months |NIH-Birth      |BANGLADESH   |<52 kg     |      0|    261|   428|
|24 months |NIH-Birth      |BANGLADESH   |<52 kg     |      1|     48|   428|
|24 months |NIH-Crypto     |BANGLADESH   |>=58 kg    |      0|    154|   513|
|24 months |NIH-Crypto     |BANGLADESH   |>=58 kg    |      1|     11|   513|
|24 months |NIH-Crypto     |BANGLADESH   |[52-58) kg |      0|     98|   513|
|24 months |NIH-Crypto     |BANGLADESH   |[52-58) kg |      1|      9|   513|
|24 months |NIH-Crypto     |BANGLADESH   |<52 kg     |      0|    216|   513|
|24 months |NIH-Crypto     |BANGLADESH   |<52 kg     |      1|     25|   513|
|24 months |PROBIT         |BELARUS      |>=58 kg    |      0|   2933|  3949|
|24 months |PROBIT         |BELARUS      |>=58 kg    |      1|     19|  3949|
|24 months |PROBIT         |BELARUS      |[52-58) kg |      0|    651|  3949|
|24 months |PROBIT         |BELARUS      |[52-58) kg |      1|     10|  3949|
|24 months |PROBIT         |BELARUS      |<52 kg     |      0|    333|  3949|
|24 months |PROBIT         |BELARUS      |<52 kg     |      1|      3|  3949|
|24 months |PROVIDE        |BANGLADESH   |>=58 kg    |      0|    117|   579|
|24 months |PROVIDE        |BANGLADESH   |>=58 kg    |      1|      9|   579|
|24 months |PROVIDE        |BANGLADESH   |[52-58) kg |      0|    112|   579|
|24 months |PROVIDE        |BANGLADESH   |[52-58) kg |      1|      7|   579|
|24 months |PROVIDE        |BANGLADESH   |<52 kg     |      0|    288|   579|
|24 months |PROVIDE        |BANGLADESH   |<52 kg     |      1|     46|   579|
|24 months |TanzaniaChild2 |TANZANIA     |>=58 kg    |      0|      3|     6|
|24 months |TanzaniaChild2 |TANZANIA     |>=58 kg    |      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |[52-58) kg |      0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |[52-58) kg |      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |<52 kg     |      0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |<52 kg     |      1|      0|     6|
|24 months |ZVITAMBO       |ZIMBABWE     |>=58 kg    |      0|    134|   419|
|24 months |ZVITAMBO       |ZIMBABWE     |>=58 kg    |      1|     27|   419|
|24 months |ZVITAMBO       |ZIMBABWE     |[52-58) kg |      0|    101|   419|
|24 months |ZVITAMBO       |ZIMBABWE     |[52-58) kg |      1|     15|   419|
|24 months |ZVITAMBO       |ZIMBABWE     |<52 kg     |      0|    111|   419|
|24 months |ZVITAMBO       |ZIMBABWE     |<52 kg     |      1|     31|   419|


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
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
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
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


