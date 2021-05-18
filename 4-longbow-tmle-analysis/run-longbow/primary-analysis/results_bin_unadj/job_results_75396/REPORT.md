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

**Outcome Variable:** sstunted

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

|agecat    |studyid        |country      |pers_wast | sstunted| n_cell|    n|
|:---------|:--------------|:------------|:---------|--------:|------:|----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |0         |        0|     78|   92|
|Birth     |CMC-V-BCS-2002 |INDIA        |0         |        1|      2|   92|
|Birth     |CMC-V-BCS-2002 |INDIA        |1         |        0|     10|   92|
|Birth     |CMC-V-BCS-2002 |INDIA        |1         |        1|      2|   92|
|Birth     |CMIN           |BANGLADESH   |0         |        0|     16|   18|
|Birth     |CMIN           |BANGLADESH   |0         |        1|      0|   18|
|Birth     |CMIN           |BANGLADESH   |1         |        0|      2|   18|
|Birth     |CMIN           |BANGLADESH   |1         |        1|      0|   18|
|Birth     |CONTENT        |PERU         |0         |        0|      2|    2|
|Birth     |CONTENT        |PERU         |0         |        1|      0|    2|
|Birth     |CONTENT        |PERU         |1         |        0|      0|    2|
|Birth     |CONTENT        |PERU         |1         |        1|      0|    2|
|Birth     |EE             |PAKISTAN     |0         |        0|    177|  240|
|Birth     |EE             |PAKISTAN     |0         |        1|     47|  240|
|Birth     |EE             |PAKISTAN     |1         |        0|     15|  240|
|Birth     |EE             |PAKISTAN     |1         |        1|      1|  240|
|Birth     |GMS-Nepal      |NEPAL        |0         |        0|    502|  585|
|Birth     |GMS-Nepal      |NEPAL        |0         |        1|     19|  585|
|Birth     |GMS-Nepal      |NEPAL        |1         |        0|     62|  585|
|Birth     |GMS-Nepal      |NEPAL        |1         |        1|      2|  585|
|Birth     |Keneba         |GAMBIA       |0         |        0|   1348| 1419|
|Birth     |Keneba         |GAMBIA       |0         |        1|     26| 1419|
|Birth     |Keneba         |GAMBIA       |1         |        0|     45| 1419|
|Birth     |Keneba         |GAMBIA       |1         |        1|      0| 1419|
|Birth     |MAL-ED         |INDIA        |0         |        0|     41|   45|
|Birth     |MAL-ED         |INDIA        |0         |        1|      2|   45|
|Birth     |MAL-ED         |INDIA        |1         |        0|      2|   45|
|Birth     |MAL-ED         |INDIA        |1         |        1|      0|   45|
|Birth     |MAL-ED         |BANGLADESH   |0         |        0|    212|  229|
|Birth     |MAL-ED         |BANGLADESH   |0         |        1|      8|  229|
|Birth     |MAL-ED         |BANGLADESH   |1         |        0|      8|  229|
|Birth     |MAL-ED         |BANGLADESH   |1         |        1|      1|  229|
|Birth     |MAL-ED         |PERU         |0         |        0|    229|  233|
|Birth     |MAL-ED         |PERU         |0         |        1|      4|  233|
|Birth     |MAL-ED         |PERU         |1         |        0|      0|  233|
|Birth     |MAL-ED         |PERU         |1         |        1|      0|  233|
|Birth     |MAL-ED         |NEPAL        |0         |        0|     25|   27|
|Birth     |MAL-ED         |NEPAL        |0         |        1|      1|   27|
|Birth     |MAL-ED         |NEPAL        |1         |        0|      1|   27|
|Birth     |MAL-ED         |NEPAL        |1         |        1|      0|   27|
|Birth     |MAL-ED         |BRAZIL       |0         |        0|     62|   65|
|Birth     |MAL-ED         |BRAZIL       |0         |        1|      3|   65|
|Birth     |MAL-ED         |BRAZIL       |1         |        0|      0|   65|
|Birth     |MAL-ED         |BRAZIL       |1         |        1|      0|   65|
|Birth     |MAL-ED         |TANZANIA     |0         |        0|    114|  123|
|Birth     |MAL-ED         |TANZANIA     |0         |        1|      9|  123|
|Birth     |MAL-ED         |TANZANIA     |1         |        0|      0|  123|
|Birth     |MAL-ED         |TANZANIA     |1         |        1|      0|  123|
|Birth     |MAL-ED         |SOUTH AFRICA |0         |        0|    110|  113|
|Birth     |MAL-ED         |SOUTH AFRICA |0         |        1|      1|  113|
|Birth     |MAL-ED         |SOUTH AFRICA |1         |        0|      2|  113|
|Birth     |MAL-ED         |SOUTH AFRICA |1         |        1|      0|  113|
|Birth     |PROVIDE        |BANGLADESH   |0         |        0|    512|  539|
|Birth     |PROVIDE        |BANGLADESH   |0         |        1|      4|  539|
|Birth     |PROVIDE        |BANGLADESH   |1         |        0|     23|  539|
|Birth     |PROVIDE        |BANGLADESH   |1         |        1|      0|  539|
|Birth     |ResPak         |PAKISTAN     |0         |        0|     30|   34|
|Birth     |ResPak         |PAKISTAN     |0         |        1|      0|   34|
|Birth     |ResPak         |PAKISTAN     |1         |        0|      4|   34|
|Birth     |ResPak         |PAKISTAN     |1         |        1|      0|   34|
|Birth     |Vellore Crypto |INDIA        |0         |        0|    306|  387|
|Birth     |Vellore Crypto |INDIA        |0         |        1|     13|  387|
|Birth     |Vellore Crypto |INDIA        |1         |        0|     65|  387|
|Birth     |Vellore Crypto |INDIA        |1         |        1|      3|  387|
|6 months  |CMC-V-BCS-2002 |INDIA        |0         |        0|    276|  365|
|6 months  |CMC-V-BCS-2002 |INDIA        |0         |        1|     37|  365|
|6 months  |CMC-V-BCS-2002 |INDIA        |1         |        0|     47|  365|
|6 months  |CMC-V-BCS-2002 |INDIA        |1         |        1|      5|  365|
|6 months  |CMIN           |BANGLADESH   |0         |        0|    206|  243|
|6 months  |CMIN           |BANGLADESH   |0         |        1|     26|  243|
|6 months  |CMIN           |BANGLADESH   |1         |        0|      9|  243|
|6 months  |CMIN           |BANGLADESH   |1         |        1|      2|  243|
|6 months  |CONTENT        |PERU         |0         |        0|    214|  215|
|6 months  |CONTENT        |PERU         |0         |        1|      1|  215|
|6 months  |CONTENT        |PERU         |1         |        0|      0|  215|
|6 months  |CONTENT        |PERU         |1         |        1|      0|  215|
|6 months  |EE             |PAKISTAN     |0         |        0|    272|  373|
|6 months  |EE             |PAKISTAN     |0         |        1|     75|  373|
|6 months  |EE             |PAKISTAN     |1         |        0|     20|  373|
|6 months  |EE             |PAKISTAN     |1         |        1|      6|  373|
|6 months  |GMS-Nepal      |NEPAL        |0         |        0|    484|  559|
|6 months  |GMS-Nepal      |NEPAL        |0         |        1|     15|  559|
|6 months  |GMS-Nepal      |NEPAL        |1         |        0|     54|  559|
|6 months  |GMS-Nepal      |NEPAL        |1         |        1|      6|  559|
|6 months  |Guatemala BSC  |GUATEMALA    |0         |        0|    244|  276|
|6 months  |Guatemala BSC  |GUATEMALA    |0         |        1|     23|  276|
|6 months  |Guatemala BSC  |GUATEMALA    |1         |        0|      6|  276|
|6 months  |Guatemala BSC  |GUATEMALA    |1         |        1|      3|  276|
|6 months  |Keneba         |GAMBIA       |0         |        0|   1786| 1897|
|6 months  |Keneba         |GAMBIA       |0         |        1|     50| 1897|
|6 months  |Keneba         |GAMBIA       |1         |        0|     50| 1897|
|6 months  |Keneba         |GAMBIA       |1         |        1|     11| 1897|
|6 months  |MAL-ED         |INDIA        |0         |        0|    210|  236|
|6 months  |MAL-ED         |INDIA        |0         |        1|      8|  236|
|6 months  |MAL-ED         |INDIA        |1         |        0|     17|  236|
|6 months  |MAL-ED         |INDIA        |1         |        1|      1|  236|
|6 months  |MAL-ED         |BANGLADESH   |0         |        0|    227|  241|
|6 months  |MAL-ED         |BANGLADESH   |0         |        1|      7|  241|
|6 months  |MAL-ED         |BANGLADESH   |1         |        0|      6|  241|
|6 months  |MAL-ED         |BANGLADESH   |1         |        1|      1|  241|
|6 months  |MAL-ED         |PERU         |0         |        0|    263|  273|
|6 months  |MAL-ED         |PERU         |0         |        1|     10|  273|
|6 months  |MAL-ED         |PERU         |1         |        0|      0|  273|
|6 months  |MAL-ED         |PERU         |1         |        1|      0|  273|
|6 months  |MAL-ED         |NEPAL        |0         |        0|    229|  236|
|6 months  |MAL-ED         |NEPAL        |0         |        1|      1|  236|
|6 months  |MAL-ED         |NEPAL        |1         |        0|      6|  236|
|6 months  |MAL-ED         |NEPAL        |1         |        1|      0|  236|
|6 months  |MAL-ED         |BRAZIL       |0         |        0|    208|  209|
|6 months  |MAL-ED         |BRAZIL       |0         |        1|      0|  209|
|6 months  |MAL-ED         |BRAZIL       |1         |        0|      1|  209|
|6 months  |MAL-ED         |BRAZIL       |1         |        1|      0|  209|
|6 months  |MAL-ED         |TANZANIA     |0         |        0|    233|  247|
|6 months  |MAL-ED         |TANZANIA     |0         |        1|     14|  247|
|6 months  |MAL-ED         |TANZANIA     |1         |        0|      0|  247|
|6 months  |MAL-ED         |TANZANIA     |1         |        1|      0|  247|
|6 months  |MAL-ED         |SOUTH AFRICA |0         |        0|    246|  254|
|6 months  |MAL-ED         |SOUTH AFRICA |0         |        1|      6|  254|
|6 months  |MAL-ED         |SOUTH AFRICA |1         |        0|      2|  254|
|6 months  |MAL-ED         |SOUTH AFRICA |1         |        1|      0|  254|
|6 months  |PROVIDE        |BANGLADESH   |0         |        0|    579|  604|
|6 months  |PROVIDE        |BANGLADESH   |0         |        1|     11|  604|
|6 months  |PROVIDE        |BANGLADESH   |1         |        0|     11|  604|
|6 months  |PROVIDE        |BANGLADESH   |1         |        1|      3|  604|
|6 months  |ResPak         |PAKISTAN     |0         |        0|    162|  227|
|6 months  |ResPak         |PAKISTAN     |0         |        1|     40|  227|
|6 months  |ResPak         |PAKISTAN     |1         |        0|     23|  227|
|6 months  |ResPak         |PAKISTAN     |1         |        1|      2|  227|
|6 months  |TanzaniaChild2 |TANZANIA     |0         |        0|   1949| 2019|
|6 months  |TanzaniaChild2 |TANZANIA     |0         |        1|     19| 2019|
|6 months  |TanzaniaChild2 |TANZANIA     |1         |        0|     51| 2019|
|6 months  |TanzaniaChild2 |TANZANIA     |1         |        1|      0| 2019|
|6 months  |Vellore Crypto |INDIA        |0         |        0|    309|  406|
|6 months  |Vellore Crypto |INDIA        |0         |        1|     28|  406|
|6 months  |Vellore Crypto |INDIA        |1         |        0|     68|  406|
|6 months  |Vellore Crypto |INDIA        |1         |        1|      1|  406|
|24 months |CMC-V-BCS-2002 |INDIA        |0         |        0|    217|  366|
|24 months |CMC-V-BCS-2002 |INDIA        |0         |        1|     94|  366|
|24 months |CMC-V-BCS-2002 |INDIA        |1         |        0|     28|  366|
|24 months |CMC-V-BCS-2002 |INDIA        |1         |        1|     27|  366|
|24 months |CMIN           |BANGLADESH   |0         |        0|    168|  242|
|24 months |CMIN           |BANGLADESH   |0         |        1|     65|  242|
|24 months |CMIN           |BANGLADESH   |1         |        0|      6|  242|
|24 months |CMIN           |BANGLADESH   |1         |        1|      3|  242|
|24 months |CONTENT        |PERU         |0         |        0|    163|  164|
|24 months |CONTENT        |PERU         |0         |        1|      1|  164|
|24 months |CONTENT        |PERU         |1         |        0|      0|  164|
|24 months |CONTENT        |PERU         |1         |        1|      0|  164|
|24 months |EE             |PAKISTAN     |0         |        0|    103|  167|
|24 months |EE             |PAKISTAN     |0         |        1|     53|  167|
|24 months |EE             |PAKISTAN     |1         |        0|      5|  167|
|24 months |EE             |PAKISTAN     |1         |        1|      6|  167|
|24 months |GMS-Nepal      |NEPAL        |0         |        0|    386|  479|
|24 months |GMS-Nepal      |NEPAL        |0         |        1|     44|  479|
|24 months |GMS-Nepal      |NEPAL        |1         |        0|     40|  479|
|24 months |GMS-Nepal      |NEPAL        |1         |        1|      9|  479|
|24 months |Keneba         |GAMBIA       |0         |        0|   1290| 1442|
|24 months |Keneba         |GAMBIA       |0         |        1|    105| 1442|
|24 months |Keneba         |GAMBIA       |1         |        0|     33| 1442|
|24 months |Keneba         |GAMBIA       |1         |        1|     14| 1442|
|24 months |MAL-ED         |INDIA        |0         |        0|    180|  227|
|24 months |MAL-ED         |INDIA        |0         |        1|     29|  227|
|24 months |MAL-ED         |INDIA        |1         |        0|     17|  227|
|24 months |MAL-ED         |INDIA        |1         |        1|      1|  227|
|24 months |MAL-ED         |BANGLADESH   |0         |        0|    178|  212|
|24 months |MAL-ED         |BANGLADESH   |0         |        1|     28|  212|
|24 months |MAL-ED         |BANGLADESH   |1         |        0|      6|  212|
|24 months |MAL-ED         |BANGLADESH   |1         |        1|      0|  212|
|24 months |MAL-ED         |PERU         |0         |        0|    186|  201|
|24 months |MAL-ED         |PERU         |0         |        1|     15|  201|
|24 months |MAL-ED         |PERU         |1         |        0|      0|  201|
|24 months |MAL-ED         |PERU         |1         |        1|      0|  201|
|24 months |MAL-ED         |NEPAL        |0         |        0|    216|  228|
|24 months |MAL-ED         |NEPAL        |0         |        1|      6|  228|
|24 months |MAL-ED         |NEPAL        |1         |        0|      5|  228|
|24 months |MAL-ED         |NEPAL        |1         |        1|      1|  228|
|24 months |MAL-ED         |BRAZIL       |0         |        0|    167|  169|
|24 months |MAL-ED         |BRAZIL       |0         |        1|      1|  169|
|24 months |MAL-ED         |BRAZIL       |1         |        0|      1|  169|
|24 months |MAL-ED         |BRAZIL       |1         |        1|      0|  169|
|24 months |MAL-ED         |TANZANIA     |0         |        0|    144|  214|
|24 months |MAL-ED         |TANZANIA     |0         |        1|     70|  214|
|24 months |MAL-ED         |TANZANIA     |1         |        0|      0|  214|
|24 months |MAL-ED         |TANZANIA     |1         |        1|      0|  214|
|24 months |MAL-ED         |SOUTH AFRICA |0         |        0|    209|  238|
|24 months |MAL-ED         |SOUTH AFRICA |0         |        1|     27|  238|
|24 months |MAL-ED         |SOUTH AFRICA |1         |        0|      2|  238|
|24 months |MAL-ED         |SOUTH AFRICA |1         |        1|      0|  238|
|24 months |PROVIDE        |BANGLADESH   |0         |        0|    513|  578|
|24 months |PROVIDE        |BANGLADESH   |0         |        1|     52|  578|
|24 months |PROVIDE        |BANGLADESH   |1         |        0|     13|  578|
|24 months |PROVIDE        |BANGLADESH   |1         |        1|      0|  578|
|24 months |TanzaniaChild2 |TANZANIA     |0         |        0|      5|    6|
|24 months |TanzaniaChild2 |TANZANIA     |0         |        1|      1|    6|
|24 months |TanzaniaChild2 |TANZANIA     |1         |        0|      0|    6|
|24 months |TanzaniaChild2 |TANZANIA     |1         |        1|      0|    6|
|24 months |Vellore Crypto |INDIA        |0         |        0|    302|  408|
|24 months |Vellore Crypto |INDIA        |0         |        1|     37|  408|
|24 months |Vellore Crypto |INDIA        |1         |        0|     65|  408|
|24 months |Vellore Crypto |INDIA        |1         |        1|      4|  408|


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


