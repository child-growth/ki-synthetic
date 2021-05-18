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

**Intervention Variable:** perdiar24

**Adjustment Set:**

* sex
* arm
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* vagbrth
* hdlvry
* W_birthwt
* W_birthlen
* single
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* delta_arm
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_vagbrth
* delta_hdlvry
* delta_W_birthwt
* delta_W_birthlen
* delta_single
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

|agecat    |studyid       |country      |perdiar24 | n_cell|    n|
|:---------|:-------------|:------------|:---------|------:|----:|
|Birth     |CMIN          |BANGLADESH   |(0%, 5%]  |      8|   18|
|Birth     |CMIN          |BANGLADESH   |>5%       |      9|   18|
|Birth     |CMIN          |BANGLADESH   |0%        |      1|   18|
|Birth     |CONTENT       |PERU         |(0%, 5%]  |      1|    2|
|Birth     |CONTENT       |PERU         |>5%       |      1|    2|
|Birth     |CONTENT       |PERU         |0%        |      0|    2|
|Birth     |EE            |PAKISTAN     |(0%, 5%]  |     54|  177|
|Birth     |EE            |PAKISTAN     |>5%       |      0|  177|
|Birth     |EE            |PAKISTAN     |0%        |    123|  177|
|Birth     |JiVitA-4      |BANGLADESH   |(0%, 5%]  |   2056| 2396|
|Birth     |JiVitA-4      |BANGLADESH   |>5%       |    245| 2396|
|Birth     |JiVitA-4      |BANGLADESH   |0%        |     95| 2396|
|Birth     |MAL-ED        |INDIA        |(0%, 5%]  |     30|   45|
|Birth     |MAL-ED        |INDIA        |>5%       |     14|   45|
|Birth     |MAL-ED        |INDIA        |0%        |      1|   45|
|Birth     |MAL-ED        |BANGLADESH   |(0%, 5%]  |    108|  215|
|Birth     |MAL-ED        |BANGLADESH   |>5%       |     84|  215|
|Birth     |MAL-ED        |BANGLADESH   |0%        |     23|  215|
|Birth     |MAL-ED        |PERU         |(0%, 5%]  |    103|  228|
|Birth     |MAL-ED        |PERU         |>5%       |    100|  228|
|Birth     |MAL-ED        |PERU         |0%        |     25|  228|
|Birth     |MAL-ED        |NEPAL        |(0%, 5%]  |     14|   26|
|Birth     |MAL-ED        |NEPAL        |>5%       |     11|   26|
|Birth     |MAL-ED        |NEPAL        |0%        |      1|   26|
|Birth     |MAL-ED        |BRAZIL       |(0%, 5%]  |     26|   62|
|Birth     |MAL-ED        |BRAZIL       |>5%       |      0|   62|
|Birth     |MAL-ED        |BRAZIL       |0%        |     36|   62|
|Birth     |MAL-ED        |TANZANIA     |(0%, 5%]  |     72|  115|
|Birth     |MAL-ED        |TANZANIA     |>5%       |     41|  115|
|Birth     |MAL-ED        |TANZANIA     |0%        |      2|  115|
|Birth     |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |     77|  120|
|Birth     |MAL-ED        |SOUTH AFRICA |>5%       |      0|  120|
|Birth     |MAL-ED        |SOUTH AFRICA |0%        |     43|  120|
|Birth     |NIH-Birth     |BANGLADESH   |(0%, 5%]  |    316|  572|
|Birth     |NIH-Birth     |BANGLADESH   |>5%       |    211|  572|
|Birth     |NIH-Birth     |BANGLADESH   |0%        |     45|  572|
|Birth     |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |    391|  707|
|Birth     |NIH-Crypto    |BANGLADESH   |>5%       |    183|  707|
|Birth     |NIH-Crypto    |BANGLADESH   |0%        |    133|  707|
|Birth     |PROVIDE       |BANGLADESH   |(0%, 5%]  |    336|  532|
|Birth     |PROVIDE       |BANGLADESH   |>5%       |    150|  532|
|Birth     |PROVIDE       |BANGLADESH   |0%        |     46|  532|
|6 months  |CMIN          |BANGLADESH   |(0%, 5%]  |    104|  241|
|6 months  |CMIN          |BANGLADESH   |>5%       |    117|  241|
|6 months  |CMIN          |BANGLADESH   |0%        |     20|  241|
|6 months  |CONTENT       |PERU         |(0%, 5%]  |    132|  215|
|6 months  |CONTENT       |PERU         |>5%       |     81|  215|
|6 months  |CONTENT       |PERU         |0%        |      2|  215|
|6 months  |EE            |PAKISTAN     |(0%, 5%]  |    115|  375|
|6 months  |EE            |PAKISTAN     |>5%       |      0|  375|
|6 months  |EE            |PAKISTAN     |0%        |    260|  375|
|6 months  |Guatemala BSC |GUATEMALA    |(0%, 5%]  |     72|  296|
|6 months  |Guatemala BSC |GUATEMALA    |>5%       |    188|  296|
|6 months  |Guatemala BSC |GUATEMALA    |0%        |     36|  296|
|6 months  |JiVitA-4      |BANGLADESH   |(0%, 5%]  |   4091| 4833|
|6 months  |JiVitA-4      |BANGLADESH   |>5%       |    555| 4833|
|6 months  |JiVitA-4      |BANGLADESH   |0%        |    187| 4833|
|6 months  |MAL-ED        |INDIA        |(0%, 5%]  |    179|  236|
|6 months  |MAL-ED        |INDIA        |>5%       |     56|  236|
|6 months  |MAL-ED        |INDIA        |0%        |      1|  236|
|6 months  |MAL-ED        |BANGLADESH   |(0%, 5%]  |    130|  241|
|6 months  |MAL-ED        |BANGLADESH   |>5%       |     85|  241|
|6 months  |MAL-ED        |BANGLADESH   |0%        |     26|  241|
|6 months  |MAL-ED        |PERU         |(0%, 5%]  |    120|  273|
|6 months  |MAL-ED        |PERU         |>5%       |    125|  273|
|6 months  |MAL-ED        |PERU         |0%        |     28|  273|
|6 months  |MAL-ED        |NEPAL        |(0%, 5%]  |    141|  236|
|6 months  |MAL-ED        |NEPAL        |>5%       |     94|  236|
|6 months  |MAL-ED        |NEPAL        |0%        |      1|  236|
|6 months  |MAL-ED        |BRAZIL       |(0%, 5%]  |     92|  209|
|6 months  |MAL-ED        |BRAZIL       |>5%       |      3|  209|
|6 months  |MAL-ED        |BRAZIL       |0%        |    114|  209|
|6 months  |MAL-ED        |TANZANIA     |(0%, 5%]  |    163|  247|
|6 months  |MAL-ED        |TANZANIA     |>5%       |     80|  247|
|6 months  |MAL-ED        |TANZANIA     |0%        |      4|  247|
|6 months  |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |    150|  253|
|6 months  |MAL-ED        |SOUTH AFRICA |>5%       |      1|  253|
|6 months  |MAL-ED        |SOUTH AFRICA |0%        |    102|  253|
|6 months  |NIH-Birth     |BANGLADESH   |(0%, 5%]  |    292|  534|
|6 months  |NIH-Birth     |BANGLADESH   |>5%       |    203|  534|
|6 months  |NIH-Birth     |BANGLADESH   |0%        |     39|  534|
|6 months  |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |    394|  715|
|6 months  |NIH-Crypto    |BANGLADESH   |>5%       |    184|  715|
|6 months  |NIH-Crypto    |BANGLADESH   |0%        |    137|  715|
|6 months  |PROVIDE       |BANGLADESH   |(0%, 5%]  |    377|  603|
|6 months  |PROVIDE       |BANGLADESH   |>5%       |    179|  603|
|6 months  |PROVIDE       |BANGLADESH   |0%        |     47|  603|
|6 months  |SAS-FoodSuppl |INDIA        |(0%, 5%]  |     47|  380|
|6 months  |SAS-FoodSuppl |INDIA        |>5%       |    261|  380|
|6 months  |SAS-FoodSuppl |INDIA        |0%        |     72|  380|
|24 months |CMIN          |BANGLADESH   |(0%, 5%]  |    100|  240|
|24 months |CMIN          |BANGLADESH   |>5%       |    121|  240|
|24 months |CMIN          |BANGLADESH   |0%        |     19|  240|
|24 months |CONTENT       |PERU         |(0%, 5%]  |    104|  164|
|24 months |CONTENT       |PERU         |>5%       |     58|  164|
|24 months |CONTENT       |PERU         |0%        |      2|  164|
|24 months |EE            |PAKISTAN     |(0%, 5%]  |     56|  168|
|24 months |EE            |PAKISTAN     |>5%       |      0|  168|
|24 months |EE            |PAKISTAN     |0%        |    112|  168|
|24 months |JiVitA-4      |BANGLADESH   |(0%, 5%]  |   4013| 4735|
|24 months |JiVitA-4      |BANGLADESH   |>5%       |    533| 4735|
|24 months |JiVitA-4      |BANGLADESH   |0%        |    189| 4735|
|24 months |MAL-ED        |INDIA        |(0%, 5%]  |    172|  227|
|24 months |MAL-ED        |INDIA        |>5%       |     54|  227|
|24 months |MAL-ED        |INDIA        |0%        |      1|  227|
|24 months |MAL-ED        |BANGLADESH   |(0%, 5%]  |    111|  212|
|24 months |MAL-ED        |BANGLADESH   |>5%       |     79|  212|
|24 months |MAL-ED        |BANGLADESH   |0%        |     22|  212|
|24 months |MAL-ED        |PERU         |(0%, 5%]  |     87|  201|
|24 months |MAL-ED        |PERU         |>5%       |     95|  201|
|24 months |MAL-ED        |PERU         |0%        |     19|  201|
|24 months |MAL-ED        |NEPAL        |(0%, 5%]  |    137|  228|
|24 months |MAL-ED        |NEPAL        |>5%       |     90|  228|
|24 months |MAL-ED        |NEPAL        |0%        |      1|  228|
|24 months |MAL-ED        |BRAZIL       |(0%, 5%]  |     73|  169|
|24 months |MAL-ED        |BRAZIL       |>5%       |      3|  169|
|24 months |MAL-ED        |BRAZIL       |0%        |     93|  169|
|24 months |MAL-ED        |TANZANIA     |(0%, 5%]  |    141|  214|
|24 months |MAL-ED        |TANZANIA     |>5%       |     70|  214|
|24 months |MAL-ED        |TANZANIA     |0%        |      3|  214|
|24 months |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |    141|  237|
|24 months |MAL-ED        |SOUTH AFRICA |>5%       |      1|  237|
|24 months |MAL-ED        |SOUTH AFRICA |0%        |     95|  237|
|24 months |NIH-Birth     |BANGLADESH   |(0%, 5%]  |    239|  425|
|24 months |NIH-Birth     |BANGLADESH   |>5%       |    154|  425|
|24 months |NIH-Birth     |BANGLADESH   |0%        |     32|  425|
|24 months |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |    284|  514|
|24 months |NIH-Crypto    |BANGLADESH   |>5%       |    133|  514|
|24 months |NIH-Crypto    |BANGLADESH   |0%        |     97|  514|
|24 months |PROVIDE       |BANGLADESH   |(0%, 5%]  |    356|  579|
|24 months |PROVIDE       |BANGLADESH   |>5%       |    174|  579|
|24 months |PROVIDE       |BANGLADESH   |0%        |     49|  579|


The following strata were considered:

* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
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
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
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
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA





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


