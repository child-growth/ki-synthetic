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

**Intervention Variable:** impfloor

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |impfloor | stunted| n_cell|     n|
|:---------|:--------------|:------------|:--------|-------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |1        |       0|     51|    64|
|Birth     |CMC-V-BCS-2002 |INDIA        |1        |       1|     13|    64|
|Birth     |CMC-V-BCS-2002 |INDIA        |0        |       0|      0|    64|
|Birth     |CMC-V-BCS-2002 |INDIA        |0        |       1|      0|    64|
|Birth     |CONTENT        |PERU         |1        |       0|      2|     2|
|Birth     |CONTENT        |PERU         |1        |       1|      0|     2|
|Birth     |CONTENT        |PERU         |0        |       0|      0|     2|
|Birth     |CONTENT        |PERU         |0        |       1|      0|     2|
|Birth     |GMS-Nepal      |NEPAL        |1        |       0|     82|   555|
|Birth     |GMS-Nepal      |NEPAL        |1        |       1|     12|   555|
|Birth     |GMS-Nepal      |NEPAL        |0        |       0|    373|   555|
|Birth     |GMS-Nepal      |NEPAL        |0        |       1|     88|   555|
|Birth     |JiVitA-3       |BANGLADESH   |1        |       0|   1200| 22400|
|Birth     |JiVitA-3       |BANGLADESH   |1        |       1|    541| 22400|
|Birth     |JiVitA-3       |BANGLADESH   |0        |       0|  13831| 22400|
|Birth     |JiVitA-3       |BANGLADESH   |0        |       1|   6828| 22400|
|Birth     |JiVitA-4       |BANGLADESH   |1        |       0|    276|  2821|
|Birth     |JiVitA-4       |BANGLADESH   |1        |       1|     76|  2821|
|Birth     |JiVitA-4       |BANGLADESH   |0        |       0|   1688|  2821|
|Birth     |JiVitA-4       |BANGLADESH   |0        |       1|    781|  2821|
|Birth     |MAL-ED         |INDIA        |1        |       0|     31|    46|
|Birth     |MAL-ED         |INDIA        |1        |       1|     10|    46|
|Birth     |MAL-ED         |INDIA        |0        |       0|      5|    46|
|Birth     |MAL-ED         |INDIA        |0        |       1|      0|    46|
|Birth     |MAL-ED         |BANGLADESH   |1        |       0|    163|   212|
|Birth     |MAL-ED         |BANGLADESH   |1        |       1|     33|   212|
|Birth     |MAL-ED         |BANGLADESH   |0        |       0|     10|   212|
|Birth     |MAL-ED         |BANGLADESH   |0        |       1|      6|   212|
|Birth     |MAL-ED         |PERU         |1        |       0|     31|   217|
|Birth     |MAL-ED         |PERU         |1        |       1|      4|   217|
|Birth     |MAL-ED         |PERU         |0        |       0|    162|   217|
|Birth     |MAL-ED         |PERU         |0        |       1|     20|   217|
|Birth     |MAL-ED         |NEPAL        |1        |       0|     11|    26|
|Birth     |MAL-ED         |NEPAL        |1        |       1|      1|    26|
|Birth     |MAL-ED         |NEPAL        |0        |       0|     13|    26|
|Birth     |MAL-ED         |NEPAL        |0        |       1|      1|    26|
|Birth     |MAL-ED         |BRAZIL       |1        |       0|     45|    55|
|Birth     |MAL-ED         |BRAZIL       |1        |       1|      9|    55|
|Birth     |MAL-ED         |BRAZIL       |0        |       0|      1|    55|
|Birth     |MAL-ED         |BRAZIL       |0        |       1|      0|    55|
|Birth     |MAL-ED         |TANZANIA     |1        |       0|      4|   117|
|Birth     |MAL-ED         |TANZANIA     |1        |       1|      0|   117|
|Birth     |MAL-ED         |TANZANIA     |0        |       0|     92|   117|
|Birth     |MAL-ED         |TANZANIA     |0        |       1|     21|   117|
|Birth     |MAL-ED         |SOUTH AFRICA |1        |       0|     85|   107|
|Birth     |MAL-ED         |SOUTH AFRICA |1        |       1|      8|   107|
|Birth     |MAL-ED         |SOUTH AFRICA |0        |       0|     12|   107|
|Birth     |MAL-ED         |SOUTH AFRICA |0        |       1|      2|   107|
|Birth     |NIH-Birth      |BANGLADESH   |1        |       0|    450|   606|
|Birth     |NIH-Birth      |BANGLADESH   |1        |       1|     87|   606|
|Birth     |NIH-Birth      |BANGLADESH   |0        |       0|     59|   606|
|Birth     |NIH-Birth      |BANGLADESH   |0        |       1|     10|   606|
|Birth     |NIH-Crypto     |BANGLADESH   |1        |       0|    497|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |1        |       1|     81|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |0        |       0|    134|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |0        |       1|     20|   732|
|Birth     |PROVIDE        |BANGLADESH   |1        |       0|    450|   539|
|Birth     |PROVIDE        |BANGLADESH   |1        |       1|     44|   539|
|Birth     |PROVIDE        |BANGLADESH   |0        |       0|     41|   539|
|Birth     |PROVIDE        |BANGLADESH   |0        |       1|      4|   539|
|Birth     |Vellore Crypto |INDIA        |1        |       0|    262|   295|
|Birth     |Vellore Crypto |INDIA        |1        |       1|     33|   295|
|Birth     |Vellore Crypto |INDIA        |0        |       0|      0|   295|
|Birth     |Vellore Crypto |INDIA        |0        |       1|      0|   295|
|6 months  |CMC-V-BCS-2002 |INDIA        |1        |       0|    189|   267|
|6 months  |CMC-V-BCS-2002 |INDIA        |1        |       1|     78|   267|
|6 months  |CMC-V-BCS-2002 |INDIA        |0        |       0|      0|   267|
|6 months  |CMC-V-BCS-2002 |INDIA        |0        |       1|      0|   267|
|6 months  |CONTENT        |PERU         |1        |       0|    188|   215|
|6 months  |CONTENT        |PERU         |1        |       1|      7|   215|
|6 months  |CONTENT        |PERU         |0        |       0|     18|   215|
|6 months  |CONTENT        |PERU         |0        |       1|      2|   215|
|6 months  |GMS-Nepal      |NEPAL        |1        |       0|     58|   445|
|6 months  |GMS-Nepal      |NEPAL        |1        |       1|     20|   445|
|6 months  |GMS-Nepal      |NEPAL        |0        |       0|    288|   445|
|6 months  |GMS-Nepal      |NEPAL        |0        |       1|     79|   445|
|6 months  |JiVitA-3       |BANGLADESH   |1        |       0|   1139| 16770|
|6 months  |JiVitA-3       |BANGLADESH   |1        |       1|    337| 16770|
|6 months  |JiVitA-3       |BANGLADESH   |0        |       0|  11417| 16770|
|6 months  |JiVitA-3       |BANGLADESH   |0        |       1|   3877| 16770|
|6 months  |JiVitA-4       |BANGLADESH   |1        |       0|    471|  4827|
|6 months  |JiVitA-4       |BANGLADESH   |1        |       1|    135|  4827|
|6 months  |JiVitA-4       |BANGLADESH   |0        |       0|   3137|  4827|
|6 months  |JiVitA-4       |BANGLADESH   |0        |       1|   1084|  4827|
|6 months  |MAL-ED         |INDIA        |1        |       0|    170|   227|
|6 months  |MAL-ED         |INDIA        |1        |       1|     38|   227|
|6 months  |MAL-ED         |INDIA        |0        |       0|     14|   227|
|6 months  |MAL-ED         |INDIA        |0        |       1|      5|   227|
|6 months  |MAL-ED         |BANGLADESH   |1        |       0|    171|   224|
|6 months  |MAL-ED         |BANGLADESH   |1        |       1|     36|   224|
|6 months  |MAL-ED         |BANGLADESH   |0        |       0|     13|   224|
|6 months  |MAL-ED         |BANGLADESH   |0        |       1|      4|   224|
|6 months  |MAL-ED         |PERU         |1        |       0|     32|   255|
|6 months  |MAL-ED         |PERU         |1        |       1|     12|   255|
|6 months  |MAL-ED         |PERU         |0        |       0|    168|   255|
|6 months  |MAL-ED         |PERU         |0        |       1|     43|   255|
|6 months  |MAL-ED         |NEPAL        |1        |       0|     97|   228|
|6 months  |MAL-ED         |NEPAL        |1        |       1|      6|   228|
|6 months  |MAL-ED         |NEPAL        |0        |       0|    119|   228|
|6 months  |MAL-ED         |NEPAL        |0        |       1|      6|   228|
|6 months  |MAL-ED         |BRAZIL       |1        |       0|    179|   187|
|6 months  |MAL-ED         |BRAZIL       |1        |       1|      5|   187|
|6 months  |MAL-ED         |BRAZIL       |0        |       0|      3|   187|
|6 months  |MAL-ED         |BRAZIL       |0        |       1|      0|   187|
|6 months  |MAL-ED         |TANZANIA     |1        |       0|      6|   240|
|6 months  |MAL-ED         |TANZANIA     |1        |       1|      0|   240|
|6 months  |MAL-ED         |TANZANIA     |0        |       0|    177|   240|
|6 months  |MAL-ED         |TANZANIA     |0        |       1|     57|   240|
|6 months  |MAL-ED         |SOUTH AFRICA |1        |       0|    168|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |1        |       1|     42|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |0        |       0|     15|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |0        |       1|      5|   230|
|6 months  |NIH-Birth      |BANGLADESH   |1        |       0|    350|   535|
|6 months  |NIH-Birth      |BANGLADESH   |1        |       1|    124|   535|
|6 months  |NIH-Birth      |BANGLADESH   |0        |       0|     41|   535|
|6 months  |NIH-Birth      |BANGLADESH   |0        |       1|     20|   535|
|6 months  |NIH-Crypto     |BANGLADESH   |1        |       0|    450|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |1        |       1|    116|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |0        |       0|    115|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |0        |       1|     34|   715|
|6 months  |PROVIDE        |BANGLADESH   |1        |       0|    469|   604|
|6 months  |PROVIDE        |BANGLADESH   |1        |       1|     90|   604|
|6 months  |PROVIDE        |BANGLADESH   |0        |       0|     39|   604|
|6 months  |PROVIDE        |BANGLADESH   |0        |       1|      6|   604|
|6 months  |Vellore Crypto |INDIA        |1        |       0|    233|   312|
|6 months  |Vellore Crypto |INDIA        |1        |       1|     79|   312|
|6 months  |Vellore Crypto |INDIA        |0        |       0|      0|   312|
|6 months  |Vellore Crypto |INDIA        |0        |       1|      0|   312|
|24 months |CMC-V-BCS-2002 |INDIA        |1        |       0|     77|   268|
|24 months |CMC-V-BCS-2002 |INDIA        |1        |       1|    191|   268|
|24 months |CMC-V-BCS-2002 |INDIA        |0        |       0|      0|   268|
|24 months |CMC-V-BCS-2002 |INDIA        |0        |       1|      0|   268|
|24 months |CONTENT        |PERU         |1        |       0|    139|   164|
|24 months |CONTENT        |PERU         |1        |       1|     10|   164|
|24 months |CONTENT        |PERU         |0        |       0|     12|   164|
|24 months |CONTENT        |PERU         |0        |       1|      3|   164|
|24 months |GMS-Nepal      |NEPAL        |1        |       0|     35|   390|
|24 months |GMS-Nepal      |NEPAL        |1        |       1|     35|   390|
|24 months |GMS-Nepal      |NEPAL        |0        |       0|    179|   390|
|24 months |GMS-Nepal      |NEPAL        |0        |       1|    141|   390|
|24 months |JiVitA-3       |BANGLADESH   |1        |       0|    367|  8610|
|24 months |JiVitA-3       |BANGLADESH   |1        |       1|    323|  8610|
|24 months |JiVitA-3       |BANGLADESH   |0        |       0|   4013|  8610|
|24 months |JiVitA-3       |BANGLADESH   |0        |       1|   3907|  8610|
|24 months |JiVitA-4       |BANGLADESH   |1        |       0|    397|  4748|
|24 months |JiVitA-4       |BANGLADESH   |1        |       1|    205|  4748|
|24 months |JiVitA-4       |BANGLADESH   |0        |       0|   2449|  4748|
|24 months |JiVitA-4       |BANGLADESH   |0        |       1|   1697|  4748|
|24 months |MAL-ED         |INDIA        |1        |       0|    116|   218|
|24 months |MAL-ED         |INDIA        |1        |       1|     85|   218|
|24 months |MAL-ED         |INDIA        |0        |       0|      9|   218|
|24 months |MAL-ED         |INDIA        |0        |       1|      8|   218|
|24 months |MAL-ED         |BANGLADESH   |1        |       0|     96|   195|
|24 months |MAL-ED         |BANGLADESH   |1        |       1|     83|   195|
|24 months |MAL-ED         |BANGLADESH   |0        |       0|      8|   195|
|24 months |MAL-ED         |BANGLADESH   |0        |       1|      8|   195|
|24 months |MAL-ED         |PERU         |1        |       0|     18|   185|
|24 months |MAL-ED         |PERU         |1        |       1|     12|   185|
|24 months |MAL-ED         |PERU         |0        |       0|    101|   185|
|24 months |MAL-ED         |PERU         |0        |       1|     54|   185|
|24 months |MAL-ED         |NEPAL        |1        |       0|     74|   220|
|24 months |MAL-ED         |NEPAL        |1        |       1|     25|   220|
|24 months |MAL-ED         |NEPAL        |0        |       0|     96|   220|
|24 months |MAL-ED         |NEPAL        |0        |       1|     25|   220|
|24 months |MAL-ED         |BRAZIL       |1        |       0|    141|   148|
|24 months |MAL-ED         |BRAZIL       |1        |       1|      5|   148|
|24 months |MAL-ED         |BRAZIL       |0        |       0|      2|   148|
|24 months |MAL-ED         |BRAZIL       |0        |       1|      0|   148|
|24 months |MAL-ED         |TANZANIA     |1        |       0|      1|   209|
|24 months |MAL-ED         |TANZANIA     |1        |       1|      5|   209|
|24 months |MAL-ED         |TANZANIA     |0        |       0|     57|   209|
|24 months |MAL-ED         |TANZANIA     |0        |       1|    146|   209|
|24 months |MAL-ED         |SOUTH AFRICA |1        |       0|    129|   215|
|24 months |MAL-ED         |SOUTH AFRICA |1        |       1|     67|   215|
|24 months |MAL-ED         |SOUTH AFRICA |0        |       0|     11|   215|
|24 months |MAL-ED         |SOUTH AFRICA |0        |       1|      8|   215|
|24 months |NIH-Birth      |BANGLADESH   |1        |       0|    165|   428|
|24 months |NIH-Birth      |BANGLADESH   |1        |       1|    213|   428|
|24 months |NIH-Birth      |BANGLADESH   |0        |       0|     20|   428|
|24 months |NIH-Birth      |BANGLADESH   |0        |       1|     30|   428|
|24 months |NIH-Crypto     |BANGLADESH   |1        |       0|    310|   514|
|24 months |NIH-Crypto     |BANGLADESH   |1        |       1|     95|   514|
|24 months |NIH-Crypto     |BANGLADESH   |0        |       0|     72|   514|
|24 months |NIH-Crypto     |BANGLADESH   |0        |       1|     37|   514|
|24 months |PROVIDE        |BANGLADESH   |1        |       0|    361|   578|
|24 months |PROVIDE        |BANGLADESH   |1        |       1|    175|   578|
|24 months |PROVIDE        |BANGLADESH   |0        |       0|     27|   578|
|24 months |PROVIDE        |BANGLADESH   |0        |       1|     15|   578|
|24 months |Vellore Crypto |INDIA        |1        |       0|    182|   314|
|24 months |Vellore Crypto |INDIA        |1        |       1|    132|   314|
|24 months |Vellore Crypto |INDIA        |0        |       0|      0|   314|
|24 months |Vellore Crypto |INDIA        |0        |       1|      0|   314|


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
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
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
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
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
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
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


