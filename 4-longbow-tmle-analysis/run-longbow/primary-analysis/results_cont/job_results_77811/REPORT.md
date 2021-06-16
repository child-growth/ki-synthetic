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

**Outcome Variable:** whz

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
|BC      |Birth     |CMC-V-BCS-2002 |INDIA      |1      |      1|   85|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA      |0      |     84|   85|
|BC      |Birth     |COHORTS        |INDIA      |1      |   1623| 4245|
|BC      |Birth     |COHORTS        |INDIA      |0      |   2622| 4245|
|BC      |Birth     |EE             |PAKISTAN   |1      |     61|  175|
|BC      |Birth     |EE             |PAKISTAN   |0      |    114|  175|
|BC      |Birth     |GMS-Nepal      |NEPAL      |1      |    449|  593|
|BC      |Birth     |GMS-Nepal      |NEPAL      |0      |    144|  593|
|BC      |Birth     |JiVitA-3       |BANGLADESH |1      |    211|  250|
|BC      |Birth     |JiVitA-3       |BANGLADESH |0      |     39|  250|
|BC      |Birth     |JiVitA-4       |BANGLADESH |1      |   1490| 2000|
|BC      |Birth     |JiVitA-4       |BANGLADESH |0      |    510| 2000|
|BC      |Birth     |NIH-Crypto     |BANGLADESH |1      |    148|  707|
|BC      |Birth     |NIH-Crypto     |BANGLADESH |0      |    559|  707|
|BC      |Birth     |PROVIDE        |BANGLADESH |1      |    142|  532|
|BC      |Birth     |PROVIDE        |BANGLADESH |0      |    390|  532|
|BC      |Birth     |SAS-CompFeed   |INDIA      |1      |    784|  900|
|BC      |Birth     |SAS-CompFeed   |INDIA      |0      |    116|  900|
|BC      |Birth     |Vellore Crypto |INDIA      |1      |      9|  343|
|BC      |Birth     |Vellore Crypto |INDIA      |0      |    334|  343|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA      |1      |      2|  365|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA      |0      |    363|  365|
|BC      |6 months  |COHORTS        |INDIA      |1      |   1826| 4715|
|BC      |6 months  |COHORTS        |INDIA      |0      |   2889| 4715|
|BC      |6 months  |EE             |PAKISTAN   |1      |    120|  373|
|BC      |6 months  |EE             |PAKISTAN   |0      |    253|  373|
|BC      |6 months  |GMS-Nepal      |NEPAL      |1      |    403|  519|
|BC      |6 months  |GMS-Nepal      |NEPAL      |0      |    116|  519|
|BC      |6 months  |JiVitA-3       |BANGLADESH |1      |    207|  232|
|BC      |6 months  |JiVitA-3       |BANGLADESH |0      |     25|  232|
|BC      |6 months  |JiVitA-4       |BANGLADESH |1      |   2979| 4021|
|BC      |6 months  |JiVitA-4       |BANGLADESH |0      |   1042| 4021|
|BC      |6 months  |NIH-Crypto     |BANGLADESH |1      |    147|  715|
|BC      |6 months  |NIH-Crypto     |BANGLADESH |0      |    568|  715|
|BC      |6 months  |PROVIDE        |BANGLADESH |1      |    162|  603|
|BC      |6 months  |PROVIDE        |BANGLADESH |0      |    441|  603|
|BC      |6 months  |SAS-CompFeed   |INDIA      |1      |    941| 1083|
|BC      |6 months  |SAS-CompFeed   |INDIA      |0      |    142| 1083|
|BC      |6 months  |SAS-FoodSuppl  |INDIA      |1      |    304|  380|
|BC      |6 months  |SAS-FoodSuppl  |INDIA      |0      |     76|  380|
|BC      |6 months  |TanzaniaChild2 |TANZANIA   |1      |     29| 1943|
|BC      |6 months  |TanzaniaChild2 |TANZANIA   |0      |   1914| 1943|
|BC      |6 months  |Vellore Crypto |INDIA      |1      |     11|  408|
|BC      |6 months  |Vellore Crypto |INDIA      |0      |    397|  408|
|BC      |24 months |CMC-V-BCS-2002 |INDIA      |1      |      2|  369|
|BC      |24 months |CMC-V-BCS-2002 |INDIA      |0      |    367|  369|
|BC      |24 months |COHORTS        |INDIA      |1      |   1412| 3632|
|BC      |24 months |COHORTS        |INDIA      |0      |   2220| 3632|
|BC      |24 months |EE             |PAKISTAN   |1      |     59|  168|
|BC      |24 months |EE             |PAKISTAN   |0      |    109|  168|
|BC      |24 months |GMS-Nepal      |NEPAL      |1      |    339|  447|
|BC      |24 months |GMS-Nepal      |NEPAL      |0      |    108|  447|
|BC      |24 months |JiVitA-3       |BANGLADESH |1      |    106|  118|
|BC      |24 months |JiVitA-3       |BANGLADESH |0      |     12|  118|
|BC      |24 months |JiVitA-4       |BANGLADESH |1      |   2940| 3958|
|BC      |24 months |JiVitA-4       |BANGLADESH |0      |   1018| 3958|
|BC      |24 months |NIH-Crypto     |BANGLADESH |1      |    112|  514|
|BC      |24 months |NIH-Crypto     |BANGLADESH |0      |    402|  514|
|BC      |24 months |PROVIDE        |BANGLADESH |1      |    156|  579|
|BC      |24 months |PROVIDE        |BANGLADESH |0      |    423|  579|
|BC      |24 months |TanzaniaChild2 |TANZANIA   |1      |      0|    6|
|BC      |24 months |TanzaniaChild2 |TANZANIA   |0      |      6|    6|
|BC      |24 months |Vellore Crypto |INDIA      |1      |     11|  409|
|BC      |24 months |Vellore Crypto |INDIA      |0      |    398|  409|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA      |1      |      0|   86|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA      |0      |     86|   86|
|FULL    |Birth     |COHORTS        |INDIA      |1      |   1626| 4389|
|FULL    |Birth     |COHORTS        |INDIA      |0      |   2763| 4389|
|FULL    |Birth     |EE             |PAKISTAN   |1      |     55|  175|
|FULL    |Birth     |EE             |PAKISTAN   |0      |    120|  175|
|FULL    |Birth     |GMS-Nepal      |NEPAL      |1      |    453|  596|
|FULL    |Birth     |GMS-Nepal      |NEPAL      |0      |    143|  596|
|FULL    |Birth     |JiVitA-3       |BANGLADESH |1      |    265|  292|
|FULL    |Birth     |JiVitA-3       |BANGLADESH |0      |     27|  292|
|FULL    |Birth     |JiVitA-4       |BANGLADESH |1      |   1884| 2384|
|FULL    |Birth     |JiVitA-4       |BANGLADESH |0      |    500| 2384|
|FULL    |Birth     |NIH-Crypto     |BANGLADESH |1      |    159|  707|
|FULL    |Birth     |NIH-Crypto     |BANGLADESH |0      |    548|  707|
|FULL    |Birth     |PROVIDE        |BANGLADESH |1      |    145|  532|
|FULL    |Birth     |PROVIDE        |BANGLADESH |0      |    387|  532|
|FULL    |Birth     |SAS-CompFeed   |INDIA      |1      |    849|  957|
|FULL    |Birth     |SAS-CompFeed   |INDIA      |0      |    108|  957|
|FULL    |Birth     |Vellore Crypto |INDIA      |1      |      6|  343|
|FULL    |Birth     |Vellore Crypto |INDIA      |0      |    337|  343|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA      |1      |      8|  365|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA      |0      |    357|  365|
|FULL    |6 months  |COHORTS        |INDIA      |1      |   1798| 4694|
|FULL    |6 months  |COHORTS        |INDIA      |0      |   2896| 4694|
|FULL    |6 months  |EE             |PAKISTAN   |1      |    121|  373|
|FULL    |6 months  |EE             |PAKISTAN   |0      |    252|  373|
|FULL    |6 months  |GMS-Nepal      |NEPAL      |1      |    399|  528|
|FULL    |6 months  |GMS-Nepal      |NEPAL      |0      |    129|  528|
|FULL    |6 months  |JiVitA-3       |BANGLADESH |1      |    295|  334|
|FULL    |6 months  |JiVitA-3       |BANGLADESH |0      |     39|  334|
|FULL    |6 months  |JiVitA-4       |BANGLADESH |1      |   2960| 4042|
|FULL    |6 months  |JiVitA-4       |BANGLADESH |0      |   1082| 4042|
|FULL    |6 months  |NIH-Crypto     |BANGLADESH |1      |    161|  715|
|FULL    |6 months  |NIH-Crypto     |BANGLADESH |0      |    554|  715|
|FULL    |6 months  |PROVIDE        |BANGLADESH |1      |    153|  603|
|FULL    |6 months  |PROVIDE        |BANGLADESH |0      |    450|  603|
|FULL    |6 months  |SAS-CompFeed   |INDIA      |1      |    941| 1088|
|FULL    |6 months  |SAS-CompFeed   |INDIA      |0      |    147| 1088|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA      |1      |    304|  380|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA      |0      |     76|  380|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA   |1      |     32| 1920|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA   |0      |   1888| 1920|
|FULL    |6 months  |Vellore Crypto |INDIA      |1      |      8|  408|
|FULL    |6 months  |Vellore Crypto |INDIA      |0      |    400|  408|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA      |1      |      8|  369|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA      |0      |    361|  369|
|FULL    |24 months |COHORTS        |INDIA      |1      |   1319| 3533|
|FULL    |24 months |COHORTS        |INDIA      |0      |   2214| 3533|
|FULL    |24 months |EE             |PAKISTAN   |1      |     55|  167|
|FULL    |24 months |EE             |PAKISTAN   |0      |    112|  167|
|FULL    |24 months |GMS-Nepal      |NEPAL      |1      |    337|  455|
|FULL    |24 months |GMS-Nepal      |NEPAL      |0      |    118|  455|
|FULL    |24 months |JiVitA-3       |BANGLADESH |1      |    255|  289|
|FULL    |24 months |JiVitA-3       |BANGLADESH |0      |     34|  289|
|FULL    |24 months |JiVitA-4       |BANGLADESH |1      |   2961| 3993|
|FULL    |24 months |JiVitA-4       |BANGLADESH |0      |   1032| 3993|
|FULL    |24 months |NIH-Crypto     |BANGLADESH |1      |    123|  514|
|FULL    |24 months |NIH-Crypto     |BANGLADESH |0      |    391|  514|
|FULL    |24 months |PROVIDE        |BANGLADESH |1      |    146|  579|
|FULL    |24 months |PROVIDE        |BANGLADESH |0      |    433|  579|
|FULL    |24 months |TanzaniaChild2 |TANZANIA   |1      |      0|    6|
|FULL    |24 months |TanzaniaChild2 |TANZANIA   |0      |      6|    6|
|FULL    |24 months |Vellore Crypto |INDIA      |1      |      8|  409|
|FULL    |24 months |Vellore Crypto |INDIA      |0      |    401|  409|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA      |1      |      3|  361|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA      |0      |    358|  361|
|QI      |Birth     |COHORTS        |INDIA      |1      |   1822| 4684|
|QI      |Birth     |COHORTS        |INDIA      |0      |   2862| 4684|
|QI      |Birth     |EE             |PAKISTAN   |1      |    118|  376|
|QI      |Birth     |EE             |PAKISTAN   |0      |    258|  376|
|QI      |Birth     |GMS-Nepal      |NEPAL      |1      |    469|  634|
|QI      |Birth     |GMS-Nepal      |NEPAL      |0      |    165|  634|
|QI      |Birth     |JiVitA-3       |BANGLADESH |1      |    154|  168|
|QI      |Birth     |JiVitA-3       |BANGLADESH |0      |     14|  168|
|QI      |Birth     |JiVitA-4       |BANGLADESH |1      |    584|  726|
|QI      |Birth     |JiVitA-4       |BANGLADESH |0      |    142|  726|
|QI      |Birth     |NIH-Crypto     |BANGLADESH |1      |    153|  756|
|QI      |Birth     |NIH-Crypto     |BANGLADESH |0      |    603|  756|
|QI      |Birth     |PROVIDE        |BANGLADESH |1      |    173|  531|
|QI      |Birth     |PROVIDE        |BANGLADESH |0      |    358|  531|
|QI      |Birth     |SAS-CompFeed   |INDIA      |1      |    304|  371|
|QI      |Birth     |SAS-CompFeed   |INDIA      |0      |     67|  371|
|QI      |Birth     |TanzaniaChild2 |TANZANIA   |1      |     36| 2283|
|QI      |Birth     |TanzaniaChild2 |TANZANIA   |0      |   2247| 2283|
|QI      |Birth     |Vellore Crypto |INDIA      |1      |      6|  379|
|QI      |Birth     |Vellore Crypto |INDIA      |0      |    373|  379|
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
|QI      |6 months  |SAS-FoodSuppl  |INDIA      |1      |    219|  255|
|QI      |6 months  |SAS-FoodSuppl  |INDIA      |0      |     36|  255|
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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_gam_NULL_NULL_GCV.Cp
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


