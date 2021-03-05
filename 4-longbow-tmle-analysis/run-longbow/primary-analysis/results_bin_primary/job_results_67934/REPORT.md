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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* vagbrth
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_sex
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_vagbrth
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid    |country      |hfoodsec             | ever_stunted| n_cell|     n|
|:-----------|:----------|:------------|:--------------------|------------:|------:|-----:|
|0-24 months |GMS-Nepal  |NEPAL        |Food Secure          |            0|    181|   674|
|0-24 months |GMS-Nepal  |NEPAL        |Food Secure          |            1|    298|   674|
|0-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |            0|     38|   674|
|0-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |            1|     68|   674|
|0-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |            0|     26|   674|
|0-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |            1|     63|   674|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |            0|   4441| 17380|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |            1|   4258| 17380|
|0-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |            0|   2618| 17380|
|0-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |            1|   3167| 17380|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |            0|   1212| 17380|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |            1|   1684| 17380|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |            0|   1143|  5398|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |            1|   1606|  5398|
|0-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |            0|    812|  5398|
|0-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |            1|   1135|  5398|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |            0|    305|  5398|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |            1|    397|  5398|
|0-24 months |MAL-ED     |BANGLADESH   |Food Secure          |            0|     61|   194|
|0-24 months |MAL-ED     |BANGLADESH   |Food Secure          |            1|    100|   194|
|0-24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |            0|      1|   194|
|0-24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |            1|      3|   194|
|0-24 months |MAL-ED     |BANGLADESH   |Food Insecure        |            0|     10|   194|
|0-24 months |MAL-ED     |BANGLADESH   |Food Insecure        |            1|     19|   194|
|0-24 months |MAL-ED     |BRAZIL       |Food Secure          |            0|      3|   129|
|0-24 months |MAL-ED     |BRAZIL       |Food Secure          |            1|      0|   129|
|0-24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |            0|      7|   129|
|0-24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |            1|      4|   129|
|0-24 months |MAL-ED     |BRAZIL       |Food Insecure        |            0|     84|   129|
|0-24 months |MAL-ED     |BRAZIL       |Food Insecure        |            1|     31|   129|
|0-24 months |MAL-ED     |INDIA        |Food Secure          |            0|     66|   212|
|0-24 months |MAL-ED     |INDIA        |Food Secure          |            1|    124|   212|
|0-24 months |MAL-ED     |INDIA        |Mildly Food Insecure |            0|      4|   212|
|0-24 months |MAL-ED     |INDIA        |Mildly Food Insecure |            1|      1|   212|
|0-24 months |MAL-ED     |INDIA        |Food Insecure        |            0|      7|   212|
|0-24 months |MAL-ED     |INDIA        |Food Insecure        |            1|     10|   212|
|0-24 months |MAL-ED     |NEPAL        |Food Secure          |            0|     63|   128|
|0-24 months |MAL-ED     |NEPAL        |Food Secure          |            1|     31|   128|
|0-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |            0|      9|   128|
|0-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |            1|      6|   128|
|0-24 months |MAL-ED     |NEPAL        |Food Insecure        |            0|      9|   128|
|0-24 months |MAL-ED     |NEPAL        |Food Insecure        |            1|     10|   128|
|0-24 months |MAL-ED     |PERU         |Food Secure          |            0|      6|   113|
|0-24 months |MAL-ED     |PERU         |Food Secure          |            1|     21|   113|
|0-24 months |MAL-ED     |PERU         |Mildly Food Insecure |            0|      8|   113|
|0-24 months |MAL-ED     |PERU         |Mildly Food Insecure |            1|     21|   113|
|0-24 months |MAL-ED     |PERU         |Food Insecure        |            0|     17|   113|
|0-24 months |MAL-ED     |PERU         |Food Insecure        |            1|     40|   113|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |            0|     55|   233|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |            1|     77|   233|
|0-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |            0|     10|   233|
|0-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |            1|      9|   233|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |            0|     25|   233|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |            1|     57|   233|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |            0|     44|   629|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |            1|     51|   629|
|0-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |            0|    159|   629|
|0-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |            1|    333|   629|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |            0|      8|   629|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |            1|     34|   629|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |            0|    243|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |            1|    210|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |            0|    113|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |            1|    106|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |            0|     40|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |            1|     46|   758|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Secure          |            0|    337|   674|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Secure          |            1|    142|   674|
|0-6 months  |GMS-Nepal  |NEPAL        |Mildly Food Insecure |            0|     66|   674|
|0-6 months  |GMS-Nepal  |NEPAL        |Mildly Food Insecure |            1|     40|   674|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Insecure        |            0|     58|   674|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Insecure        |            1|     31|   674|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Secure          |            0|   5485| 17317|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Secure          |            1|   3186| 17317|
|0-6 months  |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |            0|   3352| 17317|
|0-6 months  |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |            1|   2409| 17317|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Insecure        |            0|   1631| 17317|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Insecure        |            1|   1254| 17317|
|0-6 months  |JiVitA-4   |BANGLADESH   |Food Secure          |            0|   1662|  5092|
|0-6 months  |JiVitA-4   |BANGLADESH   |Food Secure          |            1|    933|  5092|
|0-6 months  |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |            0|   1189|  5092|
|0-6 months  |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |            1|    636|  5092|
|0-6 months  |JiVitA-4   |BANGLADESH   |Food Insecure        |            0|    467|  5092|
|0-6 months  |JiVitA-4   |BANGLADESH   |Food Insecure        |            1|    205|  5092|
|0-6 months  |MAL-ED     |BANGLADESH   |Food Secure          |            0|    109|   194|
|0-6 months  |MAL-ED     |BANGLADESH   |Food Secure          |            1|     52|   194|
|0-6 months  |MAL-ED     |BANGLADESH   |Mildly Food Insecure |            0|      2|   194|
|0-6 months  |MAL-ED     |BANGLADESH   |Mildly Food Insecure |            1|      2|   194|
|0-6 months  |MAL-ED     |BANGLADESH   |Food Insecure        |            0|     20|   194|
|0-6 months  |MAL-ED     |BANGLADESH   |Food Insecure        |            1|      9|   194|
|0-6 months  |MAL-ED     |BRAZIL       |Food Secure          |            0|      3|   129|
|0-6 months  |MAL-ED     |BRAZIL       |Food Secure          |            1|      0|   129|
|0-6 months  |MAL-ED     |BRAZIL       |Mildly Food Insecure |            0|      7|   129|
|0-6 months  |MAL-ED     |BRAZIL       |Mildly Food Insecure |            1|      4|   129|
|0-6 months  |MAL-ED     |BRAZIL       |Food Insecure        |            0|     91|   129|
|0-6 months  |MAL-ED     |BRAZIL       |Food Insecure        |            1|     24|   129|
|0-6 months  |MAL-ED     |INDIA        |Food Secure          |            0|    122|   212|
|0-6 months  |MAL-ED     |INDIA        |Food Secure          |            1|     68|   212|
|0-6 months  |MAL-ED     |INDIA        |Mildly Food Insecure |            0|      5|   212|
|0-6 months  |MAL-ED     |INDIA        |Mildly Food Insecure |            1|      0|   212|
|0-6 months  |MAL-ED     |INDIA        |Food Insecure        |            0|     13|   212|
|0-6 months  |MAL-ED     |INDIA        |Food Insecure        |            1|      4|   212|
|0-6 months  |MAL-ED     |NEPAL        |Food Secure          |            0|     81|   128|
|0-6 months  |MAL-ED     |NEPAL        |Food Secure          |            1|     13|   128|
|0-6 months  |MAL-ED     |NEPAL        |Mildly Food Insecure |            0|     12|   128|
|0-6 months  |MAL-ED     |NEPAL        |Mildly Food Insecure |            1|      3|   128|
|0-6 months  |MAL-ED     |NEPAL        |Food Insecure        |            0|     12|   128|
|0-6 months  |MAL-ED     |NEPAL        |Food Insecure        |            1|      7|   128|
|0-6 months  |MAL-ED     |PERU         |Food Secure          |            0|     13|   113|
|0-6 months  |MAL-ED     |PERU         |Food Secure          |            1|     14|   113|
|0-6 months  |MAL-ED     |PERU         |Mildly Food Insecure |            0|     17|   113|
|0-6 months  |MAL-ED     |PERU         |Mildly Food Insecure |            1|     12|   113|
|0-6 months  |MAL-ED     |PERU         |Food Insecure        |            0|     32|   113|
|0-6 months  |MAL-ED     |PERU         |Food Insecure        |            1|     25|   113|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Food Secure          |            0|     80|   233|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Food Secure          |            1|     52|   233|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |            0|     16|   233|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |            1|      3|   233|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Food Insecure        |            0|     49|   233|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Food Insecure        |            1|     33|   233|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Secure          |            0|     65|   629|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Secure          |            1|     30|   629|
|0-6 months  |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |            0|    320|   629|
|0-6 months  |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |            1|    172|   629|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Insecure        |            0|     24|   629|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Insecure        |            1|     18|   629|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Secure          |            0|    325|   758|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Secure          |            1|    128|   758|
|0-6 months  |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |            0|    146|   758|
|0-6 months  |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |            1|     73|   758|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Insecure        |            0|     58|   758|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Insecure        |            1|     28|   758|
|6-24 months |GMS-Nepal  |NEPAL        |Food Secure          |            0|    132|   387|
|6-24 months |GMS-Nepal  |NEPAL        |Food Secure          |            1|    156|   387|
|6-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |            0|     20|   387|
|6-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |            1|     28|   387|
|6-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |            0|     19|   387|
|6-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |            1|     32|   387|
|6-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |            0|   4411| 10458|
|6-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |            1|   1072| 10458|
|6-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |            0|   2594| 10458|
|6-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |            1|    758| 10458|
|6-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |            0|   1193| 10458|
|6-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |            1|    430| 10458|
|6-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |            0|   1137|  3615|
|6-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |            1|    673|  3615|
|6-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |            0|    811|  3615|
|6-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |            1|    499|  3615|
|6-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |            0|    303|  3615|
|6-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |            1|    192|  3615|
|6-24 months |MAL-ED     |BANGLADESH   |Food Secure          |            0|     61|   131|
|6-24 months |MAL-ED     |BANGLADESH   |Food Secure          |            1|     48|   131|
|6-24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |            0|      1|   131|
|6-24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |            1|      1|   131|
|6-24 months |MAL-ED     |BANGLADESH   |Food Insecure        |            0|     10|   131|
|6-24 months |MAL-ED     |BANGLADESH   |Food Insecure        |            1|     10|   131|
|6-24 months |MAL-ED     |BRAZIL       |Food Secure          |            0|      3|   101|
|6-24 months |MAL-ED     |BRAZIL       |Food Secure          |            1|      0|   101|
|6-24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |            0|      7|   101|
|6-24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |            1|      0|   101|
|6-24 months |MAL-ED     |BRAZIL       |Food Insecure        |            0|     84|   101|
|6-24 months |MAL-ED     |BRAZIL       |Food Insecure        |            1|      7|   101|
|6-24 months |MAL-ED     |INDIA        |Food Secure          |            0|     66|   140|
|6-24 months |MAL-ED     |INDIA        |Food Secure          |            1|     56|   140|
|6-24 months |MAL-ED     |INDIA        |Mildly Food Insecure |            0|      4|   140|
|6-24 months |MAL-ED     |INDIA        |Mildly Food Insecure |            1|      1|   140|
|6-24 months |MAL-ED     |INDIA        |Food Insecure        |            0|      7|   140|
|6-24 months |MAL-ED     |INDIA        |Food Insecure        |            1|      6|   140|
|6-24 months |MAL-ED     |NEPAL        |Food Secure          |            0|     63|   105|
|6-24 months |MAL-ED     |NEPAL        |Food Secure          |            1|     18|   105|
|6-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |            0|      9|   105|
|6-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |            1|      3|   105|
|6-24 months |MAL-ED     |NEPAL        |Food Insecure        |            0|      9|   105|
|6-24 months |MAL-ED     |NEPAL        |Food Insecure        |            1|      3|   105|
|6-24 months |MAL-ED     |PERU         |Food Secure          |            0|      6|    61|
|6-24 months |MAL-ED     |PERU         |Food Secure          |            1|      7|    61|
|6-24 months |MAL-ED     |PERU         |Mildly Food Insecure |            0|      7|    61|
|6-24 months |MAL-ED     |PERU         |Mildly Food Insecure |            1|      9|    61|
|6-24 months |MAL-ED     |PERU         |Food Insecure        |            0|     17|    61|
|6-24 months |MAL-ED     |PERU         |Food Insecure        |            1|     15|    61|
|6-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |            0|     54|   144|
|6-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |            1|     25|   144|
|6-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |            0|     10|   144|
|6-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |            1|      6|   144|
|6-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |            0|     25|   144|
|6-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |            1|     24|   144|
|6-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |            0|     35|   345|
|6-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |            1|     21|   345|
|6-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |            0|    106|   345|
|6-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |            1|    161|   345|
|6-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |            0|      6|   345|
|6-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |            1|     16|   345|
|6-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |            0|    232|   506|
|6-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |            1|     82|   506|
|6-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |            0|    101|   506|
|6-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |            1|     33|   506|
|6-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |            0|     40|   506|
|6-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |            1|     18|   506|


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

* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/5d14d915-1cb9-42b7-93f3-81d4daa123bf/78e2e3f9-2e43-49d1-83ca-7c25a8d12294/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5d14d915-1cb9-42b7-93f3-81d4daa123bf/78e2e3f9-2e43-49d1-83ca-7c25a8d12294/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5d14d915-1cb9-42b7-93f3-81d4daa123bf/78e2e3f9-2e43-49d1-83ca-7c25a8d12294/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5d14d915-1cb9-42b7-93f3-81d4daa123bf/78e2e3f9-2e43-49d1-83ca-7c25a8d12294/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid    |country      |intervention_level   |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:----------|:------------|:--------------------|:--------------|---------:|---------:|---------:|
|0-24 months |GMS-Nepal  |NEPAL        |Food Secure          |NA             | 0.6240120| 0.5804101| 0.6676139|
|0-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |NA             | 0.6457321| 0.5507196| 0.7407447|
|0-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |NA             | 0.6919147| 0.5930295| 0.7908000|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |NA             | 0.5232548| 0.5102429| 0.5362668|
|0-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |NA             | 0.5215111| 0.5051901| 0.5378321|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |NA             | 0.5363707| 0.5130311| 0.5597102|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |NA             | 0.5833220| 0.5610930| 0.6055510|
|0-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |NA             | 0.5833157| 0.5577643| 0.6088670|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |NA             | 0.5660031| 0.5230726| 0.6089337|
|0-24 months |MAL-ED     |NEPAL        |Food Secure          |NA             | 0.3297872| 0.2343736| 0.4252009|
|0-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |NA             | 0.4000000| 0.1511078| 0.6488922|
|0-24 months |MAL-ED     |NEPAL        |Food Insecure        |NA             | 0.5263158| 0.3009219| 0.7517096|
|0-24 months |MAL-ED     |PERU         |Food Secure          |NA             | 0.7777778| 0.6202642| 0.9352913|
|0-24 months |MAL-ED     |PERU         |Mildly Food Insecure |NA             | 0.7241379| 0.5607440| 0.8875319|
|0-24 months |MAL-ED     |PERU         |Food Insecure        |NA             | 0.7017544| 0.5824599| 0.8210489|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |NA             | 0.5833333| 0.4990488| 0.6676179|
|0-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |NA             | 0.4736842| 0.2486892| 0.6986792|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |NA             | 0.6951220| 0.5952672| 0.7949767|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |NA             | 0.5368421| 0.4364916| 0.6371926|
|0-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |NA             | 0.6768293| 0.6354706| 0.7181879|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |NA             | 0.8095238| 0.6906725| 0.9283752|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |NA             | 0.4720817| 0.4262781| 0.5178852|
|0-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |NA             | 0.4693259| 0.4034709| 0.5351810|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |NA             | 0.5255096| 0.4217188| 0.6293005|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Secure          |NA             | 0.3047022| 0.2626987| 0.3467057|
|0-6 months  |GMS-Nepal  |NEPAL        |Mildly Food Insecure |NA             | 0.3698242| 0.2487124| 0.4909360|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Insecure        |NA             | 0.3072780| 0.2033196| 0.4112363|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Secure          |NA             | 0.3976327| 0.3843107| 0.4109547|
|0-6 months  |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |NA             | 0.3930848| 0.3771134| 0.4090561|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Insecure        |NA             | 0.4102498| 0.3865019| 0.4339977|
|0-6 months  |JiVitA-4   |BANGLADESH   |Food Secure          |NA             | 0.3595707| 0.3383406| 0.3808007|
|0-6 months  |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |NA             | 0.3472321| 0.3221283| 0.3723358|
|0-6 months  |JiVitA-4   |BANGLADESH   |Food Insecure        |NA             | 0.3064089| 0.2687177| 0.3441002|
|0-6 months  |MAL-ED     |PERU         |Food Secure          |NA             | 0.5224592| 0.3297417| 0.7151768|
|0-6 months  |MAL-ED     |PERU         |Mildly Food Insecure |NA             | 0.4274200| 0.2389966| 0.6158435|
|0-6 months  |MAL-ED     |PERU         |Food Insecure        |NA             | 0.4359720| 0.3045909| 0.5673531|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Secure          |NA             | 0.3060193| 0.2097463| 0.4022923|
|0-6 months  |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |NA             | 0.3500239| 0.3077684| 0.3922795|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Insecure        |NA             | 0.4147628| 0.2610364| 0.5684891|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Secure          |NA             | 0.2814562| 0.2399321| 0.3229803|
|0-6 months  |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |NA             | 0.3360845| 0.2733408| 0.3988282|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Insecure        |NA             | 0.3263017| 0.2256161| 0.4269873|
|6-24 months |GMS-Nepal  |NEPAL        |Food Secure          |NA             | 0.5422269| 0.4845623| 0.5998915|
|6-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |NA             | 0.5818321| 0.4371463| 0.7265179|
|6-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |NA             | 0.6257606| 0.4896636| 0.7618575|
|6-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |NA             | 0.2122645| 0.1989823| 0.2255468|
|6-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |NA             | 0.2136804| 0.1965376| 0.2308233|
|6-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |NA             | 0.2288456| 0.2034929| 0.2541982|
|6-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |NA             | 0.3705390| 0.3445742| 0.3965037|
|6-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |NA             | 0.3816947| 0.3507339| 0.4126556|
|6-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |NA             | 0.3879696| 0.3400559| 0.4358833|
|6-24 months |MAL-ED     |PERU         |Food Secure          |NA             | 0.5384615| 0.2652198| 0.8117033|
|6-24 months |MAL-ED     |PERU         |Mildly Food Insecure |NA             | 0.5625000| 0.3174088| 0.8075912|
|6-24 months |MAL-ED     |PERU         |Food Insecure        |NA             | 0.4687500| 0.2944158| 0.6430842|
|6-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |NA             | 0.3164557| 0.2135386| 0.4193728|
|6-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |NA             | 0.3750000| 0.1369561| 0.6130439|
|6-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |NA             | 0.4897959| 0.3493391| 0.6302527|
|6-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |NA             | 0.3750000| 0.2480186| 0.5019814|
|6-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |NA             | 0.6029963| 0.5442233| 0.6617692|
|6-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |NA             | 0.7272727| 0.5409010| 0.9136444|
|6-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |NA             | 0.2614828| 0.2128528| 0.3101129|
|6-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |NA             | 0.2468968| 0.1728157| 0.3209779|
|6-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |NA             | 0.3124733| 0.1919689| 0.4329778|


