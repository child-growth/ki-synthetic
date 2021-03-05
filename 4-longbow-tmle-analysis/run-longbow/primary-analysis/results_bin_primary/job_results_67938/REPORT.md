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

**Intervention Variable:** vagbrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                     |studyid        |country                      |vagbrth | ever_stunted| n_cell|     n|
|:--------------------------|:--------------|:----------------------------|:-------|------------:|------:|-----:|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |0       |            0|      3|   296|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |0       |            1|     17|   296|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |1       |            0|     25|   296|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |1       |            1|    251|   296|
|0-24 months (no birth st.) |IRC            |INDIA                        |0       |            0|     24|   360|
|0-24 months (no birth st.) |IRC            |INDIA                        |0       |            1|     35|   360|
|0-24 months (no birth st.) |IRC            |INDIA                        |1       |            0|    123|   360|
|0-24 months (no birth st.) |IRC            |INDIA                        |1       |            1|    178|   360|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |0       |            0|    974| 18291|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |0       |            1|    196| 18291|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |1       |            0|  12703| 18291|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |1       |            1|   4418| 18291|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |0       |            0|    197|  3208|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |0       |            1|     90|  3208|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |1       |            0|   1641|  3208|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |1       |            1|   1280|  3208|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |0       |            0|    117|   432|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |0       |            1|     58|   432|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |1       |            0|    136|   432|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |1       |            1|    121|   432|
|0-24 months (no birth st.) |PROBIT         |BELARUS                      |0       |            0|   1696| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS                      |0       |            1|    239| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS                      |1       |            0|  13048| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS                      |1       |            1|   1782| 16765|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |0       |            0|     97|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |0       |            1|     46|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |1       |            0|    298|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |1       |            1|    192|   633|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0       |            0|    145|  2207|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0       |            1|     47|  2207|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1       |            0|   1402|  2207|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1       |            1|    613|  2207|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE                     |0       |            0|    707| 12502|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE                     |0       |            1|    380| 12502|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE                     |1       |            0|   7435| 12502|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE                     |1       |            1|   3980| 12502|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |0       |            0|     12|   292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |0       |            1|      8|   292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |1       |            0|    168|   292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |1       |            1|    104|   292|
|0-6 months (no birth st.)  |IRC            |INDIA                        |0       |            0|     35|   360|
|0-6 months (no birth st.)  |IRC            |INDIA                        |0       |            1|     24|   360|
|0-6 months (no birth st.)  |IRC            |INDIA                        |1       |            0|    201|   360|
|0-6 months (no birth st.)  |IRC            |INDIA                        |1       |            1|    100|   360|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |0       |            0|   1091| 18284|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |0       |            1|     78| 18284|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |1       |            0|  14814| 18284|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |1       |            1|   2301| 18284|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |0       |            0|    260|  3200|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |0       |            1|     26|  3200|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |1       |            0|   2627|  3200|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |1       |            1|    287|  3200|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |0       |            0|    146|   432|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |0       |            1|     29|   432|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |1       |            0|    202|   432|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |1       |            1|     55|   432|
|0-6 months (no birth st.)  |PROBIT         |BELARUS                      |0       |            0|   1810| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS                      |0       |            1|    125| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS                      |1       |            0|  13923| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS                      |1       |            1|    905| 16763|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |0       |            0|    126|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |0       |            1|     17|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |1       |            0|    406|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |1       |            1|     84|   633|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0       |            0|    169|  2207|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0       |            1|     23|  2207|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1       |            0|   1733|  2207|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1       |            1|    282|  2207|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE                     |0       |            0|    903| 12492|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE                     |0       |            1|    183| 12492|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE                     |1       |            0|   9438| 12492|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE                     |1       |            1|   1968| 12492|


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ZVITAMBO, country: ZIMBABWE

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




# Results Detail

