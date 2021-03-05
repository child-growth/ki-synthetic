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

**Intervention Variable:** nchldlt5

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
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
* delta_W_nrooms
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

|agecat      |studyid        |country                      |nchldlt5 | ever_swasted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:--------|------------:|------:|-----:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1        |            0|   1032|  3189|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1        |            1|     41|  3189|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |2+       |            0|   2005|  3189|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |2+       |            1|    111|  3189|
|0-24 months |IRC            |INDIA                        |1        |            0|     52|   410|
|0-24 months |IRC            |INDIA                        |1        |            1|     37|   410|
|0-24 months |IRC            |INDIA                        |2+       |            0|    218|   410|
|0-24 months |IRC            |INDIA                        |2+       |            1|    103|   410|
|0-24 months |JiVitA-3       |BANGLADESH                   |1        |            0|  16167| 26929|
|0-24 months |JiVitA-3       |BANGLADESH                   |1        |            1|   1057| 26929|
|0-24 months |JiVitA-3       |BANGLADESH                   |2+       |            0|   9118| 26929|
|0-24 months |JiVitA-3       |BANGLADESH                   |2+       |            1|    587| 26929|
|0-24 months |LCNI-5         |MALAWI                       |1        |            0|    387|   812|
|0-24 months |LCNI-5         |MALAWI                       |1        |            1|      4|   812|
|0-24 months |LCNI-5         |MALAWI                       |2+       |            0|    417|   812|
|0-24 months |LCNI-5         |MALAWI                       |2+       |            1|      4|   812|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1        |            0|    491|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1        |            1|     50|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |2+       |            0|    201|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |2+       |            1|     16|   758|
|0-24 months |PROVIDE        |BANGLADESH                   |1        |            0|    481|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |1        |            1|     31|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |2+       |            0|    177|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |2+       |            1|     11|   700|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1        |            0|   1525|  2385|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1        |            1|    112|  2385|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2+       |            0|    703|  2385|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2+       |            1|     45|  2385|


The following strata were considered:

* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/3fec1927-ad3e-42de-a307-87b87117cf0d/63ebee53-bb30-4e22-9211-e1c78636e38a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3fec1927-ad3e-42de-a307-87b87117cf0d/63ebee53-bb30-4e22-9211-e1c78636e38a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3fec1927-ad3e-42de-a307-87b87117cf0d/63ebee53-bb30-4e22-9211-e1c78636e38a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3fec1927-ad3e-42de-a307-87b87117cf0d/63ebee53-bb30-4e22-9211-e1c78636e38a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1                  |NA             | 0.0363903| 0.0211179| 0.0516626|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |2+                 |NA             | 0.0520942| 0.0374197| 0.0667687|
|0-24 months |IRC            |INDIA                        |1                  |NA             | 0.4322426| 0.3243842| 0.5401010|
|0-24 months |IRC            |INDIA                        |2+                 |NA             | 0.3207140| 0.2692973| 0.3721308|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.0607287| 0.0559799| 0.0654776|
|0-24 months |JiVitA-3       |BANGLADESH                   |2+                 |NA             | 0.0555144| 0.0473267| 0.0637021|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1                  |NA             | 0.0925213| 0.0680906| 0.1169521|
|0-24 months |NIH-Crypto     |BANGLADESH                   |2+                 |NA             | 0.0749532| 0.0401205| 0.1097860|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             | 0.0621390| 0.0407140| 0.0835640|
|0-24 months |PROVIDE        |BANGLADESH                   |2+                 |NA             | 0.0503216| 0.0209018| 0.0797414|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.0687655| 0.0564572| 0.0810737|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2+                 |NA             | 0.0594044| 0.0423903| 0.0764186|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.0476638| 0.0358801| 0.0594476|
|0-24 months |IRC            |INDIA                        |NA                 |NA             | 0.3414634| 0.2955068| 0.3874201|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.0610494| 0.0575683| 0.0645305|
|0-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.0870712| 0.0669870| 0.1071555|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.0600000| 0.0423945| 0.0776055|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0658281| 0.0558737| 0.0757825|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |2+                 |1              | 1.4315412| 0.8694551| 2.357005|
|0-24 months |IRC            |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |IRC            |INDIA                        |2+                 |1              | 0.7419770| 0.5512901| 0.998621|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |2+                 |1              | 0.9141375| 0.7801773| 1.071099|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Crypto     |BANGLADESH                   |2+                 |1              | 0.8101184| 0.4747231| 1.382473|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROVIDE        |BANGLADESH                   |2+                 |1              | 0.8098230| 0.4107083| 1.596786|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2+                 |1              | 0.8638701| 0.6164296| 1.210635|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1                  |NA             |  0.0112736| -0.0029576| 0.0255048|
|0-24 months |IRC            |INDIA                        |1                  |NA             | -0.0907792| -0.1863337| 0.0047754|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             |  0.0003207| -0.0027629| 0.0034043|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1                  |NA             | -0.0054501| -0.0176141| 0.0067139|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             | -0.0021390| -0.0133350| 0.0090570|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | -0.0029374| -0.0096042| 0.0037295|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1                  |NA             |  0.2365223| -0.1091681|  0.4744726|
|0-24 months |IRC            |INDIA                        |1                  |NA             | -0.2658533| -0.5799012| -0.0142308|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             |  0.0052529| -0.0465759|  0.0545149|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1                  |NA             | -0.0625936| -0.2112101|  0.0677875|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             | -0.0356500| -0.2397137|  0.1348238|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | -0.0446218| -0.1507724|  0.0517371|
