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

**Intervention Variable:** nrooms

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |nrooms | wast_rec90d| n_cell|    n|
|:-----------|:--------------|:------------|:------|-----------:|------:|----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |4+     |           0|      5|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |4+     |           1|      5|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1      |           0|     71|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1      |           1|    103|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |2      |           0|     28|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |2      |           1|     61|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |3      |           0|     16|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |3      |           1|     35|  324|
|0-24 months |COHORTS        |INDIA        |4+     |           0|     30| 2138|
|0-24 months |COHORTS        |INDIA        |4+     |           1|     11| 2138|
|0-24 months |COHORTS        |INDIA        |1      |           0|    868| 2138|
|0-24 months |COHORTS        |INDIA        |1      |           1|    303| 2138|
|0-24 months |COHORTS        |INDIA        |2      |           0|    662| 2138|
|0-24 months |COHORTS        |INDIA        |2      |           1|    199| 2138|
|0-24 months |COHORTS        |INDIA        |3      |           0|     53| 2138|
|0-24 months |COHORTS        |INDIA        |3      |           1|     12| 2138|
|0-24 months |CONTENT        |PERU         |4+     |           0|      0|    7|
|0-24 months |CONTENT        |PERU         |4+     |           1|      1|    7|
|0-24 months |CONTENT        |PERU         |1      |           0|      0|    7|
|0-24 months |CONTENT        |PERU         |1      |           1|      3|    7|
|0-24 months |CONTENT        |PERU         |2      |           0|      0|    7|
|0-24 months |CONTENT        |PERU         |2      |           1|      0|    7|
|0-24 months |CONTENT        |PERU         |3      |           0|      1|    7|
|0-24 months |CONTENT        |PERU         |3      |           1|      2|    7|
|0-24 months |GMS-Nepal      |NEPAL        |4+     |           0|    141|  643|
|0-24 months |GMS-Nepal      |NEPAL        |4+     |           1|    146|  643|
|0-24 months |GMS-Nepal      |NEPAL        |1      |           0|     20|  643|
|0-24 months |GMS-Nepal      |NEPAL        |1      |           1|     26|  643|
|0-24 months |GMS-Nepal      |NEPAL        |2      |           0|     55|  643|
|0-24 months |GMS-Nepal      |NEPAL        |2      |           1|     74|  643|
|0-24 months |GMS-Nepal      |NEPAL        |3      |           0|     80|  643|
|0-24 months |GMS-Nepal      |NEPAL        |3      |           1|    101|  643|
|0-24 months |JiVitA-3       |BANGLADESH   |4+     |           0|    169| 7569|
|0-24 months |JiVitA-3       |BANGLADESH   |4+     |           1|    130| 7569|
|0-24 months |JiVitA-3       |BANGLADESH   |1      |           0|   2613| 7569|
|0-24 months |JiVitA-3       |BANGLADESH   |1      |           1|   1910| 7569|
|0-24 months |JiVitA-3       |BANGLADESH   |2      |           0|   1187| 7569|
|0-24 months |JiVitA-3       |BANGLADESH   |2      |           1|    852| 7569|
|0-24 months |JiVitA-3       |BANGLADESH   |3      |           0|    405| 7569|
|0-24 months |JiVitA-3       |BANGLADESH   |3      |           1|    303| 7569|
|0-24 months |JiVitA-4       |BANGLADESH   |4+     |           0|     73| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |4+     |           1|     22| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |1      |           0|    943| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |1      |           1|    297| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |2      |           0|    386| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |2      |           1|    153| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |3      |           0|    132| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |3      |           1|     62| 2068|
|0-24 months |MAL-ED         |INDIA        |4+     |           0|      5|  177|
|0-24 months |MAL-ED         |INDIA        |4+     |           1|      7|  177|
|0-24 months |MAL-ED         |INDIA        |1      |           0|     22|  177|
|0-24 months |MAL-ED         |INDIA        |1      |           1|     29|  177|
|0-24 months |MAL-ED         |INDIA        |2      |           0|     22|  177|
|0-24 months |MAL-ED         |INDIA        |2      |           1|     45|  177|
|0-24 months |MAL-ED         |INDIA        |3      |           0|     20|  177|
|0-24 months |MAL-ED         |INDIA        |3      |           1|     27|  177|
|0-24 months |MAL-ED         |BANGLADESH   |4+     |           0|      2|  117|
|0-24 months |MAL-ED         |BANGLADESH   |4+     |           1|      3|  117|
|0-24 months |MAL-ED         |BANGLADESH   |1      |           0|     21|  117|
|0-24 months |MAL-ED         |BANGLADESH   |1      |           1|     35|  117|
|0-24 months |MAL-ED         |BANGLADESH   |2      |           0|     12|  117|
|0-24 months |MAL-ED         |BANGLADESH   |2      |           1|     25|  117|
|0-24 months |MAL-ED         |BANGLADESH   |3      |           0|      7|  117|
|0-24 months |MAL-ED         |BANGLADESH   |3      |           1|     12|  117|
|0-24 months |MAL-ED         |PERU         |4+     |           0|      4|   34|
|0-24 months |MAL-ED         |PERU         |4+     |           1|     16|   34|
|0-24 months |MAL-ED         |PERU         |1      |           0|      0|   34|
|0-24 months |MAL-ED         |PERU         |1      |           1|      2|   34|
|0-24 months |MAL-ED         |PERU         |2      |           0|      1|   34|
|0-24 months |MAL-ED         |PERU         |2      |           1|      4|   34|
|0-24 months |MAL-ED         |PERU         |3      |           0|      0|   34|
|0-24 months |MAL-ED         |PERU         |3      |           1|      7|   34|
|0-24 months |MAL-ED         |NEPAL        |4+     |           0|     14|   94|
|0-24 months |MAL-ED         |NEPAL        |4+     |           1|     45|   94|
|0-24 months |MAL-ED         |NEPAL        |1      |           0|      0|   94|
|0-24 months |MAL-ED         |NEPAL        |1      |           1|      1|   94|
|0-24 months |MAL-ED         |NEPAL        |2      |           0|      6|   94|
|0-24 months |MAL-ED         |NEPAL        |2      |           1|     21|   94|
|0-24 months |MAL-ED         |NEPAL        |3      |           0|      0|   94|
|0-24 months |MAL-ED         |NEPAL        |3      |           1|      7|   94|
|0-24 months |MAL-ED         |BRAZIL       |4+     |           0|      1|   21|
|0-24 months |MAL-ED         |BRAZIL       |4+     |           1|      5|   21|
|0-24 months |MAL-ED         |BRAZIL       |1      |           0|      0|   21|
|0-24 months |MAL-ED         |BRAZIL       |1      |           1|      0|   21|
|0-24 months |MAL-ED         |BRAZIL       |2      |           0|      0|   21|
|0-24 months |MAL-ED         |BRAZIL       |2      |           1|      3|   21|
|0-24 months |MAL-ED         |BRAZIL       |3      |           0|      3|   21|
|0-24 months |MAL-ED         |BRAZIL       |3      |           1|      9|   21|
|0-24 months |MAL-ED         |TANZANIA     |4+     |           0|      1|   51|
|0-24 months |MAL-ED         |TANZANIA     |4+     |           1|     13|   51|
|0-24 months |MAL-ED         |TANZANIA     |1      |           0|      1|   51|
|0-24 months |MAL-ED         |TANZANIA     |1      |           1|      4|   51|
|0-24 months |MAL-ED         |TANZANIA     |2      |           0|      2|   51|
|0-24 months |MAL-ED         |TANZANIA     |2      |           1|      4|   51|
|0-24 months |MAL-ED         |TANZANIA     |3      |           0|      5|   51|
|0-24 months |MAL-ED         |TANZANIA     |3      |           1|     21|   51|
|0-24 months |MAL-ED         |SOUTH AFRICA |4+     |           0|      7|   75|
|0-24 months |MAL-ED         |SOUTH AFRICA |4+     |           1|     40|   75|
|0-24 months |MAL-ED         |SOUTH AFRICA |1      |           0|      0|   75|
|0-24 months |MAL-ED         |SOUTH AFRICA |1      |           1|      3|   75|
|0-24 months |MAL-ED         |SOUTH AFRICA |2      |           0|      3|   75|
|0-24 months |MAL-ED         |SOUTH AFRICA |2      |           1|      8|   75|
|0-24 months |MAL-ED         |SOUTH AFRICA |3      |           0|      3|   75|
|0-24 months |MAL-ED         |SOUTH AFRICA |3      |           1|     11|   75|
|0-24 months |NIH-Crypto     |BANGLADESH   |4+     |           0|     19|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |4+     |           1|     26|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |1      |           0|     49|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |1      |           1|     76|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |2      |           0|     35|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |2      |           1|     57|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |3      |           0|     14|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |3      |           1|     34|  310|
|0-24 months |PROVIDE        |BANGLADESH   |4+     |           0|      3|  308|
|0-24 months |PROVIDE        |BANGLADESH   |4+     |           1|      6|  308|
|0-24 months |PROVIDE        |BANGLADESH   |1      |           0|     95|  308|
|0-24 months |PROVIDE        |BANGLADESH   |1      |           1|    120|  308|
|0-24 months |PROVIDE        |BANGLADESH   |2      |           0|     23|  308|
|0-24 months |PROVIDE        |BANGLADESH   |2      |           1|     33|  308|
|0-24 months |PROVIDE        |BANGLADESH   |3      |           0|      8|  308|
|0-24 months |PROVIDE        |BANGLADESH   |3      |           1|     20|  308|
|0-24 months |Vellore Crypto |INDIA        |4+     |           0|      4|  393|
|0-24 months |Vellore Crypto |INDIA        |4+     |           1|      7|  393|
|0-24 months |Vellore Crypto |INDIA        |1      |           0|     80|  393|
|0-24 months |Vellore Crypto |INDIA        |1      |           1|    115|  393|
|0-24 months |Vellore Crypto |INDIA        |2      |           0|     68|  393|
|0-24 months |Vellore Crypto |INDIA        |2      |           1|     95|  393|
|0-24 months |Vellore Crypto |INDIA        |3      |           0|      9|  393|
|0-24 months |Vellore Crypto |INDIA        |3      |           1|     15|  393|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |4+     |           0|      3|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |4+     |           1|      3|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1      |           0|     40|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1      |           1|     60|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |2      |           0|     13|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |2      |           1|     44|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |3      |           0|     10|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |3      |           1|     28|  201|
|0-6 months  |COHORTS        |INDIA        |4+     |           0|     18| 1436|
|0-6 months  |COHORTS        |INDIA        |4+     |           1|     11| 1436|
|0-6 months  |COHORTS        |INDIA        |1      |           0|    477| 1436|
|0-6 months  |COHORTS        |INDIA        |1      |           1|    303| 1436|
|0-6 months  |COHORTS        |INDIA        |2      |           0|    387| 1436|
|0-6 months  |COHORTS        |INDIA        |2      |           1|    199| 1436|
|0-6 months  |COHORTS        |INDIA        |3      |           0|     29| 1436|
|0-6 months  |COHORTS        |INDIA        |3      |           1|     12| 1436|
|0-6 months  |CONTENT        |PERU         |4+     |           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |4+     |           1|      1|    4|
|0-6 months  |CONTENT        |PERU         |1      |           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |1      |           1|      2|    4|
|0-6 months  |CONTENT        |PERU         |2      |           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |2      |           1|      0|    4|
|0-6 months  |CONTENT        |PERU         |3      |           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |3      |           1|      1|    4|
|0-6 months  |GMS-Nepal      |NEPAL        |4+     |           0|     57|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |4+     |           1|     64|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |1      |           0|      3|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |1      |           1|     11|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |2      |           0|     18|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |2      |           1|     35|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |3      |           0|     26|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |3      |           1|     49|  263|
|0-6 months  |JiVitA-3       |BANGLADESH   |4+     |           0|     52| 4732|
|0-6 months  |JiVitA-3       |BANGLADESH   |4+     |           1|    130| 4732|
|0-6 months  |JiVitA-3       |BANGLADESH   |1      |           0|    932| 4732|
|0-6 months  |JiVitA-3       |BANGLADESH   |1      |           1|   1910| 4732|
|0-6 months  |JiVitA-3       |BANGLADESH   |2      |           0|    422| 4732|
|0-6 months  |JiVitA-3       |BANGLADESH   |2      |           1|    852| 4732|
|0-6 months  |JiVitA-3       |BANGLADESH   |3      |           0|    131| 4732|
|0-6 months  |JiVitA-3       |BANGLADESH   |3      |           1|    303| 4732|
|0-6 months  |JiVitA-4       |BANGLADESH   |4+     |           0|     17|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |4+     |           1|     14|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |1      |           0|    146|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |1      |           1|    170|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |2      |           0|     62|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |2      |           1|     91|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |3      |           0|     19|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |3      |           1|     34|  553|
|0-6 months  |MAL-ED         |INDIA        |4+     |           0|      1|   83|
|0-6 months  |MAL-ED         |INDIA        |4+     |           1|      5|   83|
|0-6 months  |MAL-ED         |INDIA        |1      |           0|     12|   83|
|0-6 months  |MAL-ED         |INDIA        |1      |           1|     12|   83|
|0-6 months  |MAL-ED         |INDIA        |2      |           0|      7|   83|
|0-6 months  |MAL-ED         |INDIA        |2      |           1|     26|   83|
|0-6 months  |MAL-ED         |INDIA        |3      |           0|      5|   83|
|0-6 months  |MAL-ED         |INDIA        |3      |           1|     15|   83|
|0-6 months  |MAL-ED         |BANGLADESH   |4+     |           0|      0|   59|
|0-6 months  |MAL-ED         |BANGLADESH   |4+     |           1|      2|   59|
|0-6 months  |MAL-ED         |BANGLADESH   |1      |           0|      4|   59|
|0-6 months  |MAL-ED         |BANGLADESH   |1      |           1|     21|   59|
|0-6 months  |MAL-ED         |BANGLADESH   |2      |           0|      5|   59|
|0-6 months  |MAL-ED         |BANGLADESH   |2      |           1|     19|   59|
|0-6 months  |MAL-ED         |BANGLADESH   |3      |           0|      3|   59|
|0-6 months  |MAL-ED         |BANGLADESH   |3      |           1|      5|   59|
|0-6 months  |MAL-ED         |PERU         |4+     |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |4+     |           1|      9|   11|
|0-6 months  |MAL-ED         |PERU         |1      |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |1      |           1|      0|   11|
|0-6 months  |MAL-ED         |PERU         |2      |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |2      |           1|      2|   11|
|0-6 months  |MAL-ED         |PERU         |3      |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |3      |           1|      0|   11|
|0-6 months  |MAL-ED         |NEPAL        |4+     |           0|      5|   46|
|0-6 months  |MAL-ED         |NEPAL        |4+     |           1|     24|   46|
|0-6 months  |MAL-ED         |NEPAL        |1      |           0|      0|   46|
|0-6 months  |MAL-ED         |NEPAL        |1      |           1|      1|   46|
|0-6 months  |MAL-ED         |NEPAL        |2      |           0|      4|   46|
|0-6 months  |MAL-ED         |NEPAL        |2      |           1|     10|   46|
|0-6 months  |MAL-ED         |NEPAL        |3      |           0|      0|   46|
|0-6 months  |MAL-ED         |NEPAL        |3      |           1|      2|   46|
|0-6 months  |MAL-ED         |BRAZIL       |4+     |           0|      0|   14|
|0-6 months  |MAL-ED         |BRAZIL       |4+     |           1|      5|   14|
|0-6 months  |MAL-ED         |BRAZIL       |1      |           0|      0|   14|
|0-6 months  |MAL-ED         |BRAZIL       |1      |           1|      0|   14|
|0-6 months  |MAL-ED         |BRAZIL       |2      |           0|      0|   14|
|0-6 months  |MAL-ED         |BRAZIL       |2      |           1|      2|   14|
|0-6 months  |MAL-ED         |BRAZIL       |3      |           0|      1|   14|
|0-6 months  |MAL-ED         |BRAZIL       |3      |           1|      6|   14|
|0-6 months  |MAL-ED         |TANZANIA     |4+     |           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |4+     |           1|      3|   14|
|0-6 months  |MAL-ED         |TANZANIA     |1      |           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |1      |           1|      3|   14|
|0-6 months  |MAL-ED         |TANZANIA     |2      |           0|      1|   14|
|0-6 months  |MAL-ED         |TANZANIA     |2      |           1|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |3      |           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |3      |           1|      7|   14|
|0-6 months  |MAL-ED         |SOUTH AFRICA |4+     |           0|      4|   30|
|0-6 months  |MAL-ED         |SOUTH AFRICA |4+     |           1|     18|   30|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1      |           0|      0|   30|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1      |           1|      1|   30|
|0-6 months  |MAL-ED         |SOUTH AFRICA |2      |           0|      1|   30|
|0-6 months  |MAL-ED         |SOUTH AFRICA |2      |           1|      1|   30|
|0-6 months  |MAL-ED         |SOUTH AFRICA |3      |           0|      1|   30|
|0-6 months  |MAL-ED         |SOUTH AFRICA |3      |           1|      4|   30|
|0-6 months  |NIH-Crypto     |BANGLADESH   |4+     |           0|      4|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |4+     |           1|     25|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |1      |           0|      9|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |1      |           1|     68|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |2      |           0|      5|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |2      |           1|     53|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |3      |           0|      3|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |3      |           1|     30|  197|
|0-6 months  |PROVIDE        |BANGLADESH   |4+     |           0|      1|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |4+     |           1|      6|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |1      |           0|     33|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |1      |           1|    100|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |2      |           0|      6|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |2      |           1|     27|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |3      |           0|      0|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |3      |           1|     12|  185|
|0-6 months  |Vellore Crypto |INDIA        |4+     |           0|      3|  239|
|0-6 months  |Vellore Crypto |INDIA        |4+     |           1|      5|  239|
|0-6 months  |Vellore Crypto |INDIA        |1      |           0|     40|  239|
|0-6 months  |Vellore Crypto |INDIA        |1      |           1|     81|  239|
|0-6 months  |Vellore Crypto |INDIA        |2      |           0|     39|  239|
|0-6 months  |Vellore Crypto |INDIA        |2      |           1|     55|  239|
|0-6 months  |Vellore Crypto |INDIA        |3      |           0|      5|  239|
|0-6 months  |Vellore Crypto |INDIA        |3      |           1|     11|  239|
|6-24 months |CMC-V-BCS-2002 |INDIA        |4+     |           0|      2|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |4+     |           1|      2|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1      |           0|     31|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1      |           1|     43|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |2      |           0|     15|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |2      |           1|     17|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |3      |           0|      6|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |3      |           1|      7|  123|
|6-24 months |COHORTS        |INDIA        |4+     |           0|     12|  702|
|6-24 months |COHORTS        |INDIA        |4+     |           1|      0|  702|
|6-24 months |COHORTS        |INDIA        |1      |           0|    391|  702|
|6-24 months |COHORTS        |INDIA        |1      |           1|      0|  702|
|6-24 months |COHORTS        |INDIA        |2      |           0|    275|  702|
|6-24 months |COHORTS        |INDIA        |2      |           1|      0|  702|
|6-24 months |COHORTS        |INDIA        |3      |           0|     24|  702|
|6-24 months |COHORTS        |INDIA        |3      |           1|      0|  702|
|6-24 months |CONTENT        |PERU         |4+     |           0|      0|    3|
|6-24 months |CONTENT        |PERU         |4+     |           1|      0|    3|
|6-24 months |CONTENT        |PERU         |1      |           0|      0|    3|
|6-24 months |CONTENT        |PERU         |1      |           1|      1|    3|
|6-24 months |CONTENT        |PERU         |2      |           0|      0|    3|
|6-24 months |CONTENT        |PERU         |2      |           1|      0|    3|
|6-24 months |CONTENT        |PERU         |3      |           0|      1|    3|
|6-24 months |CONTENT        |PERU         |3      |           1|      1|    3|
|6-24 months |GMS-Nepal      |NEPAL        |4+     |           0|     84|  380|
|6-24 months |GMS-Nepal      |NEPAL        |4+     |           1|     82|  380|
|6-24 months |GMS-Nepal      |NEPAL        |1      |           0|     17|  380|
|6-24 months |GMS-Nepal      |NEPAL        |1      |           1|     15|  380|
|6-24 months |GMS-Nepal      |NEPAL        |2      |           0|     37|  380|
|6-24 months |GMS-Nepal      |NEPAL        |2      |           1|     39|  380|
|6-24 months |GMS-Nepal      |NEPAL        |3      |           0|     54|  380|
|6-24 months |GMS-Nepal      |NEPAL        |3      |           1|     52|  380|
|6-24 months |JiVitA-3       |BANGLADESH   |4+     |           0|    117| 2837|
|6-24 months |JiVitA-3       |BANGLADESH   |4+     |           1|      0| 2837|
|6-24 months |JiVitA-3       |BANGLADESH   |1      |           0|   1681| 2837|
|6-24 months |JiVitA-3       |BANGLADESH   |1      |           1|      0| 2837|
|6-24 months |JiVitA-3       |BANGLADESH   |2      |           0|    765| 2837|
|6-24 months |JiVitA-3       |BANGLADESH   |2      |           1|      0| 2837|
|6-24 months |JiVitA-3       |BANGLADESH   |3      |           0|    274| 2837|
|6-24 months |JiVitA-3       |BANGLADESH   |3      |           1|      0| 2837|
|6-24 months |JiVitA-4       |BANGLADESH   |4+     |           0|     56| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |4+     |           1|      8| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |1      |           0|    797| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |1      |           1|    127| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |2      |           0|    324| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |2      |           1|     62| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |3      |           0|    113| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |3      |           1|     28| 1515|
|6-24 months |MAL-ED         |INDIA        |4+     |           0|      4|   94|
|6-24 months |MAL-ED         |INDIA        |4+     |           1|      2|   94|
|6-24 months |MAL-ED         |INDIA        |1      |           0|     10|   94|
|6-24 months |MAL-ED         |INDIA        |1      |           1|     17|   94|
|6-24 months |MAL-ED         |INDIA        |2      |           0|     15|   94|
|6-24 months |MAL-ED         |INDIA        |2      |           1|     19|   94|
|6-24 months |MAL-ED         |INDIA        |3      |           0|     15|   94|
|6-24 months |MAL-ED         |INDIA        |3      |           1|     12|   94|
|6-24 months |MAL-ED         |BANGLADESH   |4+     |           0|      2|   58|
|6-24 months |MAL-ED         |BANGLADESH   |4+     |           1|      1|   58|
|6-24 months |MAL-ED         |BANGLADESH   |1      |           0|     17|   58|
|6-24 months |MAL-ED         |BANGLADESH   |1      |           1|     14|   58|
|6-24 months |MAL-ED         |BANGLADESH   |2      |           0|      7|   58|
|6-24 months |MAL-ED         |BANGLADESH   |2      |           1|      6|   58|
|6-24 months |MAL-ED         |BANGLADESH   |3      |           0|      4|   58|
|6-24 months |MAL-ED         |BANGLADESH   |3      |           1|      7|   58|
|6-24 months |MAL-ED         |PERU         |4+     |           0|      4|   23|
|6-24 months |MAL-ED         |PERU         |4+     |           1|      7|   23|
|6-24 months |MAL-ED         |PERU         |1      |           0|      0|   23|
|6-24 months |MAL-ED         |PERU         |1      |           1|      2|   23|
|6-24 months |MAL-ED         |PERU         |2      |           0|      1|   23|
|6-24 months |MAL-ED         |PERU         |2      |           1|      2|   23|
|6-24 months |MAL-ED         |PERU         |3      |           0|      0|   23|
|6-24 months |MAL-ED         |PERU         |3      |           1|      7|   23|
|6-24 months |MAL-ED         |NEPAL        |4+     |           0|      9|   48|
|6-24 months |MAL-ED         |NEPAL        |4+     |           1|     21|   48|
|6-24 months |MAL-ED         |NEPAL        |1      |           0|      0|   48|
|6-24 months |MAL-ED         |NEPAL        |1      |           1|      0|   48|
|6-24 months |MAL-ED         |NEPAL        |2      |           0|      2|   48|
|6-24 months |MAL-ED         |NEPAL        |2      |           1|     11|   48|
|6-24 months |MAL-ED         |NEPAL        |3      |           0|      0|   48|
|6-24 months |MAL-ED         |NEPAL        |3      |           1|      5|   48|
|6-24 months |MAL-ED         |BRAZIL       |4+     |           0|      1|    7|
|6-24 months |MAL-ED         |BRAZIL       |4+     |           1|      0|    7|
|6-24 months |MAL-ED         |BRAZIL       |1      |           0|      0|    7|
|6-24 months |MAL-ED         |BRAZIL       |1      |           1|      0|    7|
|6-24 months |MAL-ED         |BRAZIL       |2      |           0|      0|    7|
|6-24 months |MAL-ED         |BRAZIL       |2      |           1|      1|    7|
|6-24 months |MAL-ED         |BRAZIL       |3      |           0|      2|    7|
|6-24 months |MAL-ED         |BRAZIL       |3      |           1|      3|    7|
|6-24 months |MAL-ED         |TANZANIA     |4+     |           0|      1|   37|
|6-24 months |MAL-ED         |TANZANIA     |4+     |           1|     10|   37|
|6-24 months |MAL-ED         |TANZANIA     |1      |           0|      1|   37|
|6-24 months |MAL-ED         |TANZANIA     |1      |           1|      1|   37|
|6-24 months |MAL-ED         |TANZANIA     |2      |           0|      1|   37|
|6-24 months |MAL-ED         |TANZANIA     |2      |           1|      4|   37|
|6-24 months |MAL-ED         |TANZANIA     |3      |           0|      5|   37|
|6-24 months |MAL-ED         |TANZANIA     |3      |           1|     14|   37|
|6-24 months |MAL-ED         |SOUTH AFRICA |4+     |           0|      3|   45|
|6-24 months |MAL-ED         |SOUTH AFRICA |4+     |           1|     22|   45|
|6-24 months |MAL-ED         |SOUTH AFRICA |1      |           0|      0|   45|
|6-24 months |MAL-ED         |SOUTH AFRICA |1      |           1|      2|   45|
|6-24 months |MAL-ED         |SOUTH AFRICA |2      |           0|      2|   45|
|6-24 months |MAL-ED         |SOUTH AFRICA |2      |           1|      7|   45|
|6-24 months |MAL-ED         |SOUTH AFRICA |3      |           0|      2|   45|
|6-24 months |MAL-ED         |SOUTH AFRICA |3      |           1|      7|   45|
|6-24 months |NIH-Crypto     |BANGLADESH   |4+     |           0|     15|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |4+     |           1|      1|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |1      |           0|     40|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |1      |           1|      8|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |2      |           0|     30|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |2      |           1|      4|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |3      |           0|     11|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |3      |           1|      4|  113|
|6-24 months |PROVIDE        |BANGLADESH   |4+     |           0|      2|  123|
|6-24 months |PROVIDE        |BANGLADESH   |4+     |           1|      0|  123|
|6-24 months |PROVIDE        |BANGLADESH   |1      |           0|     62|  123|
|6-24 months |PROVIDE        |BANGLADESH   |1      |           1|     20|  123|
|6-24 months |PROVIDE        |BANGLADESH   |2      |           0|     17|  123|
|6-24 months |PROVIDE        |BANGLADESH   |2      |           1|      6|  123|
|6-24 months |PROVIDE        |BANGLADESH   |3      |           0|      8|  123|
|6-24 months |PROVIDE        |BANGLADESH   |3      |           1|      8|  123|
|6-24 months |Vellore Crypto |INDIA        |4+     |           0|      1|  154|
|6-24 months |Vellore Crypto |INDIA        |4+     |           1|      2|  154|
|6-24 months |Vellore Crypto |INDIA        |1      |           0|     40|  154|
|6-24 months |Vellore Crypto |INDIA        |1      |           1|     34|  154|
|6-24 months |Vellore Crypto |INDIA        |2      |           0|     29|  154|
|6-24 months |Vellore Crypto |INDIA        |2      |           1|     40|  154|
|6-24 months |Vellore Crypto |INDIA        |3      |           0|      4|  154|
|6-24 months |Vellore Crypto |INDIA        |3      |           1|      4|  154|


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
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


