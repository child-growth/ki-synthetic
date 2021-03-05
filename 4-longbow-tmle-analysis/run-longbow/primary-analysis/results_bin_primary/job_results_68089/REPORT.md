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

**Intervention Variable:** mwtkg

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |mwtkg      | pers_wast| n_cell|     n|
|:-----------|:--------------|:----------------------------|:----------|---------:|------:|-----:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg    |         0|    455|  1645|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg    |         1|     32|  1645|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<52 kg     |         0|    514|  1645|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<52 kg     |         1|    102|  1645|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[52-58) kg |         0|    483|  1645|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[52-58) kg |         1|     59|  1645|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg    |         0|    372| 15795|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg    |         1|     17| 15795|
|0-24 months |JiVitA-3       |BANGLADESH                   |<52 kg     |         0|  13489| 15795|
|0-24 months |JiVitA-3       |BANGLADESH                   |<52 kg     |         1|    827| 15795|
|0-24 months |JiVitA-3       |BANGLADESH                   |[52-58) kg |         0|   1037| 15795|
|0-24 months |JiVitA-3       |BANGLADESH                   |[52-58) kg |         1|     53| 15795|
|0-24 months |LCNI-5         |MALAWI                       |>=58 kg    |         0|     96|   717|
|0-24 months |LCNI-5         |MALAWI                       |>=58 kg    |         1|      1|   717|
|0-24 months |LCNI-5         |MALAWI                       |<52 kg     |         0|    426|   717|
|0-24 months |LCNI-5         |MALAWI                       |<52 kg     |         1|      3|   717|
|0-24 months |LCNI-5         |MALAWI                       |[52-58) kg |         0|    189|   717|
|0-24 months |LCNI-5         |MALAWI                       |[52-58) kg |         1|      2|   717|
|0-24 months |MAL-ED         |BANGLADESH                   |>=58 kg    |         0|     45|   248|
|0-24 months |MAL-ED         |BANGLADESH                   |>=58 kg    |         1|      2|   248|
|0-24 months |MAL-ED         |BANGLADESH                   |<52 kg     |         0|    149|   248|
|0-24 months |MAL-ED         |BANGLADESH                   |<52 kg     |         1|      9|   248|
|0-24 months |MAL-ED         |BANGLADESH                   |[52-58) kg |         0|     41|   248|
|0-24 months |MAL-ED         |BANGLADESH                   |[52-58) kg |         1|      2|   248|
|0-24 months |MAL-ED         |BRAZIL                       |>=58 kg    |         0|    139|   216|
|0-24 months |MAL-ED         |BRAZIL                       |>=58 kg    |         1|      1|   216|
|0-24 months |MAL-ED         |BRAZIL                       |<52 kg     |         0|     40|   216|
|0-24 months |MAL-ED         |BRAZIL                       |<52 kg     |         1|      0|   216|
|0-24 months |MAL-ED         |BRAZIL                       |[52-58) kg |         0|     35|   216|
|0-24 months |MAL-ED         |BRAZIL                       |[52-58) kg |         1|      1|   216|
|0-24 months |MAL-ED         |INDIA                        |>=58 kg    |         0|     39|   240|
|0-24 months |MAL-ED         |INDIA                        |>=58 kg    |         1|      2|   240|
|0-24 months |MAL-ED         |INDIA                        |<52 kg     |         0|    132|   240|
|0-24 months |MAL-ED         |INDIA                        |<52 kg     |         1|     17|   240|
|0-24 months |MAL-ED         |INDIA                        |[52-58) kg |         0|     48|   240|
|0-24 months |MAL-ED         |INDIA                        |[52-58) kg |         1|      2|   240|
|0-24 months |MAL-ED         |NEPAL                        |>=58 kg    |         0|     80|   238|
|0-24 months |MAL-ED         |NEPAL                        |>=58 kg    |         1|      0|   238|
|0-24 months |MAL-ED         |NEPAL                        |<52 kg     |         0|     73|   238|
|0-24 months |MAL-ED         |NEPAL                        |<52 kg     |         1|      3|   238|
|0-24 months |MAL-ED         |NEPAL                        |[52-58) kg |         0|     81|   238|
|0-24 months |MAL-ED         |NEPAL                        |[52-58) kg |         1|      1|   238|
|0-24 months |MAL-ED         |PERU                         |>=58 kg    |         0|    103|   283|
|0-24 months |MAL-ED         |PERU                         |>=58 kg    |         1|      0|   283|
|0-24 months |MAL-ED         |PERU                         |<52 kg     |         0|    110|   283|
|0-24 months |MAL-ED         |PERU                         |<52 kg     |         1|      1|   283|
|0-24 months |MAL-ED         |PERU                         |[52-58) kg |         0|     69|   283|
|0-24 months |MAL-ED         |PERU                         |[52-58) kg |         1|      0|   283|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=58 kg    |         0|    190|   266|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=58 kg    |         1|      1|   266|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<52 kg     |         0|     30|   266|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<52 kg     |         1|      0|   266|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[52-58) kg |         0|     44|   266|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[52-58) kg |         1|      1|   266|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg    |         0|     97|   253|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=58 kg    |         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<52 kg     |         0|     97|   253|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<52 kg     |         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[52-58) kg |         0|     59|   253|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[52-58) kg |         1|      0|   253|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg    |         0|     68|   534|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=58 kg    |         1|      1|   534|
|0-24 months |NIH-Birth      |BANGLADESH                   |<52 kg     |         0|    340|   534|
|0-24 months |NIH-Birth      |BANGLADESH                   |<52 kg     |         1|     44|   534|
|0-24 months |NIH-Birth      |BANGLADESH                   |[52-58) kg |         0|     79|   534|
|0-24 months |NIH-Birth      |BANGLADESH                   |[52-58) kg |         1|      2|   534|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg    |         0|    188|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=58 kg    |         1|      0|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<52 kg     |         0|    366|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<52 kg     |         1|     25|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[52-58) kg |         0|    150|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[52-58) kg |         1|      1|   730|
|0-24 months |PROBIT         |BELARUS                      |>=58 kg    |         0|  10184| 13758|
|0-24 months |PROBIT         |BELARUS                      |>=58 kg    |         1|     83| 13758|
|0-24 months |PROBIT         |BELARUS                      |<52 kg     |         0|   1126| 13758|
|0-24 months |PROBIT         |BELARUS                      |<52 kg     |         1|      4| 13758|
|0-24 months |PROBIT         |BELARUS                      |[52-58) kg |         0|   2352| 13758|
|0-24 months |PROBIT         |BELARUS                      |[52-58) kg |         1|      9| 13758|
|0-24 months |PROVIDE        |BANGLADESH                   |>=58 kg    |         0|    117|   640|
|0-24 months |PROVIDE        |BANGLADESH                   |>=58 kg    |         1|      0|   640|
|0-24 months |PROVIDE        |BANGLADESH                   |<52 kg     |         0|    397|   640|
|0-24 months |PROVIDE        |BANGLADESH                   |<52 kg     |         1|     14|   640|
|0-24 months |PROVIDE        |BANGLADESH                   |[52-58) kg |         0|    111|   640|
|0-24 months |PROVIDE        |BANGLADESH                   |[52-58) kg |         1|      1|   640|
|0-24 months |SAS-CompFeed   |INDIA                        |>=58 kg    |         0|    102|  1360|
|0-24 months |SAS-CompFeed   |INDIA                        |>=58 kg    |         1|      2|  1360|
|0-24 months |SAS-CompFeed   |INDIA                        |<52 kg     |         0|    935|  1360|
|0-24 months |SAS-CompFeed   |INDIA                        |<52 kg     |         1|    101|  1360|
|0-24 months |SAS-CompFeed   |INDIA                        |[52-58) kg |         0|    210|  1360|
|0-24 months |SAS-CompFeed   |INDIA                        |[52-58) kg |         1|     10|  1360|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg    |         0|   1311|  2126|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg    |         1|     31|  2126|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<52 kg     |         0|    334|  2126|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<52 kg     |         1|     13|  2126|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[52-58) kg |         0|    424|  2126|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[52-58) kg |         1|     13|  2126|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg    |         0|   4693|  9147|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg    |         1|     57|  9147|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<52 kg     |         0|   1916|  9147|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<52 kg     |         1|     63|  9147|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[52-58) kg |         0|   2377|  9147|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[52-58) kg |         1|     41|  9147|


