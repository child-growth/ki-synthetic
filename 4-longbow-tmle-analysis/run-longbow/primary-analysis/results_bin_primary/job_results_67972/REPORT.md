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

|agecat      |studyid        |country                      |parity | ever_sstunted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:------|-------------:|------:|-----:|
|0-24 months |COHORTS        |GUATEMALA                    |1      |             0|    121|  1360|
|0-24 months |COHORTS        |GUATEMALA                    |1      |             1|     92|  1360|
|0-24 months |COHORTS        |GUATEMALA                    |2      |             0|    105|  1360|
|0-24 months |COHORTS        |GUATEMALA                    |2      |             1|     87|  1360|
|0-24 months |COHORTS        |GUATEMALA                    |3+     |             0|    503|  1360|
|0-24 months |COHORTS        |GUATEMALA                    |3+     |             1|    452|  1360|
|0-24 months |COHORTS        |INDIA                        |1      |             0|    723|  4630|
|0-24 months |COHORTS        |INDIA                        |1      |             1|     89|  4630|
|0-24 months |COHORTS        |INDIA                        |2      |             0|   1061|  4630|
|0-24 months |COHORTS        |INDIA                        |2      |             1|    124|  4630|
|0-24 months |COHORTS        |INDIA                        |3+     |             0|   2205|  4630|
|0-24 months |COHORTS        |INDIA                        |3+     |             1|    428|  4630|
|0-24 months |COHORTS        |PHILIPPINES                  |1      |             0|    505|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |1      |             1|    173|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |2      |             0|    470|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |2      |             1|    220|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |3+     |             0|    994|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |3+     |             1|    696|  3058|
|0-24 months |GMS-Nepal      |NEPAL                        |1      |             0|    159|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |1      |             1|     52|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |2      |             0|    143|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |2      |             1|     38|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |3+     |             0|    227|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |3+     |             1|     79|   698|
|0-24 months |JiVitA-3       |BANGLADESH                   |1      |             0|   7949| 27227|
|0-24 months |JiVitA-3       |BANGLADESH                   |1      |             1|   2303| 27227|
|0-24 months |JiVitA-3       |BANGLADESH                   |2      |             0|   7618| 27227|
|0-24 months |JiVitA-3       |BANGLADESH                   |2      |             1|   1381| 27227|
|0-24 months |JiVitA-3       |BANGLADESH                   |3+     |             0|   6638| 27227|
|0-24 months |JiVitA-3       |BANGLADESH                   |3+     |             1|   1338| 27227|
|0-24 months |Keneba         |GAMBIA                       |1      |             0|    182|  1990|
|0-24 months |Keneba         |GAMBIA                       |1      |             1|     59|  1990|
|0-24 months |Keneba         |GAMBIA                       |2      |             0|    173|  1990|
|0-24 months |Keneba         |GAMBIA                       |2      |             1|     41|  1990|
|0-24 months |Keneba         |GAMBIA                       |3+     |             0|   1158|  1990|
|0-24 months |Keneba         |GAMBIA                       |3+     |             1|    377|  1990|
|0-24 months |PROVIDE        |BANGLADESH                   |1      |             0|    227|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |1      |             1|     44|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |2      |             0|    214|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |2      |             1|     30|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |3+     |             0|    164|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |3+     |             1|     21|   700|
|0-24 months |SAS-CompFeed   |INDIA                        |1      |             0|    310|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |1      |             1|    142|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |2      |             0|    261|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |2      |             1|     99|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |3+     |             0|    455|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |3+     |             1|    266|  1533|
|0-24 months |SAS-FoodSuppl  |INDIA                        |1      |             0|     17|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |1      |             1|      4|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |2      |             0|     46|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |2      |             1|     31|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |3+     |             0|    154|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |3+     |             1|    166|   418|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |             0|    750|  2357|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |             1|     71|  2357|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2      |             0|    688|  2357|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2      |             1|     83|  2357|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3+     |             0|    685|  2357|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3+     |             1|     80|  2357|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1      |             0|   5089| 14073|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1      |             1|    980| 14073|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |2      |             0|   3551| 14073|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |2      |             1|    661| 14073|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |3+     |             0|   3067| 14073|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |3+     |             1|    725| 14073|


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
![](/tmp/730bf93d-0834-4db7-b615-98f745f9750e/cc1a1477-69fe-43b7-9ec1-7a095a4c9457/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/730bf93d-0834-4db7-b615-98f745f9750e/cc1a1477-69fe-43b7-9ec1-7a095a4c9457/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/730bf93d-0834-4db7-b615-98f745f9750e/cc1a1477-69fe-43b7-9ec1-7a095a4c9457/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/730bf93d-0834-4db7-b615-98f745f9750e/cc1a1477-69fe-43b7-9ec1-7a095a4c9457/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |1                  |NA             | 0.3625690| 0.2641660| 0.4609721|
|0-24 months |COHORTS        |GUATEMALA                    |2                  |NA             | 0.4123892| 0.3022001| 0.5225783|
|0-24 months |COHORTS        |GUATEMALA                    |3+                 |NA             | 0.4613566| 0.4254317| 0.4972814|
|0-24 months |COHORTS        |INDIA                        |1                  |NA             | 0.1206763| 0.0853754| 0.1559772|
|0-24 months |COHORTS        |INDIA                        |2                  |NA             | 0.1188373| 0.0947545| 0.1429201|
|0-24 months |COHORTS        |INDIA                        |3+                 |NA             | 0.1376065| 0.1243051| 0.1509078|
|0-24 months |COHORTS        |PHILIPPINES                  |1                  |NA             | 0.2521194| 0.2040122| 0.3002267|
|0-24 months |COHORTS        |PHILIPPINES                  |2                  |NA             | 0.3283330| 0.2750516| 0.3816145|
|0-24 months |COHORTS        |PHILIPPINES                  |3+                 |NA             | 0.3784071| 0.3504905| 0.4063237|
|0-24 months |GMS-Nepal      |NEPAL                        |1                  |NA             | 0.2470339| 0.1444294| 0.3496383|
|0-24 months |GMS-Nepal      |NEPAL                        |2                  |NA             | 0.2061422| 0.1033807| 0.3089037|
|0-24 months |GMS-Nepal      |NEPAL                        |3+                 |NA             | 0.2241721| 0.1640403| 0.2843039|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.2285526| 0.2136126| 0.2434927|
|0-24 months |JiVitA-3       |BANGLADESH                   |2                  |NA             | 0.1661641| 0.1537556| 0.1785725|
|0-24 months |JiVitA-3       |BANGLADESH                   |3+                 |NA             | 0.1337106| 0.1222191| 0.1452022|
|0-24 months |Keneba         |GAMBIA                       |1                  |NA             | 0.2013085| 0.1413558| 0.2612611|
|0-24 months |Keneba         |GAMBIA                       |2                  |NA             | 0.2215143| 0.1360002| 0.3070284|
|0-24 months |Keneba         |GAMBIA                       |3+                 |NA             | 0.2328497| 0.2071038| 0.2585955|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             | 0.1787708| 0.1306366| 0.2269050|
|0-24 months |PROVIDE        |BANGLADESH                   |2                  |NA             | 0.1264359| 0.0830147| 0.1698570|
|0-24 months |PROVIDE        |BANGLADESH                   |3+                 |NA             | 0.1039724| 0.0599025| 0.1480422|
|0-24 months |SAS-CompFeed   |INDIA                        |1                  |NA             | 0.3297921| 0.2816074| 0.3779768|
|0-24 months |SAS-CompFeed   |INDIA                        |2                  |NA             | 0.2781664| 0.2357632| 0.3205695|
|0-24 months |SAS-CompFeed   |INDIA                        |3+                 |NA             | 0.3263763| 0.2859031| 0.3668494|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.0859219| 0.0590450| 0.1127988|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2                  |NA             | 0.1046087| 0.0768022| 0.1324151|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3+                 |NA             | 0.1092658| 0.0808925| 0.1376391|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | 0.1605322| 0.1442613| 0.1768031|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |2                  |NA             | 0.1611912| 0.1445275| 0.1778549|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |3+                 |NA             | 0.2128129| 0.1934494| 0.2321764|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.4639706| 0.4374564| 0.4904847|
|0-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.1384449| 0.1284958| 0.1483940|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.3561151| 0.3391405| 0.3730897|
|0-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.2421203| 0.2103189| 0.2739218|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.1844493| 0.1788538| 0.1900447|
|0-24 months |Keneba         |GAMBIA                       |NA                 |NA             | 0.2396985| 0.2209375| 0.2584595|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.1357143| 0.1103250| 0.1611036|
|0-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.3307241| 0.3024794| 0.3589688|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0992787| 0.0872038| 0.1113537|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.1681234| 0.1619444| 0.1743023|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS        |GUATEMALA                    |2                  |1              | 1.1374088| 0.7777389| 1.6634101|
|0-24 months |COHORTS        |GUATEMALA                    |3+                 |1              | 1.2724654| 0.9604003| 1.6859305|
|0-24 months |COHORTS        |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS        |INDIA                        |2                  |1              | 0.9847608| 0.6903616| 1.4047042|
|0-24 months |COHORTS        |INDIA                        |3+                 |1              | 1.1402939| 0.8387755| 1.5502006|
|0-24 months |COHORTS        |PHILIPPINES                  |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS        |PHILIPPINES                  |2                  |1              | 1.3022918| 1.0154642| 1.6701365|
|0-24 months |COHORTS        |PHILIPPINES                  |3+                 |1              | 1.5009041| 1.2248515| 1.8391724|
|0-24 months |GMS-Nepal      |NEPAL                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |GMS-Nepal      |NEPAL                        |2                  |1              | 0.8344692| 0.4361865| 1.5964248|
|0-24 months |GMS-Nepal      |NEPAL                        |3+                 |1              | 0.9074548| 0.5534904| 1.4877840|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |2                  |1              | 0.7270277| 0.6587802| 0.8023456|
|0-24 months |JiVitA-3       |BANGLADESH                   |3+                 |1              | 0.5850322| 0.5270055| 0.6494479|
|0-24 months |Keneba         |GAMBIA                       |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |Keneba         |GAMBIA                       |2                  |1              | 1.1003723| 0.6755939| 1.7922293|
|0-24 months |Keneba         |GAMBIA                       |3+                 |1              | 1.1566809| 0.8416846| 1.5895631|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |PROVIDE        |BANGLADESH                   |2                  |1              | 0.7072514| 0.4576573| 1.0929676|
|0-24 months |PROVIDE        |BANGLADESH                   |3+                 |1              | 0.5815960| 0.3526644| 0.9591383|
|0-24 months |SAS-CompFeed   |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |SAS-CompFeed   |INDIA                        |2                  |1              | 0.8434598| 0.7280162| 0.9772095|
|0-24 months |SAS-CompFeed   |INDIA                        |3+                 |1              | 0.9896425| 0.8623715| 1.1356965|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2                  |1              | 1.2174856| 0.8073236| 1.8360312|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3+                 |1              | 1.2716875| 0.8467795| 1.9098114|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |2                  |1              | 1.0041051| 0.8689737| 1.1602504|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |3+                 |1              | 1.3256710| 1.1571084| 1.5187892|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |COHORTS        |GUATEMALA                    |1                  |NA             |  0.1014016|  0.0061907|  0.1966124|
|0-24 months |COHORTS        |INDIA                        |1                  |NA             |  0.0177686| -0.0165540|  0.0520913|
|0-24 months |COHORTS        |PHILIPPINES                  |1                  |NA             |  0.1039957|  0.0577088|  0.1502826|
|0-24 months |GMS-Nepal      |NEPAL                        |1                  |NA             | -0.0049135| -0.1022393|  0.0924122|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             | -0.0441034| -0.0578852| -0.0303216|
|0-24 months |Keneba         |GAMBIA                       |1                  |NA             |  0.0383900| -0.0209598|  0.0977399|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             | -0.0430565| -0.0801824| -0.0059306|
|0-24 months |SAS-CompFeed   |INDIA                        |1                  |NA             |  0.0009320| -0.0264639|  0.0283279|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             |  0.0133568| -0.0113180|  0.0380317|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |NA             |  0.0075912| -0.0076400|  0.0228224|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |COHORTS        |GUATEMALA                    |1                  |NA             |  0.2185517| -0.0163439|  0.3991586|
|0-24 months |COHORTS        |INDIA                        |1                  |NA             |  0.1283443| -0.1580953|  0.3439369|
|0-24 months |COHORTS        |PHILIPPINES                  |1                  |NA             |  0.2920283|  0.1496972|  0.4105347|
|0-24 months |GMS-Nepal      |NEPAL                        |1                  |NA             | -0.0202938| -0.5129452|  0.3119384|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             | -0.2391084| -0.3164014| -0.1663536|
|0-24 months |Keneba         |GAMBIA                       |1                  |NA             |  0.1601596| -0.1261151|  0.3736592|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             | -0.3172583| -0.6178154| -0.0725385|
|0-24 months |SAS-CompFeed   |INDIA                        |1                  |NA             |  0.0028180| -0.0836870|  0.0824178|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             |  0.1345388| -0.1529021|  0.3503151|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |NA             |  0.0451523| -0.0498442|  0.1315530|
