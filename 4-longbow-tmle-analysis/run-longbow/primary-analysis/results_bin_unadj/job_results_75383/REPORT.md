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

**Outcome Variable:** sstunted

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

|agecat    |studyid        |country      |mwtkg      | sstunted| n_cell|     n|
|:---------|:--------------|:------------|:----------|--------:|------:|-----:|
|Birth     |JiVitA-3       |BANGLADESH   |>=58 kg    |        0|    486| 22420|
|Birth     |JiVitA-3       |BANGLADESH   |>=58 kg    |        1|     44| 22420|
|Birth     |JiVitA-3       |BANGLADESH   |[52-58) kg |        0|   1396| 22420|
|Birth     |JiVitA-3       |BANGLADESH   |[52-58) kg |        1|    140| 22420|
|Birth     |JiVitA-3       |BANGLADESH   |<52 kg     |        0|  18092| 22420|
|Birth     |JiVitA-3       |BANGLADESH   |<52 kg     |        1|   2262| 22420|
|Birth     |MAL-ED         |INDIA        |>=58 kg    |        0|     11|    47|
|Birth     |MAL-ED         |INDIA        |>=58 kg    |        1|      0|    47|
|Birth     |MAL-ED         |INDIA        |[52-58) kg |        0|      7|    47|
|Birth     |MAL-ED         |INDIA        |[52-58) kg |        1|      1|    47|
|Birth     |MAL-ED         |INDIA        |<52 kg     |        0|     27|    47|
|Birth     |MAL-ED         |INDIA        |<52 kg     |        1|      1|    47|
|Birth     |MAL-ED         |BANGLADESH   |>=58 kg    |        0|     41|   229|
|Birth     |MAL-ED         |BANGLADESH   |>=58 kg    |        1|      0|   229|
|Birth     |MAL-ED         |BANGLADESH   |[52-58) kg |        0|     51|   229|
|Birth     |MAL-ED         |BANGLADESH   |[52-58) kg |        1|      2|   229|
|Birth     |MAL-ED         |BANGLADESH   |<52 kg     |        0|    128|   229|
|Birth     |MAL-ED         |BANGLADESH   |<52 kg     |        1|      7|   229|
|Birth     |MAL-ED         |PERU         |>=58 kg    |        0|     99|   229|
|Birth     |MAL-ED         |PERU         |>=58 kg    |        1|      1|   229|
|Birth     |MAL-ED         |PERU         |[52-58) kg |        0|     59|   229|
|Birth     |MAL-ED         |PERU         |[52-58) kg |        1|      0|   229|
|Birth     |MAL-ED         |PERU         |<52 kg     |        0|     67|   229|
|Birth     |MAL-ED         |PERU         |<52 kg     |        1|      3|   229|
|Birth     |MAL-ED         |NEPAL        |>=58 kg    |        0|     10|    27|
|Birth     |MAL-ED         |NEPAL        |>=58 kg    |        1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |[52-58) kg |        0|      8|    27|
|Birth     |MAL-ED         |NEPAL        |[52-58) kg |        1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |<52 kg     |        0|      8|    27|
|Birth     |MAL-ED         |NEPAL        |<52 kg     |        1|      1|    27|
|Birth     |MAL-ED         |BRAZIL       |>=58 kg    |        0|     39|    65|
|Birth     |MAL-ED         |BRAZIL       |>=58 kg    |        1|      2|    65|
|Birth     |MAL-ED         |BRAZIL       |[52-58) kg |        0|     10|    65|
|Birth     |MAL-ED         |BRAZIL       |[52-58) kg |        1|      1|    65|
|Birth     |MAL-ED         |BRAZIL       |<52 kg     |        0|     13|    65|
|Birth     |MAL-ED         |BRAZIL       |<52 kg     |        1|      0|    65|
|Birth     |MAL-ED         |TANZANIA     |>=58 kg    |        0|     45|   120|
|Birth     |MAL-ED         |TANZANIA     |>=58 kg    |        1|      3|   120|
|Birth     |MAL-ED         |TANZANIA     |[52-58) kg |        0|     27|   120|
|Birth     |MAL-ED         |TANZANIA     |[52-58) kg |        1|      1|   120|
|Birth     |MAL-ED         |TANZANIA     |<52 kg     |        0|     38|   120|
|Birth     |MAL-ED         |TANZANIA     |<52 kg     |        1|      6|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |>=58 kg    |        0|     80|   112|
|Birth     |MAL-ED         |SOUTH AFRICA |>=58 kg    |        1|      2|   112|
|Birth     |MAL-ED         |SOUTH AFRICA |[52-58) kg |        0|     13|   112|
|Birth     |MAL-ED         |SOUTH AFRICA |[52-58) kg |        1|      0|   112|
|Birth     |MAL-ED         |SOUTH AFRICA |<52 kg     |        0|     17|   112|
|Birth     |MAL-ED         |SOUTH AFRICA |<52 kg     |        1|      0|   112|
|Birth     |NIH-Birth      |BANGLADESH   |>=58 kg    |        0|     84|   608|
|Birth     |NIH-Birth      |BANGLADESH   |>=58 kg    |        1|      1|   608|
|Birth     |NIH-Birth      |BANGLADESH   |[52-58) kg |        0|     77|   608|
|Birth     |NIH-Birth      |BANGLADESH   |[52-58) kg |        1|      1|   608|
|Birth     |NIH-Birth      |BANGLADESH   |<52 kg     |        0|    428|   608|
|Birth     |NIH-Birth      |BANGLADESH   |<52 kg     |        1|     17|   608|
|Birth     |NIH-Crypto     |BANGLADESH   |>=58 kg    |        0|    224|   731|
|Birth     |NIH-Crypto     |BANGLADESH   |>=58 kg    |        1|      2|   731|
|Birth     |NIH-Crypto     |BANGLADESH   |[52-58) kg |        0|    155|   731|
|Birth     |NIH-Crypto     |BANGLADESH   |[52-58) kg |        1|      5|   731|
|Birth     |NIH-Crypto     |BANGLADESH   |<52 kg     |        0|    342|   731|
|Birth     |NIH-Crypto     |BANGLADESH   |<52 kg     |        1|      3|   731|
|Birth     |PROBIT         |BELARUS      |>=58 kg    |        0|  10274| 13770|
|Birth     |PROBIT         |BELARUS      |>=58 kg    |        1|      2| 13770|
|Birth     |PROBIT         |BELARUS      |[52-58) kg |        0|   2337| 13770|
|Birth     |PROBIT         |BELARUS      |[52-58) kg |        1|      2| 13770|
|Birth     |PROBIT         |BELARUS      |<52 kg     |        0|   1154| 13770|
|Birth     |PROBIT         |BELARUS      |<52 kg     |        1|      1| 13770|
|Birth     |PROVIDE        |BANGLADESH   |>=58 kg    |        0|    112|   532|
|Birth     |PROVIDE        |BANGLADESH   |>=58 kg    |        1|      0|   532|
|Birth     |PROVIDE        |BANGLADESH   |[52-58) kg |        0|    114|   532|
|Birth     |PROVIDE        |BANGLADESH   |[52-58) kg |        1|      1|   532|
|Birth     |PROVIDE        |BANGLADESH   |<52 kg     |        0|    302|   532|
|Birth     |PROVIDE        |BANGLADESH   |<52 kg     |        1|      3|   532|
|Birth     |SAS-CompFeed   |INDIA        |>=58 kg    |        0|    124|  1252|
|Birth     |SAS-CompFeed   |INDIA        |>=58 kg    |        1|      1|  1252|
|Birth     |SAS-CompFeed   |INDIA        |[52-58) kg |        0|    177|  1252|
|Birth     |SAS-CompFeed   |INDIA        |[52-58) kg |        1|     14|  1252|
|Birth     |SAS-CompFeed   |INDIA        |<52 kg     |        0|    860|  1252|
|Birth     |SAS-CompFeed   |INDIA        |<52 kg     |        1|     76|  1252|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=58 kg    |        0|   5411| 10896|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=58 kg    |        1|    119| 10896|
|Birth     |ZVITAMBO       |ZIMBABWE     |[52-58) kg |        0|   2846| 10896|
|Birth     |ZVITAMBO       |ZIMBABWE     |[52-58) kg |        1|     94| 10896|
|Birth     |ZVITAMBO       |ZIMBABWE     |<52 kg     |        0|   2323| 10896|
|Birth     |ZVITAMBO       |ZIMBABWE     |<52 kg     |        1|    103| 10896|
|6 months  |JiVitA-3       |BANGLADESH   |>=58 kg    |        0|    406| 16796|
|6 months  |JiVitA-3       |BANGLADESH   |>=58 kg    |        1|     23| 16796|
|6 months  |JiVitA-3       |BANGLADESH   |[52-58) kg |        0|   1113| 16796|
|6 months  |JiVitA-3       |BANGLADESH   |[52-58) kg |        1|     67| 16796|
|6 months  |JiVitA-3       |BANGLADESH   |<52 kg     |        0|  14258| 16796|
|6 months  |JiVitA-3       |BANGLADESH   |<52 kg     |        1|    929| 16796|
|6 months  |LCNI-5         |MALAWI       |>=58 kg    |        0|    102|   837|
|6 months  |LCNI-5         |MALAWI       |>=58 kg    |        1|      7|   837|
|6 months  |LCNI-5         |MALAWI       |[52-58) kg |        0|    198|   837|
|6 months  |LCNI-5         |MALAWI       |[52-58) kg |        1|     14|   837|
|6 months  |LCNI-5         |MALAWI       |<52 kg     |        0|    466|   837|
|6 months  |LCNI-5         |MALAWI       |<52 kg     |        1|     50|   837|
|6 months  |MAL-ED         |INDIA        |>=58 kg    |        0|     43|   234|
|6 months  |MAL-ED         |INDIA        |>=58 kg    |        1|      1|   234|
|6 months  |MAL-ED         |INDIA        |[52-58) kg |        0|     35|   234|
|6 months  |MAL-ED         |INDIA        |[52-58) kg |        1|      3|   234|
|6 months  |MAL-ED         |INDIA        |<52 kg     |        0|    147|   234|
|6 months  |MAL-ED         |INDIA        |<52 kg     |        1|      5|   234|
|6 months  |MAL-ED         |BANGLADESH   |>=58 kg    |        0|     44|   240|
|6 months  |MAL-ED         |BANGLADESH   |>=58 kg    |        1|      1|   240|
|6 months  |MAL-ED         |BANGLADESH   |[52-58) kg |        0|     53|   240|
|6 months  |MAL-ED         |BANGLADESH   |[52-58) kg |        1|      0|   240|
|6 months  |MAL-ED         |BANGLADESH   |<52 kg     |        0|    135|   240|
|6 months  |MAL-ED         |BANGLADESH   |<52 kg     |        1|      7|   240|
|6 months  |MAL-ED         |PERU         |>=58 kg    |        0|    120|   270|
|6 months  |MAL-ED         |PERU         |>=58 kg    |        1|      3|   270|
|6 months  |MAL-ED         |PERU         |[52-58) kg |        0|     62|   270|
|6 months  |MAL-ED         |PERU         |[52-58) kg |        1|      3|   270|
|6 months  |MAL-ED         |PERU         |<52 kg     |        0|     78|   270|
|6 months  |MAL-ED         |PERU         |<52 kg     |        1|      4|   270|
|6 months  |MAL-ED         |NEPAL        |>=58 kg    |        0|     91|   231|
|6 months  |MAL-ED         |NEPAL        |>=58 kg    |        1|      0|   231|
|6 months  |MAL-ED         |NEPAL        |[52-58) kg |        0|     68|   231|
|6 months  |MAL-ED         |NEPAL        |[52-58) kg |        1|      1|   231|
|6 months  |MAL-ED         |NEPAL        |<52 kg     |        0|     71|   231|
|6 months  |MAL-ED         |NEPAL        |<52 kg     |        1|      0|   231|
|6 months  |MAL-ED         |BRAZIL       |>=58 kg    |        0|    127|   209|
|6 months  |MAL-ED         |BRAZIL       |>=58 kg    |        1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |[52-58) kg |        0|     31|   209|
|6 months  |MAL-ED         |BRAZIL       |[52-58) kg |        1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |<52 kg     |        0|     51|   209|
|6 months  |MAL-ED         |BRAZIL       |<52 kg     |        1|      0|   209|
|6 months  |MAL-ED         |TANZANIA     |>=58 kg    |        0|     91|   239|
|6 months  |MAL-ED         |TANZANIA     |>=58 kg    |        1|      5|   239|
|6 months  |MAL-ED         |TANZANIA     |[52-58) kg |        0|     57|   239|
|6 months  |MAL-ED         |TANZANIA     |[52-58) kg |        1|      2|   239|
|6 months  |MAL-ED         |TANZANIA     |<52 kg     |        0|     77|   239|
|6 months  |MAL-ED         |TANZANIA     |<52 kg     |        1|      7|   239|
|6 months  |MAL-ED         |SOUTH AFRICA |>=58 kg    |        0|    181|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |>=58 kg    |        1|      4|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |[52-58) kg |        0|     29|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |[52-58) kg |        1|      1|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |<52 kg     |        0|     30|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |<52 kg     |        1|      1|   246|
|6 months  |NIH-Birth      |BANGLADESH   |>=58 kg    |        0|     73|   537|
|6 months  |NIH-Birth      |BANGLADESH   |>=58 kg    |        1|      2|   537|
|6 months  |NIH-Birth      |BANGLADESH   |[52-58) kg |        0|     73|   537|
|6 months  |NIH-Birth      |BANGLADESH   |[52-58) kg |        1|      0|   537|
|6 months  |NIH-Birth      |BANGLADESH   |<52 kg     |        0|    356|   537|
|6 months  |NIH-Birth      |BANGLADESH   |<52 kg     |        1|     33|   537|
|6 months  |NIH-Crypto     |BANGLADESH   |>=58 kg    |        0|    217|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |>=58 kg    |        1|      4|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |[52-58) kg |        0|    152|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |[52-58) kg |        1|      6|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |<52 kg     |        0|    322|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |<52 kg     |        1|     13|   714|
|6 months  |PROBIT         |BELARUS      |>=58 kg    |        0|   9699| 13137|
|6 months  |PROBIT         |BELARUS      |>=58 kg    |        1|     93| 13137|
|6 months  |PROBIT         |BELARUS      |[52-58) kg |        0|   2205| 13137|
|6 months  |PROBIT         |BELARUS      |[52-58) kg |        1|     24| 13137|
|6 months  |PROBIT         |BELARUS      |<52 kg     |        0|   1097| 13137|
|6 months  |PROBIT         |BELARUS      |<52 kg     |        1|     19| 13137|
|6 months  |PROVIDE        |BANGLADESH   |>=58 kg    |        0|    122|   603|
|6 months  |PROVIDE        |BANGLADESH   |>=58 kg    |        1|      2|   603|
|6 months  |PROVIDE        |BANGLADESH   |[52-58) kg |        0|    120|   603|
|6 months  |PROVIDE        |BANGLADESH   |[52-58) kg |        1|      2|   603|
|6 months  |PROVIDE        |BANGLADESH   |<52 kg     |        0|    347|   603|
|6 months  |PROVIDE        |BANGLADESH   |<52 kg     |        1|     10|   603|
|6 months  |SAS-CompFeed   |INDIA        |>=58 kg    |        0|    127|  1336|
|6 months  |SAS-CompFeed   |INDIA        |>=58 kg    |        1|      6|  1336|
|6 months  |SAS-CompFeed   |INDIA        |[52-58) kg |        0|    201|  1336|
|6 months  |SAS-CompFeed   |INDIA        |[52-58) kg |        1|      8|  1336|
|6 months  |SAS-CompFeed   |INDIA        |<52 kg     |        0|    880|  1336|
|6 months  |SAS-CompFeed   |INDIA        |<52 kg     |        1|    114|  1336|
|6 months  |TanzaniaChild2 |TANZANIA     |>=58 kg    |        0|   1215|  2018|
|6 months  |TanzaniaChild2 |TANZANIA     |>=58 kg    |        1|      9|  2018|
|6 months  |TanzaniaChild2 |TANZANIA     |[52-58) kg |        0|    404|  2018|
|6 months  |TanzaniaChild2 |TANZANIA     |[52-58) kg |        1|      3|  2018|
|6 months  |TanzaniaChild2 |TANZANIA     |<52 kg     |        0|    380|  2018|
|6 months  |TanzaniaChild2 |TANZANIA     |<52 kg     |        1|      7|  2018|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=58 kg    |        0|   4101|  8178|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=58 kg    |        1|    115|  8178|
|6 months  |ZVITAMBO       |ZIMBABWE     |[52-58) kg |        0|   2099|  8178|
|6 months  |ZVITAMBO       |ZIMBABWE     |[52-58) kg |        1|     95|  8178|
|6 months  |ZVITAMBO       |ZIMBABWE     |<52 kg     |        0|   1655|  8178|
|6 months  |ZVITAMBO       |ZIMBABWE     |<52 kg     |        1|    113|  8178|
|24 months |JiVitA-3       |BANGLADESH   |>=58 kg    |        0|    186|  8625|
|24 months |JiVitA-3       |BANGLADESH   |>=58 kg    |        1|     32|  8625|
|24 months |JiVitA-3       |BANGLADESH   |[52-58) kg |        0|    490|  8625|
|24 months |JiVitA-3       |BANGLADESH   |[52-58) kg |        1|     88|  8625|
|24 months |JiVitA-3       |BANGLADESH   |<52 kg     |        0|   6605|  8625|
|24 months |JiVitA-3       |BANGLADESH   |<52 kg     |        1|   1224|  8625|
|24 months |LCNI-5         |MALAWI       |>=58 kg    |        0|     71|   578|
|24 months |LCNI-5         |MALAWI       |>=58 kg    |        1|      3|   578|
|24 months |LCNI-5         |MALAWI       |[52-58) kg |        0|    137|   578|
|24 months |LCNI-5         |MALAWI       |[52-58) kg |        1|     12|   578|
|24 months |LCNI-5         |MALAWI       |<52 kg     |        0|    300|   578|
|24 months |LCNI-5         |MALAWI       |<52 kg     |        1|     55|   578|
|24 months |MAL-ED         |INDIA        |>=58 kg    |        0|     39|   225|
|24 months |MAL-ED         |INDIA        |>=58 kg    |        1|      3|   225|
|24 months |MAL-ED         |INDIA        |[52-58) kg |        0|     28|   225|
|24 months |MAL-ED         |INDIA        |[52-58) kg |        1|      9|   225|
|24 months |MAL-ED         |INDIA        |<52 kg     |        0|    128|   225|
|24 months |MAL-ED         |INDIA        |<52 kg     |        1|     18|   225|
|24 months |MAL-ED         |BANGLADESH   |>=58 kg    |        0|     39|   211|
|24 months |MAL-ED         |BANGLADESH   |>=58 kg    |        1|      1|   211|
|24 months |MAL-ED         |BANGLADESH   |[52-58) kg |        0|     43|   211|
|24 months |MAL-ED         |BANGLADESH   |[52-58) kg |        1|      3|   211|
|24 months |MAL-ED         |BANGLADESH   |<52 kg     |        0|    101|   211|
|24 months |MAL-ED         |BANGLADESH   |<52 kg     |        1|     24|   211|
|24 months |MAL-ED         |PERU         |>=58 kg    |        0|     88|   198|
|24 months |MAL-ED         |PERU         |>=58 kg    |        1|      5|   198|
|24 months |MAL-ED         |PERU         |[52-58) kg |        0|     44|   198|
|24 months |MAL-ED         |PERU         |[52-58) kg |        1|      3|   198|
|24 months |MAL-ED         |PERU         |<52 kg     |        0|     52|   198|
|24 months |MAL-ED         |PERU         |<52 kg     |        1|      6|   198|
|24 months |MAL-ED         |NEPAL        |>=58 kg    |        0|     86|   223|
|24 months |MAL-ED         |NEPAL        |>=58 kg    |        1|      2|   223|
|24 months |MAL-ED         |NEPAL        |[52-58) kg |        0|     64|   223|
|24 months |MAL-ED         |NEPAL        |[52-58) kg |        1|      0|   223|
|24 months |MAL-ED         |NEPAL        |<52 kg     |        0|     66|   223|
|24 months |MAL-ED         |NEPAL        |<52 kg     |        1|      5|   223|
|24 months |MAL-ED         |BRAZIL       |>=58 kg    |        0|    102|   169|
|24 months |MAL-ED         |BRAZIL       |>=58 kg    |        1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |[52-58) kg |        0|     28|   169|
|24 months |MAL-ED         |BRAZIL       |[52-58) kg |        1|      1|   169|
|24 months |MAL-ED         |BRAZIL       |<52 kg     |        0|     38|   169|
|24 months |MAL-ED         |BRAZIL       |<52 kg     |        1|      0|   169|
|24 months |MAL-ED         |TANZANIA     |>=58 kg    |        0|     60|   206|
|24 months |MAL-ED         |TANZANIA     |>=58 kg    |        1|     23|   206|
|24 months |MAL-ED         |TANZANIA     |[52-58) kg |        0|     34|   206|
|24 months |MAL-ED         |TANZANIA     |[52-58) kg |        1|     14|   206|
|24 months |MAL-ED         |TANZANIA     |<52 kg     |        0|     45|   206|
|24 months |MAL-ED         |TANZANIA     |<52 kg     |        1|     30|   206|
|24 months |MAL-ED         |SOUTH AFRICA |>=58 kg    |        0|    158|   232|
|24 months |MAL-ED         |SOUTH AFRICA |>=58 kg    |        1|     18|   232|
|24 months |MAL-ED         |SOUTH AFRICA |[52-58) kg |        0|     25|   232|
|24 months |MAL-ED         |SOUTH AFRICA |[52-58) kg |        1|      4|   232|
|24 months |MAL-ED         |SOUTH AFRICA |<52 kg     |        0|     24|   232|
|24 months |MAL-ED         |SOUTH AFRICA |<52 kg     |        1|      3|   232|
|24 months |NIH-Birth      |BANGLADESH   |>=58 kg    |        0|     51|   429|
|24 months |NIH-Birth      |BANGLADESH   |>=58 kg    |        1|     10|   429|
|24 months |NIH-Birth      |BANGLADESH   |[52-58) kg |        0|     53|   429|
|24 months |NIH-Birth      |BANGLADESH   |[52-58) kg |        1|      6|   429|
|24 months |NIH-Birth      |BANGLADESH   |<52 kg     |        0|    230|   429|
|24 months |NIH-Birth      |BANGLADESH   |<52 kg     |        1|     79|   429|
|24 months |NIH-Crypto     |BANGLADESH   |>=58 kg    |        0|    161|   513|
|24 months |NIH-Crypto     |BANGLADESH   |>=58 kg    |        1|      4|   513|
|24 months |NIH-Crypto     |BANGLADESH   |[52-58) kg |        0|     99|   513|
|24 months |NIH-Crypto     |BANGLADESH   |[52-58) kg |        1|      8|   513|
|24 months |NIH-Crypto     |BANGLADESH   |<52 kg     |        0|    217|   513|
|24 months |NIH-Crypto     |BANGLADESH   |<52 kg     |        1|     24|   513|
|24 months |PROBIT         |BELARUS      |>=58 kg    |        0|   2964|  4014|
|24 months |PROBIT         |BELARUS      |>=58 kg    |        1|     44|  4014|
|24 months |PROBIT         |BELARUS      |[52-58) kg |        0|    655|  4014|
|24 months |PROBIT         |BELARUS      |[52-58) kg |        1|     12|  4014|
|24 months |PROBIT         |BELARUS      |<52 kg     |        0|    330|  4014|
|24 months |PROBIT         |BELARUS      |<52 kg     |        1|      9|  4014|
|24 months |PROVIDE        |BANGLADESH   |>=58 kg    |        0|    123|   578|
|24 months |PROVIDE        |BANGLADESH   |>=58 kg    |        1|      2|   578|
|24 months |PROVIDE        |BANGLADESH   |[52-58) kg |        0|    115|   578|
|24 months |PROVIDE        |BANGLADESH   |[52-58) kg |        1|      4|   578|
|24 months |PROVIDE        |BANGLADESH   |<52 kg     |        0|    288|   578|
|24 months |PROVIDE        |BANGLADESH   |<52 kg     |        1|     46|   578|
|24 months |TanzaniaChild2 |TANZANIA     |>=58 kg    |        0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |>=58 kg    |        1|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |[52-58) kg |        0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |[52-58) kg |        1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |<52 kg     |        0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |<52 kg     |        1|      0|     6|
|24 months |ZVITAMBO       |ZIMBABWE     |>=58 kg    |        0|    745|  1587|
|24 months |ZVITAMBO       |ZIMBABWE     |>=58 kg    |        1|     55|  1587|
|24 months |ZVITAMBO       |ZIMBABWE     |[52-58) kg |        0|    378|  1587|
|24 months |ZVITAMBO       |ZIMBABWE     |[52-58) kg |        1|     52|  1587|
|24 months |ZVITAMBO       |ZIMBABWE     |<52 kg     |        0|    292|  1587|
|24 months |ZVITAMBO       |ZIMBABWE     |<52 kg     |        1|     65|  1587|


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
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
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
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
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


