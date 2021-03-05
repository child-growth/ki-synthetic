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

**Intervention Variable:** parity

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_nrooms
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_nrooms
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |parity | pers_wast| n_cell|     n|
|:-----------|:--------------|:----------------------------|:------|---------:|------:|-----:|
|0-24 months |COHORTS        |GUATEMALA                    |1      |         0|    142|  1053|
|0-24 months |COHORTS        |GUATEMALA                    |1      |         1|      4|  1053|
|0-24 months |COHORTS        |GUATEMALA                    |2      |         0|    144|  1053|
|0-24 months |COHORTS        |GUATEMALA                    |2      |         1|      3|  1053|
|0-24 months |COHORTS        |GUATEMALA                    |3+     |         0|    731|  1053|
|0-24 months |COHORTS        |GUATEMALA                    |3+     |         1|     29|  1053|
|0-24 months |COHORTS        |INDIA                        |1      |         0|    550|  3595|
|0-24 months |COHORTS        |INDIA                        |1      |         1|     46|  3595|
|0-24 months |COHORTS        |INDIA                        |2      |         0|    825|  3595|
|0-24 months |COHORTS        |INDIA                        |2      |         1|     73|  3595|
|0-24 months |COHORTS        |INDIA                        |3+     |         0|   1853|  3595|
|0-24 months |COHORTS        |INDIA                        |3+     |         1|    248|  3595|
|0-24 months |COHORTS        |PHILIPPINES                  |1      |         0|    583|  2811|
|0-24 months |COHORTS        |PHILIPPINES                  |1      |         1|     24|  2811|
|0-24 months |COHORTS        |PHILIPPINES                  |2      |         0|    608|  2811|
|0-24 months |COHORTS        |PHILIPPINES                  |2      |         1|     19|  2811|
|0-24 months |COHORTS        |PHILIPPINES                  |3+     |         0|   1476|  2811|
|0-24 months |COHORTS        |PHILIPPINES                  |3+     |         1|    101|  2811|
|0-24 months |GMS-Nepal      |NEPAL                        |1      |         0|    150|   597|
|0-24 months |GMS-Nepal      |NEPAL                        |1      |         1|     19|   597|
|0-24 months |GMS-Nepal      |NEPAL                        |2      |         0|    130|   597|
|0-24 months |GMS-Nepal      |NEPAL                        |2      |         1|     25|   597|
|0-24 months |GMS-Nepal      |NEPAL                        |3+     |         0|    237|   597|
|0-24 months |GMS-Nepal      |NEPAL                        |3+     |         1|     36|   597|
|0-24 months |JiVitA-3       |BANGLADESH                   |1      |         0|   5444| 15803|
|0-24 months |JiVitA-3       |BANGLADESH                   |1      |         1|    365| 15803|
|0-24 months |JiVitA-3       |BANGLADESH                   |2      |         0|   5185| 15803|
|0-24 months |JiVitA-3       |BANGLADESH                   |2      |         1|    256| 15803|
|0-24 months |JiVitA-3       |BANGLADESH                   |3+     |         0|   4276| 15803|
|0-24 months |JiVitA-3       |BANGLADESH                   |3+     |         1|    277| 15803|
|0-24 months |Keneba         |GAMBIA                       |1      |         0|    218|  1853|
|0-24 months |Keneba         |GAMBIA                       |1      |         1|     11|  1853|
|0-24 months |Keneba         |GAMBIA                       |2      |         0|    190|  1853|
|0-24 months |Keneba         |GAMBIA                       |2      |         1|     10|  1853|
|0-24 months |Keneba         |GAMBIA                       |3+     |         0|   1342|  1853|
|0-24 months |Keneba         |GAMBIA                       |3+     |         1|     82|  1853|
|0-24 months |PROVIDE        |BANGLADESH                   |1      |         0|    238|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |1      |         1|      4|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |2      |         0|    223|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |2      |         1|      4|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |3+     |         0|    165|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |3+     |         1|      7|   641|
|0-24 months |SAS-CompFeed   |INDIA                        |1      |         0|    378|  1366|
|0-24 months |SAS-CompFeed   |INDIA                        |1      |         1|     30|  1366|
|0-24 months |SAS-CompFeed   |INDIA                        |2      |         0|    291|  1366|
|0-24 months |SAS-CompFeed   |INDIA                        |2      |         1|     27|  1366|
|0-24 months |SAS-CompFeed   |INDIA                        |3+     |         0|    583|  1366|
|0-24 months |SAS-CompFeed   |INDIA                        |3+     |         1|     57|  1366|
|0-24 months |SAS-FoodSuppl  |INDIA                        |1      |         0|      1|   375|
|0-24 months |SAS-FoodSuppl  |INDIA                        |1      |         1|      1|   375|
|0-24 months |SAS-FoodSuppl  |INDIA                        |2      |         0|     62|   375|
|0-24 months |SAS-FoodSuppl  |INDIA                        |2      |         1|      7|   375|
|0-24 months |SAS-FoodSuppl  |INDIA                        |3+     |         0|    247|   375|
|0-24 months |SAS-FoodSuppl  |INDIA                        |3+     |         1|     57|   375|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |         0|    710|  2132|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |         1|     18|  2132|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2      |         0|    683|  2132|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2      |         1|     20|  2132|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3+     |         0|    682|  2132|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3+     |         1|     19|  2132|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1      |         0|   3741|  9526|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1      |         1|     63|  9526|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |2      |         0|   2873|  9526|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |2      |         1|     51|  9526|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |3+     |         0|   2744|  9526|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |3+     |         1|     54|  9526|


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/8117f741-9783-40e2-965d-6a0016835d70/eb7cd92b-17d5-4a3b-8d6e-b2e20ce4adc5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8117f741-9783-40e2-965d-6a0016835d70/eb7cd92b-17d5-4a3b-8d6e-b2e20ce4adc5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8117f741-9783-40e2-965d-6a0016835d70/eb7cd92b-17d5-4a3b-8d6e-b2e20ce4adc5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8117f741-9783-40e2-965d-6a0016835d70/eb7cd92b-17d5-4a3b-8d6e-b2e20ce4adc5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |INDIA                        |1                  |NA             | 0.0737972| 0.0471704| 0.1004240|
|0-24 months |COHORTS        |INDIA                        |2                  |NA             | 0.0760651| 0.0536644| 0.0984657|
|0-24 months |COHORTS        |INDIA                        |3+                 |NA             | 0.1208921| 0.1029511| 0.1388331|
|0-24 months |COHORTS        |PHILIPPINES                  |1                  |NA             | 0.0401065| 0.0244958| 0.0557173|
|0-24 months |COHORTS        |PHILIPPINES                  |2                  |NA             | 0.0305080| 0.0169497| 0.0440663|
|0-24 months |COHORTS        |PHILIPPINES                  |3+                 |NA             | 0.0646332| 0.0525160| 0.0767505|
|0-24 months |GMS-Nepal      |NEPAL                        |1                  |NA             | 0.0954105| 0.0169443| 0.1738768|
|0-24 months |GMS-Nepal      |NEPAL                        |2                  |NA             | 0.1679897| 0.0336163| 0.3023630|
|0-24 months |GMS-Nepal      |NEPAL                        |3+                 |NA             | 0.0975210| 0.0653198| 0.1297222|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.0884783| 0.0728199| 0.1041368|
|0-24 months |JiVitA-3       |BANGLADESH                   |2                  |NA             | 0.0477672| 0.0382660| 0.0572685|
|0-24 months |JiVitA-3       |BANGLADESH                   |3+                 |NA             | 0.0629076| 0.0527693| 0.0730459|
|0-24 months |Keneba         |GAMBIA                       |1                  |NA             | 0.1504128| 0.0959542| 0.2048715|
|0-24 months |Keneba         |GAMBIA                       |2                  |NA             | 0.0249605| 0.0095112| 0.0404097|
|0-24 months |Keneba         |GAMBIA                       |3+                 |NA             | 0.0511852| 0.0394346| 0.0629357|
|0-24 months |SAS-CompFeed   |INDIA                        |1                  |NA             | 0.0875464| 0.0467227| 0.1283702|
|0-24 months |SAS-CompFeed   |INDIA                        |2                  |NA             | 0.1034097| 0.0473879| 0.1594314|
|0-24 months |SAS-CompFeed   |INDIA                        |3+                 |NA             | 0.0719805| 0.0336925| 0.1102684|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.0249177| 0.0135369| 0.0362985|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2                  |NA             | 0.0284888| 0.0160637| 0.0409140|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3+                 |NA             | 0.0269976| 0.0148906| 0.0391046|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | 0.0155769| 0.0107518| 0.0204021|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |2                  |NA             | 0.0175732| 0.0106314| 0.0245149|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |3+                 |NA             | 0.0187834| 0.0097289| 0.0278379|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.1020862| 0.0921879| 0.1119845|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.0512273| 0.0430760| 0.0593786|
|0-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.1340034| 0.1066544| 0.1613523|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.0568247| 0.0527145| 0.0609348|
|0-24 months |Keneba         |GAMBIA                       |NA                 |NA             | 0.0555855| 0.0451506| 0.0660205|
|0-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.0834553| 0.0601989| 0.1067118|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0267355| 0.0198866| 0.0335843|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.0176359| 0.0149926| 0.0202793|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS        |INDIA                        |2                  |1              | 1.0307308| 0.6471205| 1.6417435|
|0-24 months |COHORTS        |INDIA                        |3+                 |1              | 1.6381656| 1.1092105| 2.4193662|
|0-24 months |COHORTS        |PHILIPPINES                  |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS        |PHILIPPINES                  |2                  |1              | 0.7606732| 0.4213771| 1.3731735|
|0-24 months |COHORTS        |PHILIPPINES                  |3+                 |1              | 1.6115382| 1.0466711| 2.4812526|
|0-24 months |GMS-Nepal      |NEPAL                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |GMS-Nepal      |NEPAL                        |2                  |1              | 1.7607032| 0.5590116| 5.5456369|
|0-24 months |GMS-Nepal      |NEPAL                        |3+                 |1              | 1.0221200| 0.4205439| 2.4842340|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |2                  |1              | 0.5398749| 0.4127948| 0.7060770|
|0-24 months |JiVitA-3       |BANGLADESH                   |3+                 |1              | 0.7109943| 0.5575817| 0.9066168|
|0-24 months |Keneba         |GAMBIA                       |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |Keneba         |GAMBIA                       |2                  |1              | 0.1659463| 0.0808917| 0.3404326|
|0-24 months |Keneba         |GAMBIA                       |3+                 |1              | 0.3402978| 0.2217962| 0.5221125|
|0-24 months |SAS-CompFeed   |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |SAS-CompFeed   |INDIA                        |2                  |1              | 1.1811979| 0.5782563| 2.4128201|
|0-24 months |SAS-CompFeed   |INDIA                        |3+                 |1              | 0.8221979| 0.3757705| 1.7989955|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2                  |1              | 1.1433174| 0.6079564| 2.1501126|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3+                 |1              | 1.0834712| 0.5712628| 2.0549386|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |2                  |1              | 1.1281532| 0.6829189| 1.8636614|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |3+                 |1              | 1.2058470| 0.6799471| 2.1385000|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |COHORTS        |INDIA                        |1                  |NA             |  0.0282890|  0.0023899|  0.0541881|
|0-24 months |COHORTS        |PHILIPPINES                  |1                  |NA             |  0.0111208| -0.0032154|  0.0254569|
|0-24 months |GMS-Nepal      |NEPAL                        |1                  |NA             |  0.0385928| -0.0378603|  0.1150459|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             | -0.0316537| -0.0464409| -0.0168664|
|0-24 months |Keneba         |GAMBIA                       |1                  |NA             | -0.0948273| -0.1484199| -0.0412347|
|0-24 months |SAS-CompFeed   |INDIA                        |1                  |NA             | -0.0040911| -0.0466178|  0.0384356|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             |  0.0018178| -0.0076145|  0.0112501|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |NA             |  0.0020590| -0.0021956|  0.0063136|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |COHORTS        |INDIA                        |1                  |NA             |  0.2771089| -0.0243737|  0.4898624|
|0-24 months |COHORTS        |PHILIPPINES                  |1                  |NA             |  0.2170868| -0.1163826|  0.4509471|
|0-24 months |GMS-Nepal      |NEPAL                        |1                  |NA             |  0.2879988| -0.5797433|  0.6790961|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             | -0.5570415| -0.8401910| -0.3174602|
|0-24 months |Keneba         |GAMBIA                       |1                  |NA             | -1.7059708| -2.9449668| -0.8561063|
|0-24 months |SAS-CompFeed   |INDIA                        |1                  |NA             | -0.0490212| -0.7130352|  0.3576049|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             |  0.0679907| -0.3602491|  0.3614101|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |NA             |  0.1167500| -0.1596413|  0.3272656|