### Parameter: E(Y)


|agecat      |studyid    |country      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:----------|:------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |GMS-Nepal  |NEPAL        |NA                 |NA             | 0.6364985| 0.6001579| 0.6728391|
|0-24 months |JiVitA-3   |BANGLADESH   |NA                 |NA             | 0.5241082| 0.5145463| 0.5336700|
|0-24 months |JiVitA-4   |BANGLADESH   |NA                 |NA             | 0.5813264| 0.5653125| 0.5973403|
|0-24 months |MAL-ED     |NEPAL        |NA                 |NA             | 0.3671875| 0.2833521| 0.4510229|
|0-24 months |MAL-ED     |PERU         |NA                 |NA             | 0.7256637| 0.6430317| 0.8082957|
|0-24 months |MAL-ED     |SOUTH AFRICA |NA                 |NA             | 0.6137339| 0.5510815| 0.6763863|
|0-24 months |NIH-Birth  |BANGLADESH   |NA                 |NA             | 0.6645469| 0.6276196| 0.7014742|
|0-24 months |NIH-Crypto |BANGLADESH   |NA                 |NA             | 0.4775726| 0.4419904| 0.5131548|
|0-6 months  |GMS-Nepal  |NEPAL        |NA                 |NA             | 0.3160237| 0.2808984| 0.3511491|
|0-6 months  |JiVitA-3   |BANGLADESH   |NA                 |NA             | 0.3955073| 0.3867171| 0.4042976|
|0-6 months  |JiVitA-4   |BANGLADESH   |NA                 |NA             | 0.3483896| 0.3331073| 0.3636720|
|0-6 months  |MAL-ED     |PERU         |NA                 |NA             | 0.4513274| 0.3591676| 0.5434872|
|0-6 months  |NIH-Birth  |BANGLADESH   |NA                 |NA             | 0.3497615| 0.3124631| 0.3870600|
|0-6 months  |NIH-Crypto |BANGLADESH   |NA                 |NA             | 0.3021108| 0.2694011| 0.3348205|
|6-24 months |GMS-Nepal  |NEPAL        |NA                 |NA             | 0.5581395| 0.5085981| 0.6076809|
|6-24 months |JiVitA-3   |BANGLADESH   |NA                 |NA             | 0.2161025| 0.2066983| 0.2255067|
|6-24 months |JiVitA-4   |BANGLADESH   |NA                 |NA             | 0.3773167| 0.3586399| 0.3959936|
|6-24 months |MAL-ED     |PERU         |NA                 |NA             | 0.5081967| 0.3816986| 0.6346949|
|6-24 months |MAL-ED     |SOUTH AFRICA |NA                 |NA             | 0.3819444| 0.3023113| 0.4615776|
|6-24 months |NIH-Birth  |BANGLADESH   |NA                 |NA             | 0.5739130| 0.5216565| 0.6261696|
|6-24 months |NIH-Crypto |BANGLADESH   |NA                 |NA             | 0.2628458| 0.2244546| 0.3012371|


