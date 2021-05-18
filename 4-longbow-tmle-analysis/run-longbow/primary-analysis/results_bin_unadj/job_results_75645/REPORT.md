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

**Outcome Variable:** ever_swasted

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

|agecat      |studyid        |country      |nrooms | ever_swasted| n_cell|     n|
|:-----------|:--------------|:------------|:------|------------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |4+     |            0|     10|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |4+     |            1|      4|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1      |            0|    146|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1      |            1|     51|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |2      |            0|     71|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |2      |            1|     27|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |3      |            0|     54|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |3      |            1|     10|   373|
|0-24 months |COHORTS        |INDIA        |4+     |            0|    109|  5933|
|0-24 months |COHORTS        |INDIA        |4+     |            1|     12|  5933|
|0-24 months |COHORTS        |INDIA        |1      |            0|   2761|  5933|
|0-24 months |COHORTS        |INDIA        |1      |            1|    342|  5933|
|0-24 months |COHORTS        |INDIA        |2      |            0|   2286|  5933|
|0-24 months |COHORTS        |INDIA        |2      |            1|    243|  5933|
|0-24 months |COHORTS        |INDIA        |3      |            0|    171|  5933|
|0-24 months |COHORTS        |INDIA        |3      |            1|      9|  5933|
|0-24 months |CONTENT        |PERU         |4+     |            0|     66|   215|
|0-24 months |CONTENT        |PERU         |4+     |            1|      0|   215|
|0-24 months |CONTENT        |PERU         |1      |            0|     44|   215|
|0-24 months |CONTENT        |PERU         |1      |            1|      0|   215|
|0-24 months |CONTENT        |PERU         |2      |            0|     60|   215|
|0-24 months |CONTENT        |PERU         |2      |            1|      0|   215|
|0-24 months |CONTENT        |PERU         |3      |            0|     44|   215|
|0-24 months |CONTENT        |PERU         |3      |            1|      1|   215|
|0-24 months |GMS-Nepal      |NEPAL        |4+     |            0|    237|   686|
|0-24 months |GMS-Nepal      |NEPAL        |4+     |            1|     80|   686|
|0-24 months |GMS-Nepal      |NEPAL        |1      |            0|     34|   686|
|0-24 months |GMS-Nepal      |NEPAL        |1      |            1|     14|   686|
|0-24 months |GMS-Nepal      |NEPAL        |2      |            0|    106|   686|
|0-24 months |GMS-Nepal      |NEPAL        |2      |            1|     38|   686|
|0-24 months |GMS-Nepal      |NEPAL        |3      |            0|    132|   686|
|0-24 months |GMS-Nepal      |NEPAL        |3      |            1|     45|   686|
|0-24 months |JiVitA-3       |BANGLADESH   |4+     |            0|   1011| 26932|
|0-24 months |JiVitA-3       |BANGLADESH   |4+     |            1|     68| 26932|
|0-24 months |JiVitA-3       |BANGLADESH   |1      |            0|  14970| 26932|
|0-24 months |JiVitA-3       |BANGLADESH   |1      |            1|   1006| 26932|
|0-24 months |JiVitA-3       |BANGLADESH   |2      |            0|   6877| 26932|
|0-24 months |JiVitA-3       |BANGLADESH   |2      |            1|    422| 26932|
|0-24 months |JiVitA-3       |BANGLADESH   |3      |            0|   2430| 26932|
|0-24 months |JiVitA-3       |BANGLADESH   |3      |            1|    148| 26932|
|0-24 months |JiVitA-4       |BANGLADESH   |4+     |            0|    258|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |4+     |            1|     20|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |1      |            0|   3022|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |1      |            1|    204|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |2      |            0|   1273|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |2      |            1|     88|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |3      |            0|    544|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |3      |            1|     31|  5440|
|0-24 months |MAL-ED         |INDIA        |4+     |            0|     14|   245|
|0-24 months |MAL-ED         |INDIA        |4+     |            1|      0|   245|
|0-24 months |MAL-ED         |INDIA        |1      |            0|     63|   245|
|0-24 months |MAL-ED         |INDIA        |1      |            1|     11|   245|
|0-24 months |MAL-ED         |INDIA        |2      |            0|     85|   245|
|0-24 months |MAL-ED         |INDIA        |2      |            1|     10|   245|
|0-24 months |MAL-ED         |INDIA        |3      |            0|     58|   245|
|0-24 months |MAL-ED         |INDIA        |3      |            1|      4|   245|
|0-24 months |MAL-ED         |BANGLADESH   |4+     |            0|      8|   252|
|0-24 months |MAL-ED         |BANGLADESH   |4+     |            1|      1|   252|
|0-24 months |MAL-ED         |BANGLADESH   |1      |            0|    125|   252|
|0-24 months |MAL-ED         |BANGLADESH   |1      |            1|     12|   252|
|0-24 months |MAL-ED         |BANGLADESH   |2      |            0|     68|   252|
|0-24 months |MAL-ED         |BANGLADESH   |2      |            1|      6|   252|
|0-24 months |MAL-ED         |BANGLADESH   |3      |            0|     31|   252|
|0-24 months |MAL-ED         |BANGLADESH   |3      |            1|      1|   252|
|0-24 months |MAL-ED         |PERU         |4+     |            0|    118|   294|
|0-24 months |MAL-ED         |PERU         |4+     |            1|      2|   294|
|0-24 months |MAL-ED         |PERU         |1      |            0|     17|   294|
|0-24 months |MAL-ED         |PERU         |1      |            1|      0|   294|
|0-24 months |MAL-ED         |PERU         |2      |            0|     47|   294|
|0-24 months |MAL-ED         |PERU         |2      |            1|      0|   294|
|0-24 months |MAL-ED         |PERU         |3      |            0|    108|   294|
|0-24 months |MAL-ED         |PERU         |3      |            1|      2|   294|
|0-24 months |MAL-ED         |NEPAL        |4+     |            0|    137|   236|
|0-24 months |MAL-ED         |NEPAL        |4+     |            1|      2|   236|
|0-24 months |MAL-ED         |NEPAL        |1      |            0|      7|   236|
|0-24 months |MAL-ED         |NEPAL        |1      |            1|      1|   236|
|0-24 months |MAL-ED         |NEPAL        |2      |            0|     64|   236|
|0-24 months |MAL-ED         |NEPAL        |2      |            1|      5|   236|
|0-24 months |MAL-ED         |NEPAL        |3      |            0|     19|   236|
|0-24 months |MAL-ED         |NEPAL        |3      |            1|      1|   236|
|0-24 months |MAL-ED         |BRAZIL       |4+     |            0|     99|   211|
|0-24 months |MAL-ED         |BRAZIL       |4+     |            1|      1|   211|
|0-24 months |MAL-ED         |BRAZIL       |1      |            0|      3|   211|
|0-24 months |MAL-ED         |BRAZIL       |1      |            1|      0|   211|
|0-24 months |MAL-ED         |BRAZIL       |2      |            0|     20|   211|
|0-24 months |MAL-ED         |BRAZIL       |2      |            1|      1|   211|
|0-24 months |MAL-ED         |BRAZIL       |3      |            0|     85|   211|
|0-24 months |MAL-ED         |BRAZIL       |3      |            1|      2|   211|
|0-24 months |MAL-ED         |TANZANIA     |4+     |            0|    107|   255|
|0-24 months |MAL-ED         |TANZANIA     |4+     |            1|      0|   255|
|0-24 months |MAL-ED         |TANZANIA     |1      |            0|      9|   255|
|0-24 months |MAL-ED         |TANZANIA     |1      |            1|      0|   255|
|0-24 months |MAL-ED         |TANZANIA     |2      |            0|     42|   255|
|0-24 months |MAL-ED         |TANZANIA     |2      |            1|      2|   255|
|0-24 months |MAL-ED         |TANZANIA     |3      |            0|     88|   255|
|0-24 months |MAL-ED         |TANZANIA     |3      |            1|      7|   255|
|0-24 months |MAL-ED         |SOUTH AFRICA |4+     |            0|    193|   269|
|0-24 months |MAL-ED         |SOUTH AFRICA |4+     |            1|      8|   269|
|0-24 months |MAL-ED         |SOUTH AFRICA |1      |            0|     10|   269|
|0-24 months |MAL-ED         |SOUTH AFRICA |1      |            1|      0|   269|
|0-24 months |MAL-ED         |SOUTH AFRICA |2      |            0|     22|   269|
|0-24 months |MAL-ED         |SOUTH AFRICA |2      |            1|      4|   269|
|0-24 months |MAL-ED         |SOUTH AFRICA |3      |            0|     30|   269|
|0-24 months |MAL-ED         |SOUTH AFRICA |3      |            1|      2|   269|
|0-24 months |NIH-Crypto     |BANGLADESH   |4+     |            0|    108|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |4+     |            1|      6|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |1      |            0|    303|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |1      |            1|     27|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |2      |            0|    187|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |2      |            1|     21|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |3      |            0|     94|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |3      |            1|     12|   758|
|0-24 months |PROVIDE        |BANGLADESH   |4+     |            0|     28|   700|
|0-24 months |PROVIDE        |BANGLADESH   |4+     |            1|      0|   700|
|0-24 months |PROVIDE        |BANGLADESH   |1      |            0|    463|   700|
|0-24 months |PROVIDE        |BANGLADESH   |1      |            1|     31|   700|
|0-24 months |PROVIDE        |BANGLADESH   |2      |            0|    101|   700|
|0-24 months |PROVIDE        |BANGLADESH   |2      |            1|      9|   700|
|0-24 months |PROVIDE        |BANGLADESH   |3      |            0|     66|   700|
|0-24 months |PROVIDE        |BANGLADESH   |3      |            1|      2|   700|
|0-24 months |Vellore Crypto |INDIA        |4+     |            0|      6|   408|
|0-24 months |Vellore Crypto |INDIA        |4+     |            1|      6|   408|
|0-24 months |Vellore Crypto |INDIA        |1      |            0|    138|   408|
|0-24 months |Vellore Crypto |INDIA        |1      |            1|     66|   408|
|0-24 months |Vellore Crypto |INDIA        |2      |            0|    101|   408|
|0-24 months |Vellore Crypto |INDIA        |2      |            1|     58|   408|
|0-24 months |Vellore Crypto |INDIA        |3      |            0|     23|   408|
|0-24 months |Vellore Crypto |INDIA        |3      |            1|     10|   408|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |4+     |            0|     11|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |4+     |            1|      3|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1      |            0|    157|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1      |            1|     37|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |2      |            0|     80|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |2      |            1|     18|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |3      |            0|     53|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |3      |            1|      9|   368|
|0-6 months  |COHORTS        |INDIA        |4+     |            0|    108|  5711|
|0-6 months  |COHORTS        |INDIA        |4+     |            1|      9|  5711|
|0-6 months  |COHORTS        |INDIA        |1      |            0|   2755|  5711|
|0-6 months  |COHORTS        |INDIA        |1      |            1|    237|  5711|
|0-6 months  |COHORTS        |INDIA        |2      |            0|   2263|  5711|
|0-6 months  |COHORTS        |INDIA        |2      |            1|    169|  5711|
|0-6 months  |COHORTS        |INDIA        |3      |            0|    163|  5711|
|0-6 months  |COHORTS        |INDIA        |3      |            1|      7|  5711|
|0-6 months  |CONTENT        |PERU         |4+     |            0|     66|   215|
|0-6 months  |CONTENT        |PERU         |4+     |            1|      0|   215|
|0-6 months  |CONTENT        |PERU         |1      |            0|     44|   215|
|0-6 months  |CONTENT        |PERU         |1      |            1|      0|   215|
|0-6 months  |CONTENT        |PERU         |2      |            0|     60|   215|
|0-6 months  |CONTENT        |PERU         |2      |            1|      0|   215|
|0-6 months  |CONTENT        |PERU         |3      |            0|     44|   215|
|0-6 months  |CONTENT        |PERU         |3      |            1|      1|   215|
|0-6 months  |GMS-Nepal      |NEPAL        |4+     |            0|    275|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |4+     |            1|     42|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |1      |            0|     43|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |1      |            1|      5|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |2      |            0|    128|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |2      |            1|     16|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |3      |            0|    161|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |3      |            1|     16|   686|
|0-6 months  |JiVitA-3       |BANGLADESH   |4+     |            0|   1035| 26836|
|0-6 months  |JiVitA-3       |BANGLADESH   |4+     |            1|     40| 26836|
|0-6 months  |JiVitA-3       |BANGLADESH   |1      |            0|  15254| 26836|
|0-6 months  |JiVitA-3       |BANGLADESH   |1      |            1|    669| 26836|
|0-6 months  |JiVitA-3       |BANGLADESH   |2      |            0|   6969| 26836|
|0-6 months  |JiVitA-3       |BANGLADESH   |2      |            1|    298| 26836|
|0-6 months  |JiVitA-3       |BANGLADESH   |3      |            0|   2468| 26836|
|0-6 months  |JiVitA-3       |BANGLADESH   |3      |            1|    103| 26836|
|0-6 months  |JiVitA-4       |BANGLADESH   |4+     |            0|    259|  5093|
|0-6 months  |JiVitA-4       |BANGLADESH   |4+     |            1|      1|  5093|
|0-6 months  |JiVitA-4       |BANGLADESH   |1      |            0|   2945|  5093|
|0-6 months  |JiVitA-4       |BANGLADESH   |1      |            1|     65|  5093|
|0-6 months  |JiVitA-4       |BANGLADESH   |2      |            0|   1254|  5093|
|0-6 months  |JiVitA-4       |BANGLADESH   |2      |            1|     30|  5093|
|0-6 months  |JiVitA-4       |BANGLADESH   |3      |            0|    524|  5093|
|0-6 months  |JiVitA-4       |BANGLADESH   |3      |            1|     15|  5093|
|0-6 months  |MAL-ED         |INDIA        |4+     |            0|     14|   245|
|0-6 months  |MAL-ED         |INDIA        |4+     |            1|      0|   245|
|0-6 months  |MAL-ED         |INDIA        |1      |            0|     66|   245|
|0-6 months  |MAL-ED         |INDIA        |1      |            1|      8|   245|
|0-6 months  |MAL-ED         |INDIA        |2      |            0|     86|   245|
|0-6 months  |MAL-ED         |INDIA        |2      |            1|      9|   245|
|0-6 months  |MAL-ED         |INDIA        |3      |            0|     59|   245|
|0-6 months  |MAL-ED         |INDIA        |3      |            1|      3|   245|
|0-6 months  |MAL-ED         |BANGLADESH   |4+     |            0|      8|   252|
|0-6 months  |MAL-ED         |BANGLADESH   |4+     |            1|      1|   252|
|0-6 months  |MAL-ED         |BANGLADESH   |1      |            0|    129|   252|
|0-6 months  |MAL-ED         |BANGLADESH   |1      |            1|      8|   252|
|0-6 months  |MAL-ED         |BANGLADESH   |2      |            0|     69|   252|
|0-6 months  |MAL-ED         |BANGLADESH   |2      |            1|      5|   252|
|0-6 months  |MAL-ED         |BANGLADESH   |3      |            0|     31|   252|
|0-6 months  |MAL-ED         |BANGLADESH   |3      |            1|      1|   252|
|0-6 months  |MAL-ED         |PERU         |4+     |            0|    119|   294|
|0-6 months  |MAL-ED         |PERU         |4+     |            1|      1|   294|
|0-6 months  |MAL-ED         |PERU         |1      |            0|     17|   294|
|0-6 months  |MAL-ED         |PERU         |1      |            1|      0|   294|
|0-6 months  |MAL-ED         |PERU         |2      |            0|     47|   294|
|0-6 months  |MAL-ED         |PERU         |2      |            1|      0|   294|
|0-6 months  |MAL-ED         |PERU         |3      |            0|    110|   294|
|0-6 months  |MAL-ED         |PERU         |3      |            1|      0|   294|
|0-6 months  |MAL-ED         |NEPAL        |4+     |            0|    138|   236|
|0-6 months  |MAL-ED         |NEPAL        |4+     |            1|      1|   236|
|0-6 months  |MAL-ED         |NEPAL        |1      |            0|      7|   236|
|0-6 months  |MAL-ED         |NEPAL        |1      |            1|      1|   236|
|0-6 months  |MAL-ED         |NEPAL        |2      |            0|     65|   236|
|0-6 months  |MAL-ED         |NEPAL        |2      |            1|      4|   236|
|0-6 months  |MAL-ED         |NEPAL        |3      |            0|     19|   236|
|0-6 months  |MAL-ED         |NEPAL        |3      |            1|      1|   236|
|0-6 months  |MAL-ED         |BRAZIL       |4+     |            0|     99|   211|
|0-6 months  |MAL-ED         |BRAZIL       |4+     |            1|      1|   211|
|0-6 months  |MAL-ED         |BRAZIL       |1      |            0|      3|   211|
|0-6 months  |MAL-ED         |BRAZIL       |1      |            1|      0|   211|
|0-6 months  |MAL-ED         |BRAZIL       |2      |            0|     21|   211|
|0-6 months  |MAL-ED         |BRAZIL       |2      |            1|      0|   211|
|0-6 months  |MAL-ED         |BRAZIL       |3      |            0|     85|   211|
|0-6 months  |MAL-ED         |BRAZIL       |3      |            1|      2|   211|
|0-6 months  |MAL-ED         |TANZANIA     |4+     |            0|    107|   255|
|0-6 months  |MAL-ED         |TANZANIA     |4+     |            1|      0|   255|
|0-6 months  |MAL-ED         |TANZANIA     |1      |            0|      9|   255|
|0-6 months  |MAL-ED         |TANZANIA     |1      |            1|      0|   255|
|0-6 months  |MAL-ED         |TANZANIA     |2      |            0|     44|   255|
|0-6 months  |MAL-ED         |TANZANIA     |2      |            1|      0|   255|
|0-6 months  |MAL-ED         |TANZANIA     |3      |            0|     91|   255|
|0-6 months  |MAL-ED         |TANZANIA     |3      |            1|      4|   255|
|0-6 months  |MAL-ED         |SOUTH AFRICA |4+     |            0|    199|   269|
|0-6 months  |MAL-ED         |SOUTH AFRICA |4+     |            1|      2|   269|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1      |            0|     10|   269|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1      |            1|      0|   269|
|0-6 months  |MAL-ED         |SOUTH AFRICA |2      |            0|     24|   269|
|0-6 months  |MAL-ED         |SOUTH AFRICA |2      |            1|      2|   269|
|0-6 months  |MAL-ED         |SOUTH AFRICA |3      |            0|     31|   269|
|0-6 months  |MAL-ED         |SOUTH AFRICA |3      |            1|      1|   269|
|0-6 months  |NIH-Crypto     |BANGLADESH   |4+     |            0|    109|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |4+     |            1|      5|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |1      |            0|    309|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |1      |            1|     21|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |2      |            0|    194|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |2      |            1|     14|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |3      |            0|     96|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |3      |            1|     10|   758|
|0-6 months  |PROVIDE        |BANGLADESH   |4+     |            0|     28|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |4+     |            1|      0|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |1      |            0|    473|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |1      |            1|     21|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |2      |            0|    102|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |2      |            1|      8|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |3      |            0|     68|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |3      |            1|      0|   700|
|0-6 months  |Vellore Crypto |INDIA        |4+     |            0|      8|   408|
|0-6 months  |Vellore Crypto |INDIA        |4+     |            1|      4|   408|
|0-6 months  |Vellore Crypto |INDIA        |1      |            0|    141|   408|
|0-6 months  |Vellore Crypto |INDIA        |1      |            1|     63|   408|
|0-6 months  |Vellore Crypto |INDIA        |2      |            0|    110|   408|
|0-6 months  |Vellore Crypto |INDIA        |2      |            1|     49|   408|
|0-6 months  |Vellore Crypto |INDIA        |3      |            0|     23|   408|
|0-6 months  |Vellore Crypto |INDIA        |3      |            1|     10|   408|
|6-24 months |CMC-V-BCS-2002 |INDIA        |4+     |            0|     13|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |4+     |            1|      1|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1      |            0|    181|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1      |            1|     16|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |2      |            0|     86|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |2      |            1|     12|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |3      |            0|     63|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |3      |            1|      1|   373|
|6-24 months |COHORTS        |INDIA        |4+     |            0|    111|  5555|
|6-24 months |COHORTS        |INDIA        |4+     |            1|      3|  5555|
|6-24 months |COHORTS        |INDIA        |1      |            0|   2790|  5555|
|6-24 months |COHORTS        |INDIA        |1      |            1|    113|  5555|
|6-24 months |COHORTS        |INDIA        |2      |            0|   2295|  5555|
|6-24 months |COHORTS        |INDIA        |2      |            1|     74|  5555|
|6-24 months |COHORTS        |INDIA        |3      |            0|    167|  5555|
|6-24 months |COHORTS        |INDIA        |3      |            1|      2|  5555|
|6-24 months |CONTENT        |PERU         |4+     |            0|     66|   215|
|6-24 months |CONTENT        |PERU         |4+     |            1|      0|   215|
|6-24 months |CONTENT        |PERU         |1      |            0|     44|   215|
|6-24 months |CONTENT        |PERU         |1      |            1|      0|   215|
|6-24 months |CONTENT        |PERU         |2      |            0|     60|   215|
|6-24 months |CONTENT        |PERU         |2      |            1|      0|   215|
|6-24 months |CONTENT        |PERU         |3      |            0|     45|   215|
|6-24 months |CONTENT        |PERU         |3      |            1|      0|   215|
|6-24 months |GMS-Nepal      |NEPAL        |4+     |            0|    222|   590|
|6-24 months |GMS-Nepal      |NEPAL        |4+     |            1|     47|   590|
|6-24 months |GMS-Nepal      |NEPAL        |1      |            0|     34|   590|
|6-24 months |GMS-Nepal      |NEPAL        |1      |            1|      9|   590|
|6-24 months |GMS-Nepal      |NEPAL        |2      |            0|     97|   590|
|6-24 months |GMS-Nepal      |NEPAL        |2      |            1|     25|   590|
|6-24 months |GMS-Nepal      |NEPAL        |3      |            0|    125|   590|
|6-24 months |GMS-Nepal      |NEPAL        |3      |            1|     31|   590|
|6-24 months |JiVitA-3       |BANGLADESH   |4+     |            0|    711| 17289|
|6-24 months |JiVitA-3       |BANGLADESH   |4+     |            1|     28| 17289|
|6-24 months |JiVitA-3       |BANGLADESH   |1      |            0|   9696| 17289|
|6-24 months |JiVitA-3       |BANGLADESH   |1      |            1|    348| 17289|
|6-24 months |JiVitA-3       |BANGLADESH   |2      |            0|   4659| 17289|
|6-24 months |JiVitA-3       |BANGLADESH   |2      |            1|    131| 17289|
|6-24 months |JiVitA-3       |BANGLADESH   |3      |            0|   1670| 17289|
|6-24 months |JiVitA-3       |BANGLADESH   |3      |            1|     46| 17289|
|6-24 months |JiVitA-4       |BANGLADESH   |4+     |            0|    257|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |4+     |            1|     20|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |1      |            0|   3076|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |1      |            1|    141|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |2      |            0|   1299|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |2      |            1|     61|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |3      |            0|    556|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |3      |            1|     17|  5427|
|6-24 months |MAL-ED         |INDIA        |4+     |            0|     14|   230|
|6-24 months |MAL-ED         |INDIA        |4+     |            1|      0|   230|
|6-24 months |MAL-ED         |INDIA        |1      |            0|     64|   230|
|6-24 months |MAL-ED         |INDIA        |1      |            1|      4|   230|
|6-24 months |MAL-ED         |INDIA        |2      |            0|     90|   230|
|6-24 months |MAL-ED         |INDIA        |2      |            1|      1|   230|
|6-24 months |MAL-ED         |INDIA        |3      |            0|     56|   230|
|6-24 months |MAL-ED         |INDIA        |3      |            1|      1|   230|
|6-24 months |MAL-ED         |BANGLADESH   |4+     |            0|      8|   231|
|6-24 months |MAL-ED         |BANGLADESH   |4+     |            1|      0|   231|
|6-24 months |MAL-ED         |BANGLADESH   |1      |            0|    121|   231|
|6-24 months |MAL-ED         |BANGLADESH   |1      |            1|      4|   231|
|6-24 months |MAL-ED         |BANGLADESH   |2      |            0|     69|   231|
|6-24 months |MAL-ED         |BANGLADESH   |2      |            1|      1|   231|
|6-24 months |MAL-ED         |BANGLADESH   |3      |            0|     28|   231|
|6-24 months |MAL-ED         |BANGLADESH   |3      |            1|      0|   231|
|6-24 months |MAL-ED         |PERU         |4+     |            0|    104|   262|
|6-24 months |MAL-ED         |PERU         |4+     |            1|      1|   262|
|6-24 months |MAL-ED         |PERU         |1      |            0|     14|   262|
|6-24 months |MAL-ED         |PERU         |1      |            1|      0|   262|
|6-24 months |MAL-ED         |PERU         |2      |            0|     44|   262|
|6-24 months |MAL-ED         |PERU         |2      |            1|      0|   262|
|6-24 months |MAL-ED         |PERU         |3      |            0|     97|   262|
|6-24 months |MAL-ED         |PERU         |3      |            1|      2|   262|
|6-24 months |MAL-ED         |NEPAL        |4+     |            0|    135|   231|
|6-24 months |MAL-ED         |NEPAL        |4+     |            1|      1|   231|
|6-24 months |MAL-ED         |NEPAL        |1      |            0|      8|   231|
|6-24 months |MAL-ED         |NEPAL        |1      |            1|      0|   231|
|6-24 months |MAL-ED         |NEPAL        |2      |            0|     66|   231|
|6-24 months |MAL-ED         |NEPAL        |2      |            1|      1|   231|
|6-24 months |MAL-ED         |NEPAL        |3      |            0|     20|   231|
|6-24 months |MAL-ED         |NEPAL        |3      |            1|      0|   231|
|6-24 months |MAL-ED         |BRAZIL       |4+     |            0|     91|   188|
|6-24 months |MAL-ED         |BRAZIL       |4+     |            1|      0|   188|
|6-24 months |MAL-ED         |BRAZIL       |1      |            0|      3|   188|
|6-24 months |MAL-ED         |BRAZIL       |1      |            1|      0|   188|
|6-24 months |MAL-ED         |BRAZIL       |2      |            0|     14|   188|
|6-24 months |MAL-ED         |BRAZIL       |2      |            1|      1|   188|
|6-24 months |MAL-ED         |BRAZIL       |3      |            0|     79|   188|
|6-24 months |MAL-ED         |BRAZIL       |3      |            1|      0|   188|
|6-24 months |MAL-ED         |TANZANIA     |4+     |            0|    103|   244|
|6-24 months |MAL-ED         |TANZANIA     |4+     |            1|      0|   244|
|6-24 months |MAL-ED         |TANZANIA     |1      |            0|      8|   244|
|6-24 months |MAL-ED         |TANZANIA     |1      |            1|      0|   244|
|6-24 months |MAL-ED         |TANZANIA     |2      |            0|     39|   244|
|6-24 months |MAL-ED         |TANZANIA     |2      |            1|      2|   244|
|6-24 months |MAL-ED         |TANZANIA     |3      |            0|     89|   244|
|6-24 months |MAL-ED         |TANZANIA     |3      |            1|      3|   244|
|6-24 months |MAL-ED         |SOUTH AFRICA |4+     |            0|    171|   233|
|6-24 months |MAL-ED         |SOUTH AFRICA |4+     |            1|      6|   233|
|6-24 months |MAL-ED         |SOUTH AFRICA |1      |            0|      7|   233|
|6-24 months |MAL-ED         |SOUTH AFRICA |1      |            1|      0|   233|
|6-24 months |MAL-ED         |SOUTH AFRICA |2      |            0|     19|   233|
|6-24 months |MAL-ED         |SOUTH AFRICA |2      |            1|      2|   233|
|6-24 months |MAL-ED         |SOUTH AFRICA |3      |            0|     27|   233|
|6-24 months |MAL-ED         |SOUTH AFRICA |3      |            1|      1|   233|
|6-24 months |NIH-Crypto     |BANGLADESH   |4+     |            0|    109|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |4+     |            1|      1|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |1      |            0|    309|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |1      |            1|     10|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |2      |            0|    195|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |2      |            1|      7|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |3      |            0|     97|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |3      |            1|      2|   730|
|6-24 months |PROVIDE        |BANGLADESH   |4+     |            0|     24|   615|
|6-24 months |PROVIDE        |BANGLADESH   |4+     |            1|      0|   615|
|6-24 months |PROVIDE        |BANGLADESH   |1      |            0|    424|   615|
|6-24 months |PROVIDE        |BANGLADESH   |1      |            1|     10|   615|
|6-24 months |PROVIDE        |BANGLADESH   |2      |            0|     94|   615|
|6-24 months |PROVIDE        |BANGLADESH   |2      |            1|      1|   615|
|6-24 months |PROVIDE        |BANGLADESH   |3      |            0|     60|   615|
|6-24 months |PROVIDE        |BANGLADESH   |3      |            1|      2|   615|
|6-24 months |Vellore Crypto |INDIA        |4+     |            0|     10|   408|
|6-24 months |Vellore Crypto |INDIA        |4+     |            1|      2|   408|
|6-24 months |Vellore Crypto |INDIA        |1      |            0|    193|   408|
|6-24 months |Vellore Crypto |INDIA        |1      |            1|     11|   408|
|6-24 months |Vellore Crypto |INDIA        |2      |            0|    148|   408|
|6-24 months |Vellore Crypto |INDIA        |2      |            1|     11|   408|
|6-24 months |Vellore Crypto |INDIA        |3      |            0|     31|   408|
|6-24 months |Vellore Crypto |INDIA        |3      |            1|      2|   408|


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

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


