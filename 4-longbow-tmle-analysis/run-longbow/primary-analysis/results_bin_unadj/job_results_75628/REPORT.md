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

**Intervention Variable:** nrooms

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |nrooms | ever_wasted| n_cell|     n|
|:-----------|:--------------|:------------|:------|-----------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |4+     |           0|      7|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |4+     |           1|      7|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1      |           0|     74|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1      |           1|    123|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |2      |           0|     37|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |2      |           1|     61|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |3      |           0|     27|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |3      |           1|     37|   373|
|0-24 months |COHORTS        |INDIA        |4+     |           0|     85|  5933|
|0-24 months |COHORTS        |INDIA        |4+     |           1|     36|  5933|
|0-24 months |COHORTS        |INDIA        |1      |           0|   2037|  5933|
|0-24 months |COHORTS        |INDIA        |1      |           1|   1066|  5933|
|0-24 months |COHORTS        |INDIA        |2      |           0|   1725|  5933|
|0-24 months |COHORTS        |INDIA        |2      |           1|    804|  5933|
|0-24 months |COHORTS        |INDIA        |3      |           0|    121|  5933|
|0-24 months |COHORTS        |INDIA        |3      |           1|     59|  5933|
|0-24 months |CONTENT        |PERU         |4+     |           0|     65|   215|
|0-24 months |CONTENT        |PERU         |4+     |           1|      1|   215|
|0-24 months |CONTENT        |PERU         |1      |           0|     41|   215|
|0-24 months |CONTENT        |PERU         |1      |           1|      3|   215|
|0-24 months |CONTENT        |PERU         |2      |           0|     60|   215|
|0-24 months |CONTENT        |PERU         |2      |           1|      0|   215|
|0-24 months |CONTENT        |PERU         |3      |           0|     44|   215|
|0-24 months |CONTENT        |PERU         |3      |           1|      1|   215|
|0-24 months |GMS-Nepal      |NEPAL        |4+     |           0|    132|   686|
|0-24 months |GMS-Nepal      |NEPAL        |4+     |           1|    185|   686|
|0-24 months |GMS-Nepal      |NEPAL        |1      |           0|     18|   686|
|0-24 months |GMS-Nepal      |NEPAL        |1      |           1|     30|   686|
|0-24 months |GMS-Nepal      |NEPAL        |2      |           0|     64|   686|
|0-24 months |GMS-Nepal      |NEPAL        |2      |           1|     80|   686|
|0-24 months |GMS-Nepal      |NEPAL        |3      |           0|     67|   686|
|0-24 months |GMS-Nepal      |NEPAL        |3      |           1|    110|   686|
|0-24 months |JiVitA-3       |BANGLADESH   |4+     |           0|    810| 26932|
|0-24 months |JiVitA-3       |BANGLADESH   |4+     |           1|    269| 26932|
|0-24 months |JiVitA-3       |BANGLADESH   |1      |           0|  11808| 26932|
|0-24 months |JiVitA-3       |BANGLADESH   |1      |           1|   4168| 26932|
|0-24 months |JiVitA-3       |BANGLADESH   |2      |           0|   5430| 26932|
|0-24 months |JiVitA-3       |BANGLADESH   |2      |           1|   1869| 26932|
|0-24 months |JiVitA-3       |BANGLADESH   |3      |           0|   1931| 26932|
|0-24 months |JiVitA-3       |BANGLADESH   |3      |           1|    647| 26932|
|0-24 months |JiVitA-4       |BANGLADESH   |4+     |           0|    199|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |4+     |           1|     79|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |1      |           0|   2216|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |1      |           1|   1010|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |2      |           0|    919|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |2      |           1|    442|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |3      |           0|    418|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |3      |           1|    157|  5440|
|0-24 months |MAL-ED         |INDIA        |4+     |           0|      5|   245|
|0-24 months |MAL-ED         |INDIA        |4+     |           1|      9|   245|
|0-24 months |MAL-ED         |INDIA        |1      |           0|     40|   245|
|0-24 months |MAL-ED         |INDIA        |1      |           1|     34|   245|
|0-24 months |MAL-ED         |INDIA        |2      |           0|     51|   245|
|0-24 months |MAL-ED         |INDIA        |2      |           1|     44|   245|
|0-24 months |MAL-ED         |INDIA        |3      |           0|     33|   245|
|0-24 months |MAL-ED         |INDIA        |3      |           1|     29|   245|
|0-24 months |MAL-ED         |BANGLADESH   |4+     |           0|      5|   252|
|0-24 months |MAL-ED         |BANGLADESH   |4+     |           1|      4|   252|
|0-24 months |MAL-ED         |BANGLADESH   |1      |           0|     99|   252|
|0-24 months |MAL-ED         |BANGLADESH   |1      |           1|     38|   252|
|0-24 months |MAL-ED         |BANGLADESH   |2      |           0|     46|   252|
|0-24 months |MAL-ED         |BANGLADESH   |2      |           1|     28|   252|
|0-24 months |MAL-ED         |BANGLADESH   |3      |           0|     20|   252|
|0-24 months |MAL-ED         |BANGLADESH   |3      |           1|     12|   252|
|0-24 months |MAL-ED         |PERU         |4+     |           0|    105|   294|
|0-24 months |MAL-ED         |PERU         |4+     |           1|     15|   294|
|0-24 months |MAL-ED         |PERU         |1      |           0|     16|   294|
|0-24 months |MAL-ED         |PERU         |1      |           1|      1|   294|
|0-24 months |MAL-ED         |PERU         |2      |           0|     43|   294|
|0-24 months |MAL-ED         |PERU         |2      |           1|      4|   294|
|0-24 months |MAL-ED         |PERU         |3      |           0|    104|   294|
|0-24 months |MAL-ED         |PERU         |3      |           1|      6|   294|
|0-24 months |MAL-ED         |NEPAL        |4+     |           0|     97|   236|
|0-24 months |MAL-ED         |NEPAL        |4+     |           1|     42|   236|
|0-24 months |MAL-ED         |NEPAL        |1      |           0|      7|   236|
|0-24 months |MAL-ED         |NEPAL        |1      |           1|      1|   236|
|0-24 months |MAL-ED         |NEPAL        |2      |           0|     46|   236|
|0-24 months |MAL-ED         |NEPAL        |2      |           1|     23|   236|
|0-24 months |MAL-ED         |NEPAL        |3      |           0|     15|   236|
|0-24 months |MAL-ED         |NEPAL        |3      |           1|      5|   236|
|0-24 months |MAL-ED         |BRAZIL       |4+     |           0|     94|   211|
|0-24 months |MAL-ED         |BRAZIL       |4+     |           1|      6|   211|
|0-24 months |MAL-ED         |BRAZIL       |1      |           0|      3|   211|
|0-24 months |MAL-ED         |BRAZIL       |1      |           1|      0|   211|
|0-24 months |MAL-ED         |BRAZIL       |2      |           0|     19|   211|
|0-24 months |MAL-ED         |BRAZIL       |2      |           1|      2|   211|
|0-24 months |MAL-ED         |BRAZIL       |3      |           0|     77|   211|
|0-24 months |MAL-ED         |BRAZIL       |3      |           1|     10|   211|
|0-24 months |MAL-ED         |TANZANIA     |4+     |           0|     97|   255|
|0-24 months |MAL-ED         |TANZANIA     |4+     |           1|     10|   255|
|0-24 months |MAL-ED         |TANZANIA     |1      |           0|      7|   255|
|0-24 months |MAL-ED         |TANZANIA     |1      |           1|      2|   255|
|0-24 months |MAL-ED         |TANZANIA     |2      |           0|     38|   255|
|0-24 months |MAL-ED         |TANZANIA     |2      |           1|      6|   255|
|0-24 months |MAL-ED         |TANZANIA     |3      |           0|     77|   255|
|0-24 months |MAL-ED         |TANZANIA     |3      |           1|     18|   255|
|0-24 months |MAL-ED         |SOUTH AFRICA |4+     |           0|    166|   269|
|0-24 months |MAL-ED         |SOUTH AFRICA |4+     |           1|     35|   269|
|0-24 months |MAL-ED         |SOUTH AFRICA |1      |           0|      9|   269|
|0-24 months |MAL-ED         |SOUTH AFRICA |1      |           1|      1|   269|
|0-24 months |MAL-ED         |SOUTH AFRICA |2      |           0|     17|   269|
|0-24 months |MAL-ED         |SOUTH AFRICA |2      |           1|      9|   269|
|0-24 months |MAL-ED         |SOUTH AFRICA |3      |           0|     22|   269|
|0-24 months |MAL-ED         |SOUTH AFRICA |3      |           1|     10|   269|
|0-24 months |NIH-Crypto     |BANGLADESH   |4+     |           0|     77|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |4+     |           1|     37|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |1      |           0|    230|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |1      |           1|    100|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |2      |           0|    133|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |2      |           1|     75|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |3      |           0|     68|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |3      |           1|     38|   758|
|0-24 months |PROVIDE        |BANGLADESH   |4+     |           0|     20|   700|
|0-24 months |PROVIDE        |BANGLADESH   |4+     |           1|      8|   700|
|0-24 months |PROVIDE        |BANGLADESH   |1      |           0|    323|   700|
|0-24 months |PROVIDE        |BANGLADESH   |1      |           1|    171|   700|
|0-24 months |PROVIDE        |BANGLADESH   |2      |           0|     63|   700|
|0-24 months |PROVIDE        |BANGLADESH   |2      |           1|     47|   700|
|0-24 months |PROVIDE        |BANGLADESH   |3      |           0|     48|   700|
|0-24 months |PROVIDE        |BANGLADESH   |3      |           1|     20|   700|
|0-24 months |Vellore Crypto |INDIA        |4+     |           0|      5|   408|
|0-24 months |Vellore Crypto |INDIA        |4+     |           1|      7|   408|
|0-24 months |Vellore Crypto |INDIA        |1      |           0|     64|   408|
|0-24 months |Vellore Crypto |INDIA        |1      |           1|    140|   408|
|0-24 months |Vellore Crypto |INDIA        |2      |           0|     56|   408|
|0-24 months |Vellore Crypto |INDIA        |2      |           1|    103|   408|
|0-24 months |Vellore Crypto |INDIA        |3      |           0|     16|   408|
|0-24 months |Vellore Crypto |INDIA        |3      |           1|     17|   408|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |4+     |           0|      9|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |4+     |           1|      5|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1      |           0|     98|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1      |           1|     96|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |2      |           0|     44|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |2      |           1|     54|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |3      |           0|     27|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |3      |           1|     35|   368|
|0-6 months  |COHORTS        |INDIA        |4+     |           0|     88|  5711|
|0-6 months  |COHORTS        |INDIA        |4+     |           1|     29|  5711|
|0-6 months  |COHORTS        |INDIA        |1      |           0|   2212|  5711|
|0-6 months  |COHORTS        |INDIA        |1      |           1|    780|  5711|
|0-6 months  |COHORTS        |INDIA        |2      |           0|   1846|  5711|
|0-6 months  |COHORTS        |INDIA        |2      |           1|    586|  5711|
|0-6 months  |COHORTS        |INDIA        |3      |           0|    129|  5711|
|0-6 months  |COHORTS        |INDIA        |3      |           1|     41|  5711|
|0-6 months  |CONTENT        |PERU         |4+     |           0|     65|   215|
|0-6 months  |CONTENT        |PERU         |4+     |           1|      1|   215|
|0-6 months  |CONTENT        |PERU         |1      |           0|     42|   215|
|0-6 months  |CONTENT        |PERU         |1      |           1|      2|   215|
|0-6 months  |CONTENT        |PERU         |2      |           0|     60|   215|
|0-6 months  |CONTENT        |PERU         |2      |           1|      0|   215|
|0-6 months  |CONTENT        |PERU         |3      |           0|     44|   215|
|0-6 months  |CONTENT        |PERU         |3      |           1|      1|   215|
|0-6 months  |GMS-Nepal      |NEPAL        |4+     |           0|    197|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |4+     |           1|    120|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |1      |           0|     34|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |1      |           1|     14|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |2      |           0|     93|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |2      |           1|     51|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |3      |           0|    104|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |3      |           1|     73|   686|
|0-6 months  |JiVitA-3       |BANGLADESH   |4+     |           0|    893| 26836|
|0-6 months  |JiVitA-3       |BANGLADESH   |4+     |           1|    182| 26836|
|0-6 months  |JiVitA-3       |BANGLADESH   |1      |           0|  13081| 26836|
|0-6 months  |JiVitA-3       |BANGLADESH   |1      |           1|   2842| 26836|
|0-6 months  |JiVitA-3       |BANGLADESH   |2      |           0|   5993| 26836|
|0-6 months  |JiVitA-3       |BANGLADESH   |2      |           1|   1274| 26836|
|0-6 months  |JiVitA-3       |BANGLADESH   |3      |           0|   2139| 26836|
|0-6 months  |JiVitA-3       |BANGLADESH   |3      |           1|    432| 26836|
|0-6 months  |JiVitA-4       |BANGLADESH   |4+     |           0|    229|  5093|
|0-6 months  |JiVitA-4       |BANGLADESH   |4+     |           1|     31|  5093|
|0-6 months  |JiVitA-4       |BANGLADESH   |1      |           0|   2694|  5093|
|0-6 months  |JiVitA-4       |BANGLADESH   |1      |           1|    316|  5093|
|0-6 months  |JiVitA-4       |BANGLADESH   |2      |           0|   1131|  5093|
|0-6 months  |JiVitA-4       |BANGLADESH   |2      |           1|    153|  5093|
|0-6 months  |JiVitA-4       |BANGLADESH   |3      |           0|    486|  5093|
|0-6 months  |JiVitA-4       |BANGLADESH   |3      |           1|     53|  5093|
|0-6 months  |MAL-ED         |INDIA        |4+     |           0|      8|   245|
|0-6 months  |MAL-ED         |INDIA        |4+     |           1|      6|   245|
|0-6 months  |MAL-ED         |INDIA        |1      |           0|     50|   245|
|0-6 months  |MAL-ED         |INDIA        |1      |           1|     24|   245|
|0-6 months  |MAL-ED         |INDIA        |2      |           0|     63|   245|
|0-6 months  |MAL-ED         |INDIA        |2      |           1|     32|   245|
|0-6 months  |MAL-ED         |INDIA        |3      |           0|     45|   245|
|0-6 months  |MAL-ED         |INDIA        |3      |           1|     17|   245|
|0-6 months  |MAL-ED         |BANGLADESH   |4+     |           0|      7|   252|
|0-6 months  |MAL-ED         |BANGLADESH   |4+     |           1|      2|   252|
|0-6 months  |MAL-ED         |BANGLADESH   |1      |           0|    112|   252|
|0-6 months  |MAL-ED         |BANGLADESH   |1      |           1|     25|   252|
|0-6 months  |MAL-ED         |BANGLADESH   |2      |           0|     52|   252|
|0-6 months  |MAL-ED         |BANGLADESH   |2      |           1|     22|   252|
|0-6 months  |MAL-ED         |BANGLADESH   |3      |           0|     24|   252|
|0-6 months  |MAL-ED         |BANGLADESH   |3      |           1|      8|   252|
|0-6 months  |MAL-ED         |PERU         |4+     |           0|    111|   294|
|0-6 months  |MAL-ED         |PERU         |4+     |           1|      9|   294|
|0-6 months  |MAL-ED         |PERU         |1      |           0|     17|   294|
|0-6 months  |MAL-ED         |PERU         |1      |           1|      0|   294|
|0-6 months  |MAL-ED         |PERU         |2      |           0|     45|   294|
|0-6 months  |MAL-ED         |PERU         |2      |           1|      2|   294|
|0-6 months  |MAL-ED         |PERU         |3      |           0|    110|   294|
|0-6 months  |MAL-ED         |PERU         |3      |           1|      0|   294|
|0-6 months  |MAL-ED         |NEPAL        |4+     |           0|    110|   236|
|0-6 months  |MAL-ED         |NEPAL        |4+     |           1|     29|   236|
|0-6 months  |MAL-ED         |NEPAL        |1      |           0|      7|   236|
|0-6 months  |MAL-ED         |NEPAL        |1      |           1|      1|   236|
|0-6 months  |MAL-ED         |NEPAL        |2      |           0|     55|   236|
|0-6 months  |MAL-ED         |NEPAL        |2      |           1|     14|   236|
|0-6 months  |MAL-ED         |NEPAL        |3      |           0|     18|   236|
|0-6 months  |MAL-ED         |NEPAL        |3      |           1|      2|   236|
|0-6 months  |MAL-ED         |BRAZIL       |4+     |           0|     95|   211|
|0-6 months  |MAL-ED         |BRAZIL       |4+     |           1|      5|   211|
|0-6 months  |MAL-ED         |BRAZIL       |1      |           0|      3|   211|
|0-6 months  |MAL-ED         |BRAZIL       |1      |           1|      0|   211|
|0-6 months  |MAL-ED         |BRAZIL       |2      |           0|     19|   211|
|0-6 months  |MAL-ED         |BRAZIL       |2      |           1|      2|   211|
|0-6 months  |MAL-ED         |BRAZIL       |3      |           0|     80|   211|
|0-6 months  |MAL-ED         |BRAZIL       |3      |           1|      7|   211|
|0-6 months  |MAL-ED         |TANZANIA     |4+     |           0|    104|   255|
|0-6 months  |MAL-ED         |TANZANIA     |4+     |           1|      3|   255|
|0-6 months  |MAL-ED         |TANZANIA     |1      |           0|      7|   255|
|0-6 months  |MAL-ED         |TANZANIA     |1      |           1|      2|   255|
|0-6 months  |MAL-ED         |TANZANIA     |2      |           0|     43|   255|
|0-6 months  |MAL-ED         |TANZANIA     |2      |           1|      1|   255|
|0-6 months  |MAL-ED         |TANZANIA     |3      |           0|     88|   255|
|0-6 months  |MAL-ED         |TANZANIA     |3      |           1|      7|   255|
|0-6 months  |MAL-ED         |SOUTH AFRICA |4+     |           0|    180|   269|
|0-6 months  |MAL-ED         |SOUTH AFRICA |4+     |           1|     21|   269|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1      |           0|      9|   269|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1      |           1|      1|   269|
|0-6 months  |MAL-ED         |SOUTH AFRICA |2      |           0|     24|   269|
|0-6 months  |MAL-ED         |SOUTH AFRICA |2      |           1|      2|   269|
|0-6 months  |MAL-ED         |SOUTH AFRICA |3      |           0|     27|   269|
|0-6 months  |MAL-ED         |SOUTH AFRICA |3      |           1|      5|   269|
|0-6 months  |NIH-Crypto     |BANGLADESH   |4+     |           0|     85|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |4+     |           1|     29|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |1      |           0|    254|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |1      |           1|     76|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |2      |           0|    151|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |2      |           1|     57|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |3      |           0|     73|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |3      |           1|     33|   758|
|0-6 months  |PROVIDE        |BANGLADESH   |4+     |           0|     21|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |4+     |           1|      7|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |1      |           0|    365|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |1      |           1|    129|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |2      |           0|     77|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |2      |           1|     33|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |3      |           0|     56|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |3      |           1|     12|   700|
|0-6 months  |Vellore Crypto |INDIA        |4+     |           0|      5|   408|
|0-6 months  |Vellore Crypto |INDIA        |4+     |           1|      7|   408|
|0-6 months  |Vellore Crypto |INDIA        |1      |           0|     88|   408|
|0-6 months  |Vellore Crypto |INDIA        |1      |           1|    116|   408|
|0-6 months  |Vellore Crypto |INDIA        |2      |           0|     75|   408|
|0-6 months  |Vellore Crypto |INDIA        |2      |           1|     84|   408|
|0-6 months  |Vellore Crypto |INDIA        |3      |           0|     18|   408|
|0-6 months  |Vellore Crypto |INDIA        |3      |           1|     15|   408|
|6-24 months |CMC-V-BCS-2002 |INDIA        |4+     |           0|     10|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |4+     |           1|      4|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1      |           0|    137|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1      |           1|     60|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |2      |           0|     72|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |2      |           1|     26|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |3      |           0|     55|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |3      |           1|      9|   373|
|6-24 months |COHORTS        |INDIA        |4+     |           0|    102|  5555|
|6-24 months |COHORTS        |INDIA        |4+     |           1|     12|  5555|
|6-24 months |COHORTS        |INDIA        |1      |           0|   2520|  5555|
|6-24 months |COHORTS        |INDIA        |1      |           1|    383|  5555|
|6-24 months |COHORTS        |INDIA        |2      |           0|   2100|  5555|
|6-24 months |COHORTS        |INDIA        |2      |           1|    269|  5555|
|6-24 months |COHORTS        |INDIA        |3      |           0|    145|  5555|
|6-24 months |COHORTS        |INDIA        |3      |           1|     24|  5555|
|6-24 months |CONTENT        |PERU         |4+     |           0|     66|   215|
|6-24 months |CONTENT        |PERU         |4+     |           1|      0|   215|
|6-24 months |CONTENT        |PERU         |1      |           0|     43|   215|
|6-24 months |CONTENT        |PERU         |1      |           1|      1|   215|
|6-24 months |CONTENT        |PERU         |2      |           0|     60|   215|
|6-24 months |CONTENT        |PERU         |2      |           1|      0|   215|
|6-24 months |CONTENT        |PERU         |3      |           0|     44|   215|
|6-24 months |CONTENT        |PERU         |3      |           1|      1|   215|
|6-24 months |GMS-Nepal      |NEPAL        |4+     |           0|    147|   590|
|6-24 months |GMS-Nepal      |NEPAL        |4+     |           1|    122|   590|
|6-24 months |GMS-Nepal      |NEPAL        |1      |           0|     19|   590|
|6-24 months |GMS-Nepal      |NEPAL        |1      |           1|     24|   590|
|6-24 months |GMS-Nepal      |NEPAL        |2      |           0|     67|   590|
|6-24 months |GMS-Nepal      |NEPAL        |2      |           1|     55|   590|
|6-24 months |GMS-Nepal      |NEPAL        |3      |           0|     78|   590|
|6-24 months |GMS-Nepal      |NEPAL        |3      |           1|     78|   590|
|6-24 months |JiVitA-3       |BANGLADESH   |4+     |           0|    622| 17289|
|6-24 months |JiVitA-3       |BANGLADESH   |4+     |           1|    117| 17289|
|6-24 months |JiVitA-3       |BANGLADESH   |1      |           0|   8363| 17289|
|6-24 months |JiVitA-3       |BANGLADESH   |1      |           1|   1681| 17289|
|6-24 months |JiVitA-3       |BANGLADESH   |2      |           0|   4025| 17289|
|6-24 months |JiVitA-3       |BANGLADESH   |2      |           1|    765| 17289|
|6-24 months |JiVitA-3       |BANGLADESH   |3      |           0|   1442| 17289|
|6-24 months |JiVitA-3       |BANGLADESH   |3      |           1|    274| 17289|
|6-24 months |JiVitA-4       |BANGLADESH   |4+     |           0|    217|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |4+     |           1|     60|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |1      |           0|   2399|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |1      |           1|    818|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |2      |           0|   1020|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |2      |           1|    340|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |3      |           0|    449|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |3      |           1|    124|  5427|
|6-24 months |MAL-ED         |INDIA        |4+     |           0|     11|   230|
|6-24 months |MAL-ED         |INDIA        |4+     |           1|      3|   230|
|6-24 months |MAL-ED         |INDIA        |1      |           0|     51|   230|
|6-24 months |MAL-ED         |INDIA        |1      |           1|     17|   230|
|6-24 months |MAL-ED         |INDIA        |2      |           0|     67|   230|
|6-24 months |MAL-ED         |INDIA        |2      |           1|     24|   230|
|6-24 months |MAL-ED         |INDIA        |3      |           0|     38|   230|
|6-24 months |MAL-ED         |INDIA        |3      |           1|     19|   230|
|6-24 months |MAL-ED         |BANGLADESH   |4+     |           0|      6|   231|
|6-24 months |MAL-ED         |BANGLADESH   |4+     |           1|      2|   231|
|6-24 months |MAL-ED         |BANGLADESH   |1      |           0|    103|   231|
|6-24 months |MAL-ED         |BANGLADESH   |1      |           1|     22|   231|
|6-24 months |MAL-ED         |BANGLADESH   |2      |           0|     60|   231|
|6-24 months |MAL-ED         |BANGLADESH   |2      |           1|     10|   231|
|6-24 months |MAL-ED         |BANGLADESH   |3      |           0|     21|   231|
|6-24 months |MAL-ED         |BANGLADESH   |3      |           1|      7|   231|
|6-24 months |MAL-ED         |PERU         |4+     |           0|     97|   262|
|6-24 months |MAL-ED         |PERU         |4+     |           1|      8|   262|
|6-24 months |MAL-ED         |PERU         |1      |           0|     13|   262|
|6-24 months |MAL-ED         |PERU         |1      |           1|      1|   262|
|6-24 months |MAL-ED         |PERU         |2      |           0|     42|   262|
|6-24 months |MAL-ED         |PERU         |2      |           1|      2|   262|
|6-24 months |MAL-ED         |PERU         |3      |           0|     93|   262|
|6-24 months |MAL-ED         |PERU         |3      |           1|      6|   262|
|6-24 months |MAL-ED         |NEPAL        |4+     |           0|    116|   231|
|6-24 months |MAL-ED         |NEPAL        |4+     |           1|     20|   231|
|6-24 months |MAL-ED         |NEPAL        |1      |           0|      8|   231|
|6-24 months |MAL-ED         |NEPAL        |1      |           1|      0|   231|
|6-24 months |MAL-ED         |NEPAL        |2      |           0|     55|   231|
|6-24 months |MAL-ED         |NEPAL        |2      |           1|     12|   231|
|6-24 months |MAL-ED         |NEPAL        |3      |           0|     17|   231|
|6-24 months |MAL-ED         |NEPAL        |3      |           1|      3|   231|
|6-24 months |MAL-ED         |BRAZIL       |4+     |           0|     90|   188|
|6-24 months |MAL-ED         |BRAZIL       |4+     |           1|      1|   188|
|6-24 months |MAL-ED         |BRAZIL       |1      |           0|      3|   188|
|6-24 months |MAL-ED         |BRAZIL       |1      |           1|      0|   188|
|6-24 months |MAL-ED         |BRAZIL       |2      |           0|     14|   188|
|6-24 months |MAL-ED         |BRAZIL       |2      |           1|      1|   188|
|6-24 months |MAL-ED         |BRAZIL       |3      |           0|     76|   188|
|6-24 months |MAL-ED         |BRAZIL       |3      |           1|      3|   188|
|6-24 months |MAL-ED         |TANZANIA     |4+     |           0|     95|   244|
|6-24 months |MAL-ED         |TANZANIA     |4+     |           1|      8|   244|
|6-24 months |MAL-ED         |TANZANIA     |1      |           0|      7|   244|
|6-24 months |MAL-ED         |TANZANIA     |1      |           1|      1|   244|
|6-24 months |MAL-ED         |TANZANIA     |2      |           0|     36|   244|
|6-24 months |MAL-ED         |TANZANIA     |2      |           1|      5|   244|
|6-24 months |MAL-ED         |TANZANIA     |3      |           0|     78|   244|
|6-24 months |MAL-ED         |TANZANIA     |3      |           1|     14|   244|
|6-24 months |MAL-ED         |SOUTH AFRICA |4+     |           0|    157|   233|
|6-24 months |MAL-ED         |SOUTH AFRICA |4+     |           1|     20|   233|
|6-24 months |MAL-ED         |SOUTH AFRICA |1      |           0|      6|   233|
|6-24 months |MAL-ED         |SOUTH AFRICA |1      |           1|      1|   233|
|6-24 months |MAL-ED         |SOUTH AFRICA |2      |           0|     13|   233|
|6-24 months |MAL-ED         |SOUTH AFRICA |2      |           1|      8|   233|
|6-24 months |MAL-ED         |SOUTH AFRICA |3      |           0|     23|   233|
|6-24 months |MAL-ED         |SOUTH AFRICA |3      |           1|      5|   233|
|6-24 months |NIH-Crypto     |BANGLADESH   |4+     |           0|     97|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |4+     |           1|     13|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |1      |           0|    277|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |1      |           1|     42|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |2      |           0|    172|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |2      |           1|     30|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |3      |           0|     88|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |3      |           1|     11|   730|
|6-24 months |PROVIDE        |BANGLADESH   |4+     |           0|     22|   615|
|6-24 months |PROVIDE        |BANGLADESH   |4+     |           1|      2|   615|
|6-24 months |PROVIDE        |BANGLADESH   |1      |           0|    371|   615|
|6-24 months |PROVIDE        |BANGLADESH   |1      |           1|     63|   615|
|6-24 months |PROVIDE        |BANGLADESH   |2      |           0|     74|   615|
|6-24 months |PROVIDE        |BANGLADESH   |2      |           1|     21|   615|
|6-24 months |PROVIDE        |BANGLADESH   |3      |           0|     49|   615|
|6-24 months |PROVIDE        |BANGLADESH   |3      |           1|     13|   615|
|6-24 months |Vellore Crypto |INDIA        |4+     |           0|     10|   408|
|6-24 months |Vellore Crypto |INDIA        |4+     |           1|      2|   408|
|6-24 months |Vellore Crypto |INDIA        |1      |           0|    143|   408|
|6-24 months |Vellore Crypto |INDIA        |1      |           1|     61|   408|
|6-24 months |Vellore Crypto |INDIA        |2      |           0|    103|   408|
|6-24 months |Vellore Crypto |INDIA        |2      |           1|     56|   408|
|6-24 months |Vellore Crypto |INDIA        |3      |           0|     26|   408|
|6-24 months |Vellore Crypto |INDIA        |3      |           1|      7|   408|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