### Parameter: RR


|agecat      |studyid    |country      |intervention_level   |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:----------|:------------|:--------------------|:--------------|---------:|---------:|---------:|
|0-24 months |GMS-Nepal  |NEPAL        |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |Food Secure    | 1.0348072| 0.8791745| 1.2179902|
|0-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |Food Secure    | 1.1088163| 0.9456517| 1.3001337|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |Food Secure    | 0.9966676| 0.9608923| 1.0337749|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |Food Secure    | 1.0250659| 0.9776250| 1.0748089|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |Food Secure    | 0.9999891| 0.9435433| 1.0598117|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |Food Secure    | 0.9703099| 0.8913694| 1.0562415|
|0-24 months |MAL-ED     |NEPAL        |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |Food Secure    | 1.2129032| 0.6106769| 2.4090222|
|0-24 months |MAL-ED     |NEPAL        |Food Insecure        |Food Secure    | 1.5959253| 0.9518332| 2.6758654|
|0-24 months |MAL-ED     |PERU         |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED     |PERU         |Mildly Food Insecure |Food Secure    | 0.9310345| 0.6875281| 1.2607852|
|0-24 months |MAL-ED     |PERU         |Food Insecure        |Food Secure    | 0.9022556| 0.6926259| 1.1753317|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |Food Secure    | 0.8120301| 0.4942582| 1.3341060|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |Food Secure    | 1.1916376| 0.9719830| 1.4609312|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |Food Secure    | 1.2607604| 1.0356748| 1.5347643|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |Food Secure    | 1.5079365| 1.1889272| 1.9125414|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |Food Secure    | 0.9941626| 0.8391624| 1.1777926|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |Food Secure    | 1.1131752| 0.8943140| 1.3855974|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |GMS-Nepal  |NEPAL        |Mildly Food Insecure |Food Secure    | 1.2137235| 0.8506459| 1.7317720|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Insecure        |Food Secure    | 1.0084534| 0.7000228| 1.4527787|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |Food Secure    | 0.9885624| 0.9390366| 1.0407003|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Insecure        |Food Secure    | 1.0317306| 0.9662456| 1.1016536|
|0-6 months  |JiVitA-4   |BANGLADESH   |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |Food Secure    | 0.9656852| 0.8809595| 1.0585593|
|0-6 months  |JiVitA-4   |BANGLADESH   |Food Insecure        |Food Secure    | 0.8521522| 0.7433166| 0.9769234|
|0-6 months  |MAL-ED     |PERU         |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED     |PERU         |Mildly Food Insecure |Food Secure    | 0.8180926| 0.4609345| 1.4519969|
|0-6 months  |MAL-ED     |PERU         |Food Insecure        |Food Secure    | 0.8344613| 0.5173603| 1.3459201|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |Food Secure    | 1.1437968| 0.8164783| 1.6023342|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Insecure        |Food Secure    | 1.3553483| 0.8338832| 2.2029091|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |Food Secure    | 1.1940917| 0.9412817| 1.5148017|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Insecure        |Food Secure    | 1.1593338| 0.8231955| 1.6327286|
|6-24 months |GMS-Nepal  |NEPAL        |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |Food Secure    | 1.0730417| 0.8186382| 1.4065047|
|6-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |Food Secure    | 1.1540566| 0.9057190| 1.4704855|
|6-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |Food Secure    | 1.0066704| 0.9120211| 1.1111423|
|6-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |Food Secure    | 1.0781150| 0.9568134| 1.2147948|
|6-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |Food Secure    | 1.0301068| 0.9254304| 1.1466233|
|6-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |Food Secure    | 1.0470413| 0.9093163| 1.2056261|
|6-24 months |MAL-ED     |PERU         |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |MAL-ED     |PERU         |Mildly Food Insecure |Food Secure    | 1.0446429| 0.5351702| 2.0391245|
|6-24 months |MAL-ED     |PERU         |Food Insecure        |Food Secure    | 0.8705357| 0.4640367| 1.6331303|
|6-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |Food Secure    | 1.1850000| 0.5807115| 2.4181113|
|6-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |Food Secure    | 1.5477551| 1.0032193| 2.3878586|
|6-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |Food Secure    | 1.6079900| 1.1304540| 2.2872508|
|6-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |Food Secure    | 1.9393939| 1.2683556| 2.9654529|
|6-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |Food Secure    | 0.9442179| 0.6634676| 1.3437693|
|6-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |Food Secure    | 1.1950050| 0.7792216| 1.8326454|


