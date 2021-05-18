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

**Outcome Variable:** wasted

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

|agecat    |studyid        |country      |nrooms | wasted| n_cell|     n|
|:---------|:--------------|:------------|:------|------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |4+     |      0|      1|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |4+     |      1|      1|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |1      |      0|     37|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |1      |      1|      9|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |2      |      0|     22|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |2      |      1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |3      |      0|     15|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |3      |      1|      1|    86|
|Birth     |COHORTS        |INDIA        |4+     |      0|     82|  4937|
|Birth     |COHORTS        |INDIA        |4+     |      1|     16|  4937|
|Birth     |COHORTS        |INDIA        |1      |      0|   2095|  4937|
|Birth     |COHORTS        |INDIA        |1      |      1|    499|  4937|
|Birth     |COHORTS        |INDIA        |2      |      0|   1761|  4937|
|Birth     |COHORTS        |INDIA        |2      |      1|    342|  4937|
|Birth     |COHORTS        |INDIA        |3      |      0|    119|  4937|
|Birth     |COHORTS        |INDIA        |3      |      1|     23|  4937|
|Birth     |CONTENT        |PERU         |4+     |      0|      1|     2|
|Birth     |CONTENT        |PERU         |4+     |      1|      0|     2|
|Birth     |CONTENT        |PERU         |1      |      0|      0|     2|
|Birth     |CONTENT        |PERU         |1      |      1|      0|     2|
|Birth     |CONTENT        |PERU         |2      |      0|      1|     2|
|Birth     |CONTENT        |PERU         |2      |      1|      0|     2|
|Birth     |CONTENT        |PERU         |3      |      0|      0|     2|
|Birth     |CONTENT        |PERU         |3      |      1|      0|     2|
|Birth     |GMS-Nepal      |NEPAL        |4+     |      0|    235|   641|
|Birth     |GMS-Nepal      |NEPAL        |4+     |      1|     59|   641|
|Birth     |GMS-Nepal      |NEPAL        |1      |      0|     36|   641|
|Birth     |GMS-Nepal      |NEPAL        |1      |      1|      6|   641|
|Birth     |GMS-Nepal      |NEPAL        |2      |      0|    109|   641|
|Birth     |GMS-Nepal      |NEPAL        |2      |      1|     26|   641|
|Birth     |GMS-Nepal      |NEPAL        |3      |      0|    129|   641|
|Birth     |GMS-Nepal      |NEPAL        |3      |      1|     41|   641|
|Birth     |JiVitA-3       |BANGLADESH   |4+     |      0|    612| 17997|
|Birth     |JiVitA-3       |BANGLADESH   |4+     |      1|     82| 17997|
|Birth     |JiVitA-3       |BANGLADESH   |1      |      0|   9459| 17997|
|Birth     |JiVitA-3       |BANGLADESH   |1      |      1|   1194| 17997|
|Birth     |JiVitA-3       |BANGLADESH   |2      |      0|   4367| 17997|
|Birth     |JiVitA-3       |BANGLADESH   |2      |      1|    521| 17997|
|Birth     |JiVitA-3       |BANGLADESH   |3      |      0|   1587| 17997|
|Birth     |JiVitA-3       |BANGLADESH   |3      |      1|    175| 17997|
|Birth     |JiVitA-4       |BANGLADESH   |4+     |      0|    108|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |4+     |      1|     14|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |1      |      0|   1284|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |1      |      1|    140|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |2      |      0|    531|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |2      |      1|     66|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |3      |      0|    233|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |3      |      1|     19|  2395|
|Birth     |MAL-ED         |INDIA        |4+     |      0|      3|    45|
|Birth     |MAL-ED         |INDIA        |4+     |      1|      0|    45|
|Birth     |MAL-ED         |INDIA        |1      |      0|     15|    45|
|Birth     |MAL-ED         |INDIA        |1      |      1|      1|    45|
|Birth     |MAL-ED         |INDIA        |2      |      0|     12|    45|
|Birth     |MAL-ED         |INDIA        |2      |      1|      3|    45|
|Birth     |MAL-ED         |INDIA        |3      |      0|     10|    45|
|Birth     |MAL-ED         |INDIA        |3      |      1|      1|    45|
|Birth     |MAL-ED         |BANGLADESH   |4+     |      0|      8|   206|
|Birth     |MAL-ED         |BANGLADESH   |4+     |      1|      1|   206|
|Birth     |MAL-ED         |BANGLADESH   |1      |      0|     96|   206|
|Birth     |MAL-ED         |BANGLADESH   |1      |      1|     12|   206|
|Birth     |MAL-ED         |BANGLADESH   |2      |      0|     44|   206|
|Birth     |MAL-ED         |BANGLADESH   |2      |      1|     16|   206|
|Birth     |MAL-ED         |BANGLADESH   |3      |      0|     25|   206|
|Birth     |MAL-ED         |BANGLADESH   |3      |      1|      4|   206|
|Birth     |MAL-ED         |PERU         |4+     |      0|     91|   222|
|Birth     |MAL-ED         |PERU         |4+     |      1|      5|   222|
|Birth     |MAL-ED         |PERU         |1      |      0|     10|   222|
|Birth     |MAL-ED         |PERU         |1      |      1|      0|   222|
|Birth     |MAL-ED         |PERU         |2      |      0|     30|   222|
|Birth     |MAL-ED         |PERU         |2      |      1|      0|   222|
|Birth     |MAL-ED         |PERU         |3      |      0|     86|   222|
|Birth     |MAL-ED         |PERU         |3      |      1|      0|   222|
|Birth     |MAL-ED         |NEPAL        |4+     |      0|     15|    25|
|Birth     |MAL-ED         |NEPAL        |4+     |      1|      0|    25|
|Birth     |MAL-ED         |NEPAL        |1      |      0|      1|    25|
|Birth     |MAL-ED         |NEPAL        |1      |      1|      0|    25|
|Birth     |MAL-ED         |NEPAL        |2      |      0|      6|    25|
|Birth     |MAL-ED         |NEPAL        |2      |      1|      1|    25|
|Birth     |MAL-ED         |NEPAL        |3      |      0|      1|    25|
|Birth     |MAL-ED         |NEPAL        |3      |      1|      1|    25|
|Birth     |MAL-ED         |BRAZIL       |4+     |      0|     21|    54|
|Birth     |MAL-ED         |BRAZIL       |4+     |      1|      1|    54|
|Birth     |MAL-ED         |BRAZIL       |1      |      0|      1|    54|
|Birth     |MAL-ED         |BRAZIL       |1      |      1|      0|    54|
|Birth     |MAL-ED         |BRAZIL       |2      |      0|      7|    54|
|Birth     |MAL-ED         |BRAZIL       |2      |      1|      0|    54|
|Birth     |MAL-ED         |BRAZIL       |3      |      0|     23|    54|
|Birth     |MAL-ED         |BRAZIL       |3      |      1|      1|    54|
|Birth     |MAL-ED         |TANZANIA     |4+     |      0|     46|   112|
|Birth     |MAL-ED         |TANZANIA     |4+     |      1|      0|   112|
|Birth     |MAL-ED         |TANZANIA     |1      |      0|      3|   112|
|Birth     |MAL-ED         |TANZANIA     |1      |      1|      0|   112|
|Birth     |MAL-ED         |TANZANIA     |2      |      0|     20|   112|
|Birth     |MAL-ED         |TANZANIA     |2      |      1|      0|   112|
|Birth     |MAL-ED         |TANZANIA     |3      |      0|     42|   112|
|Birth     |MAL-ED         |TANZANIA     |3      |      1|      1|   112|
|Birth     |MAL-ED         |SOUTH AFRICA |4+     |      0|     70|   104|
|Birth     |MAL-ED         |SOUTH AFRICA |4+     |      1|      9|   104|
|Birth     |MAL-ED         |SOUTH AFRICA |1      |      0|      3|   104|
|Birth     |MAL-ED         |SOUTH AFRICA |1      |      1|      0|   104|
|Birth     |MAL-ED         |SOUTH AFRICA |2      |      0|     12|   104|
|Birth     |MAL-ED         |SOUTH AFRICA |2      |      1|      0|   104|
|Birth     |MAL-ED         |SOUTH AFRICA |3      |      0|     10|   104|
|Birth     |MAL-ED         |SOUTH AFRICA |3      |      1|      0|   104|
|Birth     |NIH-Crypto     |BANGLADESH   |4+     |      0|     86|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |4+     |      1|     24|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |1      |      0|    241|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |1      |      1|     66|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |2      |      0|    138|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |2      |      1|     52|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |3      |      0|     70|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |3      |      1|     30|   707|
|Birth     |PROVIDE        |BANGLADESH   |4+     |      0|     16|   532|
|Birth     |PROVIDE        |BANGLADESH   |4+     |      1|      5|   532|
|Birth     |PROVIDE        |BANGLADESH   |1      |      0|    291|   532|
|Birth     |PROVIDE        |BANGLADESH   |1      |      1|     82|   532|
|Birth     |PROVIDE        |BANGLADESH   |2      |      0|     62|   532|
|Birth     |PROVIDE        |BANGLADESH   |2      |      1|     26|   532|
|Birth     |PROVIDE        |BANGLADESH   |3      |      0|     46|   532|
|Birth     |PROVIDE        |BANGLADESH   |3      |      1|      4|   532|
|Birth     |Vellore Crypto |INDIA        |4+     |      0|      7|   341|
|Birth     |Vellore Crypto |INDIA        |4+     |      1|      3|   341|
|Birth     |Vellore Crypto |INDIA        |1      |      0|    122|   341|
|Birth     |Vellore Crypto |INDIA        |1      |      1|     50|   341|
|Birth     |Vellore Crypto |INDIA        |2      |      0|     99|   341|
|Birth     |Vellore Crypto |INDIA        |2      |      1|     32|   341|
|Birth     |Vellore Crypto |INDIA        |3      |      0|     22|   341|
|Birth     |Vellore Crypto |INDIA        |3      |      1|      6|   341|
|6 months  |CMC-V-BCS-2002 |INDIA        |4+     |      0|     11|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |4+     |      1|      3|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |1      |      0|    166|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |1      |      1|     27|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |2      |      0|     89|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |2      |      1|      9|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |3      |      0|     56|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |3      |      1|      7|   368|
|6 months  |COHORTS        |INDIA        |4+     |      0|    103|  5480|
|6 months  |COHORTS        |INDIA        |4+     |      1|     11|  5480|
|6 months  |COHORTS        |INDIA        |1      |      0|   2502|  5480|
|6 months  |COHORTS        |INDIA        |1      |      1|    369|  5480|
|6 months  |COHORTS        |INDIA        |2      |      0|   2038|  5480|
|6 months  |COHORTS        |INDIA        |2      |      1|    291|  5480|
|6 months  |COHORTS        |INDIA        |3      |      0|    148|  5480|
|6 months  |COHORTS        |INDIA        |3      |      1|     18|  5480|
|6 months  |CONTENT        |PERU         |4+     |      0|     66|   215|
|6 months  |CONTENT        |PERU         |4+     |      1|      0|   215|
|6 months  |CONTENT        |PERU         |1      |      0|     44|   215|
|6 months  |CONTENT        |PERU         |1      |      1|      0|   215|
|6 months  |CONTENT        |PERU         |2      |      0|     60|   215|
|6 months  |CONTENT        |PERU         |2      |      1|      0|   215|
|6 months  |CONTENT        |PERU         |3      |      0|     45|   215|
|6 months  |CONTENT        |PERU         |3      |      1|      0|   215|
|6 months  |GMS-Nepal      |NEPAL        |4+     |      0|    236|   564|
|6 months  |GMS-Nepal      |NEPAL        |4+     |      1|     21|   564|
|6 months  |GMS-Nepal      |NEPAL        |1      |      0|     37|   564|
|6 months  |GMS-Nepal      |NEPAL        |1      |      1|      3|   564|
|6 months  |GMS-Nepal      |NEPAL        |2      |      0|    107|   564|
|6 months  |GMS-Nepal      |NEPAL        |2      |      1|     13|   564|
|6 months  |GMS-Nepal      |NEPAL        |3      |      0|    133|   564|
|6 months  |GMS-Nepal      |NEPAL        |3      |      1|     14|   564|
|6 months  |JiVitA-3       |BANGLADESH   |4+     |      0|    669| 16776|
|6 months  |JiVitA-3       |BANGLADESH   |4+     |      1|     51| 16776|
|6 months  |JiVitA-3       |BANGLADESH   |1      |      0|   8892| 16776|
|6 months  |JiVitA-3       |BANGLADESH   |1      |      1|    859| 16776|
|6 months  |JiVitA-3       |BANGLADESH   |2      |      0|   4266| 16776|
|6 months  |JiVitA-3       |BANGLADESH   |2      |      1|    381| 16776|
|6 months  |JiVitA-3       |BANGLADESH   |3      |      0|   1528| 16776|
|6 months  |JiVitA-3       |BANGLADESH   |3      |      1|    130| 16776|
|6 months  |JiVitA-4       |BANGLADESH   |4+     |      0|    234|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |4+     |      1|     13|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |1      |      0|   2682|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |1      |      1|    166|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |2      |      0|   1149|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |2      |      1|     78|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |3      |      0|    491|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |3      |      1|     17|  4830|
|6 months  |MAL-ED         |INDIA        |4+     |      0|     13|   231|
|6 months  |MAL-ED         |INDIA        |4+     |      1|      1|   231|
|6 months  |MAL-ED         |INDIA        |1      |      0|     61|   231|
|6 months  |MAL-ED         |INDIA        |1      |      1|      8|   231|
|6 months  |MAL-ED         |INDIA        |2      |      0|     86|   231|
|6 months  |MAL-ED         |INDIA        |2      |      1|      5|   231|
|6 months  |MAL-ED         |INDIA        |3      |      0|     53|   231|
|6 months  |MAL-ED         |INDIA        |3      |      1|      4|   231|
|6 months  |MAL-ED         |BANGLADESH   |4+     |      0|      8|   232|
|6 months  |MAL-ED         |BANGLADESH   |4+     |      1|      0|   232|
|6 months  |MAL-ED         |BANGLADESH   |1      |      0|    124|   232|
|6 months  |MAL-ED         |BANGLADESH   |1      |      1|      2|   232|
|6 months  |MAL-ED         |BANGLADESH   |2      |      0|     67|   232|
|6 months  |MAL-ED         |BANGLADESH   |2      |      1|      3|   232|
|6 months  |MAL-ED         |BANGLADESH   |3      |      0|     26|   232|
|6 months  |MAL-ED         |BANGLADESH   |3      |      1|      2|   232|
|6 months  |MAL-ED         |PERU         |4+     |      0|    107|   265|
|6 months  |MAL-ED         |PERU         |4+     |      1|      0|   265|
|6 months  |MAL-ED         |PERU         |1      |      0|     15|   265|
|6 months  |MAL-ED         |PERU         |1      |      1|      0|   265|
|6 months  |MAL-ED         |PERU         |2      |      0|     44|   265|
|6 months  |MAL-ED         |PERU         |2      |      1|      0|   265|
|6 months  |MAL-ED         |PERU         |3      |      0|     99|   265|
|6 months  |MAL-ED         |PERU         |3      |      1|      0|   265|
|6 months  |MAL-ED         |NEPAL        |4+     |      0|    135|   232|
|6 months  |MAL-ED         |NEPAL        |4+     |      1|      2|   232|
|6 months  |MAL-ED         |NEPAL        |1      |      0|      8|   232|
|6 months  |MAL-ED         |NEPAL        |1      |      1|      0|   232|
|6 months  |MAL-ED         |NEPAL        |2      |      0|     65|   232|
|6 months  |MAL-ED         |NEPAL        |2      |      1|      2|   232|
|6 months  |MAL-ED         |NEPAL        |3      |      0|     20|   232|
|6 months  |MAL-ED         |NEPAL        |3      |      1|      0|   232|
|6 months  |MAL-ED         |BRAZIL       |4+     |      0|     92|   190|
|6 months  |MAL-ED         |BRAZIL       |4+     |      1|      0|   190|
|6 months  |MAL-ED         |BRAZIL       |1      |      0|      3|   190|
|6 months  |MAL-ED         |BRAZIL       |1      |      1|      0|   190|
|6 months  |MAL-ED         |BRAZIL       |2      |      0|     16|   190|
|6 months  |MAL-ED         |BRAZIL       |2      |      1|      0|   190|
|6 months  |MAL-ED         |BRAZIL       |3      |      0|     78|   190|
|6 months  |MAL-ED         |BRAZIL       |3      |      1|      1|   190|
|6 months  |MAL-ED         |TANZANIA     |4+     |      0|    104|   246|
|6 months  |MAL-ED         |TANZANIA     |4+     |      1|      0|   246|
|6 months  |MAL-ED         |TANZANIA     |1      |      0|      9|   246|
|6 months  |MAL-ED         |TANZANIA     |1      |      1|      0|   246|
|6 months  |MAL-ED         |TANZANIA     |2      |      0|     40|   246|
|6 months  |MAL-ED         |TANZANIA     |2      |      1|      1|   246|
|6 months  |MAL-ED         |TANZANIA     |3      |      0|     92|   246|
|6 months  |MAL-ED         |TANZANIA     |3      |      1|      0|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |4+     |      0|    170|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |4+     |      1|      5|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |1      |      0|      7|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |1      |      1|      0|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |2      |      0|     19|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |2      |      1|      2|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |3      |      0|     27|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |3      |      1|      0|   230|
|6 months  |NIH-Crypto     |BANGLADESH   |4+     |      0|    104|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |4+     |      1|      3|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |1      |      0|    302|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |1      |      1|     12|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |2      |      0|    193|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |2      |      1|      4|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |3      |      0|     95|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |3      |      1|      2|   715|
|6 months  |PROVIDE        |BANGLADESH   |4+     |      0|     23|   603|
|6 months  |PROVIDE        |BANGLADESH   |4+     |      1|      1|   603|
|6 months  |PROVIDE        |BANGLADESH   |1      |      0|    407|   603|
|6 months  |PROVIDE        |BANGLADESH   |1      |      1|     18|   603|
|6 months  |PROVIDE        |BANGLADESH   |2      |      0|     91|   603|
|6 months  |PROVIDE        |BANGLADESH   |2      |      1|      4|   603|
|6 months  |PROVIDE        |BANGLADESH   |3      |      0|     57|   603|
|6 months  |PROVIDE        |BANGLADESH   |3      |      1|      2|   603|
|6 months  |Vellore Crypto |INDIA        |4+     |      0|      9|   406|
|6 months  |Vellore Crypto |INDIA        |4+     |      1|      3|   406|
|6 months  |Vellore Crypto |INDIA        |1      |      0|    177|   406|
|6 months  |Vellore Crypto |INDIA        |1      |      1|     25|   406|
|6 months  |Vellore Crypto |INDIA        |2      |      0|    137|   406|
|6 months  |Vellore Crypto |INDIA        |2      |      1|     22|   406|
|6 months  |Vellore Crypto |INDIA        |3      |      0|     29|   406|
|6 months  |Vellore Crypto |INDIA        |3      |      1|      4|   406|
|24 months |CMC-V-BCS-2002 |INDIA        |4+     |      0|     13|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |4+     |      1|      1|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |1      |      0|    185|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |1      |      1|     12|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |2      |      0|     90|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |2      |      1|      7|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |3      |      0|     61|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |3      |      1|      3|   372|
|24 months |COHORTS        |INDIA        |4+     |      0|     72|  4217|
|24 months |COHORTS        |INDIA        |4+     |      1|      8|  4217|
|24 months |COHORTS        |INDIA        |1      |      0|   1989|  4217|
|24 months |COHORTS        |INDIA        |1      |      1|    222|  4217|
|24 months |COHORTS        |INDIA        |2      |      0|   1647|  4217|
|24 months |COHORTS        |INDIA        |2      |      1|    152|  4217|
|24 months |COHORTS        |INDIA        |3      |      0|    114|  4217|
|24 months |COHORTS        |INDIA        |3      |      1|     13|  4217|
|24 months |CONTENT        |PERU         |4+     |      0|     54|   164|
|24 months |CONTENT        |PERU         |4+     |      1|      0|   164|
|24 months |CONTENT        |PERU         |1      |      0|     34|   164|
|24 months |CONTENT        |PERU         |1      |      1|      0|   164|
|24 months |CONTENT        |PERU         |2      |      0|     40|   164|
|24 months |CONTENT        |PERU         |2      |      1|      0|   164|
|24 months |CONTENT        |PERU         |3      |      0|     35|   164|
|24 months |CONTENT        |PERU         |3      |      1|      1|   164|
|24 months |GMS-Nepal      |NEPAL        |4+     |      0|    178|   487|
|24 months |GMS-Nepal      |NEPAL        |4+     |      1|     37|   487|
|24 months |GMS-Nepal      |NEPAL        |1      |      0|     30|   487|
|24 months |GMS-Nepal      |NEPAL        |1      |      1|      8|   487|
|24 months |GMS-Nepal      |NEPAL        |2      |      0|     84|   487|
|24 months |GMS-Nepal      |NEPAL        |2      |      1|     17|   487|
|24 months |GMS-Nepal      |NEPAL        |3      |      0|    104|   487|
|24 months |GMS-Nepal      |NEPAL        |3      |      1|     29|   487|
|24 months |JiVitA-3       |BANGLADESH   |4+     |      0|    280|  8598|
|24 months |JiVitA-3       |BANGLADESH   |4+     |      1|     74|  8598|
|24 months |JiVitA-3       |BANGLADESH   |1      |      0|   3938|  8598|
|24 months |JiVitA-3       |BANGLADESH   |1      |      1|   1157|  8598|
|24 months |JiVitA-3       |BANGLADESH   |2      |      0|   1856|  8598|
|24 months |JiVitA-3       |BANGLADESH   |2      |      1|    475|  8598|
|24 months |JiVitA-3       |BANGLADESH   |3      |      0|    646|  8598|
|24 months |JiVitA-3       |BANGLADESH   |3      |      1|    172|  8598|
|24 months |JiVitA-4       |BANGLADESH   |4+     |      0|    205|  4732|
|24 months |JiVitA-4       |BANGLADESH   |4+     |      1|     44|  4732|
|24 months |JiVitA-4       |BANGLADESH   |1      |      0|   2232|  4732|
|24 months |JiVitA-4       |BANGLADESH   |1      |      1|    542|  4732|
|24 months |JiVitA-4       |BANGLADESH   |2      |      0|    962|  4732|
|24 months |JiVitA-4       |BANGLADESH   |2      |      1|    247|  4732|
|24 months |JiVitA-4       |BANGLADESH   |3      |      0|    413|  4732|
|24 months |JiVitA-4       |BANGLADESH   |3      |      1|     87|  4732|
|24 months |MAL-ED         |INDIA        |4+     |      0|     12|   222|
|24 months |MAL-ED         |INDIA        |4+     |      1|      1|   222|
|24 months |MAL-ED         |INDIA        |1      |      0|     55|   222|
|24 months |MAL-ED         |INDIA        |1      |      1|      9|   222|
|24 months |MAL-ED         |INDIA        |2      |      0|     82|   222|
|24 months |MAL-ED         |INDIA        |2      |      1|      9|   222|
|24 months |MAL-ED         |INDIA        |3      |      0|     46|   222|
|24 months |MAL-ED         |INDIA        |3      |      1|      8|   222|
|24 months |MAL-ED         |BANGLADESH   |4+     |      0|      6|   203|
|24 months |MAL-ED         |BANGLADESH   |4+     |      1|      1|   203|
|24 months |MAL-ED         |BANGLADESH   |1      |      0|    101|   203|
|24 months |MAL-ED         |BANGLADESH   |1      |      1|     10|   203|
|24 months |MAL-ED         |BANGLADESH   |2      |      0|     56|   203|
|24 months |MAL-ED         |BANGLADESH   |2      |      1|      6|   203|
|24 months |MAL-ED         |BANGLADESH   |3      |      0|     20|   203|
|24 months |MAL-ED         |BANGLADESH   |3      |      1|      3|   203|
|24 months |MAL-ED         |PERU         |4+     |      0|     79|   193|
|24 months |MAL-ED         |PERU         |4+     |      1|      3|   193|
|24 months |MAL-ED         |PERU         |1      |      0|     12|   193|
|24 months |MAL-ED         |PERU         |1      |      1|      0|   193|
|24 months |MAL-ED         |PERU         |2      |      0|     26|   193|
|24 months |MAL-ED         |PERU         |2      |      1|      1|   193|
|24 months |MAL-ED         |PERU         |3      |      0|     72|   193|
|24 months |MAL-ED         |PERU         |3      |      1|      0|   193|
|24 months |MAL-ED         |NEPAL        |4+     |      0|    126|   224|
|24 months |MAL-ED         |NEPAL        |4+     |      1|      5|   224|
|24 months |MAL-ED         |NEPAL        |1      |      0|      8|   224|
|24 months |MAL-ED         |NEPAL        |1      |      1|      0|   224|
|24 months |MAL-ED         |NEPAL        |2      |      0|     65|   224|
|24 months |MAL-ED         |NEPAL        |2      |      1|      0|   224|
|24 months |MAL-ED         |NEPAL        |3      |      0|     20|   224|
|24 months |MAL-ED         |NEPAL        |3      |      1|      0|   224|
|24 months |MAL-ED         |BRAZIL       |4+     |      0|     71|   151|
|24 months |MAL-ED         |BRAZIL       |4+     |      1|      0|   151|
|24 months |MAL-ED         |BRAZIL       |1      |      0|      1|   151|
|24 months |MAL-ED         |BRAZIL       |1      |      1|      0|   151|
|24 months |MAL-ED         |BRAZIL       |2      |      0|     12|   151|
|24 months |MAL-ED         |BRAZIL       |2      |      1|      0|   151|
|24 months |MAL-ED         |BRAZIL       |3      |      0|     65|   151|
|24 months |MAL-ED         |BRAZIL       |3      |      1|      2|   151|
|24 months |MAL-ED         |TANZANIA     |4+     |      0|     84|   213|
|24 months |MAL-ED         |TANZANIA     |4+     |      1|      2|   213|
|24 months |MAL-ED         |TANZANIA     |1      |      0|      8|   213|
|24 months |MAL-ED         |TANZANIA     |1      |      1|      0|   213|
|24 months |MAL-ED         |TANZANIA     |2      |      0|     39|   213|
|24 months |MAL-ED         |TANZANIA     |2      |      1|      0|   213|
|24 months |MAL-ED         |TANZANIA     |3      |      0|     78|   213|
|24 months |MAL-ED         |TANZANIA     |3      |      1|      2|   213|
|24 months |MAL-ED         |SOUTH AFRICA |4+     |      0|    162|   215|
|24 months |MAL-ED         |SOUTH AFRICA |4+     |      1|      1|   215|
|24 months |MAL-ED         |SOUTH AFRICA |1      |      0|      6|   215|
|24 months |MAL-ED         |SOUTH AFRICA |1      |      1|      0|   215|
|24 months |MAL-ED         |SOUTH AFRICA |2      |      0|     19|   215|
|24 months |MAL-ED         |SOUTH AFRICA |2      |      1|      0|   215|
|24 months |MAL-ED         |SOUTH AFRICA |3      |      0|     27|   215|
|24 months |MAL-ED         |SOUTH AFRICA |3      |      1|      0|   215|
|24 months |NIH-Crypto     |BANGLADESH   |4+     |      0|     72|   514|
|24 months |NIH-Crypto     |BANGLADESH   |4+     |      1|      6|   514|
|24 months |NIH-Crypto     |BANGLADESH   |1      |      0|    201|   514|
|24 months |NIH-Crypto     |BANGLADESH   |1      |      1|     19|   514|
|24 months |NIH-Crypto     |BANGLADESH   |2      |      0|    132|   514|
|24 months |NIH-Crypto     |BANGLADESH   |2      |      1|     12|   514|
|24 months |NIH-Crypto     |BANGLADESH   |3      |      0|     64|   514|
|24 months |NIH-Crypto     |BANGLADESH   |3      |      1|      8|   514|
|24 months |PROVIDE        |BANGLADESH   |4+     |      0|     21|   579|
|24 months |PROVIDE        |BANGLADESH   |4+     |      1|      2|   579|
|24 months |PROVIDE        |BANGLADESH   |1      |      0|    367|   579|
|24 months |PROVIDE        |BANGLADESH   |1      |      1|     42|   579|
|24 months |PROVIDE        |BANGLADESH   |2      |      0|     75|   579|
|24 months |PROVIDE        |BANGLADESH   |2      |      1|     11|   579|
|24 months |PROVIDE        |BANGLADESH   |3      |      0|     54|   579|
|24 months |PROVIDE        |BANGLADESH   |3      |      1|      7|   579|
|24 months |Vellore Crypto |INDIA        |4+     |      0|     12|   407|
|24 months |Vellore Crypto |INDIA        |4+     |      1|      0|   407|
|24 months |Vellore Crypto |INDIA        |1      |      0|    185|   407|
|24 months |Vellore Crypto |INDIA        |1      |      1|     18|   407|
|24 months |Vellore Crypto |INDIA        |2      |      0|    149|   407|
|24 months |Vellore Crypto |INDIA        |2      |      1|     10|   407|
|24 months |Vellore Crypto |INDIA        |3      |      0|     30|   407|
|24 months |Vellore Crypto |INDIA        |3      |      1|      3|   407|


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
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


