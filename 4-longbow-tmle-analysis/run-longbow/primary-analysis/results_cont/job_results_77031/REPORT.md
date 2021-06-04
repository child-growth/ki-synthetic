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
|Birth     |CMIN       |BANGLADESH   |0%       |     10|  19|
|Birth     |CMIN       |BANGLADESH   |(0%, 5%] |      3|  19|
|Birth     |CMIN       |BANGLADESH   |>5%      |      6|  19|
|Birth     |CONTENT    |PERU         |0%       |      0|   2|
|Birth     |CONTENT    |PERU         |(0%, 5%] |      1|   2|
|Birth     |CONTENT    |PERU         |>5%      |      1|   2|
|Birth     |EE         |PAKISTAN     |0%       |    164| 177|
|Birth     |EE         |PAKISTAN     |(0%, 5%] |     11| 177|
|Birth     |EE         |PAKISTAN     |>5%      |      2| 177|
|Birth     |MAL-ED     |INDIA        |0%       |     11|  45|
|Birth     |MAL-ED     |INDIA        |(0%, 5%] |     23|  45|
|Birth     |MAL-ED     |INDIA        |>5%      |     11|  45|
|Birth     |MAL-ED     |BANGLADESH   |0%       |     65| 215|
|Birth     |MAL-ED     |BANGLADESH   |(0%, 5%] |     86| 215|
|Birth     |MAL-ED     |BANGLADESH   |>5%      |     64| 215|
|Birth     |MAL-ED     |PERU         |0%       |     67| 228|
|Birth     |MAL-ED     |PERU         |(0%, 5%] |     69| 228|
|Birth     |MAL-ED     |PERU         |>5%      |     92| 228|
|Birth     |MAL-ED     |NEPAL        |0%       |      8|  26|
|Birth     |MAL-ED     |NEPAL        |(0%, 5%] |     10|  26|
|Birth     |MAL-ED     |NEPAL        |>5%      |      8|  26|
|Birth     |MAL-ED     |BRAZIL       |0%       |     54|  62|
|Birth     |MAL-ED     |BRAZIL       |(0%, 5%] |      6|  62|
|Birth     |MAL-ED     |BRAZIL       |>5%      |      2|  62|
|Birth     |MAL-ED     |TANZANIA     |0%       |     51| 115|
|Birth     |MAL-ED     |TANZANIA     |(0%, 5%] |     44| 115|
|Birth     |MAL-ED     |TANZANIA     |>5%      |     20| 115|
|Birth     |MAL-ED     |SOUTH AFRICA |0%       |     85| 112|
|Birth     |MAL-ED     |SOUTH AFRICA |(0%, 5%] |     23| 112|
|Birth     |MAL-ED     |SOUTH AFRICA |>5%      |      4| 112|
|Birth     |NIH-Birth  |BANGLADESH   |0%       |    150| 572|
|Birth     |NIH-Birth  |BANGLADESH   |(0%, 5%] |    171| 572|
|Birth     |NIH-Birth  |BANGLADESH   |>5%      |    251| 572|
|Birth     |NIH-Crypto |BANGLADESH   |0%       |    345| 707|
|Birth     |NIH-Crypto |BANGLADESH   |(0%, 5%] |    160| 707|
|Birth     |NIH-Crypto |BANGLADESH   |>5%      |    202| 707|
|Birth     |PROVIDE    |BANGLADESH   |0%       |    160| 532|
|Birth     |PROVIDE    |BANGLADESH   |(0%, 5%] |    206| 532|
|Birth     |PROVIDE    |BANGLADESH   |>5%      |    166| 532|
|6 months  |CMIN       |BANGLADESH   |0%       |     81| 243|
|6 months  |CMIN       |BANGLADESH   |(0%, 5%] |     58| 243|
|6 months  |CMIN       |BANGLADESH   |>5%      |    104| 243|
|6 months  |CONTENT    |PERU         |0%       |    115| 215|
|6 months  |CONTENT    |PERU         |(0%, 5%] |     43| 215|
|6 months  |CONTENT    |PERU         |>5%      |     57| 215|
|6 months  |EE         |PAKISTAN     |0%       |    338| 375|
|6 months  |EE         |PAKISTAN     |(0%, 5%] |     35| 375|
|6 months  |EE         |PAKISTAN     |>5%      |      2| 375|
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
|6 months  |PROVIDE    |BANGLADESH   |0%       |    157| 603|
|6 months  |PROVIDE    |BANGLADESH   |(0%, 5%] |    246| 603|
|6 months  |PROVIDE    |BANGLADESH   |>5%      |    200| 603|
|24 months |CMIN       |BANGLADESH   |0%       |     85| 243|
|24 months |CMIN       |BANGLADESH   |(0%, 5%] |     58| 243|
|24 months |CMIN       |BANGLADESH   |>5%      |    100| 243|
|24 months |CONTENT    |PERU         |0%       |     84| 164|
|24 months |CONTENT    |PERU         |(0%, 5%] |     36| 164|
|24 months |CONTENT    |PERU         |>5%      |     44| 164|
|24 months |EE         |PAKISTAN     |0%       |    153| 168|
|24 months |EE         |PAKISTAN     |(0%, 5%] |     14| 168|
|24 months |EE         |PAKISTAN     |>5%      |      1| 168|
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
|24 months |NIH-Birth  |BANGLADESH   |0%       |    107| 428|
|24 months |NIH-Birth  |BANGLADESH   |(0%, 5%] |    127| 428|
|24 months |NIH-Birth  |BANGLADESH   |>5%      |    194| 428|
|24 months |NIH-Crypto |BANGLADESH   |0%       |    277| 514|
|24 months |NIH-Crypto |BANGLADESH   |(0%, 5%] |    106| 514|
|24 months |NIH-Crypto |BANGLADESH   |>5%      |    131| 514|
|24 months |PROVIDE    |BANGLADESH   |0%       |    153| 579|
|24 months |PROVIDE    |BANGLADESH   |(0%, 5%] |    232| 579|
|24 months |PROVIDE    |BANGLADESH   |>5%      |    194| 579|


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


