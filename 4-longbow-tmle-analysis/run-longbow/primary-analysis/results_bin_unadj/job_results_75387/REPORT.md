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

**Outcome Variable:** sstunted

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

|agecat    |studyid        |country      |nrooms | sstunted| n_cell|     n|
|:---------|:--------------|:------------|:------|--------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |4+     |        0|      2|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |4+     |        1|      0|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |1      |        0|     47|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |1      |        1|      2|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |2      |        0|     23|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |2      |        1|      2|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |3      |        0|     16|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |3      |        1|      0|    92|
|Birth     |COHORTS        |INDIA        |4+     |        0|    102|  5308|
|Birth     |COHORTS        |INDIA        |4+     |        1|      4|  5308|
|Birth     |COHORTS        |INDIA        |1      |        0|   2696|  5308|
|Birth     |COHORTS        |INDIA        |1      |        1|     88|  5308|
|Birth     |COHORTS        |INDIA        |2      |        0|   2189|  5308|
|Birth     |COHORTS        |INDIA        |2      |        1|     79|  5308|
|Birth     |COHORTS        |INDIA        |3      |        0|    147|  5308|
|Birth     |COHORTS        |INDIA        |3      |        1|      3|  5308|
|Birth     |CONTENT        |PERU         |4+     |        0|      1|     2|
|Birth     |CONTENT        |PERU         |4+     |        1|      0|     2|
|Birth     |CONTENT        |PERU         |1      |        0|      0|     2|
|Birth     |CONTENT        |PERU         |1      |        1|      0|     2|
|Birth     |CONTENT        |PERU         |2      |        0|      1|     2|
|Birth     |CONTENT        |PERU         |2      |        1|      0|     2|
|Birth     |CONTENT        |PERU         |3      |        0|      0|     2|
|Birth     |CONTENT        |PERU         |3      |        1|      0|     2|
|Birth     |GMS-Nepal      |NEPAL        |4+     |        0|    307|   696|
|Birth     |GMS-Nepal      |NEPAL        |4+     |        1|     16|   696|
|Birth     |GMS-Nepal      |NEPAL        |1      |        0|     44|   696|
|Birth     |GMS-Nepal      |NEPAL        |1      |        1|      5|   696|
|Birth     |GMS-Nepal      |NEPAL        |2      |        0|    140|   696|
|Birth     |GMS-Nepal      |NEPAL        |2      |        1|      4|   696|
|Birth     |GMS-Nepal      |NEPAL        |3      |        0|    174|   696|
|Birth     |GMS-Nepal      |NEPAL        |3      |        1|      6|   696|
|Birth     |JiVitA-3       |BANGLADESH   |4+     |        0|    758| 22436|
|Birth     |JiVitA-3       |BANGLADESH   |4+     |        1|     97| 22436|
|Birth     |JiVitA-3       |BANGLADESH   |1      |        0|  11861| 22436|
|Birth     |JiVitA-3       |BANGLADESH   |1      |        1|   1497| 22436|
|Birth     |JiVitA-3       |BANGLADESH   |2      |        0|   5409| 22436|
|Birth     |JiVitA-3       |BANGLADESH   |2      |        1|    655| 22436|
|Birth     |JiVitA-3       |BANGLADESH   |3      |        0|   1962| 22436|
|Birth     |JiVitA-3       |BANGLADESH   |3      |        1|    197| 22436|
|Birth     |JiVitA-4       |BANGLADESH   |4+     |        0|    128|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |4+     |        1|     14|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |1      |        0|   1537|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |1      |        1|    151|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |2      |        0|    652|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |2      |        1|     50|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |3      |        0|    272|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |3      |        1|     18|  2822|
|Birth     |MAL-ED         |INDIA        |4+     |        0|      3|    47|
|Birth     |MAL-ED         |INDIA        |4+     |        1|      0|    47|
|Birth     |MAL-ED         |INDIA        |1      |        0|     16|    47|
|Birth     |MAL-ED         |INDIA        |1      |        1|      1|    47|
|Birth     |MAL-ED         |INDIA        |2      |        0|     15|    47|
|Birth     |MAL-ED         |INDIA        |2      |        1|      0|    47|
|Birth     |MAL-ED         |INDIA        |3      |        0|     11|    47|
|Birth     |MAL-ED         |INDIA        |3      |        1|      1|    47|
|Birth     |MAL-ED         |BANGLADESH   |4+     |        0|      9|   221|
|Birth     |MAL-ED         |BANGLADESH   |4+     |        1|      0|   221|
|Birth     |MAL-ED         |BANGLADESH   |1      |        0|    111|   221|
|Birth     |MAL-ED         |BANGLADESH   |1      |        1|      6|   221|
|Birth     |MAL-ED         |BANGLADESH   |2      |        0|     64|   221|
|Birth     |MAL-ED         |BANGLADESH   |2      |        1|      1|   221|
|Birth     |MAL-ED         |BANGLADESH   |3      |        0|     29|   221|
|Birth     |MAL-ED         |BANGLADESH   |3      |        1|      1|   221|
|Birth     |MAL-ED         |PERU         |4+     |        0|     95|   227|
|Birth     |MAL-ED         |PERU         |4+     |        1|      2|   227|
|Birth     |MAL-ED         |PERU         |1      |        0|     10|   227|
|Birth     |MAL-ED         |PERU         |1      |        1|      0|   227|
|Birth     |MAL-ED         |PERU         |2      |        0|     30|   227|
|Birth     |MAL-ED         |PERU         |2      |        1|      0|   227|
|Birth     |MAL-ED         |PERU         |3      |        0|     88|   227|
|Birth     |MAL-ED         |PERU         |3      |        1|      2|   227|
|Birth     |MAL-ED         |NEPAL        |4+     |        0|     15|    26|
|Birth     |MAL-ED         |NEPAL        |4+     |        1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |1      |        0|      1|    26|
|Birth     |MAL-ED         |NEPAL        |1      |        1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |2      |        0|      7|    26|
|Birth     |MAL-ED         |NEPAL        |2      |        1|      1|    26|
|Birth     |MAL-ED         |NEPAL        |3      |        0|      2|    26|
|Birth     |MAL-ED         |NEPAL        |3      |        1|      0|    26|
|Birth     |MAL-ED         |BRAZIL       |4+     |        0|     21|    57|
|Birth     |MAL-ED         |BRAZIL       |4+     |        1|      3|    57|
|Birth     |MAL-ED         |BRAZIL       |1      |        0|      1|    57|
|Birth     |MAL-ED         |BRAZIL       |1      |        1|      0|    57|
|Birth     |MAL-ED         |BRAZIL       |2      |        0|      7|    57|
|Birth     |MAL-ED         |BRAZIL       |2      |        1|      0|    57|
|Birth     |MAL-ED         |BRAZIL       |3      |        0|     25|    57|
|Birth     |MAL-ED         |BRAZIL       |3      |        1|      0|    57|
|Birth     |MAL-ED         |TANZANIA     |4+     |        0|     46|   121|
|Birth     |MAL-ED         |TANZANIA     |4+     |        1|      5|   121|
|Birth     |MAL-ED         |TANZANIA     |1      |        0|      3|   121|
|Birth     |MAL-ED         |TANZANIA     |1      |        1|      1|   121|
|Birth     |MAL-ED         |TANZANIA     |2      |        0|     20|   121|
|Birth     |MAL-ED         |TANZANIA     |2      |        1|      2|   121|
|Birth     |MAL-ED         |TANZANIA     |3      |        0|     43|   121|
|Birth     |MAL-ED         |TANZANIA     |3      |        1|      1|   121|
|Birth     |MAL-ED         |SOUTH AFRICA |4+     |        0|     80|   107|
|Birth     |MAL-ED         |SOUTH AFRICA |4+     |        1|      2|   107|
|Birth     |MAL-ED         |SOUTH AFRICA |1      |        0|      3|   107|
|Birth     |MAL-ED         |SOUTH AFRICA |1      |        1|      0|   107|
|Birth     |MAL-ED         |SOUTH AFRICA |2      |        0|     12|   107|
|Birth     |MAL-ED         |SOUTH AFRICA |2      |        1|      0|   107|
|Birth     |MAL-ED         |SOUTH AFRICA |3      |        0|     10|   107|
|Birth     |MAL-ED         |SOUTH AFRICA |3      |        1|      0|   107|
|Birth     |NIH-Crypto     |BANGLADESH   |4+     |        0|    112|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |4+     |        1|      0|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |1      |        0|    311|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |1      |        1|      5|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |2      |        0|    198|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |2      |        1|      5|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |3      |        0|    101|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |3      |        1|      0|   732|
|Birth     |PROVIDE        |BANGLADESH   |4+     |        0|     21|   539|
|Birth     |PROVIDE        |BANGLADESH   |4+     |        1|      0|   539|
|Birth     |PROVIDE        |BANGLADESH   |1      |        0|    375|   539|
|Birth     |PROVIDE        |BANGLADESH   |1      |        1|      2|   539|
|Birth     |PROVIDE        |BANGLADESH   |2      |        0|     90|   539|
|Birth     |PROVIDE        |BANGLADESH   |2      |        1|      1|   539|
|Birth     |PROVIDE        |BANGLADESH   |3      |        0|     49|   539|
|Birth     |PROVIDE        |BANGLADESH   |3      |        1|      1|   539|
|Birth     |Vellore Crypto |INDIA        |4+     |        0|     11|   386|
|Birth     |Vellore Crypto |INDIA        |4+     |        1|      1|   386|
|Birth     |Vellore Crypto |INDIA        |1      |        0|    185|   386|
|Birth     |Vellore Crypto |INDIA        |1      |        1|      8|   386|
|Birth     |Vellore Crypto |INDIA        |2      |        0|    142|   386|
|Birth     |Vellore Crypto |INDIA        |2      |        1|      7|   386|
|Birth     |Vellore Crypto |INDIA        |3      |        0|     32|   386|
|Birth     |Vellore Crypto |INDIA        |3      |        1|      0|   386|
|6 months  |CMC-V-BCS-2002 |INDIA        |4+     |        0|     12|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |4+     |        1|      1|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |1      |        0|    176|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |1      |        1|     18|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |2      |        0|     84|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |2      |        1|     14|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |3      |        0|     55|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |3      |        1|      9|   369|
|6 months  |COHORTS        |INDIA        |4+     |        0|    110|  5488|
|6 months  |COHORTS        |INDIA        |4+     |        1|      4|  5488|
|6 months  |COHORTS        |INDIA        |1      |        0|   2741|  5488|
|6 months  |COHORTS        |INDIA        |1      |        1|    131|  5488|
|6 months  |COHORTS        |INDIA        |2      |        0|   2227|  5488|
|6 months  |COHORTS        |INDIA        |2      |        1|    109|  5488|
|6 months  |COHORTS        |INDIA        |3      |        0|    159|  5488|
|6 months  |COHORTS        |INDIA        |3      |        1|      7|  5488|
|6 months  |CONTENT        |PERU         |4+     |        0|     65|   215|
|6 months  |CONTENT        |PERU         |4+     |        1|      1|   215|
|6 months  |CONTENT        |PERU         |1      |        0|     44|   215|
|6 months  |CONTENT        |PERU         |1      |        1|      0|   215|
|6 months  |CONTENT        |PERU         |2      |        0|     60|   215|
|6 months  |CONTENT        |PERU         |2      |        1|      0|   215|
|6 months  |CONTENT        |PERU         |3      |        0|     45|   215|
|6 months  |CONTENT        |PERU         |3      |        1|      0|   215|
|6 months  |GMS-Nepal      |NEPAL        |4+     |        0|    249|   564|
|6 months  |GMS-Nepal      |NEPAL        |4+     |        1|      8|   564|
|6 months  |GMS-Nepal      |NEPAL        |1      |        0|     39|   564|
|6 months  |GMS-Nepal      |NEPAL        |1      |        1|      1|   564|
|6 months  |GMS-Nepal      |NEPAL        |2      |        0|    111|   564|
|6 months  |GMS-Nepal      |NEPAL        |2      |        1|      9|   564|
|6 months  |GMS-Nepal      |NEPAL        |3      |        0|    144|   564|
|6 months  |GMS-Nepal      |NEPAL        |3      |        1|      3|   564|
|6 months  |JiVitA-3       |BANGLADESH   |4+     |        0|    691| 16803|
|6 months  |JiVitA-3       |BANGLADESH   |4+     |        1|     31| 16803|
|6 months  |JiVitA-3       |BANGLADESH   |1      |        0|   9145| 16803|
|6 months  |JiVitA-3       |BANGLADESH   |1      |        1|    621| 16803|
|6 months  |JiVitA-3       |BANGLADESH   |2      |        0|   4375| 16803|
|6 months  |JiVitA-3       |BANGLADESH   |2      |        1|    275| 16803|
|6 months  |JiVitA-3       |BANGLADESH   |3      |        0|   1573| 16803|
|6 months  |JiVitA-3       |BANGLADESH   |3      |        1|     92| 16803|
|6 months  |JiVitA-4       |BANGLADESH   |4+     |        0|    233|  4828|
|6 months  |JiVitA-4       |BANGLADESH   |4+     |        1|     15|  4828|
|6 months  |JiVitA-4       |BANGLADESH   |1      |        0|   2664|  4828|
|6 months  |JiVitA-4       |BANGLADESH   |1      |        1|    182|  4828|
|6 months  |JiVitA-4       |BANGLADESH   |2      |        0|   1170|  4828|
|6 months  |JiVitA-4       |BANGLADESH   |2      |        1|     56|  4828|
|6 months  |JiVitA-4       |BANGLADESH   |3      |        0|    490|  4828|
|6 months  |JiVitA-4       |BANGLADESH   |3      |        1|     18|  4828|
|6 months  |MAL-ED         |INDIA        |4+     |        0|     14|   231|
|6 months  |MAL-ED         |INDIA        |4+     |        1|      0|   231|
|6 months  |MAL-ED         |INDIA        |1      |        0|     69|   231|
|6 months  |MAL-ED         |INDIA        |1      |        1|      0|   231|
|6 months  |MAL-ED         |INDIA        |2      |        0|     84|   231|
|6 months  |MAL-ED         |INDIA        |2      |        1|      7|   231|
|6 months  |MAL-ED         |INDIA        |3      |        0|     55|   231|
|6 months  |MAL-ED         |INDIA        |3      |        1|      2|   231|
|6 months  |MAL-ED         |BANGLADESH   |4+     |        0|      8|   232|
|6 months  |MAL-ED         |BANGLADESH   |4+     |        1|      0|   232|
|6 months  |MAL-ED         |BANGLADESH   |1      |        0|    120|   232|
|6 months  |MAL-ED         |BANGLADESH   |1      |        1|      6|   232|
|6 months  |MAL-ED         |BANGLADESH   |2      |        0|     68|   232|
|6 months  |MAL-ED         |BANGLADESH   |2      |        1|      2|   232|
|6 months  |MAL-ED         |BANGLADESH   |3      |        0|     28|   232|
|6 months  |MAL-ED         |BANGLADESH   |3      |        1|      0|   232|
|6 months  |MAL-ED         |PERU         |4+     |        0|    103|   265|
|6 months  |MAL-ED         |PERU         |4+     |        1|      4|   265|
|6 months  |MAL-ED         |PERU         |1      |        0|     15|   265|
|6 months  |MAL-ED         |PERU         |1      |        1|      0|   265|
|6 months  |MAL-ED         |PERU         |2      |        0|     42|   265|
|6 months  |MAL-ED         |PERU         |2      |        1|      2|   265|
|6 months  |MAL-ED         |PERU         |3      |        0|     95|   265|
|6 months  |MAL-ED         |PERU         |3      |        1|      4|   265|
|6 months  |MAL-ED         |NEPAL        |4+     |        0|    136|   232|
|6 months  |MAL-ED         |NEPAL        |4+     |        1|      1|   232|
|6 months  |MAL-ED         |NEPAL        |1      |        0|      8|   232|
|6 months  |MAL-ED         |NEPAL        |1      |        1|      0|   232|
|6 months  |MAL-ED         |NEPAL        |2      |        0|     67|   232|
|6 months  |MAL-ED         |NEPAL        |2      |        1|      0|   232|
|6 months  |MAL-ED         |NEPAL        |3      |        0|     20|   232|
|6 months  |MAL-ED         |NEPAL        |3      |        1|      0|   232|
|6 months  |MAL-ED         |BRAZIL       |4+     |        0|     92|   190|
|6 months  |MAL-ED         |BRAZIL       |4+     |        1|      0|   190|
|6 months  |MAL-ED         |BRAZIL       |1      |        0|      3|   190|
|6 months  |MAL-ED         |BRAZIL       |1      |        1|      0|   190|
|6 months  |MAL-ED         |BRAZIL       |2      |        0|     16|   190|
|6 months  |MAL-ED         |BRAZIL       |2      |        1|      0|   190|
|6 months  |MAL-ED         |BRAZIL       |3      |        0|     79|   190|
|6 months  |MAL-ED         |BRAZIL       |3      |        1|      0|   190|
|6 months  |MAL-ED         |TANZANIA     |4+     |        0|     97|   246|
|6 months  |MAL-ED         |TANZANIA     |4+     |        1|      7|   246|
|6 months  |MAL-ED         |TANZANIA     |1      |        0|      9|   246|
|6 months  |MAL-ED         |TANZANIA     |1      |        1|      0|   246|
|6 months  |MAL-ED         |TANZANIA     |2      |        0|     38|   246|
|6 months  |MAL-ED         |TANZANIA     |2      |        1|      3|   246|
|6 months  |MAL-ED         |TANZANIA     |3      |        0|     88|   246|
|6 months  |MAL-ED         |TANZANIA     |3      |        1|      4|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |4+     |        0|    170|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |4+     |        1|      5|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |1      |        0|      7|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |1      |        1|      0|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |2      |        0|     21|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |2      |        1|      0|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |3      |        0|     26|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |3      |        1|      1|   230|
|6 months  |NIH-Crypto     |BANGLADESH   |4+     |        0|    107|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |4+     |        1|      0|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |1      |        0|    306|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |1      |        1|      8|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |2      |        0|    186|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |2      |        1|     11|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |3      |        0|     93|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |3      |        1|      4|   715|
|6 months  |PROVIDE        |BANGLADESH   |4+     |        0|     24|   604|
|6 months  |PROVIDE        |BANGLADESH   |4+     |        1|      0|   604|
|6 months  |PROVIDE        |BANGLADESH   |1      |        0|    415|   604|
|6 months  |PROVIDE        |BANGLADESH   |1      |        1|     11|   604|
|6 months  |PROVIDE        |BANGLADESH   |2      |        0|     92|   604|
|6 months  |PROVIDE        |BANGLADESH   |2      |        1|      3|   604|
|6 months  |PROVIDE        |BANGLADESH   |3      |        0|     59|   604|
|6 months  |PROVIDE        |BANGLADESH   |3      |        1|      0|   604|
|6 months  |Vellore Crypto |INDIA        |4+     |        0|     11|   405|
|6 months  |Vellore Crypto |INDIA        |4+     |        1|      1|   405|
|6 months  |Vellore Crypto |INDIA        |1      |        0|    187|   405|
|6 months  |Vellore Crypto |INDIA        |1      |        1|     14|   405|
|6 months  |Vellore Crypto |INDIA        |2      |        0|    146|   405|
|6 months  |Vellore Crypto |INDIA        |2      |        1|     13|   405|
|6 months  |Vellore Crypto |INDIA        |3      |        0|     32|   405|
|6 months  |Vellore Crypto |INDIA        |3      |        1|      1|   405|
|24 months |CMC-V-BCS-2002 |INDIA        |4+     |        0|      9|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |4+     |        1|      5|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |1      |        0|    132|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |1      |        1|     65|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |2      |        0|     63|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |2      |        1|     33|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |3      |        0|     42|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |3      |        1|     22|   371|
|24 months |COHORTS        |INDIA        |4+     |        0|     62|  4251|
|24 months |COHORTS        |INDIA        |4+     |        1|     19|  4251|
|24 months |COHORTS        |INDIA        |1      |        0|   1713|  4251|
|24 months |COHORTS        |INDIA        |1      |        1|    513|  4251|
|24 months |COHORTS        |INDIA        |2      |        0|   1408|  4251|
|24 months |COHORTS        |INDIA        |2      |        1|    408|  4251|
|24 months |COHORTS        |INDIA        |3      |        0|     95|  4251|
|24 months |COHORTS        |INDIA        |3      |        1|     33|  4251|
|24 months |CONTENT        |PERU         |4+     |        0|     54|   164|
|24 months |CONTENT        |PERU         |4+     |        1|      0|   164|
|24 months |CONTENT        |PERU         |1      |        0|     34|   164|
|24 months |CONTENT        |PERU         |1      |        1|      0|   164|
|24 months |CONTENT        |PERU         |2      |        0|     39|   164|
|24 months |CONTENT        |PERU         |2      |        1|      1|   164|
|24 months |CONTENT        |PERU         |3      |        0|     36|   164|
|24 months |CONTENT        |PERU         |3      |        1|      0|   164|
|24 months |GMS-Nepal      |NEPAL        |4+     |        0|    195|   488|
|24 months |GMS-Nepal      |NEPAL        |4+     |        1|     21|   488|
|24 months |GMS-Nepal      |NEPAL        |1      |        0|     32|   488|
|24 months |GMS-Nepal      |NEPAL        |1      |        1|      6|   488|
|24 months |GMS-Nepal      |NEPAL        |2      |        0|     86|   488|
|24 months |GMS-Nepal      |NEPAL        |2      |        1|     15|   488|
|24 months |GMS-Nepal      |NEPAL        |3      |        0|    122|   488|
|24 months |GMS-Nepal      |NEPAL        |3      |        1|     11|   488|
|24 months |JiVitA-3       |BANGLADESH   |4+     |        0|    309|  8627|
|24 months |JiVitA-3       |BANGLADESH   |4+     |        1|     47|  8627|
|24 months |JiVitA-3       |BANGLADESH   |1      |        0|   4276|  8627|
|24 months |JiVitA-3       |BANGLADESH   |1      |        1|    833|  8627|
|24 months |JiVitA-3       |BANGLADESH   |2      |        0|   1994|  8627|
|24 months |JiVitA-3       |BANGLADESH   |2      |        1|    348|  8627|
|24 months |JiVitA-3       |BANGLADESH   |3      |        0|    702|  8627|
|24 months |JiVitA-3       |BANGLADESH   |3      |        1|    118|  8627|
|24 months |JiVitA-4       |BANGLADESH   |4+     |        0|    227|  4749|
|24 months |JiVitA-4       |BANGLADESH   |4+     |        1|     23|  4749|
|24 months |JiVitA-4       |BANGLADESH   |1      |        0|   2505|  4749|
|24 months |JiVitA-4       |BANGLADESH   |1      |        1|    279|  4749|
|24 months |JiVitA-4       |BANGLADESH   |2      |        0|   1098|  4749|
|24 months |JiVitA-4       |BANGLADESH   |2      |        1|    116|  4749|
|24 months |JiVitA-4       |BANGLADESH   |3      |        0|    467|  4749|
|24 months |JiVitA-4       |BANGLADESH   |3      |        1|     34|  4749|
|24 months |MAL-ED         |INDIA        |4+     |        0|     13|   222|
|24 months |MAL-ED         |INDIA        |4+     |        1|      0|   222|
|24 months |MAL-ED         |INDIA        |1      |        0|     55|   222|
|24 months |MAL-ED         |INDIA        |1      |        1|      9|   222|
|24 months |MAL-ED         |INDIA        |2      |        0|     78|   222|
|24 months |MAL-ED         |INDIA        |2      |        1|     13|   222|
|24 months |MAL-ED         |INDIA        |3      |        0|     46|   222|
|24 months |MAL-ED         |INDIA        |3      |        1|      8|   222|
|24 months |MAL-ED         |BANGLADESH   |4+     |        0|      6|   203|
|24 months |MAL-ED         |BANGLADESH   |4+     |        1|      1|   203|
|24 months |MAL-ED         |BANGLADESH   |1      |        0|     93|   203|
|24 months |MAL-ED         |BANGLADESH   |1      |        1|     18|   203|
|24 months |MAL-ED         |BANGLADESH   |2      |        0|     56|   203|
|24 months |MAL-ED         |BANGLADESH   |2      |        1|      6|   203|
|24 months |MAL-ED         |BANGLADESH   |3      |        0|     22|   203|
|24 months |MAL-ED         |BANGLADESH   |3      |        1|      1|   203|
|24 months |MAL-ED         |PERU         |4+     |        0|     78|   193|
|24 months |MAL-ED         |PERU         |4+     |        1|      4|   193|
|24 months |MAL-ED         |PERU         |1      |        0|     12|   193|
|24 months |MAL-ED         |PERU         |1      |        1|      0|   193|
|24 months |MAL-ED         |PERU         |2      |        0|     23|   193|
|24 months |MAL-ED         |PERU         |2      |        1|      4|   193|
|24 months |MAL-ED         |PERU         |3      |        0|     66|   193|
|24 months |MAL-ED         |PERU         |3      |        1|      6|   193|
|24 months |MAL-ED         |NEPAL        |4+     |        0|    127|   224|
|24 months |MAL-ED         |NEPAL        |4+     |        1|      4|   224|
|24 months |MAL-ED         |NEPAL        |1      |        0|      8|   224|
|24 months |MAL-ED         |NEPAL        |1      |        1|      0|   224|
|24 months |MAL-ED         |NEPAL        |2      |        0|     62|   224|
|24 months |MAL-ED         |NEPAL        |2      |        1|      3|   224|
|24 months |MAL-ED         |NEPAL        |3      |        0|     20|   224|
|24 months |MAL-ED         |NEPAL        |3      |        1|      0|   224|
|24 months |MAL-ED         |BRAZIL       |4+     |        0|     71|   151|
|24 months |MAL-ED         |BRAZIL       |4+     |        1|      0|   151|
|24 months |MAL-ED         |BRAZIL       |1      |        0|      1|   151|
|24 months |MAL-ED         |BRAZIL       |1      |        1|      0|   151|
|24 months |MAL-ED         |BRAZIL       |2      |        0|     12|   151|
|24 months |MAL-ED         |BRAZIL       |2      |        1|      0|   151|
|24 months |MAL-ED         |BRAZIL       |3      |        0|     66|   151|
|24 months |MAL-ED         |BRAZIL       |3      |        1|      1|   151|
|24 months |MAL-ED         |TANZANIA     |4+     |        0|     57|   213|
|24 months |MAL-ED         |TANZANIA     |4+     |        1|     29|   213|
|24 months |MAL-ED         |TANZANIA     |1      |        0|      4|   213|
|24 months |MAL-ED         |TANZANIA     |1      |        1|      4|   213|
|24 months |MAL-ED         |TANZANIA     |2      |        0|     27|   213|
|24 months |MAL-ED         |TANZANIA     |2      |        1|     12|   213|
|24 months |MAL-ED         |TANZANIA     |3      |        0|     55|   213|
|24 months |MAL-ED         |TANZANIA     |3      |        1|     25|   213|
|24 months |MAL-ED         |SOUTH AFRICA |4+     |        0|    145|   215|
|24 months |MAL-ED         |SOUTH AFRICA |4+     |        1|     18|   215|
|24 months |MAL-ED         |SOUTH AFRICA |1      |        0|      6|   215|
|24 months |MAL-ED         |SOUTH AFRICA |1      |        1|      0|   215|
|24 months |MAL-ED         |SOUTH AFRICA |2      |        0|     17|   215|
|24 months |MAL-ED         |SOUTH AFRICA |2      |        1|      2|   215|
|24 months |MAL-ED         |SOUTH AFRICA |3      |        0|     23|   215|
|24 months |MAL-ED         |SOUTH AFRICA |3      |        1|      4|   215|
|24 months |NIH-Crypto     |BANGLADESH   |4+     |        0|     76|   514|
|24 months |NIH-Crypto     |BANGLADESH   |4+     |        1|      2|   514|
|24 months |NIH-Crypto     |BANGLADESH   |1      |        0|    203|   514|
|24 months |NIH-Crypto     |BANGLADESH   |1      |        1|     17|   514|
|24 months |NIH-Crypto     |BANGLADESH   |2      |        0|    132|   514|
|24 months |NIH-Crypto     |BANGLADESH   |2      |        1|     12|   514|
|24 months |NIH-Crypto     |BANGLADESH   |3      |        0|     67|   514|
|24 months |NIH-Crypto     |BANGLADESH   |3      |        1|      5|   514|
|24 months |PROVIDE        |BANGLADESH   |4+     |        0|     22|   578|
|24 months |PROVIDE        |BANGLADESH   |4+     |        1|      1|   578|
|24 months |PROVIDE        |BANGLADESH   |1      |        0|    374|   578|
|24 months |PROVIDE        |BANGLADESH   |1      |        1|     34|   578|
|24 months |PROVIDE        |BANGLADESH   |2      |        0|     75|   578|
|24 months |PROVIDE        |BANGLADESH   |2      |        1|     11|   578|
|24 months |PROVIDE        |BANGLADESH   |3      |        0|     55|   578|
|24 months |PROVIDE        |BANGLADESH   |3      |        1|      6|   578|
|24 months |Vellore Crypto |INDIA        |4+     |        0|     12|   407|
|24 months |Vellore Crypto |INDIA        |4+     |        1|      0|   407|
|24 months |Vellore Crypto |INDIA        |1      |        0|    181|   407|
|24 months |Vellore Crypto |INDIA        |1      |        1|     22|   407|
|24 months |Vellore Crypto |INDIA        |2      |        0|    143|   407|
|24 months |Vellore Crypto |INDIA        |2      |        1|     16|   407|
|24 months |Vellore Crypto |INDIA        |3      |        0|     30|   407|
|24 months |Vellore Crypto |INDIA        |3      |        1|      3|   407|


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
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
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
* agecat: 24 months, studyid: CONTENT, country: PERU
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


