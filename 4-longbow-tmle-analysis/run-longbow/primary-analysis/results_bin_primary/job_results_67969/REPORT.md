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

**Intervention Variable:** nhh

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid       |country    |nhh       | ever_sstunted| n_cell|   n|
|:-----------|:-------------|:----------|:---------|-------------:|------:|---:|
|0-24 months |IRC           |INDIA      |3 or less |             0|     47| 410|
|0-24 months |IRC           |INDIA      |3 or less |             1|     11| 410|
|0-24 months |IRC           |INDIA      |4-5       |             0|    114| 410|
|0-24 months |IRC           |INDIA      |4-5       |             1|     44| 410|
|0-24 months |IRC           |INDIA      |6-7       |             0|     80| 410|
|0-24 months |IRC           |INDIA      |6-7       |             1|     27| 410|
|0-24 months |IRC           |INDIA      |8+        |             0|     67| 410|
|0-24 months |IRC           |INDIA      |8+        |             1|     20| 410|
|0-24 months |LCNI-5        |MALAWI     |3 or less |             0|    183| 817|
|0-24 months |LCNI-5        |MALAWI     |3 or less |             1|     42| 817|
|0-24 months |LCNI-5        |MALAWI     |4-5       |             0|    263| 817|
|0-24 months |LCNI-5        |MALAWI     |4-5       |             1|     77| 817|
|0-24 months |LCNI-5        |MALAWI     |6-7       |             0|    146| 817|
|0-24 months |LCNI-5        |MALAWI     |6-7       |             1|     36| 817|
|0-24 months |LCNI-5        |MALAWI     |8+        |             0|     55| 817|
|0-24 months |LCNI-5        |MALAWI     |8+        |             1|     15| 817|
|0-24 months |NIH-Birth     |BANGLADESH |3 or less |             0|     87| 629|
|0-24 months |NIH-Birth     |BANGLADESH |3 or less |             1|     30| 629|
|0-24 months |NIH-Birth     |BANGLADESH |4-5       |             0|    172| 629|
|0-24 months |NIH-Birth     |BANGLADESH |4-5       |             1|     92| 629|
|0-24 months |NIH-Birth     |BANGLADESH |6-7       |             0|     98| 629|
|0-24 months |NIH-Birth     |BANGLADESH |6-7       |             1|     44| 629|
|0-24 months |NIH-Birth     |BANGLADESH |8+        |             0|     76| 629|
|0-24 months |NIH-Birth     |BANGLADESH |8+        |             1|     30| 629|
|0-24 months |NIH-Crypto    |BANGLADESH |3 or less |             0|    102| 758|
|0-24 months |NIH-Crypto    |BANGLADESH |3 or less |             1|     12| 758|
|0-24 months |NIH-Crypto    |BANGLADESH |4-5       |             0|    295| 758|
|0-24 months |NIH-Crypto    |BANGLADESH |4-5       |             1|     47| 758|
|0-24 months |NIH-Crypto    |BANGLADESH |6-7       |             0|    153| 758|
|0-24 months |NIH-Crypto    |BANGLADESH |6-7       |             1|     25| 758|
|0-24 months |NIH-Crypto    |BANGLADESH |8+        |             0|    109| 758|
|0-24 months |NIH-Crypto    |BANGLADESH |8+        |             1|     15| 758|
|0-24 months |PROVIDE       |BANGLADESH |3 or less |             0|    117| 700|
|0-24 months |PROVIDE       |BANGLADESH |3 or less |             1|     23| 700|
|0-24 months |PROVIDE       |BANGLADESH |4-5       |             0|    280| 700|
|0-24 months |PROVIDE       |BANGLADESH |4-5       |             1|     42| 700|
|0-24 months |PROVIDE       |BANGLADESH |6-7       |             0|    135| 700|
|0-24 months |PROVIDE       |BANGLADESH |6-7       |             1|     16| 700|
|0-24 months |PROVIDE       |BANGLADESH |8+        |             0|     73| 700|
|0-24 months |PROVIDE       |BANGLADESH |8+        |             1|     14| 700|
|0-24 months |SAS-FoodSuppl |INDIA      |3 or less |             0|     28| 418|
|0-24 months |SAS-FoodSuppl |INDIA      |3 or less |             1|     10| 418|
|0-24 months |SAS-FoodSuppl |INDIA      |4-5       |             0|     97| 418|
|0-24 months |SAS-FoodSuppl |INDIA      |4-5       |             1|     86| 418|
|0-24 months |SAS-FoodSuppl |INDIA      |6-7       |             0|     58| 418|
|0-24 months |SAS-FoodSuppl |INDIA      |6-7       |             1|     69| 418|
|0-24 months |SAS-FoodSuppl |INDIA      |8+        |             0|     34| 418|
|0-24 months |SAS-FoodSuppl |INDIA      |8+        |             1|     36| 418|


