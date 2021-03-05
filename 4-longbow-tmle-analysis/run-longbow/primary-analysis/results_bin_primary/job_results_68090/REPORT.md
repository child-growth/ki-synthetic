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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** mbmi

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |mbmi          | pers_wast| n_cell|     n|
|:-----------|:--------------|:----------------------------|:-------------|---------:|------:|-----:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Normal weight |         0|   1269|  1645|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Normal weight |         1|    146|  1645|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Underweight   |         0|    183|  1645|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Underweight   |         1|     47|  1645|
|0-24 months |JiVitA-3       |BANGLADESH                   |Normal weight |         0|   9213| 15759|
|0-24 months |JiVitA-3       |BANGLADESH                   |Normal weight |         1|    501| 15759|
|0-24 months |JiVitA-3       |BANGLADESH                   |Underweight   |         0|   5651| 15759|
|0-24 months |JiVitA-3       |BANGLADESH                   |Underweight   |         1|    394| 15759|
|0-24 months |LCNI-5         |MALAWI                       |Normal weight |         0|    595|   716|
|0-24 months |LCNI-5         |MALAWI                       |Normal weight |         1|      4|   716|
|0-24 months |LCNI-5         |MALAWI                       |Underweight   |         0|    115|   716|
|0-24 months |LCNI-5         |MALAWI                       |Underweight   |         1|      2|   716|
|0-24 months |MAL-ED         |BANGLADESH                   |Normal weight |         0|    208|   248|
|0-24 months |MAL-ED         |BANGLADESH                   |Normal weight |         1|      8|   248|
|0-24 months |MAL-ED         |BANGLADESH                   |Underweight   |         0|     27|   248|
|0-24 months |MAL-ED         |BANGLADESH                   |Underweight   |         1|      5|   248|
|0-24 months |MAL-ED         |BRAZIL                       |Normal weight |         0|    204|   216|
|0-24 months |MAL-ED         |BRAZIL                       |Normal weight |         1|      2|   216|
|0-24 months |MAL-ED         |BRAZIL                       |Underweight   |         0|     10|   216|
|0-24 months |MAL-ED         |BRAZIL                       |Underweight   |         1|      0|   216|
|0-24 months |MAL-ED         |INDIA                        |Normal weight |         0|    177|   240|
|0-24 months |MAL-ED         |INDIA                        |Normal weight |         1|     14|   240|
|0-24 months |MAL-ED         |INDIA                        |Underweight   |         0|     42|   240|
|0-24 months |MAL-ED         |INDIA                        |Underweight   |         1|      7|   240|
|0-24 months |MAL-ED         |NEPAL                        |Normal weight |         0|    234|   238|
|0-24 months |MAL-ED         |NEPAL                        |Normal weight |         1|      4|   238|
|0-24 months |MAL-ED         |NEPAL                        |Underweight   |         0|      0|   238|
|0-24 months |MAL-ED         |NEPAL                        |Underweight   |         1|      0|   238|
|0-24 months |MAL-ED         |PERU                         |Normal weight |         0|    277|   283|
|0-24 months |MAL-ED         |PERU                         |Normal weight |         1|      1|   283|
|0-24 months |MAL-ED         |PERU                         |Underweight   |         0|      5|   283|
|0-24 months |MAL-ED         |PERU                         |Underweight   |         1|      0|   283|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Normal weight |         0|    256|   266|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Normal weight |         1|      2|   266|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Underweight   |         0|      8|   266|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Underweight   |         1|      0|   266|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Normal weight |         0|    239|   253|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Normal weight |         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Underweight   |         0|     14|   253|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Underweight   |         1|      0|   253|
|0-24 months |NIH-Birth      |BANGLADESH                   |Normal weight |         0|    410|   534|
|0-24 months |NIH-Birth      |BANGLADESH                   |Normal weight |         1|     29|   534|
|0-24 months |NIH-Birth      |BANGLADESH                   |Underweight   |         0|     77|   534|
|0-24 months |NIH-Birth      |BANGLADESH                   |Underweight   |         1|     18|   534|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Normal weight |         0|    645|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Normal weight |         1|     18|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Underweight   |         0|     59|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Underweight   |         1|      8|   730|
|0-24 months |PROBIT         |BELARUS                      |Normal weight |         0|  13101| 13714|
|0-24 months |PROBIT         |BELARUS                      |Normal weight |         1|     91| 13714|
|0-24 months |PROBIT         |BELARUS                      |Underweight   |         0|    517| 13714|
|0-24 months |PROBIT         |BELARUS                      |Underweight   |         1|      5| 13714|
|0-24 months |PROVIDE        |BANGLADESH                   |Normal weight |         0|    515|   640|
|0-24 months |PROVIDE        |BANGLADESH                   |Normal weight |         1|      7|   640|
|0-24 months |PROVIDE        |BANGLADESH                   |Underweight   |         0|    110|   640|
|0-24 months |PROVIDE        |BANGLADESH                   |Underweight   |         1|      8|   640|
|0-24 months |SAS-CompFeed   |INDIA                        |Normal weight |         0|    855|  1257|
|0-24 months |SAS-CompFeed   |INDIA                        |Normal weight |         1|     67|  1257|
|0-24 months |SAS-CompFeed   |INDIA                        |Underweight   |         0|    297|  1257|
|0-24 months |SAS-CompFeed   |INDIA                        |Underweight   |         1|     38|  1257|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight |         0|   2028|  2120|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight |         1|     57|  2120|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Underweight   |         0|     35|  2120|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Underweight   |         1|      0|  2120|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Normal weight |         0|   7609|  8157|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Normal weight |         1|    120|  8157|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Underweight   |         0|    408|  8157|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Underweight   |         1|     20|  8157|


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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/8f57fb2e-8c3a-4a86-b244-481546f05b94/ab26e557-1ebe-4800-98f5-8255ac195ab9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8f57fb2e-8c3a-4a86-b244-481546f05b94/ab26e557-1ebe-4800-98f5-8255ac195ab9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8f57fb2e-8c3a-4a86-b244-481546f05b94/ab26e557-1ebe-4800-98f5-8255ac195ab9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8f57fb2e-8c3a-4a86-b244-481546f05b94/ab26e557-1ebe-4800-98f5-8255ac195ab9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid      |country      |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:------------|:------------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |iLiNS-Zinc   |BURKINA FASO |Normal weight      |NA             | 0.1035185|  0.0784227| 0.1286143|
|0-24 months |iLiNS-Zinc   |BURKINA FASO |Underweight        |NA             | 0.2039840|  0.0874474| 0.3205206|
|0-24 months |JiVitA-3     |BANGLADESH   |Normal weight      |NA             | 0.0514035|  0.0463016| 0.0565053|
|0-24 months |JiVitA-3     |BANGLADESH   |Underweight        |NA             | 0.0653940|  0.0589770| 0.0718111|
|0-24 months |MAL-ED       |BANGLADESH   |Normal weight      |NA             | 0.0370370|  0.0118010| 0.0622731|
|0-24 months |MAL-ED       |BANGLADESH   |Underweight        |NA             | 0.1562500|  0.0301929| 0.2823071|
|0-24 months |MAL-ED       |INDIA        |Normal weight      |NA             | 0.0732984|  0.0362598| 0.1103371|
|0-24 months |MAL-ED       |INDIA        |Underweight        |NA             | 0.1428571|  0.0446746| 0.2410397|
|0-24 months |NIH-Birth    |BANGLADESH   |Normal weight      |NA             | 0.0658604|  0.0425832| 0.0891376|
|0-24 months |NIH-Birth    |BANGLADESH   |Underweight        |NA             | 0.1888669|  0.1090938| 0.2686401|
|0-24 months |NIH-Crypto   |BANGLADESH   |Normal weight      |NA             | 0.0271493|  0.0147701| 0.0395285|
|0-24 months |NIH-Crypto   |BANGLADESH   |Underweight        |NA             | 0.1194030|  0.0417059| 0.1971000|
|0-24 months |PROBIT       |BELARUS      |Normal weight      |NA             | 0.0068981|  0.0037765| 0.0100197|
|0-24 months |PROBIT       |BELARUS      |Underweight        |NA             | 0.0095785| -0.0034154| 0.0225725|
|0-24 months |PROVIDE      |BANGLADESH   |Normal weight      |NA             | 0.0134100|  0.0035350| 0.0232849|
|0-24 months |PROVIDE      |BANGLADESH   |Underweight        |NA             | 0.0677966|  0.0224018| 0.1131914|
|0-24 months |SAS-CompFeed |INDIA        |Normal weight      |NA             | 0.0744045|  0.0504081| 0.0984008|
|0-24 months |SAS-CompFeed |INDIA        |Underweight        |NA             | 0.1075385|  0.0654231| 0.1496538|
|0-24 months |ZVITAMBO     |ZIMBABWE     |Normal weight      |NA             | 0.0154980|  0.0127428| 0.0182531|
|0-24 months |ZVITAMBO     |ZIMBABWE     |Underweight        |NA             | 0.0532862|  0.0308048| 0.0757677|


