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

**Outcome Variable:** swasted

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

|agecat    |studyid        |country      |nrooms | swasted| n_cell|     n|
|:---------|:--------------|:------------|:------|-------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |4+     |       0|      1|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |4+     |       1|      1|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |1      |       0|     46|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |1      |       1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |2      |       0|     22|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |2      |       1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |3      |       0|     16|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |3      |       1|      0|    86|
|Birth     |COHORTS        |INDIA        |4+     |       0|     93|  4937|
|Birth     |COHORTS        |INDIA        |4+     |       1|      5|  4937|
|Birth     |COHORTS        |INDIA        |1      |       0|   2445|  4937|
|Birth     |COHORTS        |INDIA        |1      |       1|    149|  4937|
|Birth     |COHORTS        |INDIA        |2      |       0|   2001|  4937|
|Birth     |COHORTS        |INDIA        |2      |       1|    102|  4937|
|Birth     |COHORTS        |INDIA        |3      |       0|    136|  4937|
|Birth     |COHORTS        |INDIA        |3      |       1|      6|  4937|
|Birth     |CONTENT        |PERU         |4+     |       0|      1|     2|
|Birth     |CONTENT        |PERU         |4+     |       1|      0|     2|
|Birth     |CONTENT        |PERU         |1      |       0|      0|     2|
|Birth     |CONTENT        |PERU         |1      |       1|      0|     2|
|Birth     |CONTENT        |PERU         |2      |       0|      1|     2|
|Birth     |CONTENT        |PERU         |2      |       1|      0|     2|
|Birth     |CONTENT        |PERU         |3      |       0|      0|     2|
|Birth     |CONTENT        |PERU         |3      |       1|      0|     2|
|Birth     |GMS-Nepal      |NEPAL        |4+     |       0|    281|   641|
|Birth     |GMS-Nepal      |NEPAL        |4+     |       1|     13|   641|
|Birth     |GMS-Nepal      |NEPAL        |1      |       0|     40|   641|
|Birth     |GMS-Nepal      |NEPAL        |1      |       1|      2|   641|
|Birth     |GMS-Nepal      |NEPAL        |2      |       0|    129|   641|
|Birth     |GMS-Nepal      |NEPAL        |2      |       1|      6|   641|
|Birth     |GMS-Nepal      |NEPAL        |3      |       0|    164|   641|
|Birth     |GMS-Nepal      |NEPAL        |3      |       1|      6|   641|
|Birth     |JiVitA-3       |BANGLADESH   |4+     |       0|    680| 17997|
|Birth     |JiVitA-3       |BANGLADESH   |4+     |       1|     14| 17997|
|Birth     |JiVitA-3       |BANGLADESH   |1      |       0|  10445| 17997|
|Birth     |JiVitA-3       |BANGLADESH   |1      |       1|    208| 17997|
|Birth     |JiVitA-3       |BANGLADESH   |2      |       0|   4795| 17997|
|Birth     |JiVitA-3       |BANGLADESH   |2      |       1|     93| 17997|
|Birth     |JiVitA-3       |BANGLADESH   |3      |       0|   1729| 17997|
|Birth     |JiVitA-3       |BANGLADESH   |3      |       1|     33| 17997|
|Birth     |JiVitA-4       |BANGLADESH   |4+     |       0|    122|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |4+     |       1|      0|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |1      |       0|   1404|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |1      |       1|     20|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |2      |       0|    590|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |2      |       1|      7|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |3      |       0|    248|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |3      |       1|      4|  2395|
|Birth     |MAL-ED         |INDIA        |4+     |       0|      3|    45|
|Birth     |MAL-ED         |INDIA        |4+     |       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |1      |       0|     16|    45|
|Birth     |MAL-ED         |INDIA        |1      |       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |2      |       0|     15|    45|
|Birth     |MAL-ED         |INDIA        |2      |       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |3      |       0|     11|    45|
|Birth     |MAL-ED         |INDIA        |3      |       1|      0|    45|
|Birth     |MAL-ED         |BANGLADESH   |4+     |       0|      9|   206|
|Birth     |MAL-ED         |BANGLADESH   |4+     |       1|      0|   206|
|Birth     |MAL-ED         |BANGLADESH   |1      |       0|    104|   206|
|Birth     |MAL-ED         |BANGLADESH   |1      |       1|      4|   206|
|Birth     |MAL-ED         |BANGLADESH   |2      |       0|     56|   206|
|Birth     |MAL-ED         |BANGLADESH   |2      |       1|      4|   206|
|Birth     |MAL-ED         |BANGLADESH   |3      |       0|     29|   206|
|Birth     |MAL-ED         |BANGLADESH   |3      |       1|      0|   206|
|Birth     |MAL-ED         |PERU         |4+     |       0|     96|   222|
|Birth     |MAL-ED         |PERU         |4+     |       1|      0|   222|
|Birth     |MAL-ED         |PERU         |1      |       0|     10|   222|
|Birth     |MAL-ED         |PERU         |1      |       1|      0|   222|
|Birth     |MAL-ED         |PERU         |2      |       0|     30|   222|
|Birth     |MAL-ED         |PERU         |2      |       1|      0|   222|
|Birth     |MAL-ED         |PERU         |3      |       0|     86|   222|
|Birth     |MAL-ED         |PERU         |3      |       1|      0|   222|
|Birth     |MAL-ED         |NEPAL        |4+     |       0|     15|    25|
|Birth     |MAL-ED         |NEPAL        |4+     |       1|      0|    25|
|Birth     |MAL-ED         |NEPAL        |1      |       0|      1|    25|
|Birth     |MAL-ED         |NEPAL        |1      |       1|      0|    25|
|Birth     |MAL-ED         |NEPAL        |2      |       0|      7|    25|
|Birth     |MAL-ED         |NEPAL        |2      |       1|      0|    25|
|Birth     |MAL-ED         |NEPAL        |3      |       0|      1|    25|
|Birth     |MAL-ED         |NEPAL        |3      |       1|      1|    25|
|Birth     |MAL-ED         |BRAZIL       |4+     |       0|     22|    54|
|Birth     |MAL-ED         |BRAZIL       |4+     |       1|      0|    54|
|Birth     |MAL-ED         |BRAZIL       |1      |       0|      1|    54|
|Birth     |MAL-ED         |BRAZIL       |1      |       1|      0|    54|
|Birth     |MAL-ED         |BRAZIL       |2      |       0|      7|    54|
|Birth     |MAL-ED         |BRAZIL       |2      |       1|      0|    54|
|Birth     |MAL-ED         |BRAZIL       |3      |       0|     24|    54|
|Birth     |MAL-ED         |BRAZIL       |3      |       1|      0|    54|
|Birth     |MAL-ED         |TANZANIA     |4+     |       0|     46|   112|
|Birth     |MAL-ED         |TANZANIA     |4+     |       1|      0|   112|
|Birth     |MAL-ED         |TANZANIA     |1      |       0|      3|   112|
|Birth     |MAL-ED         |TANZANIA     |1      |       1|      0|   112|
|Birth     |MAL-ED         |TANZANIA     |2      |       0|     20|   112|
|Birth     |MAL-ED         |TANZANIA     |2      |       1|      0|   112|
|Birth     |MAL-ED         |TANZANIA     |3      |       0|     43|   112|
|Birth     |MAL-ED         |TANZANIA     |3      |       1|      0|   112|
|Birth     |MAL-ED         |SOUTH AFRICA |4+     |       0|     79|   104|
|Birth     |MAL-ED         |SOUTH AFRICA |4+     |       1|      0|   104|
|Birth     |MAL-ED         |SOUTH AFRICA |1      |       0|      3|   104|
|Birth     |MAL-ED         |SOUTH AFRICA |1      |       1|      0|   104|
|Birth     |MAL-ED         |SOUTH AFRICA |2      |       0|     12|   104|
|Birth     |MAL-ED         |SOUTH AFRICA |2      |       1|      0|   104|
|Birth     |MAL-ED         |SOUTH AFRICA |3      |       0|     10|   104|
|Birth     |MAL-ED         |SOUTH AFRICA |3      |       1|      0|   104|
|Birth     |NIH-Crypto     |BANGLADESH   |4+     |       0|    105|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |4+     |       1|      5|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |1      |       0|    288|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |1      |       1|     19|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |2      |       0|    176|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |2      |       1|     14|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |3      |       0|     91|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |3      |       1|      9|   707|
|Birth     |PROVIDE        |BANGLADESH   |4+     |       0|     21|   532|
|Birth     |PROVIDE        |BANGLADESH   |4+     |       1|      0|   532|
|Birth     |PROVIDE        |BANGLADESH   |1      |       0|    365|   532|
|Birth     |PROVIDE        |BANGLADESH   |1      |       1|      8|   532|
|Birth     |PROVIDE        |BANGLADESH   |2      |       0|     83|   532|
|Birth     |PROVIDE        |BANGLADESH   |2      |       1|      5|   532|
|Birth     |PROVIDE        |BANGLADESH   |3      |       0|     50|   532|
|Birth     |PROVIDE        |BANGLADESH   |3      |       1|      0|   532|
|Birth     |Vellore Crypto |INDIA        |4+     |       0|      9|   341|
|Birth     |Vellore Crypto |INDIA        |4+     |       1|      1|   341|
|Birth     |Vellore Crypto |INDIA        |1      |       0|    142|   341|
|Birth     |Vellore Crypto |INDIA        |1      |       1|     30|   341|
|Birth     |Vellore Crypto |INDIA        |2      |       0|    113|   341|
|Birth     |Vellore Crypto |INDIA        |2      |       1|     18|   341|
|Birth     |Vellore Crypto |INDIA        |3      |       0|     23|   341|
|Birth     |Vellore Crypto |INDIA        |3      |       1|      5|   341|
|6 months  |CMC-V-BCS-2002 |INDIA        |4+     |       0|     13|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |4+     |       1|      1|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |1      |       0|    185|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |1      |       1|      8|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |2      |       0|     95|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |2      |       1|      3|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |3      |       0|     63|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |3      |       1|      0|   368|
|6 months  |COHORTS        |INDIA        |4+     |       0|    108|  5480|
|6 months  |COHORTS        |INDIA        |4+     |       1|      6|  5480|
|6 months  |COHORTS        |INDIA        |1      |       0|   2787|  5480|
|6 months  |COHORTS        |INDIA        |1      |       1|     84|  5480|
|6 months  |COHORTS        |INDIA        |2      |       0|   2254|  5480|
|6 months  |COHORTS        |INDIA        |2      |       1|     75|  5480|
|6 months  |COHORTS        |INDIA        |3      |       0|    163|  5480|
|6 months  |COHORTS        |INDIA        |3      |       1|      3|  5480|
|6 months  |CONTENT        |PERU         |4+     |       0|     66|   215|
|6 months  |CONTENT        |PERU         |4+     |       1|      0|   215|
|6 months  |CONTENT        |PERU         |1      |       0|     44|   215|
|6 months  |CONTENT        |PERU         |1      |       1|      0|   215|
|6 months  |CONTENT        |PERU         |2      |       0|     60|   215|
|6 months  |CONTENT        |PERU         |2      |       1|      0|   215|
|6 months  |CONTENT        |PERU         |3      |       0|     45|   215|
|6 months  |CONTENT        |PERU         |3      |       1|      0|   215|
|6 months  |GMS-Nepal      |NEPAL        |4+     |       0|    253|   564|
|6 months  |GMS-Nepal      |NEPAL        |4+     |       1|      4|   564|
|6 months  |GMS-Nepal      |NEPAL        |1      |       0|     39|   564|
|6 months  |GMS-Nepal      |NEPAL        |1      |       1|      1|   564|
|6 months  |GMS-Nepal      |NEPAL        |2      |       0|    118|   564|
|6 months  |GMS-Nepal      |NEPAL        |2      |       1|      2|   564|
|6 months  |GMS-Nepal      |NEPAL        |3      |       0|    147|   564|
|6 months  |GMS-Nepal      |NEPAL        |3      |       1|      0|   564|
|6 months  |JiVitA-3       |BANGLADESH   |4+     |       0|    709| 16776|
|6 months  |JiVitA-3       |BANGLADESH   |4+     |       1|     11| 16776|
|6 months  |JiVitA-3       |BANGLADESH   |1      |       0|   9609| 16776|
|6 months  |JiVitA-3       |BANGLADESH   |1      |       1|    142| 16776|
|6 months  |JiVitA-3       |BANGLADESH   |2      |       0|   4591| 16776|
|6 months  |JiVitA-3       |BANGLADESH   |2      |       1|     56| 16776|
|6 months  |JiVitA-3       |BANGLADESH   |3      |       0|   1637| 16776|
|6 months  |JiVitA-3       |BANGLADESH   |3      |       1|     21| 16776|
|6 months  |JiVitA-4       |BANGLADESH   |4+     |       0|    245|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |4+     |       1|      2|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |1      |       0|   2830|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |1      |       1|     18|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |2      |       0|   1217|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |2      |       1|     10|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |3      |       0|    505|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |3      |       1|      3|  4830|
|6 months  |MAL-ED         |INDIA        |4+     |       0|     14|   231|
|6 months  |MAL-ED         |INDIA        |4+     |       1|      0|   231|
|6 months  |MAL-ED         |INDIA        |1      |       0|     65|   231|
|6 months  |MAL-ED         |INDIA        |1      |       1|      4|   231|
|6 months  |MAL-ED         |INDIA        |2      |       0|     90|   231|
|6 months  |MAL-ED         |INDIA        |2      |       1|      1|   231|
|6 months  |MAL-ED         |INDIA        |3      |       0|     57|   231|
|6 months  |MAL-ED         |INDIA        |3      |       1|      0|   231|
|6 months  |MAL-ED         |BANGLADESH   |4+     |       0|      8|   232|
|6 months  |MAL-ED         |BANGLADESH   |4+     |       1|      0|   232|
|6 months  |MAL-ED         |BANGLADESH   |1      |       0|    125|   232|
|6 months  |MAL-ED         |BANGLADESH   |1      |       1|      1|   232|
|6 months  |MAL-ED         |BANGLADESH   |2      |       0|     70|   232|
|6 months  |MAL-ED         |BANGLADESH   |2      |       1|      0|   232|
|6 months  |MAL-ED         |BANGLADESH   |3      |       0|     28|   232|
|6 months  |MAL-ED         |BANGLADESH   |3      |       1|      0|   232|
|6 months  |MAL-ED         |PERU         |4+     |       0|    107|   265|
|6 months  |MAL-ED         |PERU         |4+     |       1|      0|   265|
|6 months  |MAL-ED         |PERU         |1      |       0|     15|   265|
|6 months  |MAL-ED         |PERU         |1      |       1|      0|   265|
|6 months  |MAL-ED         |PERU         |2      |       0|     44|   265|
|6 months  |MAL-ED         |PERU         |2      |       1|      0|   265|
|6 months  |MAL-ED         |PERU         |3      |       0|     99|   265|
|6 months  |MAL-ED         |PERU         |3      |       1|      0|   265|
|6 months  |MAL-ED         |NEPAL        |4+     |       0|    137|   232|
|6 months  |MAL-ED         |NEPAL        |4+     |       1|      0|   232|
|6 months  |MAL-ED         |NEPAL        |1      |       0|      8|   232|
|6 months  |MAL-ED         |NEPAL        |1      |       1|      0|   232|
|6 months  |MAL-ED         |NEPAL        |2      |       0|     67|   232|
|6 months  |MAL-ED         |NEPAL        |2      |       1|      0|   232|
|6 months  |MAL-ED         |NEPAL        |3      |       0|     20|   232|
|6 months  |MAL-ED         |NEPAL        |3      |       1|      0|   232|
|6 months  |MAL-ED         |BRAZIL       |4+     |       0|     92|   190|
|6 months  |MAL-ED         |BRAZIL       |4+     |       1|      0|   190|
|6 months  |MAL-ED         |BRAZIL       |1      |       0|      3|   190|
|6 months  |MAL-ED         |BRAZIL       |1      |       1|      0|   190|
|6 months  |MAL-ED         |BRAZIL       |2      |       0|     16|   190|
|6 months  |MAL-ED         |BRAZIL       |2      |       1|      0|   190|
|6 months  |MAL-ED         |BRAZIL       |3      |       0|     79|   190|
|6 months  |MAL-ED         |BRAZIL       |3      |       1|      0|   190|
|6 months  |MAL-ED         |TANZANIA     |4+     |       0|    104|   246|
|6 months  |MAL-ED         |TANZANIA     |4+     |       1|      0|   246|
|6 months  |MAL-ED         |TANZANIA     |1      |       0|      9|   246|
|6 months  |MAL-ED         |TANZANIA     |1      |       1|      0|   246|
|6 months  |MAL-ED         |TANZANIA     |2      |       0|     41|   246|
|6 months  |MAL-ED         |TANZANIA     |2      |       1|      0|   246|
|6 months  |MAL-ED         |TANZANIA     |3      |       0|     92|   246|
|6 months  |MAL-ED         |TANZANIA     |3      |       1|      0|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |4+     |       0|    173|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |4+     |       1|      2|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |1      |       0|      7|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |1      |       1|      0|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |2      |       0|     20|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |2      |       1|      1|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |3      |       0|     27|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |3      |       1|      0|   230|
|6 months  |NIH-Crypto     |BANGLADESH   |4+     |       0|    107|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |4+     |       1|      0|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |1      |       0|    314|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |1      |       1|      0|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |2      |       0|    197|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |2      |       1|      0|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |3      |       0|     97|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |3      |       1|      0|   715|
|6 months  |PROVIDE        |BANGLADESH   |4+     |       0|     24|   603|
|6 months  |PROVIDE        |BANGLADESH   |4+     |       1|      0|   603|
|6 months  |PROVIDE        |BANGLADESH   |1      |       0|    421|   603|
|6 months  |PROVIDE        |BANGLADESH   |1      |       1|      4|   603|
|6 months  |PROVIDE        |BANGLADESH   |2      |       0|     94|   603|
|6 months  |PROVIDE        |BANGLADESH   |2      |       1|      1|   603|
|6 months  |PROVIDE        |BANGLADESH   |3      |       0|     59|   603|
|6 months  |PROVIDE        |BANGLADESH   |3      |       1|      0|   603|
|6 months  |Vellore Crypto |INDIA        |4+     |       0|     11|   406|
|6 months  |Vellore Crypto |INDIA        |4+     |       1|      1|   406|
|6 months  |Vellore Crypto |INDIA        |1      |       0|    193|   406|
|6 months  |Vellore Crypto |INDIA        |1      |       1|      9|   406|
|6 months  |Vellore Crypto |INDIA        |2      |       0|    150|   406|
|6 months  |Vellore Crypto |INDIA        |2      |       1|      9|   406|
|6 months  |Vellore Crypto |INDIA        |3      |       0|     30|   406|
|6 months  |Vellore Crypto |INDIA        |3      |       1|      3|   406|
|24 months |CMC-V-BCS-2002 |INDIA        |4+     |       0|     14|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |4+     |       1|      0|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |1      |       0|    195|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |1      |       1|      2|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |2      |       0|     97|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |2      |       1|      0|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |3      |       0|     63|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |3      |       1|      1|   372|
|24 months |COHORTS        |INDIA        |4+     |       0|     79|  4217|
|24 months |COHORTS        |INDIA        |4+     |       1|      1|  4217|
|24 months |COHORTS        |INDIA        |1      |       0|   2185|  4217|
|24 months |COHORTS        |INDIA        |1      |       1|     26|  4217|
|24 months |COHORTS        |INDIA        |2      |       0|   1779|  4217|
|24 months |COHORTS        |INDIA        |2      |       1|     20|  4217|
|24 months |COHORTS        |INDIA        |3      |       0|    127|  4217|
|24 months |COHORTS        |INDIA        |3      |       1|      0|  4217|
|24 months |CONTENT        |PERU         |4+     |       0|     54|   164|
|24 months |CONTENT        |PERU         |4+     |       1|      0|   164|
|24 months |CONTENT        |PERU         |1      |       0|     34|   164|
|24 months |CONTENT        |PERU         |1      |       1|      0|   164|
|24 months |CONTENT        |PERU         |2      |       0|     40|   164|
|24 months |CONTENT        |PERU         |2      |       1|      0|   164|
|24 months |CONTENT        |PERU         |3      |       0|     36|   164|
|24 months |CONTENT        |PERU         |3      |       1|      0|   164|
|24 months |GMS-Nepal      |NEPAL        |4+     |       0|    210|   487|
|24 months |GMS-Nepal      |NEPAL        |4+     |       1|      5|   487|
|24 months |GMS-Nepal      |NEPAL        |1      |       0|     38|   487|
|24 months |GMS-Nepal      |NEPAL        |1      |       1|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |2      |       0|     98|   487|
|24 months |GMS-Nepal      |NEPAL        |2      |       1|      3|   487|
|24 months |GMS-Nepal      |NEPAL        |3      |       0|    126|   487|
|24 months |GMS-Nepal      |NEPAL        |3      |       1|      7|   487|
|24 months |JiVitA-3       |BANGLADESH   |4+     |       0|    341|  8598|
|24 months |JiVitA-3       |BANGLADESH   |4+     |       1|     13|  8598|
|24 months |JiVitA-3       |BANGLADESH   |1      |       0|   4880|  8598|
|24 months |JiVitA-3       |BANGLADESH   |1      |       1|    215|  8598|
|24 months |JiVitA-3       |BANGLADESH   |2      |       0|   2253|  8598|
|24 months |JiVitA-3       |BANGLADESH   |2      |       1|     78|  8598|
|24 months |JiVitA-3       |BANGLADESH   |3      |       0|    789|  8598|
|24 months |JiVitA-3       |BANGLADESH   |3      |       1|     29|  8598|
|24 months |JiVitA-4       |BANGLADESH   |4+     |       0|    243|  4732|
|24 months |JiVitA-4       |BANGLADESH   |4+     |       1|      6|  4732|
|24 months |JiVitA-4       |BANGLADESH   |1      |       0|   2697|  4732|
|24 months |JiVitA-4       |BANGLADESH   |1      |       1|     77|  4732|
|24 months |JiVitA-4       |BANGLADESH   |2      |       0|   1175|  4732|
|24 months |JiVitA-4       |BANGLADESH   |2      |       1|     34|  4732|
|24 months |JiVitA-4       |BANGLADESH   |3      |       0|    488|  4732|
|24 months |JiVitA-4       |BANGLADESH   |3      |       1|     12|  4732|
|24 months |MAL-ED         |INDIA        |4+     |       0|     13|   222|
|24 months |MAL-ED         |INDIA        |4+     |       1|      0|   222|
|24 months |MAL-ED         |INDIA        |1      |       0|     63|   222|
|24 months |MAL-ED         |INDIA        |1      |       1|      1|   222|
|24 months |MAL-ED         |INDIA        |2      |       0|     91|   222|
|24 months |MAL-ED         |INDIA        |2      |       1|      0|   222|
|24 months |MAL-ED         |INDIA        |3      |       0|     53|   222|
|24 months |MAL-ED         |INDIA        |3      |       1|      1|   222|
|24 months |MAL-ED         |BANGLADESH   |4+     |       0|      7|   203|
|24 months |MAL-ED         |BANGLADESH   |4+     |       1|      0|   203|
|24 months |MAL-ED         |BANGLADESH   |1      |       0|    111|   203|
|24 months |MAL-ED         |BANGLADESH   |1      |       1|      0|   203|
|24 months |MAL-ED         |BANGLADESH   |2      |       0|     62|   203|
|24 months |MAL-ED         |BANGLADESH   |2      |       1|      0|   203|
|24 months |MAL-ED         |BANGLADESH   |3      |       0|     23|   203|
|24 months |MAL-ED         |BANGLADESH   |3      |       1|      0|   203|
|24 months |MAL-ED         |PERU         |4+     |       0|     80|   193|
|24 months |MAL-ED         |PERU         |4+     |       1|      2|   193|
|24 months |MAL-ED         |PERU         |1      |       0|     12|   193|
|24 months |MAL-ED         |PERU         |1      |       1|      0|   193|
|24 months |MAL-ED         |PERU         |2      |       0|     27|   193|
|24 months |MAL-ED         |PERU         |2      |       1|      0|   193|
|24 months |MAL-ED         |PERU         |3      |       0|     72|   193|
|24 months |MAL-ED         |PERU         |3      |       1|      0|   193|
|24 months |MAL-ED         |NEPAL        |4+     |       0|    131|   224|
|24 months |MAL-ED         |NEPAL        |4+     |       1|      0|   224|
|24 months |MAL-ED         |NEPAL        |1      |       0|      8|   224|
|24 months |MAL-ED         |NEPAL        |1      |       1|      0|   224|
|24 months |MAL-ED         |NEPAL        |2      |       0|     65|   224|
|24 months |MAL-ED         |NEPAL        |2      |       1|      0|   224|
|24 months |MAL-ED         |NEPAL        |3      |       0|     20|   224|
|24 months |MAL-ED         |NEPAL        |3      |       1|      0|   224|
|24 months |MAL-ED         |BRAZIL       |4+     |       0|     71|   151|
|24 months |MAL-ED         |BRAZIL       |4+     |       1|      0|   151|
|24 months |MAL-ED         |BRAZIL       |1      |       0|      1|   151|
|24 months |MAL-ED         |BRAZIL       |1      |       1|      0|   151|
|24 months |MAL-ED         |BRAZIL       |2      |       0|     12|   151|
|24 months |MAL-ED         |BRAZIL       |2      |       1|      0|   151|
|24 months |MAL-ED         |BRAZIL       |3      |       0|     66|   151|
|24 months |MAL-ED         |BRAZIL       |3      |       1|      1|   151|
|24 months |MAL-ED         |TANZANIA     |4+     |       0|     86|   213|
|24 months |MAL-ED         |TANZANIA     |4+     |       1|      0|   213|
|24 months |MAL-ED         |TANZANIA     |1      |       0|      8|   213|
|24 months |MAL-ED         |TANZANIA     |1      |       1|      0|   213|
|24 months |MAL-ED         |TANZANIA     |2      |       0|     39|   213|
|24 months |MAL-ED         |TANZANIA     |2      |       1|      0|   213|
|24 months |MAL-ED         |TANZANIA     |3      |       0|     80|   213|
|24 months |MAL-ED         |TANZANIA     |3      |       1|      0|   213|
|24 months |MAL-ED         |SOUTH AFRICA |4+     |       0|    163|   215|
|24 months |MAL-ED         |SOUTH AFRICA |4+     |       1|      0|   215|
|24 months |MAL-ED         |SOUTH AFRICA |1      |       0|      6|   215|
|24 months |MAL-ED         |SOUTH AFRICA |1      |       1|      0|   215|
|24 months |MAL-ED         |SOUTH AFRICA |2      |       0|     19|   215|
|24 months |MAL-ED         |SOUTH AFRICA |2      |       1|      0|   215|
|24 months |MAL-ED         |SOUTH AFRICA |3      |       0|     27|   215|
|24 months |MAL-ED         |SOUTH AFRICA |3      |       1|      0|   215|
|24 months |NIH-Crypto     |BANGLADESH   |4+     |       0|     78|   514|
|24 months |NIH-Crypto     |BANGLADESH   |4+     |       1|      0|   514|
|24 months |NIH-Crypto     |BANGLADESH   |1      |       0|    217|   514|
|24 months |NIH-Crypto     |BANGLADESH   |1      |       1|      3|   514|
|24 months |NIH-Crypto     |BANGLADESH   |2      |       0|    143|   514|
|24 months |NIH-Crypto     |BANGLADESH   |2      |       1|      1|   514|
|24 months |NIH-Crypto     |BANGLADESH   |3      |       0|     72|   514|
|24 months |NIH-Crypto     |BANGLADESH   |3      |       1|      0|   514|
|24 months |PROVIDE        |BANGLADESH   |4+     |       0|     23|   579|
|24 months |PROVIDE        |BANGLADESH   |4+     |       1|      0|   579|
|24 months |PROVIDE        |BANGLADESH   |1      |       0|    404|   579|
|24 months |PROVIDE        |BANGLADESH   |1      |       1|      5|   579|
|24 months |PROVIDE        |BANGLADESH   |2      |       0|     83|   579|
|24 months |PROVIDE        |BANGLADESH   |2      |       1|      3|   579|
|24 months |PROVIDE        |BANGLADESH   |3      |       0|     60|   579|
|24 months |PROVIDE        |BANGLADESH   |3      |       1|      1|   579|
|24 months |Vellore Crypto |INDIA        |4+     |       0|     12|   407|
|24 months |Vellore Crypto |INDIA        |4+     |       1|      0|   407|
|24 months |Vellore Crypto |INDIA        |1      |       0|    201|   407|
|24 months |Vellore Crypto |INDIA        |1      |       1|      2|   407|
|24 months |Vellore Crypto |INDIA        |2      |       0|    157|   407|
|24 months |Vellore Crypto |INDIA        |2      |       1|      2|   407|
|24 months |Vellore Crypto |INDIA        |3      |       0|     32|   407|
|24 months |Vellore Crypto |INDIA        |3      |       1|      1|   407|


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: INDIA
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
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


