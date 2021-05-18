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

**Intervention Variable:** impsan

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                     |studyid    |country      |impsan | ever_stunted| n_cell|     n|
|:--------------------------|:----------|:------------|:------|------------:|------:|-----:|
|0-24 months (no birth st.) |COHORTS    |INDIA        |1      |            0|   1625|  5137|
|0-24 months (no birth st.) |COHORTS    |INDIA        |1      |            1|    602|  5137|
|0-24 months (no birth st.) |COHORTS    |INDIA        |0      |            0|   2081|  5137|
|0-24 months (no birth st.) |COHORTS    |INDIA        |0      |            1|    829|  5137|
|0-24 months (no birth st.) |COHORTS    |GUATEMALA    |1      |            0|     21|   744|
|0-24 months (no birth st.) |COHORTS    |GUATEMALA    |1      |            1|     57|   744|
|0-24 months (no birth st.) |COHORTS    |GUATEMALA    |0      |            0|    202|   744|
|0-24 months (no birth st.) |COHORTS    |GUATEMALA    |0      |            1|    464|   744|
|0-24 months (no birth st.) |COHORTS    |PHILIPPINES  |1      |            0|     93|  1190|
|0-24 months (no birth st.) |COHORTS    |PHILIPPINES  |1      |            1|    115|  1190|
|0-24 months (no birth st.) |COHORTS    |PHILIPPINES  |0      |            0|    255|  1190|
|0-24 months (no birth st.) |COHORTS    |PHILIPPINES  |0      |            1|    727|  1190|
|0-24 months (no birth st.) |CONTENT    |PERU         |1      |            0|    148|   195|
|0-24 months (no birth st.) |CONTENT    |PERU         |1      |            1|     28|   195|
|0-24 months (no birth st.) |CONTENT    |PERU         |0      |            0|     14|   195|
|0-24 months (no birth st.) |CONTENT    |PERU         |0      |            1|      5|   195|
|0-24 months (no birth st.) |JiVitA-3   |BANGLADESH   |1      |            0|   9573| 18360|
|0-24 months (no birth st.) |JiVitA-3   |BANGLADESH   |1      |            1|   3203| 18360|
|0-24 months (no birth st.) |JiVitA-3   |BANGLADESH   |0      |            0|   4155| 18360|
|0-24 months (no birth st.) |JiVitA-3   |BANGLADESH   |0      |            1|   1429| 18360|
|0-24 months (no birth st.) |JiVitA-4   |BANGLADESH   |1      |            0|   1786|  3883|
|0-24 months (no birth st.) |JiVitA-4   |BANGLADESH   |1      |            1|   1254|  3883|
|0-24 months (no birth st.) |JiVitA-4   |BANGLADESH   |0      |            0|    493|  3883|
|0-24 months (no birth st.) |JiVitA-4   |BANGLADESH   |0      |            1|    350|  3883|
|0-24 months (no birth st.) |LCNI-5     |MALAWI       |1      |            0|      0|   520|
|0-24 months (no birth st.) |LCNI-5     |MALAWI       |1      |            1|      1|   520|
|0-24 months (no birth st.) |LCNI-5     |MALAWI       |0      |            0|    297|   520|
|0-24 months (no birth st.) |LCNI-5     |MALAWI       |0      |            1|    222|   520|
|0-24 months (no birth st.) |MAL-ED     |INDIA        |1      |            0|     43|   198|
|0-24 months (no birth st.) |MAL-ED     |INDIA        |1      |            1|     59|   198|
|0-24 months (no birth st.) |MAL-ED     |INDIA        |0      |            0|     50|   198|
|0-24 months (no birth st.) |MAL-ED     |INDIA        |0      |            1|     46|   198|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH   |1      |            0|     81|   202|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH   |1      |            1|     88|   202|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH   |0      |            0|     17|   202|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH   |0      |            1|     16|   202|
|0-24 months (no birth st.) |MAL-ED     |PERU         |1      |            0|     25|   238|
|0-24 months (no birth st.) |MAL-ED     |PERU         |1      |            1|     31|   238|
|0-24 months (no birth st.) |MAL-ED     |PERU         |0      |            0|     77|   238|
|0-24 months (no birth st.) |MAL-ED     |PERU         |0      |            1|    105|   238|
|0-24 months (no birth st.) |MAL-ED     |NEPAL        |1      |            0|    156|   210|
|0-24 months (no birth st.) |MAL-ED     |NEPAL        |1      |            1|     54|   210|
|0-24 months (no birth st.) |MAL-ED     |NEPAL        |0      |            0|      0|   210|
|0-24 months (no birth st.) |MAL-ED     |NEPAL        |0      |            1|      0|   210|
|0-24 months (no birth st.) |MAL-ED     |BRAZIL       |1      |            0|    148|   180|
|0-24 months (no birth st.) |MAL-ED     |BRAZIL       |1      |            1|     27|   180|
|0-24 months (no birth st.) |MAL-ED     |BRAZIL       |0      |            0|      2|   180|
|0-24 months (no birth st.) |MAL-ED     |BRAZIL       |0      |            1|      3|   180|
|0-24 months (no birth st.) |MAL-ED     |TANZANIA     |1      |            0|      0|   206|
|0-24 months (no birth st.) |MAL-ED     |TANZANIA     |1      |            1|      0|   206|
|0-24 months (no birth st.) |MAL-ED     |TANZANIA     |0      |            0|     38|   206|
|0-24 months (no birth st.) |MAL-ED     |TANZANIA     |0      |            1|    168|   206|
|0-24 months (no birth st.) |MAL-ED     |SOUTH AFRICA |1      |            0|      3|   232|
|0-24 months (no birth st.) |MAL-ED     |SOUTH AFRICA |1      |            1|      3|   232|
|0-24 months (no birth st.) |MAL-ED     |SOUTH AFRICA |0      |            0|    110|   232|
|0-24 months (no birth st.) |MAL-ED     |SOUTH AFRICA |0      |            1|    116|   232|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH   |1      |            0|     78|   530|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH   |1      |            1|    111|   530|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH   |0      |            0|    133|   530|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH   |0      |            1|    208|   530|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH   |1      |            0|    351|   646|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH   |1      |            1|    208|   646|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH   |0      |            0|     42|   646|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH   |0      |            1|     45|   646|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH   |1      |            0|     46|    62|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH   |1      |            1|     16|    62|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH   |0      |            0|      0|    62|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH   |0      |            1|      0|    62|
|0-6 months (no birth st.)  |COHORTS    |INDIA        |1      |            0|   2003|  4978|
|0-6 months (no birth st.)  |COHORTS    |INDIA        |1      |            1|    138|  4978|
|0-6 months (no birth st.)  |COHORTS    |INDIA        |0      |            0|   2619|  4978|
|0-6 months (no birth st.)  |COHORTS    |INDIA        |0      |            1|    218|  4978|
|0-6 months (no birth st.)  |COHORTS    |GUATEMALA    |1      |            0|     58|   674|
|0-6 months (no birth st.)  |COHORTS    |GUATEMALA    |1      |            1|     16|   674|
|0-6 months (no birth st.)  |COHORTS    |GUATEMALA    |0      |            0|    460|   674|
|0-6 months (no birth st.)  |COHORTS    |GUATEMALA    |0      |            1|    140|   674|
|0-6 months (no birth st.)  |COHORTS    |PHILIPPINES  |1      |            0|    177|  1190|
|0-6 months (no birth st.)  |COHORTS    |PHILIPPINES  |1      |            1|     31|  1190|
|0-6 months (no birth st.)  |COHORTS    |PHILIPPINES  |0      |            0|    773|  1190|
|0-6 months (no birth st.)  |COHORTS    |PHILIPPINES  |0      |            1|    209|  1190|
|0-6 months (no birth st.)  |CONTENT    |PERU         |1      |            0|    169|   195|
|0-6 months (no birth st.)  |CONTENT    |PERU         |1      |            1|      7|   195|
|0-6 months (no birth st.)  |CONTENT    |PERU         |0      |            0|     19|   195|
|0-6 months (no birth st.)  |CONTENT    |PERU         |0      |            1|      0|   195|
|0-6 months (no birth st.)  |JiVitA-3   |BANGLADESH   |1      |            0|  11107| 18317|
|0-6 months (no birth st.)  |JiVitA-3   |BANGLADESH   |1      |            1|   1636| 18317|
|0-6 months (no birth st.)  |JiVitA-3   |BANGLADESH   |0      |            0|   4823| 18317|
|0-6 months (no birth st.)  |JiVitA-3   |BANGLADESH   |0      |            1|    751| 18317|
|0-6 months (no birth st.)  |JiVitA-4   |BANGLADESH   |1      |            0|   2617|  3656|
|0-6 months (no birth st.)  |JiVitA-4   |BANGLADESH   |1      |            1|    242|  3656|
|0-6 months (no birth st.)  |JiVitA-4   |BANGLADESH   |0      |            0|    727|  3656|
|0-6 months (no birth st.)  |JiVitA-4   |BANGLADESH   |0      |            1|     70|  3656|
|0-6 months (no birth st.)  |LCNI-5     |MALAWI       |1      |            0|      1|   168|
|0-6 months (no birth st.)  |LCNI-5     |MALAWI       |1      |            1|      0|   168|
|0-6 months (no birth st.)  |LCNI-5     |MALAWI       |0      |            0|    167|   168|
|0-6 months (no birth st.)  |LCNI-5     |MALAWI       |0      |            1|      0|   168|
|0-6 months (no birth st.)  |MAL-ED     |INDIA        |1      |            0|     78|   198|
|0-6 months (no birth st.)  |MAL-ED     |INDIA        |1      |            1|     24|   198|
|0-6 months (no birth st.)  |MAL-ED     |INDIA        |0      |            0|     78|   198|
|0-6 months (no birth st.)  |MAL-ED     |INDIA        |0      |            1|     18|   198|
|0-6 months (no birth st.)  |MAL-ED     |BANGLADESH   |1      |            0|    131|   202|
|0-6 months (no birth st.)  |MAL-ED     |BANGLADESH   |1      |            1|     38|   202|
|0-6 months (no birth st.)  |MAL-ED     |BANGLADESH   |0      |            0|     29|   202|
|0-6 months (no birth st.)  |MAL-ED     |BANGLADESH   |0      |            1|      4|   202|
|0-6 months (no birth st.)  |MAL-ED     |PERU         |1      |            0|     35|   238|
|0-6 months (no birth st.)  |MAL-ED     |PERU         |1      |            1|     21|   238|
|0-6 months (no birth st.)  |MAL-ED     |PERU         |0      |            0|    116|   238|
|0-6 months (no birth st.)  |MAL-ED     |PERU         |0      |            1|     66|   238|
|0-6 months (no birth st.)  |MAL-ED     |NEPAL        |1      |            0|    196|   210|
|0-6 months (no birth st.)  |MAL-ED     |NEPAL        |1      |            1|     14|   210|
|0-6 months (no birth st.)  |MAL-ED     |NEPAL        |0      |            0|      0|   210|
|0-6 months (no birth st.)  |MAL-ED     |NEPAL        |0      |            1|      0|   210|
|0-6 months (no birth st.)  |MAL-ED     |BRAZIL       |1      |            0|    158|   180|
|0-6 months (no birth st.)  |MAL-ED     |BRAZIL       |1      |            1|     17|   180|
|0-6 months (no birth st.)  |MAL-ED     |BRAZIL       |0      |            0|      2|   180|
|0-6 months (no birth st.)  |MAL-ED     |BRAZIL       |0      |            1|      3|   180|
|0-6 months (no birth st.)  |MAL-ED     |TANZANIA     |1      |            0|      0|   206|
|0-6 months (no birth st.)  |MAL-ED     |TANZANIA     |1      |            1|      0|   206|
|0-6 months (no birth st.)  |MAL-ED     |TANZANIA     |0      |            0|    147|   206|
|0-6 months (no birth st.)  |MAL-ED     |TANZANIA     |0      |            1|     59|   206|
|0-6 months (no birth st.)  |MAL-ED     |SOUTH AFRICA |1      |            0|      5|   232|
|0-6 months (no birth st.)  |MAL-ED     |SOUTH AFRICA |1      |            1|      1|   232|
|0-6 months (no birth st.)  |MAL-ED     |SOUTH AFRICA |0      |            0|    159|   232|
|0-6 months (no birth st.)  |MAL-ED     |SOUTH AFRICA |0      |            1|     67|   232|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH   |1      |            0|    149|   530|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH   |1      |            1|     40|   530|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH   |0      |            0|    260|   530|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH   |0      |            1|     81|   530|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH   |1      |            0|    462|   646|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH   |1      |            1|     97|   646|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH   |0      |            0|     62|   646|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH   |0      |            1|     25|   646|
|0-6 months (no birth st.)  |PROVIDE    |BANGLADESH   |1      |            0|     54|    62|
|0-6 months (no birth st.)  |PROVIDE    |BANGLADESH   |1      |            1|      8|    62|
|0-6 months (no birth st.)  |PROVIDE    |BANGLADESH   |0      |            0|      0|    62|
|0-6 months (no birth st.)  |PROVIDE    |BANGLADESH   |0      |            1|      0|    62|
|6-24 months                |COHORTS    |INDIA        |1      |            0|   1510|  4523|
|6-24 months                |COHORTS    |INDIA        |1      |            1|    480|  4523|
|6-24 months                |COHORTS    |INDIA        |0      |            0|   1902|  4523|
|6-24 months                |COHORTS    |INDIA        |0      |            1|    631|  4523|
|6-24 months                |COHORTS    |GUATEMALA    |1      |            0|     13|   637|
|6-24 months                |COHORTS    |GUATEMALA    |1      |            1|     53|   637|
|6-24 months                |COHORTS    |GUATEMALA    |0      |            0|    135|   637|
|6-24 months                |COHORTS    |GUATEMALA    |0      |            1|    436|   637|
|6-24 months                |COHORTS    |PHILIPPINES  |1      |            0|     71|   873|
|6-24 months                |COHORTS    |PHILIPPINES  |1      |            1|     84|   873|
|6-24 months                |COHORTS    |PHILIPPINES  |0      |            0|    200|   873|
|6-24 months                |COHORTS    |PHILIPPINES  |0      |            1|    518|   873|
|6-24 months                |CONTENT    |PERU         |1      |            0|    148|   188|
|6-24 months                |CONTENT    |PERU         |1      |            1|     21|   188|
|6-24 months                |CONTENT    |PERU         |0      |            0|     14|   188|
|6-24 months                |CONTENT    |PERU         |0      |            1|      5|   188|
|6-24 months                |JiVitA-3   |BANGLADESH   |1      |            0|   5826| 10487|
|6-24 months                |JiVitA-3   |BANGLADESH   |1      |            1|   1584| 10487|
|6-24 months                |JiVitA-3   |BANGLADESH   |0      |            0|   2394| 10487|
|6-24 months                |JiVitA-3   |BANGLADESH   |0      |            1|    683| 10487|
|6-24 months                |JiVitA-4   |BANGLADESH   |1      |            0|   1777|  3647|
|6-24 months                |JiVitA-4   |BANGLADESH   |1      |            1|   1074|  3647|
|6-24 months                |JiVitA-4   |BANGLADESH   |0      |            0|    493|  3647|
|6-24 months                |JiVitA-4   |BANGLADESH   |0      |            1|    303|  3647|
|6-24 months                |LCNI-5     |MALAWI       |1      |            0|      0|   715|
|6-24 months                |LCNI-5     |MALAWI       |1      |            1|      2|   715|
|6-24 months                |LCNI-5     |MALAWI       |0      |            0|    284|   715|
|6-24 months                |LCNI-5     |MALAWI       |0      |            1|    429|   715|
|6-24 months                |MAL-ED     |INDIA        |1      |            0|     41|   147|
|6-24 months                |MAL-ED     |INDIA        |1      |            1|     35|   147|
|6-24 months                |MAL-ED     |INDIA        |0      |            0|     43|   147|
|6-24 months                |MAL-ED     |INDIA        |0      |            1|     28|   147|
|6-24 months                |MAL-ED     |BANGLADESH   |1      |            0|     71|   148|
|6-24 months                |MAL-ED     |BANGLADESH   |1      |            1|     50|   148|
|6-24 months                |MAL-ED     |BANGLADESH   |0      |            0|     15|   148|
|6-24 months                |MAL-ED     |BANGLADESH   |0      |            1|     12|   148|
|6-24 months                |MAL-ED     |PERU         |1      |            0|     18|   128|
|6-24 months                |MAL-ED     |PERU         |1      |            1|     10|   128|
|6-24 months                |MAL-ED     |PERU         |0      |            0|     61|   128|
|6-24 months                |MAL-ED     |PERU         |0      |            1|     39|   128|
|6-24 months                |MAL-ED     |NEPAL        |1      |            0|    153|   193|
|6-24 months                |MAL-ED     |NEPAL        |1      |            1|     40|   193|
|6-24 months                |MAL-ED     |NEPAL        |0      |            0|      0|   193|
|6-24 months                |MAL-ED     |NEPAL        |0      |            1|      0|   193|
|6-24 months                |MAL-ED     |BRAZIL       |1      |            0|    133|   145|
|6-24 months                |MAL-ED     |BRAZIL       |1      |            1|     10|   145|
|6-24 months                |MAL-ED     |BRAZIL       |0      |            0|      2|   145|
|6-24 months                |MAL-ED     |BRAZIL       |0      |            1|      0|   145|
|6-24 months                |MAL-ED     |TANZANIA     |1      |            0|      0|   139|
|6-24 months                |MAL-ED     |TANZANIA     |1      |            1|      0|   139|
|6-24 months                |MAL-ED     |TANZANIA     |0      |            0|     30|   139|
|6-24 months                |MAL-ED     |TANZANIA     |0      |            1|    109|   139|
|6-24 months                |MAL-ED     |SOUTH AFRICA |1      |            0|      2|   136|
|6-24 months                |MAL-ED     |SOUTH AFRICA |1      |            1|      2|   136|
|6-24 months                |MAL-ED     |SOUTH AFRICA |0      |            0|     83|   136|
|6-24 months                |MAL-ED     |SOUTH AFRICA |0      |            1|     49|   136|
|6-24 months                |NIH-Birth  |BANGLADESH   |1      |            0|     54|   345|
|6-24 months                |NIH-Birth  |BANGLADESH   |1      |            1|     71|   345|
|6-24 months                |NIH-Birth  |BANGLADESH   |0      |            0|     93|   345|
|6-24 months                |NIH-Birth  |BANGLADESH   |0      |            1|    127|   345|
|6-24 months                |NIH-Crypto |BANGLADESH   |1      |            0|    328|   501|
|6-24 months                |NIH-Crypto |BANGLADESH   |1      |            1|    111|   501|
|6-24 months                |NIH-Crypto |BANGLADESH   |0      |            0|     42|   501|
|6-24 months                |NIH-Crypto |BANGLADESH   |0      |            1|     20|   501|
|6-24 months                |PROVIDE    |BANGLADESH   |1      |            0|     26|    34|
|6-24 months                |PROVIDE    |BANGLADESH   |1      |            1|      8|    34|
|6-24 months                |PROVIDE    |BANGLADESH   |0      |            0|      0|    34|
|6-24 months                |PROVIDE    |BANGLADESH   |0      |            1|      0|    34|


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


