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

**Intervention Variable:** pers_wast

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                     |studyid        |country      |pers_wast | ever_stunted| n_cell|    n|
|:--------------------------|:--------------|:------------|:---------|------------:|------:|----:|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |0         |            0|     24|  292|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |0         |            1|    228|  292|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |1         |            0|      3|  292|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |1         |            1|     37|  292|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |0         |            0|     37|  166|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |0         |            1|    123|  166|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |1         |            0|      2|  166|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |1         |            1|      4|  166|
|0-24 months (no birth st.) |CONTENT        |PERU         |0         |            0|    162|  195|
|0-24 months (no birth st.) |CONTENT        |PERU         |0         |            1|     33|  195|
|0-24 months (no birth st.) |CONTENT        |PERU         |1         |            0|      0|  195|
|0-24 months (no birth st.) |CONTENT        |PERU         |1         |            1|      0|  195|
|0-24 months (no birth st.) |EE             |PAKISTAN     |0         |            0|     41|  213|
|0-24 months (no birth st.) |EE             |PAKISTAN     |0         |            1|    157|  213|
|0-24 months (no birth st.) |EE             |PAKISTAN     |1         |            0|      0|  213|
|0-24 months (no birth st.) |EE             |PAKISTAN     |1         |            1|     15|  213|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |0         |            0|    161|  492|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |0         |            1|    275|  492|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |1         |            0|     12|  492|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |1         |            1|     44|  492|
|0-24 months (no birth st.) |Guatemala BSC  |GUATEMALA    |0         |            0|    131|  217|
|0-24 months (no birth st.) |Guatemala BSC  |GUATEMALA    |0         |            1|     82|  217|
|0-24 months (no birth st.) |Guatemala BSC  |GUATEMALA    |1         |            0|      1|  217|
|0-24 months (no birth st.) |Guatemala BSC  |GUATEMALA    |1         |            1|      3|  217|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |0         |            0|    839| 1905|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |0         |            1|   1008| 1905|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |1         |            0|     17| 1905|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |1         |            1|     41| 1905|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |0         |            0|     85|  208|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |0         |            1|    104|  208|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |1         |            0|     12|  208|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |1         |            1|      7|  208|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |0         |            0|     97|  217|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |0         |            1|    113|  217|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |1         |            0|      6|  217|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |1         |            1|      1|  217|
|0-24 months (no birth st.) |MAL-ED         |PERU         |0         |            0|    115|  266|
|0-24 months (no birth st.) |MAL-ED         |PERU         |0         |            1|    151|  266|
|0-24 months (no birth st.) |MAL-ED         |PERU         |1         |            0|      0|  266|
|0-24 months (no birth st.) |MAL-ED         |PERU         |1         |            1|      0|  266|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |0         |            0|    152|  211|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |0         |            1|     54|  211|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |1         |            0|      4|  211|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |1         |            1|      1|  211|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |0         |            0|    169|  202|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |0         |            1|     32|  202|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |1         |            0|      1|  202|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |1         |            1|      0|  202|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |0         |            0|     39|  218|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |0         |            1|    179|  218|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |1         |            0|      0|  218|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |1         |            1|      0|  218|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |0         |            0|    125|  265|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |0         |            1|    137|  265|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |1         |            0|      3|  265|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |1         |            1|      0|  265|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |0         |            0|    379|  633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |0         |            1|    229|  633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |1         |            0|     16|  633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |1         |            1|      9|  633|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |0         |            0|     70|  182|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |0         |            1|     95|  182|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |1         |            0|     12|  182|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |1         |            1|      5|  182|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |0         |            0|   1396| 2090|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |0         |            1|    641| 2090|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |1         |            0|     33| 2090|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |1         |            1|     20| 2090|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |0         |            0|    114|  359|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |0         |            1|    181|  359|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |1         |            0|     32|  359|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |1         |            1|     32|  359|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |0         |            0|    152|  292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |0         |            1|    100|  292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |1         |            0|     28|  292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |1         |            1|     12|  292|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |0         |            0|    115|  166|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |0         |            1|     45|  166|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |1         |            0|      3|  166|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |1         |            1|      3|  166|
|0-6 months (no birth st.)  |CONTENT        |PERU         |0         |            0|    188|  195|
|0-6 months (no birth st.)  |CONTENT        |PERU         |0         |            1|      7|  195|
|0-6 months (no birth st.)  |CONTENT        |PERU         |1         |            0|      0|  195|
|0-6 months (no birth st.)  |CONTENT        |PERU         |1         |            1|      0|  195|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |0         |            0|     90|  213|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |0         |            1|    108|  213|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |1         |            0|      5|  213|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |1         |            1|     10|  213|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |0         |            0|    350|  492|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |0         |            1|     86|  492|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |1         |            0|     43|  492|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |1         |            1|     13|  492|
|0-6 months (no birth st.)  |Guatemala BSC  |GUATEMALA    |0         |            0|    194|  217|
|0-6 months (no birth st.)  |Guatemala BSC  |GUATEMALA    |0         |            1|     19|  217|
|0-6 months (no birth st.)  |Guatemala BSC  |GUATEMALA    |1         |            0|      2|  217|
|0-6 months (no birth st.)  |Guatemala BSC  |GUATEMALA    |1         |            1|      2|  217|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |0         |            0|   1344| 1905|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |0         |            1|    503| 1905|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |1         |            0|     38| 1905|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |1         |            1|     20| 1905|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |0         |            0|    148|  208|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |0         |            1|     41|  208|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |1         |            0|     14|  208|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |1         |            1|      5|  208|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |0         |            0|    163|  217|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |0         |            1|     47|  217|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |1         |            0|      7|  217|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |1         |            1|      0|  217|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |0         |            0|    174|  266|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |0         |            1|     92|  266|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |1         |            0|      0|  266|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |1         |            1|      0|  266|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |0         |            0|    192|  211|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |0         |            1|     14|  211|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |1         |            0|      5|  211|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |1         |            1|      0|  211|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |0         |            0|    180|  202|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |0         |            1|     21|  202|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |1         |            0|      1|  202|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |1         |            1|      0|  202|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |0         |            0|    152|  218|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |0         |            1|     66|  218|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |1         |            0|      0|  218|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |1         |            1|      0|  218|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |0         |            0|    185|  265|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |0         |            1|     77|  265|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |1         |            0|      3|  265|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |1         |            1|      0|  265|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |0         |            0|    513|  633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |0         |            1|     95|  633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |1         |            0|     19|  633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |1         |            1|      6|  633|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |0         |            0|     85|  182|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |0         |            1|     80|  182|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |1         |            0|     13|  182|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |1         |            1|      4|  182|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |0         |            0|   1744| 2090|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |0         |            1|    293| 2090|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |1         |            0|     44| 2090|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |1         |            1|      9| 2090|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |0         |            0|    186|  359|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |0         |            1|    109|  359|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |1         |            0|     49|  359|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |1         |            1|     15|  359|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |0         |            0|     24|  180|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |0         |            1|    128|  180|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |1         |            0|      3|  180|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |1         |            1|     25|  180|
|6-24 months                |CMIN           |BANGLADESH   |0         |            0|     31|  111|
|6-24 months                |CMIN           |BANGLADESH   |0         |            1|     78|  111|
|6-24 months                |CMIN           |BANGLADESH   |1         |            0|      1|  111|
|6-24 months                |CMIN           |BANGLADESH   |1         |            1|      1|  111|
|6-24 months                |CONTENT        |PERU         |0         |            0|    162|  188|
|6-24 months                |CONTENT        |PERU         |0         |            1|     26|  188|
|6-24 months                |CONTENT        |PERU         |1         |            0|      0|  188|
|6-24 months                |CONTENT        |PERU         |1         |            1|      0|  188|
|6-24 months                |EE             |PAKISTAN     |0         |            0|     39|   93|
|6-24 months                |EE             |PAKISTAN     |0         |            1|     49|   93|
|6-24 months                |EE             |PAKISTAN     |1         |            0|      0|   93|
|6-24 months                |EE             |PAKISTAN     |1         |            1|      5|   93|
|6-24 months                |GMS-Nepal      |NEPAL        |0         |            0|    155|  387|
|6-24 months                |GMS-Nepal      |NEPAL        |0         |            1|    189|  387|
|6-24 months                |GMS-Nepal      |NEPAL        |1         |            0|     12|  387|
|6-24 months                |GMS-Nepal      |NEPAL        |1         |            1|     31|  387|
|6-24 months                |Guatemala BSC  |GUATEMALA    |0         |            0|    107|  172|
|6-24 months                |Guatemala BSC  |GUATEMALA    |0         |            1|     63|  172|
|6-24 months                |Guatemala BSC  |GUATEMALA    |1         |            0|      1|  172|
|6-24 months                |Guatemala BSC  |GUATEMALA    |1         |            1|      1|  172|
|6-24 months                |Keneba         |GAMBIA       |0         |            0|    811| 1352|
|6-24 months                |Keneba         |GAMBIA       |0         |            1|    505| 1352|
|6-24 months                |Keneba         |GAMBIA       |1         |            0|     15| 1352|
|6-24 months                |Keneba         |GAMBIA       |1         |            1|     21| 1352|
|6-24 months                |MAL-ED         |INDIA        |0         |            0|     78|  154|
|6-24 months                |MAL-ED         |INDIA        |0         |            1|     63|  154|
|6-24 months                |MAL-ED         |INDIA        |1         |            0|     11|  154|
|6-24 months                |MAL-ED         |INDIA        |1         |            1|      2|  154|
|6-24 months                |MAL-ED         |BANGLADESH   |0         |            0|     86|  158|
|6-24 months                |MAL-ED         |BANGLADESH   |0         |            1|     66|  158|
|6-24 months                |MAL-ED         |BANGLADESH   |1         |            0|      5|  158|
|6-24 months                |MAL-ED         |BANGLADESH   |1         |            1|      1|  158|
|6-24 months                |MAL-ED         |PERU         |0         |            0|     90|  149|
|6-24 months                |MAL-ED         |PERU         |0         |            1|     59|  149|
|6-24 months                |MAL-ED         |PERU         |1         |            0|      0|  149|
|6-24 months                |MAL-ED         |PERU         |1         |            1|      0|  149|
|6-24 months                |MAL-ED         |NEPAL        |0         |            0|    150|  194|
|6-24 months                |MAL-ED         |NEPAL        |0         |            1|     40|  194|
|6-24 months                |MAL-ED         |NEPAL        |1         |            0|      3|  194|
|6-24 months                |MAL-ED         |NEPAL        |1         |            1|      1|  194|
|6-24 months                |MAL-ED         |BRAZIL       |0         |            0|    151|  163|
|6-24 months                |MAL-ED         |BRAZIL       |0         |            1|     11|  163|
|6-24 months                |MAL-ED         |BRAZIL       |1         |            0|      1|  163|
|6-24 months                |MAL-ED         |BRAZIL       |1         |            1|      0|  163|
|6-24 months                |MAL-ED         |TANZANIA     |0         |            0|     31|  144|
|6-24 months                |MAL-ED         |TANZANIA     |0         |            1|    113|  144|
|6-24 months                |MAL-ED         |TANZANIA     |1         |            0|      0|  144|
|6-24 months                |MAL-ED         |TANZANIA     |1         |            1|      0|  144|
|6-24 months                |MAL-ED         |SOUTH AFRICA |0         |            0|     96|  158|
|6-24 months                |MAL-ED         |SOUTH AFRICA |0         |            1|     60|  158|
|6-24 months                |MAL-ED         |SOUTH AFRICA |1         |            0|      2|  158|
|6-24 months                |MAL-ED         |SOUTH AFRICA |1         |            1|      0|  158|
|6-24 months                |PROVIDE        |BANGLADESH   |0         |            0|    316|  456|
|6-24 months                |PROVIDE        |BANGLADESH   |0         |            1|    134|  456|
|6-24 months                |PROVIDE        |BANGLADESH   |1         |            0|      3|  456|
|6-24 months                |PROVIDE        |BANGLADESH   |1         |            1|      3|  456|
|6-24 months                |ResPak         |PAKISTAN     |0         |            0|     65|   92|
|6-24 months                |ResPak         |PAKISTAN     |0         |            1|     15|   92|
|6-24 months                |ResPak         |PAKISTAN     |1         |            0|     11|   92|
|6-24 months                |ResPak         |PAKISTAN     |1         |            1|      1|   92|
|6-24 months                |TanzaniaChild2 |TANZANIA     |0         |            0|   1195| 1583|
|6-24 months                |TanzaniaChild2 |TANZANIA     |0         |            1|    348| 1583|
|6-24 months                |TanzaniaChild2 |TANZANIA     |1         |            0|     29| 1583|
|6-24 months                |TanzaniaChild2 |TANZANIA     |1         |            1|     11| 1583|
|6-24 months                |Vellore Crypto |INDIA        |0         |            0|    114|  235|
|6-24 months                |Vellore Crypto |INDIA        |0         |            1|     72|  235|
|6-24 months                |Vellore Crypto |INDIA        |1         |            0|     32|  235|
|6-24 months                |Vellore Crypto |INDIA        |1         |            1|     17|  235|


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months (no birth st.), studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months (no birth st.), studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN





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


