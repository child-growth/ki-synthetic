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

**Intervention Variable:** impfloor

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                     |studyid        |country      |impfloor | ever_stunted| n_cell|     n|
|:--------------------------|:--------------|:------------|:--------|------------:|------:|-----:|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |1        |            0|     19|   215|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |1        |            1|    196|   215|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |0        |            0|      0|   215|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |0        |            1|      0|   215|
|0-24 months (no birth st.) |CONTENT        |PERU         |1        |            0|    149|   195|
|0-24 months (no birth st.) |CONTENT        |PERU         |1        |            1|     28|   195|
|0-24 months (no birth st.) |CONTENT        |PERU         |0        |            0|     13|   195|
|0-24 months (no birth st.) |CONTENT        |PERU         |0        |            1|      5|   195|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |1        |            0|     28|   457|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |1        |            1|     54|   457|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |0        |            0|    166|   457|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |0        |            1|    209|   457|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |1        |            0|   1140| 18328|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |1        |            1|    364| 18328|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |0        |            0|  12563| 18328|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |0        |            1|   4261| 18328|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |1        |            0|    325|  3883|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |1        |            1|    192|  3883|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |0        |            0|   1954|  3883|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |0        |            1|   1412|  3883|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |1        |            0|     84|   199|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |1        |            1|     96|   199|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |0        |            0|     10|   199|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |0        |            1|      9|   199|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |1        |            0|     93|   202|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |1        |            1|     96|   202|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |0        |            0|      5|   202|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |0        |            1|      8|   202|
|0-24 months (no birth st.) |MAL-ED         |PERU         |1        |            0|     16|   251|
|0-24 months (no birth st.) |MAL-ED         |PERU         |1        |            1|     25|   251|
|0-24 months (no birth st.) |MAL-ED         |PERU         |0        |            0|     93|   251|
|0-24 months (no birth st.) |MAL-ED         |PERU         |0        |            1|    117|   251|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |1        |            0|     64|   204|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |1        |            1|     26|   204|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |0        |            0|     86|   204|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |0        |            1|     28|   204|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |1        |            0|    147|   180|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |1        |            1|     30|   180|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |0        |            0|      3|   180|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |0        |            1|      0|   180|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |1        |            0|      1|   210|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |1        |            1|      5|   210|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |0        |            0|     38|   210|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |0        |            1|    166|   210|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |1        |            0|    107|   238|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |1        |            1|    110|   238|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |0        |            0|      9|   238|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |0        |            1|     12|   238|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |1        |            0|    187|   528|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |1        |            1|    279|   528|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |0        |            0|     23|   528|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |0        |            1|     39|   528|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |1        |            0|    318|   653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |1        |            1|    198|   653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |0        |            0|     78|   653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |0        |            1|     59|   653|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |1        |            0|    366|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |1        |            1|    217|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |0        |            0|     29|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |0        |            1|     21|   633|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |1        |            0|    112|   278|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |1        |            1|    166|   278|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |0        |            0|      0|   278|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |0        |            1|      0|   278|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |1        |            0|    135|   213|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |1        |            1|     78|   213|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |0        |            0|      0|   213|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |0        |            1|      0|   213|
|0-6 months (no birth st.)  |CONTENT        |PERU         |1        |            0|    170|   195|
|0-6 months (no birth st.)  |CONTENT        |PERU         |1        |            1|      7|   195|
|0-6 months (no birth st.)  |CONTENT        |PERU         |0        |            0|     18|   195|
|0-6 months (no birth st.)  |CONTENT        |PERU         |0        |            1|      0|   195|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |1        |            0|     66|   457|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |1        |            1|     16|   457|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |0        |            0|    305|   457|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |0        |            1|     70|   457|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |1        |            0|   1323| 18285|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |1        |            1|    176| 18285|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |0        |            0|  14582| 18285|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |0        |            1|   2204| 18285|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |1        |            0|    457|  3656|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |1        |            1|     37|  3656|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |0        |            0|   2887|  3656|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |0        |            1|    275|  3656|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |1        |            0|    142|   199|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |1        |            1|     38|   199|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |0        |            0|     15|   199|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |0        |            1|      4|   199|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |1        |            0|    150|   202|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |1        |            1|     39|   202|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |0        |            0|     10|   202|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |0        |            1|      3|   202|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |1        |            0|     23|   251|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |1        |            1|     18|   251|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |0        |            0|    139|   251|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |0        |            1|     71|   251|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |1        |            0|     84|   204|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |1        |            1|      6|   204|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |0        |            0|    106|   204|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |0        |            1|      8|   204|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |1        |            0|    157|   180|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |1        |            1|     20|   180|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |0        |            0|      3|   180|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |0        |            1|      0|   180|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |1        |            0|      5|   210|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |1        |            1|      1|   210|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |0        |            0|    144|   210|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |0        |            1|     60|   210|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |1        |            0|    157|   238|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |1        |            1|     60|   238|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |0        |            0|     13|   238|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |0        |            1|      8|   238|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |1        |            0|    362|   528|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |1        |            1|    104|   528|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |0        |            0|     45|   528|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |0        |            1|     17|   528|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH   |1        |            0|    422|   653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH   |1        |            1|     94|   653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH   |0        |            0|    107|   653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH   |0        |            1|     30|   653|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |1        |            0|    493|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |1        |            1|     90|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |0        |            0|     39|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |0        |            1|     11|   633|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |1        |            0|    182|   278|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |1        |            1|     96|   278|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |0        |            0|      0|   278|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |0        |            1|      0|   278|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |1        |            0|     19|   137|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |1        |            1|    118|   137|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |0        |            0|      0|   137|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |0        |            1|      0|   137|
|6-24 months                |CONTENT        |PERU         |1        |            0|    149|   188|
|6-24 months                |CONTENT        |PERU         |1        |            1|     21|   188|
|6-24 months                |CONTENT        |PERU         |0        |            0|     13|   188|
|6-24 months                |CONTENT        |PERU         |0        |            1|      5|   188|
|6-24 months                |GMS-Nepal      |NEPAL        |1        |            0|     18|   307|
|6-24 months                |GMS-Nepal      |NEPAL        |1        |            1|     38|   307|
|6-24 months                |GMS-Nepal      |NEPAL        |0        |            0|    112|   307|
|6-24 months                |GMS-Nepal      |NEPAL        |0        |            1|    139|   307|
|6-24 months                |JiVitA-3       |BANGLADESH   |1        |            0|    747| 10470|
|6-24 months                |JiVitA-3       |BANGLADESH   |1        |            1|    191| 10470|
|6-24 months                |JiVitA-3       |BANGLADESH   |0        |            0|   7456| 10470|
|6-24 months                |JiVitA-3       |BANGLADESH   |0        |            1|   2076| 10470|
|6-24 months                |JiVitA-4       |BANGLADESH   |1        |            0|    324|  3647|
|6-24 months                |JiVitA-4       |BANGLADESH   |1        |            1|    156|  3647|
|6-24 months                |JiVitA-4       |BANGLADESH   |0        |            0|   1946|  3647|
|6-24 months                |JiVitA-4       |BANGLADESH   |0        |            1|   1221|  3647|
|6-24 months                |MAL-ED         |INDIA        |1        |            0|     77|   148|
|6-24 months                |MAL-ED         |INDIA        |1        |            1|     58|   148|
|6-24 months                |MAL-ED         |INDIA        |0        |            0|      8|   148|
|6-24 months                |MAL-ED         |INDIA        |0        |            1|      5|   148|
|6-24 months                |MAL-ED         |BANGLADESH   |1        |            0|     82|   148|
|6-24 months                |MAL-ED         |BANGLADESH   |1        |            1|     57|   148|
|6-24 months                |MAL-ED         |BANGLADESH   |0        |            0|      4|   148|
|6-24 months                |MAL-ED         |BANGLADESH   |0        |            1|      5|   148|
|6-24 months                |MAL-ED         |PERU         |1        |            0|     11|   137|
|6-24 months                |MAL-ED         |PERU         |1        |            1|      7|   137|
|6-24 months                |MAL-ED         |PERU         |0        |            0|     73|   137|
|6-24 months                |MAL-ED         |PERU         |0        |            1|     46|   137|
|6-24 months                |MAL-ED         |NEPAL        |1        |            0|     63|   187|
|6-24 months                |MAL-ED         |NEPAL        |1        |            1|     20|   187|
|6-24 months                |MAL-ED         |NEPAL        |0        |            0|     84|   187|
|6-24 months                |MAL-ED         |NEPAL        |0        |            1|     20|   187|
|6-24 months                |MAL-ED         |BRAZIL       |1        |            0|    132|   145|
|6-24 months                |MAL-ED         |BRAZIL       |1        |            1|     10|   145|
|6-24 months                |MAL-ED         |BRAZIL       |0        |            0|      3|   145|
|6-24 months                |MAL-ED         |BRAZIL       |0        |            1|      0|   145|
|6-24 months                |MAL-ED         |TANZANIA     |1        |            0|      1|   141|
|6-24 months                |MAL-ED         |TANZANIA     |1        |            1|      4|   141|
|6-24 months                |MAL-ED         |TANZANIA     |0        |            0|     30|   141|
|6-24 months                |MAL-ED         |TANZANIA     |0        |            1|    106|   141|
|6-24 months                |MAL-ED         |SOUTH AFRICA |1        |            0|     82|   142|
|6-24 months                |MAL-ED         |SOUTH AFRICA |1        |            1|     50|   142|
|6-24 months                |MAL-ED         |SOUTH AFRICA |0        |            0|      6|   142|
|6-24 months                |MAL-ED         |SOUTH AFRICA |0        |            1|      4|   142|
|6-24 months                |NIH-Birth      |BANGLADESH   |1        |            0|    133|   344|
|6-24 months                |NIH-Birth      |BANGLADESH   |1        |            1|    175|   344|
|6-24 months                |NIH-Birth      |BANGLADESH   |0        |            0|     14|   344|
|6-24 months                |NIH-Birth      |BANGLADESH   |0        |            1|     22|   344|
|6-24 months                |NIH-Crypto     |BANGLADESH   |1        |            0|    299|   506|
|6-24 months                |NIH-Crypto     |BANGLADESH   |1        |            1|    104|   506|
|6-24 months                |NIH-Crypto     |BANGLADESH   |0        |            0|     74|   506|
|6-24 months                |NIH-Crypto     |BANGLADESH   |0        |            1|     29|   506|
|6-24 months                |PROVIDE        |BANGLADESH   |1        |            0|    295|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |1        |            1|    127|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |0        |            0|     24|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |0        |            1|     10|   456|
|6-24 months                |Vellore Crypto |INDIA        |1        |            0|    112|   182|
|6-24 months                |Vellore Crypto |INDIA        |1        |            1|     70|   182|
|6-24 months                |Vellore Crypto |INDIA        |0        |            0|      0|   182|
|6-24 months                |Vellore Crypto |INDIA        |0        |            1|      0|   182|


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: Vellore Crypto, country: INDIA
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

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth st.), studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth st.), studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


