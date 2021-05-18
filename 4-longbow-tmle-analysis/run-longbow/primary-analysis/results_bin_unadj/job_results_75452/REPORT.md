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

**Intervention Variable:** anywast06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                     |studyid        |country      |anywast06 | ever_stunted| n_cell|    n|
|:--------------------------|:--------------|:------------|:---------|------------:|------:|----:|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |0         |            0|     19|  292|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |0         |            1|    120|  292|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |1         |            0|      8|  292|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |1         |            1|    145|  292|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |0         |            0|     32|  168|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |0         |            1|    105|  168|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |1         |            0|      9|  168|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |1         |            1|     22|  168|
|0-24 months (no birth st.) |CONTENT        |PERU         |0         |            0|    158|  195|
|0-24 months (no birth st.) |CONTENT        |PERU         |0         |            1|     33|  195|
|0-24 months (no birth st.) |CONTENT        |PERU         |1         |            0|      4|  195|
|0-24 months (no birth st.) |CONTENT        |PERU         |1         |            1|      0|  195|
|0-24 months (no birth st.) |EE             |PAKISTAN     |0         |            0|     30|  213|
|0-24 months (no birth st.) |EE             |PAKISTAN     |0         |            1|    105|  213|
|0-24 months (no birth st.) |EE             |PAKISTAN     |1         |            0|     11|  213|
|0-24 months (no birth st.) |EE             |PAKISTAN     |1         |            1|     67|  213|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |0         |            0|    162|  576|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |0         |            1|    179|  576|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |1         |            0|     90|  576|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |1         |            1|    145|  576|
|0-24 months (no birth st.) |Guatemala BSC  |GUATEMALA    |0         |            0|    137|  223|
|0-24 months (no birth st.) |Guatemala BSC  |GUATEMALA    |0         |            1|     82|  223|
|0-24 months (no birth st.) |Guatemala BSC  |GUATEMALA    |1         |            0|      1|  223|
|0-24 months (no birth st.) |Guatemala BSC  |GUATEMALA    |1         |            1|      3|  223|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |0         |            0|    823| 2234|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |0         |            1|    755| 2234|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |1         |            0|    284| 2234|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |1         |            1|    372| 2234|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |0         |            0|     58|  210|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |0         |            1|     84|  210|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |1         |            0|     41|  210|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |1         |            1|     27|  210|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |0         |            0|     75|  217|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |0         |            1|     93|  217|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |1         |            0|     28|  217|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |1         |            1|     21|  217|
|0-24 months (no birth st.) |MAL-ED         |PERU         |0         |            0|    112|  266|
|0-24 months (no birth st.) |MAL-ED         |PERU         |0         |            1|    146|  266|
|0-24 months (no birth st.) |MAL-ED         |PERU         |1         |            0|      3|  266|
|0-24 months (no birth st.) |MAL-ED         |PERU         |1         |            1|      5|  266|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |0         |            0|    128|  211|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |0         |            1|     44|  211|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |1         |            0|     28|  211|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |1         |            1|     11|  211|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |0         |            0|    158|  202|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |0         |            1|     30|  202|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |1         |            0|     12|  202|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |1         |            1|      2|  202|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |0         |            0|     39|  219|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |0         |            1|    170|  219|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |1         |            0|      1|  219|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |1         |            1|      9|  219|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |0         |            0|    119|  275|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |0         |            1|    124|  275|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |1         |            0|     19|  275|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |1         |            1|     13|  275|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |0         |            0|    306|  633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |0         |            1|    168|  633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |1         |            0|     89|  633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |1         |            1|     70|  633|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |0         |            0|     56|  202|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |0         |            1|     71|  202|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |1         |            0|     41|  202|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |1         |            1|     34|  202|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |0         |            0|   1358| 2235|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |0         |            1|    558| 2235|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |1         |            0|    209| 2235|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |1         |            1|    110| 2235|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |0         |            0|     52|  360|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |0         |            1|    100|  360|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |1         |            0|     95|  360|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |1         |            1|    113|  360|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |0         |            0|     87|  292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |0         |            1|     52|  292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |1         |            0|     93|  292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |1         |            1|     60|  292|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |0         |            0|    101|  168|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |0         |            1|     36|  168|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |1         |            0|     19|  168|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |1         |            1|     12|  168|
|0-6 months (no birth st.)  |CONTENT        |PERU         |0         |            0|    184|  195|
|0-6 months (no birth st.)  |CONTENT        |PERU         |0         |            1|      7|  195|
|0-6 months (no birth st.)  |CONTENT        |PERU         |1         |            0|      4|  195|
|0-6 months (no birth st.)  |CONTENT        |PERU         |1         |            1|      0|  195|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |0         |            0|     58|  213|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |0         |            1|     77|  213|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |1         |            0|     37|  213|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |1         |            1|     41|  213|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |0         |            0|    292|  576|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |0         |            1|     49|  576|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |1         |            0|    184|  576|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |1         |            1|     51|  576|
|0-6 months (no birth st.)  |Guatemala BSC  |GUATEMALA    |0         |            0|    200|  223|
|0-6 months (no birth st.)  |Guatemala BSC  |GUATEMALA    |0         |            1|     19|  223|
|0-6 months (no birth st.)  |Guatemala BSC  |GUATEMALA    |1         |            0|      2|  223|
|0-6 months (no birth st.)  |Guatemala BSC  |GUATEMALA    |1         |            1|      2|  223|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |0         |            0|   1225| 2234|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |0         |            1|    353| 2234|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |1         |            0|    470| 2234|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |1         |            1|    186| 2234|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |0         |            0|    109|  210|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |0         |            1|     33|  210|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |1         |            0|     55|  210|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |1         |            1|     13|  210|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |0         |            0|    130|  217|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |0         |            1|     38|  217|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |1         |            0|     40|  217|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |1         |            1|      9|  217|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |0         |            0|    168|  266|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |0         |            1|     90|  266|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |1         |            0|      6|  266|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |1         |            1|      2|  266|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |0         |            0|    161|  211|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |0         |            1|     11|  211|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |1         |            0|     36|  211|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |1         |            1|      3|  211|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |0         |            0|    167|  202|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |0         |            1|     21|  202|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |1         |            0|     14|  202|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |1         |            1|      0|  202|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |0         |            0|    147|  219|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |0         |            1|     62|  219|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |1         |            0|      6|  219|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |1         |            1|      4|  219|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |0         |            0|    172|  275|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |0         |            1|     71|  275|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |1         |            0|     26|  275|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |1         |            1|      6|  275|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |0         |            0|    406|  633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |0         |            1|     68|  633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |1         |            0|    126|  633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |1         |            1|     33|  633|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |0         |            0|     64|  202|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |0         |            1|     63|  202|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |1         |            0|     50|  202|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |1         |            1|     25|  202|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |0         |            0|   1656| 2235|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |0         |            1|    260| 2235|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |1         |            0|    273| 2235|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |1         |            1|     46| 2235|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |0         |            0|     92|  360|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |0         |            1|     60|  360|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |1         |            0|    144|  360|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |1         |            1|     64|  360|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |0         |            0|     19|  180|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |0         |            1|     68|  180|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |1         |            0|      8|  180|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |1         |            1|     85|  180|
|6-24 months                |CMIN           |BANGLADESH   |0         |            0|     26|  111|
|6-24 months                |CMIN           |BANGLADESH   |0         |            1|     69|  111|
|6-24 months                |CMIN           |BANGLADESH   |1         |            0|      6|  111|
|6-24 months                |CMIN           |BANGLADESH   |1         |            1|     10|  111|
|6-24 months                |CONTENT        |PERU         |0         |            0|    158|  188|
|6-24 months                |CONTENT        |PERU         |0         |            1|     26|  188|
|6-24 months                |CONTENT        |PERU         |1         |            0|      4|  188|
|6-24 months                |CONTENT        |PERU         |1         |            1|      0|  188|
|6-24 months                |EE             |PAKISTAN     |0         |            0|     28|   93|
|6-24 months                |EE             |PAKISTAN     |0         |            1|     28|   93|
|6-24 months                |EE             |PAKISTAN     |1         |            0|     11|   93|
|6-24 months                |EE             |PAKISTAN     |1         |            1|     26|   93|
|6-24 months                |GMS-Nepal      |NEPAL        |0         |            0|    103|  397|
|6-24 months                |GMS-Nepal      |NEPAL        |0         |            1|    130|  397|
|6-24 months                |GMS-Nepal      |NEPAL        |1         |            0|     70|  397|
|6-24 months                |GMS-Nepal      |NEPAL        |1         |            1|     94|  397|
|6-24 months                |Guatemala BSC  |GUATEMALA    |0         |            0|    110|  175|
|6-24 months                |Guatemala BSC  |GUATEMALA    |0         |            1|     63|  175|
|6-24 months                |Guatemala BSC  |GUATEMALA    |1         |            0|      1|  175|
|6-24 months                |Guatemala BSC  |GUATEMALA    |1         |            1|      1|  175|
|6-24 months                |Keneba         |GAMBIA       |0         |            0|    721| 1567|
|6-24 months                |Keneba         |GAMBIA       |0         |            1|    402| 1567|
|6-24 months                |Keneba         |GAMBIA       |1         |            0|    258| 1567|
|6-24 months                |Keneba         |GAMBIA       |1         |            1|    186| 1567|
|6-24 months                |MAL-ED         |INDIA        |0         |            0|     51|  154|
|6-24 months                |MAL-ED         |INDIA        |0         |            1|     51|  154|
|6-24 months                |MAL-ED         |INDIA        |1         |            0|     38|  154|
|6-24 months                |MAL-ED         |INDIA        |1         |            1|     14|  154|
|6-24 months                |MAL-ED         |BANGLADESH   |0         |            0|     66|  158|
|6-24 months                |MAL-ED         |BANGLADESH   |0         |            1|     55|  158|
|6-24 months                |MAL-ED         |BANGLADESH   |1         |            0|     25|  158|
|6-24 months                |MAL-ED         |BANGLADESH   |1         |            1|     12|  158|
|6-24 months                |MAL-ED         |PERU         |0         |            0|     87|  149|
|6-24 months                |MAL-ED         |PERU         |0         |            1|     56|  149|
|6-24 months                |MAL-ED         |PERU         |1         |            0|      3|  149|
|6-24 months                |MAL-ED         |PERU         |1         |            1|      3|  149|
|6-24 months                |MAL-ED         |NEPAL        |0         |            0|    127|  194|
|6-24 months                |MAL-ED         |NEPAL        |0         |            1|     33|  194|
|6-24 months                |MAL-ED         |NEPAL        |1         |            0|     26|  194|
|6-24 months                |MAL-ED         |NEPAL        |1         |            1|      8|  194|
|6-24 months                |MAL-ED         |BRAZIL       |0         |            0|    140|  163|
|6-24 months                |MAL-ED         |BRAZIL       |0         |            1|      9|  163|
|6-24 months                |MAL-ED         |BRAZIL       |1         |            0|     12|  163|
|6-24 months                |MAL-ED         |BRAZIL       |1         |            1|      2|  163|
|6-24 months                |MAL-ED         |TANZANIA     |0         |            0|     30|  144|
|6-24 months                |MAL-ED         |TANZANIA     |0         |            1|    108|  144|
|6-24 months                |MAL-ED         |TANZANIA     |1         |            0|      1|  144|
|6-24 months                |MAL-ED         |TANZANIA     |1         |            1|      5|  144|
|6-24 months                |MAL-ED         |SOUTH AFRICA |0         |            0|     85|  158|
|6-24 months                |MAL-ED         |SOUTH AFRICA |0         |            1|     53|  158|
|6-24 months                |MAL-ED         |SOUTH AFRICA |1         |            0|     13|  158|
|6-24 months                |MAL-ED         |SOUTH AFRICA |1         |            1|      7|  158|
|6-24 months                |PROVIDE        |BANGLADESH   |0         |            0|    249|  456|
|6-24 months                |PROVIDE        |BANGLADESH   |0         |            1|    100|  456|
|6-24 months                |PROVIDE        |BANGLADESH   |1         |            0|     70|  456|
|6-24 months                |PROVIDE        |BANGLADESH   |1         |            1|     37|  456|
|6-24 months                |ResPak         |PAKISTAN     |0         |            0|     42|   95|
|6-24 months                |ResPak         |PAKISTAN     |0         |            1|      8|   95|
|6-24 months                |ResPak         |PAKISTAN     |1         |            0|     36|   95|
|6-24 months                |ResPak         |PAKISTAN     |1         |            1|      9|   95|
|6-24 months                |TanzaniaChild2 |TANZANIA     |0         |            0|   1067| 1602|
|6-24 months                |TanzaniaChild2 |TANZANIA     |0         |            1|    298| 1602|
|6-24 months                |TanzaniaChild2 |TANZANIA     |1         |            0|    173| 1602|
|6-24 months                |TanzaniaChild2 |TANZANIA     |1         |            1|     64| 1602|
|6-24 months                |Vellore Crypto |INDIA        |0         |            0|     52|  236|
|6-24 months                |Vellore Crypto |INDIA        |0         |            1|     40|  236|
|6-24 months                |Vellore Crypto |INDIA        |1         |            0|     95|  236|
|6-24 months                |Vellore Crypto |INDIA        |1         |            1|     49|  236|


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

* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA





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


