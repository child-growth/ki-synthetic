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

|agecat      |studyid        |country                      |nchldlt5 | ever_stunted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:--------|------------:|------:|-----:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1        |            0|    711|  3188|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1        |            1|    362|  3188|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |2+       |            0|   1339|  3188|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |2+       |            1|    776|  3188|
|0-24 months |IRC            |INDIA                        |1        |            0|     35|   410|
|0-24 months |IRC            |INDIA                        |1        |            1|     54|   410|
|0-24 months |IRC            |INDIA                        |2+       |            0|    112|   410|
|0-24 months |IRC            |INDIA                        |2+       |            1|    209|   410|
|0-24 months |JiVitA-3       |BANGLADESH                   |1        |            0|   8536| 27200|
|0-24 months |JiVitA-3       |BANGLADESH                   |1        |            1|   8874| 27200|
|0-24 months |JiVitA-3       |BANGLADESH                   |2+       |            0|   5189| 27200|
|0-24 months |JiVitA-3       |BANGLADESH                   |2+       |            1|   4601| 27200|
|0-24 months |LCNI-5         |MALAWI                       |1        |            0|    145|   812|
|0-24 months |LCNI-5         |MALAWI                       |1        |            1|    246|   812|
|0-24 months |LCNI-5         |MALAWI                       |2+       |            0|    150|   812|
|0-24 months |LCNI-5         |MALAWI                       |2+       |            1|    271|   812|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1        |            0|    298|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1        |            1|    243|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |2+       |            0|     98|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |2+       |            1|    119|   758|
|0-24 months |PROVIDE        |BANGLADESH                   |1        |            0|    295|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |1        |            1|    217|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |2+       |            0|    100|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |2+       |            1|     88|   700|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1        |            0|   1077|  2385|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1        |            1|    560|  2385|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2+       |            0|    481|  2385|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2+       |            1|    267|  2385|
|0-6 months  |IRC            |INDIA                        |1        |            0|     49|   410|
|0-6 months  |IRC            |INDIA                        |1        |            1|     40|   410|
|0-6 months  |IRC            |INDIA                        |2+       |            0|    187|   410|
|0-6 months  |IRC            |INDIA                        |2+       |            1|    134|   410|
|0-6 months  |JiVitA-3       |BANGLADESH                   |1        |            0|   9780| 27134|
|0-6 months  |JiVitA-3       |BANGLADESH                   |1        |            1|   7579| 27134|
|0-6 months  |JiVitA-3       |BANGLADESH                   |2+       |            0|   6146| 27134|
|0-6 months  |JiVitA-3       |BANGLADESH                   |2+       |            1|   3629| 27134|
|0-6 months  |LCNI-5         |MALAWI                       |1        |            0|     81|   267|
|0-6 months  |LCNI-5         |MALAWI                       |1        |            1|     41|   267|
|0-6 months  |LCNI-5         |MALAWI                       |2+       |            0|     91|   267|
|0-6 months  |LCNI-5         |MALAWI                       |2+       |            1|     54|   267|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |1        |            0|    386|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |1        |            1|    155|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |2+       |            0|    143|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |2+       |            1|     74|   758|
|0-6 months  |PROVIDE        |BANGLADESH                   |1        |            0|    383|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |1        |            1|    129|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |2+       |            0|    149|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |2+       |            1|     39|   700|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1        |            0|   1311|  2385|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1        |            1|    326|  2385|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2+       |            0|    609|  2385|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2+       |            1|    139|  2385|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |1        |            0|    711|  3188|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |1        |            1|    362|  3188|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |2+       |            0|   1339|  3188|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |2+       |            1|    776|  3188|
|6-24 months |IRC            |INDIA                        |1        |            0|     35|   236|
|6-24 months |IRC            |INDIA                        |1        |            1|     14|   236|
|6-24 months |IRC            |INDIA                        |2+       |            0|    112|   236|
|6-24 months |IRC            |INDIA                        |2+       |            1|     75|   236|
|6-24 months |JiVitA-3       |BANGLADESH                   |1        |            0|   5238| 10487|
|6-24 months |JiVitA-3       |BANGLADESH                   |1        |            1|   1295| 10487|
|6-24 months |JiVitA-3       |BANGLADESH                   |2+       |            0|   2982| 10487|
|6-24 months |JiVitA-3       |BANGLADESH                   |2+       |            1|    972| 10487|
|6-24 months |LCNI-5         |MALAWI                       |1        |            0|    138|   705|
|6-24 months |LCNI-5         |MALAWI                       |1        |            1|    205|   705|
|6-24 months |LCNI-5         |MALAWI                       |2+       |            0|    145|   705|
|6-24 months |LCNI-5         |MALAWI                       |2+       |            1|    217|   705|
|6-24 months |NIH-Crypto     |BANGLADESH                   |1        |            0|    280|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |1        |            1|     88|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |2+       |            0|     93|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |2+       |            1|     45|   506|
|6-24 months |PROVIDE        |BANGLADESH                   |1        |            0|    238|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |1        |            1|     88|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |2+       |            0|     81|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |2+       |            1|     49|   456|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1        |            0|    858|  1596|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1        |            1|    234|  1596|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2+       |            0|    376|  1596|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2+       |            1|    128|  1596|


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



## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/3cbcb3ed-5ee8-496c-ba99-edd5d634e170/4b3f91f7-33c5-4c41-aa16-5f6638500998/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3cbcb3ed-5ee8-496c-ba99-edd5d634e170/4b3f91f7-33c5-4c41-aa16-5f6638500998/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3cbcb3ed-5ee8-496c-ba99-edd5d634e170/4b3f91f7-33c5-4c41-aa16-5f6638500998/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3cbcb3ed-5ee8-496c-ba99-edd5d634e170/4b3f91f7-33c5-4c41-aa16-5f6638500998/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1                  |NA             | 0.3240462| 0.1994544| 0.4486379|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |2+                 |NA             | 0.3728818| 0.3382738| 0.4074898|
|0-24 months |IRC            |INDIA                        |1                  |NA             | 0.5976921| 0.4930680| 0.7023162|
|0-24 months |IRC            |INDIA                        |2+                 |NA             | 0.6517141| 0.5994007| 0.7040276|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.5002465| 0.4899210| 0.5105721|
|0-24 months |JiVitA-3       |BANGLADESH                   |2+                 |NA             | 0.4805000| 0.4642536| 0.4967465|
|0-24 months |LCNI-5         |MALAWI                       |1                  |NA             | 0.6330862| 0.5846379| 0.6815346|
|0-24 months |LCNI-5         |MALAWI                       |2+                 |NA             | 0.6343390| 0.5871615| 0.6815165|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1                  |NA             | 0.4476391| 0.4055885| 0.4896897|
|0-24 months |NIH-Crypto     |BANGLADESH                   |2+                 |NA             | 0.5510720| 0.4823201| 0.6198238|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             | 0.4290734| 0.3867181| 0.4714288|
|0-24 months |PROVIDE        |BANGLADESH                   |2+                 |NA             | 0.4602233| 0.3903489| 0.5300977|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.3433120| 0.3188429| 0.3677810|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2+                 |NA             | 0.3613715| 0.3188370| 0.4039061|
|0-6 months  |IRC            |INDIA                        |1                  |NA             | 0.4556635| 0.3501984| 0.5611286|
|0-6 months  |IRC            |INDIA                        |2+                 |NA             | 0.4194465| 0.3653164| 0.4735767|
|0-6 months  |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.4239865| 0.4138411| 0.4341319|
|0-6 months  |JiVitA-3       |BANGLADESH                   |2+                 |NA             | 0.3983274| 0.3819685| 0.4146862|
|0-6 months  |LCNI-5         |MALAWI                       |1                  |NA             | 0.3586430| 0.2739598| 0.4433262|
|0-6 months  |LCNI-5         |MALAWI                       |2+                 |NA             | 0.3577543| 0.2805666| 0.4349419|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |1                  |NA             | 0.2867781| 0.2484844| 0.3250719|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |2+                 |NA             | 0.3535738| 0.2882081| 0.4189396|
|0-6 months  |PROVIDE        |BANGLADESH                   |1                  |NA             | 0.2532645| 0.2158101| 0.2907189|
|0-6 months  |PROVIDE        |BANGLADESH                   |2+                 |NA             | 0.2096819| 0.1519924| 0.2673714|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.1946103| 0.1744584| 0.2147622|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2+                 |NA             | 0.1936302| 0.1611636| 0.2260967|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |1                  |NA             | 0.3271410| 0.1840642| 0.4702177|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |2+                 |NA             | 0.3722263| 0.3370451| 0.4074076|
|6-24 months |IRC            |INDIA                        |1                  |NA             | 0.3190502| 0.1853559| 0.4527445|
|6-24 months |IRC            |INDIA                        |2+                 |NA             | 0.3930209| 0.3229918| 0.4630500|
|6-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.2057869| 0.1928187| 0.2187550|
|6-24 months |JiVitA-3       |BANGLADESH                   |2+                 |NA             | 0.2143550| 0.1940309| 0.2346791|
|6-24 months |LCNI-5         |MALAWI                       |1                  |NA             | 0.6027890| 0.5493363| 0.6562416|
|6-24 months |LCNI-5         |MALAWI                       |2+                 |NA             | 0.5971822| 0.5464988| 0.6478655|
|6-24 months |NIH-Crypto     |BANGLADESH                   |1                  |NA             | 0.2432771| 0.1997086| 0.2868457|
|6-24 months |NIH-Crypto     |BANGLADESH                   |2+                 |NA             | 0.3160627| 0.2361566| 0.3959688|
|6-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             | 0.2734899| 0.2252444| 0.3217353|
|6-24 months |PROVIDE        |BANGLADESH                   |2+                 |NA             | 0.3737830| 0.2896465| 0.4579196|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.2145716| 0.1889426| 0.2402005|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2+                 |NA             | 0.2537900| 0.2116440| 0.2959360|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.3569636| 0.3068991| 0.4070281|
|0-24 months |IRC            |INDIA                        |NA                 |NA             | 0.6414634| 0.5949863| 0.6879405|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.4954044| 0.4875673| 0.5032416|
|0-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.6366995| 0.6035988| 0.6698003|
|0-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.4775726| 0.4419904| 0.5131548|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.4357143| 0.3989556| 0.4724730|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.3467505| 0.3276457| 0.3658554|
|0-6 months  |IRC            |INDIA                        |NA                 |NA             | 0.4243902| 0.3764905| 0.4722900|
|0-6 months  |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.4130611| 0.4056124| 0.4205098|
|0-6 months  |LCNI-5         |MALAWI                       |NA                 |NA             | 0.3558052| 0.2982716| 0.4133389|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.3021108| 0.2694011| 0.3348205|
|0-6 months  |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.2400000| 0.2083392| 0.2716608|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1949686| 0.1790654| 0.2108717|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.3569636| 0.3068991| 0.4070281|
|6-24 months |IRC            |INDIA                        |NA                 |NA             | 0.3771186| 0.3151523| 0.4390850|
|6-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.2161724| 0.2067972| 0.2255476|
|6-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.5985816| 0.5623721| 0.6347910|
|6-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.2628458| 0.2244546| 0.3012371|
|6-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.3004386| 0.2583143| 0.3425629|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.2268170| 0.2062654| 0.2473687|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |2+                 |1              | 1.1507057| 0.7819849| 1.6932856|
|0-24 months |IRC            |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |IRC            |INDIA                        |2+                 |1              | 1.0903843| 0.8999773| 1.3210754|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |2+                 |1              | 0.9605265| 0.9257371| 0.9966232|
|0-24 months |LCNI-5         |MALAWI                       |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |LCNI-5         |MALAWI                       |2+                 |1              | 1.0019788| 0.9018975| 1.1131658|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |NIH-Crypto     |BANGLADESH                   |2+                 |1              | 1.2310631| 1.0553613| 1.4360167|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |PROVIDE        |BANGLADESH                   |2+                 |1              | 1.0725981| 0.8985765| 1.2803214|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2+                 |1              | 1.0526040| 0.9178517| 1.2071397|
|0-6 months  |IRC            |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |IRC            |INDIA                        |2+                 |1              | 0.9205182| 0.7066995| 1.1990297|
|0-6 months  |JiVitA-3       |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |JiVitA-3       |BANGLADESH                   |2+                 |1              | 0.9394812| 0.8971164| 0.9838466|
|0-6 months  |LCNI-5         |MALAWI                       |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |LCNI-5         |MALAWI                       |2+                 |1              | 0.9975218| 0.7283464| 1.3661766|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |2+                 |1              | 1.2329177| 0.9834219| 1.5457110|
|0-6 months  |PROVIDE        |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |PROVIDE        |BANGLADESH                   |2+                 |1              | 0.8279166| 0.6065322| 1.1301064|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2+                 |1              | 0.9949636| 0.8179174| 1.2103331|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |2+                 |1              | 1.1378164| 0.7348899| 1.7616600|
|6-24 months |IRC            |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |IRC            |INDIA                        |2+                 |1              | 1.2318465| 0.7826029| 1.9389728|
|6-24 months |JiVitA-3       |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |JiVitA-3       |BANGLADESH                   |2+                 |1              | 1.0416360| 0.9337764| 1.1619542|
|6-24 months |LCNI-5         |MALAWI                       |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |LCNI-5         |MALAWI                       |2+                 |1              | 0.9906986| 0.8775553| 1.1184295|
|6-24 months |NIH-Crypto     |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |NIH-Crypto     |BANGLADESH                   |2+                 |1              | 1.2991878| 0.9587804| 1.7604540|
|6-24 months |PROVIDE        |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |PROVIDE        |BANGLADESH                   |2+                 |1              | 1.3667162| 1.0293726| 1.8146133|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2+                 |1              | 1.1827755| 0.9642966| 1.4507548|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1                  |NA             |  0.0329175| -0.0487621|  0.1145970|
|0-24 months |IRC            |INDIA                        |1                  |NA             |  0.0437713| -0.0489124|  0.1364550|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             | -0.0048421| -0.0110622|  0.0013779|
|0-24 months |LCNI-5         |MALAWI                       |1                  |NA             |  0.0036133| -0.0314579|  0.0386844|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1                  |NA             |  0.0299335|  0.0072965|  0.0525704|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             |  0.0066409| -0.0147182|  0.0280000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             |  0.0034386| -0.0117001|  0.0185773|
|0-6 months  |IRC            |INDIA                        |1                  |NA             | -0.0312733| -0.1250859|  0.0625394|
|0-6 months  |JiVitA-3       |BANGLADESH                   |1                  |NA             | -0.0109254| -0.0172114| -0.0046394|
|0-6 months  |LCNI-5         |MALAWI                       |1                  |NA             | -0.0028378| -0.0646961|  0.0590205|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |1                  |NA             |  0.0153327| -0.0060296|  0.0366949|
|0-6 months  |PROVIDE        |BANGLADESH                   |1                  |NA             | -0.0132645| -0.0318096|  0.0052807|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             |  0.0003582| -0.0117738|  0.0124903|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |1                  |NA             |  0.0298226| -0.0713249|  0.1309702|
|6-24 months |IRC            |INDIA                        |1                  |NA             |  0.0580684| -0.0633506|  0.1794875|
|6-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             |  0.0103855|  0.0010547|  0.0197163|
|6-24 months |LCNI-5         |MALAWI                       |1                  |NA             | -0.0042074| -0.0430657|  0.0346510|
|6-24 months |NIH-Crypto     |BANGLADESH                   |1                  |NA             |  0.0195687| -0.0043361|  0.0434735|
|6-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             |  0.0269487| -0.0007426|  0.0546400|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             |  0.0122455| -0.0038280|  0.0283189|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1                  |NA             |  0.0922152| -0.1811875|  0.3023349|
|0-24 months |IRC            |INDIA                        |1                  |NA             |  0.0682366| -0.0882862|  0.2022476|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             | -0.0097741| -0.0223985|  0.0026944|
|0-24 months |LCNI-5         |MALAWI                       |1                  |NA             |  0.0056750| -0.0509657|  0.0592632|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1                  |NA             |  0.0626784|  0.0138492|  0.1090898|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             |  0.0152414| -0.0350263|  0.0630677|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             |  0.0099166| -0.0347272|  0.0526341|
|0-6 months  |IRC            |INDIA                        |1                  |NA             | -0.0736899| -0.3193042|  0.1261986|
|0-6 months  |JiVitA-3       |BANGLADESH                   |1                  |NA             | -0.0264499| -0.0417479| -0.0113765|
|0-6 months  |LCNI-5         |MALAWI                       |1                  |NA             | -0.0079757| -0.1977218|  0.1517103|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |1                  |NA             |  0.0507518| -0.0226349|  0.1188721|
|0-6 months  |PROVIDE        |BANGLADESH                   |1                  |NA             | -0.0552687| -0.1354321|  0.0192351|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             |  0.0018374| -0.0623716|  0.0621657|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |1                  |NA             |  0.0835453| -0.2608847|  0.3338890|
|6-24 months |IRC            |INDIA                        |1                  |NA             |  0.1539792| -0.2375332|  0.4216307|
|6-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             |  0.0480428|  0.0039175|  0.0902134|
|6-24 months |LCNI-5         |MALAWI                       |1                  |NA             | -0.0070289| -0.0740801|  0.0558365|
|6-24 months |NIH-Crypto     |BANGLADESH                   |1                  |NA             |  0.0744494| -0.0208705|  0.1608691|
|6-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             |  0.0896980| -0.0069739|  0.1770891|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             |  0.0539883| -0.0195902|  0.1222570|
