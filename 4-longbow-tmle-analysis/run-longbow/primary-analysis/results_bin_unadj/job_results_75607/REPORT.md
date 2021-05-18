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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** impfloor

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |impfloor | wast_rec90d| n_cell|    n|
|:-----------|:--------------|:------------|:--------|-----------:|------:|----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1        |           0|     90|  229|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1        |           1|    139|  229|
|0-24 months |CMC-V-BCS-2002 |INDIA        |0        |           0|      0|  229|
|0-24 months |CMC-V-BCS-2002 |INDIA        |0        |           1|      0|  229|
|0-24 months |CONTENT        |PERU         |1        |           0|      1|    7|
|0-24 months |CONTENT        |PERU         |1        |           1|      5|    7|
|0-24 months |CONTENT        |PERU         |0        |           0|      0|    7|
|0-24 months |CONTENT        |PERU         |0        |           1|      1|    7|
|0-24 months |GMS-Nepal      |NEPAL        |1        |           0|     39|  516|
|0-24 months |GMS-Nepal      |NEPAL        |1        |           1|     52|  516|
|0-24 months |GMS-Nepal      |NEPAL        |0        |           0|    194|  516|
|0-24 months |GMS-Nepal      |NEPAL        |0        |           1|    231|  516|
|0-24 months |JiVitA-3       |BANGLADESH   |1        |           0|    345| 7552|
|0-24 months |JiVitA-3       |BANGLADESH   |1        |           1|    269| 7552|
|0-24 months |JiVitA-3       |BANGLADESH   |0        |           0|   4018| 7552|
|0-24 months |JiVitA-3       |BANGLADESH   |0        |           1|   2920| 7552|
|0-24 months |JiVitA-4       |BANGLADESH   |1        |           0|    162| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |1        |           1|     77| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |0        |           0|   1372| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |0        |           1|    457| 2068|
|0-24 months |MAL-ED         |INDIA        |1        |           0|     61|  173|
|0-24 months |MAL-ED         |INDIA        |1        |           1|     90|  173|
|0-24 months |MAL-ED         |INDIA        |0        |           0|      6|  173|
|0-24 months |MAL-ED         |INDIA        |0        |           1|     16|  173|
|0-24 months |MAL-ED         |BANGLADESH   |1        |           0|     41|  114|
|0-24 months |MAL-ED         |BANGLADESH   |1        |           1|     67|  114|
|0-24 months |MAL-ED         |BANGLADESH   |0        |           0|      0|  114|
|0-24 months |MAL-ED         |BANGLADESH   |0        |           1|      6|  114|
|0-24 months |MAL-ED         |PERU         |1        |           0|      2|   32|
|0-24 months |MAL-ED         |PERU         |1        |           1|      4|   32|
|0-24 months |MAL-ED         |PERU         |0        |           0|      3|   32|
|0-24 months |MAL-ED         |PERU         |0        |           1|     23|   32|
|0-24 months |MAL-ED         |NEPAL        |1        |           0|      8|   91|
|0-24 months |MAL-ED         |NEPAL        |1        |           1|     27|   91|
|0-24 months |MAL-ED         |NEPAL        |0        |           0|     12|   91|
|0-24 months |MAL-ED         |NEPAL        |0        |           1|     44|   91|
|0-24 months |MAL-ED         |BRAZIL       |1        |           0|      4|   21|
|0-24 months |MAL-ED         |BRAZIL       |1        |           1|     17|   21|
|0-24 months |MAL-ED         |BRAZIL       |0        |           0|      0|   21|
|0-24 months |MAL-ED         |BRAZIL       |0        |           1|      0|   21|
|0-24 months |MAL-ED         |TANZANIA     |1        |           0|      0|   51|
|0-24 months |MAL-ED         |TANZANIA     |1        |           1|      2|   51|
|0-24 months |MAL-ED         |TANZANIA     |0        |           0|      9|   51|
|0-24 months |MAL-ED         |TANZANIA     |0        |           1|     40|   51|
|0-24 months |MAL-ED         |SOUTH AFRICA |1        |           0|     12|   75|
|0-24 months |MAL-ED         |SOUTH AFRICA |1        |           1|     56|   75|
|0-24 months |MAL-ED         |SOUTH AFRICA |0        |           0|      1|   75|
|0-24 months |MAL-ED         |SOUTH AFRICA |0        |           1|      6|   75|
|0-24 months |NIH-Birth      |BANGLADESH   |1        |           0|    175|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |1        |           1|    194|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |0        |           0|     27|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |0        |           1|     25|  421|
|0-24 months |NIH-Crypto     |BANGLADESH   |1        |           0|     86|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |1        |           1|    151|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |0        |           0|     31|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |0        |           1|     42|  310|
|0-24 months |PROVIDE        |BANGLADESH   |1        |           0|    116|  308|
|0-24 months |PROVIDE        |BANGLADESH   |1        |           1|    167|  308|
|0-24 months |PROVIDE        |BANGLADESH   |0        |           0|     13|  308|
|0-24 months |PROVIDE        |BANGLADESH   |0        |           1|     12|  308|
|0-24 months |Vellore Crypto |INDIA        |1        |           0|    119|  305|
|0-24 months |Vellore Crypto |INDIA        |1        |           1|    186|  305|
|0-24 months |Vellore Crypto |INDIA        |0        |           0|      0|  305|
|0-24 months |Vellore Crypto |INDIA        |0        |           1|      0|  305|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1        |           0|     56|  150|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1        |           1|     94|  150|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |0        |           0|      0|  150|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |0        |           1|      0|  150|
|0-6 months  |CONTENT        |PERU         |1        |           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |1        |           1|      4|    4|
|0-6 months  |CONTENT        |PERU         |0        |           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |0        |           1|      0|    4|
|0-6 months  |GMS-Nepal      |NEPAL        |1        |           0|     17|  204|
|0-6 months  |GMS-Nepal      |NEPAL        |1        |           1|     18|  204|
|0-6 months  |GMS-Nepal      |NEPAL        |0        |           0|     63|  204|
|0-6 months  |GMS-Nepal      |NEPAL        |0        |           1|    106|  204|
|0-6 months  |JiVitA-3       |BANGLADESH   |1        |           0|    106| 4722|
|0-6 months  |JiVitA-3       |BANGLADESH   |1        |           1|    269| 4722|
|0-6 months  |JiVitA-3       |BANGLADESH   |0        |           0|   1427| 4722|
|0-6 months  |JiVitA-3       |BANGLADESH   |0        |           1|   2920| 4722|
|0-6 months  |JiVitA-4       |BANGLADESH   |1        |           0|     29|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |1        |           1|     52|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |0        |           0|    215|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |0        |           1|    257|  553|
|0-6 months  |MAL-ED         |INDIA        |1        |           0|     22|   80|
|0-6 months  |MAL-ED         |INDIA        |1        |           1|     50|   80|
|0-6 months  |MAL-ED         |INDIA        |0        |           0|      2|   80|
|0-6 months  |MAL-ED         |INDIA        |0        |           1|      6|   80|
|0-6 months  |MAL-ED         |BANGLADESH   |1        |           0|     11|   57|
|0-6 months  |MAL-ED         |BANGLADESH   |1        |           1|     42|   57|
|0-6 months  |MAL-ED         |BANGLADESH   |0        |           0|      0|   57|
|0-6 months  |MAL-ED         |BANGLADESH   |0        |           1|      4|   57|
|0-6 months  |MAL-ED         |PERU         |1        |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |1        |           1|      1|   11|
|0-6 months  |MAL-ED         |PERU         |0        |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |0        |           1|     10|   11|
|0-6 months  |MAL-ED         |NEPAL        |1        |           0|      4|   46|
|0-6 months  |MAL-ED         |NEPAL        |1        |           1|     14|   46|
|0-6 months  |MAL-ED         |NEPAL        |0        |           0|      5|   46|
|0-6 months  |MAL-ED         |NEPAL        |0        |           1|     23|   46|
|0-6 months  |MAL-ED         |BRAZIL       |1        |           0|      1|   14|
|0-6 months  |MAL-ED         |BRAZIL       |1        |           1|     13|   14|
|0-6 months  |MAL-ED         |BRAZIL       |0        |           0|      0|   14|
|0-6 months  |MAL-ED         |BRAZIL       |0        |           1|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |1        |           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |1        |           1|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |0        |           0|      1|   14|
|0-6 months  |MAL-ED         |TANZANIA     |0        |           1|     13|   14|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1        |           0|      6|   30|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1        |           1|     21|   30|
|0-6 months  |MAL-ED         |SOUTH AFRICA |0        |           0|      0|   30|
|0-6 months  |MAL-ED         |SOUTH AFRICA |0        |           1|      3|   30|
|0-6 months  |NIH-Birth      |BANGLADESH   |1        |           0|     58|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |1        |           1|    139|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |0        |           0|      6|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |0        |           1|     20|  223|
|0-6 months  |NIH-Crypto     |BANGLADESH   |1        |           0|     15|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |1        |           1|    137|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |0        |           0|      6|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |0        |           1|     39|  197|
|0-6 months  |PROVIDE        |BANGLADESH   |1        |           0|     34|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |1        |           1|    133|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |0        |           0|      6|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |0        |           1|     12|  185|
|0-6 months  |Vellore Crypto |INDIA        |1        |           0|     67|  185|
|0-6 months  |Vellore Crypto |INDIA        |1        |           1|    118|  185|
|0-6 months  |Vellore Crypto |INDIA        |0        |           0|      0|  185|
|0-6 months  |Vellore Crypto |INDIA        |0        |           1|      0|  185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1        |           0|     34|   79|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1        |           1|     45|   79|
|6-24 months |CMC-V-BCS-2002 |INDIA        |0        |           0|      0|   79|
|6-24 months |CMC-V-BCS-2002 |INDIA        |0        |           1|      0|   79|
|6-24 months |CONTENT        |PERU         |1        |           0|      1|    3|
|6-24 months |CONTENT        |PERU         |1        |           1|      1|    3|
|6-24 months |CONTENT        |PERU         |0        |           0|      0|    3|
|6-24 months |CONTENT        |PERU         |0        |           1|      1|    3|
|6-24 months |GMS-Nepal      |NEPAL        |1        |           0|     22|  312|
|6-24 months |GMS-Nepal      |NEPAL        |1        |           1|     34|  312|
|6-24 months |GMS-Nepal      |NEPAL        |0        |           0|    131|  312|
|6-24 months |GMS-Nepal      |NEPAL        |0        |           1|    125|  312|
|6-24 months |JiVitA-3       |BANGLADESH   |1        |           0|    239| 2830|
|6-24 months |JiVitA-3       |BANGLADESH   |1        |           1|      0| 2830|
|6-24 months |JiVitA-3       |BANGLADESH   |0        |           0|   2591| 2830|
|6-24 months |JiVitA-3       |BANGLADESH   |0        |           1|      0| 2830|
|6-24 months |JiVitA-4       |BANGLADESH   |1        |           0|    133| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |1        |           1|     25| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |0        |           0|   1157| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |0        |           1|    200| 1515|
|6-24 months |MAL-ED         |INDIA        |1        |           0|     39|   93|
|6-24 months |MAL-ED         |INDIA        |1        |           1|     40|   93|
|6-24 months |MAL-ED         |INDIA        |0        |           0|      4|   93|
|6-24 months |MAL-ED         |INDIA        |0        |           1|     10|   93|
|6-24 months |MAL-ED         |BANGLADESH   |1        |           0|     30|   57|
|6-24 months |MAL-ED         |BANGLADESH   |1        |           1|     25|   57|
|6-24 months |MAL-ED         |BANGLADESH   |0        |           0|      0|   57|
|6-24 months |MAL-ED         |BANGLADESH   |0        |           1|      2|   57|
|6-24 months |MAL-ED         |PERU         |1        |           0|      2|   21|
|6-24 months |MAL-ED         |PERU         |1        |           1|      3|   21|
|6-24 months |MAL-ED         |PERU         |0        |           0|      3|   21|
|6-24 months |MAL-ED         |PERU         |0        |           1|     13|   21|
|6-24 months |MAL-ED         |NEPAL        |1        |           0|      4|   45|
|6-24 months |MAL-ED         |NEPAL        |1        |           1|     13|   45|
|6-24 months |MAL-ED         |NEPAL        |0        |           0|      7|   45|
|6-24 months |MAL-ED         |NEPAL        |0        |           1|     21|   45|
|6-24 months |MAL-ED         |BRAZIL       |1        |           0|      3|    7|
|6-24 months |MAL-ED         |BRAZIL       |1        |           1|      4|    7|
|6-24 months |MAL-ED         |BRAZIL       |0        |           0|      0|    7|
|6-24 months |MAL-ED         |BRAZIL       |0        |           1|      0|    7|
|6-24 months |MAL-ED         |TANZANIA     |1        |           0|      0|   37|
|6-24 months |MAL-ED         |TANZANIA     |1        |           1|      2|   37|
|6-24 months |MAL-ED         |TANZANIA     |0        |           0|      8|   37|
|6-24 months |MAL-ED         |TANZANIA     |0        |           1|     27|   37|
|6-24 months |MAL-ED         |SOUTH AFRICA |1        |           0|      6|   45|
|6-24 months |MAL-ED         |SOUTH AFRICA |1        |           1|     35|   45|
|6-24 months |MAL-ED         |SOUTH AFRICA |0        |           0|      1|   45|
|6-24 months |MAL-ED         |SOUTH AFRICA |0        |           1|      3|   45|
|6-24 months |NIH-Birth      |BANGLADESH   |1        |           0|    117|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |1        |           1|     55|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |0        |           0|     21|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |0        |           1|      5|  198|
|6-24 months |NIH-Crypto     |BANGLADESH   |1        |           0|     71|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |1        |           1|     14|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |0        |           0|     25|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |0        |           1|      3|  113|
|6-24 months |PROVIDE        |BANGLADESH   |1        |           0|     82|  123|
|6-24 months |PROVIDE        |BANGLADESH   |1        |           1|     34|  123|
|6-24 months |PROVIDE        |BANGLADESH   |0        |           0|      7|  123|
|6-24 months |PROVIDE        |BANGLADESH   |0        |           1|      0|  123|
|6-24 months |Vellore Crypto |INDIA        |1        |           0|     52|  120|
|6-24 months |Vellore Crypto |INDIA        |1        |           1|     68|  120|
|6-24 months |Vellore Crypto |INDIA        |0        |           0|      0|  120|
|6-24 months |Vellore Crypto |INDIA        |0        |           1|      0|  120|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
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
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
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
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
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
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
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


