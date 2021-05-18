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

**Intervention Variable:** perdiar6

**Adjustment Set:**

* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_impfloor
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid    |country      |perdiar6 | n_cell|   n|
|:---------|:----------|:------------|:--------|------:|---:|
|Birth     |CMIN       |BANGLADESH   |(0%, 5%] |      4|  19|
|Birth     |CMIN       |BANGLADESH   |>5%      |      9|  19|
|Birth     |CMIN       |BANGLADESH   |0%       |      6|  19|
|Birth     |CONTENT    |PERU         |(0%, 5%] |      0|   2|
|Birth     |CONTENT    |PERU         |>5%      |      2|   2|
|Birth     |CONTENT    |PERU         |0%       |      0|   2|
|Birth     |EE         |PAKISTAN     |(0%, 5%] |     11| 177|
|Birth     |EE         |PAKISTAN     |>5%      |      2| 177|
|Birth     |EE         |PAKISTAN     |0%       |    164| 177|
|Birth     |MAL-ED     |INDIA        |(0%, 5%] |     22|  45|
|Birth     |MAL-ED     |INDIA        |>5%      |     12|  45|
|Birth     |MAL-ED     |INDIA        |0%       |     11|  45|
|Birth     |MAL-ED     |BANGLADESH   |(0%, 5%] |     81| 215|
|Birth     |MAL-ED     |BANGLADESH   |>5%      |     56| 215|
|Birth     |MAL-ED     |BANGLADESH   |0%       |     78| 215|
|Birth     |MAL-ED     |PERU         |(0%, 5%] |     63| 228|
|Birth     |MAL-ED     |PERU         |>5%      |     95| 228|
|Birth     |MAL-ED     |PERU         |0%       |     70| 228|
|Birth     |MAL-ED     |NEPAL        |(0%, 5%] |      6|  26|
|Birth     |MAL-ED     |NEPAL        |>5%      |      7|  26|
|Birth     |MAL-ED     |NEPAL        |0%       |     13|  26|
|Birth     |MAL-ED     |BRAZIL       |(0%, 5%] |      3|  62|
|Birth     |MAL-ED     |BRAZIL       |>5%      |      0|  62|
|Birth     |MAL-ED     |BRAZIL       |0%       |     59|  62|
|Birth     |MAL-ED     |TANZANIA     |(0%, 5%] |     47| 115|
|Birth     |MAL-ED     |TANZANIA     |>5%      |     21| 115|
|Birth     |MAL-ED     |TANZANIA     |0%       |     47| 115|
|Birth     |MAL-ED     |SOUTH AFRICA |(0%, 5%] |     25| 120|
|Birth     |MAL-ED     |SOUTH AFRICA |>5%      |      0| 120|
|Birth     |MAL-ED     |SOUTH AFRICA |0%       |     95| 120|
|Birth     |NIH-Birth  |BANGLADESH   |(0%, 5%] |    168| 570|
|Birth     |NIH-Birth  |BANGLADESH   |>5%      |    248| 570|
|Birth     |NIH-Birth  |BANGLADESH   |0%       |    154| 570|
|Birth     |NIH-Crypto |BANGLADESH   |(0%, 5%] |    160| 707|
|Birth     |NIH-Crypto |BANGLADESH   |>5%      |    197| 707|
|Birth     |NIH-Crypto |BANGLADESH   |0%       |    350| 707|
|Birth     |PROVIDE    |BANGLADESH   |(0%, 5%] |    210| 532|
|Birth     |PROVIDE    |BANGLADESH   |>5%      |    167| 532|
|Birth     |PROVIDE    |BANGLADESH   |0%       |    155| 532|
|6 months  |CMIN       |BANGLADESH   |(0%, 5%] |     52| 243|
|6 months  |CMIN       |BANGLADESH   |>5%      |    107| 243|
|6 months  |CMIN       |BANGLADESH   |0%       |     84| 243|
|6 months  |CONTENT    |PERU         |(0%, 5%] |     37| 215|
|6 months  |CONTENT    |PERU         |>5%      |     69| 215|
|6 months  |CONTENT    |PERU         |0%       |    109| 215|
|6 months  |EE         |PAKISTAN     |(0%, 5%] |     27| 375|
|6 months  |EE         |PAKISTAN     |>5%      |      2| 375|
|6 months  |EE         |PAKISTAN     |0%       |    346| 375|
|6 months  |MAL-ED     |INDIA        |(0%, 5%] |    121| 236|
|6 months  |MAL-ED     |INDIA        |>5%      |     58| 236|
|6 months  |MAL-ED     |INDIA        |0%       |     57| 236|
|6 months  |MAL-ED     |BANGLADESH   |(0%, 5%] |     88| 241|
|6 months  |MAL-ED     |BANGLADESH   |>5%      |     60| 241|
|6 months  |MAL-ED     |BANGLADESH   |0%       |     93| 241|
|6 months  |MAL-ED     |PERU         |(0%, 5%] |     85| 273|
|6 months  |MAL-ED     |PERU         |>5%      |     99| 273|
|6 months  |MAL-ED     |PERU         |0%       |     89| 273|
|6 months  |MAL-ED     |NEPAL        |(0%, 5%] |     63| 236|
|6 months  |MAL-ED     |NEPAL        |>5%      |     79| 236|
|6 months  |MAL-ED     |NEPAL        |0%       |     94| 236|
|6 months  |MAL-ED     |BRAZIL       |(0%, 5%] |     13| 209|
|6 months  |MAL-ED     |BRAZIL       |>5%      |      0| 209|
|6 months  |MAL-ED     |BRAZIL       |0%       |    196| 209|
|6 months  |MAL-ED     |TANZANIA     |(0%, 5%] |    107| 247|
|6 months  |MAL-ED     |TANZANIA     |>5%      |     41| 247|
|6 months  |MAL-ED     |TANZANIA     |0%       |     99| 247|
|6 months  |MAL-ED     |SOUTH AFRICA |(0%, 5%] |     51| 253|
|6 months  |MAL-ED     |SOUTH AFRICA |>5%      |      6| 253|
|6 months  |MAL-ED     |SOUTH AFRICA |0%       |    196| 253|
|6 months  |NIH-Birth  |BANGLADESH   |(0%, 5%] |    163| 534|
|6 months  |NIH-Birth  |BANGLADESH   |>5%      |    234| 534|
|6 months  |NIH-Birth  |BANGLADESH   |0%       |    137| 534|
|6 months  |NIH-Crypto |BANGLADESH   |(0%, 5%] |    159| 715|
|6 months  |NIH-Crypto |BANGLADESH   |>5%      |    204| 715|
|6 months  |NIH-Crypto |BANGLADESH   |0%       |    352| 715|
|6 months  |PROVIDE    |BANGLADESH   |(0%, 5%] |    240| 603|
|6 months  |PROVIDE    |BANGLADESH   |>5%      |    191| 603|
|6 months  |PROVIDE    |BANGLADESH   |0%       |    172| 603|
|24 months |CMIN       |BANGLADESH   |(0%, 5%] |     51| 243|
|24 months |CMIN       |BANGLADESH   |>5%      |    105| 243|
|24 months |CMIN       |BANGLADESH   |0%       |     87| 243|
|24 months |CONTENT    |PERU         |(0%, 5%] |     31| 164|
|24 months |CONTENT    |PERU         |>5%      |     46| 164|
|24 months |CONTENT    |PERU         |0%       |     87| 164|
|24 months |EE         |PAKISTAN     |(0%, 5%] |      9| 168|
|24 months |EE         |PAKISTAN     |>5%      |      1| 168|
|24 months |EE         |PAKISTAN     |0%       |    158| 168|
|24 months |MAL-ED     |INDIA        |(0%, 5%] |    115| 227|
|24 months |MAL-ED     |INDIA        |>5%      |     57| 227|
|24 months |MAL-ED     |INDIA        |0%       |     55| 227|
|24 months |MAL-ED     |BANGLADESH   |(0%, 5%] |     76| 212|
|24 months |MAL-ED     |BANGLADESH   |>5%      |     52| 212|
|24 months |MAL-ED     |BANGLADESH   |0%       |     84| 212|
|24 months |MAL-ED     |PERU         |(0%, 5%] |     60| 201|
|24 months |MAL-ED     |PERU         |>5%      |     79| 201|
|24 months |MAL-ED     |PERU         |0%       |     62| 201|
|24 months |MAL-ED     |NEPAL        |(0%, 5%] |     61| 228|
|24 months |MAL-ED     |NEPAL        |>5%      |     76| 228|
|24 months |MAL-ED     |NEPAL        |0%       |     91| 228|
|24 months |MAL-ED     |BRAZIL       |(0%, 5%] |     13| 169|
|24 months |MAL-ED     |BRAZIL       |>5%      |      0| 169|
|24 months |MAL-ED     |BRAZIL       |0%       |    156| 169|
|24 months |MAL-ED     |TANZANIA     |(0%, 5%] |     89| 214|
|24 months |MAL-ED     |TANZANIA     |>5%      |     36| 214|
|24 months |MAL-ED     |TANZANIA     |0%       |     89| 214|
|24 months |MAL-ED     |SOUTH AFRICA |(0%, 5%] |     45| 237|
|24 months |MAL-ED     |SOUTH AFRICA |>5%      |      5| 237|
|24 months |MAL-ED     |SOUTH AFRICA |0%       |    187| 237|
|24 months |NIH-Birth  |BANGLADESH   |(0%, 5%] |    133| 425|
|24 months |NIH-Birth  |BANGLADESH   |>5%      |    187| 425|
|24 months |NIH-Birth  |BANGLADESH   |0%       |    105| 425|
|24 months |NIH-Crypto |BANGLADESH   |(0%, 5%] |    120| 514|
|24 months |NIH-Crypto |BANGLADESH   |>5%      |    136| 514|
|24 months |NIH-Crypto |BANGLADESH   |0%       |    258| 514|
|24 months |PROVIDE    |BANGLADESH   |(0%, 5%] |    231| 579|
|24 months |PROVIDE    |BANGLADESH   |>5%      |    182| 579|
|24 months |PROVIDE    |BANGLADESH   |0%       |    166| 579|


The following strata were considered:

* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
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
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
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
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

