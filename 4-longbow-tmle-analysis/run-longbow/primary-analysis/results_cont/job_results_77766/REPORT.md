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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** birthlen

**Adjustment Set:**

* sex
* arm
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_arm
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* syntype
* agecat
* studyid
* country

## Data Summary

|syntype |agecat    |studyid        |country      |birthlen   | n_cell|     n|
|:-------|:---------|:--------------|:------------|:----------|------:|-----:|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA        |>=50 cm    |     14|    92|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA        |<48 cm     |     38|    92|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA        |[48-50) cm |     40|    92|
|BC      |Birth     |CMIN           |BANGLADESH   |>=50 cm    |      2|    26|
|BC      |Birth     |CMIN           |BANGLADESH   |<48 cm     |     19|    26|
|BC      |Birth     |CMIN           |BANGLADESH   |[48-50) cm |      5|    26|
|BC      |Birth     |COHORTS        |INDIA        |>=50 cm    |   1426|  6640|
|BC      |Birth     |COHORTS        |INDIA        |<48 cm     |   2774|  6640|
|BC      |Birth     |COHORTS        |INDIA        |[48-50) cm |   2440|  6640|
|BC      |Birth     |COHORTS        |GUATEMALA    |>=50 cm    |    437|   852|
|BC      |Birth     |COHORTS        |GUATEMALA    |<48 cm     |    163|   852|
|BC      |Birth     |COHORTS        |GUATEMALA    |[48-50) cm |    252|   852|
|BC      |Birth     |COHORTS        |PHILIPPINES  |>=50 cm    |   1129|  3050|
|BC      |Birth     |COHORTS        |PHILIPPINES  |<48 cm     |    762|  3050|
|BC      |Birth     |COHORTS        |PHILIPPINES  |[48-50) cm |   1159|  3050|
|BC      |Birth     |CONTENT        |PERU         |>=50 cm    |      1|     2|
|BC      |Birth     |CONTENT        |PERU         |<48 cm     |      1|     2|
|BC      |Birth     |CONTENT        |PERU         |[48-50) cm |      0|     2|
|BC      |Birth     |EE             |PAKISTAN     |>=50 cm    |     22|   240|
|BC      |Birth     |EE             |PAKISTAN     |<48 cm     |    172|   240|
|BC      |Birth     |EE             |PAKISTAN     |[48-50) cm |     46|   240|
|BC      |Birth     |GMS-Nepal      |NEPAL        |>=50 cm    |    104|   696|
|BC      |Birth     |GMS-Nepal      |NEPAL        |<48 cm     |    384|   696|
|BC      |Birth     |GMS-Nepal      |NEPAL        |[48-50) cm |    208|   696|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |>=50 cm    |   1228| 22455|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |<48 cm     |  16136| 22455|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |[48-50) cm |   5091| 22455|
|BC      |Birth     |JiVitA-4       |BANGLADESH   |>=50 cm    |    178|  2823|
|BC      |Birth     |JiVitA-4       |BANGLADESH   |<48 cm     |   1913|  2823|
|BC      |Birth     |JiVitA-4       |BANGLADESH   |[48-50) cm |    732|  2823|
|BC      |Birth     |Keneba         |GAMBIA       |>=50 cm    |    763|  1543|
|BC      |Birth     |Keneba         |GAMBIA       |<48 cm     |    285|  1543|
|BC      |Birth     |Keneba         |GAMBIA       |[48-50) cm |    495|  1543|
|BC      |Birth     |MAL-ED         |INDIA        |>=50 cm    |      9|    47|
|BC      |Birth     |MAL-ED         |INDIA        |<48 cm     |     22|    47|
|BC      |Birth     |MAL-ED         |INDIA        |[48-50) cm |     16|    47|
|BC      |Birth     |MAL-ED         |BANGLADESH   |>=50 cm    |     35|   231|
|BC      |Birth     |MAL-ED         |BANGLADESH   |<48 cm     |    117|   231|
|BC      |Birth     |MAL-ED         |BANGLADESH   |[48-50) cm |     79|   231|
|BC      |Birth     |MAL-ED         |PERU         |>=50 cm    |     41|   233|
|BC      |Birth     |MAL-ED         |PERU         |<48 cm     |     92|   233|
|BC      |Birth     |MAL-ED         |PERU         |[48-50) cm |    100|   233|
|BC      |Birth     |MAL-ED         |NEPAL        |>=50 cm    |      7|    27|
|BC      |Birth     |MAL-ED         |NEPAL        |<48 cm     |     12|    27|
|BC      |Birth     |MAL-ED         |NEPAL        |[48-50) cm |      8|    27|
|BC      |Birth     |MAL-ED         |BRAZIL       |>=50 cm    |     23|    65|
|BC      |Birth     |MAL-ED         |BRAZIL       |<48 cm     |     18|    65|
|BC      |Birth     |MAL-ED         |BRAZIL       |[48-50) cm |     24|    65|
|BC      |Birth     |MAL-ED         |TANZANIA     |>=50 cm    |     20|   125|
|BC      |Birth     |MAL-ED         |TANZANIA     |<48 cm     |     44|   125|
|BC      |Birth     |MAL-ED         |TANZANIA     |[48-50) cm |     61|   125|
|BC      |Birth     |MAL-ED         |SOUTH AFRICA |>=50 cm    |     35|   123|
|BC      |Birth     |MAL-ED         |SOUTH AFRICA |<48 cm     |     36|   123|
|BC      |Birth     |MAL-ED         |SOUTH AFRICA |[48-50) cm |     52|   123|
|BC      |Birth     |NIH-Birth      |BANGLADESH   |>=50 cm    |    124|   608|
|BC      |Birth     |NIH-Birth      |BANGLADESH   |<48 cm     |    253|   608|
|BC      |Birth     |NIH-Birth      |BANGLADESH   |[48-50) cm |    231|   608|
|BC      |Birth     |NIH-Crypto     |BANGLADESH   |>=50 cm    |    161|   732|
|BC      |Birth     |NIH-Crypto     |BANGLADESH   |<48 cm     |    287|   732|
|BC      |Birth     |NIH-Crypto     |BANGLADESH   |[48-50) cm |    284|   732|
|BC      |Birth     |PROBIT         |BELARUS      |>=50 cm    |  12626| 13893|
|BC      |Birth     |PROBIT         |BELARUS      |<48 cm     |    147| 13893|
|BC      |Birth     |PROBIT         |BELARUS      |[48-50) cm |   1120| 13893|
|BC      |Birth     |PROVIDE        |BANGLADESH   |>=50 cm    |    121|   539|
|BC      |Birth     |PROVIDE        |BANGLADESH   |<48 cm     |    196|   539|
|BC      |Birth     |PROVIDE        |BANGLADESH   |[48-50) cm |    222|   539|
|BC      |Birth     |ResPak         |PAKISTAN     |>=50 cm    |     10|    42|
|BC      |Birth     |ResPak         |PAKISTAN     |<48 cm     |     19|    42|
|BC      |Birth     |ResPak         |PAKISTAN     |[48-50) cm |     13|    42|
|BC      |Birth     |SAS-CompFeed   |INDIA        |>=50 cm    |    116|  1252|
|BC      |Birth     |SAS-CompFeed   |INDIA        |<48 cm     |    738|  1252|
|BC      |Birth     |SAS-CompFeed   |INDIA        |[48-50) cm |    398|  1252|
|BC      |Birth     |Vellore Crypto |INDIA        |>=50 cm    |    142|   388|
|BC      |Birth     |Vellore Crypto |INDIA        |<48 cm     |    108|   388|
|BC      |Birth     |Vellore Crypto |INDIA        |[48-50) cm |    138|   388|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE     |>=50 cm    |   4125| 13875|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE     |<48 cm     |   4409| 13875|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE     |[48-50) cm |   5341| 13875|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA        |>=50 cm    |     16|   104|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA        |<48 cm     |     48|   104|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA        |[48-50) cm |     40|   104|
|BC      |6 months  |CMIN           |BANGLADESH   |>=50 cm    |      0|    12|
|BC      |6 months  |CMIN           |BANGLADESH   |<48 cm     |      7|    12|
|BC      |6 months  |CMIN           |BANGLADESH   |[48-50) cm |      5|    12|
|BC      |6 months  |COHORTS        |INDIA        |>=50 cm    |   1330|  6135|
|BC      |6 months  |COHORTS        |INDIA        |<48 cm     |   2530|  6135|
|BC      |6 months  |COHORTS        |INDIA        |[48-50) cm |   2275|  6135|
|BC      |6 months  |COHORTS        |GUATEMALA    |>=50 cm    |    351|   688|
|BC      |6 months  |COHORTS        |GUATEMALA    |<48 cm     |    133|   688|
|BC      |6 months  |COHORTS        |GUATEMALA    |[48-50) cm |    204|   688|
|BC      |6 months  |COHORTS        |PHILIPPINES  |>=50 cm    |    990|  2701|
|BC      |6 months  |COHORTS        |PHILIPPINES  |<48 cm     |    677|  2701|
|BC      |6 months  |COHORTS        |PHILIPPINES  |[48-50) cm |   1034|  2701|
|BC      |6 months  |CONTENT        |PERU         |>=50 cm    |      1|     2|
|BC      |6 months  |CONTENT        |PERU         |<48 cm     |      1|     2|
|BC      |6 months  |CONTENT        |PERU         |[48-50) cm |      0|     2|
|BC      |6 months  |EE             |PAKISTAN     |>=50 cm    |     22|   236|
|BC      |6 months  |EE             |PAKISTAN     |<48 cm     |    170|   236|
|BC      |6 months  |EE             |PAKISTAN     |[48-50) cm |     44|   236|
|BC      |6 months  |GMS-Nepal      |NEPAL        |>=50 cm    |     87|   563|
|BC      |6 months  |GMS-Nepal      |NEPAL        |<48 cm     |    305|   563|
|BC      |6 months  |GMS-Nepal      |NEPAL        |[48-50) cm |    171|   563|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |>=50 cm    |    807| 13924|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |<48 cm     |   9835| 13924|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |[48-50) cm |   3282| 13924|
|BC      |6 months  |JiVitA-4       |BANGLADESH   |>=50 cm    |   1101|  4020|
|BC      |6 months  |JiVitA-4       |BANGLADESH   |<48 cm     |   1923|  4020|
|BC      |6 months  |JiVitA-4       |BANGLADESH   |[48-50) cm |    996|  4020|
|BC      |6 months  |Keneba         |GAMBIA       |>=50 cm    |    677|  1347|
|BC      |6 months  |Keneba         |GAMBIA       |<48 cm     |    234|  1347|
|BC      |6 months  |Keneba         |GAMBIA       |[48-50) cm |    436|  1347|
|BC      |6 months  |MAL-ED         |INDIA        |>=50 cm    |      8|    41|
|BC      |6 months  |MAL-ED         |INDIA        |<48 cm     |     20|    41|
|BC      |6 months  |MAL-ED         |INDIA        |[48-50) cm |     13|    41|
|BC      |6 months  |MAL-ED         |BANGLADESH   |>=50 cm    |     35|   211|
|BC      |6 months  |MAL-ED         |BANGLADESH   |<48 cm     |    101|   211|
|BC      |6 months  |MAL-ED         |BANGLADESH   |[48-50) cm |     75|   211|
|BC      |6 months  |MAL-ED         |PERU         |>=50 cm    |     38|   215|
|BC      |6 months  |MAL-ED         |PERU         |<48 cm     |     88|   215|
|BC      |6 months  |MAL-ED         |PERU         |[48-50) cm |     89|   215|
|BC      |6 months  |MAL-ED         |NEPAL        |>=50 cm    |      7|    26|
|BC      |6 months  |MAL-ED         |NEPAL        |<48 cm     |     11|    26|
|BC      |6 months  |MAL-ED         |NEPAL        |[48-50) cm |      8|    26|
|BC      |6 months  |MAL-ED         |BRAZIL       |>=50 cm    |     21|    59|
|BC      |6 months  |MAL-ED         |BRAZIL       |<48 cm     |     16|    59|
|BC      |6 months  |MAL-ED         |BRAZIL       |[48-50) cm |     22|    59|
|BC      |6 months  |MAL-ED         |TANZANIA     |>=50 cm    |     19|   118|
|BC      |6 months  |MAL-ED         |TANZANIA     |<48 cm     |     41|   118|
|BC      |6 months  |MAL-ED         |TANZANIA     |[48-50) cm |     58|   118|
|BC      |6 months  |MAL-ED         |SOUTH AFRICA |>=50 cm    |     29|    93|
|BC      |6 months  |MAL-ED         |SOUTH AFRICA |<48 cm     |     24|    93|
|BC      |6 months  |MAL-ED         |SOUTH AFRICA |[48-50) cm |     40|    93|
|BC      |6 months  |NIH-Birth      |BANGLADESH   |>=50 cm    |    106|   518|
|BC      |6 months  |NIH-Birth      |BANGLADESH   |<48 cm     |    210|   518|
|BC      |6 months  |NIH-Birth      |BANGLADESH   |[48-50) cm |    202|   518|
|BC      |6 months  |NIH-Crypto     |BANGLADESH   |>=50 cm    |    164|   715|
|BC      |6 months  |NIH-Crypto     |BANGLADESH   |<48 cm     |    270|   715|
|BC      |6 months  |NIH-Crypto     |BANGLADESH   |[48-50) cm |    281|   715|
|BC      |6 months  |PROBIT         |BELARUS      |>=50 cm    |  14295| 15760|
|BC      |6 months  |PROBIT         |BELARUS      |<48 cm     |    172| 15760|
|BC      |6 months  |PROBIT         |BELARUS      |[48-50) cm |   1293| 15760|
|BC      |6 months  |PROVIDE        |BANGLADESH   |>=50 cm    |    143|   604|
|BC      |6 months  |PROVIDE        |BANGLADESH   |<48 cm     |    213|   604|
|BC      |6 months  |PROVIDE        |BANGLADESH   |[48-50) cm |    248|   604|
|BC      |6 months  |ResPak         |PAKISTAN     |>=50 cm    |      8|    34|
|BC      |6 months  |ResPak         |PAKISTAN     |<48 cm     |     16|    34|
|BC      |6 months  |ResPak         |PAKISTAN     |[48-50) cm |     10|    34|
|BC      |6 months  |SAS-CompFeed   |INDIA        |>=50 cm    |    196|  1324|
|BC      |6 months  |SAS-CompFeed   |INDIA        |<48 cm     |    709|  1324|
|BC      |6 months  |SAS-CompFeed   |INDIA        |[48-50) cm |    419|  1324|
|BC      |6 months  |Vellore Crypto |INDIA        |>=50 cm    |    142|   389|
|BC      |6 months  |Vellore Crypto |INDIA        |<48 cm     |    109|   389|
|BC      |6 months  |Vellore Crypto |INDIA        |[48-50) cm |    138|   389|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE     |>=50 cm    |   2538|  8577|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE     |<48 cm     |   2680|  8577|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE     |[48-50) cm |   3359|  8577|
|BC      |24 months |CMC-V-BCS-2002 |INDIA        |>=50 cm    |     16|   106|
|BC      |24 months |CMC-V-BCS-2002 |INDIA        |<48 cm     |     50|   106|
|BC      |24 months |CMC-V-BCS-2002 |INDIA        |[48-50) cm |     40|   106|
|BC      |24 months |CMIN           |BANGLADESH   |>=50 cm    |      0|    11|
|BC      |24 months |CMIN           |BANGLADESH   |<48 cm     |      6|    11|
|BC      |24 months |CMIN           |BANGLADESH   |[48-50) cm |      5|    11|
|BC      |24 months |COHORTS        |INDIA        |>=50 cm    |   1047|  4758|
|BC      |24 months |COHORTS        |INDIA        |<48 cm     |   1934|  4758|
|BC      |24 months |COHORTS        |INDIA        |[48-50) cm |   1777|  4758|
|BC      |24 months |COHORTS        |GUATEMALA    |>=50 cm    |    263|   560|
|BC      |24 months |COHORTS        |GUATEMALA    |<48 cm     |    120|   560|
|BC      |24 months |COHORTS        |GUATEMALA    |[48-50) cm |    177|   560|
|BC      |24 months |COHORTS        |PHILIPPINES  |>=50 cm    |    897|  2442|
|BC      |24 months |COHORTS        |PHILIPPINES  |<48 cm     |    604|  2442|
|BC      |24 months |COHORTS        |PHILIPPINES  |[48-50) cm |    941|  2442|
|BC      |24 months |CONTENT        |PERU         |>=50 cm    |      1|     2|
|BC      |24 months |CONTENT        |PERU         |<48 cm     |      1|     2|
|BC      |24 months |CONTENT        |PERU         |[48-50) cm |      0|     2|
|BC      |24 months |EE             |PAKISTAN     |>=50 cm    |     10|   106|
|BC      |24 months |EE             |PAKISTAN     |<48 cm     |     74|   106|
|BC      |24 months |EE             |PAKISTAN     |[48-50) cm |     22|   106|
|BC      |24 months |GMS-Nepal      |NEPAL        |>=50 cm    |     76|   487|
|BC      |24 months |GMS-Nepal      |NEPAL        |<48 cm     |    255|   487|
|BC      |24 months |GMS-Nepal      |NEPAL        |[48-50) cm |    156|   487|
|BC      |24 months |JiVitA-3       |BANGLADESH   |>=50 cm    |    395|  7184|
|BC      |24 months |JiVitA-3       |BANGLADESH   |<48 cm     |   5075|  7184|
|BC      |24 months |JiVitA-3       |BANGLADESH   |[48-50) cm |   1714|  7184|
|BC      |24 months |JiVitA-4       |BANGLADESH   |>=50 cm    |   1077|  3987|
|BC      |24 months |JiVitA-4       |BANGLADESH   |<48 cm     |   1944|  3987|
|BC      |24 months |JiVitA-4       |BANGLADESH   |[48-50) cm |    966|  3987|
|BC      |24 months |Keneba         |GAMBIA       |>=50 cm    |    535|  1065|
|BC      |24 months |Keneba         |GAMBIA       |<48 cm     |    196|  1065|
|BC      |24 months |Keneba         |GAMBIA       |[48-50) cm |    334|  1065|
|BC      |24 months |MAL-ED         |INDIA        |>=50 cm    |      6|    39|
|BC      |24 months |MAL-ED         |INDIA        |<48 cm     |     20|    39|
|BC      |24 months |MAL-ED         |INDIA        |[48-50) cm |     13|    39|
|BC      |24 months |MAL-ED         |BANGLADESH   |>=50 cm    |     35|   187|
|BC      |24 months |MAL-ED         |BANGLADESH   |<48 cm     |     83|   187|
|BC      |24 months |MAL-ED         |BANGLADESH   |[48-50) cm |     69|   187|
|BC      |24 months |MAL-ED         |PERU         |>=50 cm    |     28|   160|
|BC      |24 months |MAL-ED         |PERU         |<48 cm     |     71|   160|
|BC      |24 months |MAL-ED         |PERU         |[48-50) cm |     61|   160|
|BC      |24 months |MAL-ED         |NEPAL        |>=50 cm    |      7|    26|
|BC      |24 months |MAL-ED         |NEPAL        |<48 cm     |     11|    26|
|BC      |24 months |MAL-ED         |NEPAL        |[48-50) cm |      8|    26|
|BC      |24 months |MAL-ED         |BRAZIL       |>=50 cm    |     17|    42|
|BC      |24 months |MAL-ED         |BRAZIL       |<48 cm     |     11|    42|
|BC      |24 months |MAL-ED         |BRAZIL       |[48-50) cm |     14|    42|
|BC      |24 months |MAL-ED         |TANZANIA     |>=50 cm    |     17|   104|
|BC      |24 months |MAL-ED         |TANZANIA     |<48 cm     |     36|   104|
|BC      |24 months |MAL-ED         |TANZANIA     |[48-50) cm |     51|   104|
|BC      |24 months |MAL-ED         |SOUTH AFRICA |>=50 cm    |     27|    91|
|BC      |24 months |MAL-ED         |SOUTH AFRICA |<48 cm     |     24|    91|
|BC      |24 months |MAL-ED         |SOUTH AFRICA |[48-50) cm |     40|    91|
|BC      |24 months |NIH-Birth      |BANGLADESH   |>=50 cm    |     89|   414|
|BC      |24 months |NIH-Birth      |BANGLADESH   |<48 cm     |    166|   414|
|BC      |24 months |NIH-Birth      |BANGLADESH   |[48-50) cm |    159|   414|
|BC      |24 months |NIH-Crypto     |BANGLADESH   |>=50 cm    |    128|   514|
|BC      |24 months |NIH-Crypto     |BANGLADESH   |<48 cm     |    200|   514|
|BC      |24 months |NIH-Crypto     |BANGLADESH   |[48-50) cm |    186|   514|
|BC      |24 months |PROBIT         |BELARUS      |>=50 cm    |   3683|  4035|
|BC      |24 months |PROBIT         |BELARUS      |<48 cm     |     44|  4035|
|BC      |24 months |PROBIT         |BELARUS      |[48-50) cm |    308|  4035|
|BC      |24 months |PROVIDE        |BANGLADESH   |>=50 cm    |    139|   578|
|BC      |24 months |PROVIDE        |BANGLADESH   |<48 cm     |    206|   578|
|BC      |24 months |PROVIDE        |BANGLADESH   |[48-50) cm |    233|   578|
|BC      |24 months |Vellore Crypto |INDIA        |>=50 cm    |    142|   390|
|BC      |24 months |Vellore Crypto |INDIA        |<48 cm     |    110|   390|
|BC      |24 months |Vellore Crypto |INDIA        |[48-50) cm |    138|   390|
|BC      |24 months |ZVITAMBO       |ZIMBABWE     |>=50 cm    |    312|  1608|
|BC      |24 months |ZVITAMBO       |ZIMBABWE     |<48 cm     |    711|  1608|
|BC      |24 months |ZVITAMBO       |ZIMBABWE     |[48-50) cm |    585|  1608|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA        |>=50 cm    |     14|    92|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA        |<48 cm     |     38|    92|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA        |[48-50) cm |     40|    92|
|FULL    |Birth     |CMIN           |BANGLADESH   |>=50 cm    |      2|    26|
|FULL    |Birth     |CMIN           |BANGLADESH   |<48 cm     |     19|    26|
|FULL    |Birth     |CMIN           |BANGLADESH   |[48-50) cm |      5|    26|
|FULL    |Birth     |COHORTS        |INDIA        |>=50 cm    |   1426|  6640|
|FULL    |Birth     |COHORTS        |INDIA        |<48 cm     |   2774|  6640|
|FULL    |Birth     |COHORTS        |INDIA        |[48-50) cm |   2440|  6640|
|FULL    |Birth     |COHORTS        |GUATEMALA    |>=50 cm    |    437|   852|
|FULL    |Birth     |COHORTS        |GUATEMALA    |<48 cm     |    163|   852|
|FULL    |Birth     |COHORTS        |GUATEMALA    |[48-50) cm |    252|   852|
|FULL    |Birth     |COHORTS        |PHILIPPINES  |>=50 cm    |   1129|  3050|
|FULL    |Birth     |COHORTS        |PHILIPPINES  |<48 cm     |    762|  3050|
|FULL    |Birth     |COHORTS        |PHILIPPINES  |[48-50) cm |   1159|  3050|
|FULL    |Birth     |CONTENT        |PERU         |>=50 cm    |      1|     2|
|FULL    |Birth     |CONTENT        |PERU         |<48 cm     |      1|     2|
|FULL    |Birth     |CONTENT        |PERU         |[48-50) cm |      0|     2|
|FULL    |Birth     |EE             |PAKISTAN     |>=50 cm    |     22|   240|
|FULL    |Birth     |EE             |PAKISTAN     |<48 cm     |    172|   240|
|FULL    |Birth     |EE             |PAKISTAN     |[48-50) cm |     46|   240|
|FULL    |Birth     |GMS-Nepal      |NEPAL        |>=50 cm    |    104|   696|
|FULL    |Birth     |GMS-Nepal      |NEPAL        |<48 cm     |    384|   696|
|FULL    |Birth     |GMS-Nepal      |NEPAL        |[48-50) cm |    208|   696|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |>=50 cm    |   1228| 22455|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |<48 cm     |  16136| 22455|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |[48-50) cm |   5091| 22455|
|FULL    |Birth     |JiVitA-4       |BANGLADESH   |>=50 cm    |    178|  2823|
|FULL    |Birth     |JiVitA-4       |BANGLADESH   |<48 cm     |   1913|  2823|
|FULL    |Birth     |JiVitA-4       |BANGLADESH   |[48-50) cm |    732|  2823|
|FULL    |Birth     |Keneba         |GAMBIA       |>=50 cm    |    763|  1543|
|FULL    |Birth     |Keneba         |GAMBIA       |<48 cm     |    285|  1543|
|FULL    |Birth     |Keneba         |GAMBIA       |[48-50) cm |    495|  1543|
|FULL    |Birth     |MAL-ED         |INDIA        |>=50 cm    |      9|    47|
|FULL    |Birth     |MAL-ED         |INDIA        |<48 cm     |     22|    47|
|FULL    |Birth     |MAL-ED         |INDIA        |[48-50) cm |     16|    47|
|FULL    |Birth     |MAL-ED         |BANGLADESH   |>=50 cm    |     35|   231|
|FULL    |Birth     |MAL-ED         |BANGLADESH   |<48 cm     |    117|   231|
|FULL    |Birth     |MAL-ED         |BANGLADESH   |[48-50) cm |     79|   231|
|FULL    |Birth     |MAL-ED         |PERU         |>=50 cm    |     41|   233|
|FULL    |Birth     |MAL-ED         |PERU         |<48 cm     |     92|   233|
|FULL    |Birth     |MAL-ED         |PERU         |[48-50) cm |    100|   233|
|FULL    |Birth     |MAL-ED         |NEPAL        |>=50 cm    |      7|    27|
|FULL    |Birth     |MAL-ED         |NEPAL        |<48 cm     |     12|    27|
|FULL    |Birth     |MAL-ED         |NEPAL        |[48-50) cm |      8|    27|
|FULL    |Birth     |MAL-ED         |BRAZIL       |>=50 cm    |     23|    65|
|FULL    |Birth     |MAL-ED         |BRAZIL       |<48 cm     |     18|    65|
|FULL    |Birth     |MAL-ED         |BRAZIL       |[48-50) cm |     24|    65|
|FULL    |Birth     |MAL-ED         |TANZANIA     |>=50 cm    |     20|   125|
|FULL    |Birth     |MAL-ED         |TANZANIA     |<48 cm     |     44|   125|
|FULL    |Birth     |MAL-ED         |TANZANIA     |[48-50) cm |     61|   125|
|FULL    |Birth     |MAL-ED         |SOUTH AFRICA |>=50 cm    |     35|   123|
|FULL    |Birth     |MAL-ED         |SOUTH AFRICA |<48 cm     |     36|   123|
|FULL    |Birth     |MAL-ED         |SOUTH AFRICA |[48-50) cm |     52|   123|
|FULL    |Birth     |NIH-Birth      |BANGLADESH   |>=50 cm    |    124|   608|
|FULL    |Birth     |NIH-Birth      |BANGLADESH   |<48 cm     |    253|   608|
|FULL    |Birth     |NIH-Birth      |BANGLADESH   |[48-50) cm |    231|   608|
|FULL    |Birth     |NIH-Crypto     |BANGLADESH   |>=50 cm    |    161|   732|
|FULL    |Birth     |NIH-Crypto     |BANGLADESH   |<48 cm     |    287|   732|
|FULL    |Birth     |NIH-Crypto     |BANGLADESH   |[48-50) cm |    284|   732|
|FULL    |Birth     |PROBIT         |BELARUS      |>=50 cm    |  12626| 13893|
|FULL    |Birth     |PROBIT         |BELARUS      |<48 cm     |    147| 13893|
|FULL    |Birth     |PROBIT         |BELARUS      |[48-50) cm |   1120| 13893|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |>=50 cm    |    121|   539|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |<48 cm     |    196|   539|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |[48-50) cm |    222|   539|
|FULL    |Birth     |ResPak         |PAKISTAN     |>=50 cm    |     10|    42|
|FULL    |Birth     |ResPak         |PAKISTAN     |<48 cm     |     19|    42|
|FULL    |Birth     |ResPak         |PAKISTAN     |[48-50) cm |     13|    42|
|FULL    |Birth     |SAS-CompFeed   |INDIA        |>=50 cm    |    116|  1252|
|FULL    |Birth     |SAS-CompFeed   |INDIA        |<48 cm     |    738|  1252|
|FULL    |Birth     |SAS-CompFeed   |INDIA        |[48-50) cm |    398|  1252|
|FULL    |Birth     |Vellore Crypto |INDIA        |>=50 cm    |    142|   388|
|FULL    |Birth     |Vellore Crypto |INDIA        |<48 cm     |    108|   388|
|FULL    |Birth     |Vellore Crypto |INDIA        |[48-50) cm |    138|   388|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE     |>=50 cm    |   4125| 13875|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE     |<48 cm     |   4409| 13875|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE     |[48-50) cm |   5341| 13875|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA        |>=50 cm    |     16|   104|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA        |<48 cm     |     48|   104|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA        |[48-50) cm |     40|   104|
|FULL    |6 months  |CMIN           |BANGLADESH   |>=50 cm    |      0|    12|
|FULL    |6 months  |CMIN           |BANGLADESH   |<48 cm     |      7|    12|
|FULL    |6 months  |CMIN           |BANGLADESH   |[48-50) cm |      5|    12|
|FULL    |6 months  |COHORTS        |INDIA        |>=50 cm    |   1330|  6135|
|FULL    |6 months  |COHORTS        |INDIA        |<48 cm     |   2530|  6135|
|FULL    |6 months  |COHORTS        |INDIA        |[48-50) cm |   2275|  6135|
|FULL    |6 months  |COHORTS        |GUATEMALA    |>=50 cm    |    351|   688|
|FULL    |6 months  |COHORTS        |GUATEMALA    |<48 cm     |    133|   688|
|FULL    |6 months  |COHORTS        |GUATEMALA    |[48-50) cm |    204|   688|
|FULL    |6 months  |COHORTS        |PHILIPPINES  |>=50 cm    |    990|  2701|
|FULL    |6 months  |COHORTS        |PHILIPPINES  |<48 cm     |    677|  2701|
|FULL    |6 months  |COHORTS        |PHILIPPINES  |[48-50) cm |   1034|  2701|
|FULL    |6 months  |CONTENT        |PERU         |>=50 cm    |      1|     2|
|FULL    |6 months  |CONTENT        |PERU         |<48 cm     |      1|     2|
|FULL    |6 months  |CONTENT        |PERU         |[48-50) cm |      0|     2|
|FULL    |6 months  |EE             |PAKISTAN     |>=50 cm    |     22|   236|
|FULL    |6 months  |EE             |PAKISTAN     |<48 cm     |    170|   236|
|FULL    |6 months  |EE             |PAKISTAN     |[48-50) cm |     44|   236|
|FULL    |6 months  |GMS-Nepal      |NEPAL        |>=50 cm    |     87|   563|
|FULL    |6 months  |GMS-Nepal      |NEPAL        |<48 cm     |    305|   563|
|FULL    |6 months  |GMS-Nepal      |NEPAL        |[48-50) cm |    171|   563|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |>=50 cm    |    807| 13924|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |<48 cm     |   9835| 13924|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |[48-50) cm |   3282| 13924|
|FULL    |6 months  |JiVitA-4       |BANGLADESH   |>=50 cm    |   1101|  4020|
|FULL    |6 months  |JiVitA-4       |BANGLADESH   |<48 cm     |   1923|  4020|
|FULL    |6 months  |JiVitA-4       |BANGLADESH   |[48-50) cm |    996|  4020|
|FULL    |6 months  |Keneba         |GAMBIA       |>=50 cm    |    677|  1347|
|FULL    |6 months  |Keneba         |GAMBIA       |<48 cm     |    234|  1347|
|FULL    |6 months  |Keneba         |GAMBIA       |[48-50) cm |    436|  1347|
|FULL    |6 months  |MAL-ED         |INDIA        |>=50 cm    |      8|    41|
|FULL    |6 months  |MAL-ED         |INDIA        |<48 cm     |     20|    41|
|FULL    |6 months  |MAL-ED         |INDIA        |[48-50) cm |     13|    41|
|FULL    |6 months  |MAL-ED         |BANGLADESH   |>=50 cm    |     35|   211|
|FULL    |6 months  |MAL-ED         |BANGLADESH   |<48 cm     |    101|   211|
|FULL    |6 months  |MAL-ED         |BANGLADESH   |[48-50) cm |     75|   211|
|FULL    |6 months  |MAL-ED         |PERU         |>=50 cm    |     38|   215|
|FULL    |6 months  |MAL-ED         |PERU         |<48 cm     |     88|   215|
|FULL    |6 months  |MAL-ED         |PERU         |[48-50) cm |     89|   215|
|FULL    |6 months  |MAL-ED         |NEPAL        |>=50 cm    |      7|    26|
|FULL    |6 months  |MAL-ED         |NEPAL        |<48 cm     |     11|    26|
|FULL    |6 months  |MAL-ED         |NEPAL        |[48-50) cm |      8|    26|
|FULL    |6 months  |MAL-ED         |BRAZIL       |>=50 cm    |     21|    59|
|FULL    |6 months  |MAL-ED         |BRAZIL       |<48 cm     |     16|    59|
|FULL    |6 months  |MAL-ED         |BRAZIL       |[48-50) cm |     22|    59|
|FULL    |6 months  |MAL-ED         |TANZANIA     |>=50 cm    |     19|   118|
|FULL    |6 months  |MAL-ED         |TANZANIA     |<48 cm     |     41|   118|
|FULL    |6 months  |MAL-ED         |TANZANIA     |[48-50) cm |     58|   118|
|FULL    |6 months  |MAL-ED         |SOUTH AFRICA |>=50 cm    |     29|    93|
|FULL    |6 months  |MAL-ED         |SOUTH AFRICA |<48 cm     |     24|    93|
|FULL    |6 months  |MAL-ED         |SOUTH AFRICA |[48-50) cm |     40|    93|
|FULL    |6 months  |NIH-Birth      |BANGLADESH   |>=50 cm    |    106|   518|
|FULL    |6 months  |NIH-Birth      |BANGLADESH   |<48 cm     |    210|   518|
|FULL    |6 months  |NIH-Birth      |BANGLADESH   |[48-50) cm |    202|   518|
|FULL    |6 months  |NIH-Crypto     |BANGLADESH   |>=50 cm    |    164|   715|
|FULL    |6 months  |NIH-Crypto     |BANGLADESH   |<48 cm     |    270|   715|
|FULL    |6 months  |NIH-Crypto     |BANGLADESH   |[48-50) cm |    281|   715|
|FULL    |6 months  |PROBIT         |BELARUS      |>=50 cm    |  14295| 15760|
|FULL    |6 months  |PROBIT         |BELARUS      |<48 cm     |    172| 15760|
|FULL    |6 months  |PROBIT         |BELARUS      |[48-50) cm |   1293| 15760|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |>=50 cm    |    143|   604|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |<48 cm     |    213|   604|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |[48-50) cm |    248|   604|
|FULL    |6 months  |ResPak         |PAKISTAN     |>=50 cm    |      8|    34|
|FULL    |6 months  |ResPak         |PAKISTAN     |<48 cm     |     16|    34|
|FULL    |6 months  |ResPak         |PAKISTAN     |[48-50) cm |     10|    34|
|FULL    |6 months  |SAS-CompFeed   |INDIA        |>=50 cm    |    196|  1324|
|FULL    |6 months  |SAS-CompFeed   |INDIA        |<48 cm     |    709|  1324|
|FULL    |6 months  |SAS-CompFeed   |INDIA        |[48-50) cm |    419|  1324|
|FULL    |6 months  |Vellore Crypto |INDIA        |>=50 cm    |    142|   389|
|FULL    |6 months  |Vellore Crypto |INDIA        |<48 cm     |    109|   389|
|FULL    |6 months  |Vellore Crypto |INDIA        |[48-50) cm |    138|   389|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE     |>=50 cm    |   2538|  8577|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE     |<48 cm     |   2680|  8577|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE     |[48-50) cm |   3359|  8577|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA        |>=50 cm    |     16|   106|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA        |<48 cm     |     50|   106|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA        |[48-50) cm |     40|   106|
|FULL    |24 months |CMIN           |BANGLADESH   |>=50 cm    |      0|    11|
|FULL    |24 months |CMIN           |BANGLADESH   |<48 cm     |      6|    11|
|FULL    |24 months |CMIN           |BANGLADESH   |[48-50) cm |      5|    11|
|FULL    |24 months |COHORTS        |INDIA        |>=50 cm    |   1047|  4758|
|FULL    |24 months |COHORTS        |INDIA        |<48 cm     |   1934|  4758|
|FULL    |24 months |COHORTS        |INDIA        |[48-50) cm |   1777|  4758|
|FULL    |24 months |COHORTS        |GUATEMALA    |>=50 cm    |    263|   560|
|FULL    |24 months |COHORTS        |GUATEMALA    |<48 cm     |    120|   560|
|FULL    |24 months |COHORTS        |GUATEMALA    |[48-50) cm |    177|   560|
|FULL    |24 months |COHORTS        |PHILIPPINES  |>=50 cm    |    897|  2442|
|FULL    |24 months |COHORTS        |PHILIPPINES  |<48 cm     |    604|  2442|
|FULL    |24 months |COHORTS        |PHILIPPINES  |[48-50) cm |    941|  2442|
|FULL    |24 months |CONTENT        |PERU         |>=50 cm    |      1|     2|
|FULL    |24 months |CONTENT        |PERU         |<48 cm     |      1|     2|
|FULL    |24 months |CONTENT        |PERU         |[48-50) cm |      0|     2|
|FULL    |24 months |EE             |PAKISTAN     |>=50 cm    |     10|   106|
|FULL    |24 months |EE             |PAKISTAN     |<48 cm     |     74|   106|
|FULL    |24 months |EE             |PAKISTAN     |[48-50) cm |     22|   106|
|FULL    |24 months |GMS-Nepal      |NEPAL        |>=50 cm    |     76|   487|
|FULL    |24 months |GMS-Nepal      |NEPAL        |<48 cm     |    255|   487|
|FULL    |24 months |GMS-Nepal      |NEPAL        |[48-50) cm |    156|   487|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |>=50 cm    |    395|  7184|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |<48 cm     |   5075|  7184|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |[48-50) cm |   1714|  7184|
|FULL    |24 months |JiVitA-4       |BANGLADESH   |>=50 cm    |   1077|  3987|
|FULL    |24 months |JiVitA-4       |BANGLADESH   |<48 cm     |   1944|  3987|
|FULL    |24 months |JiVitA-4       |BANGLADESH   |[48-50) cm |    966|  3987|
|FULL    |24 months |Keneba         |GAMBIA       |>=50 cm    |    535|  1065|
|FULL    |24 months |Keneba         |GAMBIA       |<48 cm     |    196|  1065|
|FULL    |24 months |Keneba         |GAMBIA       |[48-50) cm |    334|  1065|
|FULL    |24 months |MAL-ED         |INDIA        |>=50 cm    |      6|    39|
|FULL    |24 months |MAL-ED         |INDIA        |<48 cm     |     20|    39|
|FULL    |24 months |MAL-ED         |INDIA        |[48-50) cm |     13|    39|
|FULL    |24 months |MAL-ED         |BANGLADESH   |>=50 cm    |     35|   187|
|FULL    |24 months |MAL-ED         |BANGLADESH   |<48 cm     |     83|   187|
|FULL    |24 months |MAL-ED         |BANGLADESH   |[48-50) cm |     69|   187|
|FULL    |24 months |MAL-ED         |PERU         |>=50 cm    |     28|   160|
|FULL    |24 months |MAL-ED         |PERU         |<48 cm     |     71|   160|
|FULL    |24 months |MAL-ED         |PERU         |[48-50) cm |     61|   160|
|FULL    |24 months |MAL-ED         |NEPAL        |>=50 cm    |      7|    26|
|FULL    |24 months |MAL-ED         |NEPAL        |<48 cm     |     11|    26|
|FULL    |24 months |MAL-ED         |NEPAL        |[48-50) cm |      8|    26|
|FULL    |24 months |MAL-ED         |BRAZIL       |>=50 cm    |     17|    42|
|FULL    |24 months |MAL-ED         |BRAZIL       |<48 cm     |     11|    42|
|FULL    |24 months |MAL-ED         |BRAZIL       |[48-50) cm |     14|    42|
|FULL    |24 months |MAL-ED         |TANZANIA     |>=50 cm    |     17|   104|
|FULL    |24 months |MAL-ED         |TANZANIA     |<48 cm     |     36|   104|
|FULL    |24 months |MAL-ED         |TANZANIA     |[48-50) cm |     51|   104|
|FULL    |24 months |MAL-ED         |SOUTH AFRICA |>=50 cm    |     27|    91|
|FULL    |24 months |MAL-ED         |SOUTH AFRICA |<48 cm     |     24|    91|
|FULL    |24 months |MAL-ED         |SOUTH AFRICA |[48-50) cm |     40|    91|
|FULL    |24 months |NIH-Birth      |BANGLADESH   |>=50 cm    |     89|   414|
|FULL    |24 months |NIH-Birth      |BANGLADESH   |<48 cm     |    166|   414|
|FULL    |24 months |NIH-Birth      |BANGLADESH   |[48-50) cm |    159|   414|
|FULL    |24 months |NIH-Crypto     |BANGLADESH   |>=50 cm    |    128|   514|
|FULL    |24 months |NIH-Crypto     |BANGLADESH   |<48 cm     |    200|   514|
|FULL    |24 months |NIH-Crypto     |BANGLADESH   |[48-50) cm |    186|   514|
|FULL    |24 months |PROBIT         |BELARUS      |>=50 cm    |   3683|  4035|
|FULL    |24 months |PROBIT         |BELARUS      |<48 cm     |     44|  4035|
|FULL    |24 months |PROBIT         |BELARUS      |[48-50) cm |    308|  4035|
|FULL    |24 months |PROVIDE        |BANGLADESH   |>=50 cm    |    139|   578|
|FULL    |24 months |PROVIDE        |BANGLADESH   |<48 cm     |    206|   578|
|FULL    |24 months |PROVIDE        |BANGLADESH   |[48-50) cm |    233|   578|
|FULL    |24 months |Vellore Crypto |INDIA        |>=50 cm    |    142|   390|
|FULL    |24 months |Vellore Crypto |INDIA        |<48 cm     |    110|   390|
|FULL    |24 months |Vellore Crypto |INDIA        |[48-50) cm |    138|   390|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE     |>=50 cm    |    312|  1608|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE     |<48 cm     |    711|  1608|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE     |[48-50) cm |    585|  1608|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA        |>=50 cm    |     20|    99|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA        |<48 cm     |     42|    99|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA        |[48-50) cm |     37|    99|
|QI      |Birth     |CMIN           |BANGLADESH   |>=50 cm    |      2|     6|
|QI      |Birth     |CMIN           |BANGLADESH   |<48 cm     |      3|     6|
|QI      |Birth     |CMIN           |BANGLADESH   |[48-50) cm |      1|     6|
|QI      |Birth     |COHORTS        |INDIA        |>=50 cm    |   1639|  6645|
|QI      |Birth     |COHORTS        |INDIA        |<48 cm     |   2730|  6645|
|QI      |Birth     |COHORTS        |INDIA        |[48-50) cm |   2276|  6645|
|QI      |Birth     |COHORTS        |GUATEMALA    |>=50 cm    |    234|   467|
|QI      |Birth     |COHORTS        |GUATEMALA    |<48 cm     |     99|   467|
|QI      |Birth     |COHORTS        |GUATEMALA    |[48-50) cm |    134|   467|
|QI      |Birth     |COHORTS        |PHILIPPINES  |>=50 cm    |   1148|  3050|
|QI      |Birth     |COHORTS        |PHILIPPINES  |<48 cm     |    755|  3050|
|QI      |Birth     |COHORTS        |PHILIPPINES  |[48-50) cm |   1147|  3050|
|QI      |Birth     |EE             |PAKISTAN     |>=50 cm    |     27|   266|
|QI      |Birth     |EE             |PAKISTAN     |<48 cm     |    188|   266|
|QI      |Birth     |EE             |PAKISTAN     |[48-50) cm |     51|   266|
|QI      |Birth     |GMS-Nepal      |NEPAL        |>=50 cm    |    107|   697|
|QI      |Birth     |GMS-Nepal      |NEPAL        |<48 cm     |    387|   697|
|QI      |Birth     |GMS-Nepal      |NEPAL        |[48-50) cm |    203|   697|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |>=50 cm    |    555| 11124|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |<48 cm     |   8294| 11124|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |[48-50) cm |   2275| 11124|
|QI      |Birth     |JiVitA-4       |BANGLADESH   |>=50 cm    |     57|   727|
|QI      |Birth     |JiVitA-4       |BANGLADESH   |<48 cm     |    443|   727|
|QI      |Birth     |JiVitA-4       |BANGLADESH   |[48-50) cm |    227|   727|
|QI      |Birth     |Keneba         |GAMBIA       |>=50 cm    |    727|  1531|
|QI      |Birth     |Keneba         |GAMBIA       |<48 cm     |    315|  1531|
|QI      |Birth     |Keneba         |GAMBIA       |[48-50) cm |    489|  1531|
|QI      |Birth     |MAL-ED         |INDIA        |>=50 cm    |      7|    50|
|QI      |Birth     |MAL-ED         |INDIA        |<48 cm     |     24|    50|
|QI      |Birth     |MAL-ED         |INDIA        |[48-50) cm |     19|    50|
|QI      |Birth     |MAL-ED         |BANGLADESH   |>=50 cm    |     41|   239|
|QI      |Birth     |MAL-ED         |BANGLADESH   |<48 cm     |    130|   239|
|QI      |Birth     |MAL-ED         |BANGLADESH   |[48-50) cm |     68|   239|
|QI      |Birth     |MAL-ED         |PERU         |>=50 cm    |     61|   240|
|QI      |Birth     |MAL-ED         |PERU         |<48 cm     |     96|   240|
|QI      |Birth     |MAL-ED         |PERU         |[48-50) cm |     83|   240|
|QI      |Birth     |MAL-ED         |NEPAL        |>=50 cm    |      8|    24|
|QI      |Birth     |MAL-ED         |NEPAL        |<48 cm     |      9|    24|
|QI      |Birth     |MAL-ED         |NEPAL        |[48-50) cm |      7|    24|
|QI      |Birth     |MAL-ED         |BRAZIL       |>=50 cm    |     65|   101|
|QI      |Birth     |MAL-ED         |BRAZIL       |<48 cm     |     21|   101|
|QI      |Birth     |MAL-ED         |BRAZIL       |[48-50) cm |     15|   101|
|QI      |Birth     |MAL-ED         |TANZANIA     |>=50 cm    |     19|   141|
|QI      |Birth     |MAL-ED         |TANZANIA     |<48 cm     |     50|   141|
|QI      |Birth     |MAL-ED         |TANZANIA     |[48-50) cm |     72|   141|
|QI      |Birth     |MAL-ED         |SOUTH AFRICA |>=50 cm    |     29|   122|
|QI      |Birth     |MAL-ED         |SOUTH AFRICA |<48 cm     |     35|   122|
|QI      |Birth     |MAL-ED         |SOUTH AFRICA |[48-50) cm |     58|   122|
|QI      |Birth     |NIH-Birth      |BANGLADESH   |>=50 cm    |    140|   612|
|QI      |Birth     |NIH-Birth      |BANGLADESH   |<48 cm     |    278|   612|
|QI      |Birth     |NIH-Birth      |BANGLADESH   |[48-50) cm |    194|   612|
|QI      |Birth     |NIH-Crypto     |BANGLADESH   |>=50 cm    |    191|   753|
|QI      |Birth     |NIH-Crypto     |BANGLADESH   |<48 cm     |    306|   753|
|QI      |Birth     |NIH-Crypto     |BANGLADESH   |[48-50) cm |    256|   753|
|QI      |Birth     |PROBIT         |BELARUS      |>=50 cm    |   6330|  6759|
|QI      |Birth     |PROBIT         |BELARUS      |<48 cm     |     65|  6759|
|QI      |Birth     |PROBIT         |BELARUS      |[48-50) cm |    364|  6759|
|QI      |Birth     |PROVIDE        |BANGLADESH   |>=50 cm    |    145|   531|
|QI      |Birth     |PROVIDE        |BANGLADESH   |<48 cm     |    192|   531|
|QI      |Birth     |PROVIDE        |BANGLADESH   |[48-50) cm |    194|   531|
|QI      |Birth     |ResPak         |PAKISTAN     |>=50 cm    |      4|    16|
|QI      |Birth     |ResPak         |PAKISTAN     |<48 cm     |      7|    16|
|QI      |Birth     |ResPak         |PAKISTAN     |[48-50) cm |      5|    16|
|QI      |Birth     |SAS-CompFeed   |INDIA        |>=50 cm    |     32|   395|
|QI      |Birth     |SAS-CompFeed   |INDIA        |<48 cm     |    255|   395|
|QI      |Birth     |SAS-CompFeed   |INDIA        |[48-50) cm |    108|   395|
|QI      |Birth     |Vellore Crypto |INDIA        |>=50 cm    |    166|   385|
|QI      |Birth     |Vellore Crypto |INDIA        |<48 cm     |     97|   385|
|QI      |Birth     |Vellore Crypto |INDIA        |[48-50) cm |    122|   385|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE     |>=50 cm    |   4098| 12988|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE     |<48 cm     |   3607| 12988|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE     |[48-50) cm |   5283| 12988|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA        |>=50 cm    |     18|    97|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA        |<48 cm     |     43|    97|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA        |[48-50) cm |     36|    97|
|QI      |6 months  |CMIN           |BANGLADESH   |>=50 cm    |      3|    19|
|QI      |6 months  |CMIN           |BANGLADESH   |<48 cm     |     11|    19|
|QI      |6 months  |CMIN           |BANGLADESH   |[48-50) cm |      5|    19|
|QI      |6 months  |COHORTS        |INDIA        |>=50 cm    |    947|  3834|
|QI      |6 months  |COHORTS        |INDIA        |<48 cm     |   1573|  3834|
|QI      |6 months  |COHORTS        |INDIA        |[48-50) cm |   1314|  3834|
|QI      |6 months  |COHORTS        |GUATEMALA    |>=50 cm    |    152|   300|
|QI      |6 months  |COHORTS        |GUATEMALA    |<48 cm     |     56|   300|
|QI      |6 months  |COHORTS        |GUATEMALA    |[48-50) cm |     92|   300|
|QI      |6 months  |COHORTS        |PHILIPPINES  |>=50 cm    |    904|  2391|
|QI      |6 months  |COHORTS        |PHILIPPINES  |<48 cm     |    582|  2391|
|QI      |6 months  |COHORTS        |PHILIPPINES  |[48-50) cm |    905|  2391|
|QI      |6 months  |CONTENT        |PERU         |>=50 cm    |      2|     3|
|QI      |6 months  |CONTENT        |PERU         |<48 cm     |      1|     3|
|QI      |6 months  |CONTENT        |PERU         |[48-50) cm |      0|     3|
|QI      |6 months  |EE             |PAKISTAN     |>=50 cm    |     23|   239|
|QI      |6 months  |EE             |PAKISTAN     |<48 cm     |    170|   239|
|QI      |6 months  |EE             |PAKISTAN     |[48-50) cm |     46|   239|
|QI      |6 months  |GMS-Nepal      |NEPAL        |>=50 cm    |     80|   552|
|QI      |6 months  |GMS-Nepal      |NEPAL        |<48 cm     |    309|   552|
|QI      |6 months  |GMS-Nepal      |NEPAL        |[48-50) cm |    163|   552|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |>=50 cm    |    208|  4078|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |<48 cm     |   3027|  4078|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |[48-50) cm |    843|  4078|
|QI      |6 months  |JiVitA-4       |BANGLADESH   |>=50 cm    |    205|   655|
|QI      |6 months  |JiVitA-4       |BANGLADESH   |<48 cm     |    279|   655|
|QI      |6 months  |JiVitA-4       |BANGLADESH   |[48-50) cm |    171|   655|
|QI      |6 months  |Keneba         |GAMBIA       |>=50 cm    |    604|  1262|
|QI      |6 months  |Keneba         |GAMBIA       |<48 cm     |    262|  1262|
|QI      |6 months  |Keneba         |GAMBIA       |[48-50) cm |    396|  1262|
|QI      |6 months  |MAL-ED         |INDIA        |>=50 cm    |      7|    47|
|QI      |6 months  |MAL-ED         |INDIA        |<48 cm     |     23|    47|
|QI      |6 months  |MAL-ED         |INDIA        |[48-50) cm |     17|    47|
|QI      |6 months  |MAL-ED         |BANGLADESH   |>=50 cm    |     41|   227|
|QI      |6 months  |MAL-ED         |BANGLADESH   |<48 cm     |    120|   227|
|QI      |6 months  |MAL-ED         |BANGLADESH   |[48-50) cm |     66|   227|
|QI      |6 months  |MAL-ED         |PERU         |>=50 cm    |     55|   215|
|QI      |6 months  |MAL-ED         |PERU         |<48 cm     |     81|   215|
|QI      |6 months  |MAL-ED         |PERU         |[48-50) cm |     79|   215|
|QI      |6 months  |MAL-ED         |NEPAL        |>=50 cm    |      8|    21|
|QI      |6 months  |MAL-ED         |NEPAL        |<48 cm     |      7|    21|
|QI      |6 months  |MAL-ED         |NEPAL        |[48-50) cm |      6|    21|
|QI      |6 months  |MAL-ED         |BRAZIL       |>=50 cm    |     56|    89|
|QI      |6 months  |MAL-ED         |BRAZIL       |<48 cm     |     19|    89|
|QI      |6 months  |MAL-ED         |BRAZIL       |[48-50) cm |     14|    89|
|QI      |6 months  |MAL-ED         |TANZANIA     |>=50 cm    |     18|   132|
|QI      |6 months  |MAL-ED         |TANZANIA     |<48 cm     |     46|   132|
|QI      |6 months  |MAL-ED         |TANZANIA     |[48-50) cm |     68|   132|
|QI      |6 months  |MAL-ED         |SOUTH AFRICA |>=50 cm    |     29|   112|
|QI      |6 months  |MAL-ED         |SOUTH AFRICA |<48 cm     |     30|   112|
|QI      |6 months  |MAL-ED         |SOUTH AFRICA |[48-50) cm |     53|   112|
|QI      |6 months  |NIH-Birth      |BANGLADESH   |>=50 cm    |     89|   382|
|QI      |6 months  |NIH-Birth      |BANGLADESH   |<48 cm     |    169|   382|
|QI      |6 months  |NIH-Birth      |BANGLADESH   |[48-50) cm |    124|   382|
|QI      |6 months  |NIH-Crypto     |BANGLADESH   |>=50 cm    |    137|   537|
|QI      |6 months  |NIH-Crypto     |BANGLADESH   |<48 cm     |    202|   537|
|QI      |6 months  |NIH-Crypto     |BANGLADESH   |[48-50) cm |    198|   537|
|QI      |6 months  |PROBIT         |BELARUS      |>=50 cm    |   4867|  5179|
|QI      |6 months  |PROBIT         |BELARUS      |<48 cm     |     41|  5179|
|QI      |6 months  |PROBIT         |BELARUS      |[48-50) cm |    271|  5179|
|QI      |6 months  |PROVIDE        |BANGLADESH   |>=50 cm    |    170|   611|
|QI      |6 months  |PROVIDE        |BANGLADESH   |<48 cm     |    218|   611|
|QI      |6 months  |PROVIDE        |BANGLADESH   |[48-50) cm |    223|   611|
|QI      |6 months  |ResPak         |PAKISTAN     |>=50 cm    |      8|    29|
|QI      |6 months  |ResPak         |PAKISTAN     |<48 cm     |     11|    29|
|QI      |6 months  |ResPak         |PAKISTAN     |[48-50) cm |     10|    29|
|QI      |6 months  |SAS-CompFeed   |INDIA        |>=50 cm    |     43|   271|
|QI      |6 months  |SAS-CompFeed   |INDIA        |<48 cm     |    155|   271|
|QI      |6 months  |SAS-CompFeed   |INDIA        |[48-50) cm |     73|   271|
|QI      |6 months  |Vellore Crypto |INDIA        |>=50 cm    |    150|   365|
|QI      |6 months  |Vellore Crypto |INDIA        |<48 cm     |     99|   365|
|QI      |6 months  |Vellore Crypto |INDIA        |[48-50) cm |    116|   365|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE     |>=50 cm    |   1883|  6235|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE     |<48 cm     |   1956|  6235|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE     |[48-50) cm |   2396|  6235|
|QI      |24 months |CMC-V-BCS-2002 |INDIA        |>=50 cm    |      7|    44|
|QI      |24 months |CMC-V-BCS-2002 |INDIA        |<48 cm     |     20|    44|
|QI      |24 months |CMC-V-BCS-2002 |INDIA        |[48-50) cm |     17|    44|
|QI      |24 months |CMIN           |BANGLADESH   |>=50 cm    |      0|     8|
|QI      |24 months |CMIN           |BANGLADESH   |<48 cm     |      5|     8|
|QI      |24 months |CMIN           |BANGLADESH   |[48-50) cm |      3|     8|
|QI      |24 months |COHORTS        |GUATEMALA    |>=50 cm    |      7|    18|
|QI      |24 months |COHORTS        |GUATEMALA    |<48 cm     |      5|    18|
|QI      |24 months |COHORTS        |GUATEMALA    |[48-50) cm |      6|    18|
|QI      |24 months |COHORTS        |PHILIPPINES  |>=50 cm    |    117|   294|
|QI      |24 months |COHORTS        |PHILIPPINES  |<48 cm     |     61|   294|
|QI      |24 months |COHORTS        |PHILIPPINES  |[48-50) cm |    116|   294|
|QI      |24 months |EE             |PAKISTAN     |>=50 cm    |      8|    81|
|QI      |24 months |EE             |PAKISTAN     |<48 cm     |     56|    81|
|QI      |24 months |EE             |PAKISTAN     |[48-50) cm |     17|    81|
|QI      |24 months |GMS-Nepal      |NEPAL        |>=50 cm    |     28|   193|
|QI      |24 months |GMS-Nepal      |NEPAL        |<48 cm     |    115|   193|
|QI      |24 months |GMS-Nepal      |NEPAL        |[48-50) cm |     50|   193|
|QI      |24 months |JiVitA-3       |BANGLADESH   |>=50 cm    |      0|     1|
|QI      |24 months |JiVitA-3       |BANGLADESH   |<48 cm     |      1|     1|
|QI      |24 months |JiVitA-3       |BANGLADESH   |[48-50) cm |      0|     1|
|QI      |24 months |JiVitA-4       |BANGLADESH   |>=50 cm    |     18|    49|
|QI      |24 months |JiVitA-4       |BANGLADESH   |<48 cm     |     20|    49|
|QI      |24 months |JiVitA-4       |BANGLADESH   |[48-50) cm |     11|    49|
|QI      |24 months |Keneba         |GAMBIA       |>=50 cm    |     99|   228|
|QI      |24 months |Keneba         |GAMBIA       |<48 cm     |     49|   228|
|QI      |24 months |Keneba         |GAMBIA       |[48-50) cm |     80|   228|
|QI      |24 months |MAL-ED         |INDIA        |>=50 cm    |      5|    27|
|QI      |24 months |MAL-ED         |INDIA        |<48 cm     |     11|    27|
|QI      |24 months |MAL-ED         |INDIA        |[48-50) cm |     11|    27|
|QI      |24 months |MAL-ED         |BANGLADESH   |>=50 cm    |     16|    86|
|QI      |24 months |MAL-ED         |BANGLADESH   |<48 cm     |     42|    86|
|QI      |24 months |MAL-ED         |BANGLADESH   |[48-50) cm |     28|    86|
|QI      |24 months |MAL-ED         |PERU         |>=50 cm    |     13|    56|
|QI      |24 months |MAL-ED         |PERU         |<48 cm     |     28|    56|
|QI      |24 months |MAL-ED         |PERU         |[48-50) cm |     15|    56|
|QI      |24 months |MAL-ED         |NEPAL        |>=50 cm    |      2|     8|
|QI      |24 months |MAL-ED         |NEPAL        |<48 cm     |      3|     8|
|QI      |24 months |MAL-ED         |NEPAL        |[48-50) cm |      3|     8|
|QI      |24 months |MAL-ED         |BRAZIL       |>=50 cm    |     17|    29|
|QI      |24 months |MAL-ED         |BRAZIL       |<48 cm     |      6|    29|
|QI      |24 months |MAL-ED         |BRAZIL       |[48-50) cm |      6|    29|
|QI      |24 months |MAL-ED         |TANZANIA     |>=50 cm    |      9|    42|
|QI      |24 months |MAL-ED         |TANZANIA     |<48 cm     |     14|    42|
|QI      |24 months |MAL-ED         |TANZANIA     |[48-50) cm |     19|    42|
|QI      |24 months |MAL-ED         |SOUTH AFRICA |>=50 cm    |      7|    34|
|QI      |24 months |MAL-ED         |SOUTH AFRICA |<48 cm     |     10|    34|
|QI      |24 months |MAL-ED         |SOUTH AFRICA |[48-50) cm |     17|    34|
|QI      |24 months |NIH-Birth      |BANGLADESH   |>=50 cm    |      5|    31|
|QI      |24 months |NIH-Birth      |BANGLADESH   |<48 cm     |      8|    31|
|QI      |24 months |NIH-Birth      |BANGLADESH   |[48-50) cm |     18|    31|
|QI      |24 months |NIH-Crypto     |BANGLADESH   |>=50 cm    |      9|    47|
|QI      |24 months |NIH-Crypto     |BANGLADESH   |<48 cm     |     22|    47|
|QI      |24 months |NIH-Crypto     |BANGLADESH   |[48-50) cm |     16|    47|
|QI      |24 months |PROBIT         |BELARUS      |>=50 cm    |    129|   143|
|QI      |24 months |PROBIT         |BELARUS      |<48 cm     |      0|   143|
|QI      |24 months |PROBIT         |BELARUS      |[48-50) cm |     14|   143|
|QI      |24 months |PROVIDE        |BANGLADESH   |>=50 cm    |     13|    55|
|QI      |24 months |PROVIDE        |BANGLADESH   |<48 cm     |     21|    55|
|QI      |24 months |PROVIDE        |BANGLADESH   |[48-50) cm |     21|    55|
|QI      |24 months |ResPak         |PAKISTAN     |>=50 cm    |      1|     1|
|QI      |24 months |ResPak         |PAKISTAN     |<48 cm     |      0|     1|
|QI      |24 months |ResPak         |PAKISTAN     |[48-50) cm |      0|     1|
|QI      |24 months |SAS-CompFeed   |INDIA        |>=50 cm    |      1|     3|
|QI      |24 months |SAS-CompFeed   |INDIA        |<48 cm     |      1|     3|
|QI      |24 months |SAS-CompFeed   |INDIA        |[48-50) cm |      1|     3|
|QI      |24 months |Vellore Crypto |INDIA        |>=50 cm    |     73|   153|
|QI      |24 months |Vellore Crypto |INDIA        |<48 cm     |     37|   153|
|QI      |24 months |Vellore Crypto |INDIA        |[48-50) cm |     43|   153|
|QI      |24 months |ZVITAMBO       |ZIMBABWE     |>=50 cm    |     19|   151|
|QI      |24 months |ZVITAMBO       |ZIMBABWE     |<48 cm     |     68|   151|
|QI      |24 months |ZVITAMBO       |ZIMBABWE     |[48-50) cm |     64|   151|


