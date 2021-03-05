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

**Outcome Variable:** ever_swasted

## Predictor Variables

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nchldlt5
* W_parity
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

|agecat      |studyid        |country                      |hhwealth_quart | ever_swasted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:--------------|------------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4      |            0|     86|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4      |            1|     10|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q1      |            0|     66|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q1      |            1|     25|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q2      |            0|     60|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q2      |            1|     35|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q3      |            0|     69|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q3      |            1|     22|   373|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q4      |            0|    442|  1263|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q4      |            1|     34|  1263|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q1      |            0|    229|  1263|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q1      |            1|     15|  1263|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q2      |            0|    242|  1263|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q2      |            1|     16|  1263|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q3      |            0|    257|  1263|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q3      |            1|     28|  1263|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4      |            0|    743|  3044|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4      |            1|     97|  3044|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q1      |            0|    590|  3044|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q1      |            1|     91|  3044|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q2      |            0|    473|  3044|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q2      |            1|     67|  3044|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q3      |            0|    856|  3044|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q3      |            1|    127|  3044|
|0-24 months |CONTENT        |PERU                         |Wealth Q4      |            0|     51|   215|
|0-24 months |CONTENT        |PERU                         |Wealth Q4      |            1|      1|   215|
|0-24 months |CONTENT        |PERU                         |Wealth Q1      |            0|     59|   215|
|0-24 months |CONTENT        |PERU                         |Wealth Q1      |            1|      0|   215|
|0-24 months |CONTENT        |PERU                         |Wealth Q2      |            0|     52|   215|
|0-24 months |CONTENT        |PERU                         |Wealth Q2      |            1|      0|   215|
|0-24 months |CONTENT        |PERU                         |Wealth Q3      |            0|     52|   215|
|0-24 months |CONTENT        |PERU                         |Wealth Q3      |            1|      0|   215|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4      |            0|    136|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4      |            1|     34|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q1      |            0|    123|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q1      |            1|     51|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q2      |            0|    124|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q2      |            1|     48|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q3      |            0|    126|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q3      |            1|     44|   686|
|0-24 months |IRC            |INDIA                        |Wealth Q4      |            0|     67|   410|
|0-24 months |IRC            |INDIA                        |Wealth Q4      |            1|     33|   410|
|0-24 months |IRC            |INDIA                        |Wealth Q1      |            0|     63|   410|
|0-24 months |IRC            |INDIA                        |Wealth Q1      |            1|     42|   410|
|0-24 months |IRC            |INDIA                        |Wealth Q2      |            0|     74|   410|
|0-24 months |IRC            |INDIA                        |Wealth Q2      |            1|     28|   410|
|0-24 months |IRC            |INDIA                        |Wealth Q3      |            0|     66|   410|
|0-24 months |IRC            |INDIA                        |Wealth Q3      |            1|     37|   410|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4      |            0|   6764| 26932|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4      |            1|    364| 26932|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q1      |            0|   6016| 26932|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q1      |            1|    470| 26932|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q2      |            0|   6160| 26932|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q2      |            1|    411| 26932|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q3      |            0|   6348| 26932|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q3      |            1|    399| 26932|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4      |            0|   1282|  5427|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4      |            1|     68|  5427|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q1      |            0|   1266|  5427|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q1      |            1|    106|  5427|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q2      |            0|   1259|  5427|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q2      |            1|     85|  5427|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q3      |            0|   1278|  5427|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q3      |            1|     83|  5427|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q4      |            0|    215|   817|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q4      |            1|      2|   817|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q1      |            0|    201|   817|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q1      |            1|      3|   817|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q2      |            0|    196|   817|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q2      |            1|      3|   817|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q3      |            0|    197|   817|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q3      |            1|      0|   817|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q4      |            0|     57|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q4      |            1|      4|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q1      |            0|     56|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q1      |            1|      4|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q2      |            0|     56|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q2      |            1|      5|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q3      |            0|     52|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q3      |            1|      8|   242|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q4      |            0|     51|   210|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q4      |            1|      2|   210|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q1      |            0|     51|   210|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q1      |            1|      2|   210|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q2      |            0|     53|   210|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q2      |            1|      0|   210|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q3      |            0|     51|   210|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q3      |            1|      0|   210|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q4      |            0|     57|   235|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q4      |            1|      2|   235|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q1      |            0|     52|   235|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q1      |            1|      8|   235|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q2      |            0|     49|   235|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q2      |            1|      9|   235|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q3      |            0|     53|   235|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q3      |            1|      5|   235|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q4      |            0|     57|   236|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q4      |            1|      2|   236|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q1      |            0|     54|   236|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q1      |            1|      5|   236|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q2      |            0|     59|   236|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q2      |            1|      0|   236|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q3      |            0|     57|   236|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q3      |            1|      2|   236|
|0-24 months |MAL-ED         |PERU                         |Wealth Q4      |            0|     66|   272|
|0-24 months |MAL-ED         |PERU                         |Wealth Q4      |            1|      2|   272|
|0-24 months |MAL-ED         |PERU                         |Wealth Q1      |            0|     68|   272|
|0-24 months |MAL-ED         |PERU                         |Wealth Q1      |            1|      0|   272|
|0-24 months |MAL-ED         |PERU                         |Wealth Q2      |            0|     70|   272|
|0-24 months |MAL-ED         |PERU                         |Wealth Q2      |            1|      1|   272|
|0-24 months |MAL-ED         |PERU                         |Wealth Q3      |            0|     64|   272|
|0-24 months |MAL-ED         |PERU                         |Wealth Q3      |            1|      1|   272|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q4      |            0|     64|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q4      |            1|      1|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q1      |            0|     59|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q1      |            1|      5|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q2      |            0|     59|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q2      |            1|      5|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q3      |            0|     60|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q3      |            1|      4|   257|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q4      |            0|     62|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q4      |            1|      1|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q1      |            0|     61|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q1      |            1|      2|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q2      |            0|     60|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q2      |            1|      2|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q3      |            0|     58|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q3      |            1|      4|   250|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4      |            0|    164|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4      |            1|     11|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q1      |            0|    161|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q1      |            1|     13|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q2      |            0|    171|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q2      |            1|      5|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q3      |            0|    162|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q3      |            1|     13|   700|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4      |            0|    549|  2384|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4      |            1|     44|  2384|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q1      |            0|    675|  2384|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q1      |            1|     44|  2384|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q2      |            0|    452|  2384|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q2      |            1|     31|  2384|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q3      |            0|    551|  2384|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q3      |            1|     38|  2384|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/906efc81-9566-4ecb-9703-40cb7973c9ce/3d702418-e7a3-438b-93d1-13317b25196e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/906efc81-9566-4ecb-9703-40cb7973c9ce/3d702418-e7a3-438b-93d1-13317b25196e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/906efc81-9566-4ecb-9703-40cb7973c9ce/3d702418-e7a3-438b-93d1-13317b25196e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/906efc81-9566-4ecb-9703-40cb7973c9ce/3d702418-e7a3-438b-93d1-13317b25196e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4          |NA             | 0.1009022| 0.0405648| 0.1612395|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q1          |NA             | 0.2761789| 0.1818299| 0.3705279|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q2          |NA             | 0.3755693| 0.2748662| 0.4762725|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q3          |NA             | 0.2400720| 0.1511719| 0.3289720|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q4          |NA             | 0.0714422| 0.0484795| 0.0944049|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q1          |NA             | 0.0629550| 0.0328167| 0.0930933|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q2          |NA             | 0.0627677| 0.0330680| 0.0924675|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q3          |NA             | 0.0954607| 0.0605785| 0.1303429|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4          |NA             | 0.1148217| 0.0957865| 0.1338569|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q1          |NA             | 0.1254003| 0.1018272| 0.1489734|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q2          |NA             | 0.1252677| 0.0974638| 0.1530717|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q3          |NA             | 0.1299263| 0.1098298| 0.1500228|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4          |NA             | 0.2004498| 0.1398103| 0.2610892|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q1          |NA             | 0.2849642| 0.2174819| 0.3524465|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q2          |NA             | 0.2811655| 0.2122992| 0.3500317|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q3          |NA             | 0.2645271| 0.1972659| 0.3317883|
|0-24 months |IRC            |INDIA                        |Wealth Q4          |NA             | 0.3180884| 0.2256876| 0.4104892|
|0-24 months |IRC            |INDIA                        |Wealth Q1          |NA             | 0.4002613| 0.3091453| 0.4913773|
|0-24 months |IRC            |INDIA                        |Wealth Q2          |NA             | 0.2757663| 0.1882880| 0.3632446|
|0-24 months |IRC            |INDIA                        |Wealth Q3          |NA             | 0.3669706| 0.2760150| 0.4579263|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4          |NA             | 0.0529938| 0.0442102| 0.0617773|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q1          |NA             | 0.0687485| 0.0600384| 0.0774585|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q2          |NA             | 0.0600497| 0.0530693| 0.0670300|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q3          |NA             | 0.0614344| 0.0549169| 0.0679519|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4          |NA             | 0.0519254| 0.0337117| 0.0701392|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q1          |NA             | 0.0745552| 0.0538584| 0.0952521|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q2          |NA             | 0.0644276| 0.0503575| 0.0784978|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q3          |NA             | 0.0637624| 0.0488925| 0.0786324|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4          |NA             | 0.0628571| 0.0268723| 0.0988420|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q1          |NA             | 0.0747126| 0.0356178| 0.1138075|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q2          |NA             | 0.0284091| 0.0038466| 0.0529716|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q3          |NA             | 0.0742857| 0.0354053| 0.1131661|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |NA             | 0.0745784| 0.0533626| 0.0957941|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q1          |NA             | 0.0619830| 0.0442164| 0.0797496|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q2          |NA             | 0.0638859| 0.0418185| 0.0859534|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q3          |NA             | 0.0649765| 0.0447336| 0.0852193|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.2466488| 0.2028447| 0.2904529|
|0-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.0736342| 0.0592247| 0.0880437|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.1254928| 0.1137225| 0.1372631|
|0-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.2580175| 0.2252514| 0.2907836|
|0-24 months |IRC            |INDIA                        |NA                 |NA             | 0.3414634| 0.2955068| 0.3874201|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.0610426| 0.0575617| 0.0645236|
|0-24 months |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.0630182| 0.0560941| 0.0699424|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.0600000| 0.0423945| 0.0776055|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0658557| 0.0558973| 0.0758141|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.000000|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q1          |Wealth Q4      | 2.7370961| 1.3744311| 5.450760|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q2          |Wealth Q4      | 3.7221141| 1.9318091| 7.171585|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q3          |Wealth Q4      | 2.3792550| 1.1767810| 4.810457|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q1          |Wealth Q4      | 0.8812014| 0.4959729| 1.565642|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q2          |Wealth Q4      | 0.8785803| 0.4962840| 1.555366|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q3          |Wealth Q4      | 1.3361949| 0.8221764| 2.171574|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q1          |Wealth Q4      | 1.0921308| 0.8573317| 1.391235|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q2          |Wealth Q4      | 1.0909763| 0.8312013| 1.431939|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q3          |Wealth Q4      | 1.1315486| 0.9100315| 1.406987|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.000000|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q1          |Wealth Q4      | 1.4216242| 0.9680328| 2.087755|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q2          |Wealth Q4      | 1.4026730| 0.9502928| 2.070406|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q3          |Wealth Q4      | 1.3196678| 0.8885957| 1.959860|
|0-24 months |IRC            |INDIA                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.000000|
|0-24 months |IRC            |INDIA                        |Wealth Q1          |Wealth Q4      | 1.2583336| 0.8725275| 1.814732|
|0-24 months |IRC            |INDIA                        |Wealth Q2          |Wealth Q4      | 0.8669488| 0.5647693| 1.330809|
|0-24 months |IRC            |INDIA                        |Wealth Q3          |Wealth Q4      | 1.1536751| 0.7903991| 1.683917|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q1          |Wealth Q4      | 1.2972932| 1.0525460| 1.598951|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q2          |Wealth Q4      | 1.1331458| 0.9371330| 1.370157|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q3          |Wealth Q4      | 1.1592748| 0.9593096| 1.400922|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q1          |Wealth Q4      | 1.4358133| 0.9187090| 2.243975|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q2          |Wealth Q4      | 1.2407716| 0.8219924| 1.872906|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q3          |Wealth Q4      | 1.2279614| 0.8013180| 1.881761|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q1          |Wealth Q4      | 1.1886102| 0.5472702| 2.581529|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q2          |Wealth Q4      | 0.4519628| 0.1602357| 1.274812|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q3          |Wealth Q4      | 1.1818182| 0.5440987| 2.566987|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q1          |Wealth Q4      | 0.8311120| 0.5549325| 1.244741|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q2          |Wealth Q4      | 0.8566283| 0.5475140| 1.340262|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q3          |Wealth Q4      | 0.8712506| 0.5714734| 1.328282|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4          |NA             |  0.1457466|  0.0850846| 0.2064087|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q4          |NA             |  0.0021920| -0.0160968| 0.0204808|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4          |NA             |  0.0106711| -0.0055835| 0.0269256|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4          |NA             |  0.0575677|  0.0032327| 0.1119028|
|0-24 months |IRC            |INDIA                        |Wealth Q4          |NA             |  0.0233750| -0.0570257| 0.1037758|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4          |NA             |  0.0080488| -0.0001207| 0.0162184|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4          |NA             |  0.0110928| -0.0056562| 0.0278418|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4          |NA             | -0.0028571| -0.0337992| 0.0280849|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |NA             | -0.0087227| -0.0268306| 0.0093852|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4          |NA             |  0.5909076|  0.2838139| 0.7663225|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q4          |NA             |  0.0297685| -0.2531687| 0.2488249|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4          |NA             |  0.0850335| -0.0534200| 0.2052896|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4          |NA             |  0.2231156| -0.0176345| 0.4069096|
|0-24 months |IRC            |INDIA                        |Wealth Q4          |NA             |  0.0684555| -0.1996060| 0.2766165|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4          |NA             |  0.1318561| -0.0128280| 0.2558718|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4          |NA             |  0.1760251| -0.1389722| 0.4039059|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4          |NA             | -0.0476190| -0.7136457| 0.3595492|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |NA             | -0.1324512| -0.4429676| 0.1112442|
