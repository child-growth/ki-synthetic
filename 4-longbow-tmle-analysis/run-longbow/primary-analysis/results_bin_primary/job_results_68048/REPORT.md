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

**Outcome Variable:** ever_wasted

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

|agecat      |studyid        |country                      |nchldlt5 | ever_wasted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:--------|-----------:|------:|-----:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1        |           0|    838|  3189|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1        |           1|    235|  3189|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |2+       |           0|   1624|  3189|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |2+       |           1|    492|  3189|
|0-24 months |IRC            |INDIA                        |1        |           0|     25|   410|
|0-24 months |IRC            |INDIA                        |1        |           1|     64|   410|
|0-24 months |IRC            |INDIA                        |2+       |           0|    116|   410|
|0-24 months |IRC            |INDIA                        |2+       |           1|    205|   410|
|0-24 months |JiVitA-3       |BANGLADESH                   |1        |           0|  12739| 26929|
|0-24 months |JiVitA-3       |BANGLADESH                   |1        |           1|   4485| 26929|
|0-24 months |JiVitA-3       |BANGLADESH                   |2+       |           0|   7242| 26929|
|0-24 months |JiVitA-3       |BANGLADESH                   |2+       |           1|   2463| 26929|
|0-24 months |LCNI-5         |MALAWI                       |1        |           0|    366|   812|
|0-24 months |LCNI-5         |MALAWI                       |1        |           1|     25|   812|
|0-24 months |LCNI-5         |MALAWI                       |2+       |           0|    380|   812|
|0-24 months |LCNI-5         |MALAWI                       |2+       |           1|     41|   812|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1        |           0|    369|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1        |           1|    172|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |2+       |           0|    139|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |2+       |           1|     78|   758|
|0-24 months |PROVIDE        |BANGLADESH                   |1        |           0|    327|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |1        |           1|    185|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |2+       |           0|    127|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |2+       |           1|     61|   700|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1        |           0|   1242|  2385|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1        |           1|    395|  2385|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2+       |           0|    579|  2385|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2+       |           1|    169|  2385|
|0-6 months  |IRC            |INDIA                        |1        |           0|     37|   410|
|0-6 months  |IRC            |INDIA                        |1        |           1|     52|   410|
|0-6 months  |IRC            |INDIA                        |2+       |           0|    150|   410|
|0-6 months  |IRC            |INDIA                        |2+       |           1|    171|   410|
|0-6 months  |JiVitA-3       |BANGLADESH                   |1        |           0|  14046| 26832|
|0-6 months  |JiVitA-3       |BANGLADESH                   |1        |           1|   3099| 26832|
|0-6 months  |JiVitA-3       |BANGLADESH                   |2+       |           0|   8058| 26832|
|0-6 months  |JiVitA-3       |BANGLADESH                   |2+       |           1|   1629| 26832|
|0-6 months  |LCNI-5         |MALAWI                       |1        |           0|    121|   267|
|0-6 months  |LCNI-5         |MALAWI                       |1        |           1|      1|   267|
|0-6 months  |LCNI-5         |MALAWI                       |2+       |           0|    142|   267|
|0-6 months  |LCNI-5         |MALAWI                       |2+       |           1|      3|   267|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |1        |           0|    405|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |1        |           1|    136|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |2+       |           0|    158|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |2+       |           1|     59|   758|
|0-6 months  |PROVIDE        |BANGLADESH                   |1        |           0|    375|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |1        |           1|    137|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |2+       |           0|    144|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |2+       |           1|     44|   700|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1        |           0|   1407|  2385|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1        |           1|    230|  2385|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2+       |           0|    646|  2385|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2+       |           1|    102|  2385|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |1        |           0|    838|  3189|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |1        |           1|    235|  3189|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |2+       |           0|   1624|  3189|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |2+       |           1|    492|  3189|
|6-24 months |IRC            |INDIA                        |1        |           0|     56|   410|
|6-24 months |IRC            |INDIA                        |1        |           1|     33|   410|
|6-24 months |IRC            |INDIA                        |2+       |           0|    227|   410|
|6-24 months |IRC            |INDIA                        |2+       |           1|     94|   410|
|6-24 months |JiVitA-3       |BANGLADESH                   |1        |           0|   9417| 17286|
|6-24 months |JiVitA-3       |BANGLADESH                   |1        |           1|   1787| 17286|
|6-24 months |JiVitA-3       |BANGLADESH                   |2+       |           0|   5037| 17286|
|6-24 months |JiVitA-3       |BANGLADESH                   |2+       |           1|   1045| 17286|
|6-24 months |LCNI-5         |MALAWI                       |1        |           0|    360|   800|
|6-24 months |LCNI-5         |MALAWI                       |1        |           1|     24|   800|
|6-24 months |LCNI-5         |MALAWI                       |2+       |           0|    377|   800|
|6-24 months |LCNI-5         |MALAWI                       |2+       |           1|     39|   800|
|6-24 months |NIH-Crypto     |BANGLADESH                   |1        |           0|    460|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |1        |           1|     60|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |2+       |           0|    174|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |2+       |           1|     36|   730|
|6-24 months |PROVIDE        |BANGLADESH                   |1        |           0|    380|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |1        |           1|     68|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |2+       |           0|    136|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |2+       |           1|     31|   615|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1        |           0|   1154|  2010|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1        |           1|    229|  2010|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2+       |           0|    533|  2010|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2+       |           1|     94|  2010|


