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

**Outcome Variable:** ever_swasted

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

|agecat                      |studyid        |country      |impfloor | ever_swasted| n_cell|     n|
|:---------------------------|:--------------|:------------|:--------|------------:|------:|-----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |1        |            0|    226|   264|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |1        |            1|     38|   264|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |0        |            0|      0|   264|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |0        |            1|      0|   264|
|0-24 months (no birth wast) |CONTENT        |PERU         |1        |            0|    194|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |1        |            1|      1|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |0        |            0|     20|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |0        |            1|      0|   215|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |1        |            0|     74|   528|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |1        |            1|     15|   528|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |0        |            0|    349|   528|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |0        |            1|     90|   528|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |1        |            0|   2031| 26459|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |1        |            1|     88| 26459|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |0        |            0|  23480| 26459|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |0        |            1|    860| 26459|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |1        |            0|    644|  5392|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |1        |            1|     26|  5392|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |0        |            0|   4516|  5392|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |0        |            1|    206|  5392|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |1        |            0|    203|   236|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |1        |            1|     12|   236|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |0        |            0|     21|   236|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |0        |            1|      0|   236|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |1        |            0|    215|   243|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |1        |            1|     10|   243|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |0        |            0|     18|   243|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |0        |            1|      0|   243|
|0-24 months (no birth wast) |MAL-ED         |PERU         |1        |            0|     47|   284|
|0-24 months (no birth wast) |MAL-ED         |PERU         |1        |            1|      2|   284|
|0-24 months (no birth wast) |MAL-ED         |PERU         |0        |            0|    233|   284|
|0-24 months (no birth wast) |MAL-ED         |PERU         |0        |            1|      2|   284|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |1        |            0|    103|   231|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |1        |            1|      2|   231|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |0        |            0|    125|   231|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |0        |            1|      1|   231|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |1        |            0|    199|   207|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |1        |            1|      4|   207|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |0        |            0|      4|   207|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |0        |            1|      0|   207|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |1        |            0|      6|   250|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |1        |            1|      0|   250|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |0        |            0|    236|   250|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |0        |            1|      8|   250|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |1        |            0|    232|   267|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |1        |            1|      9|   267|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |0        |            0|     24|   267|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |0        |            1|      2|   267|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |1        |            0|    485|   600|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |1        |            1|     46|   600|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |0        |            0|     61|   600|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |0        |            1|      8|   600|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |1        |            0|    583|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |1        |            1|     15|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |0        |            0|    151|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |0        |            1|      5|   754|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |1        |            0|    620|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |1        |            1|     16|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |0        |            0|     48|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |0        |            1|      3|   687|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |1        |            0|    249|   313|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |1        |            1|     64|   313|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |0        |            0|      0|   313|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |0        |            1|      0|   313|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |1        |            0|    229|   249|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |1        |            1|     20|   249|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |0        |            0|      0|   249|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |0        |            1|      0|   249|
|0-6 months (no birth wast)  |CONTENT        |PERU         |1        |            0|    194|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |1        |            1|      1|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |0        |            0|     20|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |0        |            1|      0|   215|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |1        |            0|     81|   514|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |1        |            1|      4|   514|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |0        |            0|    407|   514|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |0        |            1|     22|   514|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |1        |            0|   2062| 26166|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |1        |            1|     33| 26166|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |0        |            0|  23669| 26166|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |0        |            1|    402| 26166|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |1        |            0|    628|  4953|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |1        |            1|      1|  4953|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |0        |            0|   4304|  4953|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |0        |            1|     20|  4953|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |1        |            0|    207|   234|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |1        |            1|      6|   234|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |0        |            0|     21|   234|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |0        |            1|      0|   234|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |1        |            0|    219|   242|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |1        |            1|      5|   242|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |0        |            0|     18|   242|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |0        |            1|      0|   242|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |1        |            0|     49|   284|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |1        |            1|      0|   284|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |0        |            0|    234|   284|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |0        |            1|      1|   284|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |1        |            0|    102|   229|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |1        |            1|      1|   229|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |0        |            0|    126|   229|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |0        |            1|      0|   229|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |1        |            0|    200|   207|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |1        |            1|      3|   207|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |0        |            0|      4|   207|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |0        |            1|      0|   207|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |1        |            0|      6|   250|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |1        |            1|      0|   250|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |0        |            0|    241|   250|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |0        |            1|      3|   250|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |1        |            0|    237|   266|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |1        |            1|      3|   266|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |0        |            0|     26|   266|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |0        |            1|      0|   266|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |1        |            0|    506|   582|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |1        |            1|      9|   582|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |0        |            0|     67|   582|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |0        |            1|      0|   582|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |1        |            0|    594|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |1        |            1|      1|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |0        |            0|    154|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |0        |            1|      0|   749|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |1        |            0|    627|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |1        |            1|      5|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |0        |            0|     50|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |0        |            1|      1|   683|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |1        |            0|    254|   303|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |1        |            1|     49|   303|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |0        |            0|      0|   303|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |0        |            1|      0|   303|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |1        |            0|    249|   269|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |1        |            1|     20|   269|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |0        |            0|      0|   269|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |0        |            1|      0|   269|
|6-24 months                 |CONTENT        |PERU         |1        |            0|    195|   215|
|6-24 months                 |CONTENT        |PERU         |1        |            1|      0|   215|
|6-24 months                 |CONTENT        |PERU         |0        |            0|     20|   215|
|6-24 months                 |CONTENT        |PERU         |0        |            1|      0|   215|
|6-24 months                 |GMS-Nepal      |NEPAL        |1        |            0|     68|   468|
|6-24 months                 |GMS-Nepal      |NEPAL        |1        |            1|     13|   468|
|6-24 months                 |GMS-Nepal      |NEPAL        |0        |            0|    312|   468|
|6-24 months                 |GMS-Nepal      |NEPAL        |0        |            1|     75|   468|
|6-24 months                 |JiVitA-3       |BANGLADESH   |1        |            0|   1453| 17255|
|6-24 months                 |JiVitA-3       |BANGLADESH   |1        |            1|     60| 17255|
|6-24 months                 |JiVitA-3       |BANGLADESH   |0        |            0|  15249| 17255|
|6-24 months                 |JiVitA-3       |BANGLADESH   |0        |            1|    493| 17255|
|6-24 months                 |JiVitA-4       |BANGLADESH   |1        |            0|    645|  5426|
|6-24 months                 |JiVitA-4       |BANGLADESH   |1        |            1|     27|  5426|
|6-24 months                 |JiVitA-4       |BANGLADESH   |0        |            0|   4542|  5426|
|6-24 months                 |JiVitA-4       |BANGLADESH   |0        |            1|    212|  5426|
|6-24 months                 |MAL-ED         |INDIA        |1        |            0|    201|   226|
|6-24 months                 |MAL-ED         |INDIA        |1        |            1|      6|   226|
|6-24 months                 |MAL-ED         |INDIA        |0        |            0|     19|   226|
|6-24 months                 |MAL-ED         |INDIA        |0        |            1|      0|   226|
|6-24 months                 |MAL-ED         |BANGLADESH   |1        |            0|    200|   222|
|6-24 months                 |MAL-ED         |BANGLADESH   |1        |            1|      5|   222|
|6-24 months                 |MAL-ED         |BANGLADESH   |0        |            0|     17|   222|
|6-24 months                 |MAL-ED         |BANGLADESH   |0        |            1|      0|   222|
|6-24 months                 |MAL-ED         |PERU         |1        |            0|     40|   252|
|6-24 months                 |MAL-ED         |PERU         |1        |            1|      2|   252|
|6-24 months                 |MAL-ED         |PERU         |0        |            0|    209|   252|
|6-24 months                 |MAL-ED         |PERU         |0        |            1|      1|   252|
|6-24 months                 |MAL-ED         |NEPAL        |1        |            0|    101|   227|
|6-24 months                 |MAL-ED         |NEPAL        |1        |            1|      1|   227|
|6-24 months                 |MAL-ED         |NEPAL        |0        |            0|    124|   227|
|6-24 months                 |MAL-ED         |NEPAL        |0        |            1|      1|   227|
|6-24 months                 |MAL-ED         |BRAZIL       |1        |            0|    181|   185|
|6-24 months                 |MAL-ED         |BRAZIL       |1        |            1|      1|   185|
|6-24 months                 |MAL-ED         |BRAZIL       |0        |            0|      3|   185|
|6-24 months                 |MAL-ED         |BRAZIL       |0        |            1|      0|   185|
|6-24 months                 |MAL-ED         |TANZANIA     |1        |            0|      6|   239|
|6-24 months                 |MAL-ED         |TANZANIA     |1        |            1|      0|   239|
|6-24 months                 |MAL-ED         |TANZANIA     |0        |            0|    228|   239|
|6-24 months                 |MAL-ED         |TANZANIA     |0        |            1|      5|   239|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |1        |            0|    204|   233|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |1        |            1|      7|   233|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |0        |            0|     20|   233|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |0        |            1|      2|   233|
|6-24 months                 |NIH-Birth      |BANGLADESH   |1        |            0|    439|   541|
|6-24 months                 |NIH-Birth      |BANGLADESH   |1        |            1|     40|   541|
|6-24 months                 |NIH-Birth      |BANGLADESH   |0        |            0|     54|   541|
|6-24 months                 |NIH-Birth      |BANGLADESH   |0        |            1|      8|   541|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |1        |            0|    564|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |1        |            1|     14|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |0        |            0|    146|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |0        |            1|      6|   730|
|6-24 months                 |PROVIDE        |BANGLADESH   |1        |            0|    557|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |1        |            1|     11|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |0        |            0|     45|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |0        |            1|      2|   615|
|6-24 months                 |Vellore Crypto |INDIA        |1        |            0|    294|   314|
|6-24 months                 |Vellore Crypto |INDIA        |1        |            1|     20|   314|
|6-24 months                 |Vellore Crypto |INDIA        |0        |            0|      0|   314|
|6-24 months                 |Vellore Crypto |INDIA        |0        |            1|      0|   314|


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
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: Vellore Crypto, country: INDIA
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


