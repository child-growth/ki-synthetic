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

**Intervention Variable:** impfloor

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |impfloor | pers_wast| n_cell|     n|
|:-----------|:--------------|:------------|:--------|---------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1        |         0|    252|   269|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1        |         1|     17|   269|
|0-24 months |CMC-V-BCS-2002 |INDIA        |0        |         0|      0|   269|
|0-24 months |CMC-V-BCS-2002 |INDIA        |0        |         1|      0|   269|
|0-24 months |CONTENT        |PERU         |1        |         0|    195|   215|
|0-24 months |CONTENT        |PERU         |1        |         1|      0|   215|
|0-24 months |CONTENT        |PERU         |0        |         0|     20|   215|
|0-24 months |CONTENT        |PERU         |0        |         1|      0|   215|
|0-24 months |GMS-Nepal      |NEPAL        |1        |         0|     71|   471|
|0-24 months |GMS-Nepal      |NEPAL        |1        |         1|     10|   471|
|0-24 months |GMS-Nepal      |NEPAL        |0        |         0|    338|   471|
|0-24 months |GMS-Nepal      |NEPAL        |0        |         1|     52|   471|
|0-24 months |JiVitA-3       |BANGLADESH   |1        |         0|   1323| 15765|
|0-24 months |JiVitA-3       |BANGLADESH   |1        |         1|     69| 15765|
|0-24 months |JiVitA-3       |BANGLADESH   |0        |         0|  13545| 15765|
|0-24 months |JiVitA-3       |BANGLADESH   |0        |         1|    828| 15765|
|0-24 months |JiVitA-4       |BANGLADESH   |1        |         0|    611|  5277|
|0-24 months |JiVitA-4       |BANGLADESH   |1        |         1|     48|  5277|
|0-24 months |JiVitA-4       |BANGLADESH   |0        |         0|   4240|  5277|
|0-24 months |JiVitA-4       |BANGLADESH   |0        |         1|    378|  5277|
|0-24 months |MAL-ED         |INDIA        |1        |         0|    194|   231|
|0-24 months |MAL-ED         |INDIA        |1        |         1|     18|   231|
|0-24 months |MAL-ED         |INDIA        |0        |         0|     17|   231|
|0-24 months |MAL-ED         |INDIA        |0        |         1|      2|   231|
|0-24 months |MAL-ED         |BANGLADESH   |1        |         0|    201|   230|
|0-24 months |MAL-ED         |BANGLADESH   |1        |         1|     12|   230|
|0-24 months |MAL-ED         |BANGLADESH   |0        |         0|     17|   230|
|0-24 months |MAL-ED         |BANGLADESH   |0        |         1|      0|   230|
|0-24 months |MAL-ED         |PERU         |1        |         0|     45|   266|
|0-24 months |MAL-ED         |PERU         |1        |         1|      1|   266|
|0-24 months |MAL-ED         |PERU         |0        |         0|    220|   266|
|0-24 months |MAL-ED         |PERU         |0        |         1|      0|   266|
|0-24 months |MAL-ED         |NEPAL        |1        |         0|    103|   230|
|0-24 months |MAL-ED         |NEPAL        |1        |         1|      1|   230|
|0-24 months |MAL-ED         |NEPAL        |0        |         0|    123|   230|
|0-24 months |MAL-ED         |NEPAL        |0        |         1|      3|   230|
|0-24 months |MAL-ED         |BRAZIL       |1        |         0|    189|   194|
|0-24 months |MAL-ED         |BRAZIL       |1        |         1|      2|   194|
|0-24 months |MAL-ED         |BRAZIL       |0        |         0|      3|   194|
|0-24 months |MAL-ED         |BRAZIL       |0        |         1|      0|   194|
|0-24 months |MAL-ED         |TANZANIA     |1        |         0|      6|   245|
|0-24 months |MAL-ED         |TANZANIA     |1        |         1|      0|   245|
|0-24 months |MAL-ED         |TANZANIA     |0        |         0|    239|   245|
|0-24 months |MAL-ED         |TANZANIA     |0        |         1|      0|   245|
|0-24 months |MAL-ED         |SOUTH AFRICA |1        |         0|    219|   243|
|0-24 months |MAL-ED         |SOUTH AFRICA |1        |         1|      2|   243|
|0-24 months |MAL-ED         |SOUTH AFRICA |0        |         0|     22|   243|
|0-24 months |MAL-ED         |SOUTH AFRICA |0        |         1|      0|   243|
|0-24 months |NIH-Birth      |BANGLADESH   |1        |         0|    430|   533|
|0-24 months |NIH-Birth      |BANGLADESH   |1        |         1|     39|   533|
|0-24 months |NIH-Birth      |BANGLADESH   |0        |         0|     56|   533|
|0-24 months |NIH-Birth      |BANGLADESH   |0        |         1|      8|   533|
|0-24 months |NIH-Crypto     |BANGLADESH   |1        |         0|    563|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |1        |         1|     15|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |0        |         0|    141|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |0        |         1|     11|   730|
|0-24 months |PROVIDE        |BANGLADESH   |1        |         0|    578|   641|
|0-24 months |PROVIDE        |BANGLADESH   |1        |         1|     12|   641|
|0-24 months |PROVIDE        |BANGLADESH   |0        |         0|     48|   641|
|0-24 months |PROVIDE        |BANGLADESH   |0        |         1|      3|   641|
|0-24 months |Vellore Crypto |INDIA        |1        |         0|    278|   314|
|0-24 months |Vellore Crypto |INDIA        |1        |         1|     36|   314|
|0-24 months |Vellore Crypto |INDIA        |0        |         0|      0|   314|
|0-24 months |Vellore Crypto |INDIA        |0        |         1|      0|   314|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1        |         0|    215|   258|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1        |         1|     43|   258|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |0        |         0|      0|   258|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |0        |         1|      0|   258|
|0-6 months  |CONTENT        |PERU         |1        |         0|    195|   215|
|0-6 months  |CONTENT        |PERU         |1        |         1|      0|   215|
|0-6 months  |CONTENT        |PERU         |0        |         0|     20|   215|
|0-6 months  |CONTENT        |PERU         |0        |         1|      0|   215|
|0-6 months  |GMS-Nepal      |NEPAL        |1        |         0|     67|   447|
|0-6 months  |GMS-Nepal      |NEPAL        |1        |         1|     10|   447|
|0-6 months  |GMS-Nepal      |NEPAL        |0        |         0|    334|   447|
|0-6 months  |GMS-Nepal      |NEPAL        |0        |         1|     36|   447|
|0-6 months  |JiVitA-3       |BANGLADESH   |1        |         0|      6|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |1        |         1|      0|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |0        |         0|     42|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |0        |         1|      2|    50|
|0-6 months  |MAL-ED         |INDIA        |1        |         0|    196|   230|
|0-6 months  |MAL-ED         |INDIA        |1        |         1|     15|   230|
|0-6 months  |MAL-ED         |INDIA        |0        |         0|     17|   230|
|0-6 months  |MAL-ED         |INDIA        |0        |         1|      2|   230|
|0-6 months  |MAL-ED         |BANGLADESH   |1        |         0|    207|   230|
|0-6 months  |MAL-ED         |BANGLADESH   |1        |         1|      6|   230|
|0-6 months  |MAL-ED         |BANGLADESH   |0        |         0|     17|   230|
|0-6 months  |MAL-ED         |BANGLADESH   |0        |         1|      0|   230|
|0-6 months  |MAL-ED         |PERU         |1        |         0|     46|   266|
|0-6 months  |MAL-ED         |PERU         |1        |         1|      0|   266|
|0-6 months  |MAL-ED         |PERU         |0        |         0|    220|   266|
|0-6 months  |MAL-ED         |PERU         |0        |         1|      0|   266|
|0-6 months  |MAL-ED         |NEPAL        |1        |         0|    100|   230|
|0-6 months  |MAL-ED         |NEPAL        |1        |         1|      4|   230|
|0-6 months  |MAL-ED         |NEPAL        |0        |         0|    123|   230|
|0-6 months  |MAL-ED         |NEPAL        |0        |         1|      3|   230|
|0-6 months  |MAL-ED         |BRAZIL       |1        |         0|    190|   194|
|0-6 months  |MAL-ED         |BRAZIL       |1        |         1|      1|   194|
|0-6 months  |MAL-ED         |BRAZIL       |0        |         0|      3|   194|
|0-6 months  |MAL-ED         |BRAZIL       |0        |         1|      0|   194|
|0-6 months  |MAL-ED         |TANZANIA     |1        |         0|      6|   245|
|0-6 months  |MAL-ED         |TANZANIA     |1        |         1|      0|   245|
|0-6 months  |MAL-ED         |TANZANIA     |0        |         0|    239|   245|
|0-6 months  |MAL-ED         |TANZANIA     |0        |         1|      0|   245|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1        |         0|    218|   242|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1        |         1|      2|   242|
|0-6 months  |MAL-ED         |SOUTH AFRICA |0        |         0|     22|   242|
|0-6 months  |MAL-ED         |SOUTH AFRICA |0        |         1|      0|   242|
|0-6 months  |NIH-Birth      |BANGLADESH   |1        |         0|    134|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |1        |         1|      8|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |0        |         0|     24|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |0        |         1|      3|   169|
|0-6 months  |NIH-Crypto     |BANGLADESH   |1        |         0|    193|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |1        |         1|      4|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |0        |         0|     52|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |0        |         1|      1|   250|
|0-6 months  |PROVIDE        |BANGLADESH   |1        |         0|    575|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |1        |         1|     12|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |0        |         0|     49|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |0        |         1|      2|   638|
|0-6 months  |Vellore Crypto |INDIA        |1        |         0|    259|   308|
|0-6 months  |Vellore Crypto |INDIA        |1        |         1|     49|   308|
|0-6 months  |Vellore Crypto |INDIA        |0        |         0|      0|   308|
|0-6 months  |Vellore Crypto |INDIA        |0        |         1|      0|   308|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1        |         0|    252|   269|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1        |         1|     17|   269|
|6-24 months |CMC-V-BCS-2002 |INDIA        |0        |         0|      0|   269|
|6-24 months |CMC-V-BCS-2002 |INDIA        |0        |         1|      0|   269|
|6-24 months |CONTENT        |PERU         |1        |         0|    195|   215|
|6-24 months |CONTENT        |PERU         |1        |         1|      0|   215|
|6-24 months |CONTENT        |PERU         |0        |         0|     20|   215|
|6-24 months |CONTENT        |PERU         |0        |         1|      0|   215|
|6-24 months |GMS-Nepal      |NEPAL        |1        |         0|     71|   471|
|6-24 months |GMS-Nepal      |NEPAL        |1        |         1|     10|   471|
|6-24 months |GMS-Nepal      |NEPAL        |0        |         0|    338|   471|
|6-24 months |GMS-Nepal      |NEPAL        |0        |         1|     52|   471|
|6-24 months |JiVitA-3       |BANGLADESH   |1        |         0|   1323| 15765|
|6-24 months |JiVitA-3       |BANGLADESH   |1        |         1|     69| 15765|
|6-24 months |JiVitA-3       |BANGLADESH   |0        |         0|  13545| 15765|
|6-24 months |JiVitA-3       |BANGLADESH   |0        |         1|    828| 15765|
|6-24 months |JiVitA-4       |BANGLADESH   |1        |         0|    611|  5277|
|6-24 months |JiVitA-4       |BANGLADESH   |1        |         1|     48|  5277|
|6-24 months |JiVitA-4       |BANGLADESH   |0        |         0|   4240|  5277|
|6-24 months |JiVitA-4       |BANGLADESH   |0        |         1|    378|  5277|
|6-24 months |MAL-ED         |INDIA        |1        |         0|    194|   231|
|6-24 months |MAL-ED         |INDIA        |1        |         1|     18|   231|
|6-24 months |MAL-ED         |INDIA        |0        |         0|     17|   231|
|6-24 months |MAL-ED         |INDIA        |0        |         1|      2|   231|
|6-24 months |MAL-ED         |BANGLADESH   |1        |         0|    201|   230|
|6-24 months |MAL-ED         |BANGLADESH   |1        |         1|     12|   230|
|6-24 months |MAL-ED         |BANGLADESH   |0        |         0|     17|   230|
|6-24 months |MAL-ED         |BANGLADESH   |0        |         1|      0|   230|
|6-24 months |MAL-ED         |PERU         |1        |         0|     45|   266|
|6-24 months |MAL-ED         |PERU         |1        |         1|      1|   266|
|6-24 months |MAL-ED         |PERU         |0        |         0|    220|   266|
|6-24 months |MAL-ED         |PERU         |0        |         1|      0|   266|
|6-24 months |MAL-ED         |NEPAL        |1        |         0|    103|   230|
|6-24 months |MAL-ED         |NEPAL        |1        |         1|      1|   230|
|6-24 months |MAL-ED         |NEPAL        |0        |         0|    123|   230|
|6-24 months |MAL-ED         |NEPAL        |0        |         1|      3|   230|
|6-24 months |MAL-ED         |BRAZIL       |1        |         0|    189|   194|
|6-24 months |MAL-ED         |BRAZIL       |1        |         1|      2|   194|
|6-24 months |MAL-ED         |BRAZIL       |0        |         0|      3|   194|
|6-24 months |MAL-ED         |BRAZIL       |0        |         1|      0|   194|
|6-24 months |MAL-ED         |TANZANIA     |1        |         0|      6|   245|
|6-24 months |MAL-ED         |TANZANIA     |1        |         1|      0|   245|
|6-24 months |MAL-ED         |TANZANIA     |0        |         0|    239|   245|
|6-24 months |MAL-ED         |TANZANIA     |0        |         1|      0|   245|
|6-24 months |MAL-ED         |SOUTH AFRICA |1        |         0|    219|   243|
|6-24 months |MAL-ED         |SOUTH AFRICA |1        |         1|      2|   243|
|6-24 months |MAL-ED         |SOUTH AFRICA |0        |         0|     22|   243|
|6-24 months |MAL-ED         |SOUTH AFRICA |0        |         1|      0|   243|
|6-24 months |NIH-Birth      |BANGLADESH   |1        |         0|    430|   533|
|6-24 months |NIH-Birth      |BANGLADESH   |1        |         1|     39|   533|
|6-24 months |NIH-Birth      |BANGLADESH   |0        |         0|     56|   533|
|6-24 months |NIH-Birth      |BANGLADESH   |0        |         1|      8|   533|
|6-24 months |NIH-Crypto     |BANGLADESH   |1        |         0|    563|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |1        |         1|     15|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |0        |         0|    141|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |0        |         1|     11|   730|
|6-24 months |PROVIDE        |BANGLADESH   |1        |         0|    578|   641|
|6-24 months |PROVIDE        |BANGLADESH   |1        |         1|     12|   641|
|6-24 months |PROVIDE        |BANGLADESH   |0        |         0|     48|   641|
|6-24 months |PROVIDE        |BANGLADESH   |0        |         1|      3|   641|
|6-24 months |Vellore Crypto |INDIA        |1        |         0|    278|   314|
|6-24 months |Vellore Crypto |INDIA        |1        |         1|     36|   314|
|6-24 months |Vellore Crypto |INDIA        |0        |         0|      0|   314|
|6-24 months |Vellore Crypto |INDIA        |0        |         1|      0|   314|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
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


