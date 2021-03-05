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

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** predfeed3

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

|agecat                      |studyid   |country                      |predfeed3 | ever_wasted| n_cell|     n|
|:---------------------------|:---------|:----------------------------|:---------|-----------:|------:|-----:|
|0-24 months (no birth wast) |EE        |PAKISTAN                     |1         |           0|     18|    39|
|0-24 months (no birth wast) |EE        |PAKISTAN                     |1         |           1|     21|    39|
|0-24 months (no birth wast) |EE        |PAKISTAN                     |0         |           0|      0|    39|
|0-24 months (no birth wast) |EE        |PAKISTAN                     |0         |           1|      0|    39|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL                        |1         |           0|    147|   453|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL                        |1         |           1|    229|   453|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL                        |0         |           0|     39|   453|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL                        |0         |           1|     38|   453|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH                   |1         |           0|  11036| 14768|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH                   |1         |           1|   2328| 14768|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH                   |0         |           0|   1165| 14768|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH                   |0         |           1|    239| 14768|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH                   |1         |           0|    109|   164|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH                   |1         |           1|     38|   164|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH                   |0         |           0|     13|   164|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH                   |0         |           1|      4|   164|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH                   |1         |           0|    152|   244|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH                   |1         |           1|     48|   244|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH                   |0         |           0|     37|   244|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH                   |0         |           1|      7|   244|
|0-24 months (no birth wast) |MAL-ED    |BRAZIL                       |1         |           0|     89|   202|
|0-24 months (no birth wast) |MAL-ED    |BRAZIL                       |1         |           1|      9|   202|
|0-24 months (no birth wast) |MAL-ED    |BRAZIL                       |0         |           0|    100|   202|
|0-24 months (no birth wast) |MAL-ED    |BRAZIL                       |0         |           1|      4|   202|
|0-24 months (no birth wast) |MAL-ED    |INDIA                        |1         |           0|     94|   212|
|0-24 months (no birth wast) |MAL-ED    |INDIA                        |1         |           1|     56|   212|
|0-24 months (no birth wast) |MAL-ED    |INDIA                        |0         |           0|     36|   212|
|0-24 months (no birth wast) |MAL-ED    |INDIA                        |0         |           1|     26|   212|
|0-24 months (no birth wast) |MAL-ED    |NEPAL                        |1         |           0|     88|   227|
|0-24 months (no birth wast) |MAL-ED    |NEPAL                        |1         |           1|     25|   227|
|0-24 months (no birth wast) |MAL-ED    |NEPAL                        |0         |           0|     93|   227|
|0-24 months (no birth wast) |MAL-ED    |NEPAL                        |0         |           1|     21|   227|
|0-24 months (no birth wast) |MAL-ED    |PERU                         |1         |           0|    178|   287|
|0-24 months (no birth wast) |MAL-ED    |PERU                         |1         |           1|     10|   287|
|0-24 months (no birth wast) |MAL-ED    |PERU                         |0         |           0|     89|   287|
|0-24 months (no birth wast) |MAL-ED    |PERU                         |0         |           1|     10|   287|
|0-24 months (no birth wast) |MAL-ED    |SOUTH AFRICA                 |1         |           0|     60|   269|
|0-24 months (no birth wast) |MAL-ED    |SOUTH AFRICA                 |1         |           1|     11|   269|
|0-24 months (no birth wast) |MAL-ED    |SOUTH AFRICA                 |0         |           0|    166|   269|
|0-24 months (no birth wast) |MAL-ED    |SOUTH AFRICA                 |0         |           1|     32|   269|
|0-24 months (no birth wast) |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |1         |           0|     58|   219|
|0-24 months (no birth wast) |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |1         |           1|      7|   219|
|0-24 months (no birth wast) |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |0         |           0|    133|   219|
|0-24 months (no birth wast) |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |0         |           1|     21|   219|
|0-6 months (no birth wast)  |EE        |PAKISTAN                     |1         |           0|     33|    38|
|0-6 months (no birth wast)  |EE        |PAKISTAN                     |1         |           1|      5|    38|
|0-6 months (no birth wast)  |EE        |PAKISTAN                     |0         |           0|      0|    38|
|0-6 months (no birth wast)  |EE        |PAKISTAN                     |0         |           1|      0|    38|
|0-6 months (no birth wast)  |GMS-Nepal |NEPAL                        |1         |           0|    288|   439|
|0-6 months (no birth wast)  |GMS-Nepal |NEPAL                        |1         |           1|     78|   439|
|0-6 months (no birth wast)  |GMS-Nepal |NEPAL                        |0         |           0|     55|   439|
|0-6 months (no birth wast)  |GMS-Nepal |NEPAL                        |0         |           1|     18|   439|
|0-6 months (no birth wast)  |JiVitA-3  |BANGLADESH                   |1         |           0|  12290| 14643|
|0-6 months (no birth wast)  |JiVitA-3  |BANGLADESH                   |1         |           1|    961| 14643|
|0-6 months (no birth wast)  |JiVitA-3  |BANGLADESH                   |0         |           0|   1276| 14643|
|0-6 months (no birth wast)  |JiVitA-3  |BANGLADESH                   |0         |           1|    116| 14643|
|0-6 months (no birth wast)  |JiVitA-4  |BANGLADESH                   |1         |           0|    143|   161|
|0-6 months (no birth wast)  |JiVitA-4  |BANGLADESH                   |1         |           1|      3|   161|
|0-6 months (no birth wast)  |JiVitA-4  |BANGLADESH                   |0         |           0|     14|   161|
|0-6 months (no birth wast)  |JiVitA-4  |BANGLADESH                   |0         |           1|      1|   161|
|0-6 months (no birth wast)  |MAL-ED    |BANGLADESH                   |1         |           0|    185|   243|
|0-6 months (no birth wast)  |MAL-ED    |BANGLADESH                   |1         |           1|     14|   243|
|0-6 months (no birth wast)  |MAL-ED    |BANGLADESH                   |0         |           0|     41|   243|
|0-6 months (no birth wast)  |MAL-ED    |BANGLADESH                   |0         |           1|      3|   243|
|0-6 months (no birth wast)  |MAL-ED    |BRAZIL                       |1         |           0|     93|   202|
|0-6 months (no birth wast)  |MAL-ED    |BRAZIL                       |1         |           1|      5|   202|
|0-6 months (no birth wast)  |MAL-ED    |BRAZIL                       |0         |           0|    101|   202|
|0-6 months (no birth wast)  |MAL-ED    |BRAZIL                       |0         |           1|      3|   202|
|0-6 months (no birth wast)  |MAL-ED    |INDIA                        |1         |           0|    132|   210|
|0-6 months (no birth wast)  |MAL-ED    |INDIA                        |1         |           1|     18|   210|
|0-6 months (no birth wast)  |MAL-ED    |INDIA                        |0         |           0|     46|   210|
|0-6 months (no birth wast)  |MAL-ED    |INDIA                        |0         |           1|     14|   210|
|0-6 months (no birth wast)  |MAL-ED    |NEPAL                        |1         |           0|    104|   225|
|0-6 months (no birth wast)  |MAL-ED    |NEPAL                        |1         |           1|      9|   225|
|0-6 months (no birth wast)  |MAL-ED    |NEPAL                        |0         |           0|    105|   225|
|0-6 months (no birth wast)  |MAL-ED    |NEPAL                        |0         |           1|      7|   225|
|0-6 months (no birth wast)  |MAL-ED    |PERU                         |1         |           0|    185|   287|
|0-6 months (no birth wast)  |MAL-ED    |PERU                         |1         |           1|      3|   287|
|0-6 months (no birth wast)  |MAL-ED    |PERU                         |0         |           0|     97|   287|
|0-6 months (no birth wast)  |MAL-ED    |PERU                         |0         |           1|      2|   287|
|0-6 months (no birth wast)  |MAL-ED    |SOUTH AFRICA                 |1         |           0|     64|   268|
|0-6 months (no birth wast)  |MAL-ED    |SOUTH AFRICA                 |1         |           1|      6|   268|
|0-6 months (no birth wast)  |MAL-ED    |SOUTH AFRICA                 |0         |           0|    191|   268|
|0-6 months (no birth wast)  |MAL-ED    |SOUTH AFRICA                 |0         |           1|      7|   268|
|0-6 months (no birth wast)  |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |1         |           0|     62|   219|
|0-6 months (no birth wast)  |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |1         |           1|      3|   219|
|0-6 months (no birth wast)  |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |0         |           0|    149|   219|
|0-6 months (no birth wast)  |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |0         |           1|      5|   219|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/83cb6e95-a650-40ef-9b14-21ff93b82109/99a12b82-3bac-435c-9570-32501be5bc61/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/83cb6e95-a650-40ef-9b14-21ff93b82109/99a12b82-3bac-435c-9570-32501be5bc61/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/83cb6e95-a650-40ef-9b14-21ff93b82109/99a12b82-3bac-435c-9570-32501be5bc61/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/83cb6e95-a650-40ef-9b14-21ff93b82109/99a12b82-3bac-435c-9570-32501be5bc61/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid   |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:---------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL                        |1                  |NA             | 0.6101755| 0.5610165| 0.6593346|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL                        |0                  |NA             | 0.4897971| 0.3784368| 0.6011575|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH                   |1                  |NA             | 0.1734078| 0.1664465| 0.1803692|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH                   |0                  |NA             | 0.1786831| 0.1559096| 0.2014566|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH                   |1                  |NA             | 0.2400000| 0.1806887| 0.2993113|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH                   |0                  |NA             | 0.1590909| 0.0507953| 0.2673865|
|0-24 months (no birth wast) |MAL-ED    |INDIA                        |1                  |NA             | 0.3710842| 0.2932048| 0.4489635|
|0-24 months (no birth wast) |MAL-ED    |INDIA                        |0                  |NA             | 0.4202138| 0.2940518| 0.5463758|
|0-24 months (no birth wast) |MAL-ED    |NEPAL                        |1                  |NA             | 0.2187743| 0.1422287| 0.2953199|
|0-24 months (no birth wast) |MAL-ED    |NEPAL                        |0                  |NA             | 0.1938729| 0.1226995| 0.2650462|
|0-24 months (no birth wast) |MAL-ED    |PERU                         |1                  |NA             | 0.0573170| 0.0248994| 0.0897346|
|0-24 months (no birth wast) |MAL-ED    |PERU                         |0                  |NA             | 0.1144319| 0.0558704| 0.1729934|
|0-24 months (no birth wast) |MAL-ED    |SOUTH AFRICA                 |1                  |NA             | 0.1452200| 0.0586077| 0.2318324|
|0-24 months (no birth wast) |MAL-ED    |SOUTH AFRICA                 |0                  |NA             | 0.1627267| 0.1110043| 0.2144492|
|0-24 months (no birth wast) |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.1076923| 0.0321596| 0.1832250|
|0-24 months (no birth wast) |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | 0.1363636| 0.0820391| 0.1906882|
|0-6 months (no birth wast)  |GMS-Nepal |NEPAL                        |1                  |NA             | 0.2130521| 0.1710590| 0.2550451|
|0-6 months (no birth wast)  |GMS-Nepal |NEPAL                        |0                  |NA             | 0.2488631| 0.1475457| 0.3501804|
|0-6 months (no birth wast)  |JiVitA-3  |BANGLADESH                   |1                  |NA             | 0.0725063| 0.0673795| 0.0776331|
|0-6 months (no birth wast)  |JiVitA-3  |BANGLADESH                   |0                  |NA             | 0.0839141| 0.0664784| 0.1013498|
|0-6 months (no birth wast)  |MAL-ED    |INDIA                        |1                  |NA             | 0.1203735| 0.0683265| 0.1724204|
|0-6 months (no birth wast)  |MAL-ED    |INDIA                        |0                  |NA             | 0.2470659| 0.1373819| 0.3567500|
|0-6 months (no birth wast)  |MAL-ED    |NEPAL                        |1                  |NA             | 0.0796460| 0.0296154| 0.1296766|
|0-6 months (no birth wast)  |MAL-ED    |NEPAL                        |0                  |NA             | 0.0625000| 0.0175705| 0.1074295|
|0-6 months (no birth wast)  |MAL-ED    |SOUTH AFRICA                 |1                  |NA             | 0.0857143| 0.0200123| 0.1514163|
|0-6 months (no birth wast)  |MAL-ED    |SOUTH AFRICA                 |0                  |NA             | 0.0353535| 0.0095827| 0.0611243|


