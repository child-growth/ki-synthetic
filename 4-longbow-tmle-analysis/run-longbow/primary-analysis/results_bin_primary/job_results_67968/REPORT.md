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

|agecat      |studyid        |country                      |nchldlt5 | ever_sstunted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:--------|-------------:|------:|-----:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1        |             0|    977|  3188|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1        |             1|     96|  3188|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |2+       |             0|   1879|  3188|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |2+       |             1|    236|  3188|
|0-24 months |IRC            |INDIA                        |1        |             0|     64|   410|
|0-24 months |IRC            |INDIA                        |1        |             1|     25|   410|
|0-24 months |IRC            |INDIA                        |2+       |             0|    244|   410|
|0-24 months |IRC            |INDIA                        |2+       |             1|     77|   410|
|0-24 months |JiVitA-3       |BANGLADESH                   |1        |             0|  13936| 27200|
|0-24 months |JiVitA-3       |BANGLADESH                   |1        |             1|   3474| 27200|
|0-24 months |JiVitA-3       |BANGLADESH                   |2+       |             0|   8244| 27200|
|0-24 months |JiVitA-3       |BANGLADESH                   |2+       |             1|   1546| 27200|
|0-24 months |LCNI-5         |MALAWI                       |1        |             0|    327|   812|
|0-24 months |LCNI-5         |MALAWI                       |1        |             1|     64|   812|
|0-24 months |LCNI-5         |MALAWI                       |2+       |             0|    315|   812|
|0-24 months |LCNI-5         |MALAWI                       |2+       |             1|    106|   812|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1        |             0|    475|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1        |             1|     66|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |2+       |             0|    184|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |2+       |             1|     33|   758|
|0-24 months |PROVIDE        |BANGLADESH                   |1        |             0|    442|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |1        |             1|     70|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |2+       |             0|    163|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |2+       |             1|     25|   700|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1        |             0|   1479|  2385|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1        |             1|    158|  2385|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2+       |             0|    669|  2385|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2+       |             1|     79|  2385|


The following strata were considered:

* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF



## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/9b4814a9-8a37-41bf-93c5-3dd3bd25641d/18e284d5-7c77-482c-b04e-cacf20f36461/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9b4814a9-8a37-41bf-93c5-3dd3bd25641d/18e284d5-7c77-482c-b04e-cacf20f36461/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9b4814a9-8a37-41bf-93c5-3dd3bd25641d/18e284d5-7c77-482c-b04e-cacf20f36461/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9b4814a9-8a37-41bf-93c5-3dd3bd25641d/18e284d5-7c77-482c-b04e-cacf20f36461/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1                  |NA             | 0.0863010| 0.0556865| 0.1169156|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |2+                 |NA             | 0.1128597| 0.0915230| 0.1341964|
|0-24 months |IRC            |INDIA                        |1                  |NA             | 0.2808873| 0.1873651| 0.3744094|
|0-24 months |IRC            |INDIA                        |2+                 |NA             | 0.2391831| 0.1923907| 0.2859756|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.1902755| 0.1828384| 0.1977125|
|0-24 months |JiVitA-3       |BANGLADESH                   |2+                 |NA             | 0.1716120| 0.1574218| 0.1858022|
|0-24 months |LCNI-5         |MALAWI                       |1                  |NA             | 0.1712521| 0.1327911| 0.2097131|
|0-24 months |LCNI-5         |MALAWI                       |2+                 |NA             | 0.2442113| 0.2027809| 0.2856417|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1                  |NA             | 0.1198920| 0.0920063| 0.1477778|
|0-24 months |NIH-Crypto     |BANGLADESH                   |2+                 |NA             | 0.1737348| 0.1233525| 0.2241172|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             | 0.1372794| 0.1075669| 0.1669920|
|0-24 months |PROVIDE        |BANGLADESH                   |2+                 |NA             | 0.1426817| 0.0937382| 0.1916252|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.0996492| 0.0837139| 0.1155845|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2+                 |NA             | 0.1071853| 0.0813544| 0.1330161|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.1041405| 0.0842158| 0.1240653|
|0-24 months |IRC            |INDIA                        |NA                 |NA             | 0.2487805| 0.2068840| 0.2906770|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.1845588| 0.1789526| 0.1901651|
|0-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.2093596| 0.1813586| 0.2373606|
|0-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.1306069| 0.1066024| 0.1546113|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.1357143| 0.1103250| 0.1611036|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0993711| 0.0873623| 0.1113798|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |2+                 |1              | 1.3077445| 0.9080597| 1.8833517|
|0-24 months |IRC            |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |IRC            |INDIA                        |2+                 |1              | 0.8515271| 0.5795086| 1.2512299|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |2+                 |1              | 0.9019135| 0.8246317| 0.9864381|
|0-24 months |LCNI-5         |MALAWI                       |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |LCNI-5         |MALAWI                       |2+                 |1              | 1.4260341| 1.0795418| 1.8837373|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |NIH-Crypto     |BANGLADESH                   |2+                 |1              | 1.4490941| 1.0022109| 2.0952414|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |PROVIDE        |BANGLADESH                   |2+                 |1              | 1.0393522| 0.6928043| 1.5592469|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2+                 |1              | 1.0756263| 0.8056079| 1.4361477|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1                  |NA             |  0.0178395| -0.0046775|  0.0403565|
|0-24 months |IRC            |INDIA                        |1                  |NA             | -0.0321068| -0.1141866|  0.0499730|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             | -0.0057166| -0.0103556| -0.0010777|
|0-24 months |LCNI-5         |MALAWI                       |1                  |NA             |  0.0381075|  0.0080736|  0.0681414|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1                  |NA             |  0.0107148| -0.0053891|  0.0268188|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             | -0.0015652| -0.0168337|  0.0137034|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | -0.0002781| -0.0104171|  0.0098609|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1                  |NA             |  0.1713023| -0.0805147|  0.3644326|
|0-24 months |IRC            |INDIA                        |1                  |NA             | -0.1290567| -0.5121341|  0.1569735|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             | -0.0309746| -0.0563933| -0.0061676|
|0-24 months |LCNI-5         |MALAWI                       |1                  |NA             |  0.1820195|  0.0263243|  0.3128182|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1                  |NA             |  0.0820389| -0.0496884|  0.1972355|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             | -0.0115328| -0.1305400|  0.0949471|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | -0.0027986| -0.1101919|  0.0942061|
