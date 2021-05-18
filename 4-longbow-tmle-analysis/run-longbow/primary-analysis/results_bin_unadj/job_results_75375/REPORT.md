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

**Intervention Variable:** birthlen

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |birthlen   | sstunted| n_cell|     n|
|:---------|:--------------|:------------|:----------|--------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |>=50 cm    |        0|     14|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |>=50 cm    |        1|      0|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |<48 cm     |        0|     34|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |<48 cm     |        1|      4|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |[48-50) cm |        0|     40|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |[48-50) cm |        1|      0|    92|
|Birth     |CMIN           |BANGLADESH   |>=50 cm    |        0|      2|    26|
|Birth     |CMIN           |BANGLADESH   |>=50 cm    |        1|      0|    26|
|Birth     |CMIN           |BANGLADESH   |<48 cm     |        0|     13|    26|
|Birth     |CMIN           |BANGLADESH   |<48 cm     |        1|      6|    26|
|Birth     |CMIN           |BANGLADESH   |[48-50) cm |        0|      5|    26|
|Birth     |CMIN           |BANGLADESH   |[48-50) cm |        1|      0|    26|
|Birth     |COHORTS        |INDIA        |>=50 cm    |        0|   1426|  6640|
|Birth     |COHORTS        |INDIA        |>=50 cm    |        1|      0|  6640|
|Birth     |COHORTS        |INDIA        |<48 cm     |        0|   2568|  6640|
|Birth     |COHORTS        |INDIA        |<48 cm     |        1|    206|  6640|
|Birth     |COHORTS        |INDIA        |[48-50) cm |        0|   2440|  6640|
|Birth     |COHORTS        |INDIA        |[48-50) cm |        1|      0|  6640|
|Birth     |COHORTS        |GUATEMALA    |>=50 cm    |        0|    437|   852|
|Birth     |COHORTS        |GUATEMALA    |>=50 cm    |        1|      0|   852|
|Birth     |COHORTS        |GUATEMALA    |<48 cm     |        0|    152|   852|
|Birth     |COHORTS        |GUATEMALA    |<48 cm     |        1|     11|   852|
|Birth     |COHORTS        |GUATEMALA    |[48-50) cm |        0|    252|   852|
|Birth     |COHORTS        |GUATEMALA    |[48-50) cm |        1|      0|   852|
|Birth     |COHORTS        |PHILIPPINES  |>=50 cm    |        0|   1129|  3050|
|Birth     |COHORTS        |PHILIPPINES  |>=50 cm    |        1|      0|  3050|
|Birth     |COHORTS        |PHILIPPINES  |<48 cm     |        0|    716|  3050|
|Birth     |COHORTS        |PHILIPPINES  |<48 cm     |        1|     46|  3050|
|Birth     |COHORTS        |PHILIPPINES  |[48-50) cm |        0|   1159|  3050|
|Birth     |COHORTS        |PHILIPPINES  |[48-50) cm |        1|      0|  3050|
|Birth     |CONTENT        |PERU         |>=50 cm    |        0|      1|     2|
|Birth     |CONTENT        |PERU         |>=50 cm    |        1|      0|     2|
|Birth     |CONTENT        |PERU         |<48 cm     |        0|      1|     2|
|Birth     |CONTENT        |PERU         |<48 cm     |        1|      0|     2|
|Birth     |CONTENT        |PERU         |[48-50) cm |        0|      0|     2|
|Birth     |CONTENT        |PERU         |[48-50) cm |        1|      0|     2|
|Birth     |EE             |PAKISTAN     |>=50 cm    |        0|     22|   240|
|Birth     |EE             |PAKISTAN     |>=50 cm    |        1|      0|   240|
|Birth     |EE             |PAKISTAN     |<48 cm     |        0|    124|   240|
|Birth     |EE             |PAKISTAN     |<48 cm     |        1|     48|   240|
|Birth     |EE             |PAKISTAN     |[48-50) cm |        0|     46|   240|
|Birth     |EE             |PAKISTAN     |[48-50) cm |        1|      0|   240|
|Birth     |GMS-Nepal      |NEPAL        |>=50 cm    |        0|    104|   696|
|Birth     |GMS-Nepal      |NEPAL        |>=50 cm    |        1|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |<48 cm     |        0|    353|   696|
|Birth     |GMS-Nepal      |NEPAL        |<48 cm     |        1|     31|   696|
|Birth     |GMS-Nepal      |NEPAL        |[48-50) cm |        0|    208|   696|
|Birth     |GMS-Nepal      |NEPAL        |[48-50) cm |        1|      0|   696|
|Birth     |JiVitA-3       |BANGLADESH   |>=50 cm    |        0|   1228| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |>=50 cm    |        1|      0| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |<48 cm     |        0|  13688| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |<48 cm     |        1|   2448| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |[48-50) cm |        0|   5091| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |[48-50) cm |        1|      0| 22455|
|Birth     |JiVitA-4       |BANGLADESH   |>=50 cm    |        0|    178|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |>=50 cm    |        1|      0|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |<48 cm     |        0|   1680|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |<48 cm     |        1|    233|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |[48-50) cm |        0|    732|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |[48-50) cm |        1|      0|  2823|
|Birth     |Keneba         |GAMBIA       |>=50 cm    |        0|    763|  1543|
|Birth     |Keneba         |GAMBIA       |>=50 cm    |        1|      0|  1543|
|Birth     |Keneba         |GAMBIA       |<48 cm     |        0|    256|  1543|
|Birth     |Keneba         |GAMBIA       |<48 cm     |        1|     29|  1543|
|Birth     |Keneba         |GAMBIA       |[48-50) cm |        0|    495|  1543|
|Birth     |Keneba         |GAMBIA       |[48-50) cm |        1|      0|  1543|
|Birth     |MAL-ED         |INDIA        |>=50 cm    |        0|      9|    47|
|Birth     |MAL-ED         |INDIA        |>=50 cm    |        1|      0|    47|
|Birth     |MAL-ED         |INDIA        |<48 cm     |        0|     20|    47|
|Birth     |MAL-ED         |INDIA        |<48 cm     |        1|      2|    47|
|Birth     |MAL-ED         |INDIA        |[48-50) cm |        0|     16|    47|
|Birth     |MAL-ED         |INDIA        |[48-50) cm |        1|      0|    47|
|Birth     |MAL-ED         |BANGLADESH   |>=50 cm    |        0|     35|   231|
|Birth     |MAL-ED         |BANGLADESH   |>=50 cm    |        1|      0|   231|
|Birth     |MAL-ED         |BANGLADESH   |<48 cm     |        0|    108|   231|
|Birth     |MAL-ED         |BANGLADESH   |<48 cm     |        1|      9|   231|
|Birth     |MAL-ED         |BANGLADESH   |[48-50) cm |        0|     79|   231|
|Birth     |MAL-ED         |BANGLADESH   |[48-50) cm |        1|      0|   231|
|Birth     |MAL-ED         |PERU         |>=50 cm    |        0|     41|   233|
|Birth     |MAL-ED         |PERU         |>=50 cm    |        1|      0|   233|
|Birth     |MAL-ED         |PERU         |<48 cm     |        0|     88|   233|
|Birth     |MAL-ED         |PERU         |<48 cm     |        1|      4|   233|
|Birth     |MAL-ED         |PERU         |[48-50) cm |        0|    100|   233|
|Birth     |MAL-ED         |PERU         |[48-50) cm |        1|      0|   233|
|Birth     |MAL-ED         |NEPAL        |>=50 cm    |        0|      7|    27|
|Birth     |MAL-ED         |NEPAL        |>=50 cm    |        1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |<48 cm     |        0|     11|    27|
|Birth     |MAL-ED         |NEPAL        |<48 cm     |        1|      1|    27|
|Birth     |MAL-ED         |NEPAL        |[48-50) cm |        0|      8|    27|
|Birth     |MAL-ED         |NEPAL        |[48-50) cm |        1|      0|    27|
|Birth     |MAL-ED         |BRAZIL       |>=50 cm    |        0|     23|    65|
|Birth     |MAL-ED         |BRAZIL       |>=50 cm    |        1|      0|    65|
|Birth     |MAL-ED         |BRAZIL       |<48 cm     |        0|     15|    65|
|Birth     |MAL-ED         |BRAZIL       |<48 cm     |        1|      3|    65|
|Birth     |MAL-ED         |BRAZIL       |[48-50) cm |        0|     24|    65|
|Birth     |MAL-ED         |BRAZIL       |[48-50) cm |        1|      0|    65|
|Birth     |MAL-ED         |TANZANIA     |>=50 cm    |        0|     20|   125|
|Birth     |MAL-ED         |TANZANIA     |>=50 cm    |        1|      0|   125|
|Birth     |MAL-ED         |TANZANIA     |<48 cm     |        0|     34|   125|
|Birth     |MAL-ED         |TANZANIA     |<48 cm     |        1|     10|   125|
|Birth     |MAL-ED         |TANZANIA     |[48-50) cm |        0|     61|   125|
|Birth     |MAL-ED         |TANZANIA     |[48-50) cm |        1|      0|   125|
|Birth     |MAL-ED         |SOUTH AFRICA |>=50 cm    |        0|     35|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |>=50 cm    |        1|      0|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |<48 cm     |        0|     34|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |<48 cm     |        1|      2|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |[48-50) cm |        0|     52|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |[48-50) cm |        1|      0|   123|
|Birth     |NIH-Birth      |BANGLADESH   |>=50 cm    |        0|    124|   608|
|Birth     |NIH-Birth      |BANGLADESH   |>=50 cm    |        1|      0|   608|
|Birth     |NIH-Birth      |BANGLADESH   |<48 cm     |        0|    234|   608|
|Birth     |NIH-Birth      |BANGLADESH   |<48 cm     |        1|     19|   608|
|Birth     |NIH-Birth      |BANGLADESH   |[48-50) cm |        0|    231|   608|
|Birth     |NIH-Birth      |BANGLADESH   |[48-50) cm |        1|      0|   608|
|Birth     |NIH-Crypto     |BANGLADESH   |>=50 cm    |        0|    161|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |>=50 cm    |        1|      0|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |<48 cm     |        0|    277|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |<48 cm     |        1|     10|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |[48-50) cm |        0|    284|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |[48-50) cm |        1|      0|   732|
|Birth     |PROBIT         |BELARUS      |>=50 cm    |        0|  12626| 13893|
|Birth     |PROBIT         |BELARUS      |>=50 cm    |        1|      0| 13893|
|Birth     |PROBIT         |BELARUS      |<48 cm     |        0|    142| 13893|
|Birth     |PROBIT         |BELARUS      |<48 cm     |        1|      5| 13893|
|Birth     |PROBIT         |BELARUS      |[48-50) cm |        0|   1120| 13893|
|Birth     |PROBIT         |BELARUS      |[48-50) cm |        1|      0| 13893|
|Birth     |PROVIDE        |BANGLADESH   |>=50 cm    |        0|    121|   539|
|Birth     |PROVIDE        |BANGLADESH   |>=50 cm    |        1|      0|   539|
|Birth     |PROVIDE        |BANGLADESH   |<48 cm     |        0|    192|   539|
|Birth     |PROVIDE        |BANGLADESH   |<48 cm     |        1|      4|   539|
|Birth     |PROVIDE        |BANGLADESH   |[48-50) cm |        0|    222|   539|
|Birth     |PROVIDE        |BANGLADESH   |[48-50) cm |        1|      0|   539|
|Birth     |ResPak         |PAKISTAN     |>=50 cm    |        0|     10|    42|
|Birth     |ResPak         |PAKISTAN     |>=50 cm    |        1|      0|    42|
|Birth     |ResPak         |PAKISTAN     |<48 cm     |        0|     17|    42|
|Birth     |ResPak         |PAKISTAN     |<48 cm     |        1|      2|    42|
|Birth     |ResPak         |PAKISTAN     |[48-50) cm |        0|     13|    42|
|Birth     |ResPak         |PAKISTAN     |[48-50) cm |        1|      0|    42|
|Birth     |SAS-CompFeed   |INDIA        |>=50 cm    |        0|    116|  1252|
|Birth     |SAS-CompFeed   |INDIA        |>=50 cm    |        1|      0|  1252|
|Birth     |SAS-CompFeed   |INDIA        |<48 cm     |        0|    647|  1252|
|Birth     |SAS-CompFeed   |INDIA        |<48 cm     |        1|     91|  1252|
|Birth     |SAS-CompFeed   |INDIA        |[48-50) cm |        0|    398|  1252|
|Birth     |SAS-CompFeed   |INDIA        |[48-50) cm |        1|      0|  1252|
|Birth     |Vellore Crypto |INDIA        |>=50 cm    |        0|    142|   388|
|Birth     |Vellore Crypto |INDIA        |>=50 cm    |        1|      0|   388|
|Birth     |Vellore Crypto |INDIA        |<48 cm     |        0|     92|   388|
|Birth     |Vellore Crypto |INDIA        |<48 cm     |        1|     16|   388|
|Birth     |Vellore Crypto |INDIA        |[48-50) cm |        0|    138|   388|
|Birth     |Vellore Crypto |INDIA        |[48-50) cm |        1|      0|   388|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=50 cm    |        0|   4125| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=50 cm    |        1|      0| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |<48 cm     |        0|   3967| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |<48 cm     |        1|    442| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |[48-50) cm |        0|   5341| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |[48-50) cm |        1|      0| 13875|
|6 months  |CMC-V-BCS-2002 |INDIA        |>=50 cm    |        0|     15|   104|
|6 months  |CMC-V-BCS-2002 |INDIA        |>=50 cm    |        1|      1|   104|
|6 months  |CMC-V-BCS-2002 |INDIA        |<48 cm     |        0|     43|   104|
|6 months  |CMC-V-BCS-2002 |INDIA        |<48 cm     |        1|      5|   104|
|6 months  |CMC-V-BCS-2002 |INDIA        |[48-50) cm |        0|     37|   104|
|6 months  |CMC-V-BCS-2002 |INDIA        |[48-50) cm |        1|      3|   104|
|6 months  |CMIN           |BANGLADESH   |>=50 cm    |        0|      0|    12|
|6 months  |CMIN           |BANGLADESH   |>=50 cm    |        1|      0|    12|
|6 months  |CMIN           |BANGLADESH   |<48 cm     |        0|      6|    12|
|6 months  |CMIN           |BANGLADESH   |<48 cm     |        1|      1|    12|
|6 months  |CMIN           |BANGLADESH   |[48-50) cm |        0|      5|    12|
|6 months  |CMIN           |BANGLADESH   |[48-50) cm |        1|      0|    12|
|6 months  |COHORTS        |INDIA        |>=50 cm    |        0|   1324|  6135|
|6 months  |COHORTS        |INDIA        |>=50 cm    |        1|      6|  6135|
|6 months  |COHORTS        |INDIA        |<48 cm     |        0|   2302|  6135|
|6 months  |COHORTS        |INDIA        |<48 cm     |        1|    228|  6135|
|6 months  |COHORTS        |INDIA        |[48-50) cm |        0|   2238|  6135|
|6 months  |COHORTS        |INDIA        |[48-50) cm |        1|     37|  6135|
|6 months  |COHORTS        |GUATEMALA    |>=50 cm    |        0|    341|   688|
|6 months  |COHORTS        |GUATEMALA    |>=50 cm    |        1|     10|   688|
|6 months  |COHORTS        |GUATEMALA    |<48 cm     |        0|     90|   688|
|6 months  |COHORTS        |GUATEMALA    |<48 cm     |        1|     43|   688|
|6 months  |COHORTS        |GUATEMALA    |[48-50) cm |        0|    180|   688|
|6 months  |COHORTS        |GUATEMALA    |[48-50) cm |        1|     24|   688|
|6 months  |COHORTS        |PHILIPPINES  |>=50 cm    |        0|    977|  2701|
|6 months  |COHORTS        |PHILIPPINES  |>=50 cm    |        1|     13|  2701|
|6 months  |COHORTS        |PHILIPPINES  |<48 cm     |        0|    593|  2701|
|6 months  |COHORTS        |PHILIPPINES  |<48 cm     |        1|     84|  2701|
|6 months  |COHORTS        |PHILIPPINES  |[48-50) cm |        0|    999|  2701|
|6 months  |COHORTS        |PHILIPPINES  |[48-50) cm |        1|     35|  2701|
|6 months  |CONTENT        |PERU         |>=50 cm    |        0|      1|     2|
|6 months  |CONTENT        |PERU         |>=50 cm    |        1|      0|     2|
|6 months  |CONTENT        |PERU         |<48 cm     |        0|      1|     2|
|6 months  |CONTENT        |PERU         |<48 cm     |        1|      0|     2|
|6 months  |CONTENT        |PERU         |[48-50) cm |        0|      0|     2|
|6 months  |CONTENT        |PERU         |[48-50) cm |        1|      0|     2|
|6 months  |EE             |PAKISTAN     |>=50 cm    |        0|     22|   236|
|6 months  |EE             |PAKISTAN     |>=50 cm    |        1|      0|   236|
|6 months  |EE             |PAKISTAN     |<48 cm     |        0|    118|   236|
|6 months  |EE             |PAKISTAN     |<48 cm     |        1|     52|   236|
|6 months  |EE             |PAKISTAN     |[48-50) cm |        0|     43|   236|
|6 months  |EE             |PAKISTAN     |[48-50) cm |        1|      1|   236|
|6 months  |GMS-Nepal      |NEPAL        |>=50 cm    |        0|     87|   563|
|6 months  |GMS-Nepal      |NEPAL        |>=50 cm    |        1|      0|   563|
|6 months  |GMS-Nepal      |NEPAL        |<48 cm     |        0|    285|   563|
|6 months  |GMS-Nepal      |NEPAL        |<48 cm     |        1|     20|   563|
|6 months  |GMS-Nepal      |NEPAL        |[48-50) cm |        0|    170|   563|
|6 months  |GMS-Nepal      |NEPAL        |[48-50) cm |        1|      1|   563|
|6 months  |JiVitA-3       |BANGLADESH   |>=50 cm    |        0|    804| 13924|
|6 months  |JiVitA-3       |BANGLADESH   |>=50 cm    |        1|      3| 13924|
|6 months  |JiVitA-3       |BANGLADESH   |<48 cm     |        0|   9022| 13924|
|6 months  |JiVitA-3       |BANGLADESH   |<48 cm     |        1|    813| 13924|
|6 months  |JiVitA-3       |BANGLADESH   |[48-50) cm |        0|   3265| 13924|
|6 months  |JiVitA-3       |BANGLADESH   |[48-50) cm |        1|     17| 13924|
|6 months  |JiVitA-4       |BANGLADESH   |>=50 cm    |        0|   1073|  4020|
|6 months  |JiVitA-4       |BANGLADESH   |>=50 cm    |        1|     28|  4020|
|6 months  |JiVitA-4       |BANGLADESH   |<48 cm     |        0|   1750|  4020|
|6 months  |JiVitA-4       |BANGLADESH   |<48 cm     |        1|    173|  4020|
|6 months  |JiVitA-4       |BANGLADESH   |[48-50) cm |        0|    982|  4020|
|6 months  |JiVitA-4       |BANGLADESH   |[48-50) cm |        1|     14|  4020|
|6 months  |Keneba         |GAMBIA       |>=50 cm    |        0|    666|  1347|
|6 months  |Keneba         |GAMBIA       |>=50 cm    |        1|     11|  1347|
|6 months  |Keneba         |GAMBIA       |<48 cm     |        0|    219|  1347|
|6 months  |Keneba         |GAMBIA       |<48 cm     |        1|     15|  1347|
|6 months  |Keneba         |GAMBIA       |[48-50) cm |        0|    428|  1347|
|6 months  |Keneba         |GAMBIA       |[48-50) cm |        1|      8|  1347|
|6 months  |MAL-ED         |INDIA        |>=50 cm    |        0|      8|    41|
|6 months  |MAL-ED         |INDIA        |>=50 cm    |        1|      0|    41|
|6 months  |MAL-ED         |INDIA        |<48 cm     |        0|     19|    41|
|6 months  |MAL-ED         |INDIA        |<48 cm     |        1|      1|    41|
|6 months  |MAL-ED         |INDIA        |[48-50) cm |        0|     13|    41|
|6 months  |MAL-ED         |INDIA        |[48-50) cm |        1|      0|    41|
|6 months  |MAL-ED         |BANGLADESH   |>=50 cm    |        0|     35|   211|
|6 months  |MAL-ED         |BANGLADESH   |>=50 cm    |        1|      0|   211|
|6 months  |MAL-ED         |BANGLADESH   |<48 cm     |        0|     94|   211|
|6 months  |MAL-ED         |BANGLADESH   |<48 cm     |        1|      7|   211|
|6 months  |MAL-ED         |BANGLADESH   |[48-50) cm |        0|     75|   211|
|6 months  |MAL-ED         |BANGLADESH   |[48-50) cm |        1|      0|   211|
|6 months  |MAL-ED         |PERU         |>=50 cm    |        0|     38|   215|
|6 months  |MAL-ED         |PERU         |>=50 cm    |        1|      0|   215|
|6 months  |MAL-ED         |PERU         |<48 cm     |        0|     82|   215|
|6 months  |MAL-ED         |PERU         |<48 cm     |        1|      6|   215|
|6 months  |MAL-ED         |PERU         |[48-50) cm |        0|     88|   215|
|6 months  |MAL-ED         |PERU         |[48-50) cm |        1|      1|   215|
|6 months  |MAL-ED         |NEPAL        |>=50 cm    |        0|      7|    26|
|6 months  |MAL-ED         |NEPAL        |>=50 cm    |        1|      0|    26|
|6 months  |MAL-ED         |NEPAL        |<48 cm     |        0|     11|    26|
|6 months  |MAL-ED         |NEPAL        |<48 cm     |        1|      0|    26|
|6 months  |MAL-ED         |NEPAL        |[48-50) cm |        0|      8|    26|
|6 months  |MAL-ED         |NEPAL        |[48-50) cm |        1|      0|    26|
|6 months  |MAL-ED         |BRAZIL       |>=50 cm    |        0|     21|    59|
|6 months  |MAL-ED         |BRAZIL       |>=50 cm    |        1|      0|    59|
|6 months  |MAL-ED         |BRAZIL       |<48 cm     |        0|     16|    59|
|6 months  |MAL-ED         |BRAZIL       |<48 cm     |        1|      0|    59|
|6 months  |MAL-ED         |BRAZIL       |[48-50) cm |        0|     22|    59|
|6 months  |MAL-ED         |BRAZIL       |[48-50) cm |        1|      0|    59|
|6 months  |MAL-ED         |TANZANIA     |>=50 cm    |        0|     19|   118|
|6 months  |MAL-ED         |TANZANIA     |>=50 cm    |        1|      0|   118|
|6 months  |MAL-ED         |TANZANIA     |<48 cm     |        0|     36|   118|
|6 months  |MAL-ED         |TANZANIA     |<48 cm     |        1|      5|   118|
|6 months  |MAL-ED         |TANZANIA     |[48-50) cm |        0|     58|   118|
|6 months  |MAL-ED         |TANZANIA     |[48-50) cm |        1|      0|   118|
|6 months  |MAL-ED         |SOUTH AFRICA |>=50 cm    |        0|     29|    93|
|6 months  |MAL-ED         |SOUTH AFRICA |>=50 cm    |        1|      0|    93|
|6 months  |MAL-ED         |SOUTH AFRICA |<48 cm     |        0|     21|    93|
|6 months  |MAL-ED         |SOUTH AFRICA |<48 cm     |        1|      3|    93|
|6 months  |MAL-ED         |SOUTH AFRICA |[48-50) cm |        0|     40|    93|
|6 months  |MAL-ED         |SOUTH AFRICA |[48-50) cm |        1|      0|    93|
|6 months  |NIH-Birth      |BANGLADESH   |>=50 cm    |        0|    104|   518|
|6 months  |NIH-Birth      |BANGLADESH   |>=50 cm    |        1|      2|   518|
|6 months  |NIH-Birth      |BANGLADESH   |<48 cm     |        0|    181|   518|
|6 months  |NIH-Birth      |BANGLADESH   |<48 cm     |        1|     29|   518|
|6 months  |NIH-Birth      |BANGLADESH   |[48-50) cm |        0|    198|   518|
|6 months  |NIH-Birth      |BANGLADESH   |[48-50) cm |        1|      4|   518|
|6 months  |NIH-Crypto     |BANGLADESH   |>=50 cm    |        0|    164|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |>=50 cm    |        1|      0|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |<48 cm     |        0|    253|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |<48 cm     |        1|     17|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |[48-50) cm |        0|    275|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |[48-50) cm |        1|      6|   715|
|6 months  |PROBIT         |BELARUS      |>=50 cm    |        0|  14170| 15760|
|6 months  |PROBIT         |BELARUS      |>=50 cm    |        1|    125| 15760|
|6 months  |PROBIT         |BELARUS      |<48 cm     |        0|    158| 15760|
|6 months  |PROBIT         |BELARUS      |<48 cm     |        1|     14| 15760|
|6 months  |PROBIT         |BELARUS      |[48-50) cm |        0|   1255| 15760|
|6 months  |PROBIT         |BELARUS      |[48-50) cm |        1|     38| 15760|
|6 months  |PROVIDE        |BANGLADESH   |>=50 cm    |        0|    143|   604|
|6 months  |PROVIDE        |BANGLADESH   |>=50 cm    |        1|      0|   604|
|6 months  |PROVIDE        |BANGLADESH   |<48 cm     |        0|    202|   604|
|6 months  |PROVIDE        |BANGLADESH   |<48 cm     |        1|     11|   604|
|6 months  |PROVIDE        |BANGLADESH   |[48-50) cm |        0|    245|   604|
|6 months  |PROVIDE        |BANGLADESH   |[48-50) cm |        1|      3|   604|
|6 months  |ResPak         |PAKISTAN     |>=50 cm    |        0|      6|    34|
|6 months  |ResPak         |PAKISTAN     |>=50 cm    |        1|      2|    34|
|6 months  |ResPak         |PAKISTAN     |<48 cm     |        0|     10|    34|
|6 months  |ResPak         |PAKISTAN     |<48 cm     |        1|      6|    34|
|6 months  |ResPak         |PAKISTAN     |[48-50) cm |        0|      9|    34|
|6 months  |ResPak         |PAKISTAN     |[48-50) cm |        1|      1|    34|
|6 months  |SAS-CompFeed   |INDIA        |>=50 cm    |        0|    191|  1324|
|6 months  |SAS-CompFeed   |INDIA        |>=50 cm    |        1|      5|  1324|
|6 months  |SAS-CompFeed   |INDIA        |<48 cm     |        0|    600|  1324|
|6 months  |SAS-CompFeed   |INDIA        |<48 cm     |        1|    109|  1324|
|6 months  |SAS-CompFeed   |INDIA        |[48-50) cm |        0|    407|  1324|
|6 months  |SAS-CompFeed   |INDIA        |[48-50) cm |        1|     12|  1324|
|6 months  |Vellore Crypto |INDIA        |>=50 cm    |        0|    140|   389|
|6 months  |Vellore Crypto |INDIA        |>=50 cm    |        1|      2|   389|
|6 months  |Vellore Crypto |INDIA        |<48 cm     |        0|     91|   389|
|6 months  |Vellore Crypto |INDIA        |<48 cm     |        1|     18|   389|
|6 months  |Vellore Crypto |INDIA        |[48-50) cm |        0|    130|   389|
|6 months  |Vellore Crypto |INDIA        |[48-50) cm |        1|      8|   389|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=50 cm    |        0|   2502|  8577|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=50 cm    |        1|     36|  8577|
|6 months  |ZVITAMBO       |ZIMBABWE     |<48 cm     |        0|   2486|  8577|
|6 months  |ZVITAMBO       |ZIMBABWE     |<48 cm     |        1|    194|  8577|
|6 months  |ZVITAMBO       |ZIMBABWE     |[48-50) cm |        0|   3242|  8577|
|6 months  |ZVITAMBO       |ZIMBABWE     |[48-50) cm |        1|    117|  8577|
|24 months |CMC-V-BCS-2002 |INDIA        |>=50 cm    |        0|     14|   106|
|24 months |CMC-V-BCS-2002 |INDIA        |>=50 cm    |        1|      2|   106|
|24 months |CMC-V-BCS-2002 |INDIA        |<48 cm     |        0|     32|   106|
|24 months |CMC-V-BCS-2002 |INDIA        |<48 cm     |        1|     18|   106|
|24 months |CMC-V-BCS-2002 |INDIA        |[48-50) cm |        0|     28|   106|
|24 months |CMC-V-BCS-2002 |INDIA        |[48-50) cm |        1|     12|   106|
|24 months |CMIN           |BANGLADESH   |>=50 cm    |        0|      0|    11|
|24 months |CMIN           |BANGLADESH   |>=50 cm    |        1|      0|    11|
|24 months |CMIN           |BANGLADESH   |<48 cm     |        0|      2|    11|
|24 months |CMIN           |BANGLADESH   |<48 cm     |        1|      4|    11|
|24 months |CMIN           |BANGLADESH   |[48-50) cm |        0|      5|    11|
|24 months |CMIN           |BANGLADESH   |[48-50) cm |        1|      0|    11|
|24 months |COHORTS        |INDIA        |>=50 cm    |        0|    973|  4758|
|24 months |COHORTS        |INDIA        |>=50 cm    |        1|     74|  4758|
|24 months |COHORTS        |INDIA        |<48 cm     |        0|   1215|  4758|
|24 months |COHORTS        |INDIA        |<48 cm     |        1|    719|  4758|
|24 months |COHORTS        |INDIA        |[48-50) cm |        0|   1474|  4758|
|24 months |COHORTS        |INDIA        |[48-50) cm |        1|    303|  4758|
|24 months |COHORTS        |GUATEMALA    |>=50 cm    |        0|    180|   560|
|24 months |COHORTS        |GUATEMALA    |>=50 cm    |        1|     83|   560|
|24 months |COHORTS        |GUATEMALA    |<48 cm     |        0|     40|   560|
|24 months |COHORTS        |GUATEMALA    |<48 cm     |        1|     80|   560|
|24 months |COHORTS        |GUATEMALA    |[48-50) cm |        0|     78|   560|
|24 months |COHORTS        |GUATEMALA    |[48-50) cm |        1|     99|   560|
|24 months |COHORTS        |PHILIPPINES  |>=50 cm    |        0|    752|  2442|
|24 months |COHORTS        |PHILIPPINES  |>=50 cm    |        1|    145|  2442|
|24 months |COHORTS        |PHILIPPINES  |<48 cm     |        0|    329|  2442|
|24 months |COHORTS        |PHILIPPINES  |<48 cm     |        1|    275|  2442|
|24 months |COHORTS        |PHILIPPINES  |[48-50) cm |        0|    655|  2442|
|24 months |COHORTS        |PHILIPPINES  |[48-50) cm |        1|    286|  2442|
|24 months |CONTENT        |PERU         |>=50 cm    |        0|      1|     2|
|24 months |CONTENT        |PERU         |>=50 cm    |        1|      0|     2|
|24 months |CONTENT        |PERU         |<48 cm     |        0|      1|     2|
|24 months |CONTENT        |PERU         |<48 cm     |        1|      0|     2|
|24 months |CONTENT        |PERU         |[48-50) cm |        0|      0|     2|
|24 months |CONTENT        |PERU         |[48-50) cm |        1|      0|     2|
|24 months |EE             |PAKISTAN     |>=50 cm    |        0|     10|   106|
|24 months |EE             |PAKISTAN     |>=50 cm    |        1|      0|   106|
|24 months |EE             |PAKISTAN     |<48 cm     |        0|     44|   106|
|24 months |EE             |PAKISTAN     |<48 cm     |        1|     30|   106|
|24 months |EE             |PAKISTAN     |[48-50) cm |        0|     13|   106|
|24 months |EE             |PAKISTAN     |[48-50) cm |        1|      9|   106|
|24 months |GMS-Nepal      |NEPAL        |>=50 cm    |        0|     72|   487|
|24 months |GMS-Nepal      |NEPAL        |>=50 cm    |        1|      4|   487|
|24 months |GMS-Nepal      |NEPAL        |<48 cm     |        0|    213|   487|
|24 months |GMS-Nepal      |NEPAL        |<48 cm     |        1|     42|   487|
|24 months |GMS-Nepal      |NEPAL        |[48-50) cm |        0|    149|   487|
|24 months |GMS-Nepal      |NEPAL        |[48-50) cm |        1|      7|   487|
|24 months |JiVitA-3       |BANGLADESH   |>=50 cm    |        0|    389|  7184|
|24 months |JiVitA-3       |BANGLADESH   |>=50 cm    |        1|      6|  7184|
|24 months |JiVitA-3       |BANGLADESH   |<48 cm     |        0|   4002|  7184|
|24 months |JiVitA-3       |BANGLADESH   |<48 cm     |        1|   1073|  7184|
|24 months |JiVitA-3       |BANGLADESH   |[48-50) cm |        0|   1650|  7184|
|24 months |JiVitA-3       |BANGLADESH   |[48-50) cm |        1|     64|  7184|
|24 months |JiVitA-4       |BANGLADESH   |>=50 cm    |        0|   1030|  3987|
|24 months |JiVitA-4       |BANGLADESH   |>=50 cm    |        1|     47|  3987|
|24 months |JiVitA-4       |BANGLADESH   |<48 cm     |        0|   1671|  3987|
|24 months |JiVitA-4       |BANGLADESH   |<48 cm     |        1|    273|  3987|
|24 months |JiVitA-4       |BANGLADESH   |[48-50) cm |        0|    914|  3987|
|24 months |JiVitA-4       |BANGLADESH   |[48-50) cm |        1|     52|  3987|
|24 months |Keneba         |GAMBIA       |>=50 cm    |        0|    514|  1065|
|24 months |Keneba         |GAMBIA       |>=50 cm    |        1|     21|  1065|
|24 months |Keneba         |GAMBIA       |<48 cm     |        0|    172|  1065|
|24 months |Keneba         |GAMBIA       |<48 cm     |        1|     24|  1065|
|24 months |Keneba         |GAMBIA       |[48-50) cm |        0|    296|  1065|
|24 months |Keneba         |GAMBIA       |[48-50) cm |        1|     38|  1065|
|24 months |MAL-ED         |INDIA        |>=50 cm    |        0|      6|    39|
|24 months |MAL-ED         |INDIA        |>=50 cm    |        1|      0|    39|
|24 months |MAL-ED         |INDIA        |<48 cm     |        0|     13|    39|
|24 months |MAL-ED         |INDIA        |<48 cm     |        1|      7|    39|
|24 months |MAL-ED         |INDIA        |[48-50) cm |        0|     12|    39|
|24 months |MAL-ED         |INDIA        |[48-50) cm |        1|      1|    39|
|24 months |MAL-ED         |BANGLADESH   |>=50 cm    |        0|     34|   187|
|24 months |MAL-ED         |BANGLADESH   |>=50 cm    |        1|      1|   187|
|24 months |MAL-ED         |BANGLADESH   |<48 cm     |        0|     66|   187|
|24 months |MAL-ED         |BANGLADESH   |<48 cm     |        1|     17|   187|
|24 months |MAL-ED         |BANGLADESH   |[48-50) cm |        0|     65|   187|
|24 months |MAL-ED         |BANGLADESH   |[48-50) cm |        1|      4|   187|
|24 months |MAL-ED         |PERU         |>=50 cm    |        0|     27|   160|
|24 months |MAL-ED         |PERU         |>=50 cm    |        1|      1|   160|
|24 months |MAL-ED         |PERU         |<48 cm     |        0|     61|   160|
|24 months |MAL-ED         |PERU         |<48 cm     |        1|     10|   160|
|24 months |MAL-ED         |PERU         |[48-50) cm |        0|     61|   160|
|24 months |MAL-ED         |PERU         |[48-50) cm |        1|      0|   160|
|24 months |MAL-ED         |NEPAL        |>=50 cm    |        0|      7|    26|
|24 months |MAL-ED         |NEPAL        |>=50 cm    |        1|      0|    26|
|24 months |MAL-ED         |NEPAL        |<48 cm     |        0|     11|    26|
|24 months |MAL-ED         |NEPAL        |<48 cm     |        1|      0|    26|
|24 months |MAL-ED         |NEPAL        |[48-50) cm |        0|      8|    26|
|24 months |MAL-ED         |NEPAL        |[48-50) cm |        1|      0|    26|
|24 months |MAL-ED         |BRAZIL       |>=50 cm    |        0|     17|    42|
|24 months |MAL-ED         |BRAZIL       |>=50 cm    |        1|      0|    42|
|24 months |MAL-ED         |BRAZIL       |<48 cm     |        0|     11|    42|
|24 months |MAL-ED         |BRAZIL       |<48 cm     |        1|      0|    42|
|24 months |MAL-ED         |BRAZIL       |[48-50) cm |        0|     14|    42|
|24 months |MAL-ED         |BRAZIL       |[48-50) cm |        1|      0|    42|
|24 months |MAL-ED         |TANZANIA     |>=50 cm    |        0|     15|   104|
|24 months |MAL-ED         |TANZANIA     |>=50 cm    |        1|      2|   104|
|24 months |MAL-ED         |TANZANIA     |<48 cm     |        0|     24|   104|
|24 months |MAL-ED         |TANZANIA     |<48 cm     |        1|     12|   104|
|24 months |MAL-ED         |TANZANIA     |[48-50) cm |        0|     38|   104|
|24 months |MAL-ED         |TANZANIA     |[48-50) cm |        1|     13|   104|
|24 months |MAL-ED         |SOUTH AFRICA |>=50 cm    |        0|     26|    91|
|24 months |MAL-ED         |SOUTH AFRICA |>=50 cm    |        1|      1|    91|
|24 months |MAL-ED         |SOUTH AFRICA |<48 cm     |        0|     21|    91|
|24 months |MAL-ED         |SOUTH AFRICA |<48 cm     |        1|      3|    91|
|24 months |MAL-ED         |SOUTH AFRICA |[48-50) cm |        0|     35|    91|
|24 months |MAL-ED         |SOUTH AFRICA |[48-50) cm |        1|      5|    91|
|24 months |NIH-Birth      |BANGLADESH   |>=50 cm    |        0|     82|   414|
|24 months |NIH-Birth      |BANGLADESH   |>=50 cm    |        1|      7|   414|
|24 months |NIH-Birth      |BANGLADESH   |<48 cm     |        0|    103|   414|
|24 months |NIH-Birth      |BANGLADESH   |<48 cm     |        1|     63|   414|
|24 months |NIH-Birth      |BANGLADESH   |[48-50) cm |        0|    135|   414|
|24 months |NIH-Birth      |BANGLADESH   |[48-50) cm |        1|     24|   414|
|24 months |NIH-Crypto     |BANGLADESH   |>=50 cm    |        0|    128|   514|
|24 months |NIH-Crypto     |BANGLADESH   |>=50 cm    |        1|      0|   514|
|24 months |NIH-Crypto     |BANGLADESH   |<48 cm     |        0|    172|   514|
|24 months |NIH-Crypto     |BANGLADESH   |<48 cm     |        1|     28|   514|
|24 months |NIH-Crypto     |BANGLADESH   |[48-50) cm |        0|    178|   514|
|24 months |NIH-Crypto     |BANGLADESH   |[48-50) cm |        1|      8|   514|
|24 months |PROBIT         |BELARUS      |>=50 cm    |        0|   3631|  4035|
|24 months |PROBIT         |BELARUS      |>=50 cm    |        1|     52|  4035|
|24 months |PROBIT         |BELARUS      |<48 cm     |        0|     41|  4035|
|24 months |PROBIT         |BELARUS      |<48 cm     |        1|      3|  4035|
|24 months |PROBIT         |BELARUS      |[48-50) cm |        0|    298|  4035|
|24 months |PROBIT         |BELARUS      |[48-50) cm |        1|     10|  4035|
|24 months |PROVIDE        |BANGLADESH   |>=50 cm    |        0|    137|   578|
|24 months |PROVIDE        |BANGLADESH   |>=50 cm    |        1|      2|   578|
|24 months |PROVIDE        |BANGLADESH   |<48 cm     |        0|    165|   578|
|24 months |PROVIDE        |BANGLADESH   |<48 cm     |        1|     41|   578|
|24 months |PROVIDE        |BANGLADESH   |[48-50) cm |        0|    224|   578|
|24 months |PROVIDE        |BANGLADESH   |[48-50) cm |        1|      9|   578|
|24 months |Vellore Crypto |INDIA        |>=50 cm    |        0|    130|   390|
|24 months |Vellore Crypto |INDIA        |>=50 cm    |        1|     12|   390|
|24 months |Vellore Crypto |INDIA        |<48 cm     |        0|     91|   390|
|24 months |Vellore Crypto |INDIA        |<48 cm     |        1|     19|   390|
|24 months |Vellore Crypto |INDIA        |[48-50) cm |        0|    130|   390|
|24 months |Vellore Crypto |INDIA        |[48-50) cm |        1|      8|   390|
|24 months |ZVITAMBO       |ZIMBABWE     |>=50 cm    |        0|    296|  1608|
|24 months |ZVITAMBO       |ZIMBABWE     |>=50 cm    |        1|     16|  1608|
|24 months |ZVITAMBO       |ZIMBABWE     |<48 cm     |        0|    599|  1608|
|24 months |ZVITAMBO       |ZIMBABWE     |<48 cm     |        1|    112|  1608|
|24 months |ZVITAMBO       |ZIMBABWE     |[48-50) cm |        0|    539|  1608|
|24 months |ZVITAMBO       |ZIMBABWE     |[48-50) cm |        1|     46|  1608|


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