The following strata were considered:

* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/033e261b-c6fa-4555-858a-a02f5c204d7d/17635f6f-70f5-4c6e-b090-9a92f8b701d3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/033e261b-c6fa-4555-858a-a02f5c204d7d/17635f6f-70f5-4c6e-b090-9a92f8b701d3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/033e261b-c6fa-4555-858a-a02f5c204d7d/17635f6f-70f5-4c6e-b090-9a92f8b701d3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/033e261b-c6fa-4555-858a-a02f5c204d7d/17635f6f-70f5-4c6e-b090-9a92f8b701d3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1                  |NA             | 0.2205373| 0.1750092| 0.2660655|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |2+                 |NA             | 0.2289949| 0.2010962| 0.2568936|
|0-24 months |IRC            |INDIA                        |1                  |NA             | 0.7146467| 0.6190021| 0.8102913|
|0-24 months |IRC            |INDIA                        |2+                 |NA             | 0.6396469| 0.5869230| 0.6923708|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.2550002| 0.2465944| 0.2634061|
|0-24 months |JiVitA-3       |BANGLADESH                   |2+                 |NA             | 0.2598841| 0.2444723| 0.2752959|
|0-24 months |LCNI-5         |MALAWI                       |1                  |NA             | 0.0620647| 0.0383410| 0.0857884|
|0-24 months |LCNI-5         |MALAWI                       |2+                 |NA             | 0.0954956| 0.0673842| 0.1236071|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1                  |NA             | 0.3117904| 0.2723522| 0.3512287|
|0-24 months |NIH-Crypto     |BANGLADESH                   |2+                 |NA             | 0.3869819| 0.3207131| 0.4532508|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             | 0.3635255| 0.3217940| 0.4052570|
|0-24 months |PROVIDE        |BANGLADESH                   |2+                 |NA             | 0.3273594| 0.2602091| 0.3945096|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.2414289| 0.2191683| 0.2636895|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2+                 |NA             | 0.2367788| 0.2005110| 0.2730466|
|0-6 months  |IRC            |INDIA                        |1                  |NA             | 0.5901837| 0.4841050| 0.6962623|
|0-6 months  |IRC            |INDIA                        |2+                 |NA             | 0.5310881| 0.4762454| 0.5859308|
|0-6 months  |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.1761130| 0.1686727| 0.1835532|
|0-6 months  |JiVitA-3       |BANGLADESH                   |2+                 |NA             | 0.1709766| 0.1571195| 0.1848337|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |1                  |NA             | 0.2476852| 0.2108889| 0.2844815|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |2+                 |NA             | 0.2782259| 0.2169694| 0.3394824|
|0-6 months  |PROVIDE        |BANGLADESH                   |1                  |NA             | 0.2699159| 0.2308840| 0.3089478|
|0-6 months  |PROVIDE        |BANGLADESH                   |2+                 |NA             | 0.2339445| 0.1727484| 0.2951406|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.1397553| 0.1219409| 0.1575696|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2+                 |NA             | 0.1474419| 0.1142979| 0.1805859|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |1                  |NA             | 0.2204742| 0.1804556| 0.2604929|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |2+                 |NA             | 0.2290044| 0.2006644| 0.2573444|
|6-24 months |IRC            |INDIA                        |1                  |NA             | 0.3770768| 0.2723852| 0.4817684|
|6-24 months |IRC            |INDIA                        |2+                 |NA             | 0.2913061| 0.2413843| 0.3412279|
|6-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.1565750| 0.1482951| 0.1648549|
|6-24 months |JiVitA-3       |BANGLADESH                   |2+                 |NA             | 0.1612547| 0.1477157| 0.1747936|
|6-24 months |LCNI-5         |MALAWI                       |1                  |NA             | 0.0604525| 0.0366890| 0.0842161|
|6-24 months |LCNI-5         |MALAWI                       |2+                 |NA             | 0.0933205| 0.0652329| 0.1214081|
|6-24 months |NIH-Crypto     |BANGLADESH                   |1                  |NA             | 0.1166308| 0.0882739| 0.1449878|
|6-24 months |NIH-Crypto     |BANGLADESH                   |2+                 |NA             | 0.1655552| 0.1131152| 0.2179952|
|6-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             | 0.1511400| 0.1178590| 0.1844209|
|6-24 months |PROVIDE        |BANGLADESH                   |2+                 |NA             | 0.1828093| 0.1235396| 0.2420790|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.1640222| 0.1437583| 0.1842860|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2+                 |NA             | 0.1451984| 0.1140939| 0.1763029|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.2279712| 0.2010014| 0.2549409|
|0-24 months |IRC            |INDIA                        |NA                 |NA             | 0.6560976| 0.6100625| 0.7021326|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.2580118| 0.2515422| 0.2644814|
|0-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.0812808| 0.0624736| 0.1000879|
|0-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.3298153| 0.2963239| 0.3633067|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.3514286| 0.3160364| 0.3868207|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.2364780| 0.2194210| 0.2535349|
|0-6 months  |IRC            |INDIA                        |NA                 |NA             | 0.5439024| 0.4956326| 0.5921723|
|0-6 months  |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.1762075| 0.1705779| 0.1818372|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.2572559| 0.2261171| 0.2883948|
|0-6 months  |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.2585714| 0.2261125| 0.2910304|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1392034| 0.1253080| 0.1530987|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.2279712| 0.2010014| 0.2549409|
|6-24 months |IRC            |INDIA                        |NA                 |NA             | 0.3097561| 0.2649438| 0.3545684|
|6-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.1638320| 0.1577093| 0.1699547|
|6-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.0787500| 0.0600738| 0.0974262|
|6-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.1315068| 0.1069744| 0.1560393|
|6-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.1609756| 0.1319065| 0.1900447|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1606965| 0.1446374| 0.1767556|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |2+                 |1              | 1.0383499| 0.8434195| 1.278333|
|0-24 months |IRC            |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |IRC            |INDIA                        |2+                 |1              | 0.8950533| 0.7647018| 1.047625|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |2+                 |1              | 1.0191523| 0.9557492| 1.086762|
|0-24 months |LCNI-5         |MALAWI                       |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |LCNI-5         |MALAWI                       |2+                 |1              | 1.5386474| 0.9515511| 2.487976|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Crypto     |BANGLADESH                   |2+                 |1              | 1.2411604| 1.0046465| 1.533354|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROVIDE        |BANGLADESH                   |2+                 |1              | 0.9005129| 0.7133449| 1.136790|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2+                 |1              | 0.9807392| 0.8202934| 1.172567|
|0-6 months  |IRC            |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |IRC            |INDIA                        |2+                 |1              | 0.8998693| 0.7313203| 1.107264|
|0-6 months  |JiVitA-3       |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |JiVitA-3       |BANGLADESH                   |2+                 |1              | 0.9708347| 0.8892313| 1.059927|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |2+                 |1              | 1.1233043| 0.8618464| 1.464080|
|0-6 months  |PROVIDE        |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |PROVIDE        |BANGLADESH                   |2+                 |1              | 0.8667311| 0.6426751| 1.168900|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2+                 |1              | 1.0550003| 0.8148164| 1.365983|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |2+                 |1              | 1.0386900| 0.8622635| 1.251215|
|6-24 months |IRC            |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|6-24 months |IRC            |INDIA                        |2+                 |1              | 0.7725379| 0.5573919| 1.070728|
|6-24 months |JiVitA-3       |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|6-24 months |JiVitA-3       |BANGLADESH                   |2+                 |1              | 1.0298874| 0.9349337| 1.134485|
|6-24 months |LCNI-5         |MALAWI                       |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|6-24 months |LCNI-5         |MALAWI                       |2+                 |1              | 1.5436987| 0.9423942| 2.528672|
|6-24 months |NIH-Crypto     |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|6-24 months |NIH-Crypto     |BANGLADESH                   |2+                 |1              | 1.4194807| 0.9528851| 2.114552|
|6-24 months |PROVIDE        |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|6-24 months |PROVIDE        |BANGLADESH                   |2+                 |1              | 1.2095366| 0.8172661| 1.790088|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2+                 |1              | 0.8852368| 0.6916600| 1.132990|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1                  |NA             |  0.0074338| -0.0243855| 0.0392532|
|0-24 months |IRC            |INDIA                        |1                  |NA             | -0.0585491| -0.1448037| 0.0277055|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             |  0.0030116| -0.0026167| 0.0086399|
|0-24 months |LCNI-5         |MALAWI                       |1                  |NA             |  0.0192161|  0.0000918| 0.0383404|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1                  |NA             |  0.0180249| -0.0036713| 0.0397210|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             | -0.0120969| -0.0332266| 0.0090328|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | -0.0049509| -0.0185463| 0.0086445|
|0-6 months  |IRC            |INDIA                        |1                  |NA             | -0.0462812| -0.1409521| 0.0483896|
|0-6 months  |JiVitA-3       |BANGLADESH                   |1                  |NA             |  0.0000946| -0.0046678| 0.0048569|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |1                  |NA             |  0.0095707| -0.0107831| 0.0299245|
|0-6 months  |PROVIDE        |BANGLADESH                   |1                  |NA             | -0.0113445| -0.0313187| 0.0086298|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | -0.0005519| -0.0114246| 0.0103207|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |1                  |NA             |  0.0074969| -0.0201333| 0.0351271|
|6-24 months |IRC            |INDIA                        |1                  |NA             | -0.0673207| -0.1593463| 0.0247049|
|6-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             |  0.0072570|  0.0011767| 0.0133373|
|6-24 months |LCNI-5         |MALAWI                       |1                  |NA             |  0.0182975| -0.0008301| 0.0374251|
|6-24 months |NIH-Crypto     |BANGLADESH                   |1                  |NA             |  0.0148760| -0.0028186| 0.0325706|
|6-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             |  0.0098357| -0.0086395| 0.0283108|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | -0.0033256| -0.0152605| 0.0086092|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1                  |NA             |  0.0326087| -0.1184629| 0.1632748|
|0-24 months |IRC            |INDIA                        |1                  |NA             | -0.0892384| -0.2295005| 0.0350224|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             |  0.0116722| -0.0103747| 0.0332380|
|0-24 months |LCNI-5         |MALAWI                       |1                  |NA             |  0.2364165| -0.0315296| 0.4347620|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1                  |NA             |  0.0546514| -0.0135734| 0.1182839|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             | -0.0344221| -0.0963305| 0.0239905|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | -0.0209360| -0.0800296| 0.0349243|
|0-6 months  |IRC            |INDIA                        |1                  |NA             | -0.0850910| -0.2741181| 0.0758921|
|0-6 months  |JiVitA-3       |BANGLADESH                   |1                  |NA             |  0.0005366| -0.0268595| 0.0272018|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |1                  |NA             |  0.0372030| -0.0452813| 0.1131784|
|0-6 months  |PROVIDE        |BANGLADESH                   |1                  |NA             | -0.0438736| -0.1239391| 0.0304882|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | -0.0039649| -0.0851823| 0.0711740|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |1                  |NA             |  0.0328854| -0.0966349| 0.1471084|
|6-24 months |IRC            |INDIA                        |1                  |NA             | -0.2173345| -0.5535867| 0.0461405|
|6-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             |  0.0442951|  0.0065502| 0.0806059|
|6-24 months |LCNI-5         |MALAWI                       |1                  |NA             |  0.2323488| -0.0460127| 0.4366336|
|6-24 months |NIH-Crypto     |BANGLADESH                   |1                  |NA             |  0.1131198| -0.0309628| 0.2370661|
|6-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             |  0.0611003| -0.0606643| 0.1688863|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | -0.0206952| -0.0977047| 0.0509118|