### Parameter: E(Y)


|agecat                      |studyid   |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:---------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL                        |NA                 |NA             | 0.5894040| 0.5440524| 0.6347556|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH                   |NA                 |NA             | 0.1738218| 0.1671074| 0.1805361|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH                   |NA                 |NA             | 0.2254098| 0.1728726| 0.2779471|
|0-24 months (no birth wast) |MAL-ED    |INDIA                        |NA                 |NA             | 0.3867925| 0.3210797| 0.4525052|
|0-24 months (no birth wast) |MAL-ED    |NEPAL                        |NA                 |NA             | 0.2026432| 0.1502365| 0.2550498|
|0-24 months (no birth wast) |MAL-ED    |PERU                         |NA                 |NA             | 0.0696864| 0.0401775| 0.0991954|
|0-24 months (no birth wast) |MAL-ED    |SOUTH AFRICA                 |NA                 |NA             | 0.1598513| 0.1159763| 0.2037263|
|0-24 months (no birth wast) |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1278539| 0.0835266| 0.1721812|
|0-6 months (no birth wast)  |GMS-Nepal |NEPAL                        |NA                 |NA             | 0.2186788| 0.1799683| 0.2573894|
|0-6 months (no birth wast)  |JiVitA-3  |BANGLADESH                   |NA                 |NA             | 0.0735505| 0.0685774| 0.0785236|
|0-6 months (no birth wast)  |MAL-ED    |INDIA                        |NA                 |NA             | 0.1523810| 0.1036572| 0.2011047|
|0-6 months (no birth wast)  |MAL-ED    |NEPAL                        |NA                 |NA             | 0.0711111| 0.0374542| 0.1047681|
|0-6 months (no birth wast)  |MAL-ED    |SOUTH AFRICA                 |NA                 |NA             | 0.0485075| 0.0227384| 0.0742766|


