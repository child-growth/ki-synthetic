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

**Intervention Variable:** nrooms

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |nrooms | stunted| n_cell|     n|
|:---------|:--------------|:------------|:------|-------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |4+     |       0|      1|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |4+     |       1|      1|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |1      |       0|     38|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |1      |       1|     11|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |2      |       0|     21|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |2      |       1|      4|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |3      |       0|     15|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |3      |       1|      1|    92|
|Birth     |COHORTS        |INDIA        |4+     |       0|     91|  5308|
|Birth     |COHORTS        |INDIA        |4+     |       1|     15|  5308|
|Birth     |COHORTS        |INDIA        |1      |       0|   2452|  5308|
|Birth     |COHORTS        |INDIA        |1      |       1|    332|  5308|
|Birth     |COHORTS        |INDIA        |2      |       0|   1993|  5308|
|Birth     |COHORTS        |INDIA        |2      |       1|    275|  5308|
|Birth     |COHORTS        |INDIA        |3      |       0|    129|  5308|
|Birth     |COHORTS        |INDIA        |3      |       1|     21|  5308|
|Birth     |CONTENT        |PERU         |4+     |       0|      1|     2|
|Birth     |CONTENT        |PERU         |4+     |       1|      0|     2|
|Birth     |CONTENT        |PERU         |1      |       0|      0|     2|
|Birth     |CONTENT        |PERU         |1      |       1|      0|     2|
|Birth     |CONTENT        |PERU         |2      |       0|      1|     2|
|Birth     |CONTENT        |PERU         |2      |       1|      0|     2|
|Birth     |CONTENT        |PERU         |3      |       0|      0|     2|
|Birth     |CONTENT        |PERU         |3      |       1|      0|     2|
|Birth     |GMS-Nepal      |NEPAL        |4+     |       0|    265|   696|
|Birth     |GMS-Nepal      |NEPAL        |4+     |       1|     58|   696|
|Birth     |GMS-Nepal      |NEPAL        |1      |       0|     37|   696|
|Birth     |GMS-Nepal      |NEPAL        |1      |       1|     12|   696|
|Birth     |GMS-Nepal      |NEPAL        |2      |       0|    114|   696|
|Birth     |GMS-Nepal      |NEPAL        |2      |       1|     30|   696|
|Birth     |GMS-Nepal      |NEPAL        |3      |       0|    158|   696|
|Birth     |GMS-Nepal      |NEPAL        |3      |       1|     22|   696|
|Birth     |JiVitA-3       |BANGLADESH   |4+     |       0|    583| 22436|
|Birth     |JiVitA-3       |BANGLADESH   |4+     |       1|    272| 22436|
|Birth     |JiVitA-3       |BANGLADESH   |1      |       0|   8866| 22436|
|Birth     |JiVitA-3       |BANGLADESH   |1      |       1|   4492| 22436|
|Birth     |JiVitA-3       |BANGLADESH   |2      |       0|   4127| 22436|
|Birth     |JiVitA-3       |BANGLADESH   |2      |       1|   1937| 22436|
|Birth     |JiVitA-3       |BANGLADESH   |3      |       0|   1481| 22436|
|Birth     |JiVitA-3       |BANGLADESH   |3      |       1|    678| 22436|
|Birth     |JiVitA-4       |BANGLADESH   |4+     |       0|    101|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |4+     |       1|     41|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |1      |       0|   1159|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |1      |       1|    529|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |2      |       0|    487|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |2      |       1|    215|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |3      |       0|    218|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |3      |       1|     72|  2822|
|Birth     |MAL-ED         |INDIA        |4+     |       0|      3|    47|
|Birth     |MAL-ED         |INDIA        |4+     |       1|      0|    47|
|Birth     |MAL-ED         |INDIA        |1      |       0|     12|    47|
|Birth     |MAL-ED         |INDIA        |1      |       1|      5|    47|
|Birth     |MAL-ED         |INDIA        |2      |       0|     13|    47|
|Birth     |MAL-ED         |INDIA        |2      |       1|      2|    47|
|Birth     |MAL-ED         |INDIA        |3      |       0|      9|    47|
|Birth     |MAL-ED         |INDIA        |3      |       1|      3|    47|
|Birth     |MAL-ED         |BANGLADESH   |4+     |       0|      9|   221|
|Birth     |MAL-ED         |BANGLADESH   |4+     |       1|      0|   221|
|Birth     |MAL-ED         |BANGLADESH   |1      |       0|     94|   221|
|Birth     |MAL-ED         |BANGLADESH   |1      |       1|     23|   221|
|Birth     |MAL-ED         |BANGLADESH   |2      |       0|     54|   221|
|Birth     |MAL-ED         |BANGLADESH   |2      |       1|     11|   221|
|Birth     |MAL-ED         |BANGLADESH   |3      |       0|     24|   221|
|Birth     |MAL-ED         |BANGLADESH   |3      |       1|      6|   221|
|Birth     |MAL-ED         |PERU         |4+     |       0|     86|   227|
|Birth     |MAL-ED         |PERU         |4+     |       1|     11|   227|
|Birth     |MAL-ED         |PERU         |1      |       0|      9|   227|
|Birth     |MAL-ED         |PERU         |1      |       1|      1|   227|
|Birth     |MAL-ED         |PERU         |2      |       0|     29|   227|
|Birth     |MAL-ED         |PERU         |2      |       1|      1|   227|
|Birth     |MAL-ED         |PERU         |3      |       0|     77|   227|
|Birth     |MAL-ED         |PERU         |3      |       1|     13|   227|
|Birth     |MAL-ED         |NEPAL        |4+     |       0|     15|    26|
|Birth     |MAL-ED         |NEPAL        |4+     |       1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |1      |       0|      1|    26|
|Birth     |MAL-ED         |NEPAL        |1      |       1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |2      |       0|      6|    26|
|Birth     |MAL-ED         |NEPAL        |2      |       1|      2|    26|
|Birth     |MAL-ED         |NEPAL        |3      |       0|      2|    26|
|Birth     |MAL-ED         |NEPAL        |3      |       1|      0|    26|
|Birth     |MAL-ED         |BRAZIL       |4+     |       0|     19|    57|
|Birth     |MAL-ED         |BRAZIL       |4+     |       1|      5|    57|
|Birth     |MAL-ED         |BRAZIL       |1      |       0|      1|    57|
|Birth     |MAL-ED         |BRAZIL       |1      |       1|      0|    57|
|Birth     |MAL-ED         |BRAZIL       |2      |       0|      7|    57|
|Birth     |MAL-ED         |BRAZIL       |2      |       1|      0|    57|
|Birth     |MAL-ED         |BRAZIL       |3      |       0|     21|    57|
|Birth     |MAL-ED         |BRAZIL       |3      |       1|      4|    57|
|Birth     |MAL-ED         |TANZANIA     |4+     |       0|     43|   121|
|Birth     |MAL-ED         |TANZANIA     |4+     |       1|      8|   121|
|Birth     |MAL-ED         |TANZANIA     |1      |       0|      2|   121|
|Birth     |MAL-ED         |TANZANIA     |1      |       1|      2|   121|
|Birth     |MAL-ED         |TANZANIA     |2      |       0|     19|   121|
|Birth     |MAL-ED         |TANZANIA     |2      |       1|      3|   121|
|Birth     |MAL-ED         |TANZANIA     |3      |       0|     35|   121|
|Birth     |MAL-ED         |TANZANIA     |3      |       1|      9|   121|
|Birth     |MAL-ED         |SOUTH AFRICA |4+     |       0|     75|   107|
|Birth     |MAL-ED         |SOUTH AFRICA |4+     |       1|      7|   107|
|Birth     |MAL-ED         |SOUTH AFRICA |1      |       0|      2|   107|
|Birth     |MAL-ED         |SOUTH AFRICA |1      |       1|      1|   107|
|Birth     |MAL-ED         |SOUTH AFRICA |2      |       0|     11|   107|
|Birth     |MAL-ED         |SOUTH AFRICA |2      |       1|      1|   107|
|Birth     |MAL-ED         |SOUTH AFRICA |3      |       0|      9|   107|
|Birth     |MAL-ED         |SOUTH AFRICA |3      |       1|      1|   107|
|Birth     |NIH-Crypto     |BANGLADESH   |4+     |       0|     96|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |4+     |       1|     16|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |1      |       0|    273|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |1      |       1|     43|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |2      |       0|    171|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |2      |       1|     32|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |3      |       0|     91|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |3      |       1|     10|   732|
|Birth     |PROVIDE        |BANGLADESH   |4+     |       0|     19|   539|
|Birth     |PROVIDE        |BANGLADESH   |4+     |       1|      2|   539|
|Birth     |PROVIDE        |BANGLADESH   |1      |       0|    346|   539|
|Birth     |PROVIDE        |BANGLADESH   |1      |       1|     31|   539|
|Birth     |PROVIDE        |BANGLADESH   |2      |       0|     82|   539|
|Birth     |PROVIDE        |BANGLADESH   |2      |       1|      9|   539|
|Birth     |PROVIDE        |BANGLADESH   |3      |       0|     44|   539|
|Birth     |PROVIDE        |BANGLADESH   |3      |       1|      6|   539|
|Birth     |Vellore Crypto |INDIA        |4+     |       0|     10|   386|
|Birth     |Vellore Crypto |INDIA        |4+     |       1|      2|   386|
|Birth     |Vellore Crypto |INDIA        |1      |       0|    172|   386|
|Birth     |Vellore Crypto |INDIA        |1      |       1|     21|   386|
|Birth     |Vellore Crypto |INDIA        |2      |       0|    131|   386|
|Birth     |Vellore Crypto |INDIA        |2      |       1|     18|   386|
|Birth     |Vellore Crypto |INDIA        |3      |       0|     29|   386|
|Birth     |Vellore Crypto |INDIA        |3      |       1|      3|   386|
|6 months  |CMC-V-BCS-2002 |INDIA        |4+     |       0|      9|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |4+     |       1|      4|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |1      |       0|    139|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |1      |       1|     55|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |2      |       0|     65|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |2      |       1|     33|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |3      |       0|     45|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |3      |       1|     19|   369|
|6 months  |COHORTS        |INDIA        |4+     |       0|     93|  5488|
|6 months  |COHORTS        |INDIA        |4+     |       1|     21|  5488|
|6 months  |COHORTS        |INDIA        |1      |       0|   2362|  5488|
|6 months  |COHORTS        |INDIA        |1      |       1|    510|  5488|
|6 months  |COHORTS        |INDIA        |2      |       0|   1889|  5488|
|6 months  |COHORTS        |INDIA        |2      |       1|    447|  5488|
|6 months  |COHORTS        |INDIA        |3      |       0|    137|  5488|
|6 months  |COHORTS        |INDIA        |3      |       1|     29|  5488|
|6 months  |CONTENT        |PERU         |4+     |       0|     62|   215|
|6 months  |CONTENT        |PERU         |4+     |       1|      4|   215|
|6 months  |CONTENT        |PERU         |1      |       0|     42|   215|
|6 months  |CONTENT        |PERU         |1      |       1|      2|   215|
|6 months  |CONTENT        |PERU         |2      |       0|     58|   215|
|6 months  |CONTENT        |PERU         |2      |       1|      2|   215|
|6 months  |CONTENT        |PERU         |3      |       0|     44|   215|
|6 months  |CONTENT        |PERU         |3      |       1|      1|   215|
|6 months  |GMS-Nepal      |NEPAL        |4+     |       0|    202|   564|
|6 months  |GMS-Nepal      |NEPAL        |4+     |       1|     55|   564|
|6 months  |GMS-Nepal      |NEPAL        |1      |       0|     29|   564|
|6 months  |GMS-Nepal      |NEPAL        |1      |       1|     11|   564|
|6 months  |GMS-Nepal      |NEPAL        |2      |       0|     95|   564|
|6 months  |GMS-Nepal      |NEPAL        |2      |       1|     25|   564|
|6 months  |GMS-Nepal      |NEPAL        |3      |       0|    116|   564|
|6 months  |GMS-Nepal      |NEPAL        |3      |       1|     31|   564|
|6 months  |JiVitA-3       |BANGLADESH   |4+     |       0|    555| 16803|
|6 months  |JiVitA-3       |BANGLADESH   |4+     |       1|    167| 16803|
|6 months  |JiVitA-3       |BANGLADESH   |1      |       0|   7215| 16803|
|6 months  |JiVitA-3       |BANGLADESH   |1      |       1|   2551| 16803|
|6 months  |JiVitA-3       |BANGLADESH   |2      |       0|   3528| 16803|
|6 months  |JiVitA-3       |BANGLADESH   |2      |       1|   1122| 16803|
|6 months  |JiVitA-3       |BANGLADESH   |3      |       0|   1283| 16803|
|6 months  |JiVitA-3       |BANGLADESH   |3      |       1|    382| 16803|
|6 months  |JiVitA-4       |BANGLADESH   |4+     |       0|    192|  4828|
|6 months  |JiVitA-4       |BANGLADESH   |4+     |       1|     56|  4828|
|6 months  |JiVitA-4       |BANGLADESH   |1      |       0|   2103|  4828|
|6 months  |JiVitA-4       |BANGLADESH   |1      |       1|    743|  4828|
|6 months  |JiVitA-4       |BANGLADESH   |2      |       0|    912|  4828|
|6 months  |JiVitA-4       |BANGLADESH   |2      |       1|    314|  4828|
|6 months  |JiVitA-4       |BANGLADESH   |3      |       0|    401|  4828|
|6 months  |JiVitA-4       |BANGLADESH   |3      |       1|    107|  4828|
|6 months  |MAL-ED         |INDIA        |4+     |       0|     13|   231|
|6 months  |MAL-ED         |INDIA        |4+     |       1|      1|   231|
|6 months  |MAL-ED         |INDIA        |1      |       0|     56|   231|
|6 months  |MAL-ED         |INDIA        |1      |       1|     13|   231|
|6 months  |MAL-ED         |INDIA        |2      |       0|     73|   231|
|6 months  |MAL-ED         |INDIA        |2      |       1|     18|   231|
|6 months  |MAL-ED         |INDIA        |3      |       0|     45|   231|
|6 months  |MAL-ED         |INDIA        |3      |       1|     12|   231|
|6 months  |MAL-ED         |BANGLADESH   |4+     |       0|      8|   232|
|6 months  |MAL-ED         |BANGLADESH   |4+     |       1|      0|   232|
|6 months  |MAL-ED         |BANGLADESH   |1      |       0|     98|   232|
|6 months  |MAL-ED         |BANGLADESH   |1      |       1|     28|   232|
|6 months  |MAL-ED         |BANGLADESH   |2      |       0|     60|   232|
|6 months  |MAL-ED         |BANGLADESH   |2      |       1|     10|   232|
|6 months  |MAL-ED         |BANGLADESH   |3      |       0|     25|   232|
|6 months  |MAL-ED         |BANGLADESH   |3      |       1|      3|   232|
|6 months  |MAL-ED         |PERU         |4+     |       0|     82|   265|
|6 months  |MAL-ED         |PERU         |4+     |       1|     25|   265|
|6 months  |MAL-ED         |PERU         |1      |       0|     13|   265|
|6 months  |MAL-ED         |PERU         |1      |       1|      2|   265|
|6 months  |MAL-ED         |PERU         |2      |       0|     35|   265|
|6 months  |MAL-ED         |PERU         |2      |       1|      9|   265|
|6 months  |MAL-ED         |PERU         |3      |       0|     78|   265|
|6 months  |MAL-ED         |PERU         |3      |       1|     21|   265|
|6 months  |MAL-ED         |NEPAL        |4+     |       0|    130|   232|
|6 months  |MAL-ED         |NEPAL        |4+     |       1|      7|   232|
|6 months  |MAL-ED         |NEPAL        |1      |       0|      8|   232|
|6 months  |MAL-ED         |NEPAL        |1      |       1|      0|   232|
|6 months  |MAL-ED         |NEPAL        |2      |       0|     63|   232|
|6 months  |MAL-ED         |NEPAL        |2      |       1|      4|   232|
|6 months  |MAL-ED         |NEPAL        |3      |       0|     19|   232|
|6 months  |MAL-ED         |NEPAL        |3      |       1|      1|   232|
|6 months  |MAL-ED         |BRAZIL       |4+     |       0|     91|   190|
|6 months  |MAL-ED         |BRAZIL       |4+     |       1|      1|   190|
|6 months  |MAL-ED         |BRAZIL       |1      |       0|      3|   190|
|6 months  |MAL-ED         |BRAZIL       |1      |       1|      0|   190|
|6 months  |MAL-ED         |BRAZIL       |2      |       0|     15|   190|
|6 months  |MAL-ED         |BRAZIL       |2      |       1|      1|   190|
|6 months  |MAL-ED         |BRAZIL       |3      |       0|     76|   190|
|6 months  |MAL-ED         |BRAZIL       |3      |       1|      3|   190|
|6 months  |MAL-ED         |TANZANIA     |4+     |       0|     78|   246|
|6 months  |MAL-ED         |TANZANIA     |4+     |       1|     26|   246|
|6 months  |MAL-ED         |TANZANIA     |1      |       0|      7|   246|
|6 months  |MAL-ED         |TANZANIA     |1      |       1|      2|   246|
|6 months  |MAL-ED         |TANZANIA     |2      |       0|     33|   246|
|6 months  |MAL-ED         |TANZANIA     |2      |       1|      8|   246|
|6 months  |MAL-ED         |TANZANIA     |3      |       0|     69|   246|
|6 months  |MAL-ED         |TANZANIA     |3      |       1|     23|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |4+     |       0|    139|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |4+     |       1|     36|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |1      |       0|      6|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |1      |       1|      1|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |2      |       0|     17|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |2      |       1|      4|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |3      |       0|     21|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |3      |       1|      6|   230|
|6 months  |NIH-Crypto     |BANGLADESH   |4+     |       0|     88|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |4+     |       1|     19|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |1      |       0|    249|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |1      |       1|     65|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |2      |       0|    149|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |2      |       1|     48|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |3      |       0|     79|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |3      |       1|     18|   715|
|6 months  |PROVIDE        |BANGLADESH   |4+     |       0|     21|   604|
|6 months  |PROVIDE        |BANGLADESH   |4+     |       1|      3|   604|
|6 months  |PROVIDE        |BANGLADESH   |1      |       0|    360|   604|
|6 months  |PROVIDE        |BANGLADESH   |1      |       1|     66|   604|
|6 months  |PROVIDE        |BANGLADESH   |2      |       0|     81|   604|
|6 months  |PROVIDE        |BANGLADESH   |2      |       1|     14|   604|
|6 months  |PROVIDE        |BANGLADESH   |3      |       0|     46|   604|
|6 months  |PROVIDE        |BANGLADESH   |3      |       1|     13|   604|
|6 months  |Vellore Crypto |INDIA        |4+     |       0|      9|   405|
|6 months  |Vellore Crypto |INDIA        |4+     |       1|      3|   405|
|6 months  |Vellore Crypto |INDIA        |1      |       0|    150|   405|
|6 months  |Vellore Crypto |INDIA        |1      |       1|     51|   405|
|6 months  |Vellore Crypto |INDIA        |2      |       0|    123|   405|
|6 months  |Vellore Crypto |INDIA        |2      |       1|     36|   405|
|6 months  |Vellore Crypto |INDIA        |3      |       0|     23|   405|
|6 months  |Vellore Crypto |INDIA        |3      |       1|     10|   405|
|24 months |CMC-V-BCS-2002 |INDIA        |4+     |       0|      1|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |4+     |       1|     13|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |1      |       0|     53|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |1      |       1|    144|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |2      |       0|     29|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |2      |       1|     67|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |3      |       0|     22|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |3      |       1|     42|   371|
|24 months |COHORTS        |INDIA        |4+     |       0|     36|  4251|
|24 months |COHORTS        |INDIA        |4+     |       1|     45|  4251|
|24 months |COHORTS        |INDIA        |1      |       0|   1034|  4251|
|24 months |COHORTS        |INDIA        |1      |       1|   1192|  4251|
|24 months |COHORTS        |INDIA        |2      |       0|    854|  4251|
|24 months |COHORTS        |INDIA        |2      |       1|    962|  4251|
|24 months |COHORTS        |INDIA        |3      |       0|     59|  4251|
|24 months |COHORTS        |INDIA        |3      |       1|     69|  4251|
|24 months |CONTENT        |PERU         |4+     |       0|     49|   164|
|24 months |CONTENT        |PERU         |4+     |       1|      5|   164|
|24 months |CONTENT        |PERU         |1      |       0|     31|   164|
|24 months |CONTENT        |PERU         |1      |       1|      3|   164|
|24 months |CONTENT        |PERU         |2      |       0|     37|   164|
|24 months |CONTENT        |PERU         |2      |       1|      3|   164|
|24 months |CONTENT        |PERU         |3      |       0|     34|   164|
|24 months |CONTENT        |PERU         |3      |       1|      2|   164|
|24 months |GMS-Nepal      |NEPAL        |4+     |       0|    118|   488|
|24 months |GMS-Nepal      |NEPAL        |4+     |       1|     98|   488|
|24 months |GMS-Nepal      |NEPAL        |1      |       0|     17|   488|
|24 months |GMS-Nepal      |NEPAL        |1      |       1|     21|   488|
|24 months |GMS-Nepal      |NEPAL        |2      |       0|     61|   488|
|24 months |GMS-Nepal      |NEPAL        |2      |       1|     40|   488|
|24 months |GMS-Nepal      |NEPAL        |3      |       0|     73|   488|
|24 months |GMS-Nepal      |NEPAL        |3      |       1|     60|   488|
|24 months |JiVitA-3       |BANGLADESH   |4+     |       0|    175|  8627|
|24 months |JiVitA-3       |BANGLADESH   |4+     |       1|    181|  8627|
|24 months |JiVitA-3       |BANGLADESH   |1      |       0|   2557|  8627|
|24 months |JiVitA-3       |BANGLADESH   |1      |       1|   2552|  8627|
|24 months |JiVitA-3       |BANGLADESH   |2      |       0|   1210|  8627|
|24 months |JiVitA-3       |BANGLADESH   |2      |       1|   1132|  8627|
|24 months |JiVitA-3       |BANGLADESH   |3      |       0|    449|  8627|
|24 months |JiVitA-3       |BANGLADESH   |3      |       1|    371|  8627|
|24 months |JiVitA-4       |BANGLADESH   |4+     |       0|    160|  4749|
|24 months |JiVitA-4       |BANGLADESH   |4+     |       1|     90|  4749|
|24 months |JiVitA-4       |BANGLADESH   |1      |       0|   1628|  4749|
|24 months |JiVitA-4       |BANGLADESH   |1      |       1|   1156|  4749|
|24 months |JiVitA-4       |BANGLADESH   |2      |       0|    719|  4749|
|24 months |JiVitA-4       |BANGLADESH   |2      |       1|    495|  4749|
|24 months |JiVitA-4       |BANGLADESH   |3      |       0|    339|  4749|
|24 months |JiVitA-4       |BANGLADESH   |3      |       1|    162|  4749|
|24 months |MAL-ED         |INDIA        |4+     |       0|     11|   222|
|24 months |MAL-ED         |INDIA        |4+     |       1|      2|   222|
|24 months |MAL-ED         |INDIA        |1      |       0|     36|   222|
|24 months |MAL-ED         |INDIA        |1      |       1|     28|   222|
|24 months |MAL-ED         |INDIA        |2      |       0|     51|   222|
|24 months |MAL-ED         |INDIA        |2      |       1|     40|   222|
|24 months |MAL-ED         |INDIA        |3      |       0|     30|   222|
|24 months |MAL-ED         |INDIA        |3      |       1|     24|   222|
|24 months |MAL-ED         |BANGLADESH   |4+     |       0|      2|   203|
|24 months |MAL-ED         |BANGLADESH   |4+     |       1|      5|   203|
|24 months |MAL-ED         |BANGLADESH   |1      |       0|     58|   203|
|24 months |MAL-ED         |BANGLADESH   |1      |       1|     53|   203|
|24 months |MAL-ED         |BANGLADESH   |2      |       0|     34|   203|
|24 months |MAL-ED         |BANGLADESH   |2      |       1|     28|   203|
|24 months |MAL-ED         |BANGLADESH   |3      |       0|     14|   203|
|24 months |MAL-ED         |BANGLADESH   |3      |       1|      9|   203|
|24 months |MAL-ED         |PERU         |4+     |       0|     54|   193|
|24 months |MAL-ED         |PERU         |4+     |       1|     28|   193|
|24 months |MAL-ED         |PERU         |1      |       0|      8|   193|
|24 months |MAL-ED         |PERU         |1      |       1|      4|   193|
|24 months |MAL-ED         |PERU         |2      |       0|     16|   193|
|24 months |MAL-ED         |PERU         |2      |       1|     11|   193|
|24 months |MAL-ED         |PERU         |3      |       0|     46|   193|
|24 months |MAL-ED         |PERU         |3      |       1|     26|   193|
|24 months |MAL-ED         |NEPAL        |4+     |       0|    103|   224|
|24 months |MAL-ED         |NEPAL        |4+     |       1|     28|   224|
|24 months |MAL-ED         |NEPAL        |1      |       0|      6|   224|
|24 months |MAL-ED         |NEPAL        |1      |       1|      2|   224|
|24 months |MAL-ED         |NEPAL        |2      |       0|     48|   224|
|24 months |MAL-ED         |NEPAL        |2      |       1|     17|   224|
|24 months |MAL-ED         |NEPAL        |3      |       0|     17|   224|
|24 months |MAL-ED         |NEPAL        |3      |       1|      3|   224|
|24 months |MAL-ED         |BRAZIL       |4+     |       0|     70|   151|
|24 months |MAL-ED         |BRAZIL       |4+     |       1|      1|   151|
|24 months |MAL-ED         |BRAZIL       |1      |       0|      1|   151|
|24 months |MAL-ED         |BRAZIL       |1      |       1|      0|   151|
|24 months |MAL-ED         |BRAZIL       |2      |       0|     11|   151|
|24 months |MAL-ED         |BRAZIL       |2      |       1|      1|   151|
|24 months |MAL-ED         |BRAZIL       |3      |       0|     64|   151|
|24 months |MAL-ED         |BRAZIL       |3      |       1|      3|   151|
|24 months |MAL-ED         |TANZANIA     |4+     |       0|     32|   213|
|24 months |MAL-ED         |TANZANIA     |4+     |       1|     54|   213|
|24 months |MAL-ED         |TANZANIA     |1      |       0|      2|   213|
|24 months |MAL-ED         |TANZANIA     |1      |       1|      6|   213|
|24 months |MAL-ED         |TANZANIA     |2      |       0|     10|   213|
|24 months |MAL-ED         |TANZANIA     |2      |       1|     29|   213|
|24 months |MAL-ED         |TANZANIA     |3      |       0|     15|   213|
|24 months |MAL-ED         |TANZANIA     |3      |       1|     65|   213|
|24 months |MAL-ED         |SOUTH AFRICA |4+     |       0|    106|   215|
|24 months |MAL-ED         |SOUTH AFRICA |4+     |       1|     57|   215|
|24 months |MAL-ED         |SOUTH AFRICA |1      |       0|      4|   215|
|24 months |MAL-ED         |SOUTH AFRICA |1      |       1|      2|   215|
|24 months |MAL-ED         |SOUTH AFRICA |2      |       0|     11|   215|
|24 months |MAL-ED         |SOUTH AFRICA |2      |       1|      8|   215|
|24 months |MAL-ED         |SOUTH AFRICA |3      |       0|     19|   215|
|24 months |MAL-ED         |SOUTH AFRICA |3      |       1|      8|   215|
|24 months |NIH-Crypto     |BANGLADESH   |4+     |       0|     60|   514|
|24 months |NIH-Crypto     |BANGLADESH   |4+     |       1|     18|   514|
|24 months |NIH-Crypto     |BANGLADESH   |1      |       0|    162|   514|
|24 months |NIH-Crypto     |BANGLADESH   |1      |       1|     58|   514|
|24 months |NIH-Crypto     |BANGLADESH   |2      |       0|    106|   514|
|24 months |NIH-Crypto     |BANGLADESH   |2      |       1|     38|   514|
|24 months |NIH-Crypto     |BANGLADESH   |3      |       0|     54|   514|
|24 months |NIH-Crypto     |BANGLADESH   |3      |       1|     18|   514|
|24 months |PROVIDE        |BANGLADESH   |4+     |       0|     18|   578|
|24 months |PROVIDE        |BANGLADESH   |4+     |       1|      5|   578|
|24 months |PROVIDE        |BANGLADESH   |1      |       0|    272|   578|
|24 months |PROVIDE        |BANGLADESH   |1      |       1|    136|   578|
|24 months |PROVIDE        |BANGLADESH   |2      |       0|     61|   578|
|24 months |PROVIDE        |BANGLADESH   |2      |       1|     25|   578|
|24 months |PROVIDE        |BANGLADESH   |3      |       0|     37|   578|
|24 months |PROVIDE        |BANGLADESH   |3      |       1|     24|   578|
|24 months |Vellore Crypto |INDIA        |4+     |       0|      7|   407|
|24 months |Vellore Crypto |INDIA        |4+     |       1|      5|   407|
|24 months |Vellore Crypto |INDIA        |1      |       0|    119|   407|
|24 months |Vellore Crypto |INDIA        |1      |       1|     84|   407|
|24 months |Vellore Crypto |INDIA        |2      |       0|     90|   407|
|24 months |Vellore Crypto |INDIA        |2      |       1|     69|   407|
|24 months |Vellore Crypto |INDIA        |3      |       0|     20|   407|
|24 months |Vellore Crypto |INDIA        |3      |       1|     13|   407|


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
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


