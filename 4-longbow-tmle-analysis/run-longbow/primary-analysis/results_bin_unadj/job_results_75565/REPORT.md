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

**Outcome Variable:** swasted

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

|agecat    |studyid        |country      |impfloor | swasted| n_cell|     n|
|:---------|:--------------|:------------|:--------|-------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |1        |       0|     58|    59|
|Birth     |CMC-V-BCS-2002 |INDIA        |1        |       1|      1|    59|
|Birth     |CMC-V-BCS-2002 |INDIA        |0        |       0|      0|    59|
|Birth     |CMC-V-BCS-2002 |INDIA        |0        |       1|      0|    59|
|Birth     |CONTENT        |PERU         |1        |       0|      2|     2|
|Birth     |CONTENT        |PERU         |1        |       1|      0|     2|
|Birth     |CONTENT        |PERU         |0        |       0|      0|     2|
|Birth     |CONTENT        |PERU         |0        |       1|      0|     2|
|Birth     |GMS-Nepal      |NEPAL        |1        |       0|     87|   513|
|Birth     |GMS-Nepal      |NEPAL        |1        |       1|      3|   513|
|Birth     |GMS-Nepal      |NEPAL        |0        |       0|    401|   513|
|Birth     |GMS-Nepal      |NEPAL        |0        |       1|     22|   513|
|Birth     |JiVitA-3       |BANGLADESH   |1        |       0|   1395| 17967|
|Birth     |JiVitA-3       |BANGLADESH   |1        |       1|     23| 17967|
|Birth     |JiVitA-3       |BANGLADESH   |0        |       0|  16226| 17967|
|Birth     |JiVitA-3       |BANGLADESH   |0        |       1|    323| 17967|
|Birth     |JiVitA-4       |BANGLADESH   |1        |       0|    311|  2394|
|Birth     |JiVitA-4       |BANGLADESH   |1        |       1|      4|  2394|
|Birth     |JiVitA-4       |BANGLADESH   |0        |       0|   2052|  2394|
|Birth     |JiVitA-4       |BANGLADESH   |0        |       1|     27|  2394|
|Birth     |MAL-ED         |INDIA        |1        |       0|     39|    44|
|Birth     |MAL-ED         |INDIA        |1        |       1|      0|    44|
|Birth     |MAL-ED         |INDIA        |0        |       0|      5|    44|
|Birth     |MAL-ED         |INDIA        |0        |       1|      0|    44|
|Birth     |MAL-ED         |BANGLADESH   |1        |       0|    179|   198|
|Birth     |MAL-ED         |BANGLADESH   |1        |       1|      7|   198|
|Birth     |MAL-ED         |BANGLADESH   |0        |       0|     11|   198|
|Birth     |MAL-ED         |BANGLADESH   |0        |       1|      1|   198|
|Birth     |MAL-ED         |PERU         |1        |       0|     34|   212|
|Birth     |MAL-ED         |PERU         |1        |       1|      0|   212|
|Birth     |MAL-ED         |PERU         |0        |       0|    178|   212|
|Birth     |MAL-ED         |PERU         |0        |       1|      0|   212|
|Birth     |MAL-ED         |NEPAL        |1        |       0|     11|    25|
|Birth     |MAL-ED         |NEPAL        |1        |       1|      0|    25|
|Birth     |MAL-ED         |NEPAL        |0        |       0|     13|    25|
|Birth     |MAL-ED         |NEPAL        |0        |       1|      1|    25|
|Birth     |MAL-ED         |BRAZIL       |1        |       0|     51|    52|
|Birth     |MAL-ED         |BRAZIL       |1        |       1|      0|    52|
|Birth     |MAL-ED         |BRAZIL       |0        |       0|      1|    52|
|Birth     |MAL-ED         |BRAZIL       |0        |       1|      0|    52|
|Birth     |MAL-ED         |TANZANIA     |1        |       0|      4|   109|
|Birth     |MAL-ED         |TANZANIA     |1        |       1|      0|   109|
|Birth     |MAL-ED         |TANZANIA     |0        |       0|    105|   109|
|Birth     |MAL-ED         |TANZANIA     |0        |       1|      0|   109|
|Birth     |MAL-ED         |SOUTH AFRICA |1        |       0|     90|   104|
|Birth     |MAL-ED         |SOUTH AFRICA |1        |       1|      0|   104|
|Birth     |MAL-ED         |SOUTH AFRICA |0        |       0|     14|   104|
|Birth     |MAL-ED         |SOUTH AFRICA |0        |       1|      0|   104|
|Birth     |NIH-Birth      |BANGLADESH   |1        |       0|    478|   573|
|Birth     |NIH-Birth      |BANGLADESH   |1        |       1|     28|   573|
|Birth     |NIH-Birth      |BANGLADESH   |0        |       0|     57|   573|
|Birth     |NIH-Birth      |BANGLADESH   |0        |       1|     10|   573|
|Birth     |NIH-Crypto     |BANGLADESH   |1        |       0|    522|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |1        |       1|     37|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |0        |       0|    138|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |0        |       1|     10|   707|
|Birth     |PROVIDE        |BANGLADESH   |1        |       0|    476|   532|
|Birth     |PROVIDE        |BANGLADESH   |1        |       1|     11|   532|
|Birth     |PROVIDE        |BANGLADESH   |0        |       0|     43|   532|
|Birth     |PROVIDE        |BANGLADESH   |0        |       1|      2|   532|
|Birth     |Vellore Crypto |INDIA        |1        |       0|    224|   265|
|Birth     |Vellore Crypto |INDIA        |1        |       1|     41|   265|
|Birth     |Vellore Crypto |INDIA        |0        |       0|      0|   265|
|Birth     |Vellore Crypto |INDIA        |0        |       1|      0|   265|
|6 months  |CMC-V-BCS-2002 |INDIA        |1        |       0|    256|   266|
|6 months  |CMC-V-BCS-2002 |INDIA        |1        |       1|     10|   266|
|6 months  |CMC-V-BCS-2002 |INDIA        |0        |       0|      0|   266|
|6 months  |CMC-V-BCS-2002 |INDIA        |0        |       1|      0|   266|
|6 months  |CONTENT        |PERU         |1        |       0|    195|   215|
|6 months  |CONTENT        |PERU         |1        |       1|      0|   215|
|6 months  |CONTENT        |PERU         |0        |       0|     20|   215|
|6 months  |CONTENT        |PERU         |0        |       1|      0|   215|
|6 months  |GMS-Nepal      |NEPAL        |1        |       0|     76|   445|
|6 months  |GMS-Nepal      |NEPAL        |1        |       1|      2|   445|
|6 months  |GMS-Nepal      |NEPAL        |0        |       0|    362|   445|
|6 months  |GMS-Nepal      |NEPAL        |0        |       1|      5|   445|
|6 months  |JiVitA-3       |BANGLADESH   |1        |       0|   1454| 16743|
|6 months  |JiVitA-3       |BANGLADESH   |1        |       1|     20| 16743|
|6 months  |JiVitA-3       |BANGLADESH   |0        |       0|  15059| 16743|
|6 months  |JiVitA-3       |BANGLADESH   |0        |       1|    210| 16743|
|6 months  |JiVitA-4       |BANGLADESH   |1        |       0|    603|  4829|
|6 months  |JiVitA-4       |BANGLADESH   |1        |       1|      3|  4829|
|6 months  |JiVitA-4       |BANGLADESH   |0        |       0|   4193|  4829|
|6 months  |JiVitA-4       |BANGLADESH   |0        |       1|     30|  4829|
|6 months  |MAL-ED         |INDIA        |1        |       0|    203|   227|
|6 months  |MAL-ED         |INDIA        |1        |       1|      5|   227|
|6 months  |MAL-ED         |INDIA        |0        |       0|     19|   227|
|6 months  |MAL-ED         |INDIA        |0        |       1|      0|   227|
|6 months  |MAL-ED         |BANGLADESH   |1        |       0|    206|   224|
|6 months  |MAL-ED         |BANGLADESH   |1        |       1|      1|   224|
|6 months  |MAL-ED         |BANGLADESH   |0        |       0|     17|   224|
|6 months  |MAL-ED         |BANGLADESH   |0        |       1|      0|   224|
|6 months  |MAL-ED         |PERU         |1        |       0|     44|   255|
|6 months  |MAL-ED         |PERU         |1        |       1|      0|   255|
|6 months  |MAL-ED         |PERU         |0        |       0|    211|   255|
|6 months  |MAL-ED         |PERU         |0        |       1|      0|   255|
|6 months  |MAL-ED         |NEPAL        |1        |       0|    103|   228|
|6 months  |MAL-ED         |NEPAL        |1        |       1|      0|   228|
|6 months  |MAL-ED         |NEPAL        |0        |       0|    125|   228|
|6 months  |MAL-ED         |NEPAL        |0        |       1|      0|   228|
|6 months  |MAL-ED         |BRAZIL       |1        |       0|    184|   187|
|6 months  |MAL-ED         |BRAZIL       |1        |       1|      0|   187|
|6 months  |MAL-ED         |BRAZIL       |0        |       0|      3|   187|
|6 months  |MAL-ED         |BRAZIL       |0        |       1|      0|   187|
|6 months  |MAL-ED         |TANZANIA     |1        |       0|      6|   240|
|6 months  |MAL-ED         |TANZANIA     |1        |       1|      0|   240|
|6 months  |MAL-ED         |TANZANIA     |0        |       0|    234|   240|
|6 months  |MAL-ED         |TANZANIA     |0        |       1|      0|   240|
|6 months  |MAL-ED         |SOUTH AFRICA |1        |       0|    208|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |1        |       1|      2|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |0        |       0|     19|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |0        |       1|      1|   230|
|6 months  |NIH-Birth      |BANGLADESH   |1        |       0|    469|   535|
|6 months  |NIH-Birth      |BANGLADESH   |1        |       1|      5|   535|
|6 months  |NIH-Birth      |BANGLADESH   |0        |       0|     60|   535|
|6 months  |NIH-Birth      |BANGLADESH   |0        |       1|      1|   535|
|6 months  |NIH-Crypto     |BANGLADESH   |1        |       0|    566|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |1        |       1|      0|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |0        |       0|    149|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |0        |       1|      0|   715|
|6 months  |PROVIDE        |BANGLADESH   |1        |       0|    553|   603|
|6 months  |PROVIDE        |BANGLADESH   |1        |       1|      5|   603|
|6 months  |PROVIDE        |BANGLADESH   |0        |       0|     45|   603|
|6 months  |PROVIDE        |BANGLADESH   |0        |       1|      0|   603|
|6 months  |Vellore Crypto |INDIA        |1        |       0|    294|   313|
|6 months  |Vellore Crypto |INDIA        |1        |       1|     19|   313|
|6 months  |Vellore Crypto |INDIA        |0        |       0|      0|   313|
|6 months  |Vellore Crypto |INDIA        |0        |       1|      0|   313|
|24 months |CMC-V-BCS-2002 |INDIA        |1        |       0|    266|   269|
|24 months |CMC-V-BCS-2002 |INDIA        |1        |       1|      3|   269|
|24 months |CMC-V-BCS-2002 |INDIA        |0        |       0|      0|   269|
|24 months |CMC-V-BCS-2002 |INDIA        |0        |       1|      0|   269|
|24 months |CONTENT        |PERU         |1        |       0|    149|   164|
|24 months |CONTENT        |PERU         |1        |       1|      0|   164|
|24 months |CONTENT        |PERU         |0        |       0|     15|   164|
|24 months |CONTENT        |PERU         |0        |       1|      0|   164|
|24 months |GMS-Nepal      |NEPAL        |1        |       0|     66|   389|
|24 months |GMS-Nepal      |NEPAL        |1        |       1|      3|   389|
|24 months |GMS-Nepal      |NEPAL        |0        |       0|    311|   389|
|24 months |GMS-Nepal      |NEPAL        |0        |       1|      9|   389|
|24 months |JiVitA-3       |BANGLADESH   |1        |       0|    665|  8581|
|24 months |JiVitA-3       |BANGLADESH   |1        |       1|     22|  8581|
|24 months |JiVitA-3       |BANGLADESH   |0        |       0|   7581|  8581|
|24 months |JiVitA-3       |BANGLADESH   |0        |       1|    313|  8581|
|24 months |JiVitA-4       |BANGLADESH   |1        |       0|    589|  4731|
|24 months |JiVitA-4       |BANGLADESH   |1        |       1|     12|  4731|
|24 months |JiVitA-4       |BANGLADESH   |0        |       0|   4013|  4731|
|24 months |JiVitA-4       |BANGLADESH   |0        |       1|    117|  4731|
|24 months |MAL-ED         |INDIA        |1        |       0|    200|   218|
|24 months |MAL-ED         |INDIA        |1        |       1|      1|   218|
|24 months |MAL-ED         |INDIA        |0        |       0|     17|   218|
|24 months |MAL-ED         |INDIA        |0        |       1|      0|   218|
|24 months |MAL-ED         |BANGLADESH   |1        |       0|    179|   195|
|24 months |MAL-ED         |BANGLADESH   |1        |       1|      0|   195|
|24 months |MAL-ED         |BANGLADESH   |0        |       0|     16|   195|
|24 months |MAL-ED         |BANGLADESH   |0        |       1|      0|   195|
|24 months |MAL-ED         |PERU         |1        |       0|     29|   185|
|24 months |MAL-ED         |PERU         |1        |       1|      1|   185|
|24 months |MAL-ED         |PERU         |0        |       0|    155|   185|
|24 months |MAL-ED         |PERU         |0        |       1|      0|   185|
|24 months |MAL-ED         |NEPAL        |1        |       0|     99|   220|
|24 months |MAL-ED         |NEPAL        |1        |       1|      0|   220|
|24 months |MAL-ED         |NEPAL        |0        |       0|    121|   220|
|24 months |MAL-ED         |NEPAL        |0        |       1|      0|   220|
|24 months |MAL-ED         |BRAZIL       |1        |       0|    145|   148|
|24 months |MAL-ED         |BRAZIL       |1        |       1|      1|   148|
|24 months |MAL-ED         |BRAZIL       |0        |       0|      2|   148|
|24 months |MAL-ED         |BRAZIL       |0        |       1|      0|   148|
|24 months |MAL-ED         |TANZANIA     |1        |       0|      6|   209|
|24 months |MAL-ED         |TANZANIA     |1        |       1|      0|   209|
|24 months |MAL-ED         |TANZANIA     |0        |       0|    203|   209|
|24 months |MAL-ED         |TANZANIA     |0        |       1|      0|   209|
|24 months |MAL-ED         |SOUTH AFRICA |1        |       0|    196|   215|
|24 months |MAL-ED         |SOUTH AFRICA |1        |       1|      0|   215|
|24 months |MAL-ED         |SOUTH AFRICA |0        |       0|     19|   215|
|24 months |MAL-ED         |SOUTH AFRICA |0        |       1|      0|   215|
|24 months |NIH-Birth      |BANGLADESH   |1        |       0|    369|   427|
|24 months |NIH-Birth      |BANGLADESH   |1        |       1|      8|   427|
|24 months |NIH-Birth      |BANGLADESH   |0        |       0|     48|   427|
|24 months |NIH-Birth      |BANGLADESH   |0        |       1|      2|   427|
|24 months |NIH-Crypto     |BANGLADESH   |1        |       0|    402|   514|
|24 months |NIH-Crypto     |BANGLADESH   |1        |       1|      3|   514|
|24 months |NIH-Crypto     |BANGLADESH   |0        |       0|    108|   514|
|24 months |NIH-Crypto     |BANGLADESH   |0        |       1|      1|   514|
|24 months |PROVIDE        |BANGLADESH   |1        |       0|    530|   579|
|24 months |PROVIDE        |BANGLADESH   |1        |       1|      7|   579|
|24 months |PROVIDE        |BANGLADESH   |0        |       0|     40|   579|
|24 months |PROVIDE        |BANGLADESH   |0        |       1|      2|   579|
|24 months |Vellore Crypto |INDIA        |1        |       0|    309|   314|
|24 months |Vellore Crypto |INDIA        |1        |       1|      5|   314|
|24 months |Vellore Crypto |INDIA        |0        |       0|      0|   314|
|24 months |Vellore Crypto |INDIA        |0        |       1|      0|   314|


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


