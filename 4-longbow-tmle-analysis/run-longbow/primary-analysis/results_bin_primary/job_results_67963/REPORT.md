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

|agecat      |studyid        |country                      |mbmi          | ever_sstunted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:-------------|-------------:|------:|-----:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Normal weight |             0|   2480|  3216|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Normal weight |             1|    282|  3216|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Underweight   |             0|    398|  3216|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Underweight   |             1|     56|  3216|
|0-24 months |JiVitA-3       |BANGLADESH                   |Normal weight |             0|  13500| 27105|
|0-24 months |JiVitA-3       |BANGLADESH                   |Normal weight |             1|   3222| 27105|
|0-24 months |JiVitA-3       |BANGLADESH                   |Underweight   |             0|   8606| 27105|
|0-24 months |JiVitA-3       |BANGLADESH                   |Underweight   |             1|   1777| 27105|
|0-24 months |LCNI-5         |MALAWI                       |Normal weight |             0|    550|   837|
|0-24 months |LCNI-5         |MALAWI                       |Normal weight |             1|    142|   837|
|0-24 months |LCNI-5         |MALAWI                       |Underweight   |             0|    110|   837|
|0-24 months |LCNI-5         |MALAWI                       |Underweight   |             1|     35|   837|
|0-24 months |MAL-ED         |BANGLADESH                   |Normal weight |             0|    176|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |Normal weight |             1|     46|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |Underweight   |             0|     22|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |Underweight   |             1|     10|   254|
|0-24 months |MAL-ED         |BRAZIL                       |Normal weight |             0|    192|   221|
|0-24 months |MAL-ED         |BRAZIL                       |Normal weight |             1|     19|   221|
|0-24 months |MAL-ED         |BRAZIL                       |Underweight   |             0|      8|   221|
|0-24 months |MAL-ED         |BRAZIL                       |Underweight   |             1|      2|   221|
|0-24 months |MAL-ED         |INDIA                        |Normal weight |             0|    148|   242|
|0-24 months |MAL-ED         |INDIA                        |Normal weight |             1|     45|   242|
|0-24 months |MAL-ED         |INDIA                        |Underweight   |             0|     36|   242|
|0-24 months |MAL-ED         |INDIA                        |Underweight   |             1|     13|   242|
|0-24 months |MAL-ED         |NEPAL                        |Normal weight |             0|    217|   238|
|0-24 months |MAL-ED         |NEPAL                        |Normal weight |             1|     21|   238|
|0-24 months |MAL-ED         |NEPAL                        |Underweight   |             0|      0|   238|
|0-24 months |MAL-ED         |NEPAL                        |Underweight   |             1|      0|   238|
|0-24 months |MAL-ED         |PERU                         |Normal weight |             0|    225|   290|
|0-24 months |MAL-ED         |PERU                         |Normal weight |             1|     60|   290|
|0-24 months |MAL-ED         |PERU                         |Underweight   |             0|      2|   290|
|0-24 months |MAL-ED         |PERU                         |Underweight   |             1|      3|   290|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Normal weight |             0|    195|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Normal weight |             1|     67|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Underweight   |             0|      5|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Underweight   |             1|      3|   270|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Normal weight |             0|    114|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Normal weight |             1|    128|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Underweight   |             0|      6|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Underweight   |             1|      8|   256|
|0-24 months |NIH-Birth      |BANGLADESH                   |Normal weight |             0|    374|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |Normal weight |             1|    149|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |Underweight   |             0|     59|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |Underweight   |             1|     47|   629|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Normal weight |             0|    603|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Normal weight |             1|     84|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Underweight   |             0|     53|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Underweight   |             1|     15|   755|
|0-24 months |PROBIT         |BELARUS                      |Normal weight |             0|  12850| 13728|
|0-24 months |PROBIT         |BELARUS                      |Normal weight |             1|    355| 13728|
|0-24 months |PROBIT         |BELARUS                      |Underweight   |             0|    506| 13728|
|0-24 months |PROBIT         |BELARUS                      |Underweight   |             1|     17| 13728|
|0-24 months |PROVIDE        |BANGLADESH                   |Normal weight |             0|    477|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |Normal weight |             1|     65|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |Underweight   |             0|     98|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |Underweight   |             1|     29|   669|
|0-24 months |SAS-CompFeed   |INDIA                        |Normal weight |             0|    712|  1407|
|0-24 months |SAS-CompFeed   |INDIA                        |Normal weight |             1|    316|  1407|
|0-24 months |SAS-CompFeed   |INDIA                        |Underweight   |             0|    231|  1407|
|0-24 months |SAS-CompFeed   |INDIA                        |Underweight   |             1|    148|  1407|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight |             0|   2078|  2345|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight |             1|    229|  2345|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Underweight   |             0|     34|  2345|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Underweight   |             1|      4|  2345|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Normal weight |             0|   7629|  9819|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Normal weight |             1|   1673|  9819|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Underweight   |             0|    394|  9819|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Underweight   |             1|    123|  9819|


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

* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/e958bd81-3db1-456e-9732-8b304985541b/b0589319-9b28-42c1-bfa5-8427b2035734/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e958bd81-3db1-456e-9732-8b304985541b/b0589319-9b28-42c1-bfa5-8427b2035734/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e958bd81-3db1-456e-9732-8b304985541b/b0589319-9b28-42c1-bfa5-8427b2035734/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e958bd81-3db1-456e-9732-8b304985541b/b0589319-9b28-42c1-bfa5-8427b2035734/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid      |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc   |BURKINA FASO                 |Normal weight      |NA             | 0.1023219| 0.0812235| 0.1234202|
|0-24 months |iLiNS-Zinc   |BURKINA FASO                 |Underweight        |NA             | 0.1227023| 0.0707895| 0.1746150|
|0-24 months |JiVitA-3     |BANGLADESH                   |Normal weight      |NA             | 0.1918406| 0.1849380| 0.1987432|
|0-24 months |JiVitA-3     |BANGLADESH                   |Underweight        |NA             | 0.1725851| 0.1644995| 0.1806707|
|0-24 months |LCNI-5       |MALAWI                       |Normal weight      |NA             | 0.2023231| 0.1723012| 0.2323450|
|0-24 months |LCNI-5       |MALAWI                       |Underweight        |NA             | 0.2563206| 0.1869690| 0.3256723|
|0-24 months |MAL-ED       |BANGLADESH                   |Normal weight      |NA             | 0.2088768| 0.1554657| 0.2622879|
|0-24 months |MAL-ED       |BANGLADESH                   |Underweight        |NA             | 0.4282987| 0.2658470| 0.5907505|
|0-24 months |MAL-ED       |INDIA                        |Normal weight      |NA             | 0.2351548| 0.1752051| 0.2951044|
|0-24 months |MAL-ED       |INDIA                        |Underweight        |NA             | 0.2905430| 0.1643689| 0.4167170|
|0-24 months |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |Normal weight      |NA             | 0.5289256| 0.4659123| 0.5919389|
|0-24 months |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |Underweight        |NA             | 0.5714286| 0.3116959| 0.8311612|
|0-24 months |NIH-Birth    |BANGLADESH                   |Normal weight      |NA             | 0.2863910| 0.2475802| 0.3252017|
|0-24 months |NIH-Birth    |BANGLADESH                   |Underweight        |NA             | 0.4396030| 0.3438352| 0.5353708|
|0-24 months |NIH-Crypto   |BANGLADESH                   |Normal weight      |NA             | 0.1231746| 0.0985545| 0.1477947|
|0-24 months |NIH-Crypto   |BANGLADESH                   |Underweight        |NA             | 0.2216518| 0.1180354| 0.3252683|
|0-24 months |PROBIT       |BELARUS                      |Normal weight      |NA             | 0.0269141| 0.0195802| 0.0342479|
|0-24 months |PROBIT       |BELARUS                      |Underweight        |NA             | 0.0308920| 0.0121210| 0.0496630|
|0-24 months |PROVIDE      |BANGLADESH                   |Normal weight      |NA             | 0.1212647| 0.0938073| 0.1487221|
|0-24 months |PROVIDE      |BANGLADESH                   |Underweight        |NA             | 0.2211659| 0.1469750| 0.2953568|
|0-24 months |SAS-CompFeed |INDIA                        |Normal weight      |NA             | 0.3112436| 0.2687605| 0.3537267|
|0-24 months |SAS-CompFeed |INDIA                        |Underweight        |NA             | 0.3774407| 0.3327653| 0.4221161|
|0-24 months |ZVITAMBO     |ZIMBABWE                     |Normal weight      |NA             | 0.1800170| 0.1722037| 0.1878302|
|0-24 months |ZVITAMBO     |ZIMBABWE                     |Underweight        |NA             | 0.2382501| 0.1995888| 0.2769113|


