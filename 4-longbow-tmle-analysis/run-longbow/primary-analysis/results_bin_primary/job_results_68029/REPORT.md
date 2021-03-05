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

**Intervention Variable:** perdiar24

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* hdlvry
* W_birthwt
* W_birthlen
* single
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_hdlvry
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid       |country                      |perdiar24 | ever_swasted| n_cell|    n|
|:---------------------------|:-------------|:----------------------------|:---------|------------:|------:|----:|
|0-24 months (no birth wast) |CMIN          |BANGLADESH                   |0%        |            0|      9|  268|
|0-24 months (no birth wast) |CMIN          |BANGLADESH                   |0%        |            1|      0|  268|
|0-24 months (no birth wast) |CMIN          |BANGLADESH                   |(0%, 5%]  |            0|    102|  268|
|0-24 months (no birth wast) |CMIN          |BANGLADESH                   |(0%, 5%]  |            1|     18|  268|
|0-24 months (no birth wast) |CMIN          |BANGLADESH                   |>5%       |            0|    120|  268|
|0-24 months (no birth wast) |CMIN          |BANGLADESH                   |>5%       |            1|     19|  268|
|0-24 months (no birth wast) |CONTENT       |PERU                         |0%        |            0|      6|  215|
|0-24 months (no birth wast) |CONTENT       |PERU                         |0%        |            1|      0|  215|
|0-24 months (no birth wast) |CONTENT       |PERU                         |(0%, 5%]  |            0|    141|  215|
|0-24 months (no birth wast) |CONTENT       |PERU                         |(0%, 5%]  |            1|      1|  215|
|0-24 months (no birth wast) |CONTENT       |PERU                         |>5%       |            0|     67|  215|
|0-24 months (no birth wast) |CONTENT       |PERU                         |>5%       |            1|      0|  215|
|0-24 months (no birth wast) |EE            |PAKISTAN                     |0%        |            0|    212|  377|
|0-24 months (no birth wast) |EE            |PAKISTAN                     |0%        |            1|     48|  377|
|0-24 months (no birth wast) |EE            |PAKISTAN                     |(0%, 5%]  |            0|     99|  377|
|0-24 months (no birth wast) |EE            |PAKISTAN                     |(0%, 5%]  |            1|     18|  377|
|0-24 months (no birth wast) |EE            |PAKISTAN                     |>5%       |            0|      0|  377|
|0-24 months (no birth wast) |EE            |PAKISTAN                     |>5%       |            1|      0|  377|
|0-24 months (no birth wast) |Guatemala BSC |GUATEMALA                    |0%        |            0|     32|  307|
|0-24 months (no birth wast) |Guatemala BSC |GUATEMALA                    |0%        |            1|      0|  307|
|0-24 months (no birth wast) |Guatemala BSC |GUATEMALA                    |(0%, 5%]  |            0|     71|  307|
|0-24 months (no birth wast) |Guatemala BSC |GUATEMALA                    |(0%, 5%]  |            1|      0|  307|
|0-24 months (no birth wast) |Guatemala BSC |GUATEMALA                    |>5%       |            0|    202|  307|
|0-24 months (no birth wast) |Guatemala BSC |GUATEMALA                    |>5%       |            1|      2|  307|
|0-24 months (no birth wast) |iLiNS-Zinc    |BURKINA FASO                 |0%        |            0|    328| 2348|
|0-24 months (no birth wast) |iLiNS-Zinc    |BURKINA FASO                 |0%        |            1|      1| 2348|
|0-24 months (no birth wast) |iLiNS-Zinc    |BURKINA FASO                 |(0%, 5%]  |            0|   1275| 2348|
|0-24 months (no birth wast) |iLiNS-Zinc    |BURKINA FASO                 |(0%, 5%]  |            1|      8| 2348|
|0-24 months (no birth wast) |iLiNS-Zinc    |BURKINA FASO                 |>5%       |            0|    726| 2348|
|0-24 months (no birth wast) |iLiNS-Zinc    |BURKINA FASO                 |>5%       |            1|     10| 2348|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH                   |0%        |            0|    207| 5396|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH                   |0%        |            1|      9| 5396|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH                   |(0%, 5%]  |            0|   4415| 5396|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH                   |(0%, 5%]  |            1|    184| 5396|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH                   |>5%       |            0|    542| 5396|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH                   |>5%       |            1|     39| 5396|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH                   |0%        |            0|     19|  263|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH                   |0%        |            1|      1|  263|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH                   |(0%, 5%]  |            0|    138|  263|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH                   |(0%, 5%]  |            1|     10|  263|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH                   |>5%       |            0|     94|  263|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH                   |>5%       |            1|      1|  263|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL                       |0%        |            0|    128|  233|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL                       |0%        |            1|      2|  233|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL                       |(0%, 5%]  |            0|     99|  233|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL                       |(0%, 5%]  |            1|      2|  233|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL                       |>5%       |            0|      2|  233|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL                       |>5%       |            1|      0|  233|
|0-24 months (no birth wast) |MAL-ED        |INDIA                        |0%        |            0|     12|  246|
|0-24 months (no birth wast) |MAL-ED        |INDIA                        |0%        |            1|      1|  246|
|0-24 months (no birth wast) |MAL-ED        |INDIA                        |(0%, 5%]  |            0|    180|  246|
|0-24 months (no birth wast) |MAL-ED        |INDIA                        |(0%, 5%]  |            1|     11|  246|
|0-24 months (no birth wast) |MAL-ED        |INDIA                        |>5%       |            0|     41|  246|
|0-24 months (no birth wast) |MAL-ED        |INDIA                        |>5%       |            1|      1|  246|
|0-24 months (no birth wast) |MAL-ED        |NEPAL                        |0%        |            0|     17|  239|
|0-24 months (no birth wast) |MAL-ED        |NEPAL                        |0%        |            1|      0|  239|
|0-24 months (no birth wast) |MAL-ED        |NEPAL                        |(0%, 5%]  |            0|    141|  239|
|0-24 months (no birth wast) |MAL-ED        |NEPAL                        |(0%, 5%]  |            1|      2|  239|
|0-24 months (no birth wast) |MAL-ED        |NEPAL                        |>5%       |            0|     78|  239|
|0-24 months (no birth wast) |MAL-ED        |NEPAL                        |>5%       |            1|      1|  239|
|0-24 months (no birth wast) |MAL-ED        |PERU                         |0%        |            0|     28|  302|
|0-24 months (no birth wast) |MAL-ED        |PERU                         |0%        |            1|      0|  302|
|0-24 months (no birth wast) |MAL-ED        |PERU                         |(0%, 5%]  |            0|    112|  302|
|0-24 months (no birth wast) |MAL-ED        |PERU                         |(0%, 5%]  |            1|      1|  302|
|0-24 months (no birth wast) |MAL-ED        |PERU                         |>5%       |            0|    158|  302|
|0-24 months (no birth wast) |MAL-ED        |PERU                         |>5%       |            1|      3|  302|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA                 |0%        |            0|    113|  302|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA                 |0%        |            1|      4|  302|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA                 |(0%, 5%]  |            0|    174|  302|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA                 |(0%, 5%]  |            1|      8|  302|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA                 |>5%       |            0|      3|  302|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA                 |>5%       |            1|      0|  302|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0%        |            0|     15|  261|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0%        |            1|      1|  261|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |(0%, 5%]  |            0|    180|  261|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |(0%, 5%]  |            1|      3|  261|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |>5%       |            0|     58|  261|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |>5%       |            1|      4|  261|
|0-24 months (no birth wast) |NIH-Birth     |BANGLADESH                   |0%        |            0|     43|  599|
|0-24 months (no birth wast) |NIH-Birth     |BANGLADESH                   |0%        |            1|      0|  599|
|0-24 months (no birth wast) |NIH-Birth     |BANGLADESH                   |(0%, 5%]  |            0|    321|  599|
|0-24 months (no birth wast) |NIH-Birth     |BANGLADESH                   |(0%, 5%]  |            1|     33|  599|
|0-24 months (no birth wast) |NIH-Birth     |BANGLADESH                   |>5%       |            0|    181|  599|
|0-24 months (no birth wast) |NIH-Birth     |BANGLADESH                   |>5%       |            1|     21|  599|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH                   |0%        |            0|    148|  754|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH                   |0%        |            1|      5|  754|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH                   |(0%, 5%]  |            0|    387|  754|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH                   |(0%, 5%]  |            1|     11|  754|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH                   |>5%       |            0|    199|  754|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH                   |>5%       |            1|      4|  754|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH                   |0%        |            0|     60|  687|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH                   |0%        |            1|      0|  687|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH                   |(0%, 5%]  |            0|    417|  687|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH                   |(0%, 5%]  |            1|     10|  687|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH                   |>5%       |            0|    191|  687|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH                   |>5%       |            1|      9|  687|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA                        |0%        |            0|     69|  397|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA                        |0%        |            1|     10|  397|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA                        |(0%, 5%]  |            0|     41|  397|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA                        |(0%, 5%]  |            1|      4|  397|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA                        |>5%       |            0|    247|  397|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA                        |>5%       |            1|     26|  397|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
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
![](/tmp/33bdf78c-8dec-450a-aee3-ed9f9f0088b9/e2ee355f-521a-4208-ba19-635902d45e72/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/33bdf78c-8dec-450a-aee3-ed9f9f0088b9/e2ee355f-521a-4208-ba19-635902d45e72/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/33bdf78c-8dec-450a-aee3-ed9f9f0088b9/e2ee355f-521a-4208-ba19-635902d45e72/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/33bdf78c-8dec-450a-aee3-ed9f9f0088b9/e2ee355f-521a-4208-ba19-635902d45e72/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid  |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |JiVitA-4 |BANGLADESH |0%                 |NA             | 0.0416667| 0.0043929| 0.0789404|
|0-24 months (no birth wast) |JiVitA-4 |BANGLADESH |(0%, 5%]           |NA             | 0.0400087| 0.0340677| 0.0459497|
|0-24 months (no birth wast) |JiVitA-4 |BANGLADESH |>5%                |NA             | 0.0671256| 0.0448874| 0.0893639|


### Parameter: E(Y)


|agecat                      |studyid  |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |JiVitA-4 |BANGLADESH |NA                 |NA             | 0.0429948| 0.0372768| 0.0487128|


### Parameter: RR


|agecat                      |studyid  |country    |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:---------------------------|:--------|:----------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth wast) |JiVitA-4 |BANGLADESH |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-4 |BANGLADESH |(0%, 5%]           |0%             | 0.9602087| 0.3851919| 2.393614|
|0-24 months (no birth wast) |JiVitA-4 |BANGLADESH |>5%                |0%             | 1.6110155| 0.6279244| 4.133254|


### Parameter: PAR


|agecat                      |studyid  |country    |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:---------------------------|:--------|:----------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months (no birth wast) |JiVitA-4 |BANGLADESH |0%                 |NA             | 0.0013281| -0.0350063| 0.0376626|


### Parameter: PAF


|agecat                      |studyid  |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |JiVitA-4 |BANGLADESH |0%                 |NA             | 0.0308908| -1.318758| 0.5949674|
