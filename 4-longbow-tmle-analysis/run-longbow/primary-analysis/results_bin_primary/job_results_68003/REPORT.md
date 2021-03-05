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

**Intervention Variable:** mwtkg

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nchldlt5
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |mwtkg      | ever_swasted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:----------|------------:|------:|-----:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg    |            0|    906|  3217|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg    |            1|     31|  3217|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<52 kg     |            0|   1124|  3217|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<52 kg     |            1|     77|  3217|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[52-58) kg |            0|   1033|  3217|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[52-58) kg |            1|     46|  3217|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg    |            0|    634| 26925|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg    |            1|     27| 26925|
|0-24 months |JiVitA-3       |BANGLADESH                   |<52 kg     |            0|  23001| 26925|
|0-24 months |JiVitA-3       |BANGLADESH                   |<52 kg     |            1|   1505| 26925|
|0-24 months |JiVitA-3       |BANGLADESH                   |[52-58) kg |            0|   1645| 26925|
|0-24 months |JiVitA-3       |BANGLADESH                   |[52-58) kg |            1|    113| 26925|
|0-24 months |LCNI-5         |MALAWI                       |>=58 kg    |            0|    113|   838|
|0-24 months |LCNI-5         |MALAWI                       |>=58 kg    |            1|      1|   838|
|0-24 months |LCNI-5         |MALAWI                       |<52 kg     |            0|    500|   838|
|0-24 months |LCNI-5         |MALAWI                       |<52 kg     |            1|      4|   838|
|0-24 months |LCNI-5         |MALAWI                       |[52-58) kg |            0|    217|   838|
|0-24 months |LCNI-5         |MALAWI                       |[52-58) kg |            1|      3|   838|
|0-24 months |MAL-ED         |BANGLADESH                   |>=58 kg    |            0|     45|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |>=58 kg    |            1|      3|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |<52 kg     |            0|    144|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |<52 kg     |            1|     18|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |[52-58) kg |            0|     44|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |[52-58) kg |            1|      0|   254|
|0-24 months |MAL-ED         |BRAZIL                       |>=58 kg    |            0|    140|   221|
|0-24 months |MAL-ED         |BRAZIL                       |>=58 kg    |            1|      3|   221|
|0-24 months |MAL-ED         |BRAZIL                       |<52 kg     |            0|     42|   221|
|0-24 months |MAL-ED         |BRAZIL                       |<52 kg     |            1|      0|   221|
|0-24 months |MAL-ED         |BRAZIL                       |[52-58) kg |            0|     35|   221|
|0-24 months |MAL-ED         |BRAZIL                       |[52-58) kg |            1|      1|   221|
|0-24 months |MAL-ED         |INDIA                        |>=58 kg    |            0|     39|   242|
|0-24 months |MAL-ED         |INDIA                        |>=58 kg    |            1|      3|   242|
|0-24 months |MAL-ED         |INDIA                        |<52 kg     |            0|    131|   242|
|0-24 months |MAL-ED         |INDIA                        |<52 kg     |            1|     19|   242|
|0-24 months |MAL-ED         |INDIA                        |[52-58) kg |            0|     46|   242|
|0-24 months |MAL-ED         |INDIA                        |[52-58) kg |            1|      4|   242|
|0-24 months |MAL-ED         |NEPAL                        |>=58 kg    |            0|     78|   238|
|0-24 months |MAL-ED         |NEPAL                        |>=58 kg    |            1|      2|   238|
|0-24 months |MAL-ED         |NEPAL                        |<52 kg     |            0|     70|   238|
|0-24 months |MAL-ED         |NEPAL                        |<52 kg     |            1|      6|   238|
|0-24 months |MAL-ED         |NEPAL                        |[52-58) kg |            0|     81|   238|
|0-24 months |MAL-ED         |NEPAL                        |[52-58) kg |            1|      1|   238|
|0-24 months |MAL-ED         |PERU                         |>=58 kg    |            0|    104|   290|
|0-24 months |MAL-ED         |PERU                         |>=58 kg    |            1|      0|   290|
|0-24 months |MAL-ED         |PERU                         |<52 kg     |            0|    113|   290|
|0-24 months |MAL-ED         |PERU                         |<52 kg     |            1|      2|   290|
|0-24 months |MAL-ED         |PERU                         |[52-58) kg |            0|     69|   290|
|0-24 months |MAL-ED         |PERU                         |[52-58) kg |            1|      2|   290|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=58 kg    |            0|    187|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=58 kg    |            1|      7|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<52 kg     |            0|     28|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<52 kg     |            1|      2|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[52-58) kg |            0|     40|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[52-58) kg |            1|      6|   270|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg    |            0|     94|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg    |            1|      4|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<52 kg     |            0|     95|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<52 kg     |            1|      4|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[52-58) kg |            0|     58|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[52-58) kg |            1|      1|   256|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg    |            0|     77|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg    |            1|      5|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |<52 kg     |            0|    371|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |<52 kg     |            1|     77|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |[52-58) kg |            0|     77|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |[52-58) kg |            1|     17|   624|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg    |            0|    185|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg    |            1|      7|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<52 kg     |            0|    355|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<52 kg     |            1|     51|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[52-58) kg |            0|    149|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[52-58) kg |            1|      8|   755|
|0-24 months |PROBIT         |BELARUS                      |>=58 kg    |            0|   9357| 13772|
|0-24 months |PROBIT         |BELARUS                      |>=58 kg    |            1|    922| 13772|
|0-24 months |PROBIT         |BELARUS                      |<52 kg     |            0|   1037| 13772|
|0-24 months |PROBIT         |BELARUS                      |<52 kg     |            1|     94| 13772|
|0-24 months |PROBIT         |BELARUS                      |[52-58) kg |            0|   2169| 13772|
|0-24 months |PROBIT         |BELARUS                      |[52-58) kg |            1|    193| 13772|
|0-24 months |PROVIDE        |BANGLADESH                   |>=58 kg    |            0|    116|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |>=58 kg    |            1|      4|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |<52 kg     |            0|    401|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |<52 kg     |            1|     31|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |[52-58) kg |            0|    111|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |[52-58) kg |            1|      6|   669|
|0-24 months |SAS-CompFeed   |INDIA                        |>=58 kg    |            0|    100|  1498|
|0-24 months |SAS-CompFeed   |INDIA                        |>=58 kg    |            1|     13|  1498|
|0-24 months |SAS-CompFeed   |INDIA                        |<52 kg     |            0|    954|  1498|
|0-24 months |SAS-CompFeed   |INDIA                        |<52 kg     |            1|    190|  1498|
|0-24 months |SAS-CompFeed   |INDIA                        |[52-58) kg |            0|    223|  1498|
|0-24 months |SAS-CompFeed   |INDIA                        |[52-58) kg |            1|     18|  1498|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg    |            0|   1388|  2352|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg    |            1|     88|  2352|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<52 kg     |            0|    356|  2352|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<52 kg     |            1|     37|  2352|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[52-58) kg |            0|    451|  2352|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[52-58) kg |            1|     32|  2352|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg    |            0|   5326| 11168|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg    |            1|    496| 11168|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<52 kg     |            0|   2110| 11168|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<52 kg     |            1|    289| 11168|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[52-58) kg |            0|   2667| 11168|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[52-58) kg |            1|    280| 11168|