## Results Plots
![](/tmp/fe686337-c248-499d-af87-57dcb5408a43/1fb099a3-d13d-402f-a89e-452ee4a4688b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fe686337-c248-499d-af87-57dcb5408a43/1fb099a3-d13d-402f-a89e-452ee4a4688b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fe686337-c248-499d-af87-57dcb5408a43/1fb099a3-d13d-402f-a89e-452ee4a4688b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fe686337-c248-499d-af87-57dcb5408a43/1fb099a3-d13d-402f-a89e-452ee4a4688b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                     |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:--------------------------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth st.) |IRC            |INDIA                        |0                  |NA             | 0.5932665| 0.4660336| 0.7204994|
|0-24 months (no birth st.) |IRC            |INDIA                        |1                  |NA             | 0.5879360| 0.5323029| 0.6435691|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |0                  |NA             | 0.1850365| 0.1560661| 0.2140069|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.2554923| 0.2475697| 0.2634148|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |0                  |NA             | 0.3737912| 0.2778040| 0.4697784|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |1                  |NA             | 0.4352899| 0.4136477| 0.4569320|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |0                  |NA             | 0.3450720| 0.2744577| 0.4156863|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |1                  |NA             | 0.4561901| 0.3965399| 0.5158404|
|0-24 months (no birth st.) |PROBIT         |BELARUS                      |0                  |NA             | 0.1230237| 0.1037281| 0.1423193|
|0-24 months (no birth st.) |PROBIT         |BELARUS                      |1                  |NA             | 0.1204024| 0.1041301| 0.1366748|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |0                  |NA             | 0.3531963| 0.2736826| 0.4327100|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |1                  |NA             | 0.3816697| 0.3390958| 0.4242436|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | 0.2241186| 0.1638879| 0.2843494|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.3059611| 0.2858569| 0.3260653|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE                     |0                  |NA             | 0.3383778| 0.3101301| 0.3666255|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | 0.3505236| 0.3417938| 0.3592534|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |0                  |NA             | 0.4000000| 0.1849281| 0.6150719|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |1                  |NA             | 0.3823529| 0.3245019| 0.4402040|
|0-6 months (no birth st.)  |IRC            |INDIA                        |0                  |NA             | 0.4005655| 0.2745013| 0.5266297|
|0-6 months (no birth st.)  |IRC            |INDIA                        |1                  |NA             | 0.3316507| 0.2783452| 0.3849563|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |0                  |NA             | 0.0789227| 0.0590306| 0.0988149|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.1332067| 0.1274222| 0.1389913|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |0                  |NA             | 0.1033359| 0.0493175| 0.1573544|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |1                  |NA             | 0.0981088| 0.0851910| 0.1110267|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |0                  |NA             | 0.1740787| 0.1187831| 0.2293743|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |1                  |NA             | 0.2107101| 0.1608735| 0.2605467|
|0-6 months (no birth st.)  |PROBIT         |BELARUS                      |0                  |NA             | 0.0620345| 0.0480671| 0.0760018|
|0-6 months (no birth st.)  |PROBIT         |BELARUS                      |1                  |NA             | 0.0610786| 0.0499409| 0.0722163|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |0                  |NA             | 0.1083225| 0.0542115| 0.1624336|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |1                  |NA             | 0.1709360| 0.1375484| 0.2043236|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | 0.1085063| 0.0631892| 0.1538235|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.1410923| 0.1259082| 0.1562764|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE                     |0                  |NA             | 0.1636314| 0.1410114| 0.1862513|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | 0.1738384| 0.1668932| 0.1807835|


### Parameter: E(Y)


|agecat                     |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:--------------------------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth st.) |IRC            |INDIA                        |NA                 |NA             | 0.5916667| 0.5408218| 0.6425115|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.2522552| 0.2445070| 0.2600034|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.4270574| 0.4065290| 0.4475857|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.4143519| 0.3678455| 0.4608582|
|0-24 months (no birth st.) |PROBIT         |BELARUS                      |NA                 |NA             | 0.1205488| 0.1047261| 0.1363714|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.3759874| 0.3382238| 0.4137509|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.2990485| 0.2799429| 0.3181541|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.3487442| 0.3403900| 0.3570984|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.3835616| 0.3276935| 0.4394298|
|0-6 months (no birth st.)  |IRC            |INDIA                        |NA                 |NA             | 0.3444444| 0.2952897| 0.3935992|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.1301138| 0.1245115| 0.1357160|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.0978125| 0.0850264| 0.1105986|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.1944444| 0.1570803| 0.2318086|
|0-6 months (no birth st.)  |PROBIT         |BELARUS                      |NA                 |NA             | 0.0614448| 0.0507274| 0.0721623|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.1595577| 0.1310079| 0.1881074|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1381966| 0.1237955| 0.1525978|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.1721902| 0.1655693| 0.1788111|


### Parameter: RR


