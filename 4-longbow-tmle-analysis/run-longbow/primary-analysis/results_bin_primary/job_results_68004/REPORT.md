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

**Intervention Variable:** mbmi

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

|agecat      |studyid        |country                      |mbmi          | ever_swasted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:-------------|------------:|------:|-----:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Normal weight |            0|   2647|  3217|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Normal weight |            1|    116|  3217|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Underweight   |            0|    416|  3217|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Underweight   |            1|     38|  3217|
|0-24 months |JiVitA-3       |BANGLADESH                   |Normal weight |            0|  15561| 26836|
|0-24 months |JiVitA-3       |BANGLADESH                   |Normal weight |            1|    999| 26836|
|0-24 months |JiVitA-3       |BANGLADESH                   |Underweight   |            0|   9638| 26836|
|0-24 months |JiVitA-3       |BANGLADESH                   |Underweight   |            1|    638| 26836|
|0-24 months |LCNI-5         |MALAWI                       |Normal weight |            0|    686|   837|
|0-24 months |LCNI-5         |MALAWI                       |Normal weight |            1|      6|   837|
|0-24 months |LCNI-5         |MALAWI                       |Underweight   |            0|    143|   837|
|0-24 months |LCNI-5         |MALAWI                       |Underweight   |            1|      2|   837|
|0-24 months |MAL-ED         |BANGLADESH                   |Normal weight |            0|    209|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |Normal weight |            1|     13|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |Underweight   |            0|     24|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |Underweight   |            1|      8|   254|
|0-24 months |MAL-ED         |BRAZIL                       |Normal weight |            0|    207|   221|
|0-24 months |MAL-ED         |BRAZIL                       |Normal weight |            1|      4|   221|
|0-24 months |MAL-ED         |BRAZIL                       |Underweight   |            0|     10|   221|
|0-24 months |MAL-ED         |BRAZIL                       |Underweight   |            1|      0|   221|
|0-24 months |MAL-ED         |INDIA                        |Normal weight |            0|    175|   242|
|0-24 months |MAL-ED         |INDIA                        |Normal weight |            1|     18|   242|
|0-24 months |MAL-ED         |INDIA                        |Underweight   |            0|     41|   242|
|0-24 months |MAL-ED         |INDIA                        |Underweight   |            1|      8|   242|
|0-24 months |MAL-ED         |NEPAL                        |Normal weight |            0|    229|   238|
|0-24 months |MAL-ED         |NEPAL                        |Normal weight |            1|      9|   238|
|0-24 months |MAL-ED         |NEPAL                        |Underweight   |            0|      0|   238|
|0-24 months |MAL-ED         |NEPAL                        |Underweight   |            1|      0|   238|
|0-24 months |MAL-ED         |PERU                         |Normal weight |            0|    281|   290|
|0-24 months |MAL-ED         |PERU                         |Normal weight |            1|      4|   290|
|0-24 months |MAL-ED         |PERU                         |Underweight   |            0|      5|   290|
|0-24 months |MAL-ED         |PERU                         |Underweight   |            1|      0|   290|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Normal weight |            0|    247|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Normal weight |            1|     15|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Underweight   |            0|      8|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Underweight   |            1|      0|   270|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Normal weight |            0|    234|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Normal weight |            1|      8|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Underweight   |            0|     13|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Underweight   |            1|      1|   256|
|0-24 months |NIH-Birth      |BANGLADESH                   |Normal weight |            0|    448|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |Normal weight |            1|     72|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |Underweight   |            0|     77|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |Underweight   |            1|     27|   624|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Normal weight |            0|    632|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Normal weight |            1|     55|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Underweight   |            0|     57|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Underweight   |            1|     11|   755|
|0-24 months |PROBIT         |BELARUS                      |Normal weight |            0|  12054| 13728|
|0-24 months |PROBIT         |BELARUS                      |Normal weight |            1|   1151| 13728|
|0-24 months |PROBIT         |BELARUS                      |Underweight   |            0|    469| 13728|
|0-24 months |PROBIT         |BELARUS                      |Underweight   |            1|     54| 13728|
|0-24 months |PROVIDE        |BANGLADESH                   |Normal weight |            0|    512|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |Normal weight |            1|     30|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |Underweight   |            0|    116|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |Underweight   |            1|     11|   669|
|0-24 months |SAS-CompFeed   |INDIA                        |Normal weight |            0|    899|  1390|
|0-24 months |SAS-CompFeed   |INDIA                        |Normal weight |            1|    120|  1390|
|0-24 months |SAS-CompFeed   |INDIA                        |Underweight   |            0|    288|  1390|
|0-24 months |SAS-CompFeed   |INDIA                        |Underweight   |            1|     83|  1390|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight |            0|   2155|  2345|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight |            1|    152|  2345|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Underweight   |            0|     34|  2345|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Underweight   |            1|      4|  2345|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Normal weight |            0|   8415|  9797|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Normal weight |            1|    866|  9797|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Underweight   |            0|    437|  9797|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Underweight   |            1|     79|  9797|


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
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/43cc76f0-fe56-4322-ab5f-dd6a271a3b85/593fa488-6c52-4de5-8c2e-177079587a9b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/43cc76f0-fe56-4322-ab5f-dd6a271a3b85/593fa488-6c52-4de5-8c2e-177079587a9b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/43cc76f0-fe56-4322-ab5f-dd6a271a3b85/593fa488-6c52-4de5-8c2e-177079587a9b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/43cc76f0-fe56-4322-ab5f-dd6a271a3b85/593fa488-6c52-4de5-8c2e-177079587a9b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid      |country      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:------------|:------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc   |BURKINA FASO |Normal weight      |NA             | 0.0420875| 0.0295906| 0.0545843|
|0-24 months |iLiNS-Zinc   |BURKINA FASO |Underweight        |NA             | 0.0827007| 0.0567042| 0.1086973|
|0-24 months |JiVitA-3     |BANGLADESH   |Normal weight      |NA             | 0.0602759| 0.0561189| 0.0644329|
|0-24 months |JiVitA-3     |BANGLADESH   |Underweight        |NA             | 0.0622312| 0.0568740| 0.0675885|
|0-24 months |MAL-ED       |BANGLADESH   |Normal weight      |NA             | 0.0585586| 0.0276115| 0.0895057|
|0-24 months |MAL-ED       |BANGLADESH   |Underweight        |NA             | 0.2500000| 0.0996753| 0.4003247|
|0-24 months |MAL-ED       |INDIA        |Normal weight      |NA             | 0.0932642| 0.0521524| 0.1343761|
|0-24 months |MAL-ED       |INDIA        |Underweight        |NA             | 0.1632653| 0.0595626| 0.2669680|
|0-24 months |NIH-Birth    |BANGLADESH   |Normal weight      |NA             | 0.1390600| 0.1092657| 0.1688543|
|0-24 months |NIH-Birth    |BANGLADESH   |Underweight        |NA             | 0.2557101| 0.1680069| 0.3434132|
|0-24 months |NIH-Crypto   |BANGLADESH   |Normal weight      |NA             | 0.0812589| 0.0605918| 0.1019259|
|0-24 months |NIH-Crypto   |BANGLADESH   |Underweight        |NA             | 0.1589830| 0.0642712| 0.2536948|
|0-24 months |PROBIT       |BELARUS      |Normal weight      |NA             | 0.0871664| 0.0519731| 0.1223596|
|0-24 months |PROBIT       |BELARUS      |Underweight        |NA             | 0.1094229| 0.0615256| 0.1573203|
|0-24 months |PROVIDE      |BANGLADESH   |Normal weight      |NA             | 0.0549850| 0.0357811| 0.0741888|
|0-24 months |PROVIDE      |BANGLADESH   |Underweight        |NA             | 0.0888315| 0.0394050| 0.1382580|
|0-24 months |SAS-CompFeed |INDIA        |Normal weight      |NA             | 0.1189156| 0.0915960| 0.1462352|
|0-24 months |SAS-CompFeed |INDIA        |Underweight        |NA             | 0.2161177| 0.1712921| 0.2609432|
|0-24 months |ZVITAMBO     |ZIMBABWE     |Normal weight      |NA             | 0.0933687| 0.0874436| 0.0992939|
|0-24 months |ZVITAMBO     |ZIMBABWE     |Underweight        |NA             | 0.1496751| 0.1178500| 0.1815001|