The following strata were considered:

* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/4c77d76f-2b65-4c59-98f7-e0e40b57d30e/aef938e4-6526-4969-abf8-1f08eb3f68f1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4c77d76f-2b65-4c59-98f7-e0e40b57d30e/aef938e4-6526-4969-abf8-1f08eb3f68f1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4c77d76f-2b65-4c59-98f7-e0e40b57d30e/aef938e4-6526-4969-abf8-1f08eb3f68f1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4c77d76f-2b65-4c59-98f7-e0e40b57d30e/aef938e4-6526-4969-abf8-1f08eb3f68f1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg            |NA             | 0.0642315| 0.0412688| 0.0871942|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<52 kg             |NA             | 0.1673859| 0.1224286| 0.2123433|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[52-58) kg         |NA             | 0.1111575| 0.0713702| 0.1509449|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg            |NA             | 0.0437858| 0.0222679| 0.0653037|
|0-24 months |JiVitA-3       |BANGLADESH                   |<52 kg             |NA             | 0.0578038| 0.0535114| 0.0620962|
|0-24 months |JiVitA-3       |BANGLADESH                   |[52-58) kg         |NA             | 0.0487051| 0.0354110| 0.0619992|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             | 0.0231500| 0.0151176| 0.0311825|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<52 kg             |NA             | 0.0382770| 0.0182769| 0.0582771|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[52-58) kg         |NA             | 0.0301851| 0.0142472| 0.0461230|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg            |NA             | 0.0120413| 0.0089076| 0.0151749|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<52 kg             |NA             | 0.0322524| 0.0242437| 0.0402611|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[52-58) kg         |NA             | 0.0179902| 0.0124433| 0.0235371|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.1173252| 0.0921861| 0.1424644|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.0567901| 0.0526750| 0.0609052|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0268109| 0.0199430| 0.0336788|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.0176014| 0.0149065| 0.0202963|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level | estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|--------:|---------:|--------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg            |>=58 kg        | 1.000000| 1.0000000| 1.000000|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<52 kg             |>=58 kg        | 2.605979| 1.7750465| 3.825887|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[52-58) kg         |>=58 kg        | 1.730577| 1.1202822| 2.673340|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg            |>=58 kg        | 1.000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |<52 kg             |>=58 kg        | 1.320147| 0.8028554| 2.170739|
|0-24 months |JiVitA-3       |BANGLADESH                   |[52-58) kg         |>=58 kg        | 1.112348| 0.6345104| 1.950037|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |>=58 kg        | 1.000000| 1.0000000| 1.000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<52 kg             |>=58 kg        | 1.653430| 0.8829679| 3.096185|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[52-58) kg         |>=58 kg        | 1.303889| 0.6930203| 2.453215|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg            |>=58 kg        | 1.000000| 1.0000000| 1.000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<52 kg             |>=58 kg        | 2.678492| 1.8693080| 3.837954|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[52-58) kg         |>=58 kg        | 1.494047| 0.9980041| 2.236639|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg            |NA             | 0.0530937|  0.0312127| 0.0749748|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg            |NA             | 0.0130043| -0.0083528| 0.0343613|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             | 0.0036609| -0.0018329| 0.0091546|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg            |NA             | 0.0055601|  0.0028989| 0.0082214|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=58 kg            |NA             | 0.4525347|  0.2692130| 0.5898692|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=58 kg            |NA             | 0.2289883| -0.2547728| 0.5262417|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=58 kg            |NA             | 0.1365440| -0.0909429| 0.3165946|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=58 kg            |NA             | 0.3158920|  0.1562609| 0.4453217|
