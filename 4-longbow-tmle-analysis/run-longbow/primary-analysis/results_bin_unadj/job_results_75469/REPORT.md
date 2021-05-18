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

**Intervention Variable:** month

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                     |studyid        |country      | month| ever_stunted| n_cell|     n|
|:--------------------------|:--------------|:------------|-----:|------------:|------:|-----:|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |     1|            0|      3|   296|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |     1|            1|     22|   296|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |     2|            0|      1|   296|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |     2|            1|     12|   296|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |     3|            0|      0|   296|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |     3|            1|     29|   296|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |     4|            0|      8|   296|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |     4|            1|     30|   296|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |     5|            0|      1|   296|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |     5|            1|     29|   296|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |     6|            0|      2|   296|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |     6|            1|     29|   296|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |     7|            0|      4|   296|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |     7|            1|     28|   296|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |     8|            0|      2|   296|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |     8|            1|     10|   296|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |     9|            0|      0|   296|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |     9|            1|     13|   296|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |    10|            0|      3|   296|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |    10|            1|     21|   296|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |    11|            0|      4|   296|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |    11|            1|     30|   296|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |    12|            0|      0|   296|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |    12|            1|     15|   296|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |     1|            0|      2|   168|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |     1|            1|     13|   168|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |     2|            0|      6|   168|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |     2|            1|     15|   168|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |     3|            0|      6|   168|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |     3|            1|     10|   168|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |     4|            0|      3|   168|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |     4|            1|     13|   168|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |     5|            0|      4|   168|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |     5|            1|     11|   168|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |     6|            0|      1|   168|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |     6|            1|      9|   168|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |     7|            0|      2|   168|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |     7|            1|      5|   168|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |     8|            0|      2|   168|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |     8|            1|     10|   168|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |     9|            0|      2|   168|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |     9|            1|      9|   168|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |    10|            0|      3|   168|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |    10|            1|      9|   168|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |    11|            0|      2|   168|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |    11|            1|      1|   168|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |    12|            0|      8|   168|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |    12|            1|     22|   168|
|0-24 months (no birth st.) |CONTENT        |PERU         |     1|            0|      9|   195|
|0-24 months (no birth st.) |CONTENT        |PERU         |     1|            1|      0|   195|
|0-24 months (no birth st.) |CONTENT        |PERU         |     2|            0|     12|   195|
|0-24 months (no birth st.) |CONTENT        |PERU         |     2|            1|      1|   195|
|0-24 months (no birth st.) |CONTENT        |PERU         |     3|            0|     23|   195|
|0-24 months (no birth st.) |CONTENT        |PERU         |     3|            1|      4|   195|
|0-24 months (no birth st.) |CONTENT        |PERU         |     4|            0|     11|   195|
|0-24 months (no birth st.) |CONTENT        |PERU         |     4|            1|      6|   195|
|0-24 months (no birth st.) |CONTENT        |PERU         |     5|            0|     15|   195|
|0-24 months (no birth st.) |CONTENT        |PERU         |     5|            1|      6|   195|
|0-24 months (no birth st.) |CONTENT        |PERU         |     6|            0|      9|   195|
|0-24 months (no birth st.) |CONTENT        |PERU         |     6|            1|      3|   195|
|0-24 months (no birth st.) |CONTENT        |PERU         |     7|            0|     16|   195|
|0-24 months (no birth st.) |CONTENT        |PERU         |     7|            1|      0|   195|
|0-24 months (no birth st.) |CONTENT        |PERU         |     8|            0|     17|   195|
|0-24 months (no birth st.) |CONTENT        |PERU         |     8|            1|      3|   195|
|0-24 months (no birth st.) |CONTENT        |PERU         |     9|            0|      9|   195|
|0-24 months (no birth st.) |CONTENT        |PERU         |     9|            1|      6|   195|
|0-24 months (no birth st.) |CONTENT        |PERU         |    10|            0|     20|   195|
|0-24 months (no birth st.) |CONTENT        |PERU         |    10|            1|      3|   195|
|0-24 months (no birth st.) |CONTENT        |PERU         |    11|            0|     14|   195|
|0-24 months (no birth st.) |CONTENT        |PERU         |    11|            1|      1|   195|
|0-24 months (no birth st.) |CONTENT        |PERU         |    12|            0|      7|   195|
|0-24 months (no birth st.) |CONTENT        |PERU         |    12|            1|      0|   195|
|0-24 months (no birth st.) |EE             |PAKISTAN     |     1|            0|     12|   213|
|0-24 months (no birth st.) |EE             |PAKISTAN     |     1|            1|     32|   213|
|0-24 months (no birth st.) |EE             |PAKISTAN     |     2|            0|      9|   213|
|0-24 months (no birth st.) |EE             |PAKISTAN     |     2|            1|     31|   213|
|0-24 months (no birth st.) |EE             |PAKISTAN     |     3|            0|      3|   213|
|0-24 months (no birth st.) |EE             |PAKISTAN     |     3|            1|     27|   213|
|0-24 months (no birth st.) |EE             |PAKISTAN     |     4|            0|      1|   213|
|0-24 months (no birth st.) |EE             |PAKISTAN     |     4|            1|      5|   213|
|0-24 months (no birth st.) |EE             |PAKISTAN     |     5|            0|      0|   213|
|0-24 months (no birth st.) |EE             |PAKISTAN     |     5|            1|      0|   213|
|0-24 months (no birth st.) |EE             |PAKISTAN     |     6|            0|      0|   213|
|0-24 months (no birth st.) |EE             |PAKISTAN     |     6|            1|      0|   213|
|0-24 months (no birth st.) |EE             |PAKISTAN     |     7|            0|      0|   213|
|0-24 months (no birth st.) |EE             |PAKISTAN     |     7|            1|      0|   213|
|0-24 months (no birth st.) |EE             |PAKISTAN     |     8|            0|      0|   213|
|0-24 months (no birth st.) |EE             |PAKISTAN     |     8|            1|      0|   213|
|0-24 months (no birth st.) |EE             |PAKISTAN     |     9|            0|      0|   213|
|0-24 months (no birth st.) |EE             |PAKISTAN     |     9|            1|      0|   213|
|0-24 months (no birth st.) |EE             |PAKISTAN     |    10|            0|      1|   213|
|0-24 months (no birth st.) |EE             |PAKISTAN     |    10|            1|      2|   213|
|0-24 months (no birth st.) |EE             |PAKISTAN     |    11|            0|      8|   213|
|0-24 months (no birth st.) |EE             |PAKISTAN     |    11|            1|     38|   213|
|0-24 months (no birth st.) |EE             |PAKISTAN     |    12|            0|      7|   213|
|0-24 months (no birth st.) |EE             |PAKISTAN     |    12|            1|     37|   213|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |     1|            0|      0|   576|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |     1|            1|      0|   576|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |     2|            0|      0|   576|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |     2|            1|      0|   576|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |     3|            0|      0|   576|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |     3|            1|      0|   576|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |     4|            0|      0|   576|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |     4|            1|      1|   576|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |     5|            0|      0|   576|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |     5|            1|      0|   576|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |     6|            0|     65|   576|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |     6|            1|     67|   576|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |     7|            0|     89|   576|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |     7|            1|    124|   576|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |     8|            0|     98|   576|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |     8|            1|    132|   576|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |     9|            0|      0|   576|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |     9|            1|      0|   576|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |    10|            0|      0|   576|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |    10|            1|      0|   576|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |    11|            0|      0|   576|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |    11|            1|      0|   576|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |    12|            0|      0|   576|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |    12|            1|      0|   576|
|0-24 months (no birth st.) |Guatemala BSC  |GUATEMALA    |     1|            0|      9|   239|
|0-24 months (no birth st.) |Guatemala BSC  |GUATEMALA    |     1|            1|      4|   239|
|0-24 months (no birth st.) |Guatemala BSC  |GUATEMALA    |     2|            0|      9|   239|
|0-24 months (no birth st.) |Guatemala BSC  |GUATEMALA    |     2|            1|      7|   239|
|0-24 months (no birth st.) |Guatemala BSC  |GUATEMALA    |     3|            0|      6|   239|
|0-24 months (no birth st.) |Guatemala BSC  |GUATEMALA    |     3|            1|     10|   239|
|0-24 months (no birth st.) |Guatemala BSC  |GUATEMALA    |     4|            0|     14|   239|
|0-24 months (no birth st.) |Guatemala BSC  |GUATEMALA    |     4|            1|     10|   239|
|0-24 months (no birth st.) |Guatemala BSC  |GUATEMALA    |     5|            0|     17|   239|
|0-24 months (no birth st.) |Guatemala BSC  |GUATEMALA    |     5|            1|     12|   239|
|0-24 months (no birth st.) |Guatemala BSC  |GUATEMALA    |     6|            0|     17|   239|
|0-24 months (no birth st.) |Guatemala BSC  |GUATEMALA    |     6|            1|     12|   239|
|0-24 months (no birth st.) |Guatemala BSC  |GUATEMALA    |     7|            0|     12|   239|
|0-24 months (no birth st.) |Guatemala BSC  |GUATEMALA    |     7|            1|      6|   239|
|0-24 months (no birth st.) |Guatemala BSC  |GUATEMALA    |     8|            0|     10|   239|
|0-24 months (no birth st.) |Guatemala BSC  |GUATEMALA    |     8|            1|      5|   239|
|0-24 months (no birth st.) |Guatemala BSC  |GUATEMALA    |     9|            0|     18|   239|
|0-24 months (no birth st.) |Guatemala BSC  |GUATEMALA    |     9|            1|      5|   239|
|0-24 months (no birth st.) |Guatemala BSC  |GUATEMALA    |    10|            0|     15|   239|
|0-24 months (no birth st.) |Guatemala BSC  |GUATEMALA    |    10|            1|      9|   239|
|0-24 months (no birth st.) |Guatemala BSC  |GUATEMALA    |    11|            0|     16|   239|
|0-24 months (no birth st.) |Guatemala BSC  |GUATEMALA    |    11|            1|      8|   239|
|0-24 months (no birth st.) |Guatemala BSC  |GUATEMALA    |    12|            0|      5|   239|
|0-24 months (no birth st.) |Guatemala BSC  |GUATEMALA    |    12|            1|      3|   239|
|0-24 months (no birth st.) |iLiNS-Zinc     |BURKINA FASO |     1|            0|    157|  2533|
|0-24 months (no birth st.) |iLiNS-Zinc     |BURKINA FASO |     1|            1|     28|  2533|
|0-24 months (no birth st.) |iLiNS-Zinc     |BURKINA FASO |     2|            0|    121|  2533|
|0-24 months (no birth st.) |iLiNS-Zinc     |BURKINA FASO |     2|            1|     24|  2533|
|0-24 months (no birth st.) |iLiNS-Zinc     |BURKINA FASO |     3|            0|    142|  2533|
|0-24 months (no birth st.) |iLiNS-Zinc     |BURKINA FASO |     3|            1|     32|  2533|
|0-24 months (no birth st.) |iLiNS-Zinc     |BURKINA FASO |     4|            0|    114|  2533|
|0-24 months (no birth st.) |iLiNS-Zinc     |BURKINA FASO |     4|            1|     29|  2533|
|0-24 months (no birth st.) |iLiNS-Zinc     |BURKINA FASO |     5|            0|    156|  2533|
|0-24 months (no birth st.) |iLiNS-Zinc     |BURKINA FASO |     5|            1|     32|  2533|
|0-24 months (no birth st.) |iLiNS-Zinc     |BURKINA FASO |     6|            0|    236|  2533|
|0-24 months (no birth st.) |iLiNS-Zinc     |BURKINA FASO |     6|            1|     53|  2533|
|0-24 months (no birth st.) |iLiNS-Zinc     |BURKINA FASO |     7|            0|    267|  2533|
|0-24 months (no birth st.) |iLiNS-Zinc     |BURKINA FASO |     7|            1|     61|  2533|
|0-24 months (no birth st.) |iLiNS-Zinc     |BURKINA FASO |     8|            0|    229|  2533|
|0-24 months (no birth st.) |iLiNS-Zinc     |BURKINA FASO |     8|            1|     52|  2533|
|0-24 months (no birth st.) |iLiNS-Zinc     |BURKINA FASO |     9|            0|    178|  2533|
|0-24 months (no birth st.) |iLiNS-Zinc     |BURKINA FASO |     9|            1|     44|  2533|
|0-24 months (no birth st.) |iLiNS-Zinc     |BURKINA FASO |    10|            0|    255|  2533|
|0-24 months (no birth st.) |iLiNS-Zinc     |BURKINA FASO |    10|            1|     45|  2533|
|0-24 months (no birth st.) |iLiNS-Zinc     |BURKINA FASO |    11|            0|    123|  2533|
|0-24 months (no birth st.) |iLiNS-Zinc     |BURKINA FASO |    11|            1|     27|  2533|
|0-24 months (no birth st.) |iLiNS-Zinc     |BURKINA FASO |    12|            0|    104|  2533|
|0-24 months (no birth st.) |iLiNS-Zinc     |BURKINA FASO |    12|            1|     24|  2533|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |     1|            0|   1253| 18376|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |     1|            1|    394| 18376|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |     2|            0|   1076| 18376|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |     2|            1|    373| 18376|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |     3|            0|   1371| 18376|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |     3|            1|    388| 18376|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |     4|            0|   1041| 18376|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |     4|            1|    294| 18376|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |     5|            0|    740| 18376|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |     5|            1|    251| 18376|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |     6|            0|    709| 18376|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |     6|            1|    274| 18376|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |     7|            0|    826| 18376|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |     7|            1|    284| 18376|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |     8|            0|   1056| 18376|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |     8|            1|    347| 18376|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |     9|            0|   1391| 18376|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |     9|            1|    474| 18376|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |    10|            0|   1438| 18376|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |    10|            1|    501| 18376|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |    11|            0|   1364| 18376|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |    11|            1|    524| 18376|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |    12|            0|   1476| 18376|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |    12|            1|    531| 18376|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |     1|            0|     25|  3886|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |     1|            1|     12|  3886|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |     2|            0|    152|  3886|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |     2|            1|     92|  3886|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |     3|            0|    184|  3886|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |     3|            1|    117|  3886|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |     4|            0|    366|  3886|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |     4|            1|    295|  3886|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |     5|            0|    244|  3886|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |     5|            1|    195|  3886|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |     6|            0|    185|  3886|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |     6|            1|    134|  3886|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |     7|            0|    373|  3886|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |     7|            1|    272|  3886|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |     8|            0|    242|  3886|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |     8|            1|    178|  3886|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |     9|            0|    229|  3886|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |     9|            1|    151|  3886|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |    10|            0|    157|  3886|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |    10|            1|     91|  3886|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |    11|            0|     83|  3886|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |    11|            1|     51|  3886|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |    12|            0|     39|  3886|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |    12|            1|     19|  3886|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |     1|            0|    124|  2595|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |     1|            1|     93|  2595|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |     2|            0|    157|  2595|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |     2|            1|    107|  2595|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |     3|            0|    114|  2595|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |     3|            1|     97|  2595|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |     4|            0|    141|  2595|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |     4|            1|    125|  2595|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |     5|            0|    133|  2595|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |     5|            1|     87|  2595|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |     6|            0|    104|  2595|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |     6|            1|     94|  2595|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |     7|            0|     77|  2595|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |     7|            1|     78|  2595|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |     8|            0|     84|  2595|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |     8|            1|     73|  2595|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |     9|            0|    106|  2595|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |     9|            1|     97|  2595|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |    10|            0|    107|  2595|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |    10|            1|     98|  2595|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |    11|            0|    151|  2595|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |    11|            1|    134|  2595|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |    12|            0|    123|  2595|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |    12|            1|     91|  2595|
|0-24 months (no birth st.) |LCNI-5         |MALAWI       |     1|            0|     22|   531|
|0-24 months (no birth st.) |LCNI-5         |MALAWI       |     1|            1|     17|   531|
|0-24 months (no birth st.) |LCNI-5         |MALAWI       |     2|            0|     46|   531|
|0-24 months (no birth st.) |LCNI-5         |MALAWI       |     2|            1|     30|   531|
|0-24 months (no birth st.) |LCNI-5         |MALAWI       |     3|            0|     33|   531|
|0-24 months (no birth st.) |LCNI-5         |MALAWI       |     3|            1|     30|   531|
|0-24 months (no birth st.) |LCNI-5         |MALAWI       |     4|            0|     32|   531|
|0-24 months (no birth st.) |LCNI-5         |MALAWI       |     4|            1|     29|   531|
|0-24 months (no birth st.) |LCNI-5         |MALAWI       |     5|            0|     40|   531|
|0-24 months (no birth st.) |LCNI-5         |MALAWI       |     5|            1|     32|   531|
|0-24 months (no birth st.) |LCNI-5         |MALAWI       |     6|            0|     30|   531|
|0-24 months (no birth st.) |LCNI-5         |MALAWI       |     6|            1|     32|   531|
|0-24 months (no birth st.) |LCNI-5         |MALAWI       |     7|            0|     25|   531|
|0-24 months (no birth st.) |LCNI-5         |MALAWI       |     7|            1|     15|   531|
|0-24 months (no birth st.) |LCNI-5         |MALAWI       |     8|            0|     16|   531|
|0-24 months (no birth st.) |LCNI-5         |MALAWI       |     8|            1|     12|   531|
|0-24 months (no birth st.) |LCNI-5         |MALAWI       |     9|            0|     11|   531|
|0-24 months (no birth st.) |LCNI-5         |MALAWI       |     9|            1|      7|   531|
|0-24 months (no birth st.) |LCNI-5         |MALAWI       |    10|            0|     16|   531|
|0-24 months (no birth st.) |LCNI-5         |MALAWI       |    10|            1|      5|   531|
|0-24 months (no birth st.) |LCNI-5         |MALAWI       |    11|            0|     23|   531|
|0-24 months (no birth st.) |LCNI-5         |MALAWI       |    11|            1|      9|   531|
|0-24 months (no birth st.) |LCNI-5         |MALAWI       |    12|            0|     11|   531|
|0-24 months (no birth st.) |LCNI-5         |MALAWI       |    12|            1|      8|   531|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |     1|            0|      4|   210|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |     1|            1|     14|   210|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |     2|            0|     14|   210|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |     2|            1|      6|   210|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |     3|            0|     10|   210|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |     3|            1|     10|   210|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |     4|            0|      6|   210|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |     4|            1|      9|   210|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |     5|            0|      3|   210|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |     5|            1|      4|   210|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |     6|            0|      9|   210|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |     6|            1|      9|   210|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |     7|            0|     12|   210|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |     7|            1|      7|   210|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |     8|            0|      7|   210|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |     8|            1|     11|   210|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |     9|            0|     10|   210|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |     9|            1|      8|   210|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |    10|            0|      9|   210|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |    10|            1|     13|   210|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |    11|            0|      8|   210|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |    11|            1|     12|   210|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |    12|            0|      7|   210|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |    12|            1|      8|   210|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |     1|            0|      9|   217|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |     1|            1|      9|   217|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |     2|            0|      7|   217|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |     2|            1|     11|   217|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |     3|            0|      8|   217|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |     3|            1|     12|   217|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |     4|            0|     12|   217|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |     4|            1|     10|   217|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |     5|            0|      5|   217|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |     5|            1|     12|   217|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |     6|            0|      3|   217|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |     6|            1|      2|   217|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |     7|            0|      8|   217|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |     7|            1|      9|   217|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |     8|            0|     10|   217|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |     8|            1|     10|   217|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |     9|            0|      9|   217|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |     9|            1|     11|   217|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |    10|            0|     14|   217|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |    10|            1|      6|   217|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |    11|            0|      7|   217|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |    11|            1|      8|   217|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |    12|            0|     11|   217|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |    12|            1|     14|   217|
|0-24 months (no birth st.) |MAL-ED         |PERU         |     1|            0|     17|   266|
|0-24 months (no birth st.) |MAL-ED         |PERU         |     1|            1|     18|   266|
|0-24 months (no birth st.) |MAL-ED         |PERU         |     2|            0|      8|   266|
|0-24 months (no birth st.) |MAL-ED         |PERU         |     2|            1|     13|   266|
|0-24 months (no birth st.) |MAL-ED         |PERU         |     3|            0|     10|   266|
|0-24 months (no birth st.) |MAL-ED         |PERU         |     3|            1|      9|   266|
|0-24 months (no birth st.) |MAL-ED         |PERU         |     4|            0|      7|   266|
|0-24 months (no birth st.) |MAL-ED         |PERU         |     4|            1|     11|   266|
|0-24 months (no birth st.) |MAL-ED         |PERU         |     5|            0|      9|   266|
|0-24 months (no birth st.) |MAL-ED         |PERU         |     5|            1|     14|   266|
|0-24 months (no birth st.) |MAL-ED         |PERU         |     6|            0|      7|   266|
|0-24 months (no birth st.) |MAL-ED         |PERU         |     6|            1|     10|   266|
|0-24 months (no birth st.) |MAL-ED         |PERU         |     7|            0|      5|   266|
|0-24 months (no birth st.) |MAL-ED         |PERU         |     7|            1|     17|   266|
|0-24 months (no birth st.) |MAL-ED         |PERU         |     8|            0|     10|   266|
|0-24 months (no birth st.) |MAL-ED         |PERU         |     8|            1|      9|   266|
|0-24 months (no birth st.) |MAL-ED         |PERU         |     9|            0|      9|   266|
|0-24 months (no birth st.) |MAL-ED         |PERU         |     9|            1|     14|   266|
|0-24 months (no birth st.) |MAL-ED         |PERU         |    10|            0|     16|   266|
|0-24 months (no birth st.) |MAL-ED         |PERU         |    10|            1|      7|   266|
|0-24 months (no birth st.) |MAL-ED         |PERU         |    11|            0|      9|   266|
|0-24 months (no birth st.) |MAL-ED         |PERU         |    11|            1|     16|   266|
|0-24 months (no birth st.) |MAL-ED         |PERU         |    12|            0|      8|   266|
|0-24 months (no birth st.) |MAL-ED         |PERU         |    12|            1|     13|   266|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |     1|            0|     12|   211|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |     1|            1|      4|   211|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |     2|            0|     12|   211|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |     2|            1|      5|   211|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |     3|            0|      7|   211|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |     3|            1|      8|   211|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |     4|            0|     14|   211|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |     4|            1|      4|   211|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |     5|            0|     13|   211|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |     5|            1|      8|   211|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |     6|            0|     17|   211|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |     6|            1|      2|   211|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |     7|            0|     14|   211|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |     7|            1|      3|   211|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |     8|            0|     17|   211|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |     8|            1|      4|   211|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |     9|            0|     11|   211|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |     9|            1|      1|   211|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |    10|            0|     16|   211|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |    10|            1|      3|   211|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |    11|            0|     12|   211|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |    11|            1|      8|   211|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |    12|            0|     11|   211|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |    12|            1|      5|   211|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |     1|            0|     11|   202|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |     1|            1|      2|   202|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |     2|            0|     18|   202|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |     2|            1|      5|   202|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |     3|            0|     16|   202|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |     3|            1|      3|   202|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |     4|            0|      9|   202|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |     4|            1|      1|   202|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |     5|            0|     17|   202|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |     5|            1|      3|   202|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |     6|            0|      6|   202|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |     6|            1|      1|   202|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |     7|            0|     10|   202|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |     7|            1|      5|   202|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |     8|            0|     15|   202|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |     8|            1|      3|   202|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |     9|            0|     22|   202|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |     9|            1|      5|   202|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |    10|            0|     18|   202|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |    10|            1|      2|   202|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |    11|            0|     17|   202|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |    11|            1|      1|   202|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |    12|            0|     11|   202|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |    12|            1|      1|   202|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |     1|            0|      6|   219|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |     1|            1|     13|   219|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |     2|            0|      6|   219|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |     2|            1|     17|   219|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |     3|            0|      3|   219|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |     3|            1|     16|   219|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |     4|            0|      3|   219|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |     4|            1|      7|   219|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |     5|            0|      3|   219|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |     5|            1|     11|   219|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |     6|            0|      1|   219|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |     6|            1|     17|   219|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |     7|            0|      5|   219|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |     7|            1|     16|   219|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |     8|            0|      2|   219|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |     8|            1|      9|   219|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |     9|            0|      3|   219|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |     9|            1|     13|   219|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |    10|            0|      1|   219|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |    10|            1|     15|   219|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |    11|            0|      1|   219|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |    11|            1|     23|   219|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |    12|            0|      6|   219|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |    12|            1|     22|   219|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |     1|            0|     16|   275|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |     1|            1|     21|   275|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |     2|            0|     12|   275|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |     2|            1|     16|   275|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |     3|            0|     12|   275|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |     3|            1|      5|   275|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |     4|            0|      8|   275|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |     4|            1|      4|   275|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |     5|            0|     10|   275|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |     5|            1|      5|   275|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |     6|            0|     11|   275|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |     6|            1|      8|   275|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |     7|            0|     12|   275|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |     7|            1|     12|   275|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |     8|            0|      6|   275|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |     8|            1|      5|   275|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |     9|            0|     12|   275|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |     9|            1|     10|   275|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |    10|            0|     10|   275|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |    10|            1|     17|   275|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |    11|            0|     11|   275|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |    11|            1|     10|   275|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |    12|            0|     18|   275|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |    12|            1|     24|   275|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |     1|            0|     21|   530|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |     1|            1|     29|   530|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |     2|            0|     22|   530|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |     2|            1|     28|   530|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |     3|            0|     27|   530|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |     3|            1|     27|   530|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |     4|            0|     16|   530|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |     4|            1|     28|   530|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |     5|            0|     17|   530|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |     5|            1|     24|   530|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |     6|            0|     15|   530|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |     6|            1|     26|   530|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |     7|            0|     15|   530|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |     7|            1|     27|   530|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |     8|            0|     13|   530|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |     8|            1|     25|   530|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |     9|            0|     14|   530|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |     9|            1|     14|   530|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |    10|            0|     19|   530|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |    10|            1|     31|   530|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |    11|            0|     13|   530|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |    11|            1|     31|   530|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |    12|            0|     19|   530|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |    12|            1|     29|   530|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |     1|            0|   1013| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |     1|            1|    162| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |     2|            0|    823| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |     2|            1|    172| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |     3|            0|   1022| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |     3|            1|    154| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |     4|            0|    998| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |     4|            1|    120| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |     5|            0|   1028| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |     5|            1|    119| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |     6|            0|   1090| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |     6|            1|    130| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |     7|            0|   1314| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |     7|            1|    146| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |     8|            0|   1446| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |     8|            1|    159| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |     9|            0|   1403| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |     9|            1|    177| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |    10|            0|   1564| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |    10|            1|    214| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |    11|            0|   1484| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |    11|            1|    210| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |    12|            0|   1559| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |    12|            1|    258| 16765|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |     1|            0|     15|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |     1|            1|     13|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |     2|            0|     17|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |     2|            1|     18|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |     3|            0|     17|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |     3|            1|     10|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |     4|            0|     38|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |     4|            1|     10|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |     5|            0|     21|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |     5|            1|     16|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |     6|            0|     37|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |     6|            1|     10|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |     7|            0|     46|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |     7|            1|     33|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |     8|            0|     54|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |     8|            1|     28|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |     9|            0|     44|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |     9|            1|     21|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |    10|            0|     46|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |    10|            1|     28|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |    11|            0|     41|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |    11|            1|     31|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |    12|            0|     19|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |    12|            1|     20|   633|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |     1|            0|      0|   202|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |     1|            1|      2|   202|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |     2|            0|      0|   202|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |     2|            1|      8|   202|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |     3|            0|      4|   202|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |     3|            1|      4|   202|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |     4|            0|      5|   202|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |     4|            1|     10|   202|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |     5|            0|     11|   202|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |     5|            1|     13|   202|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |     6|            0|     17|   202|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |     6|            1|     16|   202|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |     7|            0|     16|   202|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |     7|            1|     17|   202|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |     8|            0|      8|   202|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |     8|            1|     10|   202|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |     9|            0|     23|   202|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |     9|            1|     14|   202|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |    10|            0|      7|   202|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |    10|            1|      7|   202|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |    11|            0|      4|   202|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |    11|            1|      2|   202|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |    12|            0|      2|   202|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |    12|            1|      2|   202|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |     1|            0|     32|  1090|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |     1|            1|     45|  1090|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |     2|            0|     34|  1090|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |     2|            1|     28|  1090|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |     3|            0|     32|  1090|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |     3|            1|     27|  1090|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |     4|            0|     22|  1090|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |     4|            1|     43|  1090|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |     5|            0|     27|  1090|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |     5|            1|     37|  1090|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |     6|            0|     40|  1090|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |     6|            1|     46|  1090|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |     7|            0|     32|  1090|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |     7|            1|     53|  1090|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |     8|            0|     36|  1090|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |     8|            1|     75|  1090|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |     9|            0|     68|  1090|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |     9|            1|     75|  1090|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |    10|            0|     49|  1090|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |    10|            1|     73|  1090|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |    11|            0|     51|  1090|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |    11|            1|     57|  1090|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |    12|            0|     50|  1090|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |    12|            1|     58|  1090|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA        |     1|            0|      5|   257|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA        |     1|            1|     24|   257|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA        |     2|            0|      9|   257|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA        |     2|            1|     15|   257|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA        |     3|            0|      8|   257|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA        |     3|            1|     14|   257|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA        |     4|            0|      4|   257|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA        |     4|            1|     16|   257|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA        |     5|            0|      6|   257|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA        |     5|            1|     14|   257|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA        |     6|            0|      9|   257|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA        |     6|            1|     18|   257|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA        |     7|            0|      3|   257|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA        |     7|            1|      7|   257|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA        |     8|            0|      0|   257|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA        |     8|            1|      0|   257|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA        |     9|            0|      1|   257|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA        |     9|            1|      8|   257|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA        |    10|            0|      4|   257|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA        |    10|            1|     13|   257|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA        |    11|            0|     11|   257|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA        |    11|            1|     25|   257|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA        |    12|            0|     12|   257|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA        |    12|            1|     31|   257|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |     1|            0|    104|  2235|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |     1|            1|     46|  2235|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |     2|            0|    127|  2235|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |     2|            1|     40|  2235|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |     3|            0|    110|  2235|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |     3|            1|     51|  2235|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |     4|            0|    111|  2235|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |     4|            1|     57|  2235|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |     5|            0|    127|  2235|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |     5|            1|     48|  2235|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |     6|            0|    106|  2235|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |     6|            1|     48|  2235|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |     7|            0|    131|  2235|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |     7|            1|     67|  2235|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |     8|            0|    162|  2235|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |     8|            1|     64|  2235|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |     9|            0|    138|  2235|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |     9|            1|     58|  2235|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |    10|            0|    168|  2235|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |    10|            1|     71|  2235|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |    11|            0|    139|  2235|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |    11|            1|     63|  2235|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |    12|            0|    144|  2235|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |    12|            1|     55|  2235|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |     1|            0|     10|   360|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |     1|            1|     19|   360|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |     2|            0|      9|   360|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |     2|            1|     17|   360|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |     3|            0|      8|   360|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |     3|            1|     17|   360|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |     4|            0|      5|   360|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |     4|            1|     15|   360|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |     5|            0|      4|   360|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |     5|            1|     16|   360|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |     6|            0|     16|   360|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |     6|            1|     15|   360|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |     7|            0|     14|   360|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |     7|            1|     17|   360|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |     8|            0|     22|   360|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |     8|            1|     19|   360|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |     9|            0|      9|   360|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |     9|            1|     16|   360|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |    10|            0|     19|   360|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |    10|            1|     14|   360|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |    11|            0|     17|   360|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |    11|            1|     18|   360|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |    12|            0|     14|   360|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |    12|            1|     30|   360|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |     1|            0|    785| 12595|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |     1|            1|    404| 12595|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |     2|            0|    600| 12595|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |     2|            1|    301| 12595|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |     3|            0|    656| 12595|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |     3|            1|    386| 12595|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |     4|            0|    596| 12595|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |     4|            1|    319| 12595|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |     5|            0|    552| 12595|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |     5|            1|    341| 12595|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |     6|            0|    629| 12595|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |     6|            1|    388| 12595|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |     7|            0|    686| 12595|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |     7|            1|    376| 12595|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |     8|            0|    725| 12595|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |     8|            1|    423| 12595|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |     9|            0|    849| 12595|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |     9|            1|    396| 12595|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |    10|            0|    640| 12595|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |    10|            1|    329| 12595|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |    11|            0|    723| 12595|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |    11|            1|    337| 12595|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |    12|            0|    762| 12595|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |    12|            1|    392| 12595|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |     1|            0|     14|   292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |     1|            1|     11|   292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |     2|            0|      9|   292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |     2|            1|      3|   292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |     3|            0|     19|   292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |     3|            1|     10|   292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |     4|            0|     28|   292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |     4|            1|     10|   292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |     5|            0|     19|   292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |     5|            1|     11|   292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |     6|            0|     15|   292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |     6|            1|     16|   292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |     7|            0|     16|   292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |     7|            1|     15|   292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |     8|            0|      8|   292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |     8|            1|      4|   292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |     9|            0|      9|   292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |     9|            1|      4|   292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |    10|            0|     14|   292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |    10|            1|     10|   292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |    11|            0|     21|   292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |    11|            1|     11|   292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |    12|            0|      8|   292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |    12|            1|      7|   292|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |     1|            0|      9|   168|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |     1|            1|      6|   168|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |     2|            0|     16|   168|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |     2|            1|      5|   168|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |     3|            0|     12|   168|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |     3|            1|      4|   168|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |     4|            0|     10|   168|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |     4|            1|      6|   168|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |     5|            0|     13|   168|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |     5|            1|      2|   168|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |     6|            0|      8|   168|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |     6|            1|      2|   168|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |     7|            0|      6|   168|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |     7|            1|      1|   168|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |     8|            0|      9|   168|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |     8|            1|      3|   168|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |     9|            0|      7|   168|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |     9|            1|      4|   168|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |    10|            0|      7|   168|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |    10|            1|      5|   168|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |    11|            0|      2|   168|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |    11|            1|      1|   168|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |    12|            0|     21|   168|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |    12|            1|      9|   168|
|0-6 months (no birth st.)  |CONTENT        |PERU         |     1|            0|      9|   195|
|0-6 months (no birth st.)  |CONTENT        |PERU         |     1|            1|      0|   195|
|0-6 months (no birth st.)  |CONTENT        |PERU         |     2|            0|     13|   195|
|0-6 months (no birth st.)  |CONTENT        |PERU         |     2|            1|      0|   195|
|0-6 months (no birth st.)  |CONTENT        |PERU         |     3|            0|     27|   195|
|0-6 months (no birth st.)  |CONTENT        |PERU         |     3|            1|      0|   195|
|0-6 months (no birth st.)  |CONTENT        |PERU         |     4|            0|     14|   195|
|0-6 months (no birth st.)  |CONTENT        |PERU         |     4|            1|      3|   195|
|0-6 months (no birth st.)  |CONTENT        |PERU         |     5|            0|     20|   195|
|0-6 months (no birth st.)  |CONTENT        |PERU         |     5|            1|      1|   195|
|0-6 months (no birth st.)  |CONTENT        |PERU         |     6|            0|     12|   195|
|0-6 months (no birth st.)  |CONTENT        |PERU         |     6|            1|      0|   195|
|0-6 months (no birth st.)  |CONTENT        |PERU         |     7|            0|     16|   195|
|0-6 months (no birth st.)  |CONTENT        |PERU         |     7|            1|      0|   195|
|0-6 months (no birth st.)  |CONTENT        |PERU         |     8|            0|     19|   195|
|0-6 months (no birth st.)  |CONTENT        |PERU         |     8|            1|      1|   195|
|0-6 months (no birth st.)  |CONTENT        |PERU         |     9|            0|     13|   195|
|0-6 months (no birth st.)  |CONTENT        |PERU         |     9|            1|      2|   195|
|0-6 months (no birth st.)  |CONTENT        |PERU         |    10|            0|     23|   195|
|0-6 months (no birth st.)  |CONTENT        |PERU         |    10|            1|      0|   195|
|0-6 months (no birth st.)  |CONTENT        |PERU         |    11|            0|     15|   195|
|0-6 months (no birth st.)  |CONTENT        |PERU         |    11|            1|      0|   195|
|0-6 months (no birth st.)  |CONTENT        |PERU         |    12|            0|      7|   195|
|0-6 months (no birth st.)  |CONTENT        |PERU         |    12|            1|      0|   195|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |     1|            0|     20|   213|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |     1|            1|     24|   213|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |     2|            0|     21|   213|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |     2|            1|     19|   213|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |     3|            0|     15|   213|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |     3|            1|     15|   213|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |     4|            0|      2|   213|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |     4|            1|      4|   213|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |     5|            0|      0|   213|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |     5|            1|      0|   213|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |     6|            0|      0|   213|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |     6|            1|      0|   213|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |     7|            0|      0|   213|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |     7|            1|      0|   213|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |     8|            0|      0|   213|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |     8|            1|      0|   213|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |     9|            0|      0|   213|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |     9|            1|      0|   213|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |    10|            0|      2|   213|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |    10|            1|      1|   213|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |    11|            0|     21|   213|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |    11|            1|     25|   213|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |    12|            0|     14|   213|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |    12|            1|     30|   213|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |     1|            0|      0|   576|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |     1|            1|      0|   576|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |     2|            0|      0|   576|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |     2|            1|      0|   576|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |     3|            0|      0|   576|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |     3|            1|      0|   576|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |     4|            0|      0|   576|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |     4|            1|      1|   576|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |     5|            0|      0|   576|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |     5|            1|      0|   576|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |     6|            0|    112|   576|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |     6|            1|     20|   576|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |     7|            0|    178|   576|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |     7|            1|     35|   576|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |     8|            0|    186|   576|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |     8|            1|     44|   576|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |     9|            0|      0|   576|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |     9|            1|      0|   576|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |    10|            0|      0|   576|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |    10|            1|      0|   576|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |    11|            0|      0|   576|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |    11|            1|      0|   576|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |    12|            0|      0|   576|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |    12|            1|      0|   576|
|0-6 months (no birth st.)  |Guatemala BSC  |GUATEMALA    |     1|            0|     13|   223|
|0-6 months (no birth st.)  |Guatemala BSC  |GUATEMALA    |     1|            1|      0|   223|
|0-6 months (no birth st.)  |Guatemala BSC  |GUATEMALA    |     2|            0|     15|   223|
|0-6 months (no birth st.)  |Guatemala BSC  |GUATEMALA    |     2|            1|      1|   223|
|0-6 months (no birth st.)  |Guatemala BSC  |GUATEMALA    |     3|            0|     13|   223|
|0-6 months (no birth st.)  |Guatemala BSC  |GUATEMALA    |     3|            1|      2|   223|
|0-6 months (no birth st.)  |Guatemala BSC  |GUATEMALA    |     4|            0|     18|   223|
|0-6 months (no birth st.)  |Guatemala BSC  |GUATEMALA    |     4|            1|      2|   223|
|0-6 months (no birth st.)  |Guatemala BSC  |GUATEMALA    |     5|            0|     21|   223|
|0-6 months (no birth st.)  |Guatemala BSC  |GUATEMALA    |     5|            1|      2|   223|
|0-6 months (no birth st.)  |Guatemala BSC  |GUATEMALA    |     6|            0|     26|   223|
|0-6 months (no birth st.)  |Guatemala BSC  |GUATEMALA    |     6|            1|      3|   223|
|0-6 months (no birth st.)  |Guatemala BSC  |GUATEMALA    |     7|            0|     17|   223|
|0-6 months (no birth st.)  |Guatemala BSC  |GUATEMALA    |     7|            1|      1|   223|
|0-6 months (no birth st.)  |Guatemala BSC  |GUATEMALA    |     8|            0|     12|   223|
|0-6 months (no birth st.)  |Guatemala BSC  |GUATEMALA    |     8|            1|      2|   223|
|0-6 months (no birth st.)  |Guatemala BSC  |GUATEMALA    |     9|            0|     19|   223|
|0-6 months (no birth st.)  |Guatemala BSC  |GUATEMALA    |     9|            1|      1|   223|
|0-6 months (no birth st.)  |Guatemala BSC  |GUATEMALA    |    10|            0|     20|   223|
|0-6 months (no birth st.)  |Guatemala BSC  |GUATEMALA    |    10|            1|      3|   223|
|0-6 months (no birth st.)  |Guatemala BSC  |GUATEMALA    |    11|            0|     22|   223|
|0-6 months (no birth st.)  |Guatemala BSC  |GUATEMALA    |    11|            1|      2|   223|
|0-6 months (no birth st.)  |Guatemala BSC  |GUATEMALA    |    12|            0|      6|   223|
|0-6 months (no birth st.)  |Guatemala BSC  |GUATEMALA    |    12|            1|      2|   223|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |     1|            0|   1441| 18332|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |     1|            1|    201| 18332|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |     2|            0|   1280| 18332|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |     2|            1|    168| 18332|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |     3|            0|   1565| 18332|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |     3|            1|    189| 18332|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |     4|            0|   1192| 18332|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |     4|            1|    136| 18332|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |     5|            0|    887| 18332|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |     5|            1|     99| 18332|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |     6|            0|    890| 18332|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |     6|            1|     87| 18332|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |     7|            0|   1007| 18332|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |     7|            1|    101| 18332|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |     8|            0|   1241| 18332|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |     8|            1|    161| 18332|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |     9|            0|   1589| 18332|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |     9|            1|    273| 18332|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |    10|            0|   1620| 18332|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |    10|            1|    315| 18332|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |    11|            0|   1557| 18332|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |    11|            1|    328| 18332|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |    12|            0|   1675| 18332|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |    12|            1|    330| 18332|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |     1|            0|     34|  3659|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |     1|            1|      0|  3659|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |     2|            0|    215|  3659|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |     2|            1|     25|  3659|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |     3|            0|    273|  3659|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |     3|            1|     21|  3659|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |     4|            0|    602|  3659|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |     4|            1|     54|  3659|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |     5|            0|    395|  3659|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |     5|            1|     41|  3659|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |     6|            0|    295|  3659|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |     6|            1|     23|  3659|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |     7|            0|    592|  3659|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |     7|            1|     41|  3659|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |     8|            0|    371|  3659|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |     8|            1|     36|  3659|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |     9|            0|    232|  3659|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |     9|            1|     38|  3659|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |    10|            0|    177|  3659|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |    10|            1|     25|  3659|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |    11|            0|    109|  3659|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |    11|            1|      9|  3659|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |    12|            0|     51|  3659|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |    12|            1|      0|  3659|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |     1|            0|    144|  2234|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |     1|            1|     48|  2234|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |     2|            0|    192|  2234|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |     2|            1|     45|  2234|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |     3|            0|    155|  2234|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |     3|            1|     38|  2234|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |     4|            0|    188|  2234|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |     4|            1|     53|  2234|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |     5|            0|    135|  2234|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |     5|            1|     35|  2234|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |     6|            0|    122|  2234|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |     6|            1|     43|  2234|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |     7|            0|     91|  2234|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |     7|            1|     35|  2234|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |     8|            0|     86|  2234|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |     8|            1|     35|  2234|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |     9|            0|    126|  2234|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |     9|            1|     51|  2234|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |    10|            0|    133|  2234|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |    10|            1|     43|  2234|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |    11|            0|    177|  2234|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |    11|            1|     70|  2234|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |    12|            0|    146|  2234|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |    12|            1|     43|  2234|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI       |     1|            0|      5|   175|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI       |     1|            1|      0|   175|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI       |     2|            0|     31|   175|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI       |     2|            1|      0|   175|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI       |     3|            0|     37|   175|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI       |     3|            1|      0|   175|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI       |     4|            0|     29|   175|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI       |     4|            1|      0|   175|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI       |     5|            0|     17|   175|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI       |     5|            1|      0|   175|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI       |     6|            0|     19|   175|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI       |     6|            1|      0|   175|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI       |     7|            0|     18|   175|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI       |     7|            1|      0|   175|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI       |     8|            0|      4|   175|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI       |     8|            1|      0|   175|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI       |     9|            0|      2|   175|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI       |     9|            1|      0|   175|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI       |    10|            0|      2|   175|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI       |    10|            1|      0|   175|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI       |    11|            0|      9|   175|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI       |    11|            1|      0|   175|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI       |    12|            0|      2|   175|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI       |    12|            1|      0|   175|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |     1|            0|     11|   210|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |     1|            1|      7|   210|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |     2|            0|     19|   210|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |     2|            1|      1|   210|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |     3|            0|     14|   210|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |     3|            1|      6|   210|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |     4|            0|     12|   210|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |     4|            1|      3|   210|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |     5|            0|      6|   210|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |     5|            1|      1|   210|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |     6|            0|     16|   210|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |     6|            1|      2|   210|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |     7|            0|     14|   210|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |     7|            1|      5|   210|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |     8|            0|     16|   210|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |     8|            1|      2|   210|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |     9|            0|     16|   210|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |     9|            1|      2|   210|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |    10|            0|     15|   210|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |    10|            1|      7|   210|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |    11|            0|     14|   210|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |    11|            1|      6|   210|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |    12|            0|     11|   210|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |    12|            1|      4|   210|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |     1|            0|     16|   217|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |     1|            1|      2|   217|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |     2|            0|     13|   217|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |     2|            1|      5|   217|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |     3|            0|     13|   217|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |     3|            1|      7|   217|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |     4|            0|     21|   217|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |     4|            1|      1|   217|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |     5|            0|     12|   217|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |     5|            1|      5|   217|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |     6|            0|      4|   217|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |     6|            1|      1|   217|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |     7|            0|     14|   217|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |     7|            1|      3|   217|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |     8|            0|     15|   217|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |     8|            1|      5|   217|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |     9|            0|     16|   217|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |     9|            1|      4|   217|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |    10|            0|     16|   217|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |    10|            1|      4|   217|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |    11|            0|     11|   217|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |    11|            1|      4|   217|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |    12|            0|     19|   217|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |    12|            1|      6|   217|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |     1|            0|     22|   266|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |     1|            1|     13|   266|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |     2|            0|     12|   266|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |     2|            1|      9|   266|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |     3|            0|     14|   266|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |     3|            1|      5|   266|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |     4|            0|     13|   266|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |     4|            1|      5|   266|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |     5|            0|     14|   266|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |     5|            1|      9|   266|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |     6|            0|     12|   266|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |     6|            1|      5|   266|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |     7|            0|     12|   266|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |     7|            1|     10|   266|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |     8|            0|     15|   266|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |     8|            1|      4|   266|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |     9|            0|     14|   266|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |     9|            1|      9|   266|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |    10|            0|     19|   266|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |    10|            1|      4|   266|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |    11|            0|     12|   266|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |    11|            1|     13|   266|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |    12|            0|     15|   266|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |    12|            1|      6|   266|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |     1|            0|     14|   211|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |     1|            1|      2|   211|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |     2|            0|     17|   211|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |     2|            1|      0|   211|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |     3|            0|     14|   211|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |     3|            1|      1|   211|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |     4|            0|     16|   211|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |     4|            1|      2|   211|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |     5|            0|     18|   211|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |     5|            1|      3|   211|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |     6|            0|     19|   211|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |     6|            1|      0|   211|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |     7|            0|     16|   211|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |     7|            1|      1|   211|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |     8|            0|     20|   211|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |     8|            1|      1|   211|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |     9|            0|     12|   211|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |     9|            1|      0|   211|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |    10|            0|     19|   211|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |    10|            1|      0|   211|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |    11|            0|     17|   211|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |    11|            1|      3|   211|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |    12|            0|     15|   211|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |    12|            1|      1|   211|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |     1|            0|     12|   202|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |     1|            1|      1|   202|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |     2|            0|     20|   202|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |     2|            1|      3|   202|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |     3|            0|     16|   202|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |     3|            1|      3|   202|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |     4|            0|      9|   202|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |     4|            1|      1|   202|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |     5|            0|     19|   202|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |     5|            1|      1|   202|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |     6|            0|      6|   202|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |     6|            1|      1|   202|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |     7|            0|     13|   202|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |     7|            1|      2|   202|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |     8|            0|     15|   202|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |     8|            1|      3|   202|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |     9|            0|     23|   202|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |     9|            1|      4|   202|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |    10|            0|     19|   202|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |    10|            1|      1|   202|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |    11|            0|     18|   202|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |    11|            1|      0|   202|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |    12|            0|     11|   202|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |    12|            1|      1|   202|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |     1|            0|     14|   219|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |     1|            1|      5|   219|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |     2|            0|     17|   219|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |     2|            1|      6|   219|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |     3|            0|      8|   219|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |     3|            1|     11|   219|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |     4|            0|      6|   219|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |     4|            1|      4|   219|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |     5|            0|     11|   219|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |     5|            1|      3|   219|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |     6|            0|     13|   219|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |     6|            1|      5|   219|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |     7|            0|     14|   219|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |     7|            1|      7|   219|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |     8|            0|      8|   219|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |     8|            1|      3|   219|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |     9|            0|     12|   219|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |     9|            1|      4|   219|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |    10|            0|      9|   219|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |    10|            1|      7|   219|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |    11|            0|     18|   219|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |    11|            1|      6|   219|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |    12|            0|     23|   219|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |    12|            1|      5|   219|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |     1|            0|     27|   275|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |     1|            1|     10|   275|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |     2|            0|     21|   275|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |     2|            1|      7|   275|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |     3|            0|     14|   275|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |     3|            1|      3|   275|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |     4|            0|     11|   275|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |     4|            1|      1|   275|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |     5|            0|     12|   275|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |     5|            1|      3|   275|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |     6|            0|     15|   275|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |     6|            1|      4|   275|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |     7|            0|     14|   275|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |     7|            1|     10|   275|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |     8|            0|      7|   275|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |     8|            1|      4|   275|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |     9|            0|     18|   275|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |     9|            1|      4|   275|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |    10|            0|     19|   275|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |    10|            1|      8|   275|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |    11|            0|     13|   275|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |    11|            1|      8|   275|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |    12|            0|     27|   275|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |    12|            1|     15|   275|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |     1|            0|     35|   530|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |     1|            1|     15|   530|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |     2|            0|     40|   530|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |     2|            1|     10|   530|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |     3|            0|     48|   530|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |     3|            1|      6|   530|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |     4|            0|     36|   530|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |     4|            1|      8|   530|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |     5|            0|     35|   530|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |     5|            1|      6|   530|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |     6|            0|     28|   530|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |     6|            1|     13|   530|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |     7|            0|     26|   530|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |     7|            1|     16|   530|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |     8|            0|     29|   530|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |     8|            1|      9|   530|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |     9|            0|     23|   530|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |     9|            1|      5|   530|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |    10|            0|     38|   530|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |    10|            1|     12|   530|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |    11|            0|     29|   530|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |    11|            1|     15|   530|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |    12|            0|     42|   530|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |    12|            1|      6|   530|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |     1|            0|   1104| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |     1|            1|     71| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |     2|            0|    933| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |     2|            1|     62| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |     3|            0|   1109| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |     3|            1|     67| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |     4|            0|   1054| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |     4|            1|     64| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |     5|            0|   1088| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |     5|            1|     59| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |     6|            0|   1163| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |     6|            1|     57| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |     7|            0|   1373| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |     7|            1|     87| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |     8|            0|   1526| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |     8|            1|     79| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |     9|            0|   1476| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |     9|            1|    103| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |    10|            0|   1655| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |    10|            1|    122| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |    11|            0|   1576| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |    11|            1|    118| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |    12|            0|   1676| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |    12|            1|    141| 16763|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |     1|            0|     26|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |     1|            1|      2|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |     2|            0|     31|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |     2|            1|      4|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |     3|            0|     20|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |     3|            1|      7|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |     4|            0|     43|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |     4|            1|      5|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |     5|            0|     32|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |     5|            1|      5|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |     6|            0|     44|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |     6|            1|      3|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |     7|            0|     69|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |     7|            1|     10|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |     8|            0|     68|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |     8|            1|     14|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |     9|            0|     52|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |     9|            1|     13|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |    10|            0|     63|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |    10|            1|     11|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |    11|            0|     59|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |    11|            1|     13|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |    12|            0|     25|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |    12|            1|     14|   633|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |     1|            0|      0|   202|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |     1|            1|      2|   202|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |     2|            0|      1|   202|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |     2|            1|      7|   202|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |     3|            0|      6|   202|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |     3|            1|      2|   202|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |     4|            0|      7|   202|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |     4|            1|      8|   202|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |     5|            0|     13|   202|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |     5|            1|     11|   202|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |     6|            0|     19|   202|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |     6|            1|     14|   202|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |     7|            0|     17|   202|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |     7|            1|     16|   202|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |     8|            0|     10|   202|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |     8|            1|      8|   202|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |     9|            0|     26|   202|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |     9|            1|     11|   202|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |    10|            0|      8|   202|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |    10|            1|      6|   202|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |    11|            0|      5|   202|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |    11|            1|      1|   202|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |    12|            0|      2|   202|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |    12|            1|      2|   202|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |     1|            0|     63|  1089|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |     1|            1|     14|  1089|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |     2|            0|     56|  1089|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |     2|            1|      6|  1089|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |     3|            0|     51|  1089|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |     3|            1|      8|  1089|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |     4|            0|     48|  1089|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |     4|            1|     17|  1089|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |     5|            0|     51|  1089|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |     5|            1|     13|  1089|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |     6|            0|     66|  1089|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |     6|            1|     19|  1089|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |     7|            0|     62|  1089|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |     7|            1|     23|  1089|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |     8|            0|     84|  1089|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |     8|            1|     27|  1089|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |     9|            0|    124|  1089|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |     9|            1|     19|  1089|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |    10|            0|    100|  1089|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |    10|            1|     22|  1089|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |    11|            0|     91|  1089|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |    11|            1|     17|  1089|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |    12|            0|     83|  1089|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |    12|            1|     25|  1089|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA        |     1|            0|     29|   257|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA        |     1|            1|      0|   257|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA        |     2|            0|     24|   257|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA        |     2|            1|      0|   257|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA        |     3|            0|     21|   257|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA        |     3|            1|      1|   257|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA        |     4|            0|     20|   257|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA        |     4|            1|      0|   257|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA        |     5|            0|     19|   257|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA        |     5|            1|      1|   257|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA        |     6|            0|     26|   257|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA        |     6|            1|      1|   257|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA        |     7|            0|     10|   257|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA        |     7|            1|      0|   257|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA        |     8|            0|      0|   257|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA        |     8|            1|      0|   257|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA        |     9|            0|      9|   257|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA        |     9|            1|      0|   257|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA        |    10|            0|     17|   257|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA        |    10|            1|      0|   257|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA        |    11|            0|     36|   257|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA        |    11|            1|      0|   257|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA        |    12|            0|     43|   257|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA        |    12|            1|      0|   257|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |     1|            0|    138|  2235|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |     1|            1|     12|  2235|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |     2|            0|    149|  2235|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |     2|            1|     18|  2235|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |     3|            0|    142|  2235|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |     3|            1|     19|  2235|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |     4|            0|    145|  2235|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |     4|            1|     23|  2235|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |     5|            0|    152|  2235|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |     5|            1|     23|  2235|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |     6|            0|    131|  2235|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |     6|            1|     23|  2235|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |     7|            0|    162|  2235|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |     7|            1|     36|  2235|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |     8|            0|    189|  2235|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |     8|            1|     37|  2235|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |     9|            0|    169|  2235|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |     9|            1|     27|  2235|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |    10|            0|    203|  2235|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |    10|            1|     36|  2235|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |    11|            0|    174|  2235|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |    11|            1|     28|  2235|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |    12|            0|    175|  2235|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |    12|            1|     24|  2235|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |     1|            0|     21|   360|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |     1|            1|      8|   360|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |     2|            0|     14|   360|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |     2|            1|     12|   360|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |     3|            0|     16|   360|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |     3|            1|      9|   360|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |     4|            0|     12|   360|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |     4|            1|      8|   360|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |     5|            0|     10|   360|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |     5|            1|     10|   360|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |     6|            0|     23|   360|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |     6|            1|      8|   360|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |     7|            0|     20|   360|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |     7|            1|     11|   360|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |     8|            0|     32|   360|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |     8|            1|      9|   360|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |     9|            0|     15|   360|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |     9|            1|     10|   360|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |    10|            0|     24|   360|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |    10|            1|      9|   360|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |    11|            0|     26|   360|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |    11|            1|      9|   360|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |    12|            0|     23|   360|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |    12|            1|     21|   360|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |     1|            0|   1009| 12584|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |     1|            1|    178| 12584|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |     2|            0|    774| 12584|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |     2|            1|    126| 12584|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |     3|            0|    871| 12584|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |     3|            1|    167| 12584|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |     4|            0|    752| 12584|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |     4|            1|    163| 12584|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |     5|            0|    703| 12584|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |     5|            1|    188| 12584|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |     6|            0|    780| 12584|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |     6|            1|    237| 12584|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |     7|            0|    846| 12584|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |     7|            1|    215| 12584|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |     8|            0|    900| 12584|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |     8|            1|    248| 12584|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |     9|            0|   1060| 12584|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |     9|            1|    185| 12584|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |    10|            0|    825| 12584|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |    10|            1|    144| 12584|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |    11|            0|    907| 12584|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |    11|            1|    152| 12584|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |    12|            0|    994| 12584|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |    12|            1|    160| 12584|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |     1|            0|      3|   185|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |     1|            1|     11|   185|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |     2|            0|      1|   185|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |     2|            1|      9|   185|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |     3|            0|      0|   185|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |     3|            1|     19|   185|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |     4|            0|      8|   185|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |     4|            1|     20|   185|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |     5|            0|      1|   185|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |     5|            1|     18|   185|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |     6|            0|      2|   185|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |     6|            1|     13|   185|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |     7|            0|      4|   185|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |     7|            1|     13|   185|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |     8|            0|      2|   185|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |     8|            1|      7|   185|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |     9|            0|      0|   185|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |     9|            1|      9|   185|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |    10|            0|      3|   185|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |    10|            1|     11|   185|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |    11|            0|      4|   185|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |    11|            1|     19|   185|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |    12|            0|      0|   185|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |    12|            1|      8|   185|
|6-24 months                |CMIN           |BANGLADESH   |     1|            0|      2|   111|
|6-24 months                |CMIN           |BANGLADESH   |     1|            1|      7|   111|
|6-24 months                |CMIN           |BANGLADESH   |     2|            0|      3|   111|
|6-24 months                |CMIN           |BANGLADESH   |     2|            1|     10|   111|
|6-24 months                |CMIN           |BANGLADESH   |     3|            0|      6|   111|
|6-24 months                |CMIN           |BANGLADESH   |     3|            1|      6|   111|
|6-24 months                |CMIN           |BANGLADESH   |     4|            0|      2|   111|
|6-24 months                |CMIN           |BANGLADESH   |     4|            1|      7|   111|
|6-24 months                |CMIN           |BANGLADESH   |     5|            0|      3|   111|
|6-24 months                |CMIN           |BANGLADESH   |     5|            1|      9|   111|
|6-24 months                |CMIN           |BANGLADESH   |     6|            0|      1|   111|
|6-24 months                |CMIN           |BANGLADESH   |     6|            1|      7|   111|
|6-24 months                |CMIN           |BANGLADESH   |     7|            0|      2|   111|
|6-24 months                |CMIN           |BANGLADESH   |     7|            1|      4|   111|
|6-24 months                |CMIN           |BANGLADESH   |     8|            0|      2|   111|
|6-24 months                |CMIN           |BANGLADESH   |     8|            1|      7|   111|
|6-24 months                |CMIN           |BANGLADESH   |     9|            0|      1|   111|
|6-24 months                |CMIN           |BANGLADESH   |     9|            1|      5|   111|
|6-24 months                |CMIN           |BANGLADESH   |    10|            0|      2|   111|
|6-24 months                |CMIN           |BANGLADESH   |    10|            1|      4|   111|
|6-24 months                |CMIN           |BANGLADESH   |    11|            0|      0|   111|
|6-24 months                |CMIN           |BANGLADESH   |    11|            1|      0|   111|
|6-24 months                |CMIN           |BANGLADESH   |    12|            0|      8|   111|
|6-24 months                |CMIN           |BANGLADESH   |    12|            1|     13|   111|
|6-24 months                |CONTENT        |PERU         |     1|            0|      9|   188|
|6-24 months                |CONTENT        |PERU         |     1|            1|      0|   188|
|6-24 months                |CONTENT        |PERU         |     2|            0|     12|   188|
|6-24 months                |CONTENT        |PERU         |     2|            1|      1|   188|
|6-24 months                |CONTENT        |PERU         |     3|            0|     23|   188|
|6-24 months                |CONTENT        |PERU         |     3|            1|      4|   188|
|6-24 months                |CONTENT        |PERU         |     4|            0|     11|   188|
|6-24 months                |CONTENT        |PERU         |     4|            1|      3|   188|
|6-24 months                |CONTENT        |PERU         |     5|            0|     15|   188|
|6-24 months                |CONTENT        |PERU         |     5|            1|      5|   188|
|6-24 months                |CONTENT        |PERU         |     6|            0|      9|   188|
|6-24 months                |CONTENT        |PERU         |     6|            1|      3|   188|
|6-24 months                |CONTENT        |PERU         |     7|            0|     16|   188|
|6-24 months                |CONTENT        |PERU         |     7|            1|      0|   188|
|6-24 months                |CONTENT        |PERU         |     8|            0|     17|   188|
|6-24 months                |CONTENT        |PERU         |     8|            1|      2|   188|
|6-24 months                |CONTENT        |PERU         |     9|            0|      9|   188|
|6-24 months                |CONTENT        |PERU         |     9|            1|      4|   188|
|6-24 months                |CONTENT        |PERU         |    10|            0|     20|   188|
|6-24 months                |CONTENT        |PERU         |    10|            1|      3|   188|
|6-24 months                |CONTENT        |PERU         |    11|            0|     14|   188|
|6-24 months                |CONTENT        |PERU         |    11|            1|      1|   188|
|6-24 months                |CONTENT        |PERU         |    12|            0|      7|   188|
|6-24 months                |CONTENT        |PERU         |    12|            1|      0|   188|
|6-24 months                |EE             |PAKISTAN     |     1|            0|     11|    93|
|6-24 months                |EE             |PAKISTAN     |     1|            1|      8|    93|
|6-24 months                |EE             |PAKISTAN     |     2|            0|      8|    93|
|6-24 months                |EE             |PAKISTAN     |     2|            1|     12|    93|
|6-24 months                |EE             |PAKISTAN     |     3|            0|      3|    93|
|6-24 months                |EE             |PAKISTAN     |     3|            1|     12|    93|
|6-24 months                |EE             |PAKISTAN     |     4|            0|      1|    93|
|6-24 months                |EE             |PAKISTAN     |     4|            1|      1|    93|
|6-24 months                |EE             |PAKISTAN     |     5|            0|      0|    93|
|6-24 months                |EE             |PAKISTAN     |     5|            1|      0|    93|
|6-24 months                |EE             |PAKISTAN     |     6|            0|      0|    93|
|6-24 months                |EE             |PAKISTAN     |     6|            1|      0|    93|
|6-24 months                |EE             |PAKISTAN     |     7|            0|      0|    93|
|6-24 months                |EE             |PAKISTAN     |     7|            1|      0|    93|
|6-24 months                |EE             |PAKISTAN     |     8|            0|      0|    93|
|6-24 months                |EE             |PAKISTAN     |     8|            1|      0|    93|
|6-24 months                |EE             |PAKISTAN     |     9|            0|      0|    93|
|6-24 months                |EE             |PAKISTAN     |     9|            1|      0|    93|
|6-24 months                |EE             |PAKISTAN     |    10|            0|      1|    93|
|6-24 months                |EE             |PAKISTAN     |    10|            1|      1|    93|
|6-24 months                |EE             |PAKISTAN     |    11|            0|      8|    93|
|6-24 months                |EE             |PAKISTAN     |    11|            1|     13|    93|
|6-24 months                |EE             |PAKISTAN     |    12|            0|      7|    93|
|6-24 months                |EE             |PAKISTAN     |    12|            1|      7|    93|
|6-24 months                |GMS-Nepal      |NEPAL        |     1|            0|      0|   397|
|6-24 months                |GMS-Nepal      |NEPAL        |     1|            1|      0|   397|
|6-24 months                |GMS-Nepal      |NEPAL        |     2|            0|      0|   397|
|6-24 months                |GMS-Nepal      |NEPAL        |     2|            1|      0|   397|
|6-24 months                |GMS-Nepal      |NEPAL        |     3|            0|      0|   397|
|6-24 months                |GMS-Nepal      |NEPAL        |     3|            1|      0|   397|
|6-24 months                |GMS-Nepal      |NEPAL        |     4|            0|      0|   397|
|6-24 months                |GMS-Nepal      |NEPAL        |     4|            1|      0|   397|
|6-24 months                |GMS-Nepal      |NEPAL        |     5|            0|      0|   397|
|6-24 months                |GMS-Nepal      |NEPAL        |     5|            1|      0|   397|
|6-24 months                |GMS-Nepal      |NEPAL        |     6|            0|     34|   397|
|6-24 months                |GMS-Nepal      |NEPAL        |     6|            1|     47|   397|
|6-24 months                |GMS-Nepal      |NEPAL        |     7|            0|     61|   397|
|6-24 months                |GMS-Nepal      |NEPAL        |     7|            1|     89|   397|
|6-24 months                |GMS-Nepal      |NEPAL        |     8|            0|     78|   397|
|6-24 months                |GMS-Nepal      |NEPAL        |     8|            1|     88|   397|
|6-24 months                |GMS-Nepal      |NEPAL        |     9|            0|      0|   397|
|6-24 months                |GMS-Nepal      |NEPAL        |     9|            1|      0|   397|
|6-24 months                |GMS-Nepal      |NEPAL        |    10|            0|      0|   397|
|6-24 months                |GMS-Nepal      |NEPAL        |    10|            1|      0|   397|
|6-24 months                |GMS-Nepal      |NEPAL        |    11|            0|      0|   397|
|6-24 months                |GMS-Nepal      |NEPAL        |    11|            1|      0|   397|
|6-24 months                |GMS-Nepal      |NEPAL        |    12|            0|      0|   397|
|6-24 months                |GMS-Nepal      |NEPAL        |    12|            1|      0|   397|
|6-24 months                |Guatemala BSC  |GUATEMALA    |     1|            0|      6|   195|
|6-24 months                |Guatemala BSC  |GUATEMALA    |     1|            1|      5|   195|
|6-24 months                |Guatemala BSC  |GUATEMALA    |     2|            0|      8|   195|
|6-24 months                |Guatemala BSC  |GUATEMALA    |     2|            1|      6|   195|
|6-24 months                |Guatemala BSC  |GUATEMALA    |     3|            0|      3|   195|
|6-24 months                |Guatemala BSC  |GUATEMALA    |     3|            1|      8|   195|
|6-24 months                |Guatemala BSC  |GUATEMALA    |     4|            0|      9|   195|
|6-24 months                |Guatemala BSC  |GUATEMALA    |     4|            1|      8|   195|
|6-24 months                |Guatemala BSC  |GUATEMALA    |     5|            0|     15|   195|
|6-24 months                |Guatemala BSC  |GUATEMALA    |     5|            1|     10|   195|
|6-24 months                |Guatemala BSC  |GUATEMALA    |     6|            0|     15|   195|
|6-24 months                |Guatemala BSC  |GUATEMALA    |     6|            1|     11|   195|
|6-24 months                |Guatemala BSC  |GUATEMALA    |     7|            0|     11|   195|
|6-24 months                |Guatemala BSC  |GUATEMALA    |     7|            1|      5|   195|
|6-24 months                |Guatemala BSC  |GUATEMALA    |     8|            0|     10|   195|
|6-24 months                |Guatemala BSC  |GUATEMALA    |     8|            1|      3|   195|
|6-24 months                |Guatemala BSC  |GUATEMALA    |     9|            0|     17|   195|
|6-24 months                |Guatemala BSC  |GUATEMALA    |     9|            1|      5|   195|
|6-24 months                |Guatemala BSC  |GUATEMALA    |    10|            0|     10|   195|
|6-24 months                |Guatemala BSC  |GUATEMALA    |    10|            1|      6|   195|
|6-24 months                |Guatemala BSC  |GUATEMALA    |    11|            0|     13|   195|
|6-24 months                |Guatemala BSC  |GUATEMALA    |    11|            1|      6|   195|
|6-24 months                |Guatemala BSC  |GUATEMALA    |    12|            0|      4|   195|
|6-24 months                |Guatemala BSC  |GUATEMALA    |    12|            1|      1|   195|
|6-24 months                |iLiNS-Zinc     |BURKINA FASO |     1|            0|    157|  3265|
|6-24 months                |iLiNS-Zinc     |BURKINA FASO |     1|            1|     82|  3265|
|6-24 months                |iLiNS-Zinc     |BURKINA FASO |     2|            0|    121|  3265|
|6-24 months                |iLiNS-Zinc     |BURKINA FASO |     2|            1|     87|  3265|
|6-24 months                |iLiNS-Zinc     |BURKINA FASO |     3|            0|    142|  3265|
|6-24 months                |iLiNS-Zinc     |BURKINA FASO |     3|            1|     72|  3265|
|6-24 months                |iLiNS-Zinc     |BURKINA FASO |     4|            0|    114|  3265|
|6-24 months                |iLiNS-Zinc     |BURKINA FASO |     4|            1|     69|  3265|
|6-24 months                |iLiNS-Zinc     |BURKINA FASO |     5|            0|    156|  3265|
|6-24 months                |iLiNS-Zinc     |BURKINA FASO |     5|            1|    101|  3265|
|6-24 months                |iLiNS-Zinc     |BURKINA FASO |     6|            0|    236|  3265|
|6-24 months                |iLiNS-Zinc     |BURKINA FASO |     6|            1|    131|  3265|
|6-24 months                |iLiNS-Zinc     |BURKINA FASO |     7|            0|    267|  3265|
|6-24 months                |iLiNS-Zinc     |BURKINA FASO |     7|            1|    144|  3265|
|6-24 months                |iLiNS-Zinc     |BURKINA FASO |     8|            0|    229|  3265|
|6-24 months                |iLiNS-Zinc     |BURKINA FASO |     8|            1|    132|  3265|
|6-24 months                |iLiNS-Zinc     |BURKINA FASO |     9|            0|    178|  3265|
|6-24 months                |iLiNS-Zinc     |BURKINA FASO |     9|            1|    116|  3265|
|6-24 months                |iLiNS-Zinc     |BURKINA FASO |    10|            0|    255|  3265|
|6-24 months                |iLiNS-Zinc     |BURKINA FASO |    10|            1|    117|  3265|
|6-24 months                |iLiNS-Zinc     |BURKINA FASO |    11|            0|    123|  3265|
|6-24 months                |iLiNS-Zinc     |BURKINA FASO |    11|            1|     74|  3265|
|6-24 months                |iLiNS-Zinc     |BURKINA FASO |    12|            0|    104|  3265|
|6-24 months                |iLiNS-Zinc     |BURKINA FASO |    12|            1|     58|  3265|
|6-24 months                |JiVitA-3       |BANGLADESH   |     1|            0|    628| 10493|
|6-24 months                |JiVitA-3       |BANGLADESH   |     1|            1|    197| 10493|
|6-24 months                |JiVitA-3       |BANGLADESH   |     2|            0|    542| 10493|
|6-24 months                |JiVitA-3       |BANGLADESH   |     2|            1|    205| 10493|
|6-24 months                |JiVitA-3       |BANGLADESH   |     3|            0|    743| 10493|
|6-24 months                |JiVitA-3       |BANGLADESH   |     3|            1|    200| 10493|
|6-24 months                |JiVitA-3       |BANGLADESH   |     4|            0|    638| 10493|
|6-24 months                |JiVitA-3       |BANGLADESH   |     4|            1|    159| 10493|
|6-24 months                |JiVitA-3       |BANGLADESH   |     5|            0|    625| 10493|
|6-24 months                |JiVitA-3       |BANGLADESH   |     5|            1|    157| 10493|
|6-24 months                |JiVitA-3       |BANGLADESH   |     6|            0|    610| 10493|
|6-24 months                |JiVitA-3       |BANGLADESH   |     6|            1|    188| 10493|
|6-24 months                |JiVitA-3       |BANGLADESH   |     7|            0|    681| 10493|
|6-24 months                |JiVitA-3       |BANGLADESH   |     7|            1|    183| 10493|
|6-24 months                |JiVitA-3       |BANGLADESH   |     8|            0|    771| 10493|
|6-24 months                |JiVitA-3       |BANGLADESH   |     8|            1|    189| 10493|
|6-24 months                |JiVitA-3       |BANGLADESH   |     9|            0|    777| 10493|
|6-24 months                |JiVitA-3       |BANGLADESH   |     9|            1|    201| 10493|
|6-24 months                |JiVitA-3       |BANGLADESH   |    10|            0|    770| 10493|
|6-24 months                |JiVitA-3       |BANGLADESH   |    10|            1|    188| 10493|
|6-24 months                |JiVitA-3       |BANGLADESH   |    11|            0|    719| 10493|
|6-24 months                |JiVitA-3       |BANGLADESH   |    11|            1|    198| 10493|
|6-24 months                |JiVitA-3       |BANGLADESH   |    12|            0|    720| 10493|
|6-24 months                |JiVitA-3       |BANGLADESH   |    12|            1|    204| 10493|
|6-24 months                |JiVitA-4       |BANGLADESH   |     1|            0|     25|  3649|
|6-24 months                |JiVitA-4       |BANGLADESH   |     1|            1|     12|  3649|
|6-24 months                |JiVitA-4       |BANGLADESH   |     2|            0|    152|  3649|
|6-24 months                |JiVitA-4       |BANGLADESH   |     2|            1|     68|  3649|
|6-24 months                |JiVitA-4       |BANGLADESH   |     3|            0|    184|  3649|
|6-24 months                |JiVitA-4       |BANGLADESH   |     3|            1|     99|  3649|
|6-24 months                |JiVitA-4       |BANGLADESH   |     4|            0|    364|  3649|
|6-24 months                |JiVitA-4       |BANGLADESH   |     4|            1|    246|  3649|
|6-24 months                |JiVitA-4       |BANGLADESH   |     5|            0|    241|  3649|
|6-24 months                |JiVitA-4       |BANGLADESH   |     5|            1|    155|  3649|
|6-24 months                |JiVitA-4       |BANGLADESH   |     6|            0|    185|  3649|
|6-24 months                |JiVitA-4       |BANGLADESH   |     6|            1|    111|  3649|
|6-24 months                |JiVitA-4       |BANGLADESH   |     7|            0|    371|  3649|
|6-24 months                |JiVitA-4       |BANGLADESH   |     7|            1|    235|  3649|
|6-24 months                |JiVitA-4       |BANGLADESH   |     8|            0|    242|  3649|
|6-24 months                |JiVitA-4       |BANGLADESH   |     8|            1|    146|  3649|
|6-24 months                |JiVitA-4       |BANGLADESH   |     9|            0|    229|  3649|
|6-24 months                |JiVitA-4       |BANGLADESH   |     9|            1|    150|  3649|
|6-24 months                |JiVitA-4       |BANGLADESH   |    10|            0|    157|  3649|
|6-24 months                |JiVitA-4       |BANGLADESH   |    10|            1|     81|  3649|
|6-24 months                |JiVitA-4       |BANGLADESH   |    11|            0|     82|  3649|
|6-24 months                |JiVitA-4       |BANGLADESH   |    11|            1|     51|  3649|
|6-24 months                |JiVitA-4       |BANGLADESH   |    12|            0|     38|  3649|
|6-24 months                |JiVitA-4       |BANGLADESH   |    12|            1|     25|  3649|
|6-24 months                |Keneba         |GAMBIA       |     1|            0|    113|  2017|
|6-24 months                |Keneba         |GAMBIA       |     1|            1|     52|  2017|
|6-24 months                |Keneba         |GAMBIA       |     2|            0|    148|  2017|
|6-24 months                |Keneba         |GAMBIA       |     2|            1|     69|  2017|
|6-24 months                |Keneba         |GAMBIA       |     3|            0|    104|  2017|
|6-24 months                |Keneba         |GAMBIA       |     3|            1|     61|  2017|
|6-24 months                |Keneba         |GAMBIA       |     4|            0|    124|  2017|
|6-24 months                |Keneba         |GAMBIA       |     4|            1|     84|  2017|
|6-24 months                |Keneba         |GAMBIA       |     5|            0|    116|  2017|
|6-24 months                |Keneba         |GAMBIA       |     5|            1|     61|  2017|
|6-24 months                |Keneba         |GAMBIA       |     6|            0|     95|  2017|
|6-24 months                |Keneba         |GAMBIA       |     6|            1|     56|  2017|
|6-24 months                |Keneba         |GAMBIA       |     7|            0|     69|  2017|
|6-24 months                |Keneba         |GAMBIA       |     7|            1|     49|  2017|
|6-24 months                |Keneba         |GAMBIA       |     8|            0|     80|  2017|
|6-24 months                |Keneba         |GAMBIA       |     8|            1|     51|  2017|
|6-24 months                |Keneba         |GAMBIA       |     9|            0|    100|  2017|
|6-24 months                |Keneba         |GAMBIA       |     9|            1|     53|  2017|
|6-24 months                |Keneba         |GAMBIA       |    10|            0|     98|  2017|
|6-24 months                |Keneba         |GAMBIA       |    10|            1|     64|  2017|
|6-24 months                |Keneba         |GAMBIA       |    11|            0|    137|  2017|
|6-24 months                |Keneba         |GAMBIA       |    11|            1|     74|  2017|
|6-24 months                |Keneba         |GAMBIA       |    12|            0|    109|  2017|
|6-24 months                |Keneba         |GAMBIA       |    12|            1|     50|  2017|
|6-24 months                |LCNI-5         |MALAWI       |     1|            0|     22|   730|
|6-24 months                |LCNI-5         |MALAWI       |     1|            1|     31|   730|
|6-24 months                |LCNI-5         |MALAWI       |     2|            0|     45|   730|
|6-24 months                |LCNI-5         |MALAWI       |     2|            1|     53|   730|
|6-24 months                |LCNI-5         |MALAWI       |     3|            0|     30|   730|
|6-24 months                |LCNI-5         |MALAWI       |     3|            1|     45|   730|
|6-24 months                |LCNI-5         |MALAWI       |     4|            0|     29|   730|
|6-24 months                |LCNI-5         |MALAWI       |     4|            1|     58|   730|
|6-24 months                |LCNI-5         |MALAWI       |     5|            0|     38|   730|
|6-24 months                |LCNI-5         |MALAWI       |     5|            1|     61|   730|
|6-24 months                |LCNI-5         |MALAWI       |     6|            0|     29|   730|
|6-24 months                |LCNI-5         |MALAWI       |     6|            1|     52|   730|
|6-24 months                |LCNI-5         |MALAWI       |     7|            0|     24|   730|
|6-24 months                |LCNI-5         |MALAWI       |     7|            1|     36|   730|
|6-24 months                |LCNI-5         |MALAWI       |     8|            0|     16|   730|
|6-24 months                |LCNI-5         |MALAWI       |     8|            1|     25|   730|
|6-24 months                |LCNI-5         |MALAWI       |     9|            0|     11|   730|
|6-24 months                |LCNI-5         |MALAWI       |     9|            1|     16|   730|
|6-24 months                |LCNI-5         |MALAWI       |    10|            0|     16|   730|
|6-24 months                |LCNI-5         |MALAWI       |    10|            1|     16|   730|
|6-24 months                |LCNI-5         |MALAWI       |    11|            0|     21|   730|
|6-24 months                |LCNI-5         |MALAWI       |    11|            1|     25|   730|
|6-24 months                |LCNI-5         |MALAWI       |    12|            0|     11|   730|
|6-24 months                |LCNI-5         |MALAWI       |    12|            1|     20|   730|
|6-24 months                |MAL-ED         |INDIA        |     1|            0|      4|   154|
|6-24 months                |MAL-ED         |INDIA        |     1|            1|      7|   154|
|6-24 months                |MAL-ED         |INDIA        |     2|            0|     11|   154|
|6-24 months                |MAL-ED         |INDIA        |     2|            1|      5|   154|
|6-24 months                |MAL-ED         |INDIA        |     3|            0|     10|   154|
|6-24 months                |MAL-ED         |INDIA        |     3|            1|      4|   154|
|6-24 months                |MAL-ED         |INDIA        |     4|            0|      5|   154|
|6-24 months                |MAL-ED         |INDIA        |     4|            1|      6|   154|
|6-24 months                |MAL-ED         |INDIA        |     5|            0|      3|   154|
|6-24 months                |MAL-ED         |INDIA        |     5|            1|      3|   154|
|6-24 months                |MAL-ED         |INDIA        |     6|            0|      8|   154|
|6-24 months                |MAL-ED         |INDIA        |     6|            1|      7|   154|
|6-24 months                |MAL-ED         |INDIA        |     7|            0|     11|   154|
|6-24 months                |MAL-ED         |INDIA        |     7|            1|      2|   154|
|6-24 months                |MAL-ED         |INDIA        |     8|            0|      6|   154|
|6-24 months                |MAL-ED         |INDIA        |     8|            1|      9|   154|
|6-24 months                |MAL-ED         |INDIA        |     9|            0|      7|   154|
|6-24 months                |MAL-ED         |INDIA        |     9|            1|      6|   154|
|6-24 months                |MAL-ED         |INDIA        |    10|            0|      9|   154|
|6-24 months                |MAL-ED         |INDIA        |    10|            1|      6|   154|
|6-24 months                |MAL-ED         |INDIA        |    11|            0|      8|   154|
|6-24 months                |MAL-ED         |INDIA        |    11|            1|      6|   154|
|6-24 months                |MAL-ED         |INDIA        |    12|            0|      7|   154|
|6-24 months                |MAL-ED         |INDIA        |    12|            1|      4|   154|
|6-24 months                |MAL-ED         |BANGLADESH   |     1|            0|      8|   158|
|6-24 months                |MAL-ED         |BANGLADESH   |     1|            1|      7|   158|
|6-24 months                |MAL-ED         |BANGLADESH   |     2|            0|      4|   158|
|6-24 months                |MAL-ED         |BANGLADESH   |     2|            1|      6|   158|
|6-24 months                |MAL-ED         |BANGLADESH   |     3|            0|      7|   158|
|6-24 months                |MAL-ED         |BANGLADESH   |     3|            1|      5|   158|
|6-24 months                |MAL-ED         |BANGLADESH   |     4|            0|     12|   158|
|6-24 months                |MAL-ED         |BANGLADESH   |     4|            1|      9|   158|
|6-24 months                |MAL-ED         |BANGLADESH   |     5|            0|      5|   158|
|6-24 months                |MAL-ED         |BANGLADESH   |     5|            1|      7|   158|
|6-24 months                |MAL-ED         |BANGLADESH   |     6|            0|      3|   158|
|6-24 months                |MAL-ED         |BANGLADESH   |     6|            1|      1|   158|
|6-24 months                |MAL-ED         |BANGLADESH   |     7|            0|      6|   158|
|6-24 months                |MAL-ED         |BANGLADESH   |     7|            1|      6|   158|
|6-24 months                |MAL-ED         |BANGLADESH   |     8|            0|     10|   158|
|6-24 months                |MAL-ED         |BANGLADESH   |     8|            1|      5|   158|
|6-24 months                |MAL-ED         |BANGLADESH   |     9|            0|      8|   158|
|6-24 months                |MAL-ED         |BANGLADESH   |     9|            1|      7|   158|
|6-24 months                |MAL-ED         |BANGLADESH   |    10|            0|     11|   158|
|6-24 months                |MAL-ED         |BANGLADESH   |    10|            1|      2|   158|
|6-24 months                |MAL-ED         |BANGLADESH   |    11|            0|      6|   158|
|6-24 months                |MAL-ED         |BANGLADESH   |    11|            1|      4|   158|
|6-24 months                |MAL-ED         |BANGLADESH   |    12|            0|     11|   158|
|6-24 months                |MAL-ED         |BANGLADESH   |    12|            1|      8|   158|
|6-24 months                |MAL-ED         |PERU         |     1|            0|     14|   149|
|6-24 months                |MAL-ED         |PERU         |     1|            1|      5|   149|
|6-24 months                |MAL-ED         |PERU         |     2|            0|      6|   149|
|6-24 months                |MAL-ED         |PERU         |     2|            1|      4|   149|
|6-24 months                |MAL-ED         |PERU         |     3|            0|      9|   149|
|6-24 months                |MAL-ED         |PERU         |     3|            1|      4|   149|
|6-24 months                |MAL-ED         |PERU         |     4|            0|      6|   149|
|6-24 months                |MAL-ED         |PERU         |     4|            1|      6|   149|
|6-24 months                |MAL-ED         |PERU         |     5|            0|      7|   149|
|6-24 months                |MAL-ED         |PERU         |     5|            1|      5|   149|
|6-24 months                |MAL-ED         |PERU         |     6|            0|      6|   149|
|6-24 months                |MAL-ED         |PERU         |     6|            1|      5|   149|
|6-24 months                |MAL-ED         |PERU         |     7|            0|      4|   149|
|6-24 months                |MAL-ED         |PERU         |     7|            1|      7|   149|
|6-24 months                |MAL-ED         |PERU         |     8|            0|      7|   149|
|6-24 months                |MAL-ED         |PERU         |     8|            1|      5|   149|
|6-24 months                |MAL-ED         |PERU         |     9|            0|      9|   149|
|6-24 months                |MAL-ED         |PERU         |     9|            1|      5|   149|
|6-24 months                |MAL-ED         |PERU         |    10|            0|      9|   149|
|6-24 months                |MAL-ED         |PERU         |    10|            1|      3|   149|
|6-24 months                |MAL-ED         |PERU         |    11|            0|      8|   149|
|6-24 months                |MAL-ED         |PERU         |    11|            1|      3|   149|
|6-24 months                |MAL-ED         |PERU         |    12|            0|      5|   149|
|6-24 months                |MAL-ED         |PERU         |    12|            1|      7|   149|
|6-24 months                |MAL-ED         |NEPAL        |     1|            0|     12|   194|
|6-24 months                |MAL-ED         |NEPAL        |     1|            1|      2|   194|
|6-24 months                |MAL-ED         |NEPAL        |     2|            0|     12|   194|
|6-24 months                |MAL-ED         |NEPAL        |     2|            1|      5|   194|
|6-24 months                |MAL-ED         |NEPAL        |     3|            0|      7|   194|
|6-24 months                |MAL-ED         |NEPAL        |     3|            1|      7|   194|
|6-24 months                |MAL-ED         |NEPAL        |     4|            0|     14|   194|
|6-24 months                |MAL-ED         |NEPAL        |     4|            1|      2|   194|
|6-24 months                |MAL-ED         |NEPAL        |     5|            0|     12|   194|
|6-24 months                |MAL-ED         |NEPAL        |     5|            1|      5|   194|
|6-24 months                |MAL-ED         |NEPAL        |     6|            0|     17|   194|
|6-24 months                |MAL-ED         |NEPAL        |     6|            1|      2|   194|
|6-24 months                |MAL-ED         |NEPAL        |     7|            0|     13|   194|
|6-24 months                |MAL-ED         |NEPAL        |     7|            1|      2|   194|
|6-24 months                |MAL-ED         |NEPAL        |     8|            0|     17|   194|
|6-24 months                |MAL-ED         |NEPAL        |     8|            1|      3|   194|
|6-24 months                |MAL-ED         |NEPAL        |     9|            0|     10|   194|
|6-24 months                |MAL-ED         |NEPAL        |     9|            1|      1|   194|
|6-24 months                |MAL-ED         |NEPAL        |    10|            0|     16|   194|
|6-24 months                |MAL-ED         |NEPAL        |    10|            1|      3|   194|
|6-24 months                |MAL-ED         |NEPAL        |    11|            0|     12|   194|
|6-24 months                |MAL-ED         |NEPAL        |    11|            1|      5|   194|
|6-24 months                |MAL-ED         |NEPAL        |    12|            0|     11|   194|
|6-24 months                |MAL-ED         |NEPAL        |    12|            1|      4|   194|
|6-24 months                |MAL-ED         |BRAZIL       |     1|            0|     11|   163|
|6-24 months                |MAL-ED         |BRAZIL       |     1|            1|      1|   163|
|6-24 months                |MAL-ED         |BRAZIL       |     2|            0|     15|   163|
|6-24 months                |MAL-ED         |BRAZIL       |     2|            1|      2|   163|
|6-24 months                |MAL-ED         |BRAZIL       |     3|            0|     13|   163|
|6-24 months                |MAL-ED         |BRAZIL       |     3|            1|      0|   163|
|6-24 months                |MAL-ED         |BRAZIL       |     4|            0|      9|   163|
|6-24 months                |MAL-ED         |BRAZIL       |     4|            1|      0|   163|
|6-24 months                |MAL-ED         |BRAZIL       |     5|            0|     15|   163|
|6-24 months                |MAL-ED         |BRAZIL       |     5|            1|      2|   163|
|6-24 months                |MAL-ED         |BRAZIL       |     6|            0|      6|   163|
|6-24 months                |MAL-ED         |BRAZIL       |     6|            1|      0|   163|
|6-24 months                |MAL-ED         |BRAZIL       |     7|            0|      9|   163|
|6-24 months                |MAL-ED         |BRAZIL       |     7|            1|      3|   163|
|6-24 months                |MAL-ED         |BRAZIL       |     8|            0|     11|   163|
|6-24 months                |MAL-ED         |BRAZIL       |     8|            1|      0|   163|
|6-24 months                |MAL-ED         |BRAZIL       |     9|            0|     21|   163|
|6-24 months                |MAL-ED         |BRAZIL       |     9|            1|      1|   163|
|6-24 months                |MAL-ED         |BRAZIL       |    10|            0|     17|   163|
|6-24 months                |MAL-ED         |BRAZIL       |    10|            1|      1|   163|
|6-24 months                |MAL-ED         |BRAZIL       |    11|            0|     16|   163|
|6-24 months                |MAL-ED         |BRAZIL       |    11|            1|      1|   163|
|6-24 months                |MAL-ED         |BRAZIL       |    12|            0|      9|   163|
|6-24 months                |MAL-ED         |BRAZIL       |    12|            1|      0|   163|
|6-24 months                |MAL-ED         |TANZANIA     |     1|            0|      5|   144|
|6-24 months                |MAL-ED         |TANZANIA     |     1|            1|      8|   144|
|6-24 months                |MAL-ED         |TANZANIA     |     2|            0|      6|   144|
|6-24 months                |MAL-ED         |TANZANIA     |     2|            1|     11|   144|
|6-24 months                |MAL-ED         |TANZANIA     |     3|            0|      2|   144|
|6-24 months                |MAL-ED         |TANZANIA     |     3|            1|      5|   144|
|6-24 months                |MAL-ED         |TANZANIA     |     4|            0|      2|   144|
|6-24 months                |MAL-ED         |TANZANIA     |     4|            1|      3|   144|
|6-24 months                |MAL-ED         |TANZANIA     |     5|            0|      2|   144|
|6-24 months                |MAL-ED         |TANZANIA     |     5|            1|      8|   144|
|6-24 months                |MAL-ED         |TANZANIA     |     6|            0|      1|   144|
|6-24 months                |MAL-ED         |TANZANIA     |     6|            1|     12|   144|
|6-24 months                |MAL-ED         |TANZANIA     |     7|            0|      5|   144|
|6-24 months                |MAL-ED         |TANZANIA     |     7|            1|      9|   144|
|6-24 months                |MAL-ED         |TANZANIA     |     8|            0|      2|   144|
|6-24 months                |MAL-ED         |TANZANIA     |     8|            1|      6|   144|
|6-24 months                |MAL-ED         |TANZANIA     |     9|            0|      2|   144|
|6-24 months                |MAL-ED         |TANZANIA     |     9|            1|      9|   144|
|6-24 months                |MAL-ED         |TANZANIA     |    10|            0|      1|   144|
|6-24 months                |MAL-ED         |TANZANIA     |    10|            1|      8|   144|
|6-24 months                |MAL-ED         |TANZANIA     |    11|            0|      1|   144|
|6-24 months                |MAL-ED         |TANZANIA     |    11|            1|     17|   144|
|6-24 months                |MAL-ED         |TANZANIA     |    12|            0|      2|   144|
|6-24 months                |MAL-ED         |TANZANIA     |    12|            1|     17|   144|
|6-24 months                |MAL-ED         |SOUTH AFRICA |     1|            0|     13|   158|
|6-24 months                |MAL-ED         |SOUTH AFRICA |     1|            1|     11|   158|
|6-24 months                |MAL-ED         |SOUTH AFRICA |     2|            0|      6|   158|
|6-24 months                |MAL-ED         |SOUTH AFRICA |     2|            1|      9|   158|
|6-24 months                |MAL-ED         |SOUTH AFRICA |     3|            0|      9|   158|
|6-24 months                |MAL-ED         |SOUTH AFRICA |     3|            1|      2|   158|
|6-24 months                |MAL-ED         |SOUTH AFRICA |     4|            0|      7|   158|
|6-24 months                |MAL-ED         |SOUTH AFRICA |     4|            1|      3|   158|
|6-24 months                |MAL-ED         |SOUTH AFRICA |     5|            0|      7|   158|
|6-24 months                |MAL-ED         |SOUTH AFRICA |     5|            1|      2|   158|
|6-24 months                |MAL-ED         |SOUTH AFRICA |     6|            0|      8|   158|
|6-24 months                |MAL-ED         |SOUTH AFRICA |     6|            1|      4|   158|
|6-24 months                |MAL-ED         |SOUTH AFRICA |     7|            0|     10|   158|
|6-24 months                |MAL-ED         |SOUTH AFRICA |     7|            1|      2|   158|
|6-24 months                |MAL-ED         |SOUTH AFRICA |     8|            0|      4|   158|
|6-24 months                |MAL-ED         |SOUTH AFRICA |     8|            1|      1|   158|
|6-24 months                |MAL-ED         |SOUTH AFRICA |     9|            0|      7|   158|
|6-24 months                |MAL-ED         |SOUTH AFRICA |     9|            1|      6|   158|
|6-24 months                |MAL-ED         |SOUTH AFRICA |    10|            0|      8|   158|
|6-24 months                |MAL-ED         |SOUTH AFRICA |    10|            1|      9|   158|
|6-24 months                |MAL-ED         |SOUTH AFRICA |    11|            0|      7|   158|
|6-24 months                |MAL-ED         |SOUTH AFRICA |    11|            1|      2|   158|
|6-24 months                |MAL-ED         |SOUTH AFRICA |    12|            0|     12|   158|
|6-24 months                |MAL-ED         |SOUTH AFRICA |    12|            1|      9|   158|
|6-24 months                |NIH-Birth      |BANGLADESH   |     1|            0|     13|   345|
|6-24 months                |NIH-Birth      |BANGLADESH   |     1|            1|     14|   345|
|6-24 months                |NIH-Birth      |BANGLADESH   |     2|            0|     13|   345|
|6-24 months                |NIH-Birth      |BANGLADESH   |     2|            1|     18|   345|
|6-24 months                |NIH-Birth      |BANGLADESH   |     3|            0|     17|   345|
|6-24 months                |NIH-Birth      |BANGLADESH   |     3|            1|     21|   345|
|6-24 months                |NIH-Birth      |BANGLADESH   |     4|            0|     11|   345|
|6-24 months                |NIH-Birth      |BANGLADESH   |     4|            1|     20|   345|
|6-24 months                |NIH-Birth      |BANGLADESH   |     5|            0|     13|   345|
|6-24 months                |NIH-Birth      |BANGLADESH   |     5|            1|     18|   345|
|6-24 months                |NIH-Birth      |BANGLADESH   |     6|            0|      9|   345|
|6-24 months                |NIH-Birth      |BANGLADESH   |     6|            1|     13|   345|
|6-24 months                |NIH-Birth      |BANGLADESH   |     7|            0|     12|   345|
|6-24 months                |NIH-Birth      |BANGLADESH   |     7|            1|     11|   345|
|6-24 months                |NIH-Birth      |BANGLADESH   |     8|            0|      9|   345|
|6-24 months                |NIH-Birth      |BANGLADESH   |     8|            1|     16|   345|
|6-24 months                |NIH-Birth      |BANGLADESH   |     9|            0|     10|   345|
|6-24 months                |NIH-Birth      |BANGLADESH   |     9|            1|      9|   345|
|6-24 months                |NIH-Birth      |BANGLADESH   |    10|            0|     14|   345|
|6-24 months                |NIH-Birth      |BANGLADESH   |    10|            1|     19|   345|
|6-24 months                |NIH-Birth      |BANGLADESH   |    11|            0|     11|   345|
|6-24 months                |NIH-Birth      |BANGLADESH   |    11|            1|     16|   345|
|6-24 months                |NIH-Birth      |BANGLADESH   |    12|            0|     15|   345|
|6-24 months                |NIH-Birth      |BANGLADESH   |    12|            1|     23|   345|
|6-24 months                |PROBIT         |BELARUS      |     1|            0|    984| 15467|
|6-24 months                |PROBIT         |BELARUS      |     1|            1|     91| 15467|
|6-24 months                |PROBIT         |BELARUS      |     2|            0|    808| 15467|
|6-24 months                |PROBIT         |BELARUS      |     2|            1|    110| 15467|
|6-24 months                |PROBIT         |BELARUS      |     3|            0|   1007| 15467|
|6-24 months                |PROBIT         |BELARUS      |     3|            1|     88| 15467|
|6-24 months                |PROBIT         |BELARUS      |     4|            0|    987| 15467|
|6-24 months                |PROBIT         |BELARUS      |     4|            1|     57| 15467|
|6-24 months                |PROBIT         |BELARUS      |     5|            0|   1010| 15467|
|6-24 months                |PROBIT         |BELARUS      |     5|            1|     60| 15467|
|6-24 months                |PROBIT         |BELARUS      |     6|            0|   1063| 15467|
|6-24 months                |PROBIT         |BELARUS      |     6|            1|     73| 15467|
|6-24 months                |PROBIT         |BELARUS      |     7|            0|   1296| 15467|
|6-24 months                |PROBIT         |BELARUS      |     7|            1|     59| 15467|
|6-24 months                |PROBIT         |BELARUS      |     8|            0|   1417| 15467|
|6-24 months                |PROBIT         |BELARUS      |     8|            1|     80| 15467|
|6-24 months                |PROBIT         |BELARUS      |     9|            0|   1377| 15467|
|6-24 months                |PROBIT         |BELARUS      |     9|            1|     74| 15467|
|6-24 months                |PROBIT         |BELARUS      |    10|            0|   1530| 15467|
|6-24 months                |PROBIT         |BELARUS      |    10|            1|     93| 15467|
|6-24 months                |PROBIT         |BELARUS      |    11|            0|   1456| 15467|
|6-24 months                |PROBIT         |BELARUS      |    11|            1|     92| 15467|
|6-24 months                |PROBIT         |BELARUS      |    12|            0|   1538| 15467|
|6-24 months                |PROBIT         |BELARUS      |    12|            1|    117| 15467|
|6-24 months                |PROVIDE        |BANGLADESH   |     1|            0|     13|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |     1|            1|     11|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |     2|            0|     16|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |     2|            1|     14|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |     3|            0|     17|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |     3|            1|      3|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |     4|            0|     30|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |     4|            1|      5|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |     5|            0|     18|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |     5|            1|     11|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |     6|            0|     29|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |     6|            1|      7|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |     7|            0|     31|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |     7|            1|     23|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |     8|            0|     40|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |     8|            1|     14|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |     9|            0|     38|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |     9|            1|      8|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |    10|            0|     39|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |    10|            1|     17|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |    11|            0|     32|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |    11|            1|     18|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |    12|            0|     16|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |    12|            1|      6|   456|
|6-24 months                |ResPak         |PAKISTAN     |     1|            0|      0|    97|
|6-24 months                |ResPak         |PAKISTAN     |     1|            1|      0|    97|
|6-24 months                |ResPak         |PAKISTAN     |     2|            0|      0|    97|
|6-24 months                |ResPak         |PAKISTAN     |     2|            1|      2|    97|
|6-24 months                |ResPak         |PAKISTAN     |     3|            0|      4|    97|
|6-24 months                |ResPak         |PAKISTAN     |     3|            1|      3|    97|
|6-24 months                |ResPak         |PAKISTAN     |     4|            0|      5|    97|
|6-24 months                |ResPak         |PAKISTAN     |     4|            1|      2|    97|
|6-24 months                |ResPak         |PAKISTAN     |     5|            0|      7|    97|
|6-24 months                |ResPak         |PAKISTAN     |     5|            1|      2|    97|
|6-24 months                |ResPak         |PAKISTAN     |     6|            0|     14|    97|
|6-24 months                |ResPak         |PAKISTAN     |     6|            1|      2|    97|
|6-24 months                |ResPak         |PAKISTAN     |     7|            0|     13|    97|
|6-24 months                |ResPak         |PAKISTAN     |     7|            1|      1|    97|
|6-24 months                |ResPak         |PAKISTAN     |     8|            0|      5|    97|
|6-24 months                |ResPak         |PAKISTAN     |     8|            1|      2|    97|
|6-24 months                |ResPak         |PAKISTAN     |     9|            0|     17|    97|
|6-24 months                |ResPak         |PAKISTAN     |     9|            1|      3|    97|
|6-24 months                |ResPak         |PAKISTAN     |    10|            0|      7|    97|
|6-24 months                |ResPak         |PAKISTAN     |    10|            1|      1|    97|
|6-24 months                |ResPak         |PAKISTAN     |    11|            0|      4|    97|
|6-24 months                |ResPak         |PAKISTAN     |    11|            1|      1|    97|
|6-24 months                |ResPak         |PAKISTAN     |    12|            0|      2|    97|
|6-24 months                |ResPak         |PAKISTAN     |    12|            1|      0|    97|
|6-24 months                |SAS-CompFeed   |INDIA        |     1|            0|     23|   813|
|6-24 months                |SAS-CompFeed   |INDIA        |     1|            1|     31|   813|
|6-24 months                |SAS-CompFeed   |INDIA        |     2|            0|     28|   813|
|6-24 months                |SAS-CompFeed   |INDIA        |     2|            1|     22|   813|
|6-24 months                |SAS-CompFeed   |INDIA        |     3|            0|     29|   813|
|6-24 months                |SAS-CompFeed   |INDIA        |     3|            1|     19|   813|
|6-24 months                |SAS-CompFeed   |INDIA        |     4|            0|     20|   813|
|6-24 months                |SAS-CompFeed   |INDIA        |     4|            1|     26|   813|
|6-24 months                |SAS-CompFeed   |INDIA        |     5|            0|     26|   813|
|6-24 months                |SAS-CompFeed   |INDIA        |     5|            1|     24|   813|
|6-24 months                |SAS-CompFeed   |INDIA        |     6|            0|     35|   813|
|6-24 months                |SAS-CompFeed   |INDIA        |     6|            1|     27|   813|
|6-24 months                |SAS-CompFeed   |INDIA        |     7|            0|     28|   813|
|6-24 months                |SAS-CompFeed   |INDIA        |     7|            1|     31|   813|
|6-24 months                |SAS-CompFeed   |INDIA        |     8|            0|     30|   813|
|6-24 months                |SAS-CompFeed   |INDIA        |     8|            1|     48|   813|
|6-24 months                |SAS-CompFeed   |INDIA        |     9|            0|     61|   813|
|6-24 months                |SAS-CompFeed   |INDIA        |     9|            1|     56|   813|
|6-24 months                |SAS-CompFeed   |INDIA        |    10|            0|     38|   813|
|6-24 months                |SAS-CompFeed   |INDIA        |    10|            1|     52|   813|
|6-24 months                |SAS-CompFeed   |INDIA        |    11|            0|     42|   813|
|6-24 months                |SAS-CompFeed   |INDIA        |    11|            1|     40|   813|
|6-24 months                |SAS-CompFeed   |INDIA        |    12|            0|     44|   813|
|6-24 months                |SAS-CompFeed   |INDIA        |    12|            1|     33|   813|
|6-24 months                |SAS-FoodSuppl  |INDIA        |     1|            0|      4|   243|
|6-24 months                |SAS-FoodSuppl  |INDIA        |     1|            1|     25|   243|
|6-24 months                |SAS-FoodSuppl  |INDIA        |     2|            0|      7|   243|
|6-24 months                |SAS-FoodSuppl  |INDIA        |     2|            1|     16|   243|
|6-24 months                |SAS-FoodSuppl  |INDIA        |     3|            0|      5|   243|
|6-24 months                |SAS-FoodSuppl  |INDIA        |     3|            1|     13|   243|
|6-24 months                |SAS-FoodSuppl  |INDIA        |     4|            0|      3|   243|
|6-24 months                |SAS-FoodSuppl  |INDIA        |     4|            1|     16|   243|
|6-24 months                |SAS-FoodSuppl  |INDIA        |     5|            0|      6|   243|
|6-24 months                |SAS-FoodSuppl  |INDIA        |     5|            1|     13|   243|
|6-24 months                |SAS-FoodSuppl  |INDIA        |     6|            0|      8|   243|
|6-24 months                |SAS-FoodSuppl  |INDIA        |     6|            1|     17|   243|
|6-24 months                |SAS-FoodSuppl  |INDIA        |     7|            0|      3|   243|
|6-24 months                |SAS-FoodSuppl  |INDIA        |     7|            1|      7|   243|
|6-24 months                |SAS-FoodSuppl  |INDIA        |     8|            0|      0|   243|
|6-24 months                |SAS-FoodSuppl  |INDIA        |     8|            1|      0|   243|
|6-24 months                |SAS-FoodSuppl  |INDIA        |     9|            0|      0|   243|
|6-24 months                |SAS-FoodSuppl  |INDIA        |     9|            1|      8|   243|
|6-24 months                |SAS-FoodSuppl  |INDIA        |    10|            0|      3|   243|
|6-24 months                |SAS-FoodSuppl  |INDIA        |    10|            1|     13|   243|
|6-24 months                |SAS-FoodSuppl  |INDIA        |    11|            0|      9|   243|
|6-24 months                |SAS-FoodSuppl  |INDIA        |    11|            1|     25|   243|
|6-24 months                |SAS-FoodSuppl  |INDIA        |    12|            0|     11|   243|
|6-24 months                |SAS-FoodSuppl  |INDIA        |    12|            1|     31|   243|
|6-24 months                |TanzaniaChild2 |TANZANIA     |     1|            0|     81|  1602|
|6-24 months                |TanzaniaChild2 |TANZANIA     |     1|            1|     34|  1602|
|6-24 months                |TanzaniaChild2 |TANZANIA     |     2|            0|    100|  1602|
|6-24 months                |TanzaniaChild2 |TANZANIA     |     2|            1|     22|  1602|
|6-24 months                |TanzaniaChild2 |TANZANIA     |     3|            0|     89|  1602|
|6-24 months                |TanzaniaChild2 |TANZANIA     |     3|            1|     32|  1602|
|6-24 months                |TanzaniaChild2 |TANZANIA     |     4|            0|     74|  1602|
|6-24 months                |TanzaniaChild2 |TANZANIA     |     4|            1|     34|  1602|
|6-24 months                |TanzaniaChild2 |TANZANIA     |     5|            0|     91|  1602|
|6-24 months                |TanzaniaChild2 |TANZANIA     |     5|            1|     25|  1602|
|6-24 months                |TanzaniaChild2 |TANZANIA     |     6|            0|     85|  1602|
|6-24 months                |TanzaniaChild2 |TANZANIA     |     6|            1|     25|  1602|
|6-24 months                |TanzaniaChild2 |TANZANIA     |     7|            0|    114|  1602|
|6-24 months                |TanzaniaChild2 |TANZANIA     |     7|            1|     31|  1602|
|6-24 months                |TanzaniaChild2 |TANZANIA     |     8|            0|    137|  1602|
|6-24 months                |TanzaniaChild2 |TANZANIA     |     8|            1|     27|  1602|
|6-24 months                |TanzaniaChild2 |TANZANIA     |     9|            0|    113|  1602|
|6-24 months                |TanzaniaChild2 |TANZANIA     |     9|            1|     31|  1602|
|6-24 months                |TanzaniaChild2 |TANZANIA     |    10|            0|    132|  1602|
|6-24 months                |TanzaniaChild2 |TANZANIA     |    10|            1|     35|  1602|
|6-24 months                |TanzaniaChild2 |TANZANIA     |    11|            0|    113|  1602|
|6-24 months                |TanzaniaChild2 |TANZANIA     |    11|            1|     35|  1602|
|6-24 months                |TanzaniaChild2 |TANZANIA     |    12|            0|    111|  1602|
|6-24 months                |TanzaniaChild2 |TANZANIA     |    12|            1|     31|  1602|
|6-24 months                |Vellore Crypto |INDIA        |     1|            0|     10|   236|
|6-24 months                |Vellore Crypto |INDIA        |     1|            1|     11|   236|
|6-24 months                |Vellore Crypto |INDIA        |     2|            0|      9|   236|
|6-24 months                |Vellore Crypto |INDIA        |     2|            1|      5|   236|
|6-24 months                |Vellore Crypto |INDIA        |     3|            0|      8|   236|
|6-24 months                |Vellore Crypto |INDIA        |     3|            1|      8|   236|
|6-24 months                |Vellore Crypto |INDIA        |     4|            0|      5|   236|
|6-24 months                |Vellore Crypto |INDIA        |     4|            1|      7|   236|
|6-24 months                |Vellore Crypto |INDIA        |     5|            0|      4|   236|
|6-24 months                |Vellore Crypto |INDIA        |     5|            1|      6|   236|
|6-24 months                |Vellore Crypto |INDIA        |     6|            0|     16|   236|
|6-24 months                |Vellore Crypto |INDIA        |     6|            1|      7|   236|
|6-24 months                |Vellore Crypto |INDIA        |     7|            0|     14|   236|
|6-24 months                |Vellore Crypto |INDIA        |     7|            1|      6|   236|
|6-24 months                |Vellore Crypto |INDIA        |     8|            0|     22|   236|
|6-24 months                |Vellore Crypto |INDIA        |     8|            1|     10|   236|
|6-24 months                |Vellore Crypto |INDIA        |     9|            0|      9|   236|
|6-24 months                |Vellore Crypto |INDIA        |     9|            1|      6|   236|
|6-24 months                |Vellore Crypto |INDIA        |    10|            0|     19|   236|
|6-24 months                |Vellore Crypto |INDIA        |    10|            1|      5|   236|
|6-24 months                |Vellore Crypto |INDIA        |    11|            0|     17|   236|
|6-24 months                |Vellore Crypto |INDIA        |    11|            1|      9|   236|
|6-24 months                |Vellore Crypto |INDIA        |    12|            0|     14|   236|
|6-24 months                |Vellore Crypto |INDIA        |    12|            1|      9|   236|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |     1|            0|    611|  8497|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |     1|            1|    227|  8497|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |     2|            0|    464|  8497|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |     2|            1|    177|  8497|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |     3|            0|    498|  8497|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |     3|            1|    220|  8497|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |     4|            0|    472|  8497|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |     4|            1|    157|  8497|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |     5|            0|    415|  8497|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |     5|            1|    153|  8497|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |     6|            0|    485|  8497|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |     6|            1|    151|  8497|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |     7|            0|    519|  8497|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |     7|            1|    161|  8497|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |     8|            0|    534|  8497|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |     8|            1|    175|  8497|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |     9|            0|    647|  8497|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |     9|            1|    211|  8497|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |    10|            0|    463|  8497|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |    10|            1|    186|  8497|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |    11|            0|    553|  8497|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |    11|            1|    185|  8497|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |    12|            0|    601|  8497|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |    12|            1|    232|  8497|


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months (no birth st.), studyid: Vellore Crypto, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months (no birth st.), studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