### Parameter: E(Y)


|agecat      |studyid      |country      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:------------|:------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc   |BURKINA FASO |NA                 |NA             | 0.0478707| 0.0359037| 0.0598376|
|0-24 months |JiVitA-3     |BANGLADESH   |NA                 |NA             | 0.0610001| 0.0575046| 0.0644957|
|0-24 months |MAL-ED       |BANGLADESH   |NA                 |NA             | 0.0826772| 0.0487426| 0.1166117|
|0-24 months |MAL-ED       |INDIA        |NA                 |NA             | 0.1074380| 0.0683415| 0.1465345|
|0-24 months |NIH-Birth    |BANGLADESH   |NA                 |NA             | 0.1586538| 0.1299648| 0.1873429|
|0-24 months |NIH-Crypto   |BANGLADESH   |NA                 |NA             | 0.0874172| 0.0672569| 0.1075775|
|0-24 months |PROBIT       |BELARUS      |NA                 |NA             | 0.0877768| 0.0530196| 0.1225340|
|0-24 months |PROVIDE      |BANGLADESH   |NA                 |NA             | 0.0612855| 0.0430966| 0.0794744|
|0-24 months |SAS-CompFeed |INDIA        |NA                 |NA             | 0.1460432| 0.1145875| 0.1774988|
|0-24 months |ZVITAMBO     |ZIMBABWE     |NA                 |NA             | 0.0964581| 0.0906120| 0.1023042|


### Parameter: RR


