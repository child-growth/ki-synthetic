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

**Intervention Variable:** gagebrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid        |country                      |gagebrth          | ever_swasted| n_cell|     n|
|:---------------------------|:--------------|:----------------------------|:-----------------|------------:|------:|-----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Full or late term |            0|    183|   348|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Full or late term |            1|     30|   348|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Preterm           |            0|     42|   348|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Preterm           |            1|     10|   348|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Early term        |            0|     71|   348|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Early term        |            1|     12|   348|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Full or late term |            0|    441|   809|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Full or late term |            1|      7|   809|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Preterm           |            0|    126|   809|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Preterm           |            1|      4|   809|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Early term        |            0|    222|   809|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Early term        |            1|      9|   809|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Full or late term |            0|    556|  1345|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Full or late term |            1|     23|  1345|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Preterm           |            0|    294|  1345|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Preterm           |            1|     14|  1345|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Early term        |            0|    433|  1345|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Early term        |            1|     25|  1345|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Full or late term |            0|   1073|  2993|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Full or late term |            1|     85|  2993|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Preterm           |            0|    581|  2993|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Preterm           |            1|     52|  2993|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Early term        |            0|   1093|  2993|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Early term        |            1|    109|  2993|
|0-24 months (no birth wast) |IRC            |INDIA                        |Full or late term |            0|    206|   389|
|0-24 months (no birth wast) |IRC            |INDIA                        |Full or late term |            1|     43|   389|
|0-24 months (no birth wast) |IRC            |INDIA                        |Preterm           |            0|     34|   389|
|0-24 months (no birth wast) |IRC            |INDIA                        |Preterm           |            1|      8|   389|
|0-24 months (no birth wast) |IRC            |INDIA                        |Early term        |            0|     74|   389|
|0-24 months (no birth wast) |IRC            |INDIA                        |Early term        |            1|     24|   389|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Full or late term |            0|  12677| 25266|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Full or late term |            1|    457| 25266|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Preterm           |            0|   4924| 25266|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Preterm           |            1|    188| 25266|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Early term        |            0|   6763| 25266|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Early term        |            1|    257| 25266|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Full or late term |            0|    711|  1692|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Full or late term |            1|    127|  1692|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Preterm           |            0|    218|  1692|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Preterm           |            1|     38|  1692|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Early term        |            0|    530|  1692|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Early term        |            1|     68|  1692|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Full or late term |            0|    165|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Full or late term |            1|      3|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Preterm           |            0|    250|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Preterm           |            1|     11|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Early term        |            0|    319|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Early term        |            1|      6|   754|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |Full or late term |            0|   8516| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |Full or late term |            1|    105| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |Preterm           |            0|    583| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |Preterm           |            1|      8| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |Early term        |            0|   7576| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |Early term        |            1|     91| 16879|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Full or late term |            0|   1325|  2242|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Full or late term |            1|     60|  2242|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Preterm           |            0|    323|  2242|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Preterm           |            1|     21|  2242|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Early term        |            0|    483|  2242|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Early term        |            1|     30|  2242|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/8b412352-378d-4bc8-8690-ada5026c4f7a/df8815ea-89ff-4b11-8424-7ddd55045ef3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8b412352-378d-4bc8-8690-ada5026c4f7a/df8815ea-89ff-4b11-8424-7ddd55045ef3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8b412352-378d-4bc8-8690-ada5026c4f7a/df8815ea-89ff-4b11-8424-7ddd55045ef3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8b412352-378d-4bc8-8690-ada5026c4f7a/df8815ea-89ff-4b11-8424-7ddd55045ef3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Full or late term  |NA             | 0.1412047| 0.0943186| 0.1880909|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Preterm            |NA             | 0.1982342| 0.0881977| 0.3082708|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Early term         |NA             | 0.1439046| 0.0682609| 0.2195483|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Full or late term  |NA             | 0.0392592| 0.0235095| 0.0550088|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Preterm            |NA             | 0.0466733| 0.0230592| 0.0702873|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Early term         |NA             | 0.0555986| 0.0345858| 0.0766113|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Full or late term  |NA             | 0.0731173| 0.0581530| 0.0880816|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Preterm            |NA             | 0.0838408| 0.0625417| 0.1051400|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Early term         |NA             | 0.0917613| 0.0755562| 0.1079663|
|0-24 months (no birth wast) |IRC            |INDIA                        |Full or late term  |NA             | 0.1726908| 0.1256823| 0.2196992|
|0-24 months (no birth wast) |IRC            |INDIA                        |Preterm            |NA             | 0.1904762| 0.0715664| 0.3093860|
|0-24 months (no birth wast) |IRC            |INDIA                        |Early term         |NA             | 0.2448980| 0.1596489| 0.3301470|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Full or late term  |NA             | 0.0351755| 0.0316745| 0.0386765|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Preterm            |NA             | 0.0349826| 0.0296092| 0.0403560|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Early term         |NA             | 0.0362207| 0.0313174| 0.0411241|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Full or late term  |NA             | 0.1505908| 0.1262902| 0.1748915|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Preterm            |NA             | 0.1487338| 0.1048416| 0.1926260|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Early term         |NA             | 0.1140164| 0.0885089| 0.1395240|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |Full or late term  |NA             | 0.0121796| 0.0079391| 0.0164200|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |Preterm            |NA             | 0.0135364| 0.0026530| 0.0244198|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |Early term         |NA             | 0.0118690| 0.0079340| 0.0158041|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Full or late term  |NA             | 0.0435620| 0.0328368| 0.0542872|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Preterm            |NA             | 0.0619075| 0.0367235| 0.0870915|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Early term         |NA             | 0.0598787| 0.0396452| 0.0801123|


