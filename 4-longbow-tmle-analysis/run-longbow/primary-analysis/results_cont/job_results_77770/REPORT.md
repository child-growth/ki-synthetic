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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** hdlvry

**Adjustment Set:**

* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* syntype
* agecat
* studyid
* country

## Data Summary

|syntype |agecat    |studyid        |country    |hdlvry | n_cell|    n|
|:-------|:---------|:--------------|:----------|:------|------:|----:|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA      |1      |      1|   91|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA      |0      |     90|   91|
|BC      |Birth     |COHORTS        |INDIA      |1      |   1743| 4566|
|BC      |Birth     |COHORTS        |INDIA      |0      |   2823| 4566|
|BC      |Birth     |EE             |PAKISTAN   |1      |     80|  238|
|BC      |Birth     |EE             |PAKISTAN   |0      |    158|  238|
|BC      |Birth     |GMS-Nepal      |NEPAL      |1      |    485|  642|
|BC      |Birth     |GMS-Nepal      |NEPAL      |0      |    157|  642|
|BC      |Birth     |JiVitA-3       |BANGLADESH |1      |    256|  299|
|BC      |Birth     |JiVitA-3       |BANGLADESH |0      |     43|  299|
|BC      |Birth     |JiVitA-4       |BANGLADESH |1      |   1758| 2359|
|BC      |Birth     |JiVitA-4       |BANGLADESH |0      |    601| 2359|
|BC      |Birth     |NIH-Crypto     |BANGLADESH |1      |    153|  732|
|BC      |Birth     |NIH-Crypto     |BANGLADESH |0      |    579|  732|
|BC      |Birth     |PROVIDE        |BANGLADESH |1      |    145|  539|
|BC      |Birth     |PROVIDE        |BANGLADESH |0      |    394|  539|
|BC      |Birth     |SAS-CompFeed   |INDIA      |1      |    885| 1013|
|BC      |Birth     |SAS-CompFeed   |INDIA      |0      |    128| 1013|
|BC      |Birth     |Vellore Crypto |INDIA      |1      |      9|  388|
|BC      |Birth     |Vellore Crypto |INDIA      |0      |    379|  388|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA      |1      |      2|  367|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA      |0      |    365|  367|
|BC      |6 months  |COHORTS        |INDIA      |1      |   1827| 4722|
|BC      |6 months  |COHORTS        |INDIA      |0      |   2895| 4722|
|BC      |6 months  |EE             |PAKISTAN   |1      |    119|  371|
|BC      |6 months  |EE             |PAKISTAN   |0      |    252|  371|
|BC      |6 months  |GMS-Nepal      |NEPAL      |1      |    403|  519|
|BC      |6 months  |GMS-Nepal      |NEPAL      |0      |    116|  519|
|BC      |6 months  |JiVitA-3       |BANGLADESH |1      |    208|  234|
|BC      |6 months  |JiVitA-3       |BANGLADESH |0      |     26|  234|
|BC      |6 months  |JiVitA-4       |BANGLADESH |1      |   2976| 4020|
|BC      |6 months  |JiVitA-4       |BANGLADESH |0      |   1044| 4020|
|BC      |6 months  |NIH-Crypto     |BANGLADESH |1      |    147|  715|
|BC      |6 months  |NIH-Crypto     |BANGLADESH |0      |    568|  715|
|BC      |6 months  |PROVIDE        |BANGLADESH |1      |    162|  604|
|BC      |6 months  |PROVIDE        |BANGLADESH |0      |    442|  604|
|BC      |6 months  |SAS-CompFeed   |INDIA      |1      |    944| 1085|
|BC      |6 months  |SAS-CompFeed   |INDIA      |0      |    141| 1085|
|BC      |6 months  |SAS-FoodSuppl  |INDIA      |1      |    304|  380|
|BC      |6 months  |SAS-FoodSuppl  |INDIA      |0      |     76|  380|
|BC      |6 months  |TanzaniaChild2 |TANZANIA   |1      |     29| 1944|
|BC      |6 months  |TanzaniaChild2 |TANZANIA   |0      |   1915| 1944|
|BC      |6 months  |Vellore Crypto |INDIA      |1      |     11|  407|
|BC      |6 months  |Vellore Crypto |INDIA      |0      |    396|  407|
|BC      |24 months |CMC-V-BCS-2002 |INDIA      |1      |      2|  368|
|BC      |24 months |CMC-V-BCS-2002 |INDIA      |0      |    366|  368|
|BC      |24 months |COHORTS        |INDIA      |1      |   1421| 3659|
|BC      |24 months |COHORTS        |INDIA      |0      |   2238| 3659|
|BC      |24 months |EE             |PAKISTAN   |1      |     58|  167|
|BC      |24 months |EE             |PAKISTAN   |0      |    109|  167|
|BC      |24 months |GMS-Nepal      |NEPAL      |1      |    340|  448|
|BC      |24 months |GMS-Nepal      |NEPAL      |0      |    108|  448|
|BC      |24 months |JiVitA-3       |BANGLADESH |1      |    107|  119|
|BC      |24 months |JiVitA-3       |BANGLADESH |0      |     12|  119|
|BC      |24 months |JiVitA-4       |BANGLADESH |1      |   2951| 3972|
|BC      |24 months |JiVitA-4       |BANGLADESH |0      |   1021| 3972|
|BC      |24 months |NIH-Crypto     |BANGLADESH |1      |    112|  514|
|BC      |24 months |NIH-Crypto     |BANGLADESH |0      |    402|  514|
|BC      |24 months |PROVIDE        |BANGLADESH |1      |    156|  578|
|BC      |24 months |PROVIDE        |BANGLADESH |0      |    422|  578|
|BC      |24 months |TanzaniaChild2 |TANZANIA   |1      |      0|    6|
|BC      |24 months |TanzaniaChild2 |TANZANIA   |0      |      6|    6|
|BC      |24 months |Vellore Crypto |INDIA      |1      |     11|  409|
|BC      |24 months |Vellore Crypto |INDIA      |0      |    398|  409|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA      |1      |      0|   92|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA      |0      |     92|   92|
|FULL    |Birth     |COHORTS        |INDIA      |1      |   1756| 4694|
|FULL    |Birth     |COHORTS        |INDIA      |0      |   2938| 4694|
|FULL    |Birth     |EE             |PAKISTAN   |1      |     77|  238|
|FULL    |Birth     |EE             |PAKISTAN   |0      |    161|  238|
|FULL    |Birth     |GMS-Nepal      |NEPAL      |1      |    489|  646|
|FULL    |Birth     |GMS-Nepal      |NEPAL      |0      |    157|  646|
|FULL    |Birth     |JiVitA-3       |BANGLADESH |1      |    304|  334|
|FULL    |Birth     |JiVitA-3       |BANGLADESH |0      |     30|  334|
|FULL    |Birth     |JiVitA-4       |BANGLADESH |1      |   2254| 2808|
|FULL    |Birth     |JiVitA-4       |BANGLADESH |0      |    554| 2808|
|FULL    |Birth     |NIH-Crypto     |BANGLADESH |1      |    165|  732|
|FULL    |Birth     |NIH-Crypto     |BANGLADESH |0      |    567|  732|
|FULL    |Birth     |PROVIDE        |BANGLADESH |1      |    148|  539|
|FULL    |Birth     |PROVIDE        |BANGLADESH |0      |    391|  539|
|FULL    |Birth     |SAS-CompFeed   |INDIA      |1      |    961| 1085|
|FULL    |Birth     |SAS-CompFeed   |INDIA      |0      |    124| 1085|
|FULL    |Birth     |Vellore Crypto |INDIA      |1      |      7|  388|
|FULL    |Birth     |Vellore Crypto |INDIA      |0      |    381|  388|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA      |1      |      8|  366|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA      |0      |    358|  366|
|FULL    |6 months  |COHORTS        |INDIA      |1      |   1799| 4699|
|FULL    |6 months  |COHORTS        |INDIA      |0      |   2900| 4699|
|FULL    |6 months  |EE             |PAKISTAN   |1      |    121|  371|
|FULL    |6 months  |EE             |PAKISTAN   |0      |    250|  371|
|FULL    |6 months  |GMS-Nepal      |NEPAL      |1      |    399|  528|
|FULL    |6 months  |GMS-Nepal      |NEPAL      |0      |    129|  528|
|FULL    |6 months  |JiVitA-3       |BANGLADESH |1      |    293|  332|
|FULL    |6 months  |JiVitA-3       |BANGLADESH |0      |     39|  332|
|FULL    |6 months  |JiVitA-4       |BANGLADESH |1      |   2957| 4038|
|FULL    |6 months  |JiVitA-4       |BANGLADESH |0      |   1081| 4038|
|FULL    |6 months  |NIH-Crypto     |BANGLADESH |1      |    161|  715|
|FULL    |6 months  |NIH-Crypto     |BANGLADESH |0      |    554|  715|
|FULL    |6 months  |PROVIDE        |BANGLADESH |1      |    154|  604|
|FULL    |6 months  |PROVIDE        |BANGLADESH |0      |    450|  604|
|FULL    |6 months  |SAS-CompFeed   |INDIA      |1      |    944| 1091|
|FULL    |6 months  |SAS-CompFeed   |INDIA      |0      |    147| 1091|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA      |1      |    304|  380|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA      |0      |     76|  380|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA   |1      |     32| 1921|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA   |0      |   1889| 1921|
|FULL    |6 months  |Vellore Crypto |INDIA      |1      |      8|  407|
|FULL    |6 months  |Vellore Crypto |INDIA      |0      |    399|  407|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA      |1      |      8|  368|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA      |0      |    360|  368|
|FULL    |24 months |COHORTS        |INDIA      |1      |   1323| 3556|
|FULL    |24 months |COHORTS        |INDIA      |0      |   2233| 3556|
|FULL    |24 months |EE             |PAKISTAN   |1      |     54|  166|
|FULL    |24 months |EE             |PAKISTAN   |0      |    112|  166|
|FULL    |24 months |GMS-Nepal      |NEPAL      |1      |    338|  456|
|FULL    |24 months |GMS-Nepal      |NEPAL      |0      |    118|  456|
|FULL    |24 months |JiVitA-3       |BANGLADESH |1      |    256|  291|
|FULL    |24 months |JiVitA-3       |BANGLADESH |0      |     35|  291|
|FULL    |24 months |JiVitA-4       |BANGLADESH |1      |   2972| 4005|
|FULL    |24 months |JiVitA-4       |BANGLADESH |0      |   1033| 4005|
|FULL    |24 months |NIH-Crypto     |BANGLADESH |1      |    123|  514|
|FULL    |24 months |NIH-Crypto     |BANGLADESH |0      |    391|  514|
|FULL    |24 months |PROVIDE        |BANGLADESH |1      |    145|  578|
|FULL    |24 months |PROVIDE        |BANGLADESH |0      |    433|  578|
|FULL    |24 months |TanzaniaChild2 |TANZANIA   |1      |      0|    6|
|FULL    |24 months |TanzaniaChild2 |TANZANIA   |0      |      6|    6|
|FULL    |24 months |Vellore Crypto |INDIA      |1      |      8|  409|
|FULL    |24 months |Vellore Crypto |INDIA      |0      |    401|  409|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA      |1      |      3|  361|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA      |0      |    358|  361|
|QI      |Birth     |COHORTS        |INDIA      |1      |   1854| 4768|
|QI      |Birth     |COHORTS        |INDIA      |0      |   2914| 4768|
|QI      |Birth     |EE             |PAKISTAN   |1      |    118|  376|
|QI      |Birth     |EE             |PAKISTAN   |0      |    258|  376|
|QI      |Birth     |GMS-Nepal      |NEPAL      |1      |    473|  639|
|QI      |Birth     |GMS-Nepal      |NEPAL      |0      |    166|  639|
|QI      |Birth     |JiVitA-3       |BANGLADESH |1      |    154|  168|
|QI      |Birth     |JiVitA-3       |BANGLADESH |0      |     14|  168|
|QI      |Birth     |JiVitA-4       |BANGLADESH |1      |    580|  722|
|QI      |Birth     |JiVitA-4       |BANGLADESH |0      |    142|  722|
|QI      |Birth     |NIH-Crypto     |BANGLADESH |1      |    153|  753|
|QI      |Birth     |NIH-Crypto     |BANGLADESH |0      |    600|  753|
|QI      |Birth     |PROVIDE        |BANGLADESH |1      |    173|  531|
|QI      |Birth     |PROVIDE        |BANGLADESH |0      |    358|  531|
|QI      |Birth     |SAS-CompFeed   |INDIA      |1      |    304|  370|
|QI      |Birth     |SAS-CompFeed   |INDIA      |0      |     66|  370|
|QI      |Birth     |TanzaniaChild2 |TANZANIA   |1      |     36| 2283|
|QI      |Birth     |TanzaniaChild2 |TANZANIA   |0      |   2247| 2283|
|QI      |Birth     |Vellore Crypto |INDIA      |1      |      7|  405|
|QI      |Birth     |Vellore Crypto |INDIA      |0      |    398|  405|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA      |1      |      3|  346|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA      |0      |    343|  346|
|QI      |6 months  |COHORTS        |INDIA      |1      |   1130| 2951|
|QI      |6 months  |COHORTS        |INDIA      |0      |   1821| 2951|
|QI      |6 months  |EE             |PAKISTAN   |1      |    104|  341|
|QI      |6 months  |EE             |PAKISTAN   |0      |    237|  341|
|QI      |6 months  |GMS-Nepal      |NEPAL      |1      |    368|  511|
|QI      |6 months  |GMS-Nepal      |NEPAL      |0      |    143|  511|
|QI      |6 months  |JiVitA-3       |BANGLADESH |1      |     64|   72|
|QI      |6 months  |JiVitA-3       |BANGLADESH |0      |      8|   72|
|QI      |6 months  |JiVitA-4       |BANGLADESH |1      |    486|  649|
|QI      |6 months  |JiVitA-4       |BANGLADESH |0      |    163|  649|
|QI      |6 months  |NIH-Crypto     |BANGLADESH |1      |    100|  537|
|QI      |6 months  |NIH-Crypto     |BANGLADESH |0      |    437|  537|
|QI      |6 months  |PROVIDE        |BANGLADESH |1      |    184|  611|
|QI      |6 months  |PROVIDE        |BANGLADESH |0      |    427|  611|
|QI      |6 months  |SAS-CompFeed   |INDIA      |1      |    201|  245|
|QI      |6 months  |SAS-CompFeed   |INDIA      |0      |     44|  245|
|QI      |6 months  |SAS-FoodSuppl  |INDIA      |1      |    217|  253|
|QI      |6 months  |SAS-FoodSuppl  |INDIA      |0      |     36|  253|
|QI      |6 months  |TanzaniaChild2 |TANZANIA   |1      |     35| 1863|
|QI      |6 months  |TanzaniaChild2 |TANZANIA   |0      |   1828| 1863|
|QI      |6 months  |Vellore Crypto |INDIA      |1      |      7|  383|
|QI      |6 months  |Vellore Crypto |INDIA      |0      |    376|  383|
|QI      |24 months |CMC-V-BCS-2002 |INDIA      |1      |      1|  145|
|QI      |24 months |CMC-V-BCS-2002 |INDIA      |0      |    144|  145|
|QI      |24 months |EE             |PAKISTAN   |1      |     35|  111|
|QI      |24 months |EE             |PAKISTAN   |0      |     76|  111|
|QI      |24 months |GMS-Nepal      |NEPAL      |1      |    135|  176|
|QI      |24 months |GMS-Nepal      |NEPAL      |0      |     41|  176|
|QI      |24 months |JiVitA-4       |BANGLADESH |1      |     29|   48|
|QI      |24 months |JiVitA-4       |BANGLADESH |0      |     19|   48|
|QI      |24 months |NIH-Crypto     |BANGLADESH |1      |      6|   47|
|QI      |24 months |NIH-Crypto     |BANGLADESH |0      |     41|   47|
|QI      |24 months |PROVIDE        |BANGLADESH |1      |     22|   55|
|QI      |24 months |PROVIDE        |BANGLADESH |0      |     33|   55|
|QI      |24 months |SAS-CompFeed   |INDIA      |1      |      1|    2|
|QI      |24 months |SAS-CompFeed   |INDIA      |0      |      1|    2|
|QI      |24 months |SAS-FoodSuppl  |INDIA      |1      |      5|    6|
|QI      |24 months |SAS-FoodSuppl  |INDIA      |0      |      1|    6|
|QI      |24 months |TanzaniaChild2 |TANZANIA   |1      |      1|   53|
|QI      |24 months |TanzaniaChild2 |TANZANIA   |0      |     52|   53|
|QI      |24 months |Vellore Crypto |INDIA      |1      |      2|  161|
|QI      |24 months |Vellore Crypto |INDIA      |0      |    159|  161|


