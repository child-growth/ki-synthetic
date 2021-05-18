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

**Intervention Variable:** impfloor

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid        |country      |impfloor | ever_wasted| n_cell|     n|
|:---------------------------|:--------------|:------------|:--------|-----------:|------:|-----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |1        |           0|    146|   264|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |1        |           1|    118|   264|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |0        |           0|      0|   264|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |0        |           1|      0|   264|
|0-24 months (no birth wast) |CONTENT        |PERU         |1        |           0|    192|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |1        |           1|      3|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |0        |           0|     19|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |0        |           1|      1|   215|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |1        |           0|     45|   528|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |1        |           1|     44|   528|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |0        |           0|    215|   528|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |0        |           1|    224|   528|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |1        |           0|   1752| 26459|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |1        |           1|    367| 26459|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |0        |           0|  20222| 26459|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |0        |           1|   4118| 26459|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |1        |           0|    521|  5392|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |1        |           1|    149|  5392|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |0        |           0|   3481|  5392|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |0        |           1|   1241|  5392|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |1        |           0|    139|   236|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |1        |           1|     76|   236|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |0        |           0|     11|   236|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |0        |           1|     10|   236|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |1        |           0|    173|   243|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |1        |           1|     52|   243|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |0        |           0|     16|   243|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |0        |           1|      2|   243|
|0-24 months (no birth wast) |MAL-ED         |PERU         |1        |           0|     44|   284|
|0-24 months (no birth wast) |MAL-ED         |PERU         |1        |           1|      5|   284|
|0-24 months (no birth wast) |MAL-ED         |PERU         |0        |           0|    221|   284|
|0-24 months (no birth wast) |MAL-ED         |PERU         |0        |           1|     14|   284|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |1        |           0|     88|   231|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |1        |           1|     17|   231|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |0        |           0|    101|   231|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |0        |           1|     25|   231|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |1        |           0|    191|   207|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |1        |           1|     12|   207|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |0        |           0|      4|   207|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |0        |           1|      0|   207|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |1        |           0|      4|   250|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |1        |           1|      2|   250|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |0        |           0|    212|   250|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |0        |           1|     32|   250|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |1        |           0|    203|   267|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |1        |           1|     38|   267|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |0        |           0|     23|   267|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |0        |           1|      3|   267|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |1        |           0|    374|   600|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |1        |           1|    157|   600|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |0        |           0|     48|   600|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |0        |           1|     21|   600|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |1        |           0|    516|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |1        |           1|     82|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |0        |           0|    130|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |0        |           1|     26|   754|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |1        |           0|    523|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |1        |           1|    113|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |0        |           0|     42|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |0        |           1|      9|   687|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |1        |           0|    149|   313|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |1        |           1|    164|   313|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |0        |           0|      0|   313|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |0        |           1|      0|   313|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |1        |           0|    170|   249|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |1        |           1|     79|   249|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |0        |           0|      0|   249|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |0        |           1|      0|   249|
|0-6 months (no birth wast)  |CONTENT        |PERU         |1        |           0|    192|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |1        |           1|      3|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |0        |           0|     20|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |0        |           1|      0|   215|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |1        |           0|     71|   514|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |1        |           1|     14|   514|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |0        |           0|    349|   514|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |0        |           1|     80|   514|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |1        |           0|   1951| 26166|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |1        |           1|    144| 26166|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |0        |           0|  22336| 26166|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |0        |           1|   1735| 26166|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |1        |           0|    619|  4953|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |1        |           1|     10|  4953|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |0        |           0|   4207|  4953|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |0        |           1|    117|  4953|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |1        |           0|    180|   234|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |1        |           1|     33|   234|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |0        |           0|     18|   234|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |0        |           1|      3|   234|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |1        |           0|    207|   242|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |1        |           1|     17|   242|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |0        |           0|     18|   242|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |0        |           1|      0|   242|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |1        |           0|     48|   284|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |1        |           1|      1|   284|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |0        |           0|    231|   284|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |0        |           1|      4|   284|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |1        |           0|     98|   229|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |1        |           1|      5|   229|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |0        |           0|    117|   229|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |0        |           1|      9|   229|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |1        |           0|    195|   207|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |1        |           1|      8|   207|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |0        |           0|      4|   207|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |0        |           1|      0|   207|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |1        |           0|      6|   250|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |1        |           1|      0|   250|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |0        |           0|    234|   250|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |0        |           1|     10|   250|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |1        |           0|    228|   266|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |1        |           1|     12|   266|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |0        |           0|     25|   266|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |0        |           1|      1|   266|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |1        |           0|    473|   582|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |1        |           1|     42|   582|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |0        |           0|     63|   582|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |0        |           1|      4|   582|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |1        |           0|    578|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |1        |           1|     17|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |0        |           0|    151|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |0        |           1|      3|   749|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |1        |           0|    598|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |1        |           1|     34|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |0        |           0|     48|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |0        |           1|      3|   683|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |1        |           0|    198|   303|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |1        |           1|    105|   303|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |0        |           0|      0|   303|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |0        |           1|      0|   303|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |1        |           0|    203|   269|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |1        |           1|     66|   269|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |0        |           0|      0|   269|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |0        |           1|      0|   269|
|6-24 months                 |CONTENT        |PERU         |1        |           0|    194|   215|
|6-24 months                 |CONTENT        |PERU         |1        |           1|      1|   215|
|6-24 months                 |CONTENT        |PERU         |0        |           0|     19|   215|
|6-24 months                 |CONTENT        |PERU         |0        |           1|      1|   215|
|6-24 months                 |GMS-Nepal      |NEPAL        |1        |           0|     45|   468|
|6-24 months                 |GMS-Nepal      |NEPAL        |1        |           1|     36|   468|
|6-24 months                 |GMS-Nepal      |NEPAL        |0        |           0|    197|   468|
|6-24 months                 |GMS-Nepal      |NEPAL        |0        |           1|    190|   468|
|6-24 months                 |JiVitA-3       |BANGLADESH   |1        |           0|   1274| 17255|
|6-24 months                 |JiVitA-3       |BANGLADESH   |1        |           1|    239| 17255|
|6-24 months                 |JiVitA-3       |BANGLADESH   |0        |           0|  13151| 17255|
|6-24 months                 |JiVitA-3       |BANGLADESH   |0        |           1|   2591| 17255|
|6-24 months                 |JiVitA-4       |BANGLADESH   |1        |           0|    528|  5426|
|6-24 months                 |JiVitA-4       |BANGLADESH   |1        |           1|    144|  5426|
|6-24 months                 |JiVitA-4       |BANGLADESH   |0        |           0|   3556|  5426|
|6-24 months                 |JiVitA-4       |BANGLADESH   |0        |           1|   1198|  5426|
|6-24 months                 |MAL-ED         |INDIA        |1        |           0|    154|   226|
|6-24 months                 |MAL-ED         |INDIA        |1        |           1|     53|   226|
|6-24 months                 |MAL-ED         |INDIA        |0        |           0|     10|   226|
|6-24 months                 |MAL-ED         |INDIA        |0        |           1|      9|   226|
|6-24 months                 |MAL-ED         |BANGLADESH   |1        |           0|    167|   222|
|6-24 months                 |MAL-ED         |BANGLADESH   |1        |           1|     38|   222|
|6-24 months                 |MAL-ED         |BANGLADESH   |0        |           0|     15|   222|
|6-24 months                 |MAL-ED         |BANGLADESH   |0        |           1|      2|   222|
|6-24 months                 |MAL-ED         |PERU         |1        |           0|     38|   252|
|6-24 months                 |MAL-ED         |PERU         |1        |           1|      4|   252|
|6-24 months                 |MAL-ED         |PERU         |0        |           0|    198|   252|
|6-24 months                 |MAL-ED         |PERU         |0        |           1|     12|   252|
|6-24 months                 |MAL-ED         |NEPAL        |1        |           0|     88|   227|
|6-24 months                 |MAL-ED         |NEPAL        |1        |           1|     14|   227|
|6-24 months                 |MAL-ED         |NEPAL        |0        |           0|    105|   227|
|6-24 months                 |MAL-ED         |NEPAL        |0        |           1|     20|   227|
|6-24 months                 |MAL-ED         |BRAZIL       |1        |           0|    177|   185|
|6-24 months                 |MAL-ED         |BRAZIL       |1        |           1|      5|   185|
|6-24 months                 |MAL-ED         |BRAZIL       |0        |           0|      3|   185|
|6-24 months                 |MAL-ED         |BRAZIL       |0        |           1|      0|   185|
|6-24 months                 |MAL-ED         |TANZANIA     |1        |           0|      4|   239|
|6-24 months                 |MAL-ED         |TANZANIA     |1        |           1|      2|   239|
|6-24 months                 |MAL-ED         |TANZANIA     |0        |           0|    207|   239|
|6-24 months                 |MAL-ED         |TANZANIA     |0        |           1|     26|   239|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |1        |           0|    180|   233|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |1        |           1|     31|   233|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |0        |           0|     19|   233|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |0        |           1|      3|   233|
|6-24 months                 |NIH-Birth      |BANGLADESH   |1        |           0|    339|   541|
|6-24 months                 |NIH-Birth      |BANGLADESH   |1        |           1|    140|   541|
|6-24 months                 |NIH-Birth      |BANGLADESH   |0        |           0|     43|   541|
|6-24 months                 |NIH-Birth      |BANGLADESH   |0        |           1|     19|   541|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |1        |           0|    507|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |1        |           1|     71|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |0        |           0|    127|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |0        |           1|     25|   730|
|6-24 months                 |PROVIDE        |BANGLADESH   |1        |           0|    475|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |1        |           1|     93|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |0        |           0|     41|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |0        |           1|      6|   615|
|6-24 months                 |Vellore Crypto |INDIA        |1        |           0|    214|   314|
|6-24 months                 |Vellore Crypto |INDIA        |1        |           1|    100|   314|
|6-24 months                 |Vellore Crypto |INDIA        |0        |           0|      0|   314|
|6-24 months                 |Vellore Crypto |INDIA        |0        |           1|      0|   314|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: Vellore Crypto, country: INDIA
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

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


