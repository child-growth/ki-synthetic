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

**Outcome Variable:** stunted

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

|agecat    |studyid        |country      |mwtkg      | stunted| n_cell|     n|
|:---------|:--------------|:------------|:----------|-------:|------:|-----:|
|Birth     |JiVitA-3       |BANGLADESH   |>=58 kg    |       0|    398| 22420|
|Birth     |JiVitA-3       |BANGLADESH   |>=58 kg    |       1|    132| 22420|
|Birth     |JiVitA-3       |BANGLADESH   |[52-58) kg |       0|   1093| 22420|
|Birth     |JiVitA-3       |BANGLADESH   |[52-58) kg |       1|    443| 22420|
|Birth     |JiVitA-3       |BANGLADESH   |<52 kg     |       0|  13557| 22420|
|Birth     |JiVitA-3       |BANGLADESH   |<52 kg     |       1|   6797| 22420|
|Birth     |MAL-ED         |INDIA        |>=58 kg    |       0|      9|    47|
|Birth     |MAL-ED         |INDIA        |>=58 kg    |       1|      2|    47|
|Birth     |MAL-ED         |INDIA        |[52-58) kg |       0|      5|    47|
|Birth     |MAL-ED         |INDIA        |[52-58) kg |       1|      3|    47|
|Birth     |MAL-ED         |INDIA        |<52 kg     |       0|     23|    47|
|Birth     |MAL-ED         |INDIA        |<52 kg     |       1|      5|    47|
|Birth     |MAL-ED         |BANGLADESH   |>=58 kg    |       0|     34|   229|
|Birth     |MAL-ED         |BANGLADESH   |>=58 kg    |       1|      7|   229|
|Birth     |MAL-ED         |BANGLADESH   |[52-58) kg |       0|     44|   229|
|Birth     |MAL-ED         |BANGLADESH   |[52-58) kg |       1|      9|   229|
|Birth     |MAL-ED         |BANGLADESH   |<52 kg     |       0|    108|   229|
|Birth     |MAL-ED         |BANGLADESH   |<52 kg     |       1|     27|   229|
|Birth     |MAL-ED         |PERU         |>=58 kg    |       0|     93|   229|
|Birth     |MAL-ED         |PERU         |>=58 kg    |       1|      7|   229|
|Birth     |MAL-ED         |PERU         |[52-58) kg |       0|     53|   229|
|Birth     |MAL-ED         |PERU         |[52-58) kg |       1|      6|   229|
|Birth     |MAL-ED         |PERU         |<52 kg     |       0|     57|   229|
|Birth     |MAL-ED         |PERU         |<52 kg     |       1|     13|   229|
|Birth     |MAL-ED         |NEPAL        |>=58 kg    |       0|     10|    27|
|Birth     |MAL-ED         |NEPAL        |>=58 kg    |       1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |[52-58) kg |       0|      8|    27|
|Birth     |MAL-ED         |NEPAL        |[52-58) kg |       1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |<52 kg     |       0|      7|    27|
|Birth     |MAL-ED         |NEPAL        |<52 kg     |       1|      2|    27|
|Birth     |MAL-ED         |BRAZIL       |>=58 kg    |       0|     37|    65|
|Birth     |MAL-ED         |BRAZIL       |>=58 kg    |       1|      4|    65|
|Birth     |MAL-ED         |BRAZIL       |[52-58) kg |       0|     10|    65|
|Birth     |MAL-ED         |BRAZIL       |[52-58) kg |       1|      1|    65|
|Birth     |MAL-ED         |BRAZIL       |<52 kg     |       0|      9|    65|
|Birth     |MAL-ED         |BRAZIL       |<52 kg     |       1|      4|    65|
|Birth     |MAL-ED         |TANZANIA     |>=58 kg    |       0|     38|   120|
|Birth     |MAL-ED         |TANZANIA     |>=58 kg    |       1|     10|   120|
|Birth     |MAL-ED         |TANZANIA     |[52-58) kg |       0|     26|   120|
|Birth     |MAL-ED         |TANZANIA     |[52-58) kg |       1|      2|   120|
|Birth     |MAL-ED         |TANZANIA     |<52 kg     |       0|     33|   120|
|Birth     |MAL-ED         |TANZANIA     |<52 kg     |       1|     11|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |>=58 kg    |       0|     75|   112|
|Birth     |MAL-ED         |SOUTH AFRICA |>=58 kg    |       1|      7|   112|
|Birth     |MAL-ED         |SOUTH AFRICA |[52-58) kg |       0|     11|   112|
|Birth     |MAL-ED         |SOUTH AFRICA |[52-58) kg |       1|      2|   112|
|Birth     |MAL-ED         |SOUTH AFRICA |<52 kg     |       0|     16|   112|
|Birth     |MAL-ED         |SOUTH AFRICA |<52 kg     |       1|      1|   112|
|Birth     |NIH-Birth      |BANGLADESH   |>=58 kg    |       0|     77|   608|
|Birth     |NIH-Birth      |BANGLADESH   |>=58 kg    |       1|      8|   608|
|Birth     |NIH-Birth      |BANGLADESH   |[52-58) kg |       0|     71|   608|
|Birth     |NIH-Birth      |BANGLADESH   |[52-58) kg |       1|      7|   608|
|Birth     |NIH-Birth      |BANGLADESH   |<52 kg     |       0|    363|   608|
|Birth     |NIH-Birth      |BANGLADESH   |<52 kg     |       1|     82|   608|
|Birth     |NIH-Crypto     |BANGLADESH   |>=58 kg    |       0|    207|   731|
|Birth     |NIH-Crypto     |BANGLADESH   |>=58 kg    |       1|     19|   731|
|Birth     |NIH-Crypto     |BANGLADESH   |[52-58) kg |       0|    138|   731|
|Birth     |NIH-Crypto     |BANGLADESH   |[52-58) kg |       1|     22|   731|
|Birth     |NIH-Crypto     |BANGLADESH   |<52 kg     |       0|    285|   731|
|Birth     |NIH-Crypto     |BANGLADESH   |<52 kg     |       1|     60|   731|
|Birth     |PROBIT         |BELARUS      |>=58 kg    |       0|  10254| 13770|
|Birth     |PROBIT         |BELARUS      |>=58 kg    |       1|     22| 13770|
|Birth     |PROBIT         |BELARUS      |[52-58) kg |       0|   2335| 13770|
|Birth     |PROBIT         |BELARUS      |[52-58) kg |       1|      4| 13770|
|Birth     |PROBIT         |BELARUS      |<52 kg     |       0|   1147| 13770|
|Birth     |PROBIT         |BELARUS      |<52 kg     |       1|      8| 13770|
|Birth     |PROVIDE        |BANGLADESH   |>=58 kg    |       0|    107|   532|
|Birth     |PROVIDE        |BANGLADESH   |>=58 kg    |       1|      5|   532|
|Birth     |PROVIDE        |BANGLADESH   |[52-58) kg |       0|    100|   532|
|Birth     |PROVIDE        |BANGLADESH   |[52-58) kg |       1|     15|   532|
|Birth     |PROVIDE        |BANGLADESH   |<52 kg     |       0|    277|   532|
|Birth     |PROVIDE        |BANGLADESH   |<52 kg     |       1|     28|   532|
|Birth     |SAS-CompFeed   |INDIA        |>=58 kg    |       0|    107|  1252|
|Birth     |SAS-CompFeed   |INDIA        |>=58 kg    |       1|     18|  1252|
|Birth     |SAS-CompFeed   |INDIA        |[52-58) kg |       0|    147|  1252|
|Birth     |SAS-CompFeed   |INDIA        |[52-58) kg |       1|     44|  1252|
|Birth     |SAS-CompFeed   |INDIA        |<52 kg     |       0|    649|  1252|
|Birth     |SAS-CompFeed   |INDIA        |<52 kg     |       1|    287|  1252|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=58 kg    |       0|   5103| 10896|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=58 kg    |       1|    427| 10896|
|Birth     |ZVITAMBO       |ZIMBABWE     |[52-58) kg |       0|   2611| 10896|
|Birth     |ZVITAMBO       |ZIMBABWE     |[52-58) kg |       1|    329| 10896|
|Birth     |ZVITAMBO       |ZIMBABWE     |<52 kg     |       0|   2101| 10896|
|Birth     |ZVITAMBO       |ZIMBABWE     |<52 kg     |       1|    325| 10896|
|6 months  |JiVitA-3       |BANGLADESH   |>=58 kg    |       0|    349| 16796|
|6 months  |JiVitA-3       |BANGLADESH   |>=58 kg    |       1|     80| 16796|
|6 months  |JiVitA-3       |BANGLADESH   |[52-58) kg |       0|    923| 16796|
|6 months  |JiVitA-3       |BANGLADESH   |[52-58) kg |       1|    257| 16796|
|6 months  |JiVitA-3       |BANGLADESH   |<52 kg     |       0|  11302| 16796|
|6 months  |JiVitA-3       |BANGLADESH   |<52 kg     |       1|   3885| 16796|
|6 months  |LCNI-5         |MALAWI       |>=58 kg    |       0|     83|   837|
|6 months  |LCNI-5         |MALAWI       |>=58 kg    |       1|     26|   837|
|6 months  |LCNI-5         |MALAWI       |[52-58) kg |       0|    151|   837|
|6 months  |LCNI-5         |MALAWI       |[52-58) kg |       1|     61|   837|
|6 months  |LCNI-5         |MALAWI       |<52 kg     |       0|    294|   837|
|6 months  |LCNI-5         |MALAWI       |<52 kg     |       1|    222|   837|
|6 months  |MAL-ED         |INDIA        |>=58 kg    |       0|     39|   234|
|6 months  |MAL-ED         |INDIA        |>=58 kg    |       1|      5|   234|
|6 months  |MAL-ED         |INDIA        |[52-58) kg |       0|     28|   234|
|6 months  |MAL-ED         |INDIA        |[52-58) kg |       1|     10|   234|
|6 months  |MAL-ED         |INDIA        |<52 kg     |       0|    122|   234|
|6 months  |MAL-ED         |INDIA        |<52 kg     |       1|     30|   234|
|6 months  |MAL-ED         |BANGLADESH   |>=58 kg    |       0|     36|   240|
|6 months  |MAL-ED         |BANGLADESH   |>=58 kg    |       1|      9|   240|
|6 months  |MAL-ED         |BANGLADESH   |[52-58) kg |       0|     51|   240|
|6 months  |MAL-ED         |BANGLADESH   |[52-58) kg |       1|      2|   240|
|6 months  |MAL-ED         |BANGLADESH   |<52 kg     |       0|    109|   240|
|6 months  |MAL-ED         |BANGLADESH   |<52 kg     |       1|     33|   240|
|6 months  |MAL-ED         |PERU         |>=58 kg    |       0|     98|   270|
|6 months  |MAL-ED         |PERU         |>=58 kg    |       1|     25|   270|
|6 months  |MAL-ED         |PERU         |[52-58) kg |       0|     53|   270|
|6 months  |MAL-ED         |PERU         |[52-58) kg |       1|     12|   270|
|6 months  |MAL-ED         |PERU         |<52 kg     |       0|     61|   270|
|6 months  |MAL-ED         |PERU         |<52 kg     |       1|     21|   270|
|6 months  |MAL-ED         |NEPAL        |>=58 kg    |       0|     87|   231|
|6 months  |MAL-ED         |NEPAL        |>=58 kg    |       1|      4|   231|
|6 months  |MAL-ED         |NEPAL        |[52-58) kg |       0|     67|   231|
|6 months  |MAL-ED         |NEPAL        |[52-58) kg |       1|      2|   231|
|6 months  |MAL-ED         |NEPAL        |<52 kg     |       0|     65|   231|
|6 months  |MAL-ED         |NEPAL        |<52 kg     |       1|      6|   231|
|6 months  |MAL-ED         |BRAZIL       |>=58 kg    |       0|    124|   209|
|6 months  |MAL-ED         |BRAZIL       |>=58 kg    |       1|      3|   209|
|6 months  |MAL-ED         |BRAZIL       |[52-58) kg |       0|     31|   209|
|6 months  |MAL-ED         |BRAZIL       |[52-58) kg |       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |<52 kg     |       0|     48|   209|
|6 months  |MAL-ED         |BRAZIL       |<52 kg     |       1|      3|   209|
|6 months  |MAL-ED         |TANZANIA     |>=58 kg    |       0|     74|   239|
|6 months  |MAL-ED         |TANZANIA     |>=58 kg    |       1|     22|   239|
|6 months  |MAL-ED         |TANZANIA     |[52-58) kg |       0|     45|   239|
|6 months  |MAL-ED         |TANZANIA     |[52-58) kg |       1|     14|   239|
|6 months  |MAL-ED         |TANZANIA     |<52 kg     |       0|     62|   239|
|6 months  |MAL-ED         |TANZANIA     |<52 kg     |       1|     22|   239|
|6 months  |MAL-ED         |SOUTH AFRICA |>=58 kg    |       0|    149|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |>=58 kg    |       1|     36|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |[52-58) kg |       0|     26|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |[52-58) kg |       1|      4|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |<52 kg     |       0|     24|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |<52 kg     |       1|      7|   246|
|6 months  |NIH-Birth      |BANGLADESH   |>=58 kg    |       0|     59|   537|
|6 months  |NIH-Birth      |BANGLADESH   |>=58 kg    |       1|     16|   537|
|6 months  |NIH-Birth      |BANGLADESH   |[52-58) kg |       0|     61|   537|
|6 months  |NIH-Birth      |BANGLADESH   |[52-58) kg |       1|     12|   537|
|6 months  |NIH-Birth      |BANGLADESH   |<52 kg     |       0|    273|   537|
|6 months  |NIH-Birth      |BANGLADESH   |<52 kg     |       1|    116|   537|
|6 months  |NIH-Crypto     |BANGLADESH   |>=58 kg    |       0|    188|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |>=58 kg    |       1|     33|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |[52-58) kg |       0|    128|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |[52-58) kg |       1|     30|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |<52 kg     |       0|    248|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |<52 kg     |       1|     87|   714|
|6 months  |PROBIT         |BELARUS      |>=58 kg    |       0|   9454| 13137|
|6 months  |PROBIT         |BELARUS      |>=58 kg    |       1|    338| 13137|
|6 months  |PROBIT         |BELARUS      |[52-58) kg |       0|   2145| 13137|
|6 months  |PROBIT         |BELARUS      |[52-58) kg |       1|     84| 13137|
|6 months  |PROBIT         |BELARUS      |<52 kg     |       0|   1050| 13137|
|6 months  |PROBIT         |BELARUS      |<52 kg     |       1|     66| 13137|
|6 months  |PROVIDE        |BANGLADESH   |>=58 kg    |       0|    109|   603|
|6 months  |PROVIDE        |BANGLADESH   |>=58 kg    |       1|     15|   603|
|6 months  |PROVIDE        |BANGLADESH   |[52-58) kg |       0|    106|   603|
|6 months  |PROVIDE        |BANGLADESH   |[52-58) kg |       1|     16|   603|
|6 months  |PROVIDE        |BANGLADESH   |<52 kg     |       0|    292|   603|
|6 months  |PROVIDE        |BANGLADESH   |<52 kg     |       1|     65|   603|
|6 months  |SAS-CompFeed   |INDIA        |>=58 kg    |       0|    111|  1336|
|6 months  |SAS-CompFeed   |INDIA        |>=58 kg    |       1|     22|  1336|
|6 months  |SAS-CompFeed   |INDIA        |[52-58) kg |       0|    172|  1336|
|6 months  |SAS-CompFeed   |INDIA        |[52-58) kg |       1|     37|  1336|
|6 months  |SAS-CompFeed   |INDIA        |<52 kg     |       0|    673|  1336|
|6 months  |SAS-CompFeed   |INDIA        |<52 kg     |       1|    321|  1336|
|6 months  |TanzaniaChild2 |TANZANIA     |>=58 kg    |       0|   1118|  2018|
|6 months  |TanzaniaChild2 |TANZANIA     |>=58 kg    |       1|    106|  2018|
|6 months  |TanzaniaChild2 |TANZANIA     |[52-58) kg |       0|    368|  2018|
|6 months  |TanzaniaChild2 |TANZANIA     |[52-58) kg |       1|     39|  2018|
|6 months  |TanzaniaChild2 |TANZANIA     |<52 kg     |       0|    336|  2018|
|6 months  |TanzaniaChild2 |TANZANIA     |<52 kg     |       1|     51|  2018|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=58 kg    |       0|   3707|  8178|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=58 kg    |       1|    509|  8178|
|6 months  |ZVITAMBO       |ZIMBABWE     |[52-58) kg |       0|   1795|  8178|
|6 months  |ZVITAMBO       |ZIMBABWE     |[52-58) kg |       1|    399|  8178|
|6 months  |ZVITAMBO       |ZIMBABWE     |<52 kg     |       0|   1350|  8178|
|6 months  |ZVITAMBO       |ZIMBABWE     |<52 kg     |       1|    418|  8178|
|24 months |JiVitA-3       |BANGLADESH   |>=58 kg    |       0|    125|  8625|
|24 months |JiVitA-3       |BANGLADESH   |>=58 kg    |       1|     93|  8625|
|24 months |JiVitA-3       |BANGLADESH   |[52-58) kg |       0|    345|  8625|
|24 months |JiVitA-3       |BANGLADESH   |[52-58) kg |       1|    233|  8625|
|24 months |JiVitA-3       |BANGLADESH   |<52 kg     |       0|   3920|  8625|
|24 months |JiVitA-3       |BANGLADESH   |<52 kg     |       1|   3909|  8625|
|24 months |LCNI-5         |MALAWI       |>=58 kg    |       0|     54|   578|
|24 months |LCNI-5         |MALAWI       |>=58 kg    |       1|     20|   578|
|24 months |LCNI-5         |MALAWI       |[52-58) kg |       0|     95|   578|
|24 months |LCNI-5         |MALAWI       |[52-58) kg |       1|     54|   578|
|24 months |LCNI-5         |MALAWI       |<52 kg     |       0|    171|   578|
|24 months |LCNI-5         |MALAWI       |<52 kg     |       1|    184|   578|
|24 months |MAL-ED         |INDIA        |>=58 kg    |       0|     29|   225|
|24 months |MAL-ED         |INDIA        |>=58 kg    |       1|     13|   225|
|24 months |MAL-ED         |INDIA        |[52-58) kg |       0|     19|   225|
|24 months |MAL-ED         |INDIA        |[52-58) kg |       1|     18|   225|
|24 months |MAL-ED         |INDIA        |<52 kg     |       0|     81|   225|
|24 months |MAL-ED         |INDIA        |<52 kg     |       1|     65|   225|
|24 months |MAL-ED         |BANGLADESH   |>=58 kg    |       0|     27|   211|
|24 months |MAL-ED         |BANGLADESH   |>=58 kg    |       1|     13|   211|
|24 months |MAL-ED         |BANGLADESH   |[52-58) kg |       0|     31|   211|
|24 months |MAL-ED         |BANGLADESH   |[52-58) kg |       1|     15|   211|
|24 months |MAL-ED         |BANGLADESH   |<52 kg     |       0|     53|   211|
|24 months |MAL-ED         |BANGLADESH   |<52 kg     |       1|     72|   211|
|24 months |MAL-ED         |PERU         |>=58 kg    |       0|     62|   198|
|24 months |MAL-ED         |PERU         |>=58 kg    |       1|     31|   198|
|24 months |MAL-ED         |PERU         |[52-58) kg |       0|     30|   198|
|24 months |MAL-ED         |PERU         |[52-58) kg |       1|     17|   198|
|24 months |MAL-ED         |PERU         |<52 kg     |       0|     34|   198|
|24 months |MAL-ED         |PERU         |<52 kg     |       1|     24|   198|
|24 months |MAL-ED         |NEPAL        |>=58 kg    |       0|     77|   223|
|24 months |MAL-ED         |NEPAL        |>=58 kg    |       1|     11|   223|
|24 months |MAL-ED         |NEPAL        |[52-58) kg |       0|     53|   223|
|24 months |MAL-ED         |NEPAL        |[52-58) kg |       1|     11|   223|
|24 months |MAL-ED         |NEPAL        |<52 kg     |       0|     45|   223|
|24 months |MAL-ED         |NEPAL        |<52 kg     |       1|     26|   223|
|24 months |MAL-ED         |BRAZIL       |>=58 kg    |       0|     98|   169|
|24 months |MAL-ED         |BRAZIL       |>=58 kg    |       1|      4|   169|
|24 months |MAL-ED         |BRAZIL       |[52-58) kg |       0|     27|   169|
|24 months |MAL-ED         |BRAZIL       |[52-58) kg |       1|      2|   169|
|24 months |MAL-ED         |BRAZIL       |<52 kg     |       0|     37|   169|
|24 months |MAL-ED         |BRAZIL       |<52 kg     |       1|      1|   169|
|24 months |MAL-ED         |TANZANIA     |>=58 kg    |       0|     28|   206|
|24 months |MAL-ED         |TANZANIA     |>=58 kg    |       1|     55|   206|
|24 months |MAL-ED         |TANZANIA     |[52-58) kg |       0|     10|   206|
|24 months |MAL-ED         |TANZANIA     |[52-58) kg |       1|     38|   206|
|24 months |MAL-ED         |TANZANIA     |<52 kg     |       0|     18|   206|
|24 months |MAL-ED         |TANZANIA     |<52 kg     |       1|     57|   206|
|24 months |MAL-ED         |SOUTH AFRICA |>=58 kg    |       0|    117|   232|
|24 months |MAL-ED         |SOUTH AFRICA |>=58 kg    |       1|     59|   232|
|24 months |MAL-ED         |SOUTH AFRICA |[52-58) kg |       0|     18|   232|
|24 months |MAL-ED         |SOUTH AFRICA |[52-58) kg |       1|     11|   232|
|24 months |MAL-ED         |SOUTH AFRICA |<52 kg     |       0|     16|   232|
|24 months |MAL-ED         |SOUTH AFRICA |<52 kg     |       1|     11|   232|
|24 months |NIH-Birth      |BANGLADESH   |>=58 kg    |       0|     40|   429|
|24 months |NIH-Birth      |BANGLADESH   |>=58 kg    |       1|     21|   429|
|24 months |NIH-Birth      |BANGLADESH   |[52-58) kg |       0|     29|   429|
|24 months |NIH-Birth      |BANGLADESH   |[52-58) kg |       1|     30|   429|
|24 months |NIH-Birth      |BANGLADESH   |<52 kg     |       0|    116|   429|
|24 months |NIH-Birth      |BANGLADESH   |<52 kg     |       1|    193|   429|
|24 months |NIH-Crypto     |BANGLADESH   |>=58 kg    |       0|    137|   513|
|24 months |NIH-Crypto     |BANGLADESH   |>=58 kg    |       1|     28|   513|
|24 months |NIH-Crypto     |BANGLADESH   |[52-58) kg |       0|     84|   513|
|24 months |NIH-Crypto     |BANGLADESH   |[52-58) kg |       1|     23|   513|
|24 months |NIH-Crypto     |BANGLADESH   |<52 kg     |       0|    160|   513|
|24 months |NIH-Crypto     |BANGLADESH   |<52 kg     |       1|     81|   513|
|24 months |PROBIT         |BELARUS      |>=58 kg    |       0|   2820|  4014|
|24 months |PROBIT         |BELARUS      |>=58 kg    |       1|    188|  4014|
|24 months |PROBIT         |BELARUS      |[52-58) kg |       0|    620|  4014|
|24 months |PROBIT         |BELARUS      |[52-58) kg |       1|     47|  4014|
|24 months |PROBIT         |BELARUS      |<52 kg     |       0|    300|  4014|
|24 months |PROBIT         |BELARUS      |<52 kg     |       1|     39|  4014|
|24 months |PROVIDE        |BANGLADESH   |>=58 kg    |       0|    102|   578|
|24 months |PROVIDE        |BANGLADESH   |>=58 kg    |       1|     23|   578|
|24 months |PROVIDE        |BANGLADESH   |[52-58) kg |       0|     90|   578|
|24 months |PROVIDE        |BANGLADESH   |[52-58) kg |       1|     29|   578|
|24 months |PROVIDE        |BANGLADESH   |<52 kg     |       0|    196|   578|
|24 months |PROVIDE        |BANGLADESH   |<52 kg     |       1|    138|   578|
|24 months |TanzaniaChild2 |TANZANIA     |>=58 kg    |       0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |>=58 kg    |       1|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |[52-58) kg |       0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |[52-58) kg |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |<52 kg     |       0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |<52 kg     |       1|      0|     6|
|24 months |ZVITAMBO       |ZIMBABWE     |>=58 kg    |       0|    575|  1587|
|24 months |ZVITAMBO       |ZIMBABWE     |>=58 kg    |       1|    225|  1587|
|24 months |ZVITAMBO       |ZIMBABWE     |[52-58) kg |       0|    275|  1587|
|24 months |ZVITAMBO       |ZIMBABWE     |[52-58) kg |       1|    155|  1587|
|24 months |ZVITAMBO       |ZIMBABWE     |<52 kg     |       0|    186|  1587|
|24 months |ZVITAMBO       |ZIMBABWE     |<52 kg     |       1|    171|  1587|


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
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


