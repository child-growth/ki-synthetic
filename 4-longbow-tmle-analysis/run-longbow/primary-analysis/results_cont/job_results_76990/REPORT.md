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

**Outcome Variable:** haz

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
|Birth     |CMIN       |BANGLADESH   |0%       |     16|  26|
|Birth     |CMIN       |BANGLADESH   |(0%, 5%] |      4|  26|
|Birth     |CMIN       |BANGLADESH   |>5%      |      6|  26|
|Birth     |CONTENT    |PERU         |0%       |      0|   2|
|Birth     |CONTENT    |PERU         |(0%, 5%] |      1|   2|
|Birth     |CONTENT    |PERU         |>5%      |      1|   2|
|Birth     |EE         |PAKISTAN     |0%       |    223| 240|
|Birth     |EE         |PAKISTAN     |(0%, 5%] |     15| 240|
|Birth     |EE         |PAKISTAN     |>5%      |      2| 240|
|Birth     |MAL-ED     |INDIA        |0%       |     12|  47|
|Birth     |MAL-ED     |INDIA        |(0%, 5%] |     24|  47|
|Birth     |MAL-ED     |INDIA        |>5%      |     11|  47|
|Birth     |MAL-ED     |BANGLADESH   |0%       |     72| 231|
|Birth     |MAL-ED     |BANGLADESH   |(0%, 5%] |     90| 231|
|Birth     |MAL-ED     |BANGLADESH   |>5%      |     69| 231|
|Birth     |MAL-ED     |PERU         |0%       |     67| 233|
|Birth     |MAL-ED     |PERU         |(0%, 5%] |     72| 233|
|Birth     |MAL-ED     |PERU         |>5%      |     94| 233|
|Birth     |MAL-ED     |NEPAL        |0%       |      8|  27|
|Birth     |MAL-ED     |NEPAL        |(0%, 5%] |     10|  27|
|Birth     |MAL-ED     |NEPAL        |>5%      |      9|  27|
|Birth     |MAL-ED     |BRAZIL       |0%       |     57|  65|
|Birth     |MAL-ED     |BRAZIL       |(0%, 5%] |      6|  65|
|Birth     |MAL-ED     |BRAZIL       |>5%      |      2|  65|
|Birth     |MAL-ED     |TANZANIA     |0%       |     59| 125|
|Birth     |MAL-ED     |TANZANIA     |(0%, 5%] |     45| 125|
|Birth     |MAL-ED     |TANZANIA     |>5%      |     21| 125|
|Birth     |MAL-ED     |SOUTH AFRICA |0%       |     86| 113|
|Birth     |MAL-ED     |SOUTH AFRICA |(0%, 5%] |     23| 113|
|Birth     |MAL-ED     |SOUTH AFRICA |>5%      |      4| 113|
|Birth     |NIH-Birth  |BANGLADESH   |0%       |    160| 605|
|Birth     |NIH-Birth  |BANGLADESH   |(0%, 5%] |    177| 605|
|Birth     |NIH-Birth  |BANGLADESH   |>5%      |    268| 605|
|Birth     |NIH-Crypto |BANGLADESH   |0%       |    360| 732|
|Birth     |NIH-Crypto |BANGLADESH   |(0%, 5%] |    163| 732|
|Birth     |NIH-Crypto |BANGLADESH   |>5%      |    209| 732|
|Birth     |PROVIDE    |BANGLADESH   |0%       |    161| 539|
|Birth     |PROVIDE    |BANGLADESH   |(0%, 5%] |    209| 539|
|Birth     |PROVIDE    |BANGLADESH   |>5%      |    169| 539|
|6 months  |CMIN       |BANGLADESH   |0%       |     81| 243|
|6 months  |CMIN       |BANGLADESH   |(0%, 5%] |     59| 243|
|6 months  |CMIN       |BANGLADESH   |>5%      |    103| 243|
|6 months  |CONTENT    |PERU         |0%       |    115| 215|
|6 months  |CONTENT    |PERU         |(0%, 5%] |     43| 215|
|6 months  |CONTENT    |PERU         |>5%      |     57| 215|
|6 months  |EE         |PAKISTAN     |0%       |    336| 373|
|6 months  |EE         |PAKISTAN     |(0%, 5%] |     35| 373|
|6 months  |EE         |PAKISTAN     |>5%      |      2| 373|
|6 months  |MAL-ED     |INDIA        |0%       |     50| 236|
|6 months  |MAL-ED     |INDIA        |(0%, 5%] |    127| 236|
|6 months  |MAL-ED     |INDIA        |>5%      |     59| 236|
|6 months  |MAL-ED     |BANGLADESH   |0%       |     71| 241|
|6 months  |MAL-ED     |BANGLADESH   |(0%, 5%] |     92| 241|
|6 months  |MAL-ED     |BANGLADESH   |>5%      |     78| 241|
|6 months  |MAL-ED     |PERU         |0%       |     68| 273|
|6 months  |MAL-ED     |PERU         |(0%, 5%] |     89| 273|
|6 months  |MAL-ED     |PERU         |>5%      |    116| 273|
|6 months  |MAL-ED     |NEPAL        |0%       |     80| 236|
|6 months  |MAL-ED     |NEPAL        |(0%, 5%] |     76| 236|
|6 months  |MAL-ED     |NEPAL        |>5%      |     80| 236|
|6 months  |MAL-ED     |BRAZIL       |0%       |    192| 209|
|6 months  |MAL-ED     |BRAZIL       |(0%, 5%] |     15| 209|
|6 months  |MAL-ED     |BRAZIL       |>5%      |      2| 209|
|6 months  |MAL-ED     |TANZANIA     |0%       |    105| 247|
|6 months  |MAL-ED     |TANZANIA     |(0%, 5%] |     96| 247|
|6 months  |MAL-ED     |TANZANIA     |>5%      |     46| 247|
|6 months  |MAL-ED     |SOUTH AFRICA |0%       |    190| 254|
|6 months  |MAL-ED     |SOUTH AFRICA |(0%, 5%] |     55| 254|
|6 months  |MAL-ED     |SOUTH AFRICA |>5%      |      9| 254|
|6 months  |NIH-Birth  |BANGLADESH   |0%       |    129| 537|
|6 months  |NIH-Birth  |BANGLADESH   |(0%, 5%] |    169| 537|
|6 months  |NIH-Birth  |BANGLADESH   |>5%      |    239| 537|
|6 months  |NIH-Crypto |BANGLADESH   |0%       |    341| 715|
|6 months  |NIH-Crypto |BANGLADESH   |(0%, 5%] |    167| 715|
|6 months  |NIH-Crypto |BANGLADESH   |>5%      |    207| 715|
|6 months  |PROVIDE    |BANGLADESH   |0%       |    158| 604|
|6 months  |PROVIDE    |BANGLADESH   |(0%, 5%] |    246| 604|
|6 months  |PROVIDE    |BANGLADESH   |>5%      |    200| 604|
|24 months |CMIN       |BANGLADESH   |0%       |     85| 242|
|24 months |CMIN       |BANGLADESH   |(0%, 5%] |     58| 242|
|24 months |CMIN       |BANGLADESH   |>5%      |     99| 242|
|24 months |CONTENT    |PERU         |0%       |     84| 164|
|24 months |CONTENT    |PERU         |(0%, 5%] |     36| 164|
|24 months |CONTENT    |PERU         |>5%      |     44| 164|
|24 months |EE         |PAKISTAN     |0%       |    152| 167|
|24 months |EE         |PAKISTAN     |(0%, 5%] |     14| 167|
|24 months |EE         |PAKISTAN     |>5%      |      1| 167|
|24 months |MAL-ED     |INDIA        |0%       |     48| 227|
|24 months |MAL-ED     |INDIA        |(0%, 5%] |    122| 227|
|24 months |MAL-ED     |INDIA        |>5%      |     57| 227|
|24 months |MAL-ED     |BANGLADESH   |0%       |     64| 212|
|24 months |MAL-ED     |BANGLADESH   |(0%, 5%] |     83| 212|
|24 months |MAL-ED     |BANGLADESH   |>5%      |     65| 212|
|24 months |MAL-ED     |PERU         |0%       |     53| 201|
|24 months |MAL-ED     |PERU         |(0%, 5%] |     64| 201|
|24 months |MAL-ED     |PERU         |>5%      |     84| 201|
|24 months |MAL-ED     |NEPAL        |0%       |     77| 228|
|24 months |MAL-ED     |NEPAL        |(0%, 5%] |     75| 228|
|24 months |MAL-ED     |NEPAL        |>5%      |     76| 228|
|24 months |MAL-ED     |BRAZIL       |0%       |    154| 169|
|24 months |MAL-ED     |BRAZIL       |(0%, 5%] |     13| 169|
|24 months |MAL-ED     |BRAZIL       |>5%      |      2| 169|
|24 months |MAL-ED     |TANZANIA     |0%       |     92| 214|
|24 months |MAL-ED     |TANZANIA     |(0%, 5%] |     83| 214|
|24 months |MAL-ED     |TANZANIA     |>5%      |     39| 214|
|24 months |MAL-ED     |SOUTH AFRICA |0%       |    177| 238|
|24 months |MAL-ED     |SOUTH AFRICA |(0%, 5%] |     52| 238|
|24 months |MAL-ED     |SOUTH AFRICA |>5%      |      9| 238|
|24 months |NIH-Birth  |BANGLADESH   |0%       |    107| 429|
|24 months |NIH-Birth  |BANGLADESH   |(0%, 5%] |    128| 429|
|24 months |NIH-Birth  |BANGLADESH   |>5%      |    194| 429|
|24 months |NIH-Crypto |BANGLADESH   |0%       |    277| 514|
|24 months |NIH-Crypto |BANGLADESH   |(0%, 5%] |    106| 514|
|24 months |NIH-Crypto |BANGLADESH   |>5%      |    131| 514|
|24 months |PROVIDE    |BANGLADESH   |0%       |    152| 578|
|24 months |PROVIDE    |BANGLADESH   |(0%, 5%] |    232| 578|
|24 months |PROVIDE    |BANGLADESH   |>5%      |    194| 578|


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