The following strata were considered:

* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA



## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/602a2a66-bd0b-48bd-a66e-33f408033fcf/92e39493-60cc-4261-afbb-8d93766076c0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/602a2a66-bd0b-48bd-a66e-33f408033fcf/92e39493-60cc-4261-afbb-8d93766076c0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/602a2a66-bd0b-48bd-a66e-33f408033fcf/92e39493-60cc-4261-afbb-8d93766076c0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/602a2a66-bd0b-48bd-a66e-33f408033fcf/92e39493-60cc-4261-afbb-8d93766076c0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid       |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |IRC           |INDIA      |3 or less          |NA             | 0.2030063| 0.0977676| 0.3082450|
|0-24 months |IRC           |INDIA      |4-5                |NA             | 0.2768093| 0.2064606| 0.3471580|
|0-24 months |IRC           |INDIA      |6-7                |NA             | 0.2528983| 0.1698285| 0.3359682|
|0-24 months |IRC           |INDIA      |8+                 |NA             | 0.2293172| 0.1394007| 0.3192336|
|0-24 months |LCNI-5        |MALAWI     |3 or less          |NA             | 0.2012359| 0.1444682| 0.2580037|
|0-24 months |LCNI-5        |MALAWI     |4-5                |NA             | 0.2236719| 0.1774623| 0.2698815|
|0-24 months |LCNI-5        |MALAWI     |6-7                |NA             | 0.1915333| 0.1304503| 0.2526163|
|0-24 months |LCNI-5        |MALAWI     |8+                 |NA             | 0.2037601| 0.1045961| 0.3029240|
|0-24 months |NIH-Birth     |BANGLADESH |3 or less          |NA             | 0.3068479| 0.2243182| 0.3893775|
|0-24 months |NIH-Birth     |BANGLADESH |4-5                |NA             | 0.3368833| 0.2776948| 0.3960718|
|0-24 months |NIH-Birth     |BANGLADESH |6-7                |NA             | 0.3305670| 0.2482032| 0.4129309|
|0-24 months |NIH-Birth     |BANGLADESH |8+                 |NA             | 0.2974118| 0.1968014| 0.3980223|
|0-24 months |NIH-Crypto    |BANGLADESH |3 or less          |NA             | 0.1015079| 0.0449925| 0.1580233|
|0-24 months |NIH-Crypto    |BANGLADESH |4-5                |NA             | 0.1346138| 0.0982017| 0.1710260|
|0-24 months |NIH-Crypto    |BANGLADESH |6-7                |NA             | 0.1426277| 0.0911600| 0.1940954|
|0-24 months |NIH-Crypto    |BANGLADESH |8+                 |NA             | 0.1317015| 0.0746345| 0.1887686|
|0-24 months |PROVIDE       |BANGLADESH |3 or less          |NA             | 0.1717882| 0.1090200| 0.2345564|
|0-24 months |PROVIDE       |BANGLADESH |4-5                |NA             | 0.1289252| 0.0922987| 0.1655516|
|0-24 months |PROVIDE       |BANGLADESH |6-7                |NA             | 0.1077374| 0.0578588| 0.1576159|
|0-24 months |PROVIDE       |BANGLADESH |8+                 |NA             | 0.1560434| 0.0803868| 0.2317000|
|0-24 months |SAS-FoodSuppl |INDIA      |3 or less          |NA             | 0.2257683| 0.0943781| 0.3571586|
|0-24 months |SAS-FoodSuppl |INDIA      |4-5                |NA             | 0.4630086| 0.3891254| 0.5368918|
|0-24 months |SAS-FoodSuppl |INDIA      |6-7                |NA             | 0.5245159| 0.4345321| 0.6144996|
|0-24 months |SAS-FoodSuppl |INDIA      |8+                 |NA             | 0.5218630| 0.3857966| 0.6579295|


### Parameter: E(Y)


|agecat      |studyid       |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |IRC           |INDIA      |NA                 |NA             | 0.2487805| 0.2068840| 0.2906770|
|0-24 months |LCNI-5        |MALAWI     |NA                 |NA             | 0.2080783| 0.1802263| 0.2359304|
|0-24 months |NIH-Birth     |BANGLADESH |NA                 |NA             | 0.3116057| 0.2753823| 0.3478292|
|0-24 months |NIH-Crypto    |BANGLADESH |NA                 |NA             | 0.1306069| 0.1066024| 0.1546113|
|0-24 months |PROVIDE       |BANGLADESH |NA                 |NA             | 0.1357143| 0.1103250| 0.1611036|
|0-24 months |SAS-FoodSuppl |INDIA      |NA                 |NA             | 0.4808612| 0.4329065| 0.5288160|


