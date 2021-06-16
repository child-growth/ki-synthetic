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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** hfoodsec

**Adjustment Set:**

* sex
* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* vagbrth
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* delta_arm
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_vagbrth
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* syntype
* agecat
* studyid
* country

## Data Summary

|syntype |agecat    |studyid    |country      |hfoodsec             | n_cell|     n|
|:-------|:---------|:----------|:------------|:--------------------|------:|-----:|
|BC      |Birth     |GMS-Nepal  |NEPAL        |Food Secure          |    422|   613|
|BC      |Birth     |GMS-Nepal  |NEPAL        |Food Insecure        |     86|   613|
|BC      |Birth     |GMS-Nepal  |NEPAL        |Mildly Food Insecure |    105|   613|
|BC      |Birth     |JiVitA-3   |BANGLADESH   |Food Secure          |   5790| 11756|
|BC      |Birth     |JiVitA-3   |BANGLADESH   |Food Insecure        |   2059| 11756|
|BC      |Birth     |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |   3907| 11756|
|BC      |Birth     |JiVitA-4   |BANGLADESH   |Food Secure          |   1244|  2387|
|BC      |Birth     |JiVitA-4   |BANGLADESH   |Food Insecure        |    304|  2387|
|BC      |Birth     |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |    839|  2387|
|BC      |Birth     |MAL-ED     |INDIA        |Food Secure          |     36|    38|
|BC      |Birth     |MAL-ED     |INDIA        |Food Insecure        |      1|    38|
|BC      |Birth     |MAL-ED     |INDIA        |Mildly Food Insecure |      1|    38|
|BC      |Birth     |MAL-ED     |BANGLADESH   |Food Secure          |    124|   151|
|BC      |Birth     |MAL-ED     |BANGLADESH   |Food Insecure        |     25|   151|
|BC      |Birth     |MAL-ED     |BANGLADESH   |Mildly Food Insecure |      2|   151|
|BC      |Birth     |MAL-ED     |PERU         |Food Secure          |     25|   120|
|BC      |Birth     |MAL-ED     |PERU         |Food Insecure        |     84|   120|
|BC      |Birth     |MAL-ED     |PERU         |Mildly Food Insecure |     11|   120|
|BC      |Birth     |MAL-ED     |NEPAL        |Food Secure          |     13|    14|
|BC      |Birth     |MAL-ED     |NEPAL        |Food Insecure        |      0|    14|
|BC      |Birth     |MAL-ED     |NEPAL        |Mildly Food Insecure |      1|    14|
|BC      |Birth     |MAL-ED     |BRAZIL       |Food Secure          |      1|    21|
|BC      |Birth     |MAL-ED     |BRAZIL       |Food Insecure        |     19|    21|
|BC      |Birth     |MAL-ED     |BRAZIL       |Mildly Food Insecure |      1|    21|
|BC      |Birth     |MAL-ED     |SOUTH AFRICA |Food Secure          |     47|    98|
|BC      |Birth     |MAL-ED     |SOUTH AFRICA |Food Insecure        |     37|    98|
|BC      |Birth     |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |     14|    98|
|BC      |Birth     |NIH-Birth  |BANGLADESH   |Food Secure          |     70|   575|
|BC      |Birth     |NIH-Birth  |BANGLADESH   |Food Insecure        |     48|   575|
|BC      |Birth     |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |    457|   575|
|BC      |Birth     |NIH-Crypto |BANGLADESH   |Food Secure          |    436|   707|
|BC      |Birth     |NIH-Crypto |BANGLADESH   |Food Insecure        |     71|   707|
|BC      |Birth     |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |    200|   707|
|BC      |6 months  |GMS-Nepal  |NEPAL        |Food Secure          |    377|   539|
|BC      |6 months  |GMS-Nepal  |NEPAL        |Food Insecure        |     72|   539|
|BC      |6 months  |GMS-Nepal  |NEPAL        |Mildly Food Insecure |     90|   539|
|BC      |6 months  |JiVitA-3   |BANGLADESH   |Food Secure          |   7231| 14362|
|BC      |6 months  |JiVitA-3   |BANGLADESH   |Food Insecure        |   2341| 14362|
|BC      |6 months  |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |   4790| 14362|
|BC      |6 months  |JiVitA-4   |BANGLADESH   |Food Secure          |   2576|  4809|
|BC      |6 months  |JiVitA-4   |BANGLADESH   |Food Insecure        |    590|  4809|
|BC      |6 months  |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |   1643|  4809|
|BC      |6 months  |MAL-ED     |INDIA        |Food Secure          |    193|   213|
|BC      |6 months  |MAL-ED     |INDIA        |Food Insecure        |     17|   213|
|BC      |6 months  |MAL-ED     |INDIA        |Mildly Food Insecure |      3|   213|
|BC      |6 months  |MAL-ED     |BANGLADESH   |Food Secure          |    134|   167|
|BC      |6 months  |MAL-ED     |BANGLADESH   |Food Insecure        |     28|   167|
|BC      |6 months  |MAL-ED     |BANGLADESH   |Mildly Food Insecure |      5|   167|
|BC      |6 months  |MAL-ED     |PERU         |Food Secure          |     27|   140|
|BC      |6 months  |MAL-ED     |PERU         |Food Insecure        |     96|   140|
|BC      |6 months  |MAL-ED     |PERU         |Mildly Food Insecure |     17|   140|
|BC      |6 months  |MAL-ED     |NEPAL        |Food Secure          |     94|   123|
|BC      |6 months  |MAL-ED     |NEPAL        |Food Insecure        |     17|   123|
|BC      |6 months  |MAL-ED     |NEPAL        |Mildly Food Insecure |     12|   123|
|BC      |6 months  |MAL-ED     |BRAZIL       |Food Secure          |      2|    98|
|BC      |6 months  |MAL-ED     |BRAZIL       |Food Insecure        |     91|    98|
|BC      |6 months  |MAL-ED     |BRAZIL       |Mildly Food Insecure |      5|    98|
|BC      |6 months  |MAL-ED     |SOUTH AFRICA |Food Secure          |    103|   216|
|BC      |6 months  |MAL-ED     |SOUTH AFRICA |Food Insecure        |     80|   216|
|BC      |6 months  |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |     33|   216|
|BC      |6 months  |NIH-Birth  |BANGLADESH   |Food Secure          |     68|   537|
|BC      |6 months  |NIH-Birth  |BANGLADESH   |Food Insecure        |     46|   537|
|BC      |6 months  |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |    423|   537|
|BC      |6 months  |NIH-Crypto |BANGLADESH   |Food Secure          |    449|   715|
|BC      |6 months  |NIH-Crypto |BANGLADESH   |Food Insecure        |     68|   715|
|BC      |6 months  |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |    198|   715|
|BC      |24 months |GMS-Nepal  |NEPAL        |Food Secure          |    319|   466|
|BC      |24 months |GMS-Nepal  |NEPAL        |Food Insecure        |     67|   466|
|BC      |24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |     80|   466|
|BC      |24 months |JiVitA-3   |BANGLADESH   |Food Secure          |   3414|  7174|
|BC      |24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |   1331|  7174|
|BC      |24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |   2429|  7174|
|BC      |24 months |JiVitA-4   |BANGLADESH   |Food Secure          |   2536|  4710|
|BC      |24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |    570|  4710|
|BC      |24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |   1604|  4710|
|BC      |24 months |MAL-ED     |INDIA        |Food Secure          |    185|   204|
|BC      |24 months |MAL-ED     |INDIA        |Food Insecure        |     16|   204|
|BC      |24 months |MAL-ED     |INDIA        |Mildly Food Insecure |      3|   204|
|BC      |24 months |MAL-ED     |BANGLADESH   |Food Secure          |    114|   143|
|BC      |24 months |MAL-ED     |BANGLADESH   |Food Insecure        |     24|   143|
|BC      |24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |      5|   143|
|BC      |24 months |MAL-ED     |PERU         |Food Secure          |     19|    98|
|BC      |24 months |MAL-ED     |PERU         |Food Insecure        |     64|    98|
|BC      |24 months |MAL-ED     |PERU         |Mildly Food Insecure |     15|    98|
|BC      |24 months |MAL-ED     |NEPAL        |Food Secure          |     91|   119|
|BC      |24 months |MAL-ED     |NEPAL        |Food Insecure        |     16|   119|
|BC      |24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |     12|   119|
|BC      |24 months |MAL-ED     |BRAZIL       |Food Secure          |      2|    77|
|BC      |24 months |MAL-ED     |BRAZIL       |Food Insecure        |     70|    77|
|BC      |24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |      5|    77|
|BC      |24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |     98|   202|
|BC      |24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |     74|   202|
|BC      |24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |     30|   202|
|BC      |24 months |NIH-Birth  |BANGLADESH   |Food Secure          |     59|   428|
|BC      |24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |     36|   428|
|BC      |24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |    333|   428|
|BC      |24 months |NIH-Crypto |BANGLADESH   |Food Secure          |    314|   514|
|BC      |24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |     53|   514|
|BC      |24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |    147|   514|
|FULL    |Birth     |GMS-Nepal  |NEPAL        |Food Secure          |    442|   620|
|FULL    |Birth     |GMS-Nepal  |NEPAL        |Food Insecure        |     78|   620|
|FULL    |Birth     |GMS-Nepal  |NEPAL        |Mildly Food Insecure |    100|   620|
|FULL    |Birth     |JiVitA-3   |BANGLADESH   |Food Secure          |   5797| 11763|
|FULL    |Birth     |JiVitA-3   |BANGLADESH   |Food Insecure        |   2019| 11763|
|FULL    |Birth     |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |   3947| 11763|
|FULL    |Birth     |JiVitA-4   |BANGLADESH   |Food Secure          |   1205|  2383|
|FULL    |Birth     |JiVitA-4   |BANGLADESH   |Food Insecure        |    308|  2383|
|FULL    |Birth     |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |    870|  2383|
|FULL    |Birth     |MAL-ED     |INDIA        |Food Secure          |     32|    35|
|FULL    |Birth     |MAL-ED     |INDIA        |Food Insecure        |      2|    35|
|FULL    |Birth     |MAL-ED     |INDIA        |Mildly Food Insecure |      1|    35|
|FULL    |Birth     |MAL-ED     |BANGLADESH   |Food Secure          |    138|   162|
|FULL    |Birth     |MAL-ED     |BANGLADESH   |Food Insecure        |     21|   162|
|FULL    |Birth     |MAL-ED     |BANGLADESH   |Mildly Food Insecure |      3|   162|
|FULL    |Birth     |MAL-ED     |PERU         |Food Secure          |     23|    89|
|FULL    |Birth     |MAL-ED     |PERU         |Food Insecure        |     44|    89|
|FULL    |Birth     |MAL-ED     |PERU         |Mildly Food Insecure |     22|    89|
|FULL    |Birth     |MAL-ED     |NEPAL        |Food Secure          |     10|    14|
|FULL    |Birth     |MAL-ED     |NEPAL        |Food Insecure        |      3|    14|
|FULL    |Birth     |MAL-ED     |NEPAL        |Mildly Food Insecure |      1|    14|
|FULL    |Birth     |MAL-ED     |BRAZIL       |Food Secure          |      0|    26|
|FULL    |Birth     |MAL-ED     |BRAZIL       |Food Insecure        |     22|    26|
|FULL    |Birth     |MAL-ED     |BRAZIL       |Mildly Food Insecure |      4|    26|
|FULL    |Birth     |MAL-ED     |SOUTH AFRICA |Food Secure          |     45|    87|
|FULL    |Birth     |MAL-ED     |SOUTH AFRICA |Food Insecure        |     33|    87|
|FULL    |Birth     |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |      9|    87|
|FULL    |Birth     |NIH-Birth  |BANGLADESH   |Food Secure          |     86|   575|
|FULL    |Birth     |NIH-Birth  |BANGLADESH   |Food Insecure        |     36|   575|
|FULL    |Birth     |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |    453|   575|
|FULL    |Birth     |NIH-Crypto |BANGLADESH   |Food Secure          |    429|   707|
|FULL    |Birth     |NIH-Crypto |BANGLADESH   |Food Insecure        |     79|   707|
|FULL    |Birth     |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |    199|   707|
|FULL    |6 months  |GMS-Nepal  |NEPAL        |Food Secure          |    396|   546|
|FULL    |6 months  |GMS-Nepal  |NEPAL        |Food Insecure        |     74|   546|
|FULL    |6 months  |GMS-Nepal  |NEPAL        |Mildly Food Insecure |     76|   546|
|FULL    |6 months  |JiVitA-3   |BANGLADESH   |Food Secure          |   8396| 16764|
|FULL    |6 months  |JiVitA-3   |BANGLADESH   |Food Insecure        |   2778| 16764|
|FULL    |6 months  |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |   5590| 16764|
|FULL    |6 months  |JiVitA-4   |BANGLADESH   |Food Secure          |   2445|  4795|
|FULL    |6 months  |JiVitA-4   |BANGLADESH   |Food Insecure        |    622|  4795|
|FULL    |6 months  |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |   1728|  4795|
|FULL    |6 months  |MAL-ED     |INDIA        |Food Secure          |    190|   212|
|FULL    |6 months  |MAL-ED     |INDIA        |Food Insecure        |     17|   212|
|FULL    |6 months  |MAL-ED     |INDIA        |Mildly Food Insecure |      5|   212|
|FULL    |6 months  |MAL-ED     |BANGLADESH   |Food Secure          |    160|   193|
|FULL    |6 months  |MAL-ED     |BANGLADESH   |Food Insecure        |     29|   193|
|FULL    |6 months  |MAL-ED     |BANGLADESH   |Mildly Food Insecure |      4|   193|
|FULL    |6 months  |MAL-ED     |PERU         |Food Secure          |     27|   111|
|FULL    |6 months  |MAL-ED     |PERU         |Food Insecure        |     56|   111|
|FULL    |6 months  |MAL-ED     |PERU         |Mildly Food Insecure |     28|   111|
|FULL    |6 months  |MAL-ED     |NEPAL        |Food Secure          |     94|   128|
|FULL    |6 months  |MAL-ED     |NEPAL        |Food Insecure        |     19|   128|
|FULL    |6 months  |MAL-ED     |NEPAL        |Mildly Food Insecure |     15|   128|
|FULL    |6 months  |MAL-ED     |BRAZIL       |Food Secure          |      3|   129|
|FULL    |6 months  |MAL-ED     |BRAZIL       |Food Insecure        |    115|   129|
|FULL    |6 months  |MAL-ED     |BRAZIL       |Mildly Food Insecure |     11|   129|
|FULL    |6 months  |MAL-ED     |SOUTH AFRICA |Food Secure          |    129|   228|
|FULL    |6 months  |MAL-ED     |SOUTH AFRICA |Food Insecure        |     81|   228|
|FULL    |6 months  |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |     18|   228|
|FULL    |6 months  |NIH-Birth  |BANGLADESH   |Food Secure          |     80|   537|
|FULL    |6 months  |NIH-Birth  |BANGLADESH   |Food Insecure        |     40|   537|
|FULL    |6 months  |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |    417|   537|
|FULL    |6 months  |NIH-Crypto |BANGLADESH   |Food Secure          |    427|   715|
|FULL    |6 months  |NIH-Crypto |BANGLADESH   |Food Insecure        |     84|   715|
|FULL    |6 months  |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |    204|   715|
|FULL    |24 months |GMS-Nepal  |NEPAL        |Food Secure          |    341|   477|
|FULL    |24 months |GMS-Nepal  |NEPAL        |Food Insecure        |     69|   477|
|FULL    |24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |     67|   477|
|FULL    |24 months |JiVitA-3   |BANGLADESH   |Food Secure          |   3857|  8190|
|FULL    |24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |   1580|  8190|
|FULL    |24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |   2753|  8190|
|FULL    |24 months |JiVitA-4   |BANGLADESH   |Food Secure          |   2389|  4696|
|FULL    |24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |    608|  4696|
|FULL    |24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |   1699|  4696|
|FULL    |24 months |MAL-ED     |INDIA        |Food Secure          |    190|   212|
|FULL    |24 months |MAL-ED     |INDIA        |Food Insecure        |     17|   212|
|FULL    |24 months |MAL-ED     |INDIA        |Mildly Food Insecure |      5|   212|
|FULL    |24 months |MAL-ED     |BANGLADESH   |Food Secure          |    161|   194|
|FULL    |24 months |MAL-ED     |BANGLADESH   |Food Insecure        |     29|   194|
|FULL    |24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |      4|   194|
|FULL    |24 months |MAL-ED     |PERU         |Food Secure          |     26|   107|
|FULL    |24 months |MAL-ED     |PERU         |Food Insecure        |     54|   107|
|FULL    |24 months |MAL-ED     |PERU         |Mildly Food Insecure |     27|   107|
|FULL    |24 months |MAL-ED     |NEPAL        |Food Secure          |     94|   128|
|FULL    |24 months |MAL-ED     |NEPAL        |Food Insecure        |     19|   128|
|FULL    |24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |     15|   128|
|FULL    |24 months |MAL-ED     |BRAZIL       |Food Secure          |      3|   129|
|FULL    |24 months |MAL-ED     |BRAZIL       |Food Insecure        |    115|   129|
|FULL    |24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |     11|   129|
|FULL    |24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |    129|   228|
|FULL    |24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |     81|   228|
|FULL    |24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |     18|   228|
|FULL    |24 months |NIH-Birth  |BANGLADESH   |Food Secure          |     68|   428|
|FULL    |24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |     33|   428|
|FULL    |24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |    327|   428|
|FULL    |24 months |NIH-Crypto |BANGLADESH   |Food Secure          |    334|   514|
|FULL    |24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |     56|   514|
|FULL    |24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |    124|   514|
|QI      |Birth     |GMS-Nepal  |NEPAL        |Food Secure          |    493|   667|
|QI      |Birth     |GMS-Nepal  |NEPAL        |Food Insecure        |     72|   667|
|QI      |Birth     |GMS-Nepal  |NEPAL        |Mildly Food Insecure |    102|   667|
|QI      |Birth     |JiVitA-3   |BANGLADESH   |Food Secure          |   3484|  7180|
|QI      |Birth     |JiVitA-3   |BANGLADESH   |Food Insecure        |   1302|  7180|
|QI      |Birth     |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |   2394|  7180|
|QI      |Birth     |JiVitA-4   |BANGLADESH   |Food Secure          |    384|   726|
|QI      |Birth     |JiVitA-4   |BANGLADESH   |Food Insecure        |    104|   726|
|QI      |Birth     |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |    238|   726|
|QI      |Birth     |MAL-ED     |INDIA        |Food Secure          |    189|   216|
|QI      |Birth     |MAL-ED     |INDIA        |Food Insecure        |     23|   216|
|QI      |Birth     |MAL-ED     |INDIA        |Mildly Food Insecure |      4|   216|
|QI      |Birth     |MAL-ED     |BANGLADESH   |Food Secure          |    152|   194|
|QI      |Birth     |MAL-ED     |BANGLADESH   |Food Insecure        |     36|   194|
|QI      |Birth     |MAL-ED     |BANGLADESH   |Mildly Food Insecure |      6|   194|
|QI      |Birth     |MAL-ED     |PERU         |Food Secure          |     19|   120|
|QI      |Birth     |MAL-ED     |PERU         |Food Insecure        |     72|   120|
|QI      |Birth     |MAL-ED     |PERU         |Mildly Food Insecure |     29|   120|
|QI      |Birth     |MAL-ED     |NEPAL        |Food Secure          |     82|   116|
|QI      |Birth     |MAL-ED     |NEPAL        |Food Insecure        |     18|   116|
|QI      |Birth     |MAL-ED     |NEPAL        |Mildly Food Insecure |     16|   116|
|QI      |Birth     |MAL-ED     |BRAZIL       |Food Secure          |      1|   132|
|QI      |Birth     |MAL-ED     |BRAZIL       |Food Insecure        |    123|   132|
|QI      |Birth     |MAL-ED     |BRAZIL       |Mildly Food Insecure |      8|   132|
|QI      |Birth     |MAL-ED     |SOUTH AFRICA |Food Secure          |    129|   236|
|QI      |Birth     |MAL-ED     |SOUTH AFRICA |Food Insecure        |     85|   236|
|QI      |Birth     |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |     22|   236|
|QI      |Birth     |NIH-Birth  |BANGLADESH   |Food Secure          |     91|   606|
|QI      |Birth     |NIH-Birth  |BANGLADESH   |Food Insecure        |     42|   606|
|QI      |Birth     |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |    473|   606|
|QI      |Birth     |NIH-Crypto |BANGLADESH   |Food Secure          |    437|   756|
|QI      |Birth     |NIH-Crypto |BANGLADESH   |Food Insecure        |     91|   756|
|QI      |Birth     |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |    228|   756|
|QI      |6 months  |GMS-Nepal  |NEPAL        |Food Secure          |    400|   538|
|QI      |6 months  |GMS-Nepal  |NEPAL        |Food Insecure        |     62|   538|
|QI      |6 months  |GMS-Nepal  |NEPAL        |Mildly Food Insecure |     76|   538|
|QI      |6 months  |JiVitA-3   |BANGLADESH   |Food Secure          |   2294|  4628|
|QI      |6 months  |JiVitA-3   |BANGLADESH   |Food Insecure        |    813|  4628|
|QI      |6 months  |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |   1521|  4628|
|QI      |6 months  |JiVitA-4   |BANGLADESH   |Food Secure          |    424|   833|
|QI      |6 months  |JiVitA-4   |BANGLADESH   |Food Insecure        |    114|   833|
|QI      |6 months  |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |    295|   833|
|QI      |6 months  |MAL-ED     |INDIA        |Food Secure          |    187|   212|
|QI      |6 months  |MAL-ED     |INDIA        |Food Insecure        |     21|   212|
|QI      |6 months  |MAL-ED     |INDIA        |Mildly Food Insecure |      4|   212|
|QI      |6 months  |MAL-ED     |BANGLADESH   |Food Secure          |    145|   184|
|QI      |6 months  |MAL-ED     |BANGLADESH   |Food Insecure        |     33|   184|
|QI      |6 months  |MAL-ED     |BANGLADESH   |Mildly Food Insecure |      6|   184|
|QI      |6 months  |MAL-ED     |PERU         |Food Secure          |     19|   109|
|QI      |6 months  |MAL-ED     |PERU         |Food Insecure        |     63|   109|
|QI      |6 months  |MAL-ED     |PERU         |Mildly Food Insecure |     27|   109|
|QI      |6 months  |MAL-ED     |NEPAL        |Food Secure          |     75|   107|
|QI      |6 months  |MAL-ED     |NEPAL        |Food Insecure        |     17|   107|
|QI      |6 months  |MAL-ED     |NEPAL        |Mildly Food Insecure |     15|   107|
|QI      |6 months  |MAL-ED     |BRAZIL       |Food Secure          |      1|   125|
|QI      |6 months  |MAL-ED     |BRAZIL       |Food Insecure        |    116|   125|
|QI      |6 months  |MAL-ED     |BRAZIL       |Mildly Food Insecure |      8|   125|
|QI      |6 months  |MAL-ED     |SOUTH AFRICA |Food Secure          |    121|   220|
|QI      |6 months  |MAL-ED     |SOUTH AFRICA |Food Insecure        |     78|   220|
|QI      |6 months  |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |     21|   220|
|QI      |6 months  |NIH-Birth  |BANGLADESH   |Food Secure          |     63|   391|
|QI      |6 months  |NIH-Birth  |BANGLADESH   |Food Insecure        |     28|   391|
|QI      |6 months  |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |    300|   391|
|QI      |6 months  |NIH-Crypto |BANGLADESH   |Food Secure          |    311|   537|
|QI      |6 months  |NIH-Crypto |BANGLADESH   |Food Insecure        |     68|   537|
|QI      |6 months  |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |    158|   537|
|QI      |24 months |GMS-Nepal  |NEPAL        |Food Secure          |    152|   191|
|QI      |24 months |GMS-Nepal  |NEPAL        |Food Insecure        |     15|   191|
|QI      |24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |     24|   191|
|QI      |24 months |JiVitA-3   |BANGLADESH   |Food Secure          |      4|     6|
|QI      |24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |      0|     6|
|QI      |24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |      2|     6|
|QI      |24 months |JiVitA-4   |BANGLADESH   |Food Secure          |     33|    58|
|QI      |24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |      5|    58|
|QI      |24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |     20|    58|
|QI      |24 months |MAL-ED     |INDIA        |Food Secure          |     84|    91|
|QI      |24 months |MAL-ED     |INDIA        |Food Insecure        |      5|    91|
|QI      |24 months |MAL-ED     |INDIA        |Mildly Food Insecure |      2|    91|
|QI      |24 months |MAL-ED     |BANGLADESH   |Food Secure          |     67|    86|
|QI      |24 months |MAL-ED     |BANGLADESH   |Food Insecure        |     15|    86|
|QI      |24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |      4|    86|
|QI      |24 months |MAL-ED     |PERU         |Food Secure          |      7|    34|
|QI      |24 months |MAL-ED     |PERU         |Food Insecure        |     18|    34|
|QI      |24 months |MAL-ED     |PERU         |Mildly Food Insecure |      9|    34|
|QI      |24 months |MAL-ED     |NEPAL        |Food Secure          |     35|    52|
|QI      |24 months |MAL-ED     |NEPAL        |Food Insecure        |     10|    52|
|QI      |24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |      7|    52|
|QI      |24 months |MAL-ED     |BRAZIL       |Food Secure          |      1|    51|
|QI      |24 months |MAL-ED     |BRAZIL       |Food Insecure        |     47|    51|
|QI      |24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |      3|    51|
|QI      |24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |     41|    78|
|QI      |24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |     29|    78|
|QI      |24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |      8|    78|
|QI      |24 months |NIH-Birth  |BANGLADESH   |Food Secure          |      3|    32|
|QI      |24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |      0|    32|
|QI      |24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |     29|    32|
|QI      |24 months |NIH-Crypto |BANGLADESH   |Food Secure          |     20|    47|
|QI      |24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |     10|    47|
|QI      |24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |     17|    47|


The following strata were considered:

* syntype: BC, agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* syntype: BC, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* syntype: BC, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* syntype: BC, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* syntype: FULL, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* syntype: FULL, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* syntype: FULL, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* syntype: QI, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* syntype: QI, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* syntype: QI, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* syntype: BC, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```


