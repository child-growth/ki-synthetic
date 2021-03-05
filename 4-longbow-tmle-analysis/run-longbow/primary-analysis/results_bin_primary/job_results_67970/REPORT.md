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

**Outcome Variable:** ever_sstunted

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

|agecat      |studyid        |country                      |hhwealth_quart | ever_sstunted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:--------------|-------------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4      |             0|     28|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4      |             1|     68|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q1      |             0|     44|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q1      |             1|     47|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q2      |             0|     32|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q2      |             1|     63|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q3      |             0|     32|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q3      |             1|     59|   373|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q4      |             0|    291|  1278|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q4      |             1|    194|  1278|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q1      |             0|    112|  1278|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q1      |             1|    133|  1278|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q2      |             0|    117|  1278|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q2      |             1|    143|  1278|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q3      |             0|    154|  1278|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q3      |             1|    134|  1278|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4      |             0|    635|  3057|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4      |             1|    208|  3057|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q1      |             0|    416|  3057|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q1      |             1|    271|  3057|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q2      |             0|    331|  3057|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q2      |             1|    211|  3057|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q3      |             0|    586|  3057|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q3      |             1|    399|  3057|
|0-24 months |CONTENT        |PERU                         |Wealth Q4      |             0|     48|   215|
|0-24 months |CONTENT        |PERU                         |Wealth Q4      |             1|      4|   215|
|0-24 months |CONTENT        |PERU                         |Wealth Q1      |             0|     55|   215|
|0-24 months |CONTENT        |PERU                         |Wealth Q1      |             1|      4|   215|
|0-24 months |CONTENT        |PERU                         |Wealth Q2      |             0|     51|   215|
|0-24 months |CONTENT        |PERU                         |Wealth Q2      |             1|      1|   215|
|0-24 months |CONTENT        |PERU                         |Wealth Q3      |             0|     51|   215|
|0-24 months |CONTENT        |PERU                         |Wealth Q3      |             1|      1|   215|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4      |             0|    133|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4      |             1|     42|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q1      |             0|    132|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q1      |             1|     43|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q2      |             0|    130|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q2      |             1|     44|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q3      |             0|    134|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q3      |             1|     40|   698|
|0-24 months |IRC            |INDIA                        |Wealth Q4      |             0|     79|   410|
|0-24 months |IRC            |INDIA                        |Wealth Q4      |             1|     21|   410|
|0-24 months |IRC            |INDIA                        |Wealth Q1      |             0|     77|   410|
|0-24 months |IRC            |INDIA                        |Wealth Q1      |             1|     28|   410|
|0-24 months |IRC            |INDIA                        |Wealth Q2      |             0|     71|   410|
|0-24 months |IRC            |INDIA                        |Wealth Q2      |             1|     31|   410|
|0-24 months |IRC            |INDIA                        |Wealth Q3      |             0|     81|   410|
|0-24 months |IRC            |INDIA                        |Wealth Q3      |             1|     22|   410|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4      |             0|   6240| 27203|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4      |             1|    917| 27203|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q1      |             0|   5110| 27203|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q1      |             1|   1476| 27203|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q2      |             0|   5283| 27203|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q2      |             1|   1359| 27203|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q3      |             0|   5550| 27203|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q3      |             1|   1268| 27203|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4      |             0|   1161|  5426|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4      |             1|    189|  5426|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q1      |             0|   1012|  5426|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q1      |             1|    360|  5426|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q2      |             0|   1049|  5426|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q2      |             1|    294|  5426|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q3      |             0|   1100|  5426|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q3      |             1|    261|  5426|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q4      |             0|    176|   817|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q4      |             1|     41|   817|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q1      |             0|    153|   817|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q1      |             1|     51|   817|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q2      |             0|    149|   817|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q2      |             1|     50|   817|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q3      |             0|    169|   817|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q3      |             1|     28|   817|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q4      |             0|     54|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q4      |             1|      7|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q1      |             0|     48|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q1      |             1|     12|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q2      |             0|     38|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q2      |             1|     23|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q3      |             0|     49|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q3      |             1|     11|   242|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q4      |             0|     47|   210|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q4      |             1|      6|   210|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q1      |             0|     48|   210|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q1      |             1|      5|   210|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q2      |             0|     49|   210|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q2      |             1|      4|   210|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q3      |             0|     45|   210|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q3      |             1|      6|   210|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q4      |             0|     48|   235|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q4      |             1|     11|   235|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q1      |             0|     42|   235|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q1      |             1|     18|   235|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q2      |             0|     42|   235|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q2      |             1|     16|   235|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q3      |             0|     45|   235|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q3      |             1|     13|   235|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q4      |             0|     52|   236|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q4      |             1|      7|   236|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q1      |             0|     54|   236|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q1      |             1|      5|   236|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q2      |             0|     56|   236|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q2      |             1|      3|   236|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q3      |             0|     53|   236|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q3      |             1|      6|   236|
|0-24 months |MAL-ED         |PERU                         |Wealth Q4      |             0|     50|   272|
|0-24 months |MAL-ED         |PERU                         |Wealth Q4      |             1|     18|   272|
|0-24 months |MAL-ED         |PERU                         |Wealth Q1      |             0|     57|   272|
|0-24 months |MAL-ED         |PERU                         |Wealth Q1      |             1|     11|   272|
|0-24 months |MAL-ED         |PERU                         |Wealth Q2      |             0|     56|   272|
|0-24 months |MAL-ED         |PERU                         |Wealth Q2      |             1|     15|   272|
|0-24 months |MAL-ED         |PERU                         |Wealth Q3      |             0|     50|   272|
|0-24 months |MAL-ED         |PERU                         |Wealth Q3      |             1|     15|   272|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q4      |             0|     49|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q4      |             1|     16|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q1      |             0|     49|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q1      |             1|     15|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q2      |             0|     43|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q2      |             1|     21|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q3      |             0|     46|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q3      |             1|     18|   257|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q4      |             0|     25|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q4      |             1|     38|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q1      |             0|     35|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q1      |             1|     28|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q2      |             0|     29|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q2      |             1|     33|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q3      |             0|     27|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q3      |             1|     35|   250|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4      |             0|    141|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4      |             1|     34|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q1      |             0|    153|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q1      |             1|     21|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q2      |             0|    162|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q2      |             1|     14|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q3      |             0|    149|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q3      |             1|     26|   700|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4      |             0|    515|  2384|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4      |             1|     78|  2384|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q1      |             0|    656|  2384|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q1      |             1|     63|  2384|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q2      |             0|    436|  2384|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q2      |             1|     47|  2384|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q3      |             0|    540|  2384|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q3      |             1|     49|  2384|


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
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL

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
![](/tmp/1c01910d-565a-4ad8-a51c-9fca8ebfd02b/e24b1fde-0af2-42e9-840b-7471878d302f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1c01910d-565a-4ad8-a51c-9fca8ebfd02b/e24b1fde-0af2-42e9-840b-7471878d302f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1c01910d-565a-4ad8-a51c-9fca8ebfd02b/e24b1fde-0af2-42e9-840b-7471878d302f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1c01910d-565a-4ad8-a51c-9fca8ebfd02b/e24b1fde-0af2-42e9-840b-7471878d302f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4          |NA             | 0.7019670| 0.6096008| 0.7943332|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q1          |NA             | 0.5171267| 0.4139657| 0.6202877|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q2          |NA             | 0.6616413| 0.5657400| 0.7575427|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q3          |NA             | 0.6366929| 0.5376623| 0.7357234|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q4          |NA             | 0.4201988| 0.3773880| 0.4630096|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q1          |NA             | 0.5101085| 0.4495378| 0.5706793|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q2          |NA             | 0.5336641| 0.4761147| 0.5912134|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q3          |NA             | 0.4732243| 0.4166107| 0.5298380|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4          |NA             | 0.3111672| 0.2822199| 0.3401145|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q1          |NA             | 0.3758151| 0.3395469| 0.4120834|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q2          |NA             | 0.3570438| 0.3178883| 0.3961993|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q3          |NA             | 0.3752064| 0.3457993| 0.4046135|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4          |NA             | 0.2387936| 0.1788663| 0.2987208|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q1          |NA             | 0.2354378| 0.1756879| 0.2951877|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q2          |NA             | 0.2660993| 0.2035348| 0.3286639|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q3          |NA             | 0.2236613| 0.1673468| 0.2799758|
|0-24 months |IRC            |INDIA                        |Wealth Q4          |NA             | 0.2020246| 0.1229299| 0.2811193|
|0-24 months |IRC            |INDIA                        |Wealth Q1          |NA             | 0.2823636| 0.1995657| 0.3651615|
|0-24 months |IRC            |INDIA                        |Wealth Q2          |NA             | 0.3031526| 0.2176968| 0.3886084|
|0-24 months |IRC            |INDIA                        |Wealth Q3          |NA             | 0.2125746| 0.1365505| 0.2885987|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4          |NA             | 0.1770770| 0.1655830| 0.1885711|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q1          |NA             | 0.1936641| 0.1829301| 0.2043981|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q2          |NA             | 0.1867636| 0.1774630| 0.1960642|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q3          |NA             | 0.1867956| 0.1782834| 0.1953078|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4          |NA             | 0.1824132| 0.1583548| 0.2064716|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q1          |NA             | 0.2334916| 0.2098566| 0.2571266|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q2          |NA             | 0.2113430| 0.1879880| 0.2346980|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q3          |NA             | 0.1892304| 0.1673880| 0.2110728|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q4          |NA             | 0.1852447| 0.1331357| 0.2373537|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q1          |NA             | 0.2513946| 0.1912790| 0.3115102|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q2          |NA             | 0.2577386| 0.1973313| 0.3181459|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q3          |NA             | 0.1388498| 0.0907359| 0.1869636|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q4          |NA             | 0.1147541| 0.0346050| 0.1949032|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q1          |NA             | 0.2000000| 0.0985781| 0.3014219|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q2          |NA             | 0.3770492| 0.2551760| 0.4989224|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q3          |NA             | 0.1833333| 0.0852230| 0.2814437|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q4          |NA             | 0.1767445| 0.0774269| 0.2760621|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q1          |NA             | 0.2963432| 0.1792323| 0.4134541|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q2          |NA             | 0.2412912| 0.1249541| 0.3576282|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q3          |NA             | 0.2008586| 0.0899868| 0.3117304|
|0-24 months |MAL-ED         |PERU                         |Wealth Q4          |NA             | 0.2501217| 0.1515527| 0.3486907|
|0-24 months |MAL-ED         |PERU                         |Wealth Q1          |NA             | 0.1669797| 0.0851752| 0.2487842|
|0-24 months |MAL-ED         |PERU                         |Wealth Q2          |NA             | 0.1861574| 0.0970685| 0.2752463|
|0-24 months |MAL-ED         |PERU                         |Wealth Q3          |NA             | 0.2272909| 0.1301868| 0.3243951|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q4          |NA             | 0.2379642| 0.1321207| 0.3438076|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q1          |NA             | 0.2312689| 0.1274197| 0.3351181|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q2          |NA             | 0.3229737| 0.2046361| 0.4413114|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q3          |NA             | 0.2921413| 0.1803333| 0.4039492|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |NA             | 0.6044086| 0.4867843| 0.7220328|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q1          |NA             | 0.4306020| 0.3084219| 0.5527822|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q2          |NA             | 0.5137191| 0.3912218| 0.6362163|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q3          |NA             | 0.5553390| 0.4350481| 0.6756298|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4          |NA             | 0.1682553| 0.1146534| 0.2218571|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q1          |NA             | 0.1310625| 0.0757150| 0.1864099|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q2          |NA             | 0.0814416| 0.0400022| 0.1228810|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q3          |NA             | 0.1473817| 0.0936821| 0.2010813|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |NA             | 0.1268095| 0.0997840| 0.1538349|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q1          |NA             | 0.0900735| 0.0694871| 0.1106599|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q2          |NA             | 0.0969022| 0.0703270| 0.1234775|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q3          |NA             | 0.0825906| 0.0601958| 0.1049854|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.6353887| 0.5864772| 0.6843003|
|0-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.4726135| 0.4452311| 0.4999958|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.3562316| 0.3392530| 0.3732102|
|0-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.2421203| 0.2103189| 0.2739218|
|0-24 months |IRC            |INDIA                        |NA                 |NA             | 0.2487805| 0.2068840| 0.2906770|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.1845385| 0.1789329| 0.1901441|
|0-24 months |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.2034648| 0.1916516| 0.2152780|
|0-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.2080783| 0.1802263| 0.2359304|
|0-24 months |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.2190083| 0.1667935| 0.2712230|
|0-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.2468085| 0.1915661| 0.3020510|
|0-24 months |MAL-ED         |PERU                         |NA                 |NA             | 0.2169118| 0.1678424| 0.2659811|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.2723735| 0.2178399| 0.3269072|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.5360000| 0.4740573| 0.5979427|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.1357143| 0.1103250| 0.1611036|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0994128| 0.0873992| 0.1114263|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q1          |Wealth Q4      | 0.7366824| 0.5799593| 0.9357570|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q2          |Wealth Q4      | 0.9425534| 0.7750675| 1.1462317|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q3          |Wealth Q4      | 0.9070126| 0.7396916| 1.1121822|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q1          |Wealth Q4      | 1.2139695| 1.0406893| 1.4161017|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q2          |Wealth Q4      | 1.2700275| 1.0984986| 1.4683405|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q3          |Wealth Q4      | 1.1261914| 0.9651781| 1.3140654|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q1          |Wealth Q4      | 1.2077594| 1.0590091| 1.3774033|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q2          |Wealth Q4      | 1.1474338| 0.9967908| 1.3208431|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q3          |Wealth Q4      | 1.2058031| 1.0711713| 1.3573564|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q1          |Wealth Q4      | 0.9859471| 0.6952260| 1.3982384|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q2          |Wealth Q4      | 1.1143489| 0.7948740| 1.5622268|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q3          |Wealth Q4      | 0.9366302| 0.6621207| 1.3249491|
|0-24 months |IRC            |INDIA                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |IRC            |INDIA                        |Wealth Q1          |Wealth Q4      | 1.3976693| 0.8602257| 2.2708917|
|0-24 months |IRC            |INDIA                        |Wealth Q2          |Wealth Q4      | 1.5005725| 0.9318283| 2.4164516|
|0-24 months |IRC            |INDIA                        |Wealth Q3          |Wealth Q4      | 1.0522212| 0.6223649| 1.7789716|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q1          |Wealth Q4      | 1.0936712| 1.0122657| 1.1816233|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q2          |Wealth Q4      | 1.0547026| 0.9803065| 1.1347447|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q3          |Wealth Q4      | 1.0548832| 0.9845770| 1.1302098|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q1          |Wealth Q4      | 1.2800147| 1.0914642| 1.5011373|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q2          |Wealth Q4      | 1.1585946| 0.9828617| 1.3657479|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q3          |Wealth Q4      | 1.0373719| 0.8781680| 1.2254380|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q1          |Wealth Q4      | 1.3570951| 0.9380963| 1.9632389|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q2          |Wealth Q4      | 1.3913414| 0.9644646| 2.0071559|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q3          |Wealth Q4      | 0.7495479| 0.4801038| 1.1702095|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q1          |Wealth Q4      | 1.7428571| 0.7352116| 4.1315329|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q2          |Wealth Q4      | 3.2857143| 1.5219238| 7.0935998|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q3          |Wealth Q4      | 1.5976190| 0.6627391| 3.8512693|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q1          |Wealth Q4      | 1.6766756| 0.8452427| 3.3259574|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q2          |Wealth Q4      | 1.3651976| 0.6550792| 2.8450979|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q3          |Wealth Q4      | 1.1364349| 0.5198114| 2.4845244|
|0-24 months |MAL-ED         |PERU                         |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |PERU                         |Wealth Q1          |Wealth Q4      | 0.6675937| 0.3619056| 1.2314852|
|0-24 months |MAL-ED         |PERU                         |Wealth Q2          |Wealth Q4      | 0.7442672| 0.4071932| 1.3603708|
|0-24 months |MAL-ED         |PERU                         |Wealth Q3          |Wealth Q4      | 0.9087213| 0.5172381| 1.5965074|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q1          |Wealth Q4      | 0.9718644| 0.5178642| 1.8238766|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q2          |Wealth Q4      | 1.3572367| 0.7632333| 2.4135364|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q3          |Wealth Q4      | 1.2276691| 0.6836804| 2.2044970|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q1          |Wealth Q4      | 0.7124354| 0.5067498| 1.0016071|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q2          |Wealth Q4      | 0.8499533| 0.6268540| 1.1524544|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q3          |Wealth Q4      | 0.9188139| 0.6895307| 1.2243384|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q1          |Wealth Q4      | 0.7789502| 0.4590126| 1.3218883|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q2          |Wealth Q4      | 0.4840359| 0.2656530| 0.8819429|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q3          |Wealth Q4      | 0.8759412| 0.5404782| 1.4196187|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q1          |Wealth Q4      | 0.7103056| 0.5202086| 0.9698687|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q2          |Wealth Q4      | 0.7641559| 0.5402537| 1.0808519|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q3          |Wealth Q4      | 0.6512968| 0.4615655| 0.9190192|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4          |NA             | -0.0665782| -0.1479027|  0.0147462|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q4          |NA             |  0.0524146|  0.0192095|  0.0856198|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4          |NA             |  0.0450644|  0.0198633|  0.0702654|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4          |NA             |  0.0033268| -0.0475795|  0.0542331|
|0-24 months |IRC            |INDIA                        |Wealth Q4          |NA             |  0.0467559| -0.0225630|  0.1160747|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4          |NA             |  0.0074614| -0.0021229|  0.0170457|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4          |NA             |  0.0210516| -0.0007513|  0.0428544|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q4          |NA             |  0.0228337| -0.0223913|  0.0680586|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q4          |NA             |  0.1042542|  0.0273661|  0.1811422|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q4          |NA             |  0.0700640| -0.0187923|  0.1589204|
|0-24 months |MAL-ED         |PERU                         |Wealth Q4          |NA             | -0.0332099| -0.1139323|  0.0475124|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q4          |NA             |  0.0344094| -0.0579389|  0.1267576|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |NA             | -0.0684086| -0.1694425|  0.0326254|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4          |NA             | -0.0325410| -0.0771223|  0.0120404|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |NA             | -0.0273967| -0.0500001| -0.0047933|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4          |NA             | -0.1047834| -0.2413075|  0.0167251|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q4          |NA             |  0.1109038|  0.0375520|  0.1786652|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4          |NA             |  0.1265030|  0.0531908|  0.1941386|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4          |NA             |  0.0137402| -0.2206057|  0.2030936|
|0-24 months |IRC            |INDIA                        |Wealth Q4          |NA             |  0.1879403| -0.1446629|  0.4238994|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4          |NA             |  0.0404329| -0.0130567|  0.0910983|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4          |NA             |  0.1034653| -0.0100745|  0.2042425|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q4          |NA             |  0.1097359| -0.1362856|  0.3024903|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q4          |NA             |  0.4760285|  0.0014882|  0.7250446|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q4          |NA             |  0.2838801| -0.1815976|  0.5659878|
|0-24 months |MAL-ED         |PERU                         |Wealth Q4          |NA             | -0.1531035| -0.5897555|  0.1636150|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q4          |NA             |  0.1263315| -0.2881944|  0.4074679|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |NA             | -0.1276279| -0.3337663|  0.0466510|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4          |NA             | -0.2397756| -0.6136633|  0.0474819|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |NA             | -0.2755857| -0.5218764| -0.0691531|