### Parameter: E(Y)


|agecat      |studyid      |country      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:------------|:------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc   |BURKINA FASO |NA                 |NA             | 0.1173252| 0.0921861| 0.1424644|
|0-24 months |JiVitA-3     |BANGLADESH   |NA                 |NA             | 0.0567929| 0.0526539| 0.0609319|
|0-24 months |MAL-ED       |BANGLADESH   |NA                 |NA             | 0.0524194| 0.0246252| 0.0802135|
|0-24 months |MAL-ED       |INDIA        |NA                 |NA             | 0.0875000| 0.0516764| 0.1233236|
|0-24 months |NIH-Birth    |BANGLADESH   |NA                 |NA             | 0.0880150| 0.0639627| 0.1120673|
|0-24 months |NIH-Crypto   |BANGLADESH   |NA                 |NA             | 0.0356164| 0.0221630| 0.0490699|
|0-24 months |PROBIT       |BELARUS      |NA                 |NA             | 0.0070001| 0.0038704| 0.0101299|
|0-24 months |PROVIDE      |BANGLADESH   |NA                 |NA             | 0.0234375| 0.0117074| 0.0351676|
|0-24 months |SAS-CompFeed |INDIA        |NA                 |NA             | 0.0835322| 0.0594080| 0.1076564|
|0-24 months |ZVITAMBO     |ZIMBABWE     |NA                 |NA             | 0.0171632| 0.0143445| 0.0199819|