The following strata were considered:

* syntype: BC, agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: BC, agecat: 24 months, studyid: COHORTS, country: INDIA
* syntype: BC, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* syntype: BC, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: BC, agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* syntype: BC, agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: BC, agecat: 6 months, studyid: COHORTS, country: INDIA
* syntype: BC, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* syntype: BC, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: BC, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: BC, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: BC, agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* syntype: BC, agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: BC, agecat: Birth, studyid: COHORTS, country: INDIA
* syntype: BC, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* syntype: BC, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: BC, agecat: Birth, studyid: Vellore Crypto, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: COHORTS, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* syntype: FULL, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: COHORTS, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* syntype: FULL, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* syntype: FULL, agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: FULL, agecat: Birth, studyid: COHORTS, country: INDIA
* syntype: FULL, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* syntype: FULL, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: FULL, agecat: Birth, studyid: Vellore Crypto, country: INDIA
* syntype: QI, agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: QI, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* syntype: QI, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 24 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: QI, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* syntype: QI, agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: INDIA
* syntype: QI, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* syntype: QI, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: QI, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* syntype: QI, agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: QI, agecat: Birth, studyid: COHORTS, country: INDIA
* syntype: QI, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* syntype: QI, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: Birth, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: Birth, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* syntype: BC, agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: BC, agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: BC, agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: BC, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: QI, agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: QI, agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: QI, agecat: 24 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 24 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: QI, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: Vellore Crypto, country: INDIA





```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