### Parameter: E(Y)


|agecat      |studyid      |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc   |BURKINA FASO                 |NA                 |NA             | 0.1050995| 0.0855497| 0.1246493|
|0-24 months |JiVitA-3     |BANGLADESH                   |NA                 |NA             | 0.1844309| 0.1788328| 0.1900291|
|0-24 months |LCNI-5       |MALAWI                       |NA                 |NA             | 0.2114695| 0.1837888| 0.2391503|
|0-24 months |MAL-ED       |BANGLADESH                   |NA                 |NA             | 0.2204724| 0.1693889| 0.2715560|
|0-24 months |MAL-ED       |INDIA                        |NA                 |NA             | 0.2396694| 0.1857746| 0.2935643|
|0-24 months |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.5312500| 0.4700011| 0.5924989|
|0-24 months |NIH-Birth    |BANGLADESH                   |NA                 |NA             | 0.3116057| 0.2753823| 0.3478292|
|0-24 months |NIH-Crypto   |BANGLADESH                   |NA                 |NA             | 0.1311258| 0.1070332| 0.1552185|
|0-24 months |PROBIT       |BELARUS                      |NA                 |NA             | 0.0270979| 0.0199447| 0.0342511|
|0-24 months |PROVIDE      |BANGLADESH                   |NA                 |NA             | 0.1405082| 0.1141551| 0.1668613|
|0-24 months |SAS-CompFeed |INDIA                        |NA                 |NA             | 0.3297797| 0.2987556| 0.3608038|
|0-24 months |ZVITAMBO     |ZIMBABWE                     |NA                 |NA             | 0.1829107| 0.1752637| 0.1905577|


### Parameter: RR


|agecat      |studyid      |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc   |BURKINA FASO                 |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |iLiNS-Zinc   |BURKINA FASO                 |Underweight        |Normal weight  | 1.1991794| 0.7512599| 1.9141597|
|0-24 months |JiVitA-3     |BANGLADESH                   |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |JiVitA-3     |BANGLADESH                   |Underweight        |Normal weight  | 0.8996278| 0.8517619| 0.9501835|
|0-24 months |LCNI-5       |MALAWI                       |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |LCNI-5       |MALAWI                       |Underweight        |Normal weight  | 1.2668875| 0.9316973| 1.7226666|
|0-24 months |MAL-ED       |BANGLADESH                   |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED       |BANGLADESH                   |Underweight        |Normal weight  | 2.0504846| 1.2945130| 3.2479296|
|0-24 months |MAL-ED       |INDIA                        |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED       |INDIA                        |Underweight        |Normal weight  | 1.2355393| 0.7463539| 2.0453532|
|0-24 months |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |Underweight        |Normal weight  | 1.0803571| 0.6753029| 1.7283675|
|0-24 months |NIH-Birth    |BANGLADESH                   |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |NIH-Birth    |BANGLADESH                   |Underweight        |Normal weight  | 1.5349751| 1.1872486| 1.9845453|
|0-24 months |NIH-Crypto   |BANGLADESH                   |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |NIH-Crypto   |BANGLADESH                   |Underweight        |Normal weight  | 1.7994931| 1.0821716| 2.9922939|
|0-24 months |PROBIT       |BELARUS                      |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |PROBIT       |BELARUS                      |Underweight        |Normal weight  | 1.1478025| 0.6035467| 2.1828477|
|0-24 months |PROVIDE      |BANGLADESH                   |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |PROVIDE      |BANGLADESH                   |Underweight        |Normal weight  | 1.8238276| 1.2165325| 2.7342855|
|0-24 months |SAS-CompFeed |INDIA                        |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |SAS-CompFeed |INDIA                        |Underweight        |Normal weight  | 1.2126857| 0.9932063| 1.4806658|
|0-24 months |ZVITAMBO     |ZIMBABWE                     |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |ZVITAMBO     |ZIMBABWE                     |Underweight        |Normal weight  | 1.3234867| 1.1188641| 1.5655315|