### Parameter: RR


|agecat      |studyid      |country      |intervention_level |baseline_level | estimate|  ci_lower|  ci_upper|
|:-----------|:------------|:------------|:------------------|:--------------|--------:|---------:|---------:|
|0-24 months |iLiNS-Zinc   |BURKINA FASO |Normal weight      |Normal weight  | 1.000000| 1.0000000|  1.000000|
|0-24 months |iLiNS-Zinc   |BURKINA FASO |Underweight        |Normal weight  | 1.970507| 1.0069084|  3.856259|
|0-24 months |JiVitA-3     |BANGLADESH   |Normal weight      |Normal weight  | 1.000000| 1.0000000|  1.000000|
|0-24 months |JiVitA-3     |BANGLADESH   |Underweight        |Normal weight  | 1.272172| 1.1150368|  1.451450|
|0-24 months |MAL-ED       |BANGLADESH   |Normal weight      |Normal weight  | 1.000000| 1.0000000|  1.000000|
|0-24 months |MAL-ED       |BANGLADESH   |Underweight        |Normal weight  | 4.218750| 1.4674655| 12.128293|
|0-24 months |MAL-ED       |INDIA        |Normal weight      |Normal weight  | 1.000000| 1.0000000|  1.000000|
|0-24 months |MAL-ED       |INDIA        |Underweight        |Normal weight  | 1.948980| 0.8304871|  4.573848|
|0-24 months |NIH-Birth    |BANGLADESH   |Normal weight      |Normal weight  | 1.000000| 1.0000000|  1.000000|
|0-24 months |NIH-Birth    |BANGLADESH   |Underweight        |Normal weight  | 2.867685| 1.6512067|  4.980367|
|0-24 months |NIH-Crypto   |BANGLADESH   |Normal weight      |Normal weight  | 1.000000| 1.0000000|  1.000000|
|0-24 months |NIH-Crypto   |BANGLADESH   |Underweight        |Normal weight  | 4.398010| 1.9869244|  9.734890|
|0-24 months |PROBIT       |BELARUS      |Normal weight      |Normal weight  | 1.000000| 1.0000000|  1.000000|
|0-24 months |PROBIT       |BELARUS      |Underweight        |Normal weight  | 1.388573| 0.3622102|  5.323249|
|0-24 months |PROVIDE      |BANGLADESH   |Normal weight      |Normal weight  | 1.000000| 1.0000000|  1.000000|
|0-24 months |PROVIDE      |BANGLADESH   |Underweight        |Normal weight  | 5.055690| 1.8686708| 13.678173|
|0-24 months |SAS-CompFeed |INDIA        |Normal weight      |Normal weight  | 1.000000| 1.0000000|  1.000000|
|0-24 months |SAS-CompFeed |INDIA        |Underweight        |Normal weight  | 1.445323| 0.9914735|  2.106922|
|0-24 months |ZVITAMBO     |ZIMBABWE     |Normal weight      |Normal weight  | 1.000000| 1.0000000|  1.000000|
|0-24 months |ZVITAMBO     |ZIMBABWE     |Underweight        |Normal weight  | 3.438275| 2.1754317|  5.434202|


