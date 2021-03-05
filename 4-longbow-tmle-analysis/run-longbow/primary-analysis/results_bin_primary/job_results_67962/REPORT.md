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

|agecat      |studyid        |country                      |mwtkg      | ever_sstunted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:----------|-------------:|------:|-----:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg    |             0|    871|  3216|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg    |             1|     66|  3216|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<52 kg     |             0|   1032|  3216|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<52 kg     |             1|    169|  3216|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[52-58) kg |             0|    975|  3216|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[52-58) kg |             1|    103|  3216|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg    |             0|    575| 27196|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg    |             1|     94| 27196|
|0-24 months |JiVitA-3       |BANGLADESH                   |<52 kg     |             0|  20106| 27196|
|0-24 months |JiVitA-3       |BANGLADESH                   |<52 kg     |             1|   4647| 27196|
|0-24 months |JiVitA-3       |BANGLADESH                   |[52-58) kg |             0|   1498| 27196|
|0-24 months |JiVitA-3       |BANGLADESH                   |[52-58) kg |             1|    276| 27196|
|0-24 months |LCNI-5         |MALAWI                       |>=58 kg    |             0|    102|   838|
|0-24 months |LCNI-5         |MALAWI                       |>=58 kg    |             1|     12|   838|
|0-24 months |LCNI-5         |MALAWI                       |<52 kg     |             0|    370|   838|
|0-24 months |LCNI-5         |MALAWI                       |<52 kg     |             1|    134|   838|
|0-24 months |LCNI-5         |MALAWI                       |[52-58) kg |             0|    189|   838|
|0-24 months |LCNI-5         |MALAWI                       |[52-58) kg |             1|     31|   838|
|0-24 months |MAL-ED         |BANGLADESH                   |>=58 kg    |             0|     45|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |>=58 kg    |             1|      3|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |<52 kg     |             0|    113|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |<52 kg     |             1|     49|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |[52-58) kg |             0|     40|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |[52-58) kg |             1|      4|   254|
|0-24 months |MAL-ED         |BRAZIL                       |>=58 kg    |             0|    132|   221|
|0-24 months |MAL-ED         |BRAZIL                       |>=58 kg    |             1|     11|   221|
|0-24 months |MAL-ED         |BRAZIL                       |<52 kg     |             0|     38|   221|
|0-24 months |MAL-ED         |BRAZIL                       |<52 kg     |             1|      4|   221|
|0-24 months |MAL-ED         |BRAZIL                       |[52-58) kg |             0|     30|   221|
|0-24 months |MAL-ED         |BRAZIL                       |[52-58) kg |             1|      6|   221|
|0-24 months |MAL-ED         |INDIA                        |>=58 kg    |             0|     36|   242|
|0-24 months |MAL-ED         |INDIA                        |>=58 kg    |             1|      6|   242|
|0-24 months |MAL-ED         |INDIA                        |<52 kg     |             0|    112|   242|
|0-24 months |MAL-ED         |INDIA                        |<52 kg     |             1|     38|   242|
|0-24 months |MAL-ED         |INDIA                        |[52-58) kg |             0|     36|   242|
|0-24 months |MAL-ED         |INDIA                        |[52-58) kg |             1|     14|   242|
|0-24 months |MAL-ED         |NEPAL                        |>=58 kg    |             0|     75|   238|
|0-24 months |MAL-ED         |NEPAL                        |>=58 kg    |             1|      5|   238|
|0-24 months |MAL-ED         |NEPAL                        |<52 kg     |             0|     61|   238|
|0-24 months |MAL-ED         |NEPAL                        |<52 kg     |             1|     15|   238|
|0-24 months |MAL-ED         |NEPAL                        |[52-58) kg |             0|     81|   238|
|0-24 months |MAL-ED         |NEPAL                        |[52-58) kg |             1|      1|   238|
|0-24 months |MAL-ED         |PERU                         |>=58 kg    |             0|     87|   290|
|0-24 months |MAL-ED         |PERU                         |>=58 kg    |             1|     17|   290|
|0-24 months |MAL-ED         |PERU                         |<52 kg     |             0|     87|   290|
|0-24 months |MAL-ED         |PERU                         |<52 kg     |             1|     28|   290|
|0-24 months |MAL-ED         |PERU                         |[52-58) kg |             0|     53|   290|
|0-24 months |MAL-ED         |PERU                         |[52-58) kg |             1|     18|   290|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=58 kg    |             0|    154|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=58 kg    |             1|     40|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<52 kg     |             0|     16|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<52 kg     |             1|     14|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[52-58) kg |             0|     30|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[52-58) kg |             1|     16|   270|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg    |             0|     51|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg    |             1|     47|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<52 kg     |             0|     38|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<52 kg     |             1|     61|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[52-58) kg |             0|     31|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[52-58) kg |             1|     28|   256|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg    |             0|     64|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg    |             1|     18|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |<52 kg     |             0|    295|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |<52 kg     |             1|    158|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |[52-58) kg |             0|     74|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |[52-58) kg |             1|     20|   629|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg    |             0|    182|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg    |             1|     10|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<52 kg     |             0|    338|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<52 kg     |             1|     68|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[52-58) kg |             0|    136|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[52-58) kg |             1|     21|   755|
|0-24 months |PROBIT         |BELARUS                      |>=58 kg    |             0|  10014| 13772|
|0-24 months |PROBIT         |BELARUS                      |>=58 kg    |             1|    265| 13772|
|0-24 months |PROBIT         |BELARUS                      |<52 kg     |             0|   1088| 13772|
|0-24 months |PROBIT         |BELARUS                      |<52 kg     |             1|     43| 13772|
|0-24 months |PROBIT         |BELARUS                      |[52-58) kg |             0|   2294| 13772|
|0-24 months |PROBIT         |BELARUS                      |[52-58) kg |             1|     68| 13772|
|0-24 months |PROVIDE        |BANGLADESH                   |>=58 kg    |             0|    112|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |>=58 kg    |             1|      8|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |<52 kg     |             0|    356|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |<52 kg     |             1|     76|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |[52-58) kg |             0|    107|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |[52-58) kg |             1|     10|   669|
|0-24 months |SAS-CompFeed   |INDIA                        |>=58 kg    |             0|     96|  1515|
|0-24 months |SAS-CompFeed   |INDIA                        |>=58 kg    |             1|     17|  1515|
|0-24 months |SAS-CompFeed   |INDIA                        |<52 kg     |             0|    725|  1515|
|0-24 months |SAS-CompFeed   |INDIA                        |<52 kg     |             1|    435|  1515|
|0-24 months |SAS-CompFeed   |INDIA                        |[52-58) kg |             0|    193|  1515|
|0-24 months |SAS-CompFeed   |INDIA                        |[52-58) kg |             1|     49|  1515|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg    |             0|   1351|  2352|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg    |             1|    125|  2352|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<52 kg     |             0|    333|  2352|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<52 kg     |             1|     60|  2352|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[52-58) kg |             0|    435|  2352|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[52-58) kg |             1|     48|  2352|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg    |             0|   4997| 11204|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg    |             1|    846| 11204|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<52 kg     |             0|   1786| 11204|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<52 kg     |             1|    622| 11204|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[52-58) kg |             0|   2364| 11204|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[52-58) kg |             1|    589| 11204|


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

* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
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
![](/tmp/7ba18675-0ace-4306-ad56-64be45fdb5ed/1e393836-2091-4a62-b0d0-95f968d95f12/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7ba18675-0ace-4306-ad56-64be45fdb5ed/1e393836-2091-4a62-b0d0-95f968d95f12/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7ba18675-0ace-4306-ad56-64be45fdb5ed/1e393836-2091-4a62-b0d0-95f968d95f12/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7ba18675-0ace-4306-ad56-64be45fdb5ed/1e393836-2091-4a62-b0d0-95f968d95f12/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg            |NA             | 0.0713597| 0.0471043| 0.0956150|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<52 kg             |NA             | 0.1404515| 0.1145690| 0.1663340|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[52-58) kg         |NA             | 0.0947113| 0.0661093| 0.1233133|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg            |NA             | 0.1689859| 0.1450359| 0.1929358|
|0-24 months |JiVitA-3       |BANGLADESH                   |<52 kg             |NA             | 0.1863150| 0.1805006| 0.1921294|
|0-24 months |JiVitA-3       |BANGLADESH                   |[52-58) kg         |NA             | 0.1703063| 0.1516006| 0.1890120|
|0-24 months |LCNI-5         |MALAWI                       |>=58 kg            |NA             | 0.1005729| 0.0434905| 0.1576553|
|0-24 months |LCNI-5         |MALAWI                       |<52 kg             |NA             | 0.2670721| 0.2284696| 0.3056746|
|0-24 months |LCNI-5         |MALAWI                       |[52-58) kg         |NA             | 0.1392915| 0.0930392| 0.1855438|
|0-24 months |MAL-ED         |INDIA                        |>=58 kg            |NA             | 0.1428571| 0.0368097| 0.2489046|
|0-24 months |MAL-ED         |INDIA                        |<52 kg             |NA             | 0.2533333| 0.1835886| 0.3230780|
|0-24 months |MAL-ED         |INDIA                        |[52-58) kg         |NA             | 0.2800000| 0.1552882| 0.4047118|
|0-24 months |MAL-ED         |PERU                         |>=58 kg            |NA             | 0.1374666| 0.0728316| 0.2021016|
|0-24 months |MAL-ED         |PERU                         |<52 kg             |NA             | 0.2260693| 0.1506489| 0.3014898|
|0-24 months |MAL-ED         |PERU                         |[52-58) kg         |NA             | 0.2413613| 0.1351336| 0.3475890|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=58 kg            |NA             | 0.2079437| 0.1504443| 0.2654431|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<52 kg             |NA             | 0.4599042| 0.2709423| 0.6488661|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[52-58) kg         |NA             | 0.3451404| 0.2006480| 0.4896328|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             | 0.4696253| 0.3691989| 0.5700517|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<52 kg             |NA             | 0.6013577| 0.5050337| 0.6976817|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[52-58) kg         |NA             | 0.4562370| 0.3272265| 0.5852476|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg            |NA             | 0.2086370| 0.1137905| 0.3034836|
|0-24 months |NIH-Birth      |BANGLADESH                   |<52 kg             |NA             | 0.3532396| 0.3090393| 0.3974399|
|0-24 months |NIH-Birth      |BANGLADESH                   |[52-58) kg         |NA             | 0.2032388| 0.1224132| 0.2840644|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg            |NA             | 0.0616700| 0.0248176| 0.0985223|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<52 kg             |NA             | 0.1600967| 0.1244616| 0.1957317|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[52-58) kg         |NA             | 0.1347465| 0.0805556| 0.1889373|
|0-24 months |PROBIT         |BELARUS                      |>=58 kg            |NA             | 0.0259550| 0.0185615| 0.0333485|
|0-24 months |PROBIT         |BELARUS                      |<52 kg             |NA             | 0.0362818| 0.0216449| 0.0509186|
|0-24 months |PROBIT         |BELARUS                      |[52-58) kg         |NA             | 0.0299464| 0.0191808| 0.0407119|
|0-24 months |PROVIDE        |BANGLADESH                   |>=58 kg            |NA             | 0.0666667| 0.0220029| 0.1113304|
|0-24 months |PROVIDE        |BANGLADESH                   |<52 kg             |NA             | 0.1759259| 0.1399941| 0.2118577|
|0-24 months |PROVIDE        |BANGLADESH                   |[52-58) kg         |NA             | 0.0854701| 0.0347726| 0.1361675|
|0-24 months |SAS-CompFeed   |INDIA                        |>=58 kg            |NA             | 0.2016896| 0.1326257| 0.2707535|
|0-24 months |SAS-CompFeed   |INDIA                        |<52 kg             |NA             | 0.3636297| 0.3271629| 0.4000964|
|0-24 months |SAS-CompFeed   |INDIA                        |[52-58) kg         |NA             | 0.2061081| 0.1311438| 0.2810724|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             | 0.0857282| 0.0712952| 0.1001612|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<52 kg             |NA             | 0.1585610| 0.1219129| 0.1952090|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[52-58) kg         |NA             | 0.1016331| 0.0731761| 0.1300901|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg            |NA             | 0.1447161| 0.1355923| 0.1538398|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<52 kg             |NA             | 0.2591148| 0.2411070| 0.2771225|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[52-58) kg         |NA             | 0.2020359| 0.1872701| 0.2168017|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.1050995| 0.0855497| 0.1246493|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.1844757| 0.1788759| 0.1900754|
|0-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.2112172| 0.1835650| 0.2388693|
|0-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.2396694| 0.1857746| 0.2935643|
|0-24 months |MAL-ED         |PERU                         |NA                 |NA             | 0.2172414| 0.1696986| 0.2647841|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.2592593| 0.2068905| 0.3116280|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.5312500| 0.4700011| 0.5924989|
|0-24 months |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.3116057| 0.2753823| 0.3478292|
|0-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.1311258| 0.1070332| 0.1552185|
|0-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.0273018| 0.0201306| 0.0344729|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.1405082| 0.1141551| 0.1668613|
|0-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.3306931| 0.3017014| 0.3596847|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0990646| 0.0869885| 0.1111408|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.1835951| 0.1764261| 0.1907642|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<52 kg             |>=58 kg        | 1.9682201| 1.4408114| 2.688687|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[52-58) kg         |>=58 kg        | 1.3272387| 0.9166779| 1.921681|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |<52 kg             |>=58 kg        | 1.1025479| 0.9568936| 1.270373|
|0-24 months |JiVitA-3       |BANGLADESH                   |[52-58) kg         |>=58 kg        | 1.0078138| 0.8429743| 1.204887|
|0-24 months |LCNI-5         |MALAWI                       |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |LCNI-5         |MALAWI                       |<52 kg             |>=58 kg        | 2.6555089| 1.4785038| 4.769502|
|0-24 months |LCNI-5         |MALAWI                       |[52-58) kg         |>=58 kg        | 1.3849807| 0.7173544| 2.673952|
|0-24 months |MAL-ED         |INDIA                        |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |INDIA                        |<52 kg             |>=58 kg        | 1.7733333| 0.8034193| 3.914159|
|0-24 months |MAL-ED         |INDIA                        |[52-58) kg         |>=58 kg        | 1.9600000| 0.8246831| 4.658274|
|0-24 months |MAL-ED         |PERU                         |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |PERU                         |<52 kg             |>=58 kg        | 1.6445406| 0.9219922| 2.933337|
|0-24 months |MAL-ED         |PERU                         |[52-58) kg         |>=58 kg        | 1.7557821| 0.9189230| 3.354765|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<52 kg             |>=58 kg        | 2.2116766| 1.3468752| 3.631749|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[52-58) kg         |>=58 kg        | 1.6597781| 1.0049407| 2.741319|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<52 kg             |>=58 kg        | 1.2805053| 0.9803132| 1.672622|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[52-58) kg         |>=58 kg        | 0.9714915| 0.6808347| 1.386233|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Birth      |BANGLADESH                   |<52 kg             |>=58 kg        | 1.6930822| 1.0564861| 2.713265|
|0-24 months |NIH-Birth      |BANGLADESH                   |[52-58) kg         |>=58 kg        | 0.9741263| 0.5326902| 1.781377|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<52 kg             |>=58 kg        | 2.5960234| 1.3733891| 4.907085|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[52-58) kg         |>=58 kg        | 2.1849608| 1.0631957| 4.490287|
|0-24 months |PROBIT         |BELARUS                      |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROBIT         |BELARUS                      |<52 kg             |>=58 kg        | 1.3978713| 0.9466159| 2.064242|
|0-24 months |PROBIT         |BELARUS                      |[52-58) kg         |>=58 kg        | 1.1537798| 0.8715652| 1.527376|
|0-24 months |PROVIDE        |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROVIDE        |BANGLADESH                   |<52 kg             |>=58 kg        | 2.6388889| 1.3099126| 5.316183|
|0-24 months |PROVIDE        |BANGLADESH                   |[52-58) kg         |>=58 kg        | 1.2820513| 0.5239569| 3.137005|
|0-24 months |SAS-CompFeed   |INDIA                        |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-CompFeed   |INDIA                        |<52 kg             |>=58 kg        | 1.8029177| 1.2366372| 2.628509|
|0-24 months |SAS-CompFeed   |INDIA                        |[52-58) kg         |>=58 kg        | 1.0219077| 0.6001578| 1.740035|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<52 kg             |>=58 kg        | 1.8495780| 1.3892255| 2.462479|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[52-58) kg         |>=58 kg        | 1.1855271| 0.8550220| 1.643788|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg            |>=58 kg        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<52 kg             |>=58 kg        | 1.7905045| 1.6302292| 1.966537|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[52-58) kg         |>=58 kg        | 1.3960848| 1.2677534| 1.537407|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg            |NA             | 0.0337398|  0.0180756| 0.0494041|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg            |NA             | 0.0154898| -0.0078571| 0.0388367|
|0-24 months |LCNI-5         |MALAWI                       |>=58 kg            |NA             | 0.1106443|  0.0545424| 0.1667462|
|0-24 months |MAL-ED         |INDIA                        |>=58 kg            |NA             | 0.0968123| -0.0044158| 0.1980403|
|0-24 months |MAL-ED         |PERU                         |>=58 kg            |NA             | 0.0797748|  0.0219180| 0.1376317|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=58 kg            |NA             | 0.0513156|  0.0147262| 0.0879049|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             | 0.0616247| -0.0175844| 0.1408338|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg            |NA             | 0.1029687|  0.0128788| 0.1930587|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg            |NA             | 0.0694559|  0.0326943| 0.1062174|
|0-24 months |PROBIT         |BELARUS                      |>=58 kg            |NA             | 0.0013468| -0.0002072| 0.0029007|
|0-24 months |PROVIDE        |BANGLADESH                   |>=58 kg            |NA             | 0.0738416|  0.0294153| 0.1182678|
|0-24 months |SAS-CompFeed   |INDIA                        |>=58 kg            |NA             | 0.1290035|  0.0498653| 0.2081417|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             | 0.0133364|  0.0034175| 0.0232554|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg            |NA             | 0.0388791|  0.0318364| 0.0459217|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg            |NA             | 0.3210276|  0.1444319| 0.4611726|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg            |NA             | 0.0839666| -0.0517487| 0.2021695|
|0-24 months |LCNI-5         |MALAWI                       |>=58 kg            |NA             | 0.5238415|  0.1780346| 0.7241648|
|0-24 months |MAL-ED         |INDIA                        |>=58 kg            |NA             | 0.4039409| -0.1982678| 0.7034999|
|0-24 months |MAL-ED         |PERU                         |>=58 kg            |NA             | 0.3672174|  0.0495659| 0.5787043|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=58 kg            |NA             | 0.1979314|  0.0465331| 0.3252896|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             | 0.1159994| -0.0472180| 0.2537781|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg            |NA             | 0.3304455| -0.0311446| 0.5652373|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg            |NA             | 0.5296886|  0.1732286| 0.7324620|
|0-24 months |PROBIT         |BELARUS                      |>=58 kg            |NA             | 0.0493290| -0.0113686| 0.1063839|
|0-24 months |PROVIDE        |BANGLADESH                   |>=58 kg            |NA             | 0.5255319|  0.1015731| 0.7494287|
|0-24 months |SAS-CompFeed   |INDIA                        |>=58 kg            |NA             | 0.3901004|  0.1196287| 0.5774766|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             | 0.1346237|  0.0297331| 0.2281750|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg            |NA             | 0.2117653|  0.1730516| 0.2486666|