The following strata were considered:

* syntype: BC, agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: BC, agecat: 24 months, studyid: CMIN, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: BC, agecat: 24 months, studyid: COHORTS, country: INDIA
* syntype: BC, agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* syntype: BC, agecat: 24 months, studyid: CONTENT, country: PERU
* syntype: BC, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* syntype: BC, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: Keneba, country: GAMBIA
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: BC, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* syntype: BC, agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: BC, agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: BC, agecat: 6 months, studyid: CMIN, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: BC, agecat: 6 months, studyid: COHORTS, country: INDIA
* syntype: BC, agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* syntype: BC, agecat: 6 months, studyid: CONTENT, country: PERU
* syntype: BC, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* syntype: BC, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: Keneba, country: GAMBIA
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: PROBIT, country: BELARUS
* syntype: BC, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: ResPak, country: PAKISTAN
* syntype: BC, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: BC, agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* syntype: BC, agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: BC, agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: BC, agecat: Birth, studyid: CMIN, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: BC, agecat: Birth, studyid: COHORTS, country: INDIA
* syntype: BC, agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* syntype: BC, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: BC, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* syntype: BC, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: Keneba, country: GAMBIA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: PROBIT, country: BELARUS
* syntype: BC, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: ResPak, country: PAKISTAN
* syntype: BC, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: BC, agecat: Birth, studyid: Vellore Crypto, country: INDIA
* syntype: BC, agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: FULL, agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: CMIN, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: FULL, agecat: 24 months, studyid: COHORTS, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* syntype: FULL, agecat: 24 months, studyid: CONTENT, country: PERU
* syntype: FULL, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* syntype: FULL, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: Keneba, country: GAMBIA
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: FULL, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: FULL, agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: CMIN, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: FULL, agecat: 6 months, studyid: COHORTS, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* syntype: FULL, agecat: 6 months, studyid: CONTENT, country: PERU
* syntype: FULL, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* syntype: FULL, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: Keneba, country: GAMBIA
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: PROBIT, country: BELARUS
* syntype: FULL, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: ResPak, country: PAKISTAN
* syntype: FULL, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: FULL, agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: FULL, agecat: Birth, studyid: CMIN, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: FULL, agecat: Birth, studyid: COHORTS, country: INDIA
* syntype: FULL, agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* syntype: FULL, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: FULL, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* syntype: FULL, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: Keneba, country: GAMBIA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: PROBIT, country: BELARUS
* syntype: FULL, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: ResPak, country: PAKISTAN
* syntype: FULL, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: FULL, agecat: Birth, studyid: Vellore Crypto, country: INDIA
* syntype: FULL, agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: QI, agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: QI, agecat: 24 months, studyid: CMIN, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* syntype: QI, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: Keneba, country: GAMBIA
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: ResPak, country: PAKISTAN
* syntype: QI, agecat: 24 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* syntype: QI, agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: QI, agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: QI, agecat: 6 months, studyid: CMIN, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: INDIA
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: 6 months, studyid: CONTENT, country: PERU
* syntype: QI, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* syntype: QI, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: Keneba, country: GAMBIA
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: ResPak, country: PAKISTAN
* syntype: QI, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* syntype: QI, agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: QI, agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: QI, agecat: Birth, studyid: CMIN, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: Birth, studyid: COHORTS, country: INDIA
* syntype: QI, agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* syntype: QI, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: Keneba, country: GAMBIA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: ResPak, country: PAKISTAN
* syntype: QI, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: Birth, studyid: Vellore Crypto, country: INDIA
* syntype: QI, agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* syntype: BC, agecat: Birth, studyid: CMIN, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: BC, agecat: 6 months, studyid: CMIN, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: CONTENT, country: PERU
* syntype: BC, agecat: 24 months, studyid: CMIN, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: CONTENT, country: PERU
* syntype: FULL, agecat: Birth, studyid: CMIN, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: FULL, agecat: 6 months, studyid: CMIN, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: CONTENT, country: PERU
* syntype: FULL, agecat: 24 months, studyid: CMIN, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: CONTENT, country: PERU
* syntype: QI, agecat: Birth, studyid: CMIN, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: ResPak, country: PAKISTAN
* syntype: QI, agecat: 6 months, studyid: CMIN, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: CONTENT, country: PERU
* syntype: QI, agecat: 24 months, studyid: CMIN, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: 24 months, studyid: ResPak, country: PAKISTAN
* syntype: QI, agecat: 24 months, studyid: SAS-CompFeed, country: INDIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


