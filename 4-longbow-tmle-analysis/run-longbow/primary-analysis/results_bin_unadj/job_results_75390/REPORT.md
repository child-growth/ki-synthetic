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

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |hhwealth_quart | sstunted| n_cell|     n|
|:---------|:--------------|:------------|:--------------|--------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ4       |        0|     29|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ4       |        1|      0|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ1       |        0|     25|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ1       |        1|      1|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ2       |        0|     14|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ2       |        1|      1|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ3       |        0|     20|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ3       |        1|      2|    92|
|Birth     |COHORTS        |GUATEMALA    |WealthQ4       |        0|    294|   820|
|Birth     |COHORTS        |GUATEMALA    |WealthQ4       |        1|      2|   820|
|Birth     |COHORTS        |GUATEMALA    |WealthQ1       |        0|    174|   820|
|Birth     |COHORTS        |GUATEMALA    |WealthQ1       |        1|      2|   820|
|Birth     |COHORTS        |GUATEMALA    |WealthQ2       |        0|    139|   820|
|Birth     |COHORTS        |GUATEMALA    |WealthQ2       |        1|      3|   820|
|Birth     |COHORTS        |GUATEMALA    |WealthQ3       |        0|    202|   820|
|Birth     |COHORTS        |GUATEMALA    |WealthQ3       |        1|      4|   820|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ4       |        0|    866|  3047|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ4       |        1|      7|  3047|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ1       |        0|    668|  3047|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ1       |        1|     12|  3047|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ2       |        0|    525|  3047|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ2       |        1|     14|  3047|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ3       |        0|    942|  3047|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ3       |        1|     13|  3047|
|Birth     |CONTENT        |PERU         |WealthQ4       |        0|      1|     2|
|Birth     |CONTENT        |PERU         |WealthQ4       |        1|      0|     2|
|Birth     |CONTENT        |PERU         |WealthQ1       |        0|      1|     2|
|Birth     |CONTENT        |PERU         |WealthQ1       |        1|      0|     2|
|Birth     |CONTENT        |PERU         |WealthQ2       |        0|      0|     2|
|Birth     |CONTENT        |PERU         |WealthQ2       |        1|      0|     2|
|Birth     |CONTENT        |PERU         |WealthQ3       |        0|      0|     2|
|Birth     |CONTENT        |PERU         |WealthQ3       |        1|      0|     2|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ4       |        0|    160|   696|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ4       |        1|     10|   696|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ1       |        0|    164|   696|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ1       |        1|      5|   696|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ2       |        0|    168|   696|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ2       |        1|      7|   696|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ3       |        0|    173|   696|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ3       |        1|      9|   696|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ4       |        0|   5233| 22436|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ4       |        1|    541| 22436|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ1       |        0|   4810| 22436|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ1       |        1|    681| 22436|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ2       |        0|   4889| 22436|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ2       |        1|    648| 22436|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ3       |        0|   5057| 22436|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ3       |        1|    577| 22436|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ4       |        0|    638|  2821|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ4       |        1|     43|  2821|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ1       |        0|    639|  2821|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ1       |        1|     77|  2821|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ2       |        0|    629|  2821|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ2       |        1|     53|  2821|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ3       |        0|    682|  2821|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ3       |        1|     60|  2821|
|Birth     |MAL-ED         |INDIA        |WealthQ4       |        0|      6|    46|
|Birth     |MAL-ED         |INDIA        |WealthQ4       |        1|      0|    46|
|Birth     |MAL-ED         |INDIA        |WealthQ1       |        0|     12|    46|
|Birth     |MAL-ED         |INDIA        |WealthQ1       |        1|      0|    46|
|Birth     |MAL-ED         |INDIA        |WealthQ2       |        0|     15|    46|
|Birth     |MAL-ED         |INDIA        |WealthQ2       |        1|      2|    46|
|Birth     |MAL-ED         |INDIA        |WealthQ3       |        0|     11|    46|
|Birth     |MAL-ED         |INDIA        |WealthQ3       |        1|      0|    46|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ4       |        0|     47|   212|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ4       |        1|      1|   212|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ1       |        0|     63|   212|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ1       |        1|      4|   212|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ2       |        0|     43|   212|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ2       |        1|      1|   212|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ3       |        0|     51|   212|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ3       |        1|      2|   212|
|Birth     |MAL-ED         |PERU         |WealthQ4       |        0|     54|   217|
|Birth     |MAL-ED         |PERU         |WealthQ4       |        1|      1|   217|
|Birth     |MAL-ED         |PERU         |WealthQ1       |        0|     37|   217|
|Birth     |MAL-ED         |PERU         |WealthQ1       |        1|      0|   217|
|Birth     |MAL-ED         |PERU         |WealthQ2       |        0|     57|   217|
|Birth     |MAL-ED         |PERU         |WealthQ2       |        1|      1|   217|
|Birth     |MAL-ED         |PERU         |WealthQ3       |        0|     66|   217|
|Birth     |MAL-ED         |PERU         |WealthQ3       |        1|      1|   217|
|Birth     |MAL-ED         |NEPAL        |WealthQ4       |        0|      9|    27|
|Birth     |MAL-ED         |NEPAL        |WealthQ4       |        1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |WealthQ1       |        0|      5|    27|
|Birth     |MAL-ED         |NEPAL        |WealthQ1       |        1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |WealthQ2       |        0|      9|    27|
|Birth     |MAL-ED         |NEPAL        |WealthQ2       |        1|      1|    27|
|Birth     |MAL-ED         |NEPAL        |WealthQ3       |        0|      3|    27|
|Birth     |MAL-ED         |NEPAL        |WealthQ3       |        1|      0|    27|
|Birth     |MAL-ED         |BRAZIL       |WealthQ4       |        0|     10|    55|
|Birth     |MAL-ED         |BRAZIL       |WealthQ4       |        1|      1|    55|
|Birth     |MAL-ED         |BRAZIL       |WealthQ1       |        0|     23|    55|
|Birth     |MAL-ED         |BRAZIL       |WealthQ1       |        1|      0|    55|
|Birth     |MAL-ED         |BRAZIL       |WealthQ2       |        0|     11|    55|
|Birth     |MAL-ED         |BRAZIL       |WealthQ2       |        1|      1|    55|
|Birth     |MAL-ED         |BRAZIL       |WealthQ3       |        0|      8|    55|
|Birth     |MAL-ED         |BRAZIL       |WealthQ3       |        1|      1|    55|
|Birth     |MAL-ED         |TANZANIA     |WealthQ4       |        0|     29|   117|
|Birth     |MAL-ED         |TANZANIA     |WealthQ4       |        1|      3|   117|
|Birth     |MAL-ED         |TANZANIA     |WealthQ1       |        0|     32|   117|
|Birth     |MAL-ED         |TANZANIA     |WealthQ1       |        1|      1|   117|
|Birth     |MAL-ED         |TANZANIA     |WealthQ2       |        0|     21|   117|
|Birth     |MAL-ED         |TANZANIA     |WealthQ2       |        1|      2|   117|
|Birth     |MAL-ED         |TANZANIA     |WealthQ3       |        0|     27|   117|
|Birth     |MAL-ED         |TANZANIA     |WealthQ3       |        1|      2|   117|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ4       |        0|     22|   107|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ4       |        1|      0|   107|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ1       |        0|     31|   107|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ1       |        1|      1|   107|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ2       |        0|     24|   107|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ2       |        1|      0|   107|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ3       |        0|     28|   107|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ3       |        1|      1|   107|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ4       |        0|    127|   539|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ4       |        1|      1|   539|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ1       |        0|    136|   539|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ1       |        1|      2|   539|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ2       |        0|    130|   539|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ2       |        1|      1|   539|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ3       |        0|    142|   539|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ3       |        1|      0|   539|
|Birth     |Vellore Crypto |INDIA        |WealthQ4       |        0|     84|   388|
|Birth     |Vellore Crypto |INDIA        |WealthQ4       |        1|      4|   388|
|Birth     |Vellore Crypto |INDIA        |WealthQ1       |        0|    117|   388|
|Birth     |Vellore Crypto |INDIA        |WealthQ1       |        1|      5|   388|
|Birth     |Vellore Crypto |INDIA        |WealthQ2       |        0|    104|   388|
|Birth     |Vellore Crypto |INDIA        |WealthQ2       |        1|      6|   388|
|Birth     |Vellore Crypto |INDIA        |WealthQ3       |        0|     67|   388|
|Birth     |Vellore Crypto |INDIA        |WealthQ3       |        1|      1|   388|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ4       |        0|    100|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ4       |        1|     12|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ1       |        0|     74|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ1       |        1|     14|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ2       |        0|     73|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ2       |        1|      7|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ3       |        0|     80|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ3       |        1|      9|   369|
|6 months  |COHORTS        |GUATEMALA    |WealthQ4       |        0|    315|   926|
|6 months  |COHORTS        |GUATEMALA    |WealthQ4       |        1|     27|   926|
|6 months  |COHORTS        |GUATEMALA    |WealthQ1       |        0|    166|   926|
|6 months  |COHORTS        |GUATEMALA    |WealthQ1       |        1|     30|   926|
|6 months  |COHORTS        |GUATEMALA    |WealthQ2       |        0|    150|   926|
|6 months  |COHORTS        |GUATEMALA    |WealthQ2       |        1|     28|   926|
|6 months  |COHORTS        |GUATEMALA    |WealthQ3       |        0|    177|   926|
|6 months  |COHORTS        |GUATEMALA    |WealthQ3       |        1|     33|   926|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ4       |        0|    745|  2706|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ4       |        1|     25|  2706|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ1       |        0|    536|  2706|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ1       |        1|     30|  2706|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ2       |        0|    460|  2706|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ2       |        1|     26|  2706|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ3       |        0|    833|  2706|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ3       |        1|     51|  2706|
|6 months  |CONTENT        |PERU         |WealthQ4       |        0|     46|   215|
|6 months  |CONTENT        |PERU         |WealthQ4       |        1|      1|   215|
|6 months  |CONTENT        |PERU         |WealthQ1       |        0|     66|   215|
|6 months  |CONTENT        |PERU         |WealthQ1       |        1|      0|   215|
|6 months  |CONTENT        |PERU         |WealthQ2       |        0|     50|   215|
|6 months  |CONTENT        |PERU         |WealthQ2       |        1|      0|   215|
|6 months  |CONTENT        |PERU         |WealthQ3       |        0|     52|   215|
|6 months  |CONTENT        |PERU         |WealthQ3       |        1|      0|   215|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ4       |        0|    138|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ4       |        1|      2|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ1       |        0|    128|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ1       |        1|      9|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ2       |        0|    143|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ2       |        1|      5|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ3       |        0|    134|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ3       |        1|      5|   564|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ4       |        0|   4539| 16802|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ4       |        1|    252| 16802|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ1       |        0|   3464| 16802|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ1       |        1|    252| 16802|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ2       |        0|   3768| 16802|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ2       |        1|    272| 16802|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ3       |        0|   4013| 16802|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ3       |        1|    242| 16802|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ4       |        0|   1173|  4827|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ4       |        1|     43|  4827|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ1       |        0|   1109|  4827|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ1       |        1|     89|  4827|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ2       |        0|   1087|  4827|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ2       |        1|     76|  4827|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ3       |        0|   1187|  4827|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ3       |        1|     63|  4827|
|6 months  |LCNI-5         |MALAWI       |WealthQ4       |        0|    184|   827|
|6 months  |LCNI-5         |MALAWI       |WealthQ4       |        1|     18|   827|
|6 months  |LCNI-5         |MALAWI       |WealthQ1       |        0|    204|   827|
|6 months  |LCNI-5         |MALAWI       |WealthQ1       |        1|     14|   827|
|6 months  |LCNI-5         |MALAWI       |WealthQ2       |        0|    184|   827|
|6 months  |LCNI-5         |MALAWI       |WealthQ2       |        1|     16|   827|
|6 months  |LCNI-5         |MALAWI       |WealthQ3       |        0|    185|   827|
|6 months  |LCNI-5         |MALAWI       |WealthQ3       |        1|     22|   827|
|6 months  |MAL-ED         |INDIA        |WealthQ4       |        0|     44|   227|
|6 months  |MAL-ED         |INDIA        |WealthQ4       |        1|      1|   227|
|6 months  |MAL-ED         |INDIA        |WealthQ1       |        0|     63|   227|
|6 months  |MAL-ED         |INDIA        |WealthQ1       |        1|      3|   227|
|6 months  |MAL-ED         |INDIA        |WealthQ2       |        0|     60|   227|
|6 months  |MAL-ED         |INDIA        |WealthQ2       |        1|      5|   227|
|6 months  |MAL-ED         |INDIA        |WealthQ3       |        0|     51|   227|
|6 months  |MAL-ED         |INDIA        |WealthQ3       |        1|      0|   227|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ4       |        0|     50|   224|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ4       |        1|      1|   224|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ1       |        0|     67|   224|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ1       |        1|      4|   224|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ2       |        0|     45|   224|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ2       |        1|      1|   224|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ3       |        0|     54|   224|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ3       |        1|      2|   224|
|6 months  |MAL-ED         |PERU         |WealthQ4       |        0|     63|   255|
|6 months  |MAL-ED         |PERU         |WealthQ4       |        1|      2|   255|
|6 months  |MAL-ED         |PERU         |WealthQ1       |        0|     47|   255|
|6 months  |MAL-ED         |PERU         |WealthQ1       |        1|      4|   255|
|6 months  |MAL-ED         |PERU         |WealthQ2       |        0|     62|   255|
|6 months  |MAL-ED         |PERU         |WealthQ2       |        1|      3|   255|
|6 months  |MAL-ED         |PERU         |WealthQ3       |        0|     74|   255|
|6 months  |MAL-ED         |PERU         |WealthQ3       |        1|      0|   255|
|6 months  |MAL-ED         |NEPAL        |WealthQ4       |        0|     72|   231|
|6 months  |MAL-ED         |NEPAL        |WealthQ4       |        1|      0|   231|
|6 months  |MAL-ED         |NEPAL        |WealthQ1       |        0|     58|   231|
|6 months  |MAL-ED         |NEPAL        |WealthQ1       |        1|      0|   231|
|6 months  |MAL-ED         |NEPAL        |WealthQ2       |        0|     59|   231|
|6 months  |MAL-ED         |NEPAL        |WealthQ2       |        1|      1|   231|
|6 months  |MAL-ED         |NEPAL        |WealthQ3       |        0|     41|   231|
|6 months  |MAL-ED         |NEPAL        |WealthQ3       |        1|      0|   231|
|6 months  |MAL-ED         |BRAZIL       |WealthQ4       |        0|     41|   187|
|6 months  |MAL-ED         |BRAZIL       |WealthQ4       |        1|      0|   187|
|6 months  |MAL-ED         |BRAZIL       |WealthQ1       |        0|     57|   187|
|6 months  |MAL-ED         |BRAZIL       |WealthQ1       |        1|      0|   187|
|6 months  |MAL-ED         |BRAZIL       |WealthQ2       |        0|     46|   187|
|6 months  |MAL-ED         |BRAZIL       |WealthQ2       |        1|      0|   187|
|6 months  |MAL-ED         |BRAZIL       |WealthQ3       |        0|     43|   187|
|6 months  |MAL-ED         |BRAZIL       |WealthQ3       |        1|      0|   187|
|6 months  |MAL-ED         |TANZANIA     |WealthQ4       |        0|     51|   241|
|6 months  |MAL-ED         |TANZANIA     |WealthQ4       |        1|      5|   241|
|6 months  |MAL-ED         |TANZANIA     |WealthQ1       |        0|     63|   241|
|6 months  |MAL-ED         |TANZANIA     |WealthQ1       |        1|      5|   241|
|6 months  |MAL-ED         |TANZANIA     |WealthQ2       |        0|     55|   241|
|6 months  |MAL-ED         |TANZANIA     |WealthQ2       |        1|      3|   241|
|6 months  |MAL-ED         |TANZANIA     |WealthQ3       |        0|     58|   241|
|6 months  |MAL-ED         |TANZANIA     |WealthQ3       |        1|      1|   241|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ4       |        0|     55|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ4       |        1|      2|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ1       |        0|     66|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ1       |        1|      0|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ2       |        0|     43|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ2       |        1|      1|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ3       |        0|     60|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ3       |        1|      3|   230|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ4       |        0|    132|   604|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ4       |        1|      4|   604|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ1       |        0|    143|   604|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ1       |        1|      3|   604|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ2       |        0|    157|   604|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ2       |        1|      4|   604|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ3       |        0|    158|   604|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ3       |        1|      3|   604|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ4       |        0|    522|  2027|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ4       |        1|      5|  2027|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ1       |        0|    571|  2027|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ1       |        1|      3|  2027|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ2       |        0|    395|  2027|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ2       |        1|      7|  2027|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ3       |        0|    520|  2027|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ3       |        1|      4|  2027|
|6 months  |Vellore Crypto |INDIA        |WealthQ4       |        0|     88|   407|
|6 months  |Vellore Crypto |INDIA        |WealthQ4       |        1|      6|   407|
|6 months  |Vellore Crypto |INDIA        |WealthQ1       |        0|    125|   407|
|6 months  |Vellore Crypto |INDIA        |WealthQ1       |        1|      7|   407|
|6 months  |Vellore Crypto |INDIA        |WealthQ2       |        0|    101|   407|
|6 months  |Vellore Crypto |INDIA        |WealthQ2       |        1|     10|   407|
|6 months  |Vellore Crypto |INDIA        |WealthQ3       |        0|     64|   407|
|6 months  |Vellore Crypto |INDIA        |WealthQ3       |        1|      6|   407|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ4       |        0|     81|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ4       |        1|     32|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ1       |        0|     55|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ1       |        1|     34|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ2       |        0|     50|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ2       |        1|     30|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ3       |        0|     60|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ3       |        1|     29|   371|
|24 months |COHORTS        |GUATEMALA    |WealthQ4       |        0|    230|  1038|
|24 months |COHORTS        |GUATEMALA    |WealthQ4       |        1|    170|  1038|
|24 months |COHORTS        |GUATEMALA    |WealthQ1       |        0|    101|  1038|
|24 months |COHORTS        |GUATEMALA    |WealthQ1       |        1|    124|  1038|
|24 months |COHORTS        |GUATEMALA    |WealthQ2       |        0|     93|  1038|
|24 months |COHORTS        |GUATEMALA    |WealthQ2       |        1|    101|  1038|
|24 months |COHORTS        |GUATEMALA    |WealthQ3       |        0|    111|  1038|
|24 months |COHORTS        |GUATEMALA    |WealthQ3       |        1|    108|  1038|
|24 months |COHORTS        |PHILIPPINES  |WealthQ4       |        0|    580|  2443|
|24 months |COHORTS        |PHILIPPINES  |WealthQ4       |        1|    129|  2443|
|24 months |COHORTS        |PHILIPPINES  |WealthQ1       |        0|    312|  2443|
|24 months |COHORTS        |PHILIPPINES  |WealthQ1       |        1|    176|  2443|
|24 months |COHORTS        |PHILIPPINES  |WealthQ2       |        0|    278|  2443|
|24 months |COHORTS        |PHILIPPINES  |WealthQ2       |        1|    146|  2443|
|24 months |COHORTS        |PHILIPPINES  |WealthQ3       |        0|    566|  2443|
|24 months |COHORTS        |PHILIPPINES  |WealthQ3       |        1|    256|  2443|
|24 months |CONTENT        |PERU         |WealthQ4       |        0|     40|   164|
|24 months |CONTENT        |PERU         |WealthQ4       |        1|      0|   164|
|24 months |CONTENT        |PERU         |WealthQ1       |        0|     48|   164|
|24 months |CONTENT        |PERU         |WealthQ1       |        1|      1|   164|
|24 months |CONTENT        |PERU         |WealthQ2       |        0|     35|   164|
|24 months |CONTENT        |PERU         |WealthQ2       |        1|      0|   164|
|24 months |CONTENT        |PERU         |WealthQ3       |        0|     40|   164|
|24 months |CONTENT        |PERU         |WealthQ3       |        1|      0|   164|
|24 months |GMS-Nepal      |NEPAL        |WealthQ4       |        0|    116|   488|
|24 months |GMS-Nepal      |NEPAL        |WealthQ4       |        1|     12|   488|
|24 months |GMS-Nepal      |NEPAL        |WealthQ1       |        0|    100|   488|
|24 months |GMS-Nepal      |NEPAL        |WealthQ1       |        1|     16|   488|
|24 months |GMS-Nepal      |NEPAL        |WealthQ2       |        0|    112|   488|
|24 months |GMS-Nepal      |NEPAL        |WealthQ2       |        1|     16|   488|
|24 months |GMS-Nepal      |NEPAL        |WealthQ3       |        0|    107|   488|
|24 months |GMS-Nepal      |NEPAL        |WealthQ3       |        1|      9|   488|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ4       |        0|   1987|  8627|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ4       |        1|    303|  8627|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ1       |        0|   1685|  8627|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ1       |        1|    363|  8627|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ2       |        0|   1800|  8627|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ2       |        1|    375|  8627|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ3       |        0|   1809|  8627|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ3       |        1|    305|  8627|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ4       |        0|   1148|  4748|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ4       |        1|     81|  4748|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ1       |        0|   1007|  4748|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ1       |        1|    145|  4748|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ2       |        0|   1011|  4748|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ2       |        1|    123|  4748|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ3       |        0|   1130|  4748|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ3       |        1|    103|  4748|
|24 months |LCNI-5         |MALAWI       |WealthQ4       |        0|    121|   574|
|24 months |LCNI-5         |MALAWI       |WealthQ4       |        1|     20|   574|
|24 months |LCNI-5         |MALAWI       |WealthQ1       |        0|    133|   574|
|24 months |LCNI-5         |MALAWI       |WealthQ1       |        1|     12|   574|
|24 months |LCNI-5         |MALAWI       |WealthQ2       |        0|    118|   574|
|24 months |LCNI-5         |MALAWI       |WealthQ2       |        1|     20|   574|
|24 months |LCNI-5         |MALAWI       |WealthQ3       |        0|    132|   574|
|24 months |LCNI-5         |MALAWI       |WealthQ3       |        1|     18|   574|
|24 months |MAL-ED         |INDIA        |WealthQ4       |        0|     34|   218|
|24 months |MAL-ED         |INDIA        |WealthQ4       |        1|      9|   218|
|24 months |MAL-ED         |INDIA        |WealthQ1       |        0|     54|   218|
|24 months |MAL-ED         |INDIA        |WealthQ1       |        1|      7|   218|
|24 months |MAL-ED         |INDIA        |WealthQ2       |        0|     55|   218|
|24 months |MAL-ED         |INDIA        |WealthQ2       |        1|      9|   218|
|24 months |MAL-ED         |INDIA        |WealthQ3       |        0|     45|   218|
|24 months |MAL-ED         |INDIA        |WealthQ3       |        1|      5|   218|
|24 months |MAL-ED         |BANGLADESH   |WealthQ4       |        0|     38|   195|
|24 months |MAL-ED         |BANGLADESH   |WealthQ4       |        1|      5|   195|
|24 months |MAL-ED         |BANGLADESH   |WealthQ1       |        0|     51|   195|
|24 months |MAL-ED         |BANGLADESH   |WealthQ1       |        1|     13|   195|
|24 months |MAL-ED         |BANGLADESH   |WealthQ2       |        0|     37|   195|
|24 months |MAL-ED         |BANGLADESH   |WealthQ2       |        1|      3|   195|
|24 months |MAL-ED         |BANGLADESH   |WealthQ3       |        0|     45|   195|
|24 months |MAL-ED         |BANGLADESH   |WealthQ3       |        1|      3|   195|
|24 months |MAL-ED         |PERU         |WealthQ4       |        0|     43|   185|
|24 months |MAL-ED         |PERU         |WealthQ4       |        1|      2|   185|
|24 months |MAL-ED         |PERU         |WealthQ1       |        0|     34|   185|
|24 months |MAL-ED         |PERU         |WealthQ1       |        1|      2|   185|
|24 months |MAL-ED         |PERU         |WealthQ2       |        0|     48|   185|
|24 months |MAL-ED         |PERU         |WealthQ2       |        1|      4|   185|
|24 months |MAL-ED         |PERU         |WealthQ3       |        0|     47|   185|
|24 months |MAL-ED         |PERU         |WealthQ3       |        1|      5|   185|
|24 months |MAL-ED         |NEPAL        |WealthQ4       |        0|     70|   224|
|24 months |MAL-ED         |NEPAL        |WealthQ4       |        1|      2|   224|
|24 months |MAL-ED         |NEPAL        |WealthQ1       |        0|     55|   224|
|24 months |MAL-ED         |NEPAL        |WealthQ1       |        1|      2|   224|
|24 months |MAL-ED         |NEPAL        |WealthQ2       |        0|     56|   224|
|24 months |MAL-ED         |NEPAL        |WealthQ2       |        1|      2|   224|
|24 months |MAL-ED         |NEPAL        |WealthQ3       |        0|     36|   224|
|24 months |MAL-ED         |NEPAL        |WealthQ3       |        1|      1|   224|
|24 months |MAL-ED         |BRAZIL       |WealthQ4       |        0|     33|   148|
|24 months |MAL-ED         |BRAZIL       |WealthQ4       |        1|      0|   148|
|24 months |MAL-ED         |BRAZIL       |WealthQ1       |        0|     42|   148|
|24 months |MAL-ED         |BRAZIL       |WealthQ1       |        1|      1|   148|
|24 months |MAL-ED         |BRAZIL       |WealthQ2       |        0|     37|   148|
|24 months |MAL-ED         |BRAZIL       |WealthQ2       |        1|      0|   148|
|24 months |MAL-ED         |BRAZIL       |WealthQ3       |        0|     35|   148|
|24 months |MAL-ED         |BRAZIL       |WealthQ3       |        1|      0|   148|
|24 months |MAL-ED         |TANZANIA     |WealthQ4       |        0|     33|   209|
|24 months |MAL-ED         |TANZANIA     |WealthQ4       |        1|     20|   209|
|24 months |MAL-ED         |TANZANIA     |WealthQ1       |        0|     39|   209|
|24 months |MAL-ED         |TANZANIA     |WealthQ1       |        1|     16|   209|
|24 months |MAL-ED         |TANZANIA     |WealthQ2       |        0|     33|   209|
|24 months |MAL-ED         |TANZANIA     |WealthQ2       |        1|     18|   209|
|24 months |MAL-ED         |TANZANIA     |WealthQ3       |        0|     34|   209|
|24 months |MAL-ED         |TANZANIA     |WealthQ3       |        1|     16|   209|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ4       |        0|     49|   215|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ4       |        1|      5|   215|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ1       |        0|     57|   215|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ1       |        1|      4|   215|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ2       |        0|     40|   215|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ2       |        1|      3|   215|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ3       |        0|     45|   215|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ3       |        1|     12|   215|
|24 months |PROVIDE        |BANGLADESH   |WealthQ4       |        0|    108|   578|
|24 months |PROVIDE        |BANGLADESH   |WealthQ4       |        1|     16|   578|
|24 months |PROVIDE        |BANGLADESH   |WealthQ1       |        0|    127|   578|
|24 months |PROVIDE        |BANGLADESH   |WealthQ1       |        1|     14|   578|
|24 months |PROVIDE        |BANGLADESH   |WealthQ2       |        0|    147|   578|
|24 months |PROVIDE        |BANGLADESH   |WealthQ2       |        1|      8|   578|
|24 months |PROVIDE        |BANGLADESH   |WealthQ3       |        0|    144|   578|
|24 months |PROVIDE        |BANGLADESH   |WealthQ3       |        1|     14|   578|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ4       |        0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ4       |        1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ1       |        0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ1       |        1|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ2       |        0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ2       |        1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ3       |        0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ3       |        1|      0|     6|
|24 months |Vellore Crypto |INDIA        |WealthQ4       |        0|     87|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ4       |        1|      7|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ1       |        0|    118|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ1       |        1|     14|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ2       |        0|     98|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ2       |        1|     14|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ3       |        0|     65|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ3       |        1|      6|   409|


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
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
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
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
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