### Parameter: PAR


|agecat      |studyid      |country      |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:------------|:------------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |iLiNS-Zinc   |BURKINA FASO |Normal weight      |NA             | 0.0138067| -0.0039902| 0.0316036|
|0-24 months |JiVitA-3     |BANGLADESH   |Normal weight      |NA             | 0.0053895|  0.0024253| 0.0083537|
|0-24 months |MAL-ED       |BANGLADESH   |Normal weight      |NA             | 0.0153823| -0.0019384| 0.0327030|
|0-24 months |MAL-ED       |INDIA        |Normal weight      |NA             | 0.0142016| -0.0075159| 0.0359190|
|0-24 months |NIH-Birth    |BANGLADESH   |Normal weight      |NA             | 0.0221545|  0.0069108| 0.0373983|
|0-24 months |NIH-Crypto   |BANGLADESH   |Normal weight      |NA             | 0.0084671|  0.0009917| 0.0159425|
|0-24 months |PROBIT       |BELARUS      |Normal weight      |NA             | 0.0001020| -0.0003837| 0.0005878|
|0-24 months |PROVIDE      |BANGLADESH   |Normal weight      |NA             | 0.0100275|  0.0013074| 0.0187476|
|0-24 months |SAS-CompFeed |INDIA        |Normal weight      |NA             | 0.0091278| -0.0002050| 0.0184605|
|0-24 months |ZVITAMBO     |ZIMBABWE     |Normal weight      |NA             | 0.0016652|  0.0005956| 0.0027349|


### Parameter: PAF


|agecat      |studyid      |country      |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:------------|:------------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |iLiNS-Zinc   |BURKINA FASO |Normal weight      |NA             | 0.1176789| -0.0394840| 0.2510799|
|0-24 months |JiVitA-3     |BANGLADESH   |Normal weight      |NA             | 0.0948971|  0.0406537| 0.1460734|
|0-24 months |MAL-ED       |BANGLADESH   |Normal weight      |NA             | 0.2934473| -0.0722695| 0.5344298|
|0-24 months |MAL-ED       |INDIA        |Normal weight      |NA             | 0.1623037| -0.1164315| 0.3714481|
|0-24 months |NIH-Birth    |BANGLADESH   |Normal weight      |NA             | 0.2517134|  0.0718323| 0.3967331|
|0-24 months |NIH-Crypto   |BANGLADESH   |Normal weight      |NA             | 0.2377306|  0.0208001| 0.4066026|
|0-24 months |PROBIT       |BELARUS      |Normal weight      |NA             | 0.0145748| -0.0569888| 0.0812932|
|0-24 months |PROVIDE      |BANGLADESH   |Normal weight      |NA             | 0.4278416|  0.0226926| 0.6650335|
|0-24 months |SAS-CompFeed |INDIA        |Normal weight      |NA             | 0.1092723| -0.0073879| 0.2124227|
|0-24 months |ZVITAMBO     |ZIMBABWE     |Normal weight      |NA             | 0.0970227|  0.0345906| 0.1554174|
