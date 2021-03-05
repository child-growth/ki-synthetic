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

**Intervention Variable:** predfeed36

**Adjustment Set:**

* arm
* sex
* month
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid       |country                      |predfeed36 | ever_swasted| n_cell|     n|
|:---------------------------|:-------------|:----------------------------|:----------|------------:|------:|-----:|
|0-24 months (no birth wast) |EE            |PAKISTAN                     |1          |            0|      4|     9|
|0-24 months (no birth wast) |EE            |PAKISTAN                     |1          |            1|      0|     9|
|0-24 months (no birth wast) |EE            |PAKISTAN                     |0          |            0|      4|     9|
|0-24 months (no birth wast) |EE            |PAKISTAN                     |0          |            1|      1|     9|
|0-24 months (no birth wast) |GMS-Nepal     |NEPAL                        |1          |            0|    330|   524|
|0-24 months (no birth wast) |GMS-Nepal     |NEPAL                        |1          |            1|     90|   524|
|0-24 months (no birth wast) |GMS-Nepal     |NEPAL                        |0          |            0|     74|   524|
|0-24 months (no birth wast) |GMS-Nepal     |NEPAL                        |0          |            1|     30|   524|
|0-24 months (no birth wast) |JiVitA-3      |BANGLADESH                   |1          |            0|   9423| 12568|
|0-24 months (no birth wast) |JiVitA-3      |BANGLADESH                   |1          |            1|    370| 12568|
|0-24 months (no birth wast) |JiVitA-3      |BANGLADESH                   |0          |            0|   2679| 12568|
|0-24 months (no birth wast) |JiVitA-3      |BANGLADESH                   |0          |            1|     96| 12568|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH                   |1          |            0|   3392|  4559|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH                   |1          |            1|    142|  4559|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH                   |0          |            0|    975|  4559|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH                   |0          |            1|     50|  4559|
|0-24 months (no birth wast) |LCNI-5        |MALAWI                       |1          |            0|     47|   271|
|0-24 months (no birth wast) |LCNI-5        |MALAWI                       |1          |            1|      0|   271|
|0-24 months (no birth wast) |LCNI-5        |MALAWI                       |0          |            0|    222|   271|
|0-24 months (no birth wast) |LCNI-5        |MALAWI                       |0          |            1|      2|   271|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH                   |1          |            0|     80|   251|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH                   |1          |            1|      5|   251|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH                   |0          |            0|    159|   251|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH                   |0          |            1|      7|   251|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL                       |1          |            0|     29|   224|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL                       |1          |            1|      0|   224|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL                       |0          |            0|    191|   224|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL                       |0          |            1|      4|   224|
|0-24 months (no birth wast) |MAL-ED        |INDIA                        |1          |            0|     17|   234|
|0-24 months (no birth wast) |MAL-ED        |INDIA                        |1          |            1|      1|   234|
|0-24 months (no birth wast) |MAL-ED        |INDIA                        |0          |            0|    204|   234|
|0-24 months (no birth wast) |MAL-ED        |INDIA                        |0          |            1|     12|   234|
|0-24 months (no birth wast) |MAL-ED        |NEPAL                        |1          |            0|      8|   235|
|0-24 months (no birth wast) |MAL-ED        |NEPAL                        |1          |            1|      0|   235|
|0-24 months (no birth wast) |MAL-ED        |NEPAL                        |0          |            0|    224|   235|
|0-24 months (no birth wast) |MAL-ED        |NEPAL                        |0          |            1|      3|   235|
|0-24 months (no birth wast) |MAL-ED        |PERU                         |1          |            0|     80|   286|
|0-24 months (no birth wast) |MAL-ED        |PERU                         |1          |            1|      1|   286|
|0-24 months (no birth wast) |MAL-ED        |PERU                         |0          |            0|    202|   286|
|0-24 months (no birth wast) |MAL-ED        |PERU                         |0          |            1|      3|   286|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA                 |1          |            0|      6|   276|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA                 |1          |            1|      0|   276|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA                 |0          |            0|    258|   276|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA                 |0          |            1|     12|   276|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |1          |            0|      6|   250|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |1          |            1|      0|   250|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0          |            0|    236|   250|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0          |            1|      8|   250|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA                        |1          |            0|      0|   173|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA                        |1          |            1|      0|   173|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA                        |0          |            0|    159|   173|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA                        |0          |            1|     14|   173|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/ef9cdfbe-7366-47b6-bd6c-a80fa5bef571/754edd2b-a511-40ae-ae79-3f8adf799692/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ef9cdfbe-7366-47b6-bd6c-a80fa5bef571/754edd2b-a511-40ae-ae79-3f8adf799692/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ef9cdfbe-7366-47b6-bd6c-a80fa5bef571/754edd2b-a511-40ae-ae79-3f8adf799692/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ef9cdfbe-7366-47b6-bd6c-a80fa5bef571/754edd2b-a511-40ae-ae79-3f8adf799692/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |NA             | 0.2133021| 0.1740039| 0.2526004|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |0                  |NA             | 0.2838643| 0.1954077| 0.3723209|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |NA             | 0.0377547| 0.0333969| 0.0421125|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |0                  |NA             | 0.0346832| 0.0272742| 0.0420922|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |1                  |NA             | 0.0406368| 0.0336810| 0.0475926|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |0                  |NA             | 0.0466197| 0.0330204| 0.0602190|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |1                  |NA             | 0.0588235| 0.0087029| 0.1089442|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |0                  |NA             | 0.0421687| 0.0115349| 0.0728024|


### Parameter: E(Y)


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |NA                 |NA             | 0.2290076| 0.1929956| 0.2650196|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |NA                 |NA             | 0.0370783| 0.0333023| 0.0408543|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |NA                 |NA             | 0.0421145| 0.0360504| 0.0481786|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |NA                 |NA             | 0.0478088| 0.0213607| 0.0742568|


### Parameter: RR


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |0                  |1              | 1.3308086| 0.9266516| 1.911238|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |0                  |1              | 0.9186458| 0.7209451| 1.170561|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |0                  |1              | 1.1472275| 0.8149174| 1.615048|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |0                  |1              | 0.7168675| 0.2339692| 2.196439|


### Parameter: PAR


|agecat                      |studyid   |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |NA             |  0.0157055| -0.0034925| 0.0349035|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |NA             | -0.0006764| -0.0025691| 0.0012163|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |1                  |NA             |  0.0014777| -0.0020302| 0.0049855|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |1                  |NA             | -0.0110148| -0.0498757| 0.0278462|


### Parameter: PAF


|agecat                      |studyid   |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |NA             |  0.0685806| -0.0188643| 0.1485205|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |NA             | -0.0182422| -0.0704666| 0.0314344|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |1                  |NA             |  0.0350870| -0.0519840| 0.1149513|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |1                  |NA             | -0.2303922| -1.3650799| 0.3599096|