### Parameter: RR


|agecat      |studyid       |country    |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:-------------|:----------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |IRC           |INDIA      |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.000000|
|0-24 months |IRC           |INDIA      |4-5                |3 or less      | 1.3635506| 0.7652764| 2.429541|
|0-24 months |IRC           |INDIA      |6-7                |3 or less      | 1.2457663| 0.6741019| 2.302224|
|0-24 months |IRC           |INDIA      |8+                 |3 or less      | 1.1296064| 0.5895596| 2.164345|
|0-24 months |LCNI-5        |MALAWI     |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.000000|
|0-24 months |LCNI-5        |MALAWI     |4-5                |3 or less      | 1.1114910| 0.7833854| 1.577017|
|0-24 months |LCNI-5        |MALAWI     |6-7                |3 or less      | 0.9517846| 0.6216722| 1.457189|
|0-24 months |LCNI-5        |MALAWI     |8+                 |3 or less      | 1.0125431| 0.5768065| 1.777448|
|0-24 months |NIH-Birth     |BANGLADESH |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Birth     |BANGLADESH |4-5                |3 or less      | 1.0978838| 0.7969662| 1.512422|
|0-24 months |NIH-Birth     |BANGLADESH |6-7                |3 or less      | 1.0772994| 0.7488292| 1.549852|
|0-24 months |NIH-Birth     |BANGLADESH |8+                 |3 or less      | 0.9692486| 0.6295682| 1.492202|
|0-24 months |NIH-Crypto    |BANGLADESH |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Crypto    |BANGLADESH |4-5                |3 or less      | 1.3261415| 0.7152320| 2.458855|
|0-24 months |NIH-Crypto    |BANGLADESH |6-7                |3 or less      | 1.4050900| 0.7242583| 2.725931|
|0-24 months |NIH-Crypto    |BANGLADESH |8+                 |3 or less      | 1.2974510| 0.6422002| 2.621269|
|0-24 months |PROVIDE       |BANGLADESH |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROVIDE       |BANGLADESH |4-5                |3 or less      | 0.7504890| 0.4728183| 1.191226|
|0-24 months |PROVIDE       |BANGLADESH |6-7                |3 or less      | 0.6271522| 0.3477552| 1.131025|
|0-24 months |PROVIDE       |BANGLADESH |8+                 |3 or less      | 0.9083474| 0.4952486| 1.666022|
|0-24 months |SAS-FoodSuppl |INDIA      |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-FoodSuppl |INDIA      |4-5                |3 or less      | 2.0508127| 1.1231098| 3.744810|
|0-24 months |SAS-FoodSuppl |INDIA      |6-7                |3 or less      | 2.3232482| 1.2647992| 4.267462|
|0-24 months |SAS-FoodSuppl |INDIA      |8+                 |3 or less      | 2.3114977| 1.2211464| 4.375415|


### Parameter: PAR


|agecat      |studyid       |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:-------------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |IRC           |INDIA      |3 or less          |NA             |  0.0457742| -0.0534726| 0.1450211|
|0-24 months |LCNI-5        |MALAWI     |3 or less          |NA             |  0.0068424| -0.0435655| 0.0572503|
|0-24 months |NIH-Birth     |BANGLADESH |3 or less          |NA             |  0.0047579| -0.0714587| 0.0809744|
|0-24 months |NIH-Crypto    |BANGLADESH |3 or less          |NA             |  0.0290990| -0.0238265| 0.0820244|
|0-24 months |PROVIDE       |BANGLADESH |3 or less          |NA             | -0.0360739| -0.0912326| 0.0190847|
|0-24 months |SAS-FoodSuppl |INDIA      |3 or less          |NA             |  0.2550929|  0.1262022| 0.3839836|


### Parameter: PAF


|agecat      |studyid       |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:-------------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |IRC           |INDIA      |3 or less          |NA             |  0.1839945| -0.3292367| 0.4990621|
|0-24 months |LCNI-5        |MALAWI     |3 or less          |NA             |  0.0328838| -0.2422739| 0.2470954|
|0-24 months |NIH-Birth     |BANGLADESH |3 or less          |NA             |  0.0152689| -0.2622605| 0.2317787|
|0-24 months |NIH-Crypto    |BANGLADESH |3 or less          |NA             |  0.2227982| -0.3076043| 0.5380539|
|0-24 months |PROVIDE       |BANGLADESH |3 or less          |NA             | -0.2658078| -0.7430766| 0.0807809|
|0-24 months |SAS-FoodSuppl |INDIA      |3 or less          |NA             |  0.5304917|  0.1722932| 0.7336762|
