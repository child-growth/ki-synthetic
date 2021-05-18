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

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |hhwealth_quart | stunted| n_cell|     n|
|:---------|:--------------|:------------|:--------------|-------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ4       |       0|     24|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ4       |       1|      5|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ1       |       0|     22|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ1       |       1|      4|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ2       |       0|     11|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ2       |       1|      4|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ3       |       0|     18|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ3       |       1|      4|    92|
|Birth     |COHORTS        |GUATEMALA    |WealthQ4       |       0|    282|   820|
|Birth     |COHORTS        |GUATEMALA    |WealthQ4       |       1|     14|   820|
|Birth     |COHORTS        |GUATEMALA    |WealthQ1       |       0|    165|   820|
|Birth     |COHORTS        |GUATEMALA    |WealthQ1       |       1|     11|   820|
|Birth     |COHORTS        |GUATEMALA    |WealthQ2       |       0|    130|   820|
|Birth     |COHORTS        |GUATEMALA    |WealthQ2       |       1|     12|   820|
|Birth     |COHORTS        |GUATEMALA    |WealthQ3       |       0|    196|   820|
|Birth     |COHORTS        |GUATEMALA    |WealthQ3       |       1|     10|   820|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ4       |       0|    839|  3047|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ4       |       1|     34|  3047|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ1       |       0|    627|  3047|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ1       |       1|     53|  3047|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ2       |       0|    502|  3047|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ2       |       1|     37|  3047|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ3       |       0|    892|  3047|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ3       |       1|     63|  3047|
|Birth     |CONTENT        |PERU         |WealthQ4       |       0|      1|     2|
|Birth     |CONTENT        |PERU         |WealthQ4       |       1|      0|     2|
|Birth     |CONTENT        |PERU         |WealthQ1       |       0|      1|     2|
|Birth     |CONTENT        |PERU         |WealthQ1       |       1|      0|     2|
|Birth     |CONTENT        |PERU         |WealthQ2       |       0|      0|     2|
|Birth     |CONTENT        |PERU         |WealthQ2       |       1|      0|     2|
|Birth     |CONTENT        |PERU         |WealthQ3       |       0|      0|     2|
|Birth     |CONTENT        |PERU         |WealthQ3       |       1|      0|     2|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ4       |       0|    141|   696|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ4       |       1|     29|   696|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ1       |       0|    139|   696|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ1       |       1|     30|   696|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ2       |       0|    145|   696|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ2       |       1|     30|   696|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ3       |       0|    149|   696|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ3       |       1|     33|   696|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ4       |       0|   4019| 22436|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ4       |       1|   1755| 22436|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ1       |       0|   3554| 22436|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ1       |       1|   1937| 22436|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ2       |       0|   3668| 22436|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ2       |       1|   1869| 22436|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ3       |       0|   3815| 22436|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ3       |       1|   1819| 22436|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ4       |       0|    488|  2821|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ4       |       1|    193|  2821|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ1       |       0|    489|  2821|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ1       |       1|    227|  2821|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ2       |       0|    465|  2821|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ2       |       1|    217|  2821|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ3       |       0|    522|  2821|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ3       |       1|    220|  2821|
|Birth     |MAL-ED         |INDIA        |WealthQ4       |       0|      5|    46|
|Birth     |MAL-ED         |INDIA        |WealthQ4       |       1|      1|    46|
|Birth     |MAL-ED         |INDIA        |WealthQ1       |       0|      9|    46|
|Birth     |MAL-ED         |INDIA        |WealthQ1       |       1|      3|    46|
|Birth     |MAL-ED         |INDIA        |WealthQ2       |       0|     11|    46|
|Birth     |MAL-ED         |INDIA        |WealthQ2       |       1|      6|    46|
|Birth     |MAL-ED         |INDIA        |WealthQ3       |       0|     11|    46|
|Birth     |MAL-ED         |INDIA        |WealthQ3       |       1|      0|    46|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ4       |       0|     45|   212|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ4       |       1|      3|   212|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ1       |       0|     54|   212|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ1       |       1|     13|   212|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ2       |       0|     34|   212|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ2       |       1|     10|   212|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ3       |       0|     40|   212|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ3       |       1|     13|   212|
|Birth     |MAL-ED         |PERU         |WealthQ4       |       0|     49|   217|
|Birth     |MAL-ED         |PERU         |WealthQ4       |       1|      6|   217|
|Birth     |MAL-ED         |PERU         |WealthQ1       |       0|     34|   217|
|Birth     |MAL-ED         |PERU         |WealthQ1       |       1|      3|   217|
|Birth     |MAL-ED         |PERU         |WealthQ2       |       0|     48|   217|
|Birth     |MAL-ED         |PERU         |WealthQ2       |       1|     10|   217|
|Birth     |MAL-ED         |PERU         |WealthQ3       |       0|     62|   217|
|Birth     |MAL-ED         |PERU         |WealthQ3       |       1|      5|   217|
|Birth     |MAL-ED         |NEPAL        |WealthQ4       |       0|      9|    27|
|Birth     |MAL-ED         |NEPAL        |WealthQ4       |       1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |WealthQ1       |       0|      4|    27|
|Birth     |MAL-ED         |NEPAL        |WealthQ1       |       1|      1|    27|
|Birth     |MAL-ED         |NEPAL        |WealthQ2       |       0|      9|    27|
|Birth     |MAL-ED         |NEPAL        |WealthQ2       |       1|      1|    27|
|Birth     |MAL-ED         |NEPAL        |WealthQ3       |       0|      3|    27|
|Birth     |MAL-ED         |NEPAL        |WealthQ3       |       1|      0|    27|
|Birth     |MAL-ED         |BRAZIL       |WealthQ4       |       0|      6|    55|
|Birth     |MAL-ED         |BRAZIL       |WealthQ4       |       1|      5|    55|
|Birth     |MAL-ED         |BRAZIL       |WealthQ1       |       0|     22|    55|
|Birth     |MAL-ED         |BRAZIL       |WealthQ1       |       1|      1|    55|
|Birth     |MAL-ED         |BRAZIL       |WealthQ2       |       0|     10|    55|
|Birth     |MAL-ED         |BRAZIL       |WealthQ2       |       1|      2|    55|
|Birth     |MAL-ED         |BRAZIL       |WealthQ3       |       0|      8|    55|
|Birth     |MAL-ED         |BRAZIL       |WealthQ3       |       1|      1|    55|
|Birth     |MAL-ED         |TANZANIA     |WealthQ4       |       0|     24|   117|
|Birth     |MAL-ED         |TANZANIA     |WealthQ4       |       1|      8|   117|
|Birth     |MAL-ED         |TANZANIA     |WealthQ1       |       0|     26|   117|
|Birth     |MAL-ED         |TANZANIA     |WealthQ1       |       1|      7|   117|
|Birth     |MAL-ED         |TANZANIA     |WealthQ2       |       0|     20|   117|
|Birth     |MAL-ED         |TANZANIA     |WealthQ2       |       1|      3|   117|
|Birth     |MAL-ED         |TANZANIA     |WealthQ3       |       0|     26|   117|
|Birth     |MAL-ED         |TANZANIA     |WealthQ3       |       1|      3|   117|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ4       |       0|     22|   107|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ4       |       1|      0|   107|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ1       |       0|     27|   107|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ1       |       1|      5|   107|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ2       |       0|     22|   107|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ2       |       1|      2|   107|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ3       |       0|     26|   107|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ3       |       1|      3|   107|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ4       |       0|    114|   539|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ4       |       1|     14|   539|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ1       |       0|    121|   539|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ1       |       1|     17|   539|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ2       |       0|    125|   539|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ2       |       1|      6|   539|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ3       |       0|    131|   539|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ3       |       1|     11|   539|
|Birth     |Vellore Crypto |INDIA        |WealthQ4       |       0|     79|   388|
|Birth     |Vellore Crypto |INDIA        |WealthQ4       |       1|      9|   388|
|Birth     |Vellore Crypto |INDIA        |WealthQ1       |       0|    109|   388|
|Birth     |Vellore Crypto |INDIA        |WealthQ1       |       1|     13|   388|
|Birth     |Vellore Crypto |INDIA        |WealthQ2       |       0|     94|   388|
|Birth     |Vellore Crypto |INDIA        |WealthQ2       |       1|     16|   388|
|Birth     |Vellore Crypto |INDIA        |WealthQ3       |       0|     61|   388|
|Birth     |Vellore Crypto |INDIA        |WealthQ3       |       1|      7|   388|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ4       |       0|     80|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ4       |       1|     32|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ1       |       0|     61|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ1       |       1|     27|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ2       |       0|     54|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ2       |       1|     26|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ3       |       0|     63|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ3       |       1|     26|   369|
|6 months  |COHORTS        |GUATEMALA    |WealthQ4       |       0|    222|   926|
|6 months  |COHORTS        |GUATEMALA    |WealthQ4       |       1|    120|   926|
|6 months  |COHORTS        |GUATEMALA    |WealthQ1       |       0|    110|   926|
|6 months  |COHORTS        |GUATEMALA    |WealthQ1       |       1|     86|   926|
|6 months  |COHORTS        |GUATEMALA    |WealthQ2       |       0|     94|   926|
|6 months  |COHORTS        |GUATEMALA    |WealthQ2       |       1|     84|   926|
|6 months  |COHORTS        |GUATEMALA    |WealthQ3       |       0|    123|   926|
|6 months  |COHORTS        |GUATEMALA    |WealthQ3       |       1|     87|   926|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ4       |       0|    643|  2706|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ4       |       1|    127|  2706|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ1       |       0|    430|  2706|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ1       |       1|    136|  2706|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ2       |       0|    377|  2706|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ2       |       1|    109|  2706|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ3       |       0|    684|  2706|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ3       |       1|    200|  2706|
|6 months  |CONTENT        |PERU         |WealthQ4       |       0|     46|   215|
|6 months  |CONTENT        |PERU         |WealthQ4       |       1|      1|   215|
|6 months  |CONTENT        |PERU         |WealthQ1       |       0|     64|   215|
|6 months  |CONTENT        |PERU         |WealthQ1       |       1|      2|   215|
|6 months  |CONTENT        |PERU         |WealthQ2       |       0|     48|   215|
|6 months  |CONTENT        |PERU         |WealthQ2       |       1|      2|   215|
|6 months  |CONTENT        |PERU         |WealthQ3       |       0|     48|   215|
|6 months  |CONTENT        |PERU         |WealthQ3       |       1|      4|   215|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ4       |       0|    113|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ4       |       1|     27|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ1       |       0|    106|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ1       |       1|     31|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ2       |       0|    119|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ2       |       1|     29|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ3       |       0|    104|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ3       |       1|     35|   564|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ4       |       0|   3701| 16802|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ4       |       1|   1090| 16802|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ1       |       0|   2749| 16802|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ1       |       1|    967| 16802|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ2       |       0|   2952| 16802|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ2       |       1|   1088| 16802|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ3       |       0|   3177| 16802|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ3       |       1|   1078| 16802|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ4       |       0|    968|  4827|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ4       |       1|    248|  4827|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ1       |       0|    849|  4827|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ1       |       1|    349|  4827|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ2       |       0|    853|  4827|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ2       |       1|    310|  4827|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ3       |       0|    938|  4827|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ3       |       1|    312|  4827|
|6 months  |LCNI-5         |MALAWI       |WealthQ4       |       0|    121|   827|
|6 months  |LCNI-5         |MALAWI       |WealthQ4       |       1|     81|   827|
|6 months  |LCNI-5         |MALAWI       |WealthQ1       |       0|    140|   827|
|6 months  |LCNI-5         |MALAWI       |WealthQ1       |       1|     78|   827|
|6 months  |LCNI-5         |MALAWI       |WealthQ2       |       0|    126|   827|
|6 months  |LCNI-5         |MALAWI       |WealthQ2       |       1|     74|   827|
|6 months  |LCNI-5         |MALAWI       |WealthQ3       |       0|    135|   827|
|6 months  |LCNI-5         |MALAWI       |WealthQ3       |       1|     72|   827|
|6 months  |MAL-ED         |INDIA        |WealthQ4       |       0|     34|   227|
|6 months  |MAL-ED         |INDIA        |WealthQ4       |       1|     11|   227|
|6 months  |MAL-ED         |INDIA        |WealthQ1       |       0|     54|   227|
|6 months  |MAL-ED         |INDIA        |WealthQ1       |       1|     12|   227|
|6 months  |MAL-ED         |INDIA        |WealthQ2       |       0|     50|   227|
|6 months  |MAL-ED         |INDIA        |WealthQ2       |       1|     15|   227|
|6 months  |MAL-ED         |INDIA        |WealthQ3       |       0|     46|   227|
|6 months  |MAL-ED         |INDIA        |WealthQ3       |       1|      5|   227|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ4       |       0|     48|   224|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ4       |       1|      3|   224|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ1       |       0|     51|   224|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ1       |       1|     20|   224|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ2       |       0|     40|   224|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ2       |       1|      6|   224|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ3       |       0|     45|   224|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ3       |       1|     11|   224|
|6 months  |MAL-ED         |PERU         |WealthQ4       |       0|     51|   255|
|6 months  |MAL-ED         |PERU         |WealthQ4       |       1|     14|   255|
|6 months  |MAL-ED         |PERU         |WealthQ1       |       0|     42|   255|
|6 months  |MAL-ED         |PERU         |WealthQ1       |       1|      9|   255|
|6 months  |MAL-ED         |PERU         |WealthQ2       |       0|     45|   255|
|6 months  |MAL-ED         |PERU         |WealthQ2       |       1|     20|   255|
|6 months  |MAL-ED         |PERU         |WealthQ3       |       0|     62|   255|
|6 months  |MAL-ED         |PERU         |WealthQ3       |       1|     12|   255|
|6 months  |MAL-ED         |NEPAL        |WealthQ4       |       0|     68|   231|
|6 months  |MAL-ED         |NEPAL        |WealthQ4       |       1|      4|   231|
|6 months  |MAL-ED         |NEPAL        |WealthQ1       |       0|     54|   231|
|6 months  |MAL-ED         |NEPAL        |WealthQ1       |       1|      4|   231|
|6 months  |MAL-ED         |NEPAL        |WealthQ2       |       0|     58|   231|
|6 months  |MAL-ED         |NEPAL        |WealthQ2       |       1|      2|   231|
|6 months  |MAL-ED         |NEPAL        |WealthQ3       |       0|     39|   231|
|6 months  |MAL-ED         |NEPAL        |WealthQ3       |       1|      2|   231|
|6 months  |MAL-ED         |BRAZIL       |WealthQ4       |       0|     39|   187|
|6 months  |MAL-ED         |BRAZIL       |WealthQ4       |       1|      2|   187|
|6 months  |MAL-ED         |BRAZIL       |WealthQ1       |       0|     56|   187|
|6 months  |MAL-ED         |BRAZIL       |WealthQ1       |       1|      1|   187|
|6 months  |MAL-ED         |BRAZIL       |WealthQ2       |       0|     44|   187|
|6 months  |MAL-ED         |BRAZIL       |WealthQ2       |       1|      2|   187|
|6 months  |MAL-ED         |BRAZIL       |WealthQ3       |       0|     43|   187|
|6 months  |MAL-ED         |BRAZIL       |WealthQ3       |       1|      0|   187|
|6 months  |MAL-ED         |TANZANIA     |WealthQ4       |       0|     41|   241|
|6 months  |MAL-ED         |TANZANIA     |WealthQ4       |       1|     15|   241|
|6 months  |MAL-ED         |TANZANIA     |WealthQ1       |       0|     53|   241|
|6 months  |MAL-ED         |TANZANIA     |WealthQ1       |       1|     15|   241|
|6 months  |MAL-ED         |TANZANIA     |WealthQ2       |       0|     45|   241|
|6 months  |MAL-ED         |TANZANIA     |WealthQ2       |       1|     13|   241|
|6 months  |MAL-ED         |TANZANIA     |WealthQ3       |       0|     45|   241|
|6 months  |MAL-ED         |TANZANIA     |WealthQ3       |       1|     14|   241|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ4       |       0|     46|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ4       |       1|     11|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ1       |       0|     50|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ1       |       1|     16|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ2       |       0|     36|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ2       |       1|      8|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ3       |       0|     51|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ3       |       1|     12|   230|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ4       |       0|    109|   604|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ4       |       1|     27|   604|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ1       |       0|    121|   604|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ1       |       1|     25|   604|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ2       |       0|    138|   604|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ2       |       1|     23|   604|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ3       |       0|    140|   604|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ3       |       1|     21|   604|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ4       |       0|    482|  2027|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ4       |       1|     45|  2027|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ1       |       0|    520|  2027|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ1       |       1|     54|  2027|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ2       |       0|    365|  2027|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ2       |       1|     37|  2027|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ3       |       0|    464|  2027|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ3       |       1|     60|  2027|
|6 months  |Vellore Crypto |INDIA        |WealthQ4       |       0|     69|   407|
|6 months  |Vellore Crypto |INDIA        |WealthQ4       |       1|     25|   407|
|6 months  |Vellore Crypto |INDIA        |WealthQ1       |       0|    106|   407|
|6 months  |Vellore Crypto |INDIA        |WealthQ1       |       1|     26|   407|
|6 months  |Vellore Crypto |INDIA        |WealthQ2       |       0|     80|   407|
|6 months  |Vellore Crypto |INDIA        |WealthQ2       |       1|     31|   407|
|6 months  |Vellore Crypto |INDIA        |WealthQ3       |       0|     52|   407|
|6 months  |Vellore Crypto |INDIA        |WealthQ3       |       1|     18|   407|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ4       |       0|     38|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ4       |       1|     75|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ1       |       0|     26|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ1       |       1|     63|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ2       |       0|     17|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ2       |       1|     63|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ3       |       0|     24|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ3       |       1|     65|   371|
|24 months |COHORTS        |GUATEMALA    |WealthQ4       |       0|     96|  1038|
|24 months |COHORTS        |GUATEMALA    |WealthQ4       |       1|    304|  1038|
|24 months |COHORTS        |GUATEMALA    |WealthQ1       |       0|     39|  1038|
|24 months |COHORTS        |GUATEMALA    |WealthQ1       |       1|    186|  1038|
|24 months |COHORTS        |GUATEMALA    |WealthQ2       |       0|     37|  1038|
|24 months |COHORTS        |GUATEMALA    |WealthQ2       |       1|    157|  1038|
|24 months |COHORTS        |GUATEMALA    |WealthQ3       |       0|     28|  1038|
|24 months |COHORTS        |GUATEMALA    |WealthQ3       |       1|    191|  1038|
|24 months |COHORTS        |PHILIPPINES  |WealthQ4       |       0|    377|  2443|
|24 months |COHORTS        |PHILIPPINES  |WealthQ4       |       1|    332|  2443|
|24 months |COHORTS        |PHILIPPINES  |WealthQ1       |       0|    142|  2443|
|24 months |COHORTS        |PHILIPPINES  |WealthQ1       |       1|    346|  2443|
|24 months |COHORTS        |PHILIPPINES  |WealthQ2       |       0|    128|  2443|
|24 months |COHORTS        |PHILIPPINES  |WealthQ2       |       1|    296|  2443|
|24 months |COHORTS        |PHILIPPINES  |WealthQ3       |       0|    273|  2443|
|24 months |COHORTS        |PHILIPPINES  |WealthQ3       |       1|    549|  2443|
|24 months |CONTENT        |PERU         |WealthQ4       |       0|     36|   164|
|24 months |CONTENT        |PERU         |WealthQ4       |       1|      4|   164|
|24 months |CONTENT        |PERU         |WealthQ1       |       0|     45|   164|
|24 months |CONTENT        |PERU         |WealthQ1       |       1|      4|   164|
|24 months |CONTENT        |PERU         |WealthQ2       |       0|     31|   164|
|24 months |CONTENT        |PERU         |WealthQ2       |       1|      4|   164|
|24 months |CONTENT        |PERU         |WealthQ3       |       0|     39|   164|
|24 months |CONTENT        |PERU         |WealthQ3       |       1|      1|   164|
|24 months |GMS-Nepal      |NEPAL        |WealthQ4       |       0|     76|   488|
|24 months |GMS-Nepal      |NEPAL        |WealthQ4       |       1|     52|   488|
|24 months |GMS-Nepal      |NEPAL        |WealthQ1       |       0|     57|   488|
|24 months |GMS-Nepal      |NEPAL        |WealthQ1       |       1|     59|   488|
|24 months |GMS-Nepal      |NEPAL        |WealthQ2       |       0|     77|   488|
|24 months |GMS-Nepal      |NEPAL        |WealthQ2       |       1|     51|   488|
|24 months |GMS-Nepal      |NEPAL        |WealthQ3       |       0|     59|   488|
|24 months |GMS-Nepal      |NEPAL        |WealthQ3       |       1|     57|   488|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ4       |       0|   1235|  8627|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ4       |       1|   1055|  8627|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ1       |       0|    969|  8627|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ1       |       1|   1079|  8627|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ2       |       0|   1108|  8627|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ2       |       1|   1067|  8627|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ3       |       0|   1078|  8627|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ3       |       1|   1036|  8627|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ4       |       0|    803|  4748|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ4       |       1|    426|  4748|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ1       |       0|    649|  4748|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ1       |       1|    503|  4748|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ2       |       0|    648|  4748|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ2       |       1|    486|  4748|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ3       |       0|    746|  4748|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ3       |       1|    487|  4748|
|24 months |LCNI-5         |MALAWI       |WealthQ4       |       0|     70|   574|
|24 months |LCNI-5         |MALAWI       |WealthQ4       |       1|     71|   574|
|24 months |LCNI-5         |MALAWI       |WealthQ1       |       0|     84|   574|
|24 months |LCNI-5         |MALAWI       |WealthQ1       |       1|     61|   574|
|24 months |LCNI-5         |MALAWI       |WealthQ2       |       0|     74|   574|
|24 months |LCNI-5         |MALAWI       |WealthQ2       |       1|     64|   574|
|24 months |LCNI-5         |MALAWI       |WealthQ3       |       0|     89|   574|
|24 months |LCNI-5         |MALAWI       |WealthQ3       |       1|     61|   574|
|24 months |MAL-ED         |INDIA        |WealthQ4       |       0|     23|   218|
|24 months |MAL-ED         |INDIA        |WealthQ4       |       1|     20|   218|
|24 months |MAL-ED         |INDIA        |WealthQ1       |       0|     41|   218|
|24 months |MAL-ED         |INDIA        |WealthQ1       |       1|     20|   218|
|24 months |MAL-ED         |INDIA        |WealthQ2       |       0|     30|   218|
|24 months |MAL-ED         |INDIA        |WealthQ2       |       1|     34|   218|
|24 months |MAL-ED         |INDIA        |WealthQ3       |       0|     31|   218|
|24 months |MAL-ED         |INDIA        |WealthQ3       |       1|     19|   218|
|24 months |MAL-ED         |BANGLADESH   |WealthQ4       |       0|     23|   195|
|24 months |MAL-ED         |BANGLADESH   |WealthQ4       |       1|     20|   195|
|24 months |MAL-ED         |BANGLADESH   |WealthQ1       |       0|     29|   195|
|24 months |MAL-ED         |BANGLADESH   |WealthQ1       |       1|     35|   195|
|24 months |MAL-ED         |BANGLADESH   |WealthQ2       |       0|     22|   195|
|24 months |MAL-ED         |BANGLADESH   |WealthQ2       |       1|     18|   195|
|24 months |MAL-ED         |BANGLADESH   |WealthQ3       |       0|     30|   195|
|24 months |MAL-ED         |BANGLADESH   |WealthQ3       |       1|     18|   195|
|24 months |MAL-ED         |PERU         |WealthQ4       |       0|     30|   185|
|24 months |MAL-ED         |PERU         |WealthQ4       |       1|     15|   185|
|24 months |MAL-ED         |PERU         |WealthQ1       |       0|     22|   185|
|24 months |MAL-ED         |PERU         |WealthQ1       |       1|     14|   185|
|24 months |MAL-ED         |PERU         |WealthQ2       |       0|     31|   185|
|24 months |MAL-ED         |PERU         |WealthQ2       |       1|     21|   185|
|24 months |MAL-ED         |PERU         |WealthQ3       |       0|     36|   185|
|24 months |MAL-ED         |PERU         |WealthQ3       |       1|     16|   185|
|24 months |MAL-ED         |NEPAL        |WealthQ4       |       0|     55|   224|
|24 months |MAL-ED         |NEPAL        |WealthQ4       |       1|     17|   224|
|24 months |MAL-ED         |NEPAL        |WealthQ1       |       0|     46|   224|
|24 months |MAL-ED         |NEPAL        |WealthQ1       |       1|     11|   224|
|24 months |MAL-ED         |NEPAL        |WealthQ2       |       0|     46|   224|
|24 months |MAL-ED         |NEPAL        |WealthQ2       |       1|     12|   224|
|24 months |MAL-ED         |NEPAL        |WealthQ3       |       0|     27|   224|
|24 months |MAL-ED         |NEPAL        |WealthQ3       |       1|     10|   224|
|24 months |MAL-ED         |BRAZIL       |WealthQ4       |       0|     31|   148|
|24 months |MAL-ED         |BRAZIL       |WealthQ4       |       1|      2|   148|
|24 months |MAL-ED         |BRAZIL       |WealthQ1       |       0|     42|   148|
|24 months |MAL-ED         |BRAZIL       |WealthQ1       |       1|      1|   148|
|24 months |MAL-ED         |BRAZIL       |WealthQ2       |       0|     35|   148|
|24 months |MAL-ED         |BRAZIL       |WealthQ2       |       1|      2|   148|
|24 months |MAL-ED         |BRAZIL       |WealthQ3       |       0|     35|   148|
|24 months |MAL-ED         |BRAZIL       |WealthQ3       |       1|      0|   148|
|24 months |MAL-ED         |TANZANIA     |WealthQ4       |       0|      9|   209|
|24 months |MAL-ED         |TANZANIA     |WealthQ4       |       1|     44|   209|
|24 months |MAL-ED         |TANZANIA     |WealthQ1       |       0|     17|   209|
|24 months |MAL-ED         |TANZANIA     |WealthQ1       |       1|     38|   209|
|24 months |MAL-ED         |TANZANIA     |WealthQ2       |       0|     15|   209|
|24 months |MAL-ED         |TANZANIA     |WealthQ2       |       1|     36|   209|
|24 months |MAL-ED         |TANZANIA     |WealthQ3       |       0|     17|   209|
|24 months |MAL-ED         |TANZANIA     |WealthQ3       |       1|     33|   209|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ4       |       0|     36|   215|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ4       |       1|     18|   215|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ1       |       0|     41|   215|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ1       |       1|     20|   215|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ2       |       0|     26|   215|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ2       |       1|     17|   215|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ3       |       0|     37|   215|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ3       |       1|     20|   215|
|24 months |PROVIDE        |BANGLADESH   |WealthQ4       |       0|     72|   578|
|24 months |PROVIDE        |BANGLADESH   |WealthQ4       |       1|     52|   578|
|24 months |PROVIDE        |BANGLADESH   |WealthQ1       |       0|     97|   578|
|24 months |PROVIDE        |BANGLADESH   |WealthQ1       |       1|     44|   578|
|24 months |PROVIDE        |BANGLADESH   |WealthQ2       |       0|    110|   578|
|24 months |PROVIDE        |BANGLADESH   |WealthQ2       |       1|     45|   578|
|24 months |PROVIDE        |BANGLADESH   |WealthQ3       |       0|    109|   578|
|24 months |PROVIDE        |BANGLADESH   |WealthQ3       |       1|     49|   578|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ4       |       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ4       |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ1       |       0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ1       |       1|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ2       |       0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ2       |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ3       |       0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ3       |       1|      0|     6|
|24 months |Vellore Crypto |INDIA        |WealthQ4       |       0|     59|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ4       |       1|     35|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ1       |       0|     84|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ1       |       1|     48|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ2       |       0|     52|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ2       |       1|     60|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ3       |       0|     42|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ3       |       1|     29|   409|


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: CONTENT, country: PERU
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


