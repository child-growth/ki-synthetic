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

**Intervention Variable:** exclfeed6

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |exclfeed6 | pers_wast| n_cell|    n|
|:-----------|:--------------|:----------------------------|:---------|---------:|------:|----:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |1         |         0|     19|   19|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |1         |         1|      0|   19|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |0         |         0|      0|   19|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |0         |         1|      0|   19|
|0-24 months |EE             |PAKISTAN                     |1         |         0|     42|   48|
|0-24 months |EE             |PAKISTAN                     |1         |         1|      1|   48|
|0-24 months |EE             |PAKISTAN                     |0         |         0|      5|   48|
|0-24 months |EE             |PAKISTAN                     |0         |         1|      0|   48|
|0-24 months |GMS-Nepal      |NEPAL                        |1         |         0|    366|  564|
|0-24 months |GMS-Nepal      |NEPAL                        |1         |         1|     54|  564|
|0-24 months |GMS-Nepal      |NEPAL                        |0         |         0|    121|  564|
|0-24 months |GMS-Nepal      |NEPAL                        |0         |         1|     23|  564|
|0-24 months |IRC            |INDIA                        |1         |         0|      0|   14|
|0-24 months |IRC            |INDIA                        |1         |         1|      0|   14|
|0-24 months |IRC            |INDIA                        |0         |         0|     12|   14|
|0-24 months |IRC            |INDIA                        |0         |         1|      2|   14|
|0-24 months |JiVitA-3       |BANGLADESH                   |1         |         0|   6847| 9436|
|0-24 months |JiVitA-3       |BANGLADESH                   |1         |         1|    410| 9436|
|0-24 months |JiVitA-3       |BANGLADESH                   |0         |         0|   2054| 9436|
|0-24 months |JiVitA-3       |BANGLADESH                   |0         |         1|    125| 9436|
|0-24 months |JiVitA-4       |BANGLADESH                   |1         |         0|   3366| 4657|
|0-24 months |JiVitA-4       |BANGLADESH                   |1         |         1|    261| 4657|
|0-24 months |JiVitA-4       |BANGLADESH                   |0         |         0|    924| 4657|
|0-24 months |JiVitA-4       |BANGLADESH                   |0         |         1|    106| 4657|
|0-24 months |Keneba         |GAMBIA                       |1         |         0|    709| 2119|
|0-24 months |Keneba         |GAMBIA                       |1         |         1|     30| 2119|
|0-24 months |Keneba         |GAMBIA                       |0         |         0|   1291| 2119|
|0-24 months |Keneba         |GAMBIA                       |0         |         1|     89| 2119|
|0-24 months |LCNI-5         |MALAWI                       |1         |         0|     42|  240|
|0-24 months |LCNI-5         |MALAWI                       |1         |         1|      0|  240|
|0-24 months |LCNI-5         |MALAWI                       |0         |         0|    195|  240|
|0-24 months |LCNI-5         |MALAWI                       |0         |         1|      3|  240|
|0-24 months |MAL-ED         |BANGLADESH                   |1         |         0|     32|  233|
|0-24 months |MAL-ED         |BANGLADESH                   |1         |         1|      1|  233|
|0-24 months |MAL-ED         |BANGLADESH                   |0         |         0|    188|  233|
|0-24 months |MAL-ED         |BANGLADESH                   |0         |         1|     12|  233|
|0-24 months |MAL-ED         |BRAZIL                       |1         |         0|     12|  210|
|0-24 months |MAL-ED         |BRAZIL                       |1         |         1|      0|  210|
|0-24 months |MAL-ED         |BRAZIL                       |0         |         0|    196|  210|
|0-24 months |MAL-ED         |BRAZIL                       |0         |         1|      2|  210|
|0-24 months |MAL-ED         |INDIA                        |1         |         0|      2|  219|
|0-24 months |MAL-ED         |INDIA                        |1         |         1|      0|  219|
|0-24 months |MAL-ED         |INDIA                        |0         |         0|    199|  219|
|0-24 months |MAL-ED         |INDIA                        |0         |         1|     18|  219|
|0-24 months |MAL-ED         |NEPAL                        |1         |         0|      5|  225|
|0-24 months |MAL-ED         |NEPAL                        |1         |         1|      0|  225|
|0-24 months |MAL-ED         |NEPAL                        |0         |         0|    217|  225|
|0-24 months |MAL-ED         |NEPAL                        |0         |         1|      3|  225|
|0-24 months |MAL-ED         |PERU                         |1         |         0|      5|  271|
|0-24 months |MAL-ED         |PERU                         |1         |         1|      0|  271|
|0-24 months |MAL-ED         |PERU                         |0         |         0|    265|  271|
|0-24 months |MAL-ED         |PERU                         |0         |         1|      1|  271|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1         |         0|      0|  237|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1         |         1|      0|  237|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |0         |         0|    235|  237|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |0         |         1|      2|  237|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1         |         0|      0|  235|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1         |         1|      0|  235|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0         |         0|    235|  235|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0         |         1|      0|  235|
|0-24 months |PROVIDE        |BANGLADESH                   |1         |         0|    156|  641|
|0-24 months |PROVIDE        |BANGLADESH                   |1         |         1|      2|  641|
|0-24 months |PROVIDE        |BANGLADESH                   |0         |         0|    470|  641|
|0-24 months |PROVIDE        |BANGLADESH                   |0         |         1|     13|  641|
|0-24 months |SAS-CompFeed   |INDIA                        |1         |         0|    355|  413|
|0-24 months |SAS-CompFeed   |INDIA                        |1         |         1|     40|  413|
|0-24 months |SAS-CompFeed   |INDIA                        |0         |         0|     16|  413|
|0-24 months |SAS-CompFeed   |INDIA                        |0         |         1|      2|  413|
|0-24 months |SAS-FoodSuppl  |INDIA                        |1         |         0|      0|  166|
|0-24 months |SAS-FoodSuppl  |INDIA                        |1         |         1|      0|  166|
|0-24 months |SAS-FoodSuppl  |INDIA                        |0         |         0|    136|  166|
|0-24 months |SAS-FoodSuppl  |INDIA                        |0         |         1|     30|  166|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/e1d21a7a-c409-4bc3-9d04-f54655c0589d/4e0b79a8-3191-4c12-98c5-813b076220ac/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e1d21a7a-c409-4bc3-9d04-f54655c0589d/4e0b79a8-3191-4c12-98c5-813b076220ac/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e1d21a7a-c409-4bc3-9d04-f54655c0589d/4e0b79a8-3191-4c12-98c5-813b076220ac/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e1d21a7a-c409-4bc3-9d04-f54655c0589d/4e0b79a8-3191-4c12-98c5-813b076220ac/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |GMS-Nepal |NEPAL      |1                  |NA             | 0.1285641| 0.0964420| 0.1606861|
|0-24 months |GMS-Nepal |NEPAL      |0                  |NA             | 0.1599640| 0.0992455| 0.2206826|
|0-24 months |JiVitA-3  |BANGLADESH |1                  |NA             | 0.0565708| 0.0502812| 0.0628604|
|0-24 months |JiVitA-3  |BANGLADESH |0                  |NA             | 0.0572939| 0.0475112| 0.0670766|
|0-24 months |JiVitA-4  |BANGLADESH |1                  |NA             | 0.0748778| 0.0646849| 0.0850707|
|0-24 months |JiVitA-4  |BANGLADESH |0                  |NA             | 0.0916308| 0.0723299| 0.1109316|
|0-24 months |Keneba    |GAMBIA     |1                  |NA             | 0.0405932| 0.0263107| 0.0548757|
|0-24 months |Keneba    |GAMBIA     |0                  |NA             | 0.0644414| 0.0514728| 0.0774101|