|agecat      |studyid      |country      |intervention_level |baseline_level | estimate|  ci_lower| ci_upper|
|:-----------|:------------|:------------|:------------------|:--------------|--------:|---------:|--------:|
|0-24 months |iLiNS-Zinc   |BURKINA FASO |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|0-24 months |iLiNS-Zinc   |BURKINA FASO |Underweight        |Normal weight  | 1.964974| 1.3039077| 2.961193|
|0-24 months |JiVitA-3     |BANGLADESH   |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3     |BANGLADESH   |Underweight        |Normal weight  | 1.032439| 0.9318725| 1.143859|
|0-24 months |MAL-ED       |BANGLADESH   |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED       |BANGLADESH   |Underweight        |Normal weight  | 4.269231| 1.9172672| 9.506412|
|0-24 months |MAL-ED       |INDIA        |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED       |INDIA        |Underweight        |Normal weight  | 1.750567| 0.8079836| 3.792756|
|0-24 months |NIH-Birth    |BANGLADESH   |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|0-24 months |NIH-Birth    |BANGLADESH   |Underweight        |Normal weight  | 1.838847| 1.2273662| 2.754972|
|0-24 months |NIH-Crypto   |BANGLADESH   |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|0-24 months |NIH-Crypto   |BANGLADESH   |Underweight        |Normal weight  | 1.956501| 1.0226337| 3.743174|
|0-24 months |PROBIT       |BELARUS      |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|0-24 months |PROBIT       |BELARUS      |Underweight        |Normal weight  | 1.255335| 0.8147741| 1.934113|
|0-24 months |PROVIDE      |BANGLADESH   |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|0-24 months |PROVIDE      |BANGLADESH   |Underweight        |Normal weight  | 1.615560| 0.8379439| 3.114809|
|0-24 months |SAS-CompFeed |INDIA        |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|0-24 months |SAS-CompFeed |INDIA        |Underweight        |Normal weight  | 1.817404| 1.5221298| 2.169958|
|0-24 months |ZVITAMBO     |ZIMBABWE     |Normal weight      |Normal weight  | 1.000000| 1.0000000| 1.000000|
|0-24 months |ZVITAMBO     |ZIMBABWE     |Underweight        |Normal weight  | 1.603053| 1.2840307| 2.001339|


### Parameter: PAR


|agecat      |studyid      |country      |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:------------|:------------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |iLiNS-Zinc   |BURKINA FASO |Normal weight      |NA             | 0.0057832|  0.0018878| 0.0096786|
|0-24 months |JiVitA-3     |BANGLADESH   |Normal weight      |NA             | 0.0007242| -0.0016921| 0.0031405|
|0-24 months |MAL-ED       |BANGLADESH   |Normal weight      |NA             | 0.0241186|  0.0032585| 0.0449787|
|0-24 months |MAL-ED       |INDIA        |Normal weight      |NA             | 0.0141738| -0.0086912| 0.0370388|
|0-24 months |NIH-Birth    |BANGLADESH   |Normal weight      |NA             | 0.0195939|  0.0043077| 0.0348800|
|0-24 months |NIH-Crypto   |BANGLADESH   |Normal weight      |NA             | 0.0061584| -0.0023285| 0.0146452|
|0-24 months |PROBIT       |BELARUS      |Normal weight      |NA             | 0.0006105| -0.0010023| 0.0022232|
|0-24 months |PROVIDE      |BANGLADESH   |Normal weight      |NA             | 0.0063005| -0.0037022| 0.0163033|
|0-24 months |SAS-CompFeed |INDIA        |Normal weight      |NA             | 0.0271276|  0.0173109| 0.0369442|
|0-24 months |ZVITAMBO     |ZIMBABWE     |Normal weight      |NA             | 0.0030894|  0.0013959| 0.0047828|


### Parameter: PAF


|agecat      |studyid      |country      |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:------------|:------------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |iLiNS-Zinc   |BURKINA FASO |Normal weight      |NA             | 0.1208094|  0.0303268| 0.2028488|
|0-24 months |JiVitA-3     |BANGLADESH   |Normal weight      |NA             | 0.0118725| -0.0285167| 0.0506756|
|0-24 months |MAL-ED       |BANGLADESH   |Normal weight      |NA             | 0.2917203|  0.0252675| 0.4853356|
|0-24 months |MAL-ED       |INDIA        |Normal weight      |NA             | 0.1319251| -0.1037369| 0.3172702|
|0-24 months |NIH-Birth    |BANGLADESH   |Normal weight      |NA             | 0.1235008|  0.0235873| 0.2131905|
|0-24 months |NIH-Crypto   |BANGLADESH   |Normal weight      |NA             | 0.0704479| -0.0306846| 0.1616571|
|0-24 months |PROBIT       |BELARUS      |Normal weight      |NA             | 0.0069547| -0.0124773| 0.0260137|
|0-24 months |PROVIDE      |BANGLADESH   |Normal weight      |NA             | 0.1028065| -0.0733564| 0.2500570|
|0-24 months |SAS-CompFeed |INDIA        |Normal weight      |NA             | 0.1857504|  0.1275272| 0.2400882|
|0-24 months |ZVITAMBO     |ZIMBABWE     |Normal weight      |NA             | 0.0320282|  0.0143962| 0.0493447|