### Parameter: RR


|agecat                      |studyid   |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:---------------------------|:---------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL                        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL                        |0                  |1              | 0.8027151| 0.6316685| 1.020079|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH                   |0                  |1              | 1.0304215| 0.9023269| 1.176700|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH                   |0                  |1              | 0.6628788| 0.3213097| 1.367554|
|0-24 months (no birth wast) |MAL-ED    |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |MAL-ED    |INDIA                        |0                  |1              | 1.1323947| 0.7845411| 1.634481|
|0-24 months (no birth wast) |MAL-ED    |NEPAL                        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |MAL-ED    |NEPAL                        |0                  |1              | 0.8861776| 0.5344270| 1.469445|
|0-24 months (no birth wast) |MAL-ED    |PERU                         |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |MAL-ED    |PERU                         |0                  |1              | 1.9964728| 0.9306732| 4.282818|
|0-24 months (no birth wast) |MAL-ED    |SOUTH AFRICA                 |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |MAL-ED    |SOUTH AFRICA                 |0                  |1              | 1.1205530| 0.5702380| 2.201956|
|0-24 months (no birth wast) |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |0                  |1              | 1.2662338| 0.5652023| 2.836768|
|0-6 months (no birth wast)  |GMS-Nepal |NEPAL                        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |GMS-Nepal |NEPAL                        |0                  |1              | 1.1680857| 0.7430228| 1.836315|
|0-6 months (no birth wast)  |JiVitA-3  |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |JiVitA-3  |BANGLADESH                   |0                  |1              | 1.1573350| 0.9311978| 1.438389|
|0-6 months (no birth wast)  |MAL-ED    |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |MAL-ED    |INDIA                        |0                  |1              | 2.0524952| 1.1030230| 3.819265|
|0-6 months (no birth wast)  |MAL-ED    |NEPAL                        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |MAL-ED    |NEPAL                        |0                  |1              | 0.7847222| 0.3020750| 2.038530|
|0-6 months (no birth wast)  |MAL-ED    |SOUTH AFRICA                 |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |MAL-ED    |SOUTH AFRICA                 |0                  |1              | 0.4124579| 0.1432147| 1.187878|