|agecat                     |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:--------------------------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth st.) |IRC            |INDIA                        |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |IRC            |INDIA                        |1                  |0              | 0.9910149| 0.7841886| 1.252391|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |1                  |0              | 1.3807669| 1.1786833| 1.617498|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |1                  |0              | 1.1645267| 0.8962567| 1.513096|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |1                  |0              | 1.3220144| 1.0407747| 1.679251|
|0-24 months (no birth st.) |PROBIT         |BELARUS                      |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |PROBIT         |BELARUS                      |1                  |0              | 0.9786929| 0.8559841| 1.118993|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |1                  |0              | 1.0806163| 0.8422891| 1.386379|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |0              | 1.3651748| 1.0358799| 1.799149|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE                     |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE                     |1                  |0              | 1.0358943| 0.9499173| 1.129653|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |1                  |0              | 0.9558824| 0.5467942| 1.671033|
|0-6 months (no birth st.)  |IRC            |INDIA                        |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |IRC            |INDIA                        |1                  |0              | 0.8279563| 0.5814883| 1.178892|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |1                  |0              | 1.6878123| 1.3095602| 2.175318|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |1                  |0              | 0.9494164| 0.5555368| 1.622560|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |1                  |0              | 1.2104303| 0.8168836| 1.793574|
|0-6 months (no birth st.)  |PROBIT         |BELARUS                      |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |PROBIT         |BELARUS                      |1                  |0              | 0.9845920| 0.8045404| 1.204938|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |1                  |0              | 1.5780282| 0.9223913| 2.699693|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |0              | 1.3003144| 0.8453748| 2.000080|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE                     |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE                     |1                  |0              | 1.0623782| 0.9203979| 1.226260|


### Parameter: PAR


|agecat                     |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:--------------------------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth st.) |IRC            |INDIA                        |0                  |NA             | -0.0015998| -0.1179342| 0.1147345|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |0                  |NA             |  0.0672187|  0.0386647| 0.0957727|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |0                  |NA             |  0.0532661| -0.0395886| 0.1461209|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |0                  |NA             |  0.0692799|  0.0139542| 0.1246055|
|0-24 months (no birth st.) |PROBIT         |BELARUS                      |0                  |NA             | -0.0024749| -0.0171573| 0.0122075|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |0                  |NA             |  0.0227911| -0.0474264| 0.0930086|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             |  0.0749298|  0.0169281| 0.1329315|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE                     |0                  |NA             |  0.0103664| -0.0166337| 0.0373665|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |0                  |NA             | -0.0164384| -0.2239010| 0.1910243|
|0-6 months (no birth st.)  |IRC            |INDIA                        |0                  |NA             | -0.0561211| -0.1707381| 0.0584960|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |0                  |NA             |  0.0511910|  0.0316022| 0.0707798|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |0                  |NA             | -0.0055234| -0.0564524| 0.0454056|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |0                  |NA             |  0.0203658| -0.0239156| 0.0646472|
|0-6 months (no birth st.)  |PROBIT         |BELARUS                      |0                  |NA             | -0.0005896| -0.0117213| 0.0105421|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |0                  |NA             |  0.0512351|  0.0016902| 0.1007800|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             |  0.0296903| -0.0139205| 0.0733012|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE                     |0                  |NA             |  0.0085588| -0.0131233| 0.0302410|


### Parameter: PAF


|agecat                     |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:--------------------------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth st.) |IRC            |INDIA                        |0                  |NA             | -0.0027039| -0.2199261| 0.1758393|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |0                  |NA             |  0.2664710|  0.1445091| 0.3710456|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |0                  |NA             |  0.1247283| -0.1225382| 0.3175283|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |0                  |NA             |  0.1672005|  0.0218464| 0.2909550|
|0-24 months (no birth st.) |PROBIT         |BELARUS                      |0                  |NA             | -0.0205305| -0.1505367| 0.0947854|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |0                  |NA             |  0.0606166| -0.1460695| 0.2300282|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             |  0.2505608|  0.0292900| 0.4213935|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE                     |0                  |NA             |  0.0297250| -0.0508707| 0.1041394|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |0                  |NA             | -0.0428571| -0.7517776| 0.3791729|
|0-6 months (no birth st.)  |IRC            |INDIA                        |0                  |NA             | -0.1629321| -0.5483342| 0.1265380|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |0                  |NA             |  0.3934330|  0.2232508| 0.5263290|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |0                  |NA             | -0.0564695| -0.7280058| 0.3540949|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |0                  |NA             |  0.1047382| -0.1533773| 0.3050898|
|0-6 months (no birth st.)  |PROBIT         |BELARUS                      |0                  |NA             | -0.0095958| -0.2084099| 0.1565083|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |0                  |NA             |  0.3211072| -0.0700333| 0.5692700|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             |  0.2148413| -0.1732747| 0.4745695|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE                     |0                  |NA             |  0.0497058| -0.0849368| 0.1676390|
