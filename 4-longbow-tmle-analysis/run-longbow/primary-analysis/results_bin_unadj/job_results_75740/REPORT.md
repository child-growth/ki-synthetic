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

**Intervention Variable:** predexfd6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |predexfd6 | pers_wast| n_cell|    n|
|:-----------|:--------------|:------------|:---------|---------:|------:|----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1         |         0|     27|   28|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1         |         1|      1|   28|
|0-24 months |CMC-V-BCS-2002 |INDIA        |0         |         0|      0|   28|
|0-24 months |CMC-V-BCS-2002 |INDIA        |0         |         1|      0|   28|
|0-24 months |EE             |PAKISTAN     |1         |         0|     48|   54|
|0-24 months |EE             |PAKISTAN     |1         |         1|      6|   54|
|0-24 months |EE             |PAKISTAN     |0         |         0|      0|   54|
|0-24 months |EE             |PAKISTAN     |0         |         1|      0|   54|
|0-24 months |GMS-Nepal      |NEPAL        |1         |         0|    308|  472|
|0-24 months |GMS-Nepal      |NEPAL        |1         |         1|     52|  472|
|0-24 months |GMS-Nepal      |NEPAL        |0         |         0|     98|  472|
|0-24 months |GMS-Nepal      |NEPAL        |0         |         1|     14|  472|
|0-24 months |JiVitA-3       |BANGLADESH   |1         |         0|   6767| 9299|
|0-24 months |JiVitA-3       |BANGLADESH   |1         |         1|    411| 9299|
|0-24 months |JiVitA-3       |BANGLADESH   |0         |         0|   2008| 9299|
|0-24 months |JiVitA-3       |BANGLADESH   |0         |         1|    113| 9299|
|0-24 months |JiVitA-4       |BANGLADESH   |1         |         0|   3260| 4620|
|0-24 months |JiVitA-4       |BANGLADESH   |1         |         1|    274| 4620|
|0-24 months |JiVitA-4       |BANGLADESH   |0         |         0|    992| 4620|
|0-24 months |JiVitA-4       |BANGLADESH   |0         |         1|     94| 4620|
|0-24 months |Keneba         |GAMBIA       |1         |         0|    637| 1925|
|0-24 months |Keneba         |GAMBIA       |1         |         1|     41| 1925|
|0-24 months |Keneba         |GAMBIA       |0         |         0|   1170| 1925|
|0-24 months |Keneba         |GAMBIA       |0         |         1|     77| 1925|
|0-24 months |LCNI-5         |MALAWI       |1         |         0|     31|  252|
|0-24 months |LCNI-5         |MALAWI       |1         |         1|      0|  252|
|0-24 months |LCNI-5         |MALAWI       |0         |         0|    218|  252|
|0-24 months |LCNI-5         |MALAWI       |0         |         1|      3|  252|
|0-24 months |MAL-ED         |INDIA        |1         |         0|      9|  210|
|0-24 months |MAL-ED         |INDIA        |1         |         1|      2|  210|
|0-24 months |MAL-ED         |INDIA        |0         |         0|    184|  210|
|0-24 months |MAL-ED         |INDIA        |0         |         1|     15|  210|
|0-24 months |MAL-ED         |BANGLADESH   |1         |         0|     76|  217|
|0-24 months |MAL-ED         |BANGLADESH   |1         |         1|      3|  217|
|0-24 months |MAL-ED         |BANGLADESH   |0         |         0|    129|  217|
|0-24 months |MAL-ED         |BANGLADESH   |0         |         1|      9|  217|
|0-24 months |MAL-ED         |PERU         |1         |         0|     82|  261|
|0-24 months |MAL-ED         |PERU         |1         |         1|      0|  261|
|0-24 months |MAL-ED         |PERU         |0         |         0|    178|  261|
|0-24 months |MAL-ED         |PERU         |0         |         1|      1|  261|
|0-24 months |MAL-ED         |NEPAL        |1         |         0|     16|  224|
|0-24 months |MAL-ED         |NEPAL        |1         |         1|      0|  224|
|0-24 months |MAL-ED         |NEPAL        |0         |         0|    205|  224|
|0-24 months |MAL-ED         |NEPAL        |0         |         1|      3|  224|
|0-24 months |MAL-ED         |BRAZIL       |1         |         0|     29|  194|
|0-24 months |MAL-ED         |BRAZIL       |1         |         1|      0|  194|
|0-24 months |MAL-ED         |BRAZIL       |0         |         0|    163|  194|
|0-24 months |MAL-ED         |BRAZIL       |0         |         1|      2|  194|
|0-24 months |MAL-ED         |TANZANIA     |1         |         0|      0|  232|
|0-24 months |MAL-ED         |TANZANIA     |1         |         1|      0|  232|
|0-24 months |MAL-ED         |TANZANIA     |0         |         0|    232|  232|
|0-24 months |MAL-ED         |TANZANIA     |0         |         1|      0|  232|
|0-24 months |MAL-ED         |SOUTH AFRICA |1         |         0|      1|  209|
|0-24 months |MAL-ED         |SOUTH AFRICA |1         |         1|      0|  209|
|0-24 months |MAL-ED         |SOUTH AFRICA |0         |         0|    207|  209|
|0-24 months |MAL-ED         |SOUTH AFRICA |0         |         1|      1|  209|
|0-24 months |PROVIDE        |BANGLADESH   |1         |         0|    163|  641|
|0-24 months |PROVIDE        |BANGLADESH   |1         |         1|      5|  641|
|0-24 months |PROVIDE        |BANGLADESH   |0         |         0|    463|  641|
|0-24 months |PROVIDE        |BANGLADESH   |0         |         1|     10|  641|
|0-24 months |SAS-CompFeed   |INDIA        |1         |         0|    325|  374|
|0-24 months |SAS-CompFeed   |INDIA        |1         |         1|     30|  374|
|0-24 months |SAS-CompFeed   |INDIA        |0         |         0|     16|  374|
|0-24 months |SAS-CompFeed   |INDIA        |0         |         1|      3|  374|
|0-24 months |SAS-FoodSuppl  |INDIA        |1         |         0|      0|  149|
|0-24 months |SAS-FoodSuppl  |INDIA        |1         |         1|      0|  149|
|0-24 months |SAS-FoodSuppl  |INDIA        |0         |         0|    116|  149|
|0-24 months |SAS-FoodSuppl  |INDIA        |0         |         1|     33|  149|
|0-24 months |Vellore Crypto |INDIA        |1         |         0|      0|   10|
|0-24 months |Vellore Crypto |INDIA        |1         |         1|      0|   10|
|0-24 months |Vellore Crypto |INDIA        |0         |         0|     10|   10|
|0-24 months |Vellore Crypto |INDIA        |0         |         1|      0|   10|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1         |         0|     22|   28|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1         |         1|      6|   28|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |0         |         0|      0|   28|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |0         |         1|      0|   28|
|0-6 months  |EE             |PAKISTAN     |1         |         0|     49|   54|
|0-6 months  |EE             |PAKISTAN     |1         |         1|      5|   54|
|0-6 months  |EE             |PAKISTAN     |0         |         0|      0|   54|
|0-6 months  |EE             |PAKISTAN     |0         |         1|      0|   54|
|0-6 months  |GMS-Nepal      |NEPAL        |1         |         0|    300|  447|
|0-6 months  |GMS-Nepal      |NEPAL        |1         |         1|     43|  447|
|0-6 months  |GMS-Nepal      |NEPAL        |0         |         0|     93|  447|
|0-6 months  |GMS-Nepal      |NEPAL        |0         |         1|     11|  447|
|0-6 months  |JiVitA-3       |BANGLADESH   |1         |         0|     20|   29|
|0-6 months  |JiVitA-3       |BANGLADESH   |1         |         1|      2|   29|
|0-6 months  |JiVitA-3       |BANGLADESH   |0         |         0|      7|   29|
|0-6 months  |JiVitA-3       |BANGLADESH   |0         |         1|      0|   29|
|0-6 months  |Keneba         |GAMBIA       |1         |         0|    555| 1653|
|0-6 months  |Keneba         |GAMBIA       |1         |         1|     13| 1653|
|0-6 months  |Keneba         |GAMBIA       |0         |         0|   1043| 1653|
|0-6 months  |Keneba         |GAMBIA       |0         |         1|     42| 1653|
|0-6 months  |MAL-ED         |INDIA        |1         |         0|      9|  209|
|0-6 months  |MAL-ED         |INDIA        |1         |         1|      2|  209|
|0-6 months  |MAL-ED         |INDIA        |0         |         0|    187|  209|
|0-6 months  |MAL-ED         |INDIA        |0         |         1|     11|  209|
|0-6 months  |MAL-ED         |BANGLADESH   |1         |         0|     76|  217|
|0-6 months  |MAL-ED         |BANGLADESH   |1         |         1|      3|  217|
|0-6 months  |MAL-ED         |BANGLADESH   |0         |         0|    135|  217|
|0-6 months  |MAL-ED         |BANGLADESH   |0         |         1|      3|  217|
|0-6 months  |MAL-ED         |PERU         |1         |         0|     82|  261|
|0-6 months  |MAL-ED         |PERU         |1         |         1|      0|  261|
|0-6 months  |MAL-ED         |PERU         |0         |         0|    179|  261|
|0-6 months  |MAL-ED         |PERU         |0         |         1|      0|  261|
|0-6 months  |MAL-ED         |NEPAL        |1         |         0|     16|  224|
|0-6 months  |MAL-ED         |NEPAL        |1         |         1|      0|  224|
|0-6 months  |MAL-ED         |NEPAL        |0         |         0|    201|  224|
|0-6 months  |MAL-ED         |NEPAL        |0         |         1|      7|  224|
|0-6 months  |MAL-ED         |BRAZIL       |1         |         0|     29|  194|
|0-6 months  |MAL-ED         |BRAZIL       |1         |         1|      0|  194|
|0-6 months  |MAL-ED         |BRAZIL       |0         |         0|    164|  194|
|0-6 months  |MAL-ED         |BRAZIL       |0         |         1|      1|  194|
|0-6 months  |MAL-ED         |TANZANIA     |1         |         0|      0|  232|
|0-6 months  |MAL-ED         |TANZANIA     |1         |         1|      0|  232|
|0-6 months  |MAL-ED         |TANZANIA     |0         |         0|    232|  232|
|0-6 months  |MAL-ED         |TANZANIA     |0         |         1|      0|  232|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1         |         0|      1|  208|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1         |         1|      0|  208|
|0-6 months  |MAL-ED         |SOUTH AFRICA |0         |         0|    206|  208|
|0-6 months  |MAL-ED         |SOUTH AFRICA |0         |         1|      1|  208|
|0-6 months  |PROVIDE        |BANGLADESH   |1         |         0|    163|  638|
|0-6 months  |PROVIDE        |BANGLADESH   |1         |         1|      4|  638|
|0-6 months  |PROVIDE        |BANGLADESH   |0         |         0|    461|  638|
|0-6 months  |PROVIDE        |BANGLADESH   |0         |         1|     10|  638|
|0-6 months  |Vellore Crypto |INDIA        |1         |         0|      0|   10|
|0-6 months  |Vellore Crypto |INDIA        |1         |         1|      0|   10|
|0-6 months  |Vellore Crypto |INDIA        |0         |         0|      9|   10|
|0-6 months  |Vellore Crypto |INDIA        |0         |         1|      1|   10|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1         |         0|     27|   28|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1         |         1|      1|   28|
|6-24 months |CMC-V-BCS-2002 |INDIA        |0         |         0|      0|   28|
|6-24 months |CMC-V-BCS-2002 |INDIA        |0         |         1|      0|   28|
|6-24 months |EE             |PAKISTAN     |1         |         0|     48|   54|
|6-24 months |EE             |PAKISTAN     |1         |         1|      6|   54|
|6-24 months |EE             |PAKISTAN     |0         |         0|      0|   54|
|6-24 months |EE             |PAKISTAN     |0         |         1|      0|   54|
|6-24 months |GMS-Nepal      |NEPAL        |1         |         0|    308|  472|
|6-24 months |GMS-Nepal      |NEPAL        |1         |         1|     52|  472|
|6-24 months |GMS-Nepal      |NEPAL        |0         |         0|     98|  472|
|6-24 months |GMS-Nepal      |NEPAL        |0         |         1|     14|  472|
|6-24 months |JiVitA-3       |BANGLADESH   |1         |         0|   6767| 9299|
|6-24 months |JiVitA-3       |BANGLADESH   |1         |         1|    411| 9299|
|6-24 months |JiVitA-3       |BANGLADESH   |0         |         0|   2008| 9299|
|6-24 months |JiVitA-3       |BANGLADESH   |0         |         1|    113| 9299|
|6-24 months |JiVitA-4       |BANGLADESH   |1         |         0|   3260| 4620|
|6-24 months |JiVitA-4       |BANGLADESH   |1         |         1|    274| 4620|
|6-24 months |JiVitA-4       |BANGLADESH   |0         |         0|    992| 4620|
|6-24 months |JiVitA-4       |BANGLADESH   |0         |         1|     94| 4620|
|6-24 months |Keneba         |GAMBIA       |1         |         0|    637| 1925|
|6-24 months |Keneba         |GAMBIA       |1         |         1|     41| 1925|
|6-24 months |Keneba         |GAMBIA       |0         |         0|   1170| 1925|
|6-24 months |Keneba         |GAMBIA       |0         |         1|     77| 1925|
|6-24 months |LCNI-5         |MALAWI       |1         |         0|     31|  252|
|6-24 months |LCNI-5         |MALAWI       |1         |         1|      0|  252|
|6-24 months |LCNI-5         |MALAWI       |0         |         0|    218|  252|
|6-24 months |LCNI-5         |MALAWI       |0         |         1|      3|  252|
|6-24 months |MAL-ED         |INDIA        |1         |         0|      9|  210|
|6-24 months |MAL-ED         |INDIA        |1         |         1|      2|  210|
|6-24 months |MAL-ED         |INDIA        |0         |         0|    184|  210|
|6-24 months |MAL-ED         |INDIA        |0         |         1|     15|  210|
|6-24 months |MAL-ED         |BANGLADESH   |1         |         0|     76|  217|
|6-24 months |MAL-ED         |BANGLADESH   |1         |         1|      3|  217|
|6-24 months |MAL-ED         |BANGLADESH   |0         |         0|    129|  217|
|6-24 months |MAL-ED         |BANGLADESH   |0         |         1|      9|  217|
|6-24 months |MAL-ED         |PERU         |1         |         0|     82|  261|
|6-24 months |MAL-ED         |PERU         |1         |         1|      0|  261|
|6-24 months |MAL-ED         |PERU         |0         |         0|    178|  261|
|6-24 months |MAL-ED         |PERU         |0         |         1|      1|  261|
|6-24 months |MAL-ED         |NEPAL        |1         |         0|     16|  224|
|6-24 months |MAL-ED         |NEPAL        |1         |         1|      0|  224|
|6-24 months |MAL-ED         |NEPAL        |0         |         0|    205|  224|
|6-24 months |MAL-ED         |NEPAL        |0         |         1|      3|  224|
|6-24 months |MAL-ED         |BRAZIL       |1         |         0|     29|  194|
|6-24 months |MAL-ED         |BRAZIL       |1         |         1|      0|  194|
|6-24 months |MAL-ED         |BRAZIL       |0         |         0|    163|  194|
|6-24 months |MAL-ED         |BRAZIL       |0         |         1|      2|  194|
|6-24 months |MAL-ED         |TANZANIA     |1         |         0|      0|  232|
|6-24 months |MAL-ED         |TANZANIA     |1         |         1|      0|  232|
|6-24 months |MAL-ED         |TANZANIA     |0         |         0|    232|  232|
|6-24 months |MAL-ED         |TANZANIA     |0         |         1|      0|  232|
|6-24 months |MAL-ED         |SOUTH AFRICA |1         |         0|      1|  209|
|6-24 months |MAL-ED         |SOUTH AFRICA |1         |         1|      0|  209|
|6-24 months |MAL-ED         |SOUTH AFRICA |0         |         0|    207|  209|
|6-24 months |MAL-ED         |SOUTH AFRICA |0         |         1|      1|  209|
|6-24 months |PROVIDE        |BANGLADESH   |1         |         0|    163|  641|
|6-24 months |PROVIDE        |BANGLADESH   |1         |         1|      5|  641|
|6-24 months |PROVIDE        |BANGLADESH   |0         |         0|    463|  641|
|6-24 months |PROVIDE        |BANGLADESH   |0         |         1|     10|  641|
|6-24 months |SAS-CompFeed   |INDIA        |1         |         0|    325|  374|
|6-24 months |SAS-CompFeed   |INDIA        |1         |         1|     30|  374|
|6-24 months |SAS-CompFeed   |INDIA        |0         |         0|     16|  374|
|6-24 months |SAS-CompFeed   |INDIA        |0         |         1|      3|  374|
|6-24 months |SAS-FoodSuppl  |INDIA        |1         |         0|      0|  149|
|6-24 months |SAS-FoodSuppl  |INDIA        |1         |         1|      0|  149|
|6-24 months |SAS-FoodSuppl  |INDIA        |0         |         0|    116|  149|
|6-24 months |SAS-FoodSuppl  |INDIA        |0         |         1|     33|  149|
|6-24 months |Vellore Crypto |INDIA        |1         |         0|      0|   10|
|6-24 months |Vellore Crypto |INDIA        |1         |         1|      0|   10|
|6-24 months |Vellore Crypto |INDIA        |0         |         0|     10|   10|
|6-24 months |Vellore Crypto |INDIA        |0         |         1|      0|   10|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA





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


