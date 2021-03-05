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

**Intervention Variable:** exclfeed36

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

|agecat                      |studyid        |country                      |exclfeed36 | ever_swasted| n_cell|     n|
|:---------------------------|:--------------|:----------------------------|:----------|------------:|------:|-----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1          |            0|      9|     9|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1          |            1|      0|     9|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0          |            0|      0|     9|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0          |            1|      0|     9|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |1          |            0|      4|     9|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |1          |            1|      0|     9|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |0          |            0|      4|     9|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |0          |            1|      1|     9|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |1          |            0|    330|   524|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |1          |            1|     90|   524|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0          |            0|     74|   524|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0          |            1|     30|   524|
|0-24 months (no birth wast) |IRC            |INDIA                        |1          |            0|      0|     4|
|0-24 months (no birth wast) |IRC            |INDIA                        |1          |            1|      0|     4|
|0-24 months (no birth wast) |IRC            |INDIA                        |0          |            0|      3|     4|
|0-24 months (no birth wast) |IRC            |INDIA                        |0          |            1|      1|     4|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1          |            0|   9404| 12568|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1          |            1|    370| 12568|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0          |            0|   2698| 12568|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0          |            1|     96| 12568|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1          |            0|   3378|  4559|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1          |            1|    142|  4559|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0          |            0|    989|  4559|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0          |            1|     50|  4559|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |1          |            0|    544|  1974|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |1          |            1|     79|  1974|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |0          |            0|   1115|  1974|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |0          |            1|    236|  1974|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |1          |            0|     47|   271|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |1          |            1|      0|   271|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |0          |            0|    222|   271|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |0          |            1|      2|   271|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |1          |            0|     31|   251|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |1          |            1|      2|   251|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |0          |            0|    208|   251|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |0          |            1|     10|   251|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |1          |            0|     16|   224|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |1          |            1|      0|   224|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |0          |            0|    204|   224|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |0          |            1|      4|   224|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |1          |            0|      9|   234|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |1          |            1|      1|   234|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |0          |            0|    212|   234|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |0          |            1|     12|   234|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |1          |            0|      4|   235|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |1          |            1|      0|   235|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |0          |            0|    228|   235|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |0          |            1|      3|   235|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |1          |            0|     10|   286|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |1          |            1|      0|   286|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |0          |            0|    272|   286|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |0          |            1|      4|   286|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |1          |            0|      4|   276|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |1          |            1|      0|   276|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |0          |            0|    260|   276|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |0          |            1|     12|   276|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1          |            0|      5|   250|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1          |            1|      0|   250|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0          |            0|    237|   250|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0          |            1|      8|   250|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1          |            0|    159|   635|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1          |            1|      3|   635|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0          |            0|    459|   635|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0          |            1|     14|   635|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |1          |            0|      0|   173|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |1          |            1|      0|   173|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |0          |            0|    159|   173|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |0          |            1|     14|   173|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/aff972a7-62da-4ed3-97df-2b1071966eb4/0af2ef4d-9f81-46a8-ac5e-a50a099df867/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/aff972a7-62da-4ed3-97df-2b1071966eb4/0af2ef4d-9f81-46a8-ac5e-a50a099df867/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/aff972a7-62da-4ed3-97df-2b1071966eb4/0af2ef4d-9f81-46a8-ac5e-a50a099df867/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/aff972a7-62da-4ed3-97df-2b1071966eb4/0af2ef4d-9f81-46a8-ac5e-a50a099df867/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |NA             | 0.2150252| 0.1757099| 0.2543404|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |0                  |NA             | 0.2954636| 0.2084729| 0.3824543|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |NA             | 0.0378091| 0.0334416| 0.0421765|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |0                  |NA             | 0.0343843| 0.0270286| 0.0417401|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |1                  |NA             | 0.0406446| 0.0337005| 0.0475887|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |0                  |NA             | 0.0471880| 0.0334970| 0.0608790|
|0-24 months (no birth wast) |Keneba    |GAMBIA     |1                  |NA             | 0.1259838| 0.0997970| 0.1521706|
|0-24 months (no birth wast) |Keneba    |GAMBIA     |0                  |NA             | 0.1751709| 0.1549340| 0.1954079|


### Parameter: E(Y)


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |NA                 |NA             | 0.2290076| 0.1929956| 0.2650196|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |NA                 |NA             | 0.0370783| 0.0333023| 0.0408543|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |NA                 |NA             | 0.0421145| 0.0360504| 0.0481786|
|0-24 months (no birth wast) |Keneba    |GAMBIA     |NA                 |NA             | 0.1595745| 0.1434154| 0.1757335|


### Parameter: RR


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |0                  |1              | 1.3740884| 0.9715970| 1.943315|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |0                  |1              | 0.9094197| 0.7134585| 1.159204|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |0                  |1              | 1.1609908| 0.8249782| 1.633861|
|0-24 months (no birth wast) |Keneba    |GAMBIA     |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |Keneba    |GAMBIA     |0                  |1              | 1.3904242| 1.0962959| 1.763465|


### Parameter: PAR


|agecat                      |studyid   |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |NA             |  0.0139825| -0.0052241| 0.0331891|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |NA             | -0.0007308| -0.0026276| 0.0011661|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |1                  |NA             |  0.0014699| -0.0020422| 0.0049820|
|0-24 months (no birth wast) |Keneba    |GAMBIA     |1                  |NA             |  0.0335906|  0.0109313| 0.0562500|


### Parameter: PAF


|agecat                      |studyid   |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |NA             |  0.0610568| -0.0263610| 0.1410290|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |NA             | -0.0197091| -0.0720342| 0.0300621|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |1                  |NA             |  0.0349025| -0.0522512| 0.1148377|
|0-24 months (no birth wast) |Keneba    |GAMBIA     |1                  |NA             |  0.2105014|  0.0561143| 0.3396361|
