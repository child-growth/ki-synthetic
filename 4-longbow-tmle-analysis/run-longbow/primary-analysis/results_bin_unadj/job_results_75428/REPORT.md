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

**Intervention Variable:** hfoodsec

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid    |country      |hfoodsec             | ever_stunted| n_cell|     n|
|:-----------|:----------|:------------|:--------------------|------------:|------:|-----:|
|0-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |            0|     30|   667|
|0-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |            1|     61|   667|
|0-24 months |GMS-Nepal  |NEPAL        |Food Secure          |            0|    160|   667|
|0-24 months |GMS-Nepal  |NEPAL        |Food Secure          |            1|    302|   667|
|0-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |            0|     49|   667|
|0-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |            1|     65|   667|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |            0|   1461| 17457|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |            1|   1548| 17457|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |            0|   4312| 17457|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |            1|   4347| 17457|
|0-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |            0|   2820| 17457|
|0-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |            1|   2969| 17457|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |            0|    279|  5415|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |            1|    388|  5415|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |            0|   1231|  5415|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |            1|   1676|  5415|
|0-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |            0|    763|  5415|
|0-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |            1|   1078|  5415|
|0-24 months |MAL-ED     |INDIA        |Food Insecure        |            0|      6|   225|
|0-24 months |MAL-ED     |INDIA        |Food Insecure        |            1|     12|   225|
|0-24 months |MAL-ED     |INDIA        |Food Secure          |            0|     82|   225|
|0-24 months |MAL-ED     |INDIA        |Food Secure          |            1|    121|   225|
|0-24 months |MAL-ED     |INDIA        |Mildly Food Insecure |            0|      2|   225|
|0-24 months |MAL-ED     |INDIA        |Mildly Food Insecure |            1|      2|   225|
|0-24 months |MAL-ED     |BANGLADESH   |Food Insecure        |            0|     10|   183|
|0-24 months |MAL-ED     |BANGLADESH   |Food Insecure        |            1|     19|   183|
|0-24 months |MAL-ED     |BANGLADESH   |Food Secure          |            0|     67|   183|
|0-24 months |MAL-ED     |BANGLADESH   |Food Secure          |            1|     82|   183|
|0-24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |            0|      1|   183|
|0-24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |            1|      4|   183|
|0-24 months |MAL-ED     |PERU         |Food Insecure        |            0|     44|   157|
|0-24 months |MAL-ED     |PERU         |Food Insecure        |            1|     64|   157|
|0-24 months |MAL-ED     |PERU         |Food Secure          |            0|     11|   157|
|0-24 months |MAL-ED     |PERU         |Food Secure          |            1|     20|   157|
|0-24 months |MAL-ED     |PERU         |Mildly Food Insecure |            0|      6|   157|
|0-24 months |MAL-ED     |PERU         |Mildly Food Insecure |            1|     12|   157|
|0-24 months |MAL-ED     |NEPAL        |Food Insecure        |            0|     14|   126|
|0-24 months |MAL-ED     |NEPAL        |Food Insecure        |            1|      4|   126|
|0-24 months |MAL-ED     |NEPAL        |Food Secure          |            0|     53|   126|
|0-24 months |MAL-ED     |NEPAL        |Food Secure          |            1|     43|   126|
|0-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |            0|     11|   126|
|0-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |            1|      1|   126|
|0-24 months |MAL-ED     |BRAZIL       |Food Insecure        |            0|     76|   111|
|0-24 months |MAL-ED     |BRAZIL       |Food Insecure        |            1|     27|   111|
|0-24 months |MAL-ED     |BRAZIL       |Food Secure          |            0|      2|   111|
|0-24 months |MAL-ED     |BRAZIL       |Food Secure          |            1|      0|   111|
|0-24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |            0|      2|   111|
|0-24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |            1|      4|   111|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |            0|     41|   252|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |            1|     52|   252|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |            0|     49|   252|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |            1|     74|   252|
|0-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |            0|     17|   252|
|0-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |            1|     19|   252|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |            0|     19|   629|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |            1|     33|   629|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |            0|     22|   629|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |            1|     54|   629|
|0-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |            0|    170|   629|
|0-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |            1|    331|   629|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |            0|     36|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |            1|     36|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |            0|    245|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |            1|    227|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |            0|    115|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |            1|     99|   758|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Insecure        |            0|     63|   667|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Insecure        |            1|     28|   667|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Secure          |            0|    313|   667|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Secure          |            1|    149|   667|
|0-6 months  |GMS-Nepal  |NEPAL        |Mildly Food Insecure |            0|     80|   667|
|0-6 months  |GMS-Nepal  |NEPAL        |Mildly Food Insecure |            1|     34|   667|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Insecure        |            0|   1799| 17403|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Insecure        |            1|   1200| 17403|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Secure          |            0|   5281| 17403|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Secure          |            1|   3354| 17403|
|0-6 months  |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |            0|   3421| 17403|
|0-6 months  |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |            1|   2348| 17403|
|0-6 months  |JiVitA-4   |BANGLADESH   |Food Insecure        |            0|    390|  5104|
|0-6 months  |JiVitA-4   |BANGLADESH   |Food Insecure        |            1|    237|  5104|
|0-6 months  |JiVitA-4   |BANGLADESH   |Food Secure          |            0|   1795|  5104|
|0-6 months  |JiVitA-4   |BANGLADESH   |Food Secure          |            1|    940|  5104|
|0-6 months  |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |            0|   1149|  5104|
|0-6 months  |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |            1|    593|  5104|
|0-6 months  |MAL-ED     |INDIA        |Food Insecure        |            0|     11|   225|
|0-6 months  |MAL-ED     |INDIA        |Food Insecure        |            1|      7|   225|
|0-6 months  |MAL-ED     |INDIA        |Food Secure          |            0|    139|   225|
|0-6 months  |MAL-ED     |INDIA        |Food Secure          |            1|     64|   225|
|0-6 months  |MAL-ED     |INDIA        |Mildly Food Insecure |            0|      2|   225|
|0-6 months  |MAL-ED     |INDIA        |Mildly Food Insecure |            1|      2|   225|
|0-6 months  |MAL-ED     |BANGLADESH   |Food Insecure        |            0|     19|   183|
|0-6 months  |MAL-ED     |BANGLADESH   |Food Insecure        |            1|     10|   183|
|0-6 months  |MAL-ED     |BANGLADESH   |Food Secure          |            0|    108|   183|
|0-6 months  |MAL-ED     |BANGLADESH   |Food Secure          |            1|     41|   183|
|0-6 months  |MAL-ED     |BANGLADESH   |Mildly Food Insecure |            0|      2|   183|
|0-6 months  |MAL-ED     |BANGLADESH   |Mildly Food Insecure |            1|      3|   183|
|0-6 months  |MAL-ED     |PERU         |Food Insecure        |            0|     67|   157|
|0-6 months  |MAL-ED     |PERU         |Food Insecure        |            1|     41|   157|
|0-6 months  |MAL-ED     |PERU         |Food Secure          |            0|     17|   157|
|0-6 months  |MAL-ED     |PERU         |Food Secure          |            1|     14|   157|
|0-6 months  |MAL-ED     |PERU         |Mildly Food Insecure |            0|     12|   157|
|0-6 months  |MAL-ED     |PERU         |Mildly Food Insecure |            1|      6|   157|
|0-6 months  |MAL-ED     |NEPAL        |Food Insecure        |            0|     17|   126|
|0-6 months  |MAL-ED     |NEPAL        |Food Insecure        |            1|      1|   126|
|0-6 months  |MAL-ED     |NEPAL        |Food Secure          |            0|     74|   126|
|0-6 months  |MAL-ED     |NEPAL        |Food Secure          |            1|     22|   126|
|0-6 months  |MAL-ED     |NEPAL        |Mildly Food Insecure |            0|     11|   126|
|0-6 months  |MAL-ED     |NEPAL        |Mildly Food Insecure |            1|      1|   126|
|0-6 months  |MAL-ED     |BRAZIL       |Food Insecure        |            0|     84|   111|
|0-6 months  |MAL-ED     |BRAZIL       |Food Insecure        |            1|     19|   111|
|0-6 months  |MAL-ED     |BRAZIL       |Food Secure          |            0|      2|   111|
|0-6 months  |MAL-ED     |BRAZIL       |Food Secure          |            1|      0|   111|
|0-6 months  |MAL-ED     |BRAZIL       |Mildly Food Insecure |            0|      2|   111|
|0-6 months  |MAL-ED     |BRAZIL       |Mildly Food Insecure |            1|      4|   111|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Food Insecure        |            0|     57|   252|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Food Insecure        |            1|     36|   252|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Food Secure          |            0|     79|   252|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Food Secure          |            1|     44|   252|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |            0|     22|   252|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |            1|     14|   252|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Insecure        |            0|     38|   629|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Insecure        |            1|     14|   629|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Secure          |            0|     54|   629|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Secure          |            1|     22|   629|
|0-6 months  |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |            0|    317|   629|
|0-6 months  |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |            1|    184|   629|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Insecure        |            0|     51|   758|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Insecure        |            1|     21|   758|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Secure          |            0|    325|   758|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Secure          |            1|    147|   758|
|0-6 months  |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |            0|    153|   758|
|0-6 months  |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |            1|     61|   758|
|6-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |            0|     18|   379|
|6-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |            1|     33|   379|
|6-24 months |GMS-Nepal  |NEPAL        |Food Secure          |            0|    112|   379|
|6-24 months |GMS-Nepal  |NEPAL        |Food Secure          |            1|    153|   379|
|6-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |            0|     32|   379|
|6-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |            1|     31|   379|
|6-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |            0|   1114|  8969|
|6-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |            1|    348|  8969|
|6-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |            0|   3572|  8969|
|6-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |            1|    993|  8969|
|6-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |            0|   2321|  8969|
|6-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |            1|    621|  8969|
|6-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |            0|    277|  3636|
|6-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |            1|    151|  3636|
|6-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |            0|   1228|  3636|
|6-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |            1|    736|  3636|
|6-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |            0|    759|  3636|
|6-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |            1|    485|  3636|
|6-24 months |MAL-ED     |INDIA        |Food Insecure        |            0|      6|   143|
|6-24 months |MAL-ED     |INDIA        |Food Insecure        |            1|      5|   143|
|6-24 months |MAL-ED     |INDIA        |Food Secure          |            0|     74|   143|
|6-24 months |MAL-ED     |INDIA        |Food Secure          |            1|     57|   143|
|6-24 months |MAL-ED     |INDIA        |Mildly Food Insecure |            0|      1|   143|
|6-24 months |MAL-ED     |INDIA        |Mildly Food Insecure |            1|      0|   143|
|6-24 months |MAL-ED     |BANGLADESH   |Food Insecure        |            0|      9|   119|
|6-24 months |MAL-ED     |BANGLADESH   |Food Insecure        |            1|      9|   119|
|6-24 months |MAL-ED     |BANGLADESH   |Food Secure          |            0|     58|   119|
|6-24 months |MAL-ED     |BANGLADESH   |Food Secure          |            1|     41|   119|
|6-24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |            0|      1|   119|
|6-24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |            1|      1|   119|
|6-24 months |MAL-ED     |PERU         |Food Insecure        |            0|     35|    83|
|6-24 months |MAL-ED     |PERU         |Food Insecure        |            1|     23|    83|
|6-24 months |MAL-ED     |PERU         |Food Secure          |            0|      8|    83|
|6-24 months |MAL-ED     |PERU         |Food Secure          |            1|      6|    83|
|6-24 months |MAL-ED     |PERU         |Mildly Food Insecure |            0|      5|    83|
|6-24 months |MAL-ED     |PERU         |Mildly Food Insecure |            1|      6|    83|
|6-24 months |MAL-ED     |NEPAL        |Food Insecure        |            0|     13|   101|
|6-24 months |MAL-ED     |NEPAL        |Food Insecure        |            1|      3|   101|
|6-24 months |MAL-ED     |NEPAL        |Food Secure          |            0|     53|   101|
|6-24 months |MAL-ED     |NEPAL        |Food Secure          |            1|     21|   101|
|6-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |            0|     11|   101|
|6-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |            1|      0|   101|
|6-24 months |MAL-ED     |BRAZIL       |Food Insecure        |            0|     67|    79|
|6-24 months |MAL-ED     |BRAZIL       |Food Insecure        |            1|      8|    79|
|6-24 months |MAL-ED     |BRAZIL       |Food Secure          |            0|      2|    79|
|6-24 months |MAL-ED     |BRAZIL       |Food Secure          |            1|      0|    79|
|6-24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |            0|      2|    79|
|6-24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |            1|      0|    79|
|6-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |            0|     34|   134|
|6-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |            1|     16|   134|
|6-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |            0|     35|   134|
|6-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |            1|     30|   134|
|6-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |            0|     14|   134|
|6-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |            1|      5|   134|
|6-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |            0|     14|   345|
|6-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |            1|     19|   345|
|6-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |            0|     16|   345|
|6-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |            1|     32|   345|
|6-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |            0|    117|   345|
|6-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |            1|    147|   345|
|6-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |            0|     34|   506|
|6-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |            1|     15|   506|
|6-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |            0|    233|   506|
|6-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |            1|     80|   506|
|6-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |            0|    106|   506|
|6-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |            1|     38|   506|


The following strata were considered:

* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


