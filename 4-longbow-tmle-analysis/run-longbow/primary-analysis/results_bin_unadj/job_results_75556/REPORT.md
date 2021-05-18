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

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |hhwealth_quart | swasted| n_cell|     n|
|:---------|:--------------|:------------|:--------------|-------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ4       |       0|     28|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ4       |       1|      1|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ1       |       0|     25|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ1       |       1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ2       |       0|     14|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ2       |       1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ3       |       0|     18|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ3       |       1|      0|    86|
|Birth     |COHORTS        |GUATEMALA    |WealthQ4       |       0|    238|   729|
|Birth     |COHORTS        |GUATEMALA    |WealthQ4       |       1|     23|   729|
|Birth     |COHORTS        |GUATEMALA    |WealthQ1       |       0|    142|   729|
|Birth     |COHORTS        |GUATEMALA    |WealthQ1       |       1|     15|   729|
|Birth     |COHORTS        |GUATEMALA    |WealthQ2       |       0|    116|   729|
|Birth     |COHORTS        |GUATEMALA    |WealthQ2       |       1|      7|   729|
|Birth     |COHORTS        |GUATEMALA    |WealthQ3       |       0|    175|   729|
|Birth     |COHORTS        |GUATEMALA    |WealthQ3       |       1|     13|   729|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ4       |       0|    797|  2896|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ4       |       1|     47|  2896|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ1       |       0|    613|  2896|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ1       |       1|     26|  2896|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ2       |       0|    494|  2896|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ2       |       1|     15|  2896|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ3       |       0|    871|  2896|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ3       |       1|     33|  2896|
|Birth     |CONTENT        |PERU         |WealthQ4       |       0|      1|     2|
|Birth     |CONTENT        |PERU         |WealthQ4       |       1|      0|     2|
|Birth     |CONTENT        |PERU         |WealthQ1       |       0|      1|     2|
|Birth     |CONTENT        |PERU         |WealthQ1       |       1|      0|     2|
|Birth     |CONTENT        |PERU         |WealthQ2       |       0|      0|     2|
|Birth     |CONTENT        |PERU         |WealthQ2       |       1|      0|     2|
|Birth     |CONTENT        |PERU         |WealthQ3       |       0|      0|     2|
|Birth     |CONTENT        |PERU         |WealthQ3       |       1|      0|     2|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ4       |       0|    149|   641|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ4       |       1|      6|   641|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ1       |       0|    151|   641|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ1       |       1|      7|   641|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ2       |       0|    155|   641|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ2       |       1|      6|   641|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ3       |       0|    159|   641|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ3       |       1|      8|   641|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ4       |       0|   4649| 17996|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ4       |       1|     88| 17996|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ1       |       0|   4217| 17996|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ1       |       1|     89| 17996|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ2       |       0|   4291| 17996|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ2       |       1|     87| 17996|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ3       |       0|   4492| 17996|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ3       |       1|     83| 17996|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ4       |       0|    586|  2394|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ4       |       1|      6|  2394|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ1       |       0|    586|  2394|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ1       |       1|      7|  2394|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ2       |       0|    574|  2394|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ2       |       1|      8|  2394|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ3       |       0|    617|  2394|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ3       |       1|     10|  2394|
|Birth     |MAL-ED         |INDIA        |WealthQ4       |       0|      6|    44|
|Birth     |MAL-ED         |INDIA        |WealthQ4       |       1|      0|    44|
|Birth     |MAL-ED         |INDIA        |WealthQ1       |       0|     12|    44|
|Birth     |MAL-ED         |INDIA        |WealthQ1       |       1|      0|    44|
|Birth     |MAL-ED         |INDIA        |WealthQ2       |       0|     15|    44|
|Birth     |MAL-ED         |INDIA        |WealthQ2       |       1|      0|    44|
|Birth     |MAL-ED         |INDIA        |WealthQ3       |       0|     11|    44|
|Birth     |MAL-ED         |INDIA        |WealthQ3       |       1|      0|    44|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ4       |       0|     44|   198|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ4       |       1|      3|   198|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ1       |       0|     57|   198|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ1       |       1|      3|   198|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ2       |       0|     41|   198|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ2       |       1|      2|   198|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ3       |       0|     48|   198|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ3       |       1|      0|   198|
|Birth     |MAL-ED         |PERU         |WealthQ4       |       0|     54|   212|
|Birth     |MAL-ED         |PERU         |WealthQ4       |       1|      0|   212|
|Birth     |MAL-ED         |PERU         |WealthQ1       |       0|     36|   212|
|Birth     |MAL-ED         |PERU         |WealthQ1       |       1|      0|   212|
|Birth     |MAL-ED         |PERU         |WealthQ2       |       0|     56|   212|
|Birth     |MAL-ED         |PERU         |WealthQ2       |       1|      0|   212|
|Birth     |MAL-ED         |PERU         |WealthQ3       |       0|     66|   212|
|Birth     |MAL-ED         |PERU         |WealthQ3       |       1|      0|   212|
|Birth     |MAL-ED         |NEPAL        |WealthQ4       |       0|      9|    26|
|Birth     |MAL-ED         |NEPAL        |WealthQ4       |       1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |WealthQ1       |       0|      5|    26|
|Birth     |MAL-ED         |NEPAL        |WealthQ1       |       1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |WealthQ2       |       0|      8|    26|
|Birth     |MAL-ED         |NEPAL        |WealthQ2       |       1|      1|    26|
|Birth     |MAL-ED         |NEPAL        |WealthQ3       |       0|      3|    26|
|Birth     |MAL-ED         |NEPAL        |WealthQ3       |       1|      0|    26|
|Birth     |MAL-ED         |BRAZIL       |WealthQ4       |       0|     10|    52|
|Birth     |MAL-ED         |BRAZIL       |WealthQ4       |       1|      0|    52|
|Birth     |MAL-ED         |BRAZIL       |WealthQ1       |       0|     23|    52|
|Birth     |MAL-ED         |BRAZIL       |WealthQ1       |       1|      0|    52|
|Birth     |MAL-ED         |BRAZIL       |WealthQ2       |       0|     11|    52|
|Birth     |MAL-ED         |BRAZIL       |WealthQ2       |       1|      0|    52|
|Birth     |MAL-ED         |BRAZIL       |WealthQ3       |       0|      8|    52|
|Birth     |MAL-ED         |BRAZIL       |WealthQ3       |       1|      0|    52|
|Birth     |MAL-ED         |TANZANIA     |WealthQ4       |       0|     29|   109|
|Birth     |MAL-ED         |TANZANIA     |WealthQ4       |       1|      0|   109|
|Birth     |MAL-ED         |TANZANIA     |WealthQ1       |       0|     32|   109|
|Birth     |MAL-ED         |TANZANIA     |WealthQ1       |       1|      0|   109|
|Birth     |MAL-ED         |TANZANIA     |WealthQ2       |       0|     21|   109|
|Birth     |MAL-ED         |TANZANIA     |WealthQ2       |       1|      0|   109|
|Birth     |MAL-ED         |TANZANIA     |WealthQ3       |       0|     27|   109|
|Birth     |MAL-ED         |TANZANIA     |WealthQ3       |       1|      0|   109|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ4       |       0|     22|   104|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ4       |       1|      0|   104|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ1       |       0|     31|   104|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ1       |       1|      0|   104|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ2       |       0|     23|   104|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ2       |       1|      0|   104|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ3       |       0|     28|   104|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ3       |       1|      0|   104|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ4       |       0|    123|   532|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ4       |       1|      3|   532|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ1       |       0|    131|   532|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ1       |       1|      3|   532|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ2       |       0|    127|   532|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ2       |       1|      3|   532|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ3       |       0|    138|   532|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ3       |       1|      4|   532|
|Birth     |Vellore Crypto |INDIA        |WealthQ4       |       0|     66|   343|
|Birth     |Vellore Crypto |INDIA        |WealthQ4       |       1|     12|   343|
|Birth     |Vellore Crypto |INDIA        |WealthQ1       |       0|     85|   343|
|Birth     |Vellore Crypto |INDIA        |WealthQ1       |       1|     22|   343|
|Birth     |Vellore Crypto |INDIA        |WealthQ2       |       0|     85|   343|
|Birth     |Vellore Crypto |INDIA        |WealthQ2       |       1|     12|   343|
|Birth     |Vellore Crypto |INDIA        |WealthQ3       |       0|     53|   343|
|Birth     |Vellore Crypto |INDIA        |WealthQ3       |       1|      8|   343|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ4       |       0|    106|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ4       |       1|      5|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ1       |       0|     86|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ1       |       1|      2|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ2       |       0|     77|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ2       |       1|      3|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ3       |       0|     87|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ3       |       1|      2|   368|
|6 months  |COHORTS        |GUATEMALA    |WealthQ4       |       0|    341|   927|
|6 months  |COHORTS        |GUATEMALA    |WealthQ4       |       1|      1|   927|
|6 months  |COHORTS        |GUATEMALA    |WealthQ1       |       0|    197|   927|
|6 months  |COHORTS        |GUATEMALA    |WealthQ1       |       1|      0|   927|
|6 months  |COHORTS        |GUATEMALA    |WealthQ2       |       0|    175|   927|
|6 months  |COHORTS        |GUATEMALA    |WealthQ2       |       1|      2|   927|
|6 months  |COHORTS        |GUATEMALA    |WealthQ3       |       0|    208|   927|
|6 months  |COHORTS        |GUATEMALA    |WealthQ3       |       1|      3|   927|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ4       |       0|    762|  2704|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ4       |       1|      9|  2704|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ1       |       0|    555|  2704|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ1       |       1|     10|  2704|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ2       |       0|    480|  2704|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ2       |       1|      6|  2704|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ3       |       0|    872|  2704|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ3       |       1|     10|  2704|
|6 months  |CONTENT        |PERU         |WealthQ4       |       0|     47|   215|
|6 months  |CONTENT        |PERU         |WealthQ4       |       1|      0|   215|
|6 months  |CONTENT        |PERU         |WealthQ1       |       0|     66|   215|
|6 months  |CONTENT        |PERU         |WealthQ1       |       1|      0|   215|
|6 months  |CONTENT        |PERU         |WealthQ2       |       0|     50|   215|
|6 months  |CONTENT        |PERU         |WealthQ2       |       1|      0|   215|
|6 months  |CONTENT        |PERU         |WealthQ3       |       0|     52|   215|
|6 months  |CONTENT        |PERU         |WealthQ3       |       1|      0|   215|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ4       |       0|    138|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ4       |       1|      2|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ1       |       0|    135|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ1       |       1|      2|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ2       |       0|    147|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ2       |       1|      1|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ3       |       0|    137|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ3       |       1|      2|   564|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ4       |       0|   4724| 16775|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ4       |       1|     56| 16775|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ1       |       0|   3674| 16775|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ1       |       1|     45| 16775|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ2       |       0|   3974| 16775|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ2       |       1|     63| 16775|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ3       |       0|   4173| 16775|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ3       |       1|     66| 16775|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ4       |       0|   1211|  4829|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ4       |       1|      5|  4829|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ1       |       0|   1188|  4829|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ1       |       1|     12|  4829|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ2       |       0|   1151|  4829|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ2       |       1|     12|  4829|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ3       |       0|   1246|  4829|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ3       |       1|      4|  4829|
|6 months  |LCNI-5         |MALAWI       |WealthQ4       |       0|    202|   827|
|6 months  |LCNI-5         |MALAWI       |WealthQ4       |       1|      0|   827|
|6 months  |LCNI-5         |MALAWI       |WealthQ1       |       0|    218|   827|
|6 months  |LCNI-5         |MALAWI       |WealthQ1       |       1|      0|   827|
|6 months  |LCNI-5         |MALAWI       |WealthQ2       |       0|    200|   827|
|6 months  |LCNI-5         |MALAWI       |WealthQ2       |       1|      0|   827|
|6 months  |LCNI-5         |MALAWI       |WealthQ3       |       0|    207|   827|
|6 months  |LCNI-5         |MALAWI       |WealthQ3       |       1|      0|   827|
|6 months  |MAL-ED         |INDIA        |WealthQ4       |       0|     45|   227|
|6 months  |MAL-ED         |INDIA        |WealthQ4       |       1|      0|   227|
|6 months  |MAL-ED         |INDIA        |WealthQ1       |       0|     65|   227|
|6 months  |MAL-ED         |INDIA        |WealthQ1       |       1|      1|   227|
|6 months  |MAL-ED         |INDIA        |WealthQ2       |       0|     62|   227|
|6 months  |MAL-ED         |INDIA        |WealthQ2       |       1|      3|   227|
|6 months  |MAL-ED         |INDIA        |WealthQ3       |       0|     50|   227|
|6 months  |MAL-ED         |INDIA        |WealthQ3       |       1|      1|   227|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ4       |       0|     51|   224|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ4       |       1|      0|   224|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ1       |       0|     71|   224|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ1       |       1|      0|   224|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ2       |       0|     45|   224|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ2       |       1|      1|   224|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ3       |       0|     56|   224|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ3       |       1|      0|   224|
|6 months  |MAL-ED         |PERU         |WealthQ4       |       0|     65|   255|
|6 months  |MAL-ED         |PERU         |WealthQ4       |       1|      0|   255|
|6 months  |MAL-ED         |PERU         |WealthQ1       |       0|     51|   255|
|6 months  |MAL-ED         |PERU         |WealthQ1       |       1|      0|   255|
|6 months  |MAL-ED         |PERU         |WealthQ2       |       0|     65|   255|
|6 months  |MAL-ED         |PERU         |WealthQ2       |       1|      0|   255|
|6 months  |MAL-ED         |PERU         |WealthQ3       |       0|     74|   255|
|6 months  |MAL-ED         |PERU         |WealthQ3       |       1|      0|   255|
|6 months  |MAL-ED         |NEPAL        |WealthQ4       |       0|     72|   231|
|6 months  |MAL-ED         |NEPAL        |WealthQ4       |       1|      0|   231|
|6 months  |MAL-ED         |NEPAL        |WealthQ1       |       0|     58|   231|
|6 months  |MAL-ED         |NEPAL        |WealthQ1       |       1|      0|   231|
|6 months  |MAL-ED         |NEPAL        |WealthQ2       |       0|     60|   231|
|6 months  |MAL-ED         |NEPAL        |WealthQ2       |       1|      0|   231|
|6 months  |MAL-ED         |NEPAL        |WealthQ3       |       0|     41|   231|
|6 months  |MAL-ED         |NEPAL        |WealthQ3       |       1|      0|   231|
|6 months  |MAL-ED         |BRAZIL       |WealthQ4       |       0|     41|   187|
|6 months  |MAL-ED         |BRAZIL       |WealthQ4       |       1|      0|   187|
|6 months  |MAL-ED         |BRAZIL       |WealthQ1       |       0|     57|   187|
|6 months  |MAL-ED         |BRAZIL       |WealthQ1       |       1|      0|   187|
|6 months  |MAL-ED         |BRAZIL       |WealthQ2       |       0|     46|   187|
|6 months  |MAL-ED         |BRAZIL       |WealthQ2       |       1|      0|   187|
|6 months  |MAL-ED         |BRAZIL       |WealthQ3       |       0|     43|   187|
|6 months  |MAL-ED         |BRAZIL       |WealthQ3       |       1|      0|   187|
|6 months  |MAL-ED         |TANZANIA     |WealthQ4       |       0|     56|   241|
|6 months  |MAL-ED         |TANZANIA     |WealthQ4       |       1|      0|   241|
|6 months  |MAL-ED         |TANZANIA     |WealthQ1       |       0|     68|   241|
|6 months  |MAL-ED         |TANZANIA     |WealthQ1       |       1|      0|   241|
|6 months  |MAL-ED         |TANZANIA     |WealthQ2       |       0|     58|   241|
|6 months  |MAL-ED         |TANZANIA     |WealthQ2       |       1|      0|   241|
|6 months  |MAL-ED         |TANZANIA     |WealthQ3       |       0|     59|   241|
|6 months  |MAL-ED         |TANZANIA     |WealthQ3       |       1|      0|   241|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ4       |       0|     56|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ4       |       1|      1|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ1       |       0|     64|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ1       |       1|      2|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ2       |       0|     44|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ2       |       1|      0|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ3       |       0|     63|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ3       |       1|      0|   230|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ4       |       0|    136|   603|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ4       |       1|      0|   603|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ1       |       0|    144|   603|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ1       |       1|      2|   603|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ2       |       0|    159|   603|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ2       |       1|      1|   603|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ3       |       0|    159|   603|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ3       |       1|      2|   603|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ4       |       0|    524|  2026|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ4       |       1|      3|  2026|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ1       |       0|    571|  2026|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ1       |       1|      3|  2026|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ2       |       0|    399|  2026|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ2       |       1|      3|  2026|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ3       |       0|    520|  2026|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ3       |       1|      3|  2026|
|6 months  |Vellore Crypto |INDIA        |WealthQ4       |       0|     88|   408|
|6 months  |Vellore Crypto |INDIA        |WealthQ4       |       1|      6|   408|
|6 months  |Vellore Crypto |INDIA        |WealthQ1       |       0|    122|   408|
|6 months  |Vellore Crypto |INDIA        |WealthQ1       |       1|      8|   408|
|6 months  |Vellore Crypto |INDIA        |WealthQ2       |       0|    108|   408|
|6 months  |Vellore Crypto |INDIA        |WealthQ2       |       1|      5|   408|
|6 months  |Vellore Crypto |INDIA        |WealthQ3       |       0|     68|   408|
|6 months  |Vellore Crypto |INDIA        |WealthQ3       |       1|      3|   408|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ4       |       0|    111|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ4       |       1|      2|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ1       |       0|     89|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ1       |       1|      0|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ2       |       0|     80|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ2       |       1|      0|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ3       |       0|     89|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ3       |       1|      1|   372|
|24 months |COHORTS        |GUATEMALA    |WealthQ4       |       0|    400|  1049|
|24 months |COHORTS        |GUATEMALA    |WealthQ4       |       1|      2|  1049|
|24 months |COHORTS        |GUATEMALA    |WealthQ1       |       0|    228|  1049|
|24 months |COHORTS        |GUATEMALA    |WealthQ1       |       1|      0|  1049|
|24 months |COHORTS        |GUATEMALA    |WealthQ2       |       0|    197|  1049|
|24 months |COHORTS        |GUATEMALA    |WealthQ2       |       1|      0|  1049|
|24 months |COHORTS        |GUATEMALA    |WealthQ3       |       0|    220|  1049|
|24 months |COHORTS        |GUATEMALA    |WealthQ3       |       1|      2|  1049|
|24 months |COHORTS        |PHILIPPINES  |WealthQ4       |       0|    702|  2447|
|24 months |COHORTS        |PHILIPPINES  |WealthQ4       |       1|      4|  2447|
|24 months |COHORTS        |PHILIPPINES  |WealthQ1       |       0|    487|  2447|
|24 months |COHORTS        |PHILIPPINES  |WealthQ1       |       1|      4|  2447|
|24 months |COHORTS        |PHILIPPINES  |WealthQ2       |       0|    424|  2447|
|24 months |COHORTS        |PHILIPPINES  |WealthQ2       |       1|      1|  2447|
|24 months |COHORTS        |PHILIPPINES  |WealthQ3       |       0|    809|  2447|
|24 months |COHORTS        |PHILIPPINES  |WealthQ3       |       1|     16|  2447|
|24 months |CONTENT        |PERU         |WealthQ4       |       0|     40|   164|
|24 months |CONTENT        |PERU         |WealthQ4       |       1|      0|   164|
|24 months |CONTENT        |PERU         |WealthQ1       |       0|     49|   164|
|24 months |CONTENT        |PERU         |WealthQ1       |       1|      0|   164|
|24 months |CONTENT        |PERU         |WealthQ2       |       0|     35|   164|
|24 months |CONTENT        |PERU         |WealthQ2       |       1|      0|   164|
|24 months |CONTENT        |PERU         |WealthQ3       |       0|     40|   164|
|24 months |CONTENT        |PERU         |WealthQ3       |       1|      0|   164|
|24 months |GMS-Nepal      |NEPAL        |WealthQ4       |       0|    122|   487|
|24 months |GMS-Nepal      |NEPAL        |WealthQ4       |       1|      5|   487|
|24 months |GMS-Nepal      |NEPAL        |WealthQ1       |       0|    112|   487|
|24 months |GMS-Nepal      |NEPAL        |WealthQ1       |       1|      4|   487|
|24 months |GMS-Nepal      |NEPAL        |WealthQ2       |       0|    122|   487|
|24 months |GMS-Nepal      |NEPAL        |WealthQ2       |       1|      6|   487|
|24 months |GMS-Nepal      |NEPAL        |WealthQ3       |       0|    116|   487|
|24 months |GMS-Nepal      |NEPAL        |WealthQ3       |       1|      0|   487|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ4       |       0|   2199|  8598|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ4       |       1|     84|  8598|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ1       |       0|   1961|  8598|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ1       |       1|     80|  8598|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ2       |       0|   2081|  8598|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ2       |       1|     88|  8598|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ3       |       0|   2022|  8598|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ3       |       1|     83|  8598|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ4       |       0|   1203|  4731|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ4       |       1|     22|  4731|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ1       |       0|   1117|  4731|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ1       |       1|     33|  4731|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ2       |       0|   1093|  4731|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ2       |       1|     37|  4731|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ3       |       0|   1189|  4731|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ3       |       1|     37|  4731|
|24 months |LCNI-5         |MALAWI       |WealthQ4       |       0|    136|   558|
|24 months |LCNI-5         |MALAWI       |WealthQ4       |       1|      0|   558|
|24 months |LCNI-5         |MALAWI       |WealthQ1       |       0|    143|   558|
|24 months |LCNI-5         |MALAWI       |WealthQ1       |       1|      0|   558|
|24 months |LCNI-5         |MALAWI       |WealthQ2       |       0|    134|   558|
|24 months |LCNI-5         |MALAWI       |WealthQ2       |       1|      0|   558|
|24 months |LCNI-5         |MALAWI       |WealthQ3       |       0|    144|   558|
|24 months |LCNI-5         |MALAWI       |WealthQ3       |       1|      1|   558|
|24 months |MAL-ED         |INDIA        |WealthQ4       |       0|     43|   218|
|24 months |MAL-ED         |INDIA        |WealthQ4       |       1|      0|   218|
|24 months |MAL-ED         |INDIA        |WealthQ1       |       0|     61|   218|
|24 months |MAL-ED         |INDIA        |WealthQ1       |       1|      0|   218|
|24 months |MAL-ED         |INDIA        |WealthQ2       |       0|     64|   218|
|24 months |MAL-ED         |INDIA        |WealthQ2       |       1|      0|   218|
|24 months |MAL-ED         |INDIA        |WealthQ3       |       0|     49|   218|
|24 months |MAL-ED         |INDIA        |WealthQ3       |       1|      1|   218|
|24 months |MAL-ED         |BANGLADESH   |WealthQ4       |       0|     43|   195|
|24 months |MAL-ED         |BANGLADESH   |WealthQ4       |       1|      0|   195|
|24 months |MAL-ED         |BANGLADESH   |WealthQ1       |       0|     64|   195|
|24 months |MAL-ED         |BANGLADESH   |WealthQ1       |       1|      0|   195|
|24 months |MAL-ED         |BANGLADESH   |WealthQ2       |       0|     40|   195|
|24 months |MAL-ED         |BANGLADESH   |WealthQ2       |       1|      0|   195|
|24 months |MAL-ED         |BANGLADESH   |WealthQ3       |       0|     48|   195|
|24 months |MAL-ED         |BANGLADESH   |WealthQ3       |       1|      0|   195|
|24 months |MAL-ED         |PERU         |WealthQ4       |       0|     45|   185|
|24 months |MAL-ED         |PERU         |WealthQ4       |       1|      0|   185|
|24 months |MAL-ED         |PERU         |WealthQ1       |       0|     36|   185|
|24 months |MAL-ED         |PERU         |WealthQ1       |       1|      0|   185|
|24 months |MAL-ED         |PERU         |WealthQ2       |       0|     52|   185|
|24 months |MAL-ED         |PERU         |WealthQ2       |       1|      0|   185|
|24 months |MAL-ED         |PERU         |WealthQ3       |       0|     51|   185|
|24 months |MAL-ED         |PERU         |WealthQ3       |       1|      1|   185|
|24 months |MAL-ED         |NEPAL        |WealthQ4       |       0|     72|   224|
|24 months |MAL-ED         |NEPAL        |WealthQ4       |       1|      0|   224|
|24 months |MAL-ED         |NEPAL        |WealthQ1       |       0|     57|   224|
|24 months |MAL-ED         |NEPAL        |WealthQ1       |       1|      0|   224|
|24 months |MAL-ED         |NEPAL        |WealthQ2       |       0|     58|   224|
|24 months |MAL-ED         |NEPAL        |WealthQ2       |       1|      0|   224|
|24 months |MAL-ED         |NEPAL        |WealthQ3       |       0|     37|   224|
|24 months |MAL-ED         |NEPAL        |WealthQ3       |       1|      0|   224|
|24 months |MAL-ED         |BRAZIL       |WealthQ4       |       0|     32|   148|
|24 months |MAL-ED         |BRAZIL       |WealthQ4       |       1|      1|   148|
|24 months |MAL-ED         |BRAZIL       |WealthQ1       |       0|     43|   148|
|24 months |MAL-ED         |BRAZIL       |WealthQ1       |       1|      0|   148|
|24 months |MAL-ED         |BRAZIL       |WealthQ2       |       0|     37|   148|
|24 months |MAL-ED         |BRAZIL       |WealthQ2       |       1|      0|   148|
|24 months |MAL-ED         |BRAZIL       |WealthQ3       |       0|     35|   148|
|24 months |MAL-ED         |BRAZIL       |WealthQ3       |       1|      0|   148|
|24 months |MAL-ED         |TANZANIA     |WealthQ4       |       0|     53|   209|
|24 months |MAL-ED         |TANZANIA     |WealthQ4       |       1|      0|   209|
|24 months |MAL-ED         |TANZANIA     |WealthQ1       |       0|     55|   209|
|24 months |MAL-ED         |TANZANIA     |WealthQ1       |       1|      0|   209|
|24 months |MAL-ED         |TANZANIA     |WealthQ2       |       0|     51|   209|
|24 months |MAL-ED         |TANZANIA     |WealthQ2       |       1|      0|   209|
|24 months |MAL-ED         |TANZANIA     |WealthQ3       |       0|     50|   209|
|24 months |MAL-ED         |TANZANIA     |WealthQ3       |       1|      0|   209|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ4       |       0|     54|   215|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ4       |       1|      0|   215|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ1       |       0|     61|   215|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ1       |       1|      0|   215|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ2       |       0|     43|   215|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ2       |       1|      0|   215|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ3       |       0|     57|   215|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ3       |       1|      0|   215|
|24 months |PROVIDE        |BANGLADESH   |WealthQ4       |       0|    120|   579|
|24 months |PROVIDE        |BANGLADESH   |WealthQ4       |       1|      4|   579|
|24 months |PROVIDE        |BANGLADESH   |WealthQ1       |       0|    138|   579|
|24 months |PROVIDE        |BANGLADESH   |WealthQ1       |       1|      3|   579|
|24 months |PROVIDE        |BANGLADESH   |WealthQ2       |       0|    156|   579|
|24 months |PROVIDE        |BANGLADESH   |WealthQ2       |       1|      0|   579|
|24 months |PROVIDE        |BANGLADESH   |WealthQ3       |       0|    156|   579|
|24 months |PROVIDE        |BANGLADESH   |WealthQ3       |       1|      2|   579|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ4       |       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ4       |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ1       |       0|      3|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ1       |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ2       |       0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ2       |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ3       |       0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ3       |       1|      0|     6|
|24 months |Vellore Crypto |INDIA        |WealthQ4       |       0|     92|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ4       |       1|      2|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ1       |       0|    131|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ1       |       1|      1|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ2       |       0|    110|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ2       |       1|      2|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ3       |       0|     71|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ3       |       1|      0|   409|


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
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
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