### Parameter: E(Y)


|agecat      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |GMS-Nepal |NEPAL      |NA                 |NA             | 0.1365248| 0.1081636| 0.1648860|
|0-24 months |JiVitA-3  |BANGLADESH |NA                 |NA             | 0.0566978| 0.0514863| 0.0619092|
|0-24 months |JiVitA-4  |BANGLADESH |NA                 |NA             | 0.0788061| 0.0697217| 0.0878905|
|0-24 months |Keneba    |GAMBIA     |NA                 |NA             | 0.0561586| 0.0463537| 0.0659635|


### Parameter: RR


|agecat      |studyid   |country    |intervention_level |baseline_level | estimate|  ci_lower| ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|--------:|---------:|--------:|
|0-24 months |GMS-Nepal |NEPAL      |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months |GMS-Nepal |NEPAL      |0                  |1              | 1.244236| 0.7894611| 1.960988|
|0-24 months |JiVitA-3  |BANGLADESH |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3  |BANGLADESH |0                  |1              | 1.012782| 0.8214333| 1.248706|
|0-24 months |JiVitA-4  |BANGLADESH |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-4  |BANGLADESH |0                  |1              | 1.223737| 0.9592174| 1.561203|
|0-24 months |Keneba    |GAMBIA     |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months |Keneba    |GAMBIA     |0                  |1              | 1.587492| 1.0586087| 2.380606|


### Parameter: PAR


|agecat      |studyid   |country    |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |GMS-Nepal |NEPAL      |1                  |NA             | 0.0079608| -0.0095083| 0.0254298|
|0-24 months |JiVitA-3  |BANGLADESH |1                  |NA             | 0.0001270| -0.0026312| 0.0028851|
|0-24 months |JiVitA-4  |BANGLADESH |1                  |NA             | 0.0039283| -0.0007416| 0.0085982|
|0-24 months |Keneba    |GAMBIA     |1                  |NA             | 0.0155653|  0.0029743| 0.0281564|


### Parameter: PAF


|agecat      |studyid   |country    |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |GMS-Nepal |NEPAL      |1                  |NA             | 0.0583101| -0.0783140| 0.1776236|
|0-24 months |JiVitA-3  |BANGLADESH |1                  |NA             | 0.0022392| -0.0476495| 0.0497522|
|0-24 months |JiVitA-4  |BANGLADESH |1                  |NA             | 0.0498476| -0.0115624| 0.1075295|
|0-24 months |Keneba    |GAMBIA     |1                  |NA             | 0.2771675|  0.0207700| 0.4664309|
