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

**Intervention Variable:** predexfd6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                     |studyid        |country      |predexfd6 | ever_stunted| n_cell|     n|
|:--------------------------|:--------------|:------------|:---------|------------:|------:|-----:|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |1         |            0|      1|    22|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |1         |            1|     21|    22|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |0         |            0|      0|    22|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |0         |            1|      0|    22|
|0-24 months (no birth st.) |EE             |PAKISTAN     |1         |            0|      7|    34|
|0-24 months (no birth st.) |EE             |PAKISTAN     |1         |            1|     26|    34|
|0-24 months (no birth st.) |EE             |PAKISTAN     |0         |            0|      1|    34|
|0-24 months (no birth st.) |EE             |PAKISTAN     |0         |            1|      0|    34|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |1         |            0|    140|   444|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |1         |            1|    194|   444|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |0         |            0|     46|   444|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |0         |            1|     64|   444|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |1         |            0|   6290| 10836|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |1         |            1|   2118| 10836|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |0         |            0|   1855| 10836|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |0         |            1|    573| 10836|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |1         |            0|   1527|  3400|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |1         |            1|   1067|  3400|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |0         |            0|    470|  3400|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |0         |            1|    336|  3400|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |1         |            0|    390|  1983|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |1         |            1|    328|  1983|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |0         |            0|    666|  1983|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |0         |            1|    599|  1983|
|0-24 months (no birth st.) |LCNI-5         |MALAWI       |1         |            0|     18|   171|
|0-24 months (no birth st.) |LCNI-5         |MALAWI       |1         |            1|      8|   171|
|0-24 months (no birth st.) |LCNI-5         |MALAWI       |0         |            0|     73|   171|
|0-24 months (no birth st.) |LCNI-5         |MALAWI       |0         |            1|     72|   171|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |1         |            0|      6|   180|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |1         |            1|      4|   180|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |0         |            0|     82|   180|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |0         |            1|     88|   180|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |1         |            0|     31|   193|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |1         |            1|     43|   193|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |0         |            0|     62|   193|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |0         |            1|     57|   193|
|0-24 months (no birth st.) |MAL-ED         |PERU         |1         |            0|     30|   246|
|0-24 months (no birth st.) |MAL-ED         |PERU         |1         |            1|     44|   246|
|0-24 months (no birth st.) |MAL-ED         |PERU         |0         |            0|     78|   246|
|0-24 months (no birth st.) |MAL-ED         |PERU         |0         |            1|     94|   246|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |1         |            0|     10|   199|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |1         |            1|      4|   199|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |0         |            0|    135|   199|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |0         |            1|     50|   199|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |1         |            0|     25|   180|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |1         |            1|      4|   180|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |0         |            0|    125|   180|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |0         |            1|     26|   180|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |1         |            0|      0|   198|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |1         |            1|      0|   198|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |0         |            0|     37|   198|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |0         |            1|    161|   198|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |1         |            0|      0|   203|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |1         |            1|      0|   203|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |0         |            0|     96|   203|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |0         |            1|    107|   203|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |1         |            0|    115|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |1         |            1|     53|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |0         |            0|    280|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |0         |            1|    185|   633|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |1         |            0|    138|   302|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |1         |            1|    152|   302|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |0         |            0|      4|   302|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |0         |            1|      8|   302|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA        |1         |            0|      0|    99|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA        |1         |            1|      0|    99|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA        |0         |            0|     17|    99|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA        |0         |            1|     82|    99|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |1         |            0|      0|     7|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |1         |            1|      0|     7|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |0         |            0|      2|     7|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |0         |            1|      5|     7|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |1         |            0|      9|    22|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |1         |            1|     13|    22|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |0         |            0|      0|    22|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |0         |            1|      0|    22|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |1         |            0|     18|    34|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |1         |            1|     15|    34|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |0         |            0|      1|    34|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |0         |            1|      0|    34|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |1         |            0|    273|   444|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |1         |            1|     61|   444|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |0         |            0|     92|   444|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |0         |            1|     18|   444|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |1         |            0|   7324| 10811|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |1         |            1|   1068| 10811|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |0         |            0|   2121| 10811|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |0         |            1|    298| 10811|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |1         |            0|   2247|  3201|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |1         |            1|    204|  3201|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |0         |            0|    674|  3201|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |0         |            1|     76|  3201|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |1         |            0|    485|  1780|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |1         |            1|    149|  1780|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |0         |            0|    855|  1780|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |0         |            1|    291|  1780|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI       |1         |            0|     10|    67|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI       |1         |            1|      0|    67|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI       |0         |            0|     57|    67|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI       |0         |            1|      0|    67|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |1         |            0|      9|   180|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |1         |            1|      1|   180|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |0         |            0|    131|   180|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |0         |            1|     39|   180|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |1         |            0|     57|   193|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |1         |            1|     17|   193|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |0         |            0|     94|   193|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |0         |            1|     25|   193|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |1         |            0|     44|   246|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |1         |            1|     30|   246|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |0         |            0|    115|   246|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |0         |            1|     57|   246|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |1         |            0|     13|   199|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |1         |            1|      1|   199|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |0         |            0|    172|   199|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |0         |            1|     13|   199|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |1         |            0|     26|   180|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |1         |            1|      3|   180|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |0         |            0|    134|   180|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |0         |            1|     17|   180|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |1         |            0|      0|   198|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |1         |            1|      0|   198|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |0         |            0|    140|   198|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |0         |            1|     58|   198|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |1         |            0|      0|   203|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |1         |            1|      0|   203|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |0         |            0|    142|   203|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |0         |            1|     61|   203|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |1         |            0|    147|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |1         |            1|     21|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |0         |            0|    385|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |0         |            1|     80|   633|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |1         |            0|    240|   302|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |1         |            1|     50|   302|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |0         |            0|      8|   302|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |0         |            1|      4|   302|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA        |1         |            0|      0|    99|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA        |1         |            1|      0|    99|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA        |0         |            0|     98|    99|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA        |0         |            1|      1|    99|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |1         |            0|      0|     7|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |1         |            1|      0|     7|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |0         |            0|      5|     7|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |0         |            1|      2|     7|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |1         |            0|      1|     9|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |1         |            1|      8|     9|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |0         |            0|      0|     9|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |0         |            1|      0|     9|
|6-24 months                |EE             |PAKISTAN     |1         |            0|      7|    18|
|6-24 months                |EE             |PAKISTAN     |1         |            1|     11|    18|
|6-24 months                |EE             |PAKISTAN     |0         |            0|      0|    18|
|6-24 months                |EE             |PAKISTAN     |0         |            1|      0|    18|
|6-24 months                |GMS-Nepal      |NEPAL        |1         |            0|     98|   307|
|6-24 months                |GMS-Nepal      |NEPAL        |1         |            1|    133|   307|
|6-24 months                |GMS-Nepal      |NEPAL        |0         |            0|     30|   307|
|6-24 months                |GMS-Nepal      |NEPAL        |0         |            1|     46|   307|
|6-24 months                |JiVitA-3       |BANGLADESH   |1         |            0|   3712|  6176|
|6-24 months                |JiVitA-3       |BANGLADESH   |1         |            1|   1062|  6176|
|6-24 months                |JiVitA-3       |BANGLADESH   |0         |            0|   1124|  6176|
|6-24 months                |JiVitA-3       |BANGLADESH   |0         |            1|    278|  6176|
|6-24 months                |JiVitA-4       |BANGLADESH   |1         |            0|   1523|  3184|
|6-24 months                |JiVitA-4       |BANGLADESH   |1         |            1|    918|  3184|
|6-24 months                |JiVitA-4       |BANGLADESH   |0         |            0|    466|  3184|
|6-24 months                |JiVitA-4       |BANGLADESH   |0         |            1|    277|  3184|
|6-24 months                |Keneba         |GAMBIA       |1         |            0|    342|  1474|
|6-24 months                |Keneba         |GAMBIA       |1         |            1|    190|  1474|
|6-24 months                |Keneba         |GAMBIA       |0         |            0|    608|  1474|
|6-24 months                |Keneba         |GAMBIA       |0         |            1|    334|  1474|
|6-24 months                |LCNI-5         |MALAWI       |1         |            0|     17|   241|
|6-24 months                |LCNI-5         |MALAWI       |1         |            1|     14|   241|
|6-24 months                |LCNI-5         |MALAWI       |0         |            0|     71|   241|
|6-24 months                |LCNI-5         |MALAWI       |0         |            1|    139|   241|
|6-24 months                |MAL-ED         |INDIA        |1         |            0|      6|   132|
|6-24 months                |MAL-ED         |INDIA        |1         |            1|      3|   132|
|6-24 months                |MAL-ED         |INDIA        |0         |            0|     74|   132|
|6-24 months                |MAL-ED         |INDIA        |0         |            1|     49|   132|
|6-24 months                |MAL-ED         |BANGLADESH   |1         |            0|     27|   139|
|6-24 months                |MAL-ED         |BANGLADESH   |1         |            1|     26|   139|
|6-24 months                |MAL-ED         |BANGLADESH   |0         |            0|     54|   139|
|6-24 months                |MAL-ED         |BANGLADESH   |0         |            1|     32|   139|
|6-24 months                |MAL-ED         |PERU         |1         |            0|     24|   135|
|6-24 months                |MAL-ED         |PERU         |1         |            1|     14|   135|
|6-24 months                |MAL-ED         |PERU         |0         |            0|     60|   135|
|6-24 months                |MAL-ED         |PERU         |0         |            1|     37|   135|
|6-24 months                |MAL-ED         |NEPAL        |1         |            0|     10|   182|
|6-24 months                |MAL-ED         |NEPAL        |1         |            1|      3|   182|
|6-24 months                |MAL-ED         |NEPAL        |0         |            0|    132|   182|
|6-24 months                |MAL-ED         |NEPAL        |0         |            1|     37|   182|
|6-24 months                |MAL-ED         |BRAZIL       |1         |            0|     23|   145|
|6-24 months                |MAL-ED         |BRAZIL       |1         |            1|      1|   145|
|6-24 months                |MAL-ED         |BRAZIL       |0         |            0|    112|   145|
|6-24 months                |MAL-ED         |BRAZIL       |0         |            1|      9|   145|
|6-24 months                |MAL-ED         |TANZANIA     |1         |            0|      0|   132|
|6-24 months                |MAL-ED         |TANZANIA     |1         |            1|      0|   132|
|6-24 months                |MAL-ED         |TANZANIA     |0         |            0|     29|   132|
|6-24 months                |MAL-ED         |TANZANIA     |0         |            1|    103|   132|
|6-24 months                |MAL-ED         |SOUTH AFRICA |1         |            0|      0|   119|
|6-24 months                |MAL-ED         |SOUTH AFRICA |1         |            1|      0|   119|
|6-24 months                |MAL-ED         |SOUTH AFRICA |0         |            0|     73|   119|
|6-24 months                |MAL-ED         |SOUTH AFRICA |0         |            1|     46|   119|
|6-24 months                |PROVIDE        |BANGLADESH   |1         |            0|     92|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |1         |            1|     32|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |0         |            0|    227|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |0         |            1|    105|   456|
|6-24 months                |SAS-CompFeed   |INDIA        |1         |            0|    120|   231|
|6-24 months                |SAS-CompFeed   |INDIA        |1         |            1|    103|   231|
|6-24 months                |SAS-CompFeed   |INDIA        |0         |            0|      4|   231|
|6-24 months                |SAS-CompFeed   |INDIA        |0         |            1|      4|   231|
|6-24 months                |SAS-FoodSuppl  |INDIA        |1         |            0|      0|    95|
|6-24 months                |SAS-FoodSuppl  |INDIA        |1         |            1|      0|    95|
|6-24 months                |SAS-FoodSuppl  |INDIA        |0         |            0|     12|    95|
|6-24 months                |SAS-FoodSuppl  |INDIA        |0         |            1|     83|    95|
|6-24 months                |Vellore Crypto |INDIA        |1         |            0|      0|     5|
|6-24 months                |Vellore Crypto |INDIA        |1         |            1|      0|     5|
|6-24 months                |Vellore Crypto |INDIA        |0         |            0|      2|     5|
|6-24 months                |Vellore Crypto |INDIA        |0         |            1|      3|     5|


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


