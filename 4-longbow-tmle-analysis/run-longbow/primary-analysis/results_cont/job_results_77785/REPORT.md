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

**Outcome Variable:** haz

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
|BC      |Birth     |GMS-Nepal  |NEPAL        |Food Secure          |    460|   665|
|BC      |Birth     |GMS-Nepal  |NEPAL        |Food Insecure        |     91|   665|
|BC      |Birth     |GMS-Nepal  |NEPAL        |Mildly Food Insecure |    114|   665|
|BC      |Birth     |JiVitA-3   |BANGLADESH   |Food Secure          |   7055| 14378|
|BC      |Birth     |JiVitA-3   |BANGLADESH   |Food Insecure        |   2524| 14378|
|BC      |Birth     |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |   4799| 14378|
|BC      |Birth     |JiVitA-4   |BANGLADESH   |Food Secure          |   1468|  2809|
|BC      |Birth     |JiVitA-4   |BANGLADESH   |Food Insecure        |    359|  2809|
|BC      |Birth     |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |    982|  2809|
|BC      |Birth     |MAL-ED     |INDIA        |Food Secure          |     38|    40|
|BC      |Birth     |MAL-ED     |INDIA        |Food Insecure        |      1|    40|
|BC      |Birth     |MAL-ED     |INDIA        |Mildly Food Insecure |      1|    40|
|BC      |Birth     |MAL-ED     |BANGLADESH   |Food Secure          |    129|   159|
|BC      |Birth     |MAL-ED     |BANGLADESH   |Food Insecure        |     26|   159|
|BC      |Birth     |MAL-ED     |BANGLADESH   |Mildly Food Insecure |      4|   159|
|BC      |Birth     |MAL-ED     |PERU         |Food Secure          |     25|   122|
|BC      |Birth     |MAL-ED     |PERU         |Food Insecure        |     86|   122|
|BC      |Birth     |MAL-ED     |PERU         |Mildly Food Insecure |     11|   122|
|BC      |Birth     |MAL-ED     |NEPAL        |Food Secure          |     13|    14|
|BC      |Birth     |MAL-ED     |NEPAL        |Food Insecure        |      0|    14|
|BC      |Birth     |MAL-ED     |NEPAL        |Mildly Food Insecure |      1|    14|
|BC      |Birth     |MAL-ED     |BRAZIL       |Food Secure          |      1|    23|
|BC      |Birth     |MAL-ED     |BRAZIL       |Food Insecure        |     20|    23|
|BC      |Birth     |MAL-ED     |BRAZIL       |Mildly Food Insecure |      2|    23|
|BC      |Birth     |MAL-ED     |SOUTH AFRICA |Food Secure          |     48|   100|
|BC      |Birth     |MAL-ED     |SOUTH AFRICA |Food Insecure        |     37|   100|
|BC      |Birth     |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |     15|   100|
|BC      |Birth     |NIH-Birth  |BANGLADESH   |Food Secure          |     75|   608|
|BC      |Birth     |NIH-Birth  |BANGLADESH   |Food Insecure        |     49|   608|
|BC      |Birth     |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |    484|   608|
|BC      |Birth     |NIH-Crypto |BANGLADESH   |Food Secure          |    453|   732|
|BC      |Birth     |NIH-Crypto |BANGLADESH   |Food Insecure        |     71|   732|
|BC      |Birth     |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |    208|   732|
|BC      |6 months  |GMS-Nepal  |NEPAL        |Food Secure          |    377|   539|
|BC      |6 months  |GMS-Nepal  |NEPAL        |Food Insecure        |     72|   539|
|BC      |6 months  |GMS-Nepal  |NEPAL        |Mildly Food Insecure |     90|   539|
|BC      |6 months  |JiVitA-3   |BANGLADESH   |Food Secure          |   7242| 14383|
|BC      |6 months  |JiVitA-3   |BANGLADESH   |Food Insecure        |   2344| 14383|
|BC      |6 months  |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |   4797| 14383|
|BC      |6 months  |JiVitA-4   |BANGLADESH   |Food Secure          |   2575|  4806|
|BC      |6 months  |JiVitA-4   |BANGLADESH   |Food Insecure        |    590|  4806|
|BC      |6 months  |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |   1641|  4806|
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
|BC      |24 months |GMS-Nepal  |NEPAL        |Food Secure          |    320|   467|
|BC      |24 months |GMS-Nepal  |NEPAL        |Food Insecure        |     67|   467|
|BC      |24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |     80|   467|
|BC      |24 months |JiVitA-3   |BANGLADESH   |Food Secure          |   3427|  7198|
|BC      |24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |   1334|  7198|
|BC      |24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |   2437|  7198|
|BC      |24 months |JiVitA-4   |BANGLADESH   |Food Secure          |   2545|  4727|
|BC      |24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |    573|  4727|
|BC      |24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |   1609|  4727|
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
|BC      |24 months |NIH-Birth  |BANGLADESH   |Food Secure          |     59|   429|
|BC      |24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |     36|   429|
|BC      |24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |    334|   429|
|BC      |24 months |NIH-Crypto |BANGLADESH   |Food Secure          |    314|   514|
|BC      |24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |     53|   514|
|BC      |24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |    147|   514|
|FULL    |Birth     |GMS-Nepal  |NEPAL        |Food Secure          |    477|   672|
|FULL    |Birth     |GMS-Nepal  |NEPAL        |Food Insecure        |     89|   672|
|FULL    |Birth     |GMS-Nepal  |NEPAL        |Mildly Food Insecure |    106|   672|
|FULL    |Birth     |JiVitA-3   |BANGLADESH   |Food Secure          |   6951| 14364|
|FULL    |Birth     |JiVitA-3   |BANGLADESH   |Food Insecure        |   2536| 14364|
|FULL    |Birth     |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |   4877| 14364|
|FULL    |Birth     |JiVitA-4   |BANGLADESH   |Food Secure          |   1433|  2810|
|FULL    |Birth     |JiVitA-4   |BANGLADESH   |Food Insecure        |    359|  2810|
|FULL    |Birth     |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |   1018|  2810|
|FULL    |Birth     |MAL-ED     |INDIA        |Food Secure          |     34|    37|
|FULL    |Birth     |MAL-ED     |INDIA        |Food Insecure        |      2|    37|
|FULL    |Birth     |MAL-ED     |INDIA        |Mildly Food Insecure |      1|    37|
|FULL    |Birth     |MAL-ED     |BANGLADESH   |Food Secure          |    144|   172|
|FULL    |Birth     |MAL-ED     |BANGLADESH   |Food Insecure        |     24|   172|
|FULL    |Birth     |MAL-ED     |BANGLADESH   |Mildly Food Insecure |      4|   172|
|FULL    |Birth     |MAL-ED     |PERU         |Food Secure          |     24|    91|
|FULL    |Birth     |MAL-ED     |PERU         |Food Insecure        |     44|    91|
|FULL    |Birth     |MAL-ED     |PERU         |Mildly Food Insecure |     23|    91|
|FULL    |Birth     |MAL-ED     |NEPAL        |Food Secure          |     10|    14|
|FULL    |Birth     |MAL-ED     |NEPAL        |Food Insecure        |      3|    14|
|FULL    |Birth     |MAL-ED     |NEPAL        |Mildly Food Insecure |      1|    14|
|FULL    |Birth     |MAL-ED     |BRAZIL       |Food Secure          |      0|    28|
|FULL    |Birth     |MAL-ED     |BRAZIL       |Food Insecure        |     24|    28|
|FULL    |Birth     |MAL-ED     |BRAZIL       |Mildly Food Insecure |      4|    28|
|FULL    |Birth     |MAL-ED     |SOUTH AFRICA |Food Secure          |     45|    88|
|FULL    |Birth     |MAL-ED     |SOUTH AFRICA |Food Insecure        |     34|    88|
|FULL    |Birth     |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |      9|    88|
|FULL    |Birth     |NIH-Birth  |BANGLADESH   |Food Secure          |     90|   608|
|FULL    |Birth     |NIH-Birth  |BANGLADESH   |Food Insecure        |     40|   608|
|FULL    |Birth     |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |    478|   608|
|FULL    |Birth     |NIH-Crypto |BANGLADESH   |Food Secure          |    439|   732|
|FULL    |Birth     |NIH-Crypto |BANGLADESH   |Food Insecure        |     84|   732|
|FULL    |Birth     |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |    209|   732|
|FULL    |6 months  |GMS-Nepal  |NEPAL        |Food Secure          |    396|   546|
|FULL    |6 months  |GMS-Nepal  |NEPAL        |Food Insecure        |     74|   546|
|FULL    |6 months  |GMS-Nepal  |NEPAL        |Mildly Food Insecure |     76|   546|
|FULL    |6 months  |JiVitA-3   |BANGLADESH   |Food Secure          |   8415| 16791|
|FULL    |6 months  |JiVitA-3   |BANGLADESH   |Food Insecure        |   2774| 16791|
|FULL    |6 months  |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |   5602| 16791|
|FULL    |6 months  |JiVitA-4   |BANGLADESH   |Food Secure          |   2442|  4793|
|FULL    |6 months  |JiVitA-4   |BANGLADESH   |Food Insecure        |    622|  4793|
|FULL    |6 months  |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |   1729|  4793|
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
|FULL    |24 months |GMS-Nepal  |NEPAL        |Food Secure          |    342|   478|
|FULL    |24 months |GMS-Nepal  |NEPAL        |Food Insecure        |     69|   478|
|FULL    |24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |     67|   478|
|FULL    |24 months |JiVitA-3   |BANGLADESH   |Food Secure          |   3875|  8214|
|FULL    |24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |   1578|  8214|
|FULL    |24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |   2761|  8214|
|FULL    |24 months |JiVitA-4   |BANGLADESH   |Food Secure          |   2399|  4713|
|FULL    |24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |    609|  4713|
|FULL    |24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |   1705|  4713|
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
|FULL    |24 months |NIH-Birth  |BANGLADESH   |Food Secure          |     68|   429|
|FULL    |24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |     33|   429|
|FULL    |24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |    328|   429|
|FULL    |24 months |NIH-Crypto |BANGLADESH   |Food Secure          |    334|   514|
|FULL    |24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |     56|   514|
|FULL    |24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |    124|   514|
|QI      |Birth     |GMS-Nepal  |NEPAL        |Food Secure          |    497|   671|
|QI      |Birth     |GMS-Nepal  |NEPAL        |Food Insecure        |     72|   671|
|QI      |Birth     |GMS-Nepal  |NEPAL        |Mildly Food Insecure |    102|   671|
|QI      |Birth     |JiVitA-3   |BANGLADESH   |Food Secure          |   3489|  7193|
|QI      |Birth     |JiVitA-3   |BANGLADESH   |Food Insecure        |   1307|  7193|
|QI      |Birth     |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |   2397|  7193|
|QI      |Birth     |JiVitA-4   |BANGLADESH   |Food Secure          |    381|   722|
|QI      |Birth     |JiVitA-4   |BANGLADESH   |Food Insecure        |    103|   722|
|QI      |Birth     |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |    238|   722|
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
|QI      |Birth     |NIH-Birth  |BANGLADESH   |Food Secure          |     92|   612|
|QI      |Birth     |NIH-Birth  |BANGLADESH   |Food Insecure        |     42|   612|
|QI      |Birth     |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |    478|   612|
|QI      |Birth     |NIH-Crypto |BANGLADESH   |Food Secure          |    436|   753|
|QI      |Birth     |NIH-Crypto |BANGLADESH   |Food Insecure        |     90|   753|
|QI      |Birth     |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |    227|   753|
|QI      |6 months  |GMS-Nepal  |NEPAL        |Food Secure          |    400|   538|
|QI      |6 months  |GMS-Nepal  |NEPAL        |Food Insecure        |     62|   538|
|QI      |6 months  |GMS-Nepal  |NEPAL        |Mildly Food Insecure |     76|   538|
|QI      |6 months  |JiVitA-3   |BANGLADESH   |Food Secure          |   2294|  4627|
|QI      |6 months  |JiVitA-3   |BANGLADESH   |Food Insecure        |    813|  4627|
|QI      |6 months  |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |   1520|  4627|
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