### Parameter: PAR


|agecat      |studyid    |country      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:----------|:------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |GMS-Nepal  |NEPAL        |Food Secure        |NA             |  0.0124865| -0.0106561| 0.0356290|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Secure        |NA             |  0.0008534| -0.0086977| 0.0104044|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Secure        |NA             | -0.0019956| -0.0177481| 0.0137569|
|0-24 months |MAL-ED     |NEPAL        |Food Secure        |NA             |  0.0374003| -0.0151449| 0.0899454|
|0-24 months |MAL-ED     |PERU         |Food Secure        |NA             | -0.0521141| -0.1927633| 0.0885352|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Secure        |NA             |  0.0304006| -0.0241903| 0.0849915|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Secure        |NA             |  0.1277048|  0.0360971| 0.2193125|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Secure        |NA             |  0.0054909| -0.0232107| 0.0341925|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Secure        |NA             |  0.0113215| -0.0127219| 0.0353650|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Secure        |NA             | -0.0021254| -0.0122315| 0.0079807|
|0-6 months  |JiVitA-4   |BANGLADESH   |Food Secure        |NA             | -0.0111810| -0.0258264| 0.0034643|
|0-6 months  |MAL-ED     |PERU         |Food Secure        |NA             | -0.0711318| -0.2395391| 0.0972755|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Secure        |NA             |  0.0437422| -0.0454919| 0.1329762|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Secure        |NA             |  0.0206546| -0.0065122| 0.0478215|
|6-24 months |GMS-Nepal  |NEPAL        |Food Secure        |NA             |  0.0159126| -0.0130728| 0.0448980|
|6-24 months |JiVitA-3   |BANGLADESH   |Food Secure        |NA             |  0.0038380| -0.0060820| 0.0137580|
|6-24 months |JiVitA-4   |BANGLADESH   |Food Secure        |NA             |  0.0067777| -0.0116540| 0.0252095|
|6-24 months |MAL-ED     |PERU         |Food Secure        |NA             | -0.0302648| -0.2728345| 0.2123049|
|6-24 months |MAL-ED     |SOUTH AFRICA |Food Secure        |NA             |  0.0654887| -0.0073924| 0.1383699|
|6-24 months |NIH-Birth  |BANGLADESH   |Food Secure        |NA             |  0.1989130|  0.0822062| 0.3156198|
|6-24 months |NIH-Crypto |BANGLADESH   |Food Secure        |NA             |  0.0013630| -0.0286548| 0.0313808|