The following strata were considered:

* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/37f6da4f-b8a7-4e51-8284-677ec94d2ca8/76baff43-fb76-4462-98c6-9e0a4ad6bf13/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/37f6da4f-b8a7-4e51-8284-677ec94d2ca8/76baff43-fb76-4462-98c6-9e0a4ad6bf13/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/37f6da4f-b8a7-4e51-8284-677ec94d2ca8/76baff43-fb76-4462-98c6-9e0a4ad6bf13/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/37f6da4f-b8a7-4e51-8284-677ec94d2ca8/76baff43-fb76-4462-98c6-9e0a4ad6bf13/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg            |NA             | 0.0336313| 0.0174790| 0.0497836|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<52 kg             |NA             | 0.0636890| 0.0449428| 0.0824352|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[52-58) kg         |NA             | 0.0422363| 0.0264413| 0.0580312|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg            |NA             | 0.0416302| 0.0270366| 0.0562239|
|0-24 months |JiVitA-3       |BANGLADESH                   |<52 kg             |NA             | 0.0614274| 0.0577044| 0.0651505|
|0-24 months |JiVitA-3       |BANGLADESH                   |[52-58) kg         |NA             | 0.0640660| 0.0515940| 0.0765381|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg            |NA             | 0.0609756| 0.0091427| 0.1128086|
|0-24 months |NIH-Birth      |BANGLADESH                   |<52 kg             |NA             | 0.1718750| 0.1369118| 0.2068382|
|0-24 months |NIH-Birth      |BANGLADESH                   |[52-58) kg         |NA             | 0.1808511| 0.1029803| 0.2587218|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg            |NA             | 0.0364583| 0.0099295| 0.0629872|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<52 kg             |NA             | 0.1256158| 0.0933571| 0.1578744|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[52-58) kg         |NA             | 0.0509554| 0.0165343| 0.0853765|
|0-24 months |PROBIT         |BELARUS                      |>=58 kg            |NA             | 0.0899681| 0.0536446| 0.1262917|
|0-24 months |PROBIT         |BELARUS                      |<52 kg             |NA             | 0.0868116| 0.0479818| 0.1256413|
|0-24 months |PROBIT         |BELARUS                      |[52-58) kg         |NA             | 0.0803273| 0.0494580| 0.1111967|
|0-24 months |SAS-CompFeed   |INDIA                        |>=58 kg            |NA             | 0.1429174| 0.0475331| 0.2383016|
|0-24 months |SAS-CompFeed   |INDIA                        |<52 kg             |NA             | 0.1608284| 0.1307957| 0.1908611|
|0-24 months |SAS-CompFeed   |INDIA                        |[52-58) kg         |NA             | 0.0830284| 0.0472111| 0.1188457|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             | 0.0593889| 0.0472722| 0.0715055|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<52 kg             |NA             | 0.1028914| 0.0722758| 0.1335069|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[52-58) kg         |NA             | 0.0663880| 0.0432276| 0.0895483|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg            |NA             | 0.0853886| 0.0781430| 0.0926342|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<52 kg             |NA             | 0.1210495| 0.1075580| 0.1345409|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[52-58) kg         |NA             | 0.0958455| 0.0848438| 0.1068473|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.0478707| 0.0359037| 0.0598376|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.0610956| 0.0576148| 0.0645765|
|0-24 months |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.1586538| 0.1299648| 0.1873429|
|0-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.0874172| 0.0672569| 0.1075775|
|0-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.0877868| 0.0528398| 0.1227338|
|0-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.1475300| 0.1183178| 0.1767423|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0667517| 0.0566626| 0.0768408|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.0953617| 0.0899142| 0.1008093|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<52 kg             |>=58 kg        | 1.8937427| 1.1181090| 3.2074346|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[52-58) kg         |>=58 kg        | 1.2558624| 0.7649522| 2.0618154|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |<52 kg             |>=58 kg        | 1.4755485| 1.0296621| 2.1145222|
|0-24 months |JiVitA-3       |BANGLADESH                   |[52-58) kg         |>=58 kg        | 1.5389302| 1.0195863| 2.3228109|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |NIH-Birth      |BANGLADESH                   |<52 kg             |>=58 kg        | 2.8187500| 1.1761332| 6.7554864|
|0-24 months |NIH-Birth      |BANGLADESH                   |[52-58) kg         |>=58 kg        | 2.9659574| 1.1437460| 7.6913089|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<52 kg             |>=58 kg        | 3.4454609| 1.5926859| 7.4535732|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[52-58) kg         |>=58 kg        | 1.3976342| 0.5178396| 3.7721749|
|0-24 months |PROBIT         |BELARUS                      |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |PROBIT         |BELARUS                      |<52 kg             |>=58 kg        | 0.9649144| 0.7449442| 1.2498382|
|0-24 months |PROBIT         |BELARUS                      |[52-58) kg         |>=58 kg        | 0.8928420| 0.7536012| 1.0578100|
|0-24 months |SAS-CompFeed   |INDIA                        |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |SAS-CompFeed   |INDIA                        |<52 kg             |>=58 kg        | 1.1253245| 0.6248814| 2.0265530|
|0-24 months |SAS-CompFeed   |INDIA                        |[52-58) kg         |>=58 kg        | 0.5809539| 0.3504499| 0.9630689|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<52 kg             |>=58 kg        | 1.7325025| 1.2076006| 2.4855610|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[52-58) kg         |>=58 kg        | 1.1178523| 0.7462146| 1.6745768|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<52 kg             |>=58 kg        | 1.4176298| 1.2322757| 1.6308641|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[52-58) kg         |>=58 kg        | 1.1224625| 0.9730983| 1.2947531|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg            |NA             |  0.0142394|  0.0019340| 0.0265448|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg            |NA             |  0.0194654|  0.0045681| 0.0343627|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg            |NA             |  0.0976782|  0.0447291| 0.1506274|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg            |NA             |  0.0509589|  0.0235314| 0.0783864|
|0-24 months |PROBIT         |BELARUS                      |>=58 kg            |NA             | -0.0021813| -0.0056858| 0.0013231|
|0-24 months |SAS-CompFeed   |INDIA                        |>=58 kg            |NA             |  0.0046127| -0.0727406| 0.0819660|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             |  0.0073628| -0.0007377| 0.0154634|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg            |NA             |  0.0099731|  0.0046264| 0.0153198|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg            |NA             |  0.2974557| -0.0161459| 0.5142740|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg            |NA             |  0.3186054|  0.0297632| 0.5214585|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg            |NA             |  0.6156689|  0.1221060| 0.8317446|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg            |NA             |  0.5829388|  0.1719680| 0.7899356|
|0-24 months |PROBIT         |BELARUS                      |>=58 kg            |NA             | -0.0248480| -0.0631596| 0.0120830|
|0-24 months |SAS-CompFeed   |INDIA                        |>=58 kg            |NA             |  0.0312660| -0.6698026| 0.4379902|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             |  0.1103018| -0.0186180| 0.2229051|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg            |NA             |  0.1045820|  0.0470132| 0.1586730|