### Parameter: PAR


|agecat      |studyid      |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |iLiNS-Zinc   |BURKINA FASO                 |Normal weight      |NA             |  0.0027776| -0.0046094|  0.0101647|
|0-24 months |JiVitA-3     |BANGLADESH                   |Normal weight      |NA             | -0.0074097| -0.0111686| -0.0036508|
|0-24 months |LCNI-5       |MALAWI                       |Normal weight      |NA             |  0.0091464| -0.0038659|  0.0221587|
|0-24 months |MAL-ED       |BANGLADESH                   |Normal weight      |NA             |  0.0115956| -0.0102596|  0.0334508|
|0-24 months |MAL-ED       |INDIA                        |Normal weight      |NA             |  0.0045146| -0.0235936|  0.0326229|
|0-24 months |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |Normal weight      |NA             |  0.0023244| -0.0123398|  0.0169886|
|0-24 months |NIH-Birth    |BANGLADESH                   |Normal weight      |NA             |  0.0252147|  0.0073997|  0.0430298|
|0-24 months |NIH-Crypto   |BANGLADESH                   |Normal weight      |NA             |  0.0079512| -0.0014145|  0.0173170|
|0-24 months |PROBIT       |BELARUS                      |Normal weight      |NA             |  0.0001838| -0.0005832|  0.0009508|
|0-24 months |PROVIDE      |BANGLADESH                   |Normal weight      |NA             |  0.0192435|  0.0039819|  0.0345052|
|0-24 months |SAS-CompFeed |INDIA                        |Normal weight      |NA             |  0.0185361|  0.0010451|  0.0360270|
|0-24 months |ZVITAMBO     |ZIMBABWE                     |Normal weight      |NA             |  0.0028937|  0.0008931|  0.0048943|


### Parameter: PAF


|agecat      |studyid      |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |iLiNS-Zinc   |BURKINA FASO                 |Normal weight      |NA             |  0.0264287| -0.0467946|  0.0945301|
|0-24 months |JiVitA-3     |BANGLADESH                   |Normal weight      |NA             | -0.0401760| -0.0607309| -0.0200194|
|0-24 months |LCNI-5       |MALAWI                       |Normal weight      |NA             |  0.0432516| -0.0202940|  0.1028395|
|0-24 months |MAL-ED       |BANGLADESH                   |Normal weight      |NA             |  0.0525944| -0.0513162|  0.1462346|
|0-24 months |MAL-ED       |INDIA                        |Normal weight      |NA             |  0.0188370| -0.1056669|  0.1293210|
|0-24 months |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |Normal weight      |NA             |  0.0043753| -0.0236201|  0.0316050|
|0-24 months |NIH-Birth    |BANGLADESH                   |Normal weight      |NA             |  0.0809188|  0.0220640|  0.1362315|
|0-24 months |NIH-Crypto   |BANGLADESH                   |Normal weight      |NA             |  0.0606382| -0.0128553|  0.1287989|
|0-24 months |PROBIT       |BELARUS                      |Normal weight      |NA             |  0.0067839| -0.0223250|  0.0350640|
|0-24 months |PROVIDE      |BANGLADESH                   |Normal weight      |NA             |  0.1369566|  0.0240759|  0.2367808|
|0-24 months |SAS-CompFeed |INDIA                        |Normal weight      |NA             |  0.0562074| -0.0013188|  0.1104287|
|0-24 months |ZVITAMBO     |ZIMBABWE                     |Normal weight      |NA             |  0.0158204|  0.0048328|  0.0266867|