### Parameter: PAF


|agecat      |studyid    |country      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:----------|:------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |GMS-Nepal  |NEPAL        |Food Secure        |NA             |  0.0196175| -0.0174732| 0.0553561|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Secure        |NA             |  0.0016282| -0.0167604| 0.0196843|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Secure        |NA             | -0.0034328| -0.0309017| 0.0233041|
|0-24 months |MAL-ED     |NEPAL        |Food Secure        |NA             |  0.1018560| -0.0533699| 0.2342077|
|0-24 months |MAL-ED     |PERU         |Food Secure        |NA             | -0.0718157| -0.2852318| 0.1061621|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Secure        |NA             |  0.0495338| -0.0440285| 0.1347113|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Secure        |NA             |  0.1921682|  0.0407818| 0.3196624|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Secure        |NA             |  0.0114975| -0.0504761| 0.0698149|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Secure        |NA             |  0.0358250| -0.0433298| 0.1089745|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Secure        |NA             | -0.0053739| -0.0312552| 0.0198579|
|0-6 months  |JiVitA-4   |BANGLADESH   |Food Secure        |NA             | -0.0320935| -0.0750143| 0.0091137|
|0-6 months  |MAL-ED     |PERU         |Food Secure        |NA             | -0.1576057| -0.5994045| 0.1621562|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Secure        |NA             |  0.1250629| -0.1713953| 0.3464931|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Secure        |NA             |  0.0683678| -0.0259902| 0.1540478|
|6-24 months |GMS-Nepal  |NEPAL        |Food Secure        |NA             |  0.0285101| -0.0249287| 0.0791626|
|6-24 months |JiVitA-3   |BANGLADESH   |Food Secure        |NA             |  0.0177599| -0.0291954| 0.0625730|
|6-24 months |JiVitA-4   |BANGLADESH   |Food Secure        |NA             |  0.0179630| -0.0321108| 0.0656075|
|6-24 months |MAL-ED     |PERU         |Food Secure        |NA             | -0.0595533| -0.6629489| 0.3249021|
|6-24 months |MAL-ED     |SOUTH AFRICA |Food Secure        |NA             |  0.1714614| -0.0432176| 0.3419627|
|6-24 months |NIH-Birth  |BANGLADESH   |Food Secure        |NA             |  0.3465909|  0.1055065| 0.5226981|
|6-24 months |NIH-Crypto |BANGLADESH   |Food Secure        |NA             |  0.0051856| -0.1158301| 0.1130766|