### Parameter: PAR


|agecat                      |studyid   |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:---------------------------|:---------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL                        |1                  |NA             | -0.0207716| -0.0414528| -0.0000903|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH                   |1                  |NA             |  0.0004140| -0.0018167|  0.0026446|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH                   |1                  |NA             | -0.0145902| -0.0371968|  0.0080165|
|0-24 months (no birth wast) |MAL-ED    |INDIA                        |1                  |NA             |  0.0157083| -0.0273560|  0.0587726|
|0-24 months (no birth wast) |MAL-ED    |NEPAL                        |1                  |NA             | -0.0161311| -0.0686047|  0.0363426|
|0-24 months (no birth wast) |MAL-ED    |PERU                         |1                  |NA             |  0.0123694| -0.0113513|  0.0360901|
|0-24 months (no birth wast) |MAL-ED    |SOUTH AFRICA                 |1                  |NA             |  0.0146313| -0.0601651|  0.0894276|
|0-24 months (no birth wast) |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |1                  |NA             |  0.0201616| -0.0452865|  0.0856097|
|0-6 months (no birth wast)  |GMS-Nepal |NEPAL                        |1                  |NA             |  0.0056268| -0.0123066|  0.0235601|
|0-6 months (no birth wast)  |JiVitA-3  |BANGLADESH                   |1                  |NA             |  0.0010442| -0.0006782|  0.0027666|
|0-6 months (no birth wast)  |MAL-ED    |INDIA                        |1                  |NA             |  0.0320075| -0.0026684|  0.0666834|
|0-6 months (no birth wast)  |MAL-ED    |NEPAL                        |1                  |NA             | -0.0085349| -0.0420262|  0.0249564|
|0-6 months (no birth wast)  |MAL-ED    |SOUTH AFRICA                 |1                  |NA             | -0.0372068| -0.0894158|  0.0150022|


