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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** gagebrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                     |studyid        |country                      |gagebrth          | ever_stunted| n_cell|     n|
|:--------------------------|:--------------|:----------------------------|:-----------------|------------:|------:|-----:|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |Full or late term |            0|     18|   278|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |Full or late term |            1|    164|   278|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |Preterm           |            0|      3|   278|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |Preterm           |            1|     30|   278|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |Early term        |            0|      7|   278|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |Early term        |            1|     56|   278|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA                    |Full or late term |            0|     94|   694|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA                    |Full or late term |            1|    303|   694|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA                    |Preterm           |            0|     23|   694|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA                    |Preterm           |            1|     79|   694|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA                    |Early term        |            0|     41|   694|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA                    |Early term        |            1|    154|   694|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |Full or late term |            0|    395|  1238|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |Full or late term |            1|    160|  1238|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |Preterm           |            0|    181|  1238|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |Preterm           |            1|     88|  1238|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |Early term        |            0|    290|  1238|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |Early term        |            1|    124|  1238|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES                  |Full or late term |            0|    395|  2846|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES                  |Full or late term |            1|    735|  2846|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES                  |Preterm           |            0|    185|  2846|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES                  |Preterm           |            1|    380|  2846|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES                  |Early term        |            0|    370|  2846|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES                  |Early term        |            1|    781|  2846|
|0-24 months (no birth st.) |IRC            |INDIA                        |Full or late term |            0|     95|   341|
|0-24 months (no birth st.) |IRC            |INDIA                        |Full or late term |            1|    126|   341|
|0-24 months (no birth st.) |IRC            |INDIA                        |Preterm           |            0|      9|   341|
|0-24 months (no birth st.) |IRC            |INDIA                        |Preterm           |            1|     23|   341|
|0-24 months (no birth st.) |IRC            |INDIA                        |Early term        |            0|     34|   341|
|0-24 months (no birth st.) |IRC            |INDIA                        |Early term        |            1|     54|   341|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |Full or late term |            0|   7905| 17441|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |Full or late term |            1|   2507| 17441|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |Preterm           |            0|   1779| 17441|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |Preterm           |            1|    679| 17441|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |Early term        |            0|   3338| 17441|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |Early term        |            1|   1233| 17441|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |Full or late term |            0|    413|  1581|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |Full or late term |            1|    394|  1581|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |Preterm           |            0|     78|  1581|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |Preterm           |            1|    135|  1581|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |Early term        |            0|    285|  1581|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |Early term        |            1|    276|  1581|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |Full or late term |            0|    105|   653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |Full or late term |            1|     51|   653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |Preterm           |            0|    110|   653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |Preterm           |            1|     89|   653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |Early term        |            0|    181|   653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |Early term        |            1|    117|   653|
|0-24 months (no birth st.) |PROBIT         |BELARUS                      |Full or late term |            0|   7743| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS                      |Full or late term |            1|    852| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS                      |Preterm           |            0|    414| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS                      |Preterm           |            1|    151| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS                      |Early term        |            0|   6587| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS                      |Early term        |            1|   1018| 16765|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Full or late term |            0|    944|  2101|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Full or late term |            1|    379|  2101|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Preterm           |            0|    204|  2101|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Preterm           |            1|     97|  2101|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Early term        |            0|    327|  2101|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Early term        |            1|    150|  2101|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |Full or late term |            0|    108|   274|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |Full or late term |            1|     71|   274|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |Preterm           |            0|     19|   274|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |Preterm           |            1|     14|   274|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |Early term        |            0|     43|   274|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |Early term        |            1|     19|   274|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA                    |Full or late term |            0|    296|   669|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA                    |Full or late term |            1|     82|   669|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA                    |Preterm           |            0|     70|   669|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA                    |Preterm           |            1|     31|   669|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA                    |Early term        |            0|    137|   669|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA                    |Early term        |            1|     53|   669|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |Full or late term |            0|    512|  1222|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |Full or late term |            1|     37|  1222|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |Preterm           |            0|    242|  1222|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |Preterm           |            1|     23|  1222|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |Early term        |            0|    384|  1222|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |Early term        |            1|     24|  1222|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES                  |Full or late term |            0|    957|  2846|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES                  |Full or late term |            1|    173|  2846|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES                  |Preterm           |            0|    425|  2846|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES                  |Preterm           |            1|    140|  2846|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES                  |Early term        |            0|    924|  2846|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES                  |Early term        |            1|    227|  2846|
|0-6 months (no birth st.)  |IRC            |INDIA                        |Full or late term |            0|    151|   341|
|0-6 months (no birth st.)  |IRC            |INDIA                        |Full or late term |            1|     70|   341|
|0-6 months (no birth st.)  |IRC            |INDIA                        |Preterm           |            0|     19|   341|
|0-6 months (no birth st.)  |IRC            |INDIA                        |Preterm           |            1|     13|   341|
|0-6 months (no birth st.)  |IRC            |INDIA                        |Early term        |            0|     55|   341|
|0-6 months (no birth st.)  |IRC            |INDIA                        |Early term        |            1|     33|   341|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |Full or late term |            0|   9182| 17398|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |Full or late term |            1|   1203| 17398|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |Preterm           |            0|   2051| 17398|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |Preterm           |            1|    402| 17398|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |Early term        |            0|   3876| 17398|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |Early term        |            1|    684| 17398|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |Full or late term |            0|    596|  1500|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |Full or late term |            1|    160|  1500|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |Preterm           |            0|    129|  1500|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |Preterm           |            1|     77|  1500|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |Early term        |            0|    405|  1500|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |Early term        |            1|    133|  1500|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |Full or late term |            0|    134|   653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |Full or late term |            1|     22|   653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |Preterm           |            0|    150|   653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |Preterm           |            1|     49|   653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |Early term        |            0|    245|   653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |Early term        |            1|     53|   653|
|0-6 months (no birth st.)  |PROBIT         |BELARUS                      |Full or late term |            0|   8211| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS                      |Full or late term |            1|    383| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS                      |Preterm           |            0|    459| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS                      |Preterm           |            1|    106| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS                      |Early term        |            0|   7063| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS                      |Early term        |            1|    541| 16763|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Full or late term |            0|   1155|  2101|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Full or late term |            1|    168|  2101|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Preterm           |            0|    257|  2101|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Preterm           |            1|     44|  2101|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Early term        |            0|    406|  2101|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Early term        |            1|     71|  2101|


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth st.), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth st.), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA

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
![](/tmp/8bbf77ab-d96e-4aaa-83bd-981651c6fdef/c310ba45-9113-4d77-9175-d80c23713d9e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8bbf77ab-d96e-4aaa-83bd-981651c6fdef/c310ba45-9113-4d77-9175-d80c23713d9e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8bbf77ab-d96e-4aaa-83bd-981651c6fdef/c310ba45-9113-4d77-9175-d80c23713d9e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8bbf77ab-d96e-4aaa-83bd-981651c6fdef/c310ba45-9113-4d77-9175-d80c23713d9e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                     |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:--------------------------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA                    |Full or late term  |NA             | 0.7623862| 0.7204849| 0.8042874|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA                    |Preterm            |NA             | 0.7678408| 0.6857507| 0.8499310|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA                    |Early term         |NA             | 0.7889175| 0.7315333| 0.8463016|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |Full or late term  |NA             | 0.2867650| 0.2497597| 0.3237703|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |Preterm            |NA             | 0.3151304| 0.2596752| 0.3705855|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |Early term         |NA             | 0.3064696| 0.2626618| 0.3502773|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES                  |Full or late term  |NA             | 0.6508071| 0.6237647| 0.6778496|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES                  |Preterm            |NA             | 0.6650482| 0.6277507| 0.7023456|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES                  |Early term         |NA             | 0.6818882| 0.6555165| 0.7082598|
|0-24 months (no birth st.) |IRC            |INDIA                        |Full or late term  |NA             | 0.5701357| 0.5047709| 0.6355006|
|0-24 months (no birth st.) |IRC            |INDIA                        |Preterm            |NA             | 0.7187500| 0.5627423| 0.8747577|
|0-24 months (no birth st.) |IRC            |INDIA                        |Early term         |NA             | 0.6136364| 0.5117542| 0.7155185|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |Full or late term  |NA             | 0.2439132| 0.2341097| 0.2537166|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |Preterm            |NA             | 0.2677750| 0.2481889| 0.2873611|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |Early term         |NA             | 0.2666707| 0.2524149| 0.2809266|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |Full or late term  |NA             | 0.4854413| 0.4509735| 0.5199092|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |Preterm            |NA             | 0.6381708| 0.5741598| 0.7021817|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |Early term         |NA             | 0.4932611| 0.4517149| 0.5348074|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |Full or late term  |NA             | 0.3212309| 0.2484643| 0.3939976|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |Preterm            |NA             | 0.4393807| 0.3705232| 0.5082382|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |Early term         |NA             | 0.4002731| 0.3444865| 0.4560598|
|0-24 months (no birth st.) |PROBIT         |BELARUS                      |Full or late term  |NA             | 0.0996720| 0.0821091| 0.1172348|
|0-24 months (no birth st.) |PROBIT         |BELARUS                      |Preterm            |NA             | 0.2668738| 0.2299286| 0.3038190|
|0-24 months (no birth st.) |PROBIT         |BELARUS                      |Early term         |NA             | 0.1333817| 0.1158394| 0.1509240|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Full or late term  |NA             | 0.2870423| 0.2626619| 0.3114226|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Preterm            |NA             | 0.3209039| 0.2680206| 0.3737872|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Early term         |NA             | 0.3139230| 0.2722056| 0.3556404|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |Full or late term  |NA             | 0.3949582| 0.3230877| 0.4668287|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |Preterm            |NA             | 0.4084874| 0.2368791| 0.5800956|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |Early term         |NA             | 0.2859488| 0.1698480| 0.4020496|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA                    |Full or late term  |NA             | 0.2165124| 0.1747059| 0.2583190|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA                    |Preterm            |NA             | 0.3086276| 0.2188711| 0.3983842|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA                    |Early term         |NA             | 0.2785291| 0.2136955| 0.3433626|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |Full or late term  |NA             | 0.0669705| 0.0460978| 0.0878432|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |Preterm            |NA             | 0.0850110| 0.0514241| 0.1185979|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |Early term         |NA             | 0.0595124| 0.0366956| 0.0823293|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES                  |Full or late term  |NA             | 0.1542498| 0.1333489| 0.1751507|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES                  |Preterm            |NA             | 0.2417055| 0.2061046| 0.2773064|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES                  |Early term         |NA             | 0.1986299| 0.1757274| 0.2215325|
|0-6 months (no birth st.)  |IRC            |INDIA                        |Full or late term  |NA             | 0.3135461| 0.2521440| 0.3749482|
|0-6 months (no birth st.)  |IRC            |INDIA                        |Preterm            |NA             | 0.4210807| 0.2516780| 0.5904834|
|0-6 months (no birth st.)  |IRC            |INDIA                        |Early term         |NA             | 0.3791305| 0.2743461| 0.4839149|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |Full or late term  |NA             | 0.1178601| 0.1107967| 0.1249236|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |Preterm            |NA             | 0.1553349| 0.1399984| 0.1706713|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |Early term         |NA             | 0.1473787| 0.1356161| 0.1591412|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |Full or late term  |NA             | 0.2105130| 0.1814617| 0.2395643|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |Preterm            |NA             | 0.3823444| 0.3157196| 0.4489692|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |Early term         |NA             | 0.2449553| 0.2083967| 0.2815140|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |Full or late term  |NA             | 0.1521580| 0.0930434| 0.2112725|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |Preterm            |NA             | 0.2413352| 0.1811685| 0.3015018|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |Early term         |NA             | 0.1764353| 0.1327433| 0.2201274|
|0-6 months (no birth st.)  |PROBIT         |BELARUS                      |Full or late term  |NA             | 0.0451187| 0.0332801| 0.0569573|
|0-6 months (no birth st.)  |PROBIT         |BELARUS                      |Preterm            |NA             | 0.1819442| 0.1447632| 0.2191253|
|0-6 months (no birth st.)  |PROBIT         |BELARUS                      |Early term         |NA             | 0.0702976| 0.0579627| 0.0826325|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Full or late term  |NA             | 0.1272303| 0.1092931| 0.1451675|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Preterm            |NA             | 0.1463304| 0.1062647| 0.1863960|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Early term         |NA             | 0.1483911| 0.1163703| 0.1804119|


### Parameter: E(Y)


|agecat                     |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:--------------------------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.7723343| 0.7411143| 0.8035543|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |NA                 |NA             | 0.3004847| 0.2749357| 0.3260336|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.6661982| 0.6488700| 0.6835264|
|0-24 months (no birth st.) |IRC            |INDIA                        |NA                 |NA             | 0.5953079| 0.5431354| 0.6474804|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.2533685| 0.2454041| 0.2613329|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |NA                 |NA             | 0.5091714| 0.4845214| 0.5338214|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.3935681| 0.3560687| 0.4310676|
|0-24 months (no birth st.) |PROBIT         |BELARUS                      |NA                 |NA             | 0.1205488| 0.1047261| 0.1363714|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.2979534| 0.2783922| 0.3175146|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.3795620| 0.3219972| 0.4371269|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.2481315| 0.2153770| 0.2808861|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |NA                 |NA             | 0.0687398| 0.0545482| 0.0829313|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.1897400| 0.1753322| 0.2041478|
|0-6 months (no birth st.)  |IRC            |INDIA                        |NA                 |NA             | 0.3401760| 0.2898173| 0.3905347|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.1315668| 0.1257634| 0.1373703|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |NA                 |NA             | 0.2466667| 0.2248446| 0.2684887|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.1898928| 0.1597870| 0.2199986|
|0-6 months (no birth st.)  |PROBIT         |BELARUS                      |NA                 |NA             | 0.0614448| 0.0507274| 0.0721623|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1346978| 0.1200961| 0.1492994|


### Parameter: RR


|agecat                     |studyid        |country                      |intervention_level |baseline_level    |  estimate|  ci_lower| ci_upper|
|:--------------------------|:--------------|:----------------------------|:------------------|:-----------------|---------:|---------:|--------:|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA                    |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA                    |Preterm            |Full or late term | 1.0071548| 0.8931086| 1.135764|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA                    |Early term         |Full or late term | 1.0348003| 0.9446022| 1.133611|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |Preterm            |Full or late term | 1.0989150| 0.8849458| 1.364619|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |Early term         |Full or late term | 1.0687133| 0.8833590| 1.292960|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES                  |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES                  |Preterm            |Full or late term | 1.0218821| 0.9538606| 1.094754|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES                  |Early term         |Full or late term | 1.0477577| 0.9909554| 1.107816|
|0-24 months (no birth st.) |IRC            |INDIA                        |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |IRC            |INDIA                        |Preterm            |Full or late term | 1.2606647| 0.9862620| 1.611413|
|0-24 months (no birth st.) |IRC            |INDIA                        |Early term         |Full or late term | 1.0762987| 0.8796426| 1.316920|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |Preterm            |Full or late term | 1.0978290| 1.0120082| 1.190927|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |Early term         |Full or late term | 1.0933018| 1.0267497| 1.164168|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |Preterm            |Full or late term | 1.3146198| 1.1630139| 1.485988|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |Early term         |Full or late term | 1.0161087| 0.9103550| 1.134147|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |Preterm            |Full or late term | 1.3678033| 1.0397943| 1.799284|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |Early term         |Full or late term | 1.2460604| 0.9565745| 1.623153|
|0-24 months (no birth st.) |PROBIT         |BELARUS                      |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |PROBIT         |BELARUS                      |Preterm            |Full or late term | 2.6775213| 2.1281084| 3.368776|
|0-24 months (no birth st.) |PROBIT         |BELARUS                      |Early term         |Full or late term | 1.3382065| 1.1927530| 1.501398|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Preterm            |Full or late term | 1.1179674| 0.9287550| 1.345728|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Early term         |Full or late term | 1.0936472| 0.9341263| 1.280409|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |Preterm            |Full or late term | 1.0342546| 0.6542490| 1.634978|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |Early term         |Full or late term | 0.7239976| 0.4638600| 1.130023|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA                    |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA                    |Preterm            |Full or late term | 1.4254499| 1.0050930| 2.021611|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA                    |Early term         |Full or late term | 1.2864345| 0.9504669| 1.741159|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |Preterm            |Full or late term | 1.2693799| 0.7678735| 2.098426|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |Early term         |Full or late term | 0.8886368| 0.5424524| 1.455750|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES                  |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES                  |Preterm            |Full or late term | 1.5669746| 1.2832605| 1.913415|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES                  |Early term         |Full or late term | 1.2877158| 1.0784353| 1.537609|
|0-6 months (no birth st.)  |IRC            |INDIA                        |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |IRC            |INDIA                        |Preterm            |Full or late term | 1.3429625| 0.8590061| 2.099575|
|0-6 months (no birth st.)  |IRC            |INDIA                        |Early term         |Full or late term | 1.2091698| 0.8615115| 1.697124|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |Preterm            |Full or late term | 1.3179596| 1.1763466| 1.476621|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |Early term         |Full or late term | 1.2504542| 1.1339307| 1.378952|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |Preterm            |Full or late term | 1.8162509| 1.4543959| 2.268136|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |Early term         |Full or late term | 1.1636115| 0.9497389| 1.425646|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |Preterm            |Full or late term | 1.5860829| 0.9995005| 2.516916|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |Early term         |Full or late term | 1.1595538| 0.7316337| 1.837757|
|0-6 months (no birth st.)  |PROBIT         |BELARUS                      |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |PROBIT         |BELARUS                      |Preterm            |Full or late term | 4.0325682| 2.9791847| 5.458408|
|0-6 months (no birth st.)  |PROBIT         |BELARUS                      |Early term         |Full or late term | 1.5580584| 1.2754682| 1.903259|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Preterm            |Full or late term | 1.1501222| 0.8453222| 1.564825|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Early term         |Full or late term | 1.1663191| 0.9012881| 1.509285|


### Parameter: PAR


|agecat                     |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:--------------------------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA                    |Full or late term  |NA             |  0.0099481| -0.0169631| 0.0368594|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |Full or late term  |NA             |  0.0137197| -0.0138158| 0.0412551|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES                  |Full or late term  |NA             |  0.0153910| -0.0050985| 0.0358806|
|0-24 months (no birth st.) |IRC            |INDIA                        |Full or late term  |NA             |  0.0251722| -0.0129918| 0.0633362|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |Full or late term  |NA             |  0.0094553|  0.0036468| 0.0152638|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |Full or late term  |NA             |  0.0237301| -0.0003425| 0.0478027|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |Full or late term  |NA             |  0.0723372|  0.0081014| 0.1365730|
|0-24 months (no birth st.) |PROBIT         |BELARUS                      |Full or late term  |NA             |  0.0208768|  0.0143489| 0.0274047|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Full or late term  |NA             |  0.0109111| -0.0042131| 0.0260353|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |Full or late term  |NA             | -0.0153962| -0.0570165| 0.0262241|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA                    |Full or late term  |NA             |  0.0316191|  0.0023099| 0.0609284|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |Full or late term  |NA             |  0.0017693| -0.0138555| 0.0173940|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES                  |Full or late term  |NA             |  0.0354902|  0.0183545| 0.0526259|
|0-6 months (no birth st.)  |IRC            |INDIA                        |Full or late term  |NA             |  0.0266298| -0.0111883| 0.0644480|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |Full or late term  |NA             |  0.0137067|  0.0090389| 0.0183746|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |Full or late term  |NA             |  0.0361537|  0.0145621| 0.0577453|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |Full or late term  |NA             |  0.0377348| -0.0159594| 0.0914290|
|0-6 months (no birth st.)  |PROBIT         |BELARUS                      |Full or late term  |NA             |  0.0163261|  0.0110921| 0.0215602|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Full or late term  |NA             |  0.0074675| -0.0039168| 0.0188518|


### Parameter: PAF


|agecat                     |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:--------------------------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA                    |Full or late term  |NA             |  0.0128806| -0.0226080| 0.0471376|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |Full or late term  |NA             |  0.0456584| -0.0504864| 0.1330037|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES                  |Full or late term  |NA             |  0.0231028| -0.0081582| 0.0533945|
|0-24 months (no birth st.) |IRC            |INDIA                        |Full or late term  |NA             |  0.0422843| -0.0242259| 0.1044755|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |Full or late term  |NA             |  0.0373184|  0.0141011| 0.0599889|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |Full or late term  |NA             |  0.0466053| -0.0019229| 0.0927830|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |Full or late term  |NA             |  0.1837985|  0.0030283| 0.3317916|
|0-24 months (no birth st.) |PROBIT         |BELARUS                      |Full or late term  |NA             |  0.1731813|  0.1106501| 0.2313159|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Full or late term  |NA             |  0.0366201| -0.0154885| 0.0860548|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |Full or late term  |NA             | -0.0405630| -0.1562239| 0.0635280|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA                    |Full or late term  |NA             |  0.1274288|  0.0014169| 0.2375392|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |Full or late term  |NA             |  0.0257387| -0.2301969| 0.2284283|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES                  |Full or late term  |NA             |  0.1870464|  0.0923516| 0.2718617|
|0-6 months (no birth st.)  |IRC            |INDIA                        |Full or late term  |NA             |  0.0782825| -0.0398809| 0.1830189|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |Full or late term  |NA             |  0.1041808|  0.0681726| 0.1387976|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |Full or late term  |NA             |  0.1465689|  0.0548262| 0.2294067|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |Full or late term  |NA             |  0.1987165| -0.1387662| 0.4361834|
|0-6 months (no birth st.)  |PROBIT         |BELARUS                      |Full or late term  |NA             |  0.2657040|  0.1629111| 0.3558742|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Full or late term  |NA             |  0.0554387| -0.0327923| 0.1361322|