### Parameter: E(Y)


|agecat                      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.1494253| 0.1119149| 0.1869357|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |NA                 |NA             | 0.0460967| 0.0348859| 0.0573074|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.0821918| 0.0723504| 0.0920332|
|0-24 months (no birth wast) |IRC            |INDIA                        |NA                 |NA             | 0.1928021| 0.1535486| 0.2320555|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.0357002| 0.0330794| 0.0383209|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |NA                 |NA             | 0.1377069| 0.1212828| 0.1541310|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |NA                 |NA             | 0.0120860| 0.0083142| 0.0158578|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0495094| 0.0405280| 0.0584908|


### Parameter: RR


|agecat                      |studyid        |country                      |intervention_level |baseline_level    |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:-----------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Preterm            |Full or late term | 1.4038779| 0.7349898| 2.6814975|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Early term         |Full or late term | 1.0191203| 0.5466981| 1.8997800|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Preterm            |Full or late term | 1.1888500| 0.6233827| 2.2672500|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Early term         |Full or late term | 1.4161927| 0.8161811| 2.4572999|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Preterm            |Full or late term | 1.1466618| 0.8275308| 1.5888632|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Early term         |Full or late term | 1.2549869| 0.9579528| 1.6441230|
|0-24 months (no birth wast) |IRC            |INDIA                        |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |IRC            |INDIA                        |Preterm            |Full or late term | 1.1029900| 0.5582108| 2.1794403|
|0-24 months (no birth wast) |IRC            |INDIA                        |Early term         |Full or late term | 1.4181300| 0.9115965| 2.2061217|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Preterm            |Full or late term | 0.9945156| 0.8332141| 1.1870434|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Early term         |Full or late term | 1.0297159| 0.8738160| 1.2134304|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Preterm            |Full or late term | 0.9876681| 0.7055192| 1.3826530|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Early term         |Full or late term | 0.7571273| 0.5746832| 0.9974916|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |Preterm            |Full or late term | 1.1114012| 0.4942436| 2.4991981|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |Early term         |Full or late term | 0.9745055| 0.7534443| 1.2604262|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Preterm            |Full or late term | 1.4211356| 0.8835053| 2.2859245|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Early term         |Full or late term | 1.3745642| 0.9048568| 2.0880949|


### Parameter: PAR


|agecat                      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Full or late term  |NA             |  0.0082205| -0.0221909| 0.0386320|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Full or late term  |NA             |  0.0068375| -0.0057310| 0.0194060|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Full or late term  |NA             |  0.0090745| -0.0030344| 0.0211834|
|0-24 months (no birth wast) |IRC            |INDIA                        |Full or late term  |NA             |  0.0201113| -0.0102472| 0.0504698|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Full or late term  |NA             |  0.0005247| -0.0018151| 0.0028645|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Full or late term  |NA             | -0.0128840| -0.0294826| 0.0037146|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |Full or late term  |NA             | -0.0000935| -0.0016320| 0.0014449|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Full or late term  |NA             |  0.0059474| -0.0013762| 0.0132709|


### Parameter: PAF


|agecat                      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Full or late term  |NA             |  0.0550144| -0.1716649| 0.2378386|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Full or late term  |NA             |  0.1483292| -0.1700275| 0.3800632|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Full or late term  |NA             |  0.1104062| -0.0492397| 0.2457613|
|0-24 months (no birth wast) |IRC            |INDIA                        |Full or late term  |NA             |  0.1043106| -0.0668583| 0.2480168|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Full or late term  |NA             |  0.0146967| -0.0530733| 0.0781055|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Full or late term  |NA             | -0.0935610| -0.2205325| 0.0202018|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |Full or late term  |NA             | -0.0077393| -0.1431149| 0.1116042|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Full or late term  |NA             |  0.1201264| -0.0390715| 0.2549333|