### Parameter: PAF


|agecat                      |studyid   |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:---------------------------|:---------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL                        |1                  |NA             | -0.0352416| -0.0711408| -0.0005456|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH                   |1                  |NA             |  0.0023815| -0.0105297|  0.0151278|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH                   |1                  |NA             | -0.0647273| -0.1694188|  0.0305918|
|0-24 months (no birth wast) |MAL-ED    |INDIA                        |1                  |NA             |  0.0406117| -0.0775359|  0.1458048|
|0-24 months (no birth wast) |MAL-ED    |NEPAL                        |1                  |NA             | -0.0796034| -0.3715734|  0.1502142|
|0-24 months (no birth wast) |MAL-ED    |PERU                         |1                  |NA             |  0.1775005| -0.2254199|  0.4479400|
|0-24 months (no birth wast) |MAL-ED    |SOUTH AFRICA                 |1                  |NA             |  0.0915305| -0.5215483|  0.4575809|
|0-24 months (no birth wast) |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |1                  |NA             |  0.1576923| -0.5426579|  0.5400910|
|0-6 months (no birth wast)  |GMS-Nepal |NEPAL                        |1                  |NA             |  0.0257307| -0.0597626|  0.1043271|
|0-6 months (no birth wast)  |JiVitA-3  |BANGLADESH                   |1                  |NA             |  0.0141969| -0.0094401|  0.0372803|
|0-6 months (no birth wast)  |MAL-ED    |INDIA                        |1                  |NA             |  0.2100492| -0.0437797|  0.4021514|
|0-6 months (no birth wast)  |MAL-ED    |NEPAL                        |1                  |NA             | -0.1200221| -0.7011560|  0.2625900|
|0-6 months (no birth wast)  |MAL-ED    |SOUTH AFRICA                 |1                  |NA             | -0.7670330| -2.1314677|  0.0028939|
