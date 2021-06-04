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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

* sex
* arm
* W_mage
* meducyrs
* feducyrs
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nchldlt5
* W_parity
* delta_arm
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nchldlt5
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |hhwealth_quart | n_cell|     n|
|:---------|:--------------|:------------|:--------------|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ4       |     19|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ1       |     27|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ2       |     21|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ3       |     19|    86|
|Birth     |COHORTS        |GUATEMALA    |WealthQ4       |    347|   719|
|Birth     |COHORTS        |GUATEMALA    |WealthQ1       |    111|   719|
|Birth     |COHORTS        |GUATEMALA    |WealthQ2       |    144|   719|
|Birth     |COHORTS        |GUATEMALA    |WealthQ3       |    117|   719|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ4       |    872|  2887|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ1       |    612|  2887|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ2       |    537|  2887|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ3       |    866|  2887|
|Birth     |CONTENT        |PERU         |WealthQ4       |      0|     2|
|Birth     |CONTENT        |PERU         |WealthQ1       |      2|     2|
|Birth     |CONTENT        |PERU         |WealthQ2       |      0|     2|
|Birth     |CONTENT        |PERU         |WealthQ3       |      0|     2|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ4       |    146|   641|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ1       |    182|   641|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ2       |    150|   641|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ3       |    163|   641|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ4       |   4628| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ1       |   4406| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ2       |   4477| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ3       |   4503| 18014|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ4       |    617|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ1       |    609|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ2       |    601|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ3       |    568|  2395|
|Birth     |MAL-ED         |INDIA        |WealthQ4       |      9|    43|
|Birth     |MAL-ED         |INDIA        |WealthQ1       |     11|    43|
|Birth     |MAL-ED         |INDIA        |WealthQ2       |     12|    43|
|Birth     |MAL-ED         |INDIA        |WealthQ3       |     11|    43|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ4       |     50|   194|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ1       |     53|   194|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ2       |     57|   194|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ3       |     34|   194|
|Birth     |MAL-ED         |PERU         |WealthQ4       |     58|   219|
|Birth     |MAL-ED         |PERU         |WealthQ1       |     59|   219|
|Birth     |MAL-ED         |PERU         |WealthQ2       |     59|   219|
|Birth     |MAL-ED         |PERU         |WealthQ3       |     43|   219|
|Birth     |MAL-ED         |NEPAL        |WealthQ4       |     10|    24|
|Birth     |MAL-ED         |NEPAL        |WealthQ1       |      4|    24|
|Birth     |MAL-ED         |NEPAL        |WealthQ2       |      8|    24|
|Birth     |MAL-ED         |NEPAL        |WealthQ3       |      2|    24|
|Birth     |MAL-ED         |BRAZIL       |WealthQ4       |     10|    55|
|Birth     |MAL-ED         |BRAZIL       |WealthQ1       |     15|    55|
|Birth     |MAL-ED         |BRAZIL       |WealthQ2       |     21|    55|
|Birth     |MAL-ED         |BRAZIL       |WealthQ3       |      9|    55|
|Birth     |MAL-ED         |TANZANIA     |WealthQ4       |     16|   111|
|Birth     |MAL-ED         |TANZANIA     |WealthQ1       |     31|   111|
|Birth     |MAL-ED         |TANZANIA     |WealthQ2       |     34|   111|
|Birth     |MAL-ED         |TANZANIA     |WealthQ3       |     30|   111|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ4       |     24|   109|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ1       |     33|   109|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ2       |     23|   109|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ3       |     29|   109|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ4       |    124|   532|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ1       |    142|   532|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ2       |    122|   532|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ3       |    144|   532|
|Birth     |Vellore Crypto |INDIA        |WealthQ4       |     87|   343|
|Birth     |Vellore Crypto |INDIA        |WealthQ1       |     94|   343|
|Birth     |Vellore Crypto |INDIA        |WealthQ2       |     82|   343|
|Birth     |Vellore Crypto |INDIA        |WealthQ3       |     80|   343|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ4       |     90|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ1       |    102|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ2       |     90|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ3       |     86|   368|
|6 months  |COHORTS        |GUATEMALA    |WealthQ4       |    461|   923|
|6 months  |COHORTS        |GUATEMALA    |WealthQ1       |    132|   923|
|6 months  |COHORTS        |GUATEMALA    |WealthQ2       |    182|   923|
|6 months  |COHORTS        |GUATEMALA    |WealthQ3       |    148|   923|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ4       |    806|  2695|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ1       |    546|  2695|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ2       |    507|  2695|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ3       |    836|  2695|
|6 months  |CONTENT        |PERU         |WealthQ4       |     47|   215|
|6 months  |CONTENT        |PERU         |WealthQ1       |     48|   215|
|6 months  |CONTENT        |PERU         |WealthQ2       |     61|   215|
|6 months  |CONTENT        |PERU         |WealthQ3       |     59|   215|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ4       |    141|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ1       |    151|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ2       |    128|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ3       |    144|   564|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ4       |   4801| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ1       |   3699| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ2       |   3941| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ3       |   4343| 16784|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ4       |   1250|  4826|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ1       |   1220|  4826|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ2       |   1180|  4826|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ3       |   1176|  4826|
|6 months  |LCNI-5         |MALAWI       |WealthQ4       |    202|   815|
|6 months  |LCNI-5         |MALAWI       |WealthQ1       |    197|   815|
|6 months  |LCNI-5         |MALAWI       |WealthQ2       |    209|   815|
|6 months  |LCNI-5         |MALAWI       |WealthQ3       |    207|   815|
|6 months  |MAL-ED         |INDIA        |WealthQ4       |     54|   232|
|6 months  |MAL-ED         |INDIA        |WealthQ1       |     63|   232|
|6 months  |MAL-ED         |INDIA        |WealthQ2       |     66|   232|
|6 months  |MAL-ED         |INDIA        |WealthQ3       |     49|   232|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ4       |     54|   218|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ1       |     53|   218|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ2       |     69|   218|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ3       |     42|   218|
|6 months  |MAL-ED         |PERU         |WealthQ4       |     63|   259|
|6 months  |MAL-ED         |PERU         |WealthQ1       |     69|   259|
|6 months  |MAL-ED         |PERU         |WealthQ2       |     59|   259|
|6 months  |MAL-ED         |PERU         |WealthQ3       |     68|   259|
|6 months  |MAL-ED         |NEPAL        |WealthQ4       |     70|   228|
|6 months  |MAL-ED         |NEPAL        |WealthQ1       |     63|   228|
|6 months  |MAL-ED         |NEPAL        |WealthQ2       |     53|   228|
|6 months  |MAL-ED         |NEPAL        |WealthQ3       |     42|   228|
|6 months  |MAL-ED         |BRAZIL       |WealthQ4       |     47|   185|
|6 months  |MAL-ED         |BRAZIL       |WealthQ1       |     40|   185|
|6 months  |MAL-ED         |BRAZIL       |WealthQ2       |     49|   185|
|6 months  |MAL-ED         |BRAZIL       |WealthQ3       |     49|   185|
|6 months  |MAL-ED         |TANZANIA     |WealthQ4       |     52|   242|
|6 months  |MAL-ED         |TANZANIA     |WealthQ1       |     67|   242|
|6 months  |MAL-ED         |TANZANIA     |WealthQ2       |     63|   242|
|6 months  |MAL-ED         |TANZANIA     |WealthQ3       |     60|   242|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ4       |     51|   231|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ1       |     72|   231|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ2       |     59|   231|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ3       |     49|   231|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ4       |    140|   603|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ1       |    170|   603|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ2       |    138|   603|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ3       |    155|   603|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ4       |    509|  2023|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ1       |    619|  2023|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ2       |    367|  2023|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ3       |    528|  2023|
|6 months  |Vellore Crypto |INDIA        |WealthQ4       |    105|   408|
|6 months  |Vellore Crypto |INDIA        |WealthQ1       |    107|   408|
|6 months  |Vellore Crypto |INDIA        |WealthQ2       |    101|   408|
|6 months  |Vellore Crypto |INDIA        |WealthQ3       |     95|   408|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ4       |     91|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ1       |    102|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ2       |     90|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ3       |     89|   372|
|24 months |COHORTS        |GUATEMALA    |WealthQ4       |    512|  1033|
|24 months |COHORTS        |GUATEMALA    |WealthQ1       |    163|  1033|
|24 months |COHORTS        |GUATEMALA    |WealthQ2       |    196|  1033|
|24 months |COHORTS        |GUATEMALA    |WealthQ3       |    162|  1033|
|24 months |COHORTS        |PHILIPPINES  |WealthQ4       |    719|  2439|
|24 months |COHORTS        |PHILIPPINES  |WealthQ1       |    503|  2439|
|24 months |COHORTS        |PHILIPPINES  |WealthQ2       |    465|  2439|
|24 months |COHORTS        |PHILIPPINES  |WealthQ3       |    752|  2439|
|24 months |CONTENT        |PERU         |WealthQ4       |     30|   164|
|24 months |CONTENT        |PERU         |WealthQ1       |     39|   164|
|24 months |CONTENT        |PERU         |WealthQ2       |     51|   164|
|24 months |CONTENT        |PERU         |WealthQ3       |     44|   164|
|24 months |GMS-Nepal      |NEPAL        |WealthQ4       |    118|   487|
|24 months |GMS-Nepal      |NEPAL        |WealthQ1       |    139|   487|
|24 months |GMS-Nepal      |NEPAL        |WealthQ2       |    107|   487|
|24 months |GMS-Nepal      |NEPAL        |WealthQ3       |    123|   487|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ4       |   2292|  8603|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ1       |   2020|  8603|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ2       |   2117|  8603|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ3       |   2174|  8603|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ4       |   1220|  4730|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ1       |   1170|  4730|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ2       |   1191|  4730|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ3       |   1149|  4730|
|24 months |LCNI-5         |MALAWI       |WealthQ4       |    136|   547|
|24 months |LCNI-5         |MALAWI       |WealthQ1       |    144|   547|
|24 months |LCNI-5         |MALAWI       |WealthQ2       |    128|   547|
|24 months |LCNI-5         |MALAWI       |WealthQ3       |    139|   547|
|24 months |MAL-ED         |INDIA        |WealthQ4       |     53|   223|
|24 months |MAL-ED         |INDIA        |WealthQ1       |     60|   223|
|24 months |MAL-ED         |INDIA        |WealthQ2       |     63|   223|
|24 months |MAL-ED         |INDIA        |WealthQ3       |     47|   223|
|24 months |MAL-ED         |BANGLADESH   |WealthQ4       |     49|   199|
|24 months |MAL-ED         |BANGLADESH   |WealthQ1       |     44|   199|
|24 months |MAL-ED         |BANGLADESH   |WealthQ2       |     68|   199|
|24 months |MAL-ED         |BANGLADESH   |WealthQ3       |     38|   199|
|24 months |MAL-ED         |PERU         |WealthQ4       |     57|   194|
|24 months |MAL-ED         |PERU         |WealthQ1       |     45|   194|
|24 months |MAL-ED         |PERU         |WealthQ2       |     37|   194|
|24 months |MAL-ED         |PERU         |WealthQ3       |     55|   194|
|24 months |MAL-ED         |NEPAL        |WealthQ4       |     67|   220|
|24 months |MAL-ED         |NEPAL        |WealthQ1       |     62|   220|
|24 months |MAL-ED         |NEPAL        |WealthQ2       |     52|   220|
|24 months |MAL-ED         |NEPAL        |WealthQ3       |     39|   220|
|24 months |MAL-ED         |BRAZIL       |WealthQ4       |     45|   153|
|24 months |MAL-ED         |BRAZIL       |WealthQ1       |     27|   153|
|24 months |MAL-ED         |BRAZIL       |WealthQ2       |     40|   153|
|24 months |MAL-ED         |BRAZIL       |WealthQ3       |     41|   153|
|24 months |MAL-ED         |TANZANIA     |WealthQ4       |     48|   211|
|24 months |MAL-ED         |TANZANIA     |WealthQ1       |     55|   211|
|24 months |MAL-ED         |TANZANIA     |WealthQ2       |     52|   211|
|24 months |MAL-ED         |TANZANIA     |WealthQ3       |     56|   211|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ4       |     46|   217|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ1       |     69|   217|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ2       |     56|   217|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ3       |     46|   217|
|24 months |PROVIDE        |BANGLADESH   |WealthQ4       |    132|   579|
|24 months |PROVIDE        |BANGLADESH   |WealthQ1       |    169|   579|
|24 months |PROVIDE        |BANGLADESH   |WealthQ2       |    135|   579|
|24 months |PROVIDE        |BANGLADESH   |WealthQ3       |    143|   579|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ4       |      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ1       |      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ2       |      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ3       |      2|     6|
|24 months |Vellore Crypto |INDIA        |WealthQ4       |    105|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ1       |    108|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ2       |    101|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ3       |     95|   409|


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

* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error: from glmnet Fortran code (error code 7777); All used predictors have zero variance
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error: from glmnet Fortran code (error code 7777); All used predictors have zero variance
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error: from glmnet Fortran code (error code 7777); All used predictors have zero variance
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error: from glmnet Fortran code (error code 7777); All used predictors have zero variance
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```


