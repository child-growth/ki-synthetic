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

**Outcome Variable:** wast_rec90d

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

|agecat      |studyid        |country      | month| wast_rec90d| n_cell|    n|
|:-----------|:--------------|:------------|-----:|-----------:|------:|----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |     1|           0|      9|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |     1|           1|     19|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |     2|           0|      3|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |     2|           1|      6|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |     3|           0|     11|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |     3|           1|     13|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |     4|           0|     17|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |     4|           1|     18|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |     5|           0|      9|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |     5|           1|     16|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |     6|           0|     11|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |     6|           1|     26|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |     7|           0|     16|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |     7|           1|      9|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |     8|           0|      7|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |     8|           1|     14|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |     9|           0|      6|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |     9|           1|     13|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |    10|           0|      8|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |    10|           1|     22|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |    11|           0|     14|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |    11|           1|     30|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |    12|           0|      9|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |    12|           1|     18|  324|
|0-24 months |CMIN           |BANGLADESH   |     1|           0|      7|  190|
|0-24 months |CMIN           |BANGLADESH   |     1|           1|     16|  190|
|0-24 months |CMIN           |BANGLADESH   |     2|           0|     10|  190|
|0-24 months |CMIN           |BANGLADESH   |     2|           1|     15|  190|
|0-24 months |CMIN           |BANGLADESH   |     3|           0|      2|  190|
|0-24 months |CMIN           |BANGLADESH   |     3|           1|      7|  190|
|0-24 months |CMIN           |BANGLADESH   |     4|           0|      4|  190|
|0-24 months |CMIN           |BANGLADESH   |     4|           1|     12|  190|
|0-24 months |CMIN           |BANGLADESH   |     5|           0|      8|  190|
|0-24 months |CMIN           |BANGLADESH   |     5|           1|     11|  190|
|0-24 months |CMIN           |BANGLADESH   |     6|           0|      6|  190|
|0-24 months |CMIN           |BANGLADESH   |     6|           1|      6|  190|
|0-24 months |CMIN           |BANGLADESH   |     7|           0|      1|  190|
|0-24 months |CMIN           |BANGLADESH   |     7|           1|      7|  190|
|0-24 months |CMIN           |BANGLADESH   |     8|           0|      5|  190|
|0-24 months |CMIN           |BANGLADESH   |     8|           1|      2|  190|
|0-24 months |CMIN           |BANGLADESH   |     9|           0|      7|  190|
|0-24 months |CMIN           |BANGLADESH   |     9|           1|      8|  190|
|0-24 months |CMIN           |BANGLADESH   |    10|           0|      6|  190|
|0-24 months |CMIN           |BANGLADESH   |    10|           1|      8|  190|
|0-24 months |CMIN           |BANGLADESH   |    11|           0|      1|  190|
|0-24 months |CMIN           |BANGLADESH   |    11|           1|      0|  190|
|0-24 months |CMIN           |BANGLADESH   |    12|           0|     23|  190|
|0-24 months |CMIN           |BANGLADESH   |    12|           1|     18|  190|
|0-24 months |CONTENT        |PERU         |     1|           0|      1|    7|
|0-24 months |CONTENT        |PERU         |     1|           1|      2|    7|
|0-24 months |CONTENT        |PERU         |     2|           0|      0|    7|
|0-24 months |CONTENT        |PERU         |     2|           1|      0|    7|
|0-24 months |CONTENT        |PERU         |     3|           0|      0|    7|
|0-24 months |CONTENT        |PERU         |     3|           1|      3|    7|
|0-24 months |CONTENT        |PERU         |     4|           0|      0|    7|
|0-24 months |CONTENT        |PERU         |     4|           1|      0|    7|
|0-24 months |CONTENT        |PERU         |     5|           0|      0|    7|
|0-24 months |CONTENT        |PERU         |     5|           1|      0|    7|
|0-24 months |CONTENT        |PERU         |     6|           0|      0|    7|
|0-24 months |CONTENT        |PERU         |     6|           1|      1|    7|
|0-24 months |CONTENT        |PERU         |     7|           0|      0|    7|
|0-24 months |CONTENT        |PERU         |     7|           1|      0|    7|
|0-24 months |CONTENT        |PERU         |     8|           0|      0|    7|
|0-24 months |CONTENT        |PERU         |     8|           1|      0|    7|
|0-24 months |CONTENT        |PERU         |     9|           0|      0|    7|
|0-24 months |CONTENT        |PERU         |     9|           1|      0|    7|
|0-24 months |CONTENT        |PERU         |    10|           0|      0|    7|
|0-24 months |CONTENT        |PERU         |    10|           1|      0|    7|
|0-24 months |CONTENT        |PERU         |    11|           0|      0|    7|
|0-24 months |CONTENT        |PERU         |    11|           1|      0|    7|
|0-24 months |CONTENT        |PERU         |    12|           0|      0|    7|
|0-24 months |CONTENT        |PERU         |    12|           1|      0|    7|
|0-24 months |EE             |PAKISTAN     |     1|           0|     44|  323|
|0-24 months |EE             |PAKISTAN     |     1|           1|     32|  323|
|0-24 months |EE             |PAKISTAN     |     2|           0|     24|  323|
|0-24 months |EE             |PAKISTAN     |     2|           1|     23|  323|
|0-24 months |EE             |PAKISTAN     |     3|           0|     23|  323|
|0-24 months |EE             |PAKISTAN     |     3|           1|     25|  323|
|0-24 months |EE             |PAKISTAN     |     4|           0|      8|  323|
|0-24 months |EE             |PAKISTAN     |     4|           1|      8|  323|
|0-24 months |EE             |PAKISTAN     |     5|           0|      0|  323|
|0-24 months |EE             |PAKISTAN     |     5|           1|      0|  323|
|0-24 months |EE             |PAKISTAN     |     6|           0|      0|  323|
|0-24 months |EE             |PAKISTAN     |     6|           1|      0|  323|
|0-24 months |EE             |PAKISTAN     |     7|           0|      0|  323|
|0-24 months |EE             |PAKISTAN     |     7|           1|      0|  323|
|0-24 months |EE             |PAKISTAN     |     8|           0|      0|  323|
|0-24 months |EE             |PAKISTAN     |     8|           1|      0|  323|
|0-24 months |EE             |PAKISTAN     |     9|           0|      0|  323|
|0-24 months |EE             |PAKISTAN     |     9|           1|      0|  323|
|0-24 months |EE             |PAKISTAN     |    10|           0|      0|  323|
|0-24 months |EE             |PAKISTAN     |    10|           1|      3|  323|
|0-24 months |EE             |PAKISTAN     |    11|           0|     34|  323|
|0-24 months |EE             |PAKISTAN     |    11|           1|     33|  323|
|0-24 months |EE             |PAKISTAN     |    12|           0|     27|  323|
|0-24 months |EE             |PAKISTAN     |    12|           1|     39|  323|
|0-24 months |GMS-Nepal      |NEPAL        |     1|           0|      0|  643|
|0-24 months |GMS-Nepal      |NEPAL        |     1|           1|      0|  643|
|0-24 months |GMS-Nepal      |NEPAL        |     2|           0|      0|  643|
|0-24 months |GMS-Nepal      |NEPAL        |     2|           1|      0|  643|
|0-24 months |GMS-Nepal      |NEPAL        |     3|           0|      0|  643|
|0-24 months |GMS-Nepal      |NEPAL        |     3|           1|      0|  643|
|0-24 months |GMS-Nepal      |NEPAL        |     4|           0|      1|  643|
|0-24 months |GMS-Nepal      |NEPAL        |     4|           1|      1|  643|
|0-24 months |GMS-Nepal      |NEPAL        |     5|           0|      0|  643|
|0-24 months |GMS-Nepal      |NEPAL        |     5|           1|      0|  643|
|0-24 months |GMS-Nepal      |NEPAL        |     6|           0|     72|  643|
|0-24 months |GMS-Nepal      |NEPAL        |     6|           1|     61|  643|
|0-24 months |GMS-Nepal      |NEPAL        |     7|           0|    107|  643|
|0-24 months |GMS-Nepal      |NEPAL        |     7|           1|    133|  643|
|0-24 months |GMS-Nepal      |NEPAL        |     8|           0|    116|  643|
|0-24 months |GMS-Nepal      |NEPAL        |     8|           1|    152|  643|
|0-24 months |GMS-Nepal      |NEPAL        |     9|           0|      0|  643|
|0-24 months |GMS-Nepal      |NEPAL        |     9|           1|      0|  643|
|0-24 months |GMS-Nepal      |NEPAL        |    10|           0|      0|  643|
|0-24 months |GMS-Nepal      |NEPAL        |    10|           1|      0|  643|
|0-24 months |GMS-Nepal      |NEPAL        |    11|           0|      0|  643|
|0-24 months |GMS-Nepal      |NEPAL        |    11|           1|      0|  643|
|0-24 months |GMS-Nepal      |NEPAL        |    12|           0|      0|  643|
|0-24 months |GMS-Nepal      |NEPAL        |    12|           1|      0|  643|
|0-24 months |Guatemala BSC  |GUATEMALA    |     1|           0|      1|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |     1|           1|      1|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |     2|           0|      1|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |     2|           1|      1|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |     3|           0|      2|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |     3|           1|      2|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |     4|           0|      6|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |     4|           1|      1|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |     5|           0|      0|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |     5|           1|      3|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |     6|           0|      2|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |     6|           1|      2|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |     7|           0|      0|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |     7|           1|      3|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |     8|           0|      2|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |     8|           1|      2|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |     9|           0|      3|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |     9|           1|      2|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |    10|           0|      1|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |    10|           1|      0|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |    11|           0|      3|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |    11|           1|      0|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |    12|           0|      0|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |    12|           1|      0|   38|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |     1|           0|     55|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |     1|           1|      2|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |     2|           0|     44|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |     2|           1|      5|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |     3|           0|     49|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |     3|           1|      1|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |     4|           0|     41|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |     4|           1|      2|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |     5|           0|     61|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |     5|           1|      5|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |     6|           0|     89|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |     6|           1|      7|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |     7|           0|     94|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |     7|           1|      5|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |     8|           0|     97|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |     8|           1|      3|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |     9|           0|     73|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |     9|           1|      3|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |    10|           0|     74|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |    10|           1|      2|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |    11|           0|     59|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |    11|           1|      1|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |    12|           0|     48|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |    12|           1|      0|  820|
|0-24 months |JiVitA-3       |BANGLADESH   |     1|           0|    377| 7571|
|0-24 months |JiVitA-3       |BANGLADESH   |     1|           1|    271| 7571|
|0-24 months |JiVitA-3       |BANGLADESH   |     2|           0|    291| 7571|
|0-24 months |JiVitA-3       |BANGLADESH   |     2|           1|    240| 7571|
|0-24 months |JiVitA-3       |BANGLADESH   |     3|           0|    346| 7571|
|0-24 months |JiVitA-3       |BANGLADESH   |     3|           1|    266| 7571|
|0-24 months |JiVitA-3       |BANGLADESH   |     4|           0|    306| 7571|
|0-24 months |JiVitA-3       |BANGLADESH   |     4|           1|    209| 7571|
|0-24 months |JiVitA-3       |BANGLADESH   |     5|           0|    292| 7571|
|0-24 months |JiVitA-3       |BANGLADESH   |     5|           1|    185| 7571|
|0-24 months |JiVitA-3       |BANGLADESH   |     6|           0|    295| 7571|
|0-24 months |JiVitA-3       |BANGLADESH   |     6|           1|    165| 7571|
|0-24 months |JiVitA-3       |BANGLADESH   |     7|           0|    311| 7571|
|0-24 months |JiVitA-3       |BANGLADESH   |     7|           1|    177| 7571|
|0-24 months |JiVitA-3       |BANGLADESH   |     8|           0|    366| 7571|
|0-24 months |JiVitA-3       |BANGLADESH   |     8|           1|    253| 7571|
|0-24 months |JiVitA-3       |BANGLADESH   |     9|           0|    408| 7571|
|0-24 months |JiVitA-3       |BANGLADESH   |     9|           1|    378| 7571|
|0-24 months |JiVitA-3       |BANGLADESH   |    10|           0|    462| 7571|
|0-24 months |JiVitA-3       |BANGLADESH   |    10|           1|    366| 7571|
|0-24 months |JiVitA-3       |BANGLADESH   |    11|           0|    446| 7571|
|0-24 months |JiVitA-3       |BANGLADESH   |    11|           1|    369| 7571|
|0-24 months |JiVitA-3       |BANGLADESH   |    12|           0|    475| 7571|
|0-24 months |JiVitA-3       |BANGLADESH   |    12|           1|    317| 7571|
|0-24 months |JiVitA-4       |BANGLADESH   |     1|           0|     10| 2069|
|0-24 months |JiVitA-4       |BANGLADESH   |     1|           1|      2| 2069|
|0-24 months |JiVitA-4       |BANGLADESH   |     2|           0|     96| 2069|
|0-24 months |JiVitA-4       |BANGLADESH   |     2|           1|     34| 2069|
|0-24 months |JiVitA-4       |BANGLADESH   |     3|           0|    135| 2069|
|0-24 months |JiVitA-4       |BANGLADESH   |     3|           1|     50| 2069|
|0-24 months |JiVitA-4       |BANGLADESH   |     4|           0|    280| 2069|
|0-24 months |JiVitA-4       |BANGLADESH   |     4|           1|     98| 2069|
|0-24 months |JiVitA-4       |BANGLADESH   |     5|           0|    209| 2069|
|0-24 months |JiVitA-4       |BANGLADESH   |     5|           1|     61| 2069|
|0-24 months |JiVitA-4       |BANGLADESH   |     6|           0|    131| 2069|
|0-24 months |JiVitA-4       |BANGLADESH   |     6|           1|     58| 2069|
|0-24 months |JiVitA-4       |BANGLADESH   |     7|           0|    280| 2069|
|0-24 months |JiVitA-4       |BANGLADESH   |     7|           1|     81| 2069|
|0-24 months |JiVitA-4       |BANGLADESH   |     8|           0|    129| 2069|
|0-24 months |JiVitA-4       |BANGLADESH   |     8|           1|     63| 2069|
|0-24 months |JiVitA-4       |BANGLADESH   |     9|           0|    117| 2069|
|0-24 months |JiVitA-4       |BANGLADESH   |     9|           1|     55| 2069|
|0-24 months |JiVitA-4       |BANGLADESH   |    10|           0|     84| 2069|
|0-24 months |JiVitA-4       |BANGLADESH   |    10|           1|     26| 2069|
|0-24 months |JiVitA-4       |BANGLADESH   |    11|           0|     44| 2069|
|0-24 months |JiVitA-4       |BANGLADESH   |    11|           1|      5| 2069|
|0-24 months |JiVitA-4       |BANGLADESH   |    12|           0|     19| 2069|
|0-24 months |JiVitA-4       |BANGLADESH   |    12|           1|      2| 2069|
|0-24 months |Keneba         |GAMBIA       |     1|           0|     65| 1828|
|0-24 months |Keneba         |GAMBIA       |     1|           1|     97| 1828|
|0-24 months |Keneba         |GAMBIA       |     2|           0|     72| 1828|
|0-24 months |Keneba         |GAMBIA       |     2|           1|    140| 1828|
|0-24 months |Keneba         |GAMBIA       |     3|           0|     52| 1828|
|0-24 months |Keneba         |GAMBIA       |     3|           1|    111| 1828|
|0-24 months |Keneba         |GAMBIA       |     4|           0|     73| 1828|
|0-24 months |Keneba         |GAMBIA       |     4|           1|    108| 1828|
|0-24 months |Keneba         |GAMBIA       |     5|           0|     47| 1828|
|0-24 months |Keneba         |GAMBIA       |     5|           1|     77| 1828|
|0-24 months |Keneba         |GAMBIA       |     6|           0|     38| 1828|
|0-24 months |Keneba         |GAMBIA       |     6|           1|     56| 1828|
|0-24 months |Keneba         |GAMBIA       |     7|           0|     44| 1828|
|0-24 months |Keneba         |GAMBIA       |     7|           1|     64| 1828|
|0-24 months |Keneba         |GAMBIA       |     8|           0|     57| 1828|
|0-24 months |Keneba         |GAMBIA       |     8|           1|     57| 1828|
|0-24 months |Keneba         |GAMBIA       |     9|           0|     56| 1828|
|0-24 months |Keneba         |GAMBIA       |     9|           1|    102| 1828|
|0-24 months |Keneba         |GAMBIA       |    10|           0|     65| 1828|
|0-24 months |Keneba         |GAMBIA       |    10|           1|     97| 1828|
|0-24 months |Keneba         |GAMBIA       |    11|           0|     84| 1828|
|0-24 months |Keneba         |GAMBIA       |    11|           1|    128| 1828|
|0-24 months |Keneba         |GAMBIA       |    12|           0|     59| 1828|
|0-24 months |Keneba         |GAMBIA       |    12|           1|     79| 1828|
|0-24 months |LCNI-5         |MALAWI       |     1|           0|      5|   79|
|0-24 months |LCNI-5         |MALAWI       |     1|           1|      1|   79|
|0-24 months |LCNI-5         |MALAWI       |     2|           0|      9|   79|
|0-24 months |LCNI-5         |MALAWI       |     2|           1|      3|   79|
|0-24 months |LCNI-5         |MALAWI       |     3|           0|     12|   79|
|0-24 months |LCNI-5         |MALAWI       |     3|           1|      2|   79|
|0-24 months |LCNI-5         |MALAWI       |     4|           0|      6|   79|
|0-24 months |LCNI-5         |MALAWI       |     4|           1|      1|   79|
|0-24 months |LCNI-5         |MALAWI       |     5|           0|      6|   79|
|0-24 months |LCNI-5         |MALAWI       |     5|           1|      1|   79|
|0-24 months |LCNI-5         |MALAWI       |     6|           0|     12|   79|
|0-24 months |LCNI-5         |MALAWI       |     6|           1|      1|   79|
|0-24 months |LCNI-5         |MALAWI       |     7|           0|      4|   79|
|0-24 months |LCNI-5         |MALAWI       |     7|           1|      2|   79|
|0-24 months |LCNI-5         |MALAWI       |     8|           0|      3|   79|
|0-24 months |LCNI-5         |MALAWI       |     8|           1|      0|   79|
|0-24 months |LCNI-5         |MALAWI       |     9|           0|      2|   79|
|0-24 months |LCNI-5         |MALAWI       |     9|           1|      1|   79|
|0-24 months |LCNI-5         |MALAWI       |    10|           0|      0|   79|
|0-24 months |LCNI-5         |MALAWI       |    10|           1|      0|   79|
|0-24 months |LCNI-5         |MALAWI       |    11|           0|      5|   79|
|0-24 months |LCNI-5         |MALAWI       |    11|           1|      1|   79|
|0-24 months |LCNI-5         |MALAWI       |    12|           0|      2|   79|
|0-24 months |LCNI-5         |MALAWI       |    12|           1|      0|   79|
|0-24 months |MAL-ED         |INDIA        |     1|           0|      7|  181|
|0-24 months |MAL-ED         |INDIA        |     1|           1|      8|  181|
|0-24 months |MAL-ED         |INDIA        |     2|           0|      3|  181|
|0-24 months |MAL-ED         |INDIA        |     2|           1|      4|  181|
|0-24 months |MAL-ED         |INDIA        |     3|           0|      5|  181|
|0-24 months |MAL-ED         |INDIA        |     3|           1|     13|  181|
|0-24 months |MAL-ED         |INDIA        |     4|           0|      6|  181|
|0-24 months |MAL-ED         |INDIA        |     4|           1|      6|  181|
|0-24 months |MAL-ED         |INDIA        |     5|           0|      2|  181|
|0-24 months |MAL-ED         |INDIA        |     5|           1|      6|  181|
|0-24 months |MAL-ED         |INDIA        |     6|           0|      7|  181|
|0-24 months |MAL-ED         |INDIA        |     6|           1|      8|  181|
|0-24 months |MAL-ED         |INDIA        |     7|           0|      9|  181|
|0-24 months |MAL-ED         |INDIA        |     7|           1|     12|  181|
|0-24 months |MAL-ED         |INDIA        |     8|           0|      7|  181|
|0-24 months |MAL-ED         |INDIA        |     8|           1|     17|  181|
|0-24 months |MAL-ED         |INDIA        |     9|           0|      6|  181|
|0-24 months |MAL-ED         |INDIA        |     9|           1|      8|  181|
|0-24 months |MAL-ED         |INDIA        |    10|           0|      8|  181|
|0-24 months |MAL-ED         |INDIA        |    10|           1|     10|  181|
|0-24 months |MAL-ED         |INDIA        |    11|           0|     10|  181|
|0-24 months |MAL-ED         |INDIA        |    11|           1|     14|  181|
|0-24 months |MAL-ED         |INDIA        |    12|           0|      1|  181|
|0-24 months |MAL-ED         |INDIA        |    12|           1|      4|  181|
|0-24 months |MAL-ED         |BANGLADESH   |     1|           0|      1|  124|
|0-24 months |MAL-ED         |BANGLADESH   |     1|           1|      4|  124|
|0-24 months |MAL-ED         |BANGLADESH   |     2|           0|      6|  124|
|0-24 months |MAL-ED         |BANGLADESH   |     2|           1|     10|  124|
|0-24 months |MAL-ED         |BANGLADESH   |     3|           0|      8|  124|
|0-24 months |MAL-ED         |BANGLADESH   |     3|           1|     16|  124|
|0-24 months |MAL-ED         |BANGLADESH   |     4|           0|      4|  124|
|0-24 months |MAL-ED         |BANGLADESH   |     4|           1|      5|  124|
|0-24 months |MAL-ED         |BANGLADESH   |     5|           0|      6|  124|
|0-24 months |MAL-ED         |BANGLADESH   |     5|           1|      6|  124|
|0-24 months |MAL-ED         |BANGLADESH   |     6|           0|      1|  124|
|0-24 months |MAL-ED         |BANGLADESH   |     6|           1|      1|  124|
|0-24 months |MAL-ED         |BANGLADESH   |     7|           0|      4|  124|
|0-24 months |MAL-ED         |BANGLADESH   |     7|           1|      9|  124|
|0-24 months |MAL-ED         |BANGLADESH   |     8|           0|      1|  124|
|0-24 months |MAL-ED         |BANGLADESH   |     8|           1|      3|  124|
|0-24 months |MAL-ED         |BANGLADESH   |     9|           0|      5|  124|
|0-24 months |MAL-ED         |BANGLADESH   |     9|           1|     16|  124|
|0-24 months |MAL-ED         |BANGLADESH   |    10|           0|      3|  124|
|0-24 months |MAL-ED         |BANGLADESH   |    10|           1|      3|  124|
|0-24 months |MAL-ED         |BANGLADESH   |    11|           0|      2|  124|
|0-24 months |MAL-ED         |BANGLADESH   |    11|           1|      2|  124|
|0-24 months |MAL-ED         |BANGLADESH   |    12|           0|      3|  124|
|0-24 months |MAL-ED         |BANGLADESH   |    12|           1|      5|  124|
|0-24 months |MAL-ED         |PERU         |     1|           0|      2|   35|
|0-24 months |MAL-ED         |PERU         |     1|           1|      6|   35|
|0-24 months |MAL-ED         |PERU         |     2|           0|      0|   35|
|0-24 months |MAL-ED         |PERU         |     2|           1|      3|   35|
|0-24 months |MAL-ED         |PERU         |     3|           0|      0|   35|
|0-24 months |MAL-ED         |PERU         |     3|           1|      3|   35|
|0-24 months |MAL-ED         |PERU         |     4|           0|      0|   35|
|0-24 months |MAL-ED         |PERU         |     4|           1|      1|   35|
|0-24 months |MAL-ED         |PERU         |     5|           0|      1|   35|
|0-24 months |MAL-ED         |PERU         |     5|           1|      3|   35|
|0-24 months |MAL-ED         |PERU         |     6|           0|      1|   35|
|0-24 months |MAL-ED         |PERU         |     6|           1|      1|   35|
|0-24 months |MAL-ED         |PERU         |     7|           0|      0|   35|
|0-24 months |MAL-ED         |PERU         |     7|           1|      1|   35|
|0-24 months |MAL-ED         |PERU         |     8|           0|      1|   35|
|0-24 months |MAL-ED         |PERU         |     8|           1|      1|   35|
|0-24 months |MAL-ED         |PERU         |     9|           0|      1|   35|
|0-24 months |MAL-ED         |PERU         |     9|           1|      1|   35|
|0-24 months |MAL-ED         |PERU         |    10|           0|      0|   35|
|0-24 months |MAL-ED         |PERU         |    10|           1|      1|   35|
|0-24 months |MAL-ED         |PERU         |    11|           0|      0|   35|
|0-24 months |MAL-ED         |PERU         |    11|           1|      8|   35|
|0-24 months |MAL-ED         |PERU         |    12|           0|      0|   35|
|0-24 months |MAL-ED         |PERU         |    12|           1|      0|   35|
|0-24 months |MAL-ED         |NEPAL        |     1|           0|      1|   98|
|0-24 months |MAL-ED         |NEPAL        |     1|           1|      9|   98|
|0-24 months |MAL-ED         |NEPAL        |     2|           0|      0|   98|
|0-24 months |MAL-ED         |NEPAL        |     2|           1|      7|   98|
|0-24 months |MAL-ED         |NEPAL        |     3|           0|      1|   98|
|0-24 months |MAL-ED         |NEPAL        |     3|           1|      4|   98|
|0-24 months |MAL-ED         |NEPAL        |     4|           0|      2|   98|
|0-24 months |MAL-ED         |NEPAL        |     4|           1|     10|   98|
|0-24 months |MAL-ED         |NEPAL        |     5|           0|      3|   98|
|0-24 months |MAL-ED         |NEPAL        |     5|           1|     12|   98|
|0-24 months |MAL-ED         |NEPAL        |     6|           0|      5|   98|
|0-24 months |MAL-ED         |NEPAL        |     6|           1|      7|   98|
|0-24 months |MAL-ED         |NEPAL        |     7|           0|      3|   98|
|0-24 months |MAL-ED         |NEPAL        |     7|           1|      7|   98|
|0-24 months |MAL-ED         |NEPAL        |     8|           0|      3|   98|
|0-24 months |MAL-ED         |NEPAL        |     8|           1|      6|   98|
|0-24 months |MAL-ED         |NEPAL        |     9|           0|      0|   98|
|0-24 months |MAL-ED         |NEPAL        |     9|           1|      3|   98|
|0-24 months |MAL-ED         |NEPAL        |    10|           0|      1|   98|
|0-24 months |MAL-ED         |NEPAL        |    10|           1|      3|   98|
|0-24 months |MAL-ED         |NEPAL        |    11|           0|      1|   98|
|0-24 months |MAL-ED         |NEPAL        |    11|           1|      5|   98|
|0-24 months |MAL-ED         |NEPAL        |    12|           0|      0|   98|
|0-24 months |MAL-ED         |NEPAL        |    12|           1|      5|   98|
|0-24 months |MAL-ED         |BRAZIL       |     1|           0|      0|   24|
|0-24 months |MAL-ED         |BRAZIL       |     1|           1|      2|   24|
|0-24 months |MAL-ED         |BRAZIL       |     2|           0|      1|   24|
|0-24 months |MAL-ED         |BRAZIL       |     2|           1|      2|   24|
|0-24 months |MAL-ED         |BRAZIL       |     3|           0|      1|   24|
|0-24 months |MAL-ED         |BRAZIL       |     3|           1|      0|   24|
|0-24 months |MAL-ED         |BRAZIL       |     4|           0|      0|   24|
|0-24 months |MAL-ED         |BRAZIL       |     4|           1|      1|   24|
|0-24 months |MAL-ED         |BRAZIL       |     5|           0|      0|   24|
|0-24 months |MAL-ED         |BRAZIL       |     5|           1|      0|   24|
|0-24 months |MAL-ED         |BRAZIL       |     6|           0|      0|   24|
|0-24 months |MAL-ED         |BRAZIL       |     6|           1|      1|   24|
|0-24 months |MAL-ED         |BRAZIL       |     7|           0|      0|   24|
|0-24 months |MAL-ED         |BRAZIL       |     7|           1|      1|   24|
|0-24 months |MAL-ED         |BRAZIL       |     8|           0|      2|   24|
|0-24 months |MAL-ED         |BRAZIL       |     8|           1|      1|   24|
|0-24 months |MAL-ED         |BRAZIL       |     9|           0|      0|   24|
|0-24 months |MAL-ED         |BRAZIL       |     9|           1|      3|   24|
|0-24 months |MAL-ED         |BRAZIL       |    10|           0|      1|   24|
|0-24 months |MAL-ED         |BRAZIL       |    10|           1|      4|   24|
|0-24 months |MAL-ED         |BRAZIL       |    11|           0|      1|   24|
|0-24 months |MAL-ED         |BRAZIL       |    11|           1|      2|   24|
|0-24 months |MAL-ED         |BRAZIL       |    12|           0|      0|   24|
|0-24 months |MAL-ED         |BRAZIL       |    12|           1|      1|   24|
|0-24 months |MAL-ED         |TANZANIA     |     1|           0|      1|   51|
|0-24 months |MAL-ED         |TANZANIA     |     1|           1|     12|   51|
|0-24 months |MAL-ED         |TANZANIA     |     2|           0|      1|   51|
|0-24 months |MAL-ED         |TANZANIA     |     2|           1|      6|   51|
|0-24 months |MAL-ED         |TANZANIA     |     3|           0|      0|   51|
|0-24 months |MAL-ED         |TANZANIA     |     3|           1|      2|   51|
|0-24 months |MAL-ED         |TANZANIA     |     4|           0|      1|   51|
|0-24 months |MAL-ED         |TANZANIA     |     4|           1|      1|   51|
|0-24 months |MAL-ED         |TANZANIA     |     5|           0|      0|   51|
|0-24 months |MAL-ED         |TANZANIA     |     5|           1|      2|   51|
|0-24 months |MAL-ED         |TANZANIA     |     6|           0|      0|   51|
|0-24 months |MAL-ED         |TANZANIA     |     6|           1|      7|   51|
|0-24 months |MAL-ED         |TANZANIA     |     7|           0|      0|   51|
|0-24 months |MAL-ED         |TANZANIA     |     7|           1|      0|   51|
|0-24 months |MAL-ED         |TANZANIA     |     8|           0|      2|   51|
|0-24 months |MAL-ED         |TANZANIA     |     8|           1|      1|   51|
|0-24 months |MAL-ED         |TANZANIA     |     9|           0|      0|   51|
|0-24 months |MAL-ED         |TANZANIA     |     9|           1|      0|   51|
|0-24 months |MAL-ED         |TANZANIA     |    10|           0|      0|   51|
|0-24 months |MAL-ED         |TANZANIA     |    10|           1|      0|   51|
|0-24 months |MAL-ED         |TANZANIA     |    11|           0|      3|   51|
|0-24 months |MAL-ED         |TANZANIA     |    11|           1|      5|   51|
|0-24 months |MAL-ED         |TANZANIA     |    12|           0|      1|   51|
|0-24 months |MAL-ED         |TANZANIA     |    12|           1|      6|   51|
|0-24 months |MAL-ED         |SOUTH AFRICA |     1|           0|      4|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |     1|           1|     16|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |     2|           0|      0|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |     2|           1|      6|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |     3|           0|      0|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |     3|           1|      2|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |     4|           0|      1|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |     4|           1|      3|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |     5|           0|      1|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |     5|           1|      2|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |     6|           0|      1|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |     6|           1|      4|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |     7|           0|      0|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |     7|           1|      5|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |     8|           0|      0|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |     8|           1|      0|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |     9|           0|      1|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |     9|           1|      2|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |    10|           0|      3|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |    10|           1|     11|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |    11|           0|      4|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |    11|           1|      7|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |    12|           0|      3|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |    12|           1|     11|   87|
|0-24 months |NIH-Birth      |BANGLADESH   |     1|           0|     27|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |     1|           1|     27|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |     2|           0|     17|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |     2|           1|     21|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |     3|           0|     28|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |     3|           1|     21|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |     4|           0|     16|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |     4|           1|     20|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |     5|           0|     12|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |     5|           1|     21|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |     6|           0|     10|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |     6|           1|     20|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |     7|           0|     21|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |     7|           1|     18|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |     8|           0|     13|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |     8|           1|     18|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |     9|           0|      9|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |     9|           1|     15|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |    10|           0|     15|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |    10|           1|     14|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |    11|           0|     16|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |    11|           1|     17|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |    12|           0|     18|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |    12|           1|      7|  421|
|0-24 months |PROBIT         |BELARUS      |     1|           0|     44| 4408|
|0-24 months |PROBIT         |BELARUS      |     1|           1|    250| 4408|
|0-24 months |PROBIT         |BELARUS      |     2|           0|     24| 4408|
|0-24 months |PROBIT         |BELARUS      |     2|           1|    197| 4408|
|0-24 months |PROBIT         |BELARUS      |     3|           0|     26| 4408|
|0-24 months |PROBIT         |BELARUS      |     3|           1|    273| 4408|
|0-24 months |PROBIT         |BELARUS      |     4|           0|     31| 4408|
|0-24 months |PROBIT         |BELARUS      |     4|           1|    259| 4408|
|0-24 months |PROBIT         |BELARUS      |     5|           0|     40| 4408|
|0-24 months |PROBIT         |BELARUS      |     5|           1|    291| 4408|
|0-24 months |PROBIT         |BELARUS      |     6|           0|     42| 4408|
|0-24 months |PROBIT         |BELARUS      |     6|           1|    291| 4408|
|0-24 months |PROBIT         |BELARUS      |     7|           0|     35| 4408|
|0-24 months |PROBIT         |BELARUS      |     7|           1|    377| 4408|
|0-24 months |PROBIT         |BELARUS      |     8|           0|     52| 4408|
|0-24 months |PROBIT         |BELARUS      |     8|           1|    406| 4408|
|0-24 months |PROBIT         |BELARUS      |     9|           0|     49| 4408|
|0-24 months |PROBIT         |BELARUS      |     9|           1|    347| 4408|
|0-24 months |PROBIT         |BELARUS      |    10|           0|     59| 4408|
|0-24 months |PROBIT         |BELARUS      |    10|           1|    427| 4408|
|0-24 months |PROBIT         |BELARUS      |    11|           0|     69| 4408|
|0-24 months |PROBIT         |BELARUS      |    11|           1|    352| 4408|
|0-24 months |PROBIT         |BELARUS      |    12|           0|     55| 4408|
|0-24 months |PROBIT         |BELARUS      |    12|           1|    412| 4408|
|0-24 months |PROVIDE        |BANGLADESH   |     1|           0|      8|  308|
|0-24 months |PROVIDE        |BANGLADESH   |     1|           1|      8|  308|
|0-24 months |PROVIDE        |BANGLADESH   |     2|           0|      8|  308|
|0-24 months |PROVIDE        |BANGLADESH   |     2|           1|      4|  308|
|0-24 months |PROVIDE        |BANGLADESH   |     3|           0|      5|  308|
|0-24 months |PROVIDE        |BANGLADESH   |     3|           1|      9|  308|
|0-24 months |PROVIDE        |BANGLADESH   |     4|           0|      8|  308|
|0-24 months |PROVIDE        |BANGLADESH   |     4|           1|     14|  308|
|0-24 months |PROVIDE        |BANGLADESH   |     5|           0|      7|  308|
|0-24 months |PROVIDE        |BANGLADESH   |     5|           1|     10|  308|
|0-24 months |PROVIDE        |BANGLADESH   |     6|           0|     12|  308|
|0-24 months |PROVIDE        |BANGLADESH   |     6|           1|     11|  308|
|0-24 months |PROVIDE        |BANGLADESH   |     7|           0|     19|  308|
|0-24 months |PROVIDE        |BANGLADESH   |     7|           1|     21|  308|
|0-24 months |PROVIDE        |BANGLADESH   |     8|           0|     19|  308|
|0-24 months |PROVIDE        |BANGLADESH   |     8|           1|     30|  308|
|0-24 months |PROVIDE        |BANGLADESH   |     9|           0|     16|  308|
|0-24 months |PROVIDE        |BANGLADESH   |     9|           1|     29|  308|
|0-24 months |PROVIDE        |BANGLADESH   |    10|           0|     11|  308|
|0-24 months |PROVIDE        |BANGLADESH   |    10|           1|     18|  308|
|0-24 months |PROVIDE        |BANGLADESH   |    11|           0|     13|  308|
|0-24 months |PROVIDE        |BANGLADESH   |    11|           1|     18|  308|
|0-24 months |PROVIDE        |BANGLADESH   |    12|           0|      3|  308|
|0-24 months |PROVIDE        |BANGLADESH   |    12|           1|      7|  308|
|0-24 months |ResPak         |PAKISTAN     |     1|           0|      0|  204|
|0-24 months |ResPak         |PAKISTAN     |     1|           1|      2|  204|
|0-24 months |ResPak         |PAKISTAN     |     2|           0|      3|  204|
|0-24 months |ResPak         |PAKISTAN     |     2|           1|      1|  204|
|0-24 months |ResPak         |PAKISTAN     |     3|           0|      4|  204|
|0-24 months |ResPak         |PAKISTAN     |     3|           1|      3|  204|
|0-24 months |ResPak         |PAKISTAN     |     4|           0|      8|  204|
|0-24 months |ResPak         |PAKISTAN     |     4|           1|     10|  204|
|0-24 months |ResPak         |PAKISTAN     |     5|           0|     18|  204|
|0-24 months |ResPak         |PAKISTAN     |     5|           1|     14|  204|
|0-24 months |ResPak         |PAKISTAN     |     6|           0|     24|  204|
|0-24 months |ResPak         |PAKISTAN     |     6|           1|     11|  204|
|0-24 months |ResPak         |PAKISTAN     |     7|           0|     17|  204|
|0-24 months |ResPak         |PAKISTAN     |     7|           1|     16|  204|
|0-24 months |ResPak         |PAKISTAN     |     8|           0|     12|  204|
|0-24 months |ResPak         |PAKISTAN     |     8|           1|     14|  204|
|0-24 months |ResPak         |PAKISTAN     |     9|           0|     17|  204|
|0-24 months |ResPak         |PAKISTAN     |     9|           1|      9|  204|
|0-24 months |ResPak         |PAKISTAN     |    10|           0|      5|  204|
|0-24 months |ResPak         |PAKISTAN     |    10|           1|      7|  204|
|0-24 months |ResPak         |PAKISTAN     |    11|           0|      3|  204|
|0-24 months |ResPak         |PAKISTAN     |    11|           1|      5|  204|
|0-24 months |ResPak         |PAKISTAN     |    12|           0|      1|  204|
|0-24 months |ResPak         |PAKISTAN     |    12|           1|      0|  204|
|0-24 months |SAS-CompFeed   |INDIA        |     1|           0|     43|  814|
|0-24 months |SAS-CompFeed   |INDIA        |     1|           1|     19|  814|
|0-24 months |SAS-CompFeed   |INDIA        |     2|           0|     30|  814|
|0-24 months |SAS-CompFeed   |INDIA        |     2|           1|      9|  814|
|0-24 months |SAS-CompFeed   |INDIA        |     3|           0|     31|  814|
|0-24 months |SAS-CompFeed   |INDIA        |     3|           1|     12|  814|
|0-24 months |SAS-CompFeed   |INDIA        |     4|           0|     30|  814|
|0-24 months |SAS-CompFeed   |INDIA        |     4|           1|     16|  814|
|0-24 months |SAS-CompFeed   |INDIA        |     5|           0|     38|  814|
|0-24 months |SAS-CompFeed   |INDIA        |     5|           1|     25|  814|
|0-24 months |SAS-CompFeed   |INDIA        |     6|           0|     34|  814|
|0-24 months |SAS-CompFeed   |INDIA        |     6|           1|     36|  814|
|0-24 months |SAS-CompFeed   |INDIA        |     7|           0|     33|  814|
|0-24 months |SAS-CompFeed   |INDIA        |     7|           1|     29|  814|
|0-24 months |SAS-CompFeed   |INDIA        |     8|           0|     53|  814|
|0-24 months |SAS-CompFeed   |INDIA        |     8|           1|     35|  814|
|0-24 months |SAS-CompFeed   |INDIA        |     9|           0|     59|  814|
|0-24 months |SAS-CompFeed   |INDIA        |     9|           1|     45|  814|
|0-24 months |SAS-CompFeed   |INDIA        |    10|           0|     45|  814|
|0-24 months |SAS-CompFeed   |INDIA        |    10|           1|     46|  814|
|0-24 months |SAS-CompFeed   |INDIA        |    11|           0|     63|  814|
|0-24 months |SAS-CompFeed   |INDIA        |    11|           1|     23|  814|
|0-24 months |SAS-CompFeed   |INDIA        |    12|           0|     45|  814|
|0-24 months |SAS-CompFeed   |INDIA        |    12|           1|     15|  814|
|0-24 months |SAS-FoodSuppl  |INDIA        |     1|           0|     35|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |     1|           1|      4|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |     2|           0|     27|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |     2|           1|      0|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |     3|           0|     23|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |     3|           1|      1|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |     4|           0|     19|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |     4|           1|      0|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |     5|           0|     17|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |     5|           1|      2|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |     6|           0|     20|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |     6|           1|      0|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |     7|           0|      8|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |     7|           1|      1|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |     8|           0|      0|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |     8|           1|      0|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |     9|           0|      8|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |     9|           1|      2|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |    10|           0|     12|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |    10|           1|      0|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |    11|           0|     17|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |    11|           1|      3|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |    12|           0|     35|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |    12|           1|      0|  234|
|0-24 months |TanzaniaChild2 |TANZANIA     |     1|           0|     26|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |     1|           1|     34|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |     2|           0|     13|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |     2|           1|     39|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |     3|           0|     17|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |     3|           1|     29|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |     4|           0|     15|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |     4|           1|     19|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |     5|           0|     14|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |     5|           1|     30|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |     6|           0|     19|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |     6|           1|     31|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |     7|           0|     19|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |     7|           1|     42|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |     8|           0|     30|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |     8|           1|     56|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |     9|           0|     16|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |     9|           1|     44|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |    10|           0|     29|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |    10|           1|     50|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |    11|           0|     35|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |    11|           1|     38|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |    12|           0|     33|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |    12|           1|     35|  713|
|0-24 months |Vellore Crypto |INDIA        |     1|           0|     11|  395|
|0-24 months |Vellore Crypto |INDIA        |     1|           1|     20|  395|
|0-24 months |Vellore Crypto |INDIA        |     2|           0|      9|  395|
|0-24 months |Vellore Crypto |INDIA        |     2|           1|     13|  395|
|0-24 months |Vellore Crypto |INDIA        |     3|           0|     10|  395|
|0-24 months |Vellore Crypto |INDIA        |     3|           1|     13|  395|
|0-24 months |Vellore Crypto |INDIA        |     4|           0|      6|  395|
|0-24 months |Vellore Crypto |INDIA        |     4|           1|     15|  395|
|0-24 months |Vellore Crypto |INDIA        |     5|           0|     10|  395|
|0-24 months |Vellore Crypto |INDIA        |     5|           1|     13|  395|
|0-24 months |Vellore Crypto |INDIA        |     6|           0|     19|  395|
|0-24 months |Vellore Crypto |INDIA        |     6|           1|     18|  395|
|0-24 months |Vellore Crypto |INDIA        |     7|           0|     17|  395|
|0-24 months |Vellore Crypto |INDIA        |     7|           1|     23|  395|
|0-24 months |Vellore Crypto |INDIA        |     8|           0|     18|  395|
|0-24 months |Vellore Crypto |INDIA        |     8|           1|     26|  395|
|0-24 months |Vellore Crypto |INDIA        |     9|           0|     14|  395|
|0-24 months |Vellore Crypto |INDIA        |     9|           1|     18|  395|
|0-24 months |Vellore Crypto |INDIA        |    10|           0|     19|  395|
|0-24 months |Vellore Crypto |INDIA        |    10|           1|     23|  395|
|0-24 months |Vellore Crypto |INDIA        |    11|           0|     12|  395|
|0-24 months |Vellore Crypto |INDIA        |    11|           1|     20|  395|
|0-24 months |Vellore Crypto |INDIA        |    12|           0|     17|  395|
|0-24 months |Vellore Crypto |INDIA        |    12|           1|     31|  395|
|0-24 months |ZVITAMBO       |ZIMBABWE     |     1|           0|    165| 3615|
|0-24 months |ZVITAMBO       |ZIMBABWE     |     1|           1|    172| 3615|
|0-24 months |ZVITAMBO       |ZIMBABWE     |     2|           0|    125| 3615|
|0-24 months |ZVITAMBO       |ZIMBABWE     |     2|           1|    129| 3615|
|0-24 months |ZVITAMBO       |ZIMBABWE     |     3|           0|    161| 3615|
|0-24 months |ZVITAMBO       |ZIMBABWE     |     3|           1|    152| 3615|
|0-24 months |ZVITAMBO       |ZIMBABWE     |     4|           0|     99| 3615|
|0-24 months |ZVITAMBO       |ZIMBABWE     |     4|           1|    123| 3615|
|0-24 months |ZVITAMBO       |ZIMBABWE     |     5|           0|    121| 3615|
|0-24 months |ZVITAMBO       |ZIMBABWE     |     5|           1|    130| 3615|
|0-24 months |ZVITAMBO       |ZIMBABWE     |     6|           0|    121| 3615|
|0-24 months |ZVITAMBO       |ZIMBABWE     |     6|           1|    189| 3615|
|0-24 months |ZVITAMBO       |ZIMBABWE     |     7|           0|    132| 3615|
|0-24 months |ZVITAMBO       |ZIMBABWE     |     7|           1|    201| 3615|
|0-24 months |ZVITAMBO       |ZIMBABWE     |     8|           0|    148| 3615|
|0-24 months |ZVITAMBO       |ZIMBABWE     |     8|           1|    197| 3615|
|0-24 months |ZVITAMBO       |ZIMBABWE     |     9|           0|    131| 3615|
|0-24 months |ZVITAMBO       |ZIMBABWE     |     9|           1|    170| 3615|
|0-24 months |ZVITAMBO       |ZIMBABWE     |    10|           0|    126| 3615|
|0-24 months |ZVITAMBO       |ZIMBABWE     |    10|           1|    148| 3615|
|0-24 months |ZVITAMBO       |ZIMBABWE     |    11|           0|    151| 3615|
|0-24 months |ZVITAMBO       |ZIMBABWE     |    11|           1|    177| 3615|
|0-24 months |ZVITAMBO       |ZIMBABWE     |    12|           0|    171| 3615|
|0-24 months |ZVITAMBO       |ZIMBABWE     |    12|           1|    176| 3615|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |     1|           0|      7|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |     1|           1|     11|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |     2|           0|      2|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |     2|           1|      6|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |     3|           0|      8|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |     3|           1|      9|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |     4|           0|      8|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |     4|           1|     12|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |     5|           0|      8|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |     5|           1|     12|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |     6|           0|      5|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |     6|           1|     17|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |     7|           0|      5|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |     7|           1|      8|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |     8|           0|      4|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |     8|           1|      6|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |     9|           0|      2|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |     9|           1|      8|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |    10|           0|      5|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |    10|           1|     15|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |    11|           0|      8|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |    11|           1|     19|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |    12|           0|      4|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |    12|           1|     12|  201|
|0-6 months  |CMIN           |BANGLADESH   |     1|           0|      3|   52|
|0-6 months  |CMIN           |BANGLADESH   |     1|           1|      5|   52|
|0-6 months  |CMIN           |BANGLADESH   |     2|           0|      4|   52|
|0-6 months  |CMIN           |BANGLADESH   |     2|           1|      4|   52|
|0-6 months  |CMIN           |BANGLADESH   |     3|           0|      0|   52|
|0-6 months  |CMIN           |BANGLADESH   |     3|           1|      3|   52|
|0-6 months  |CMIN           |BANGLADESH   |     4|           0|      2|   52|
|0-6 months  |CMIN           |BANGLADESH   |     4|           1|      3|   52|
|0-6 months  |CMIN           |BANGLADESH   |     5|           0|      4|   52|
|0-6 months  |CMIN           |BANGLADESH   |     5|           1|      2|   52|
|0-6 months  |CMIN           |BANGLADESH   |     6|           0|      4|   52|
|0-6 months  |CMIN           |BANGLADESH   |     6|           1|      1|   52|
|0-6 months  |CMIN           |BANGLADESH   |     7|           0|      1|   52|
|0-6 months  |CMIN           |BANGLADESH   |     7|           1|      2|   52|
|0-6 months  |CMIN           |BANGLADESH   |     8|           0|      1|   52|
|0-6 months  |CMIN           |BANGLADESH   |     8|           1|      0|   52|
|0-6 months  |CMIN           |BANGLADESH   |     9|           0|      1|   52|
|0-6 months  |CMIN           |BANGLADESH   |     9|           1|      2|   52|
|0-6 months  |CMIN           |BANGLADESH   |    10|           0|      1|   52|
|0-6 months  |CMIN           |BANGLADESH   |    10|           1|      0|   52|
|0-6 months  |CMIN           |BANGLADESH   |    11|           0|      1|   52|
|0-6 months  |CMIN           |BANGLADESH   |    11|           1|      0|   52|
|0-6 months  |CMIN           |BANGLADESH   |    12|           0|      3|   52|
|0-6 months  |CMIN           |BANGLADESH   |    12|           1|      5|   52|
|0-6 months  |CONTENT        |PERU         |     1|           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |     1|           1|      1|    4|
|0-6 months  |CONTENT        |PERU         |     2|           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |     2|           1|      0|    4|
|0-6 months  |CONTENT        |PERU         |     3|           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |     3|           1|      3|    4|
|0-6 months  |CONTENT        |PERU         |     4|           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |     4|           1|      0|    4|
|0-6 months  |CONTENT        |PERU         |     5|           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |     5|           1|      0|    4|
|0-6 months  |CONTENT        |PERU         |     6|           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |     6|           1|      0|    4|
|0-6 months  |CONTENT        |PERU         |     7|           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |     7|           1|      0|    4|
|0-6 months  |CONTENT        |PERU         |     8|           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |     8|           1|      0|    4|
|0-6 months  |CONTENT        |PERU         |     9|           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |     9|           1|      0|    4|
|0-6 months  |CONTENT        |PERU         |    10|           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |    10|           1|      0|    4|
|0-6 months  |CONTENT        |PERU         |    11|           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |    11|           1|      0|    4|
|0-6 months  |CONTENT        |PERU         |    12|           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |    12|           1|      0|    4|
|0-6 months  |EE             |PAKISTAN     |     1|           0|     18|  127|
|0-6 months  |EE             |PAKISTAN     |     1|           1|     16|  127|
|0-6 months  |EE             |PAKISTAN     |     2|           0|      8|  127|
|0-6 months  |EE             |PAKISTAN     |     2|           1|      8|  127|
|0-6 months  |EE             |PAKISTAN     |     3|           0|      8|  127|
|0-6 months  |EE             |PAKISTAN     |     3|           1|     12|  127|
|0-6 months  |EE             |PAKISTAN     |     4|           0|      0|  127|
|0-6 months  |EE             |PAKISTAN     |     4|           1|      5|  127|
|0-6 months  |EE             |PAKISTAN     |     5|           0|      0|  127|
|0-6 months  |EE             |PAKISTAN     |     5|           1|      0|  127|
|0-6 months  |EE             |PAKISTAN     |     6|           0|      0|  127|
|0-6 months  |EE             |PAKISTAN     |     6|           1|      0|  127|
|0-6 months  |EE             |PAKISTAN     |     7|           0|      0|  127|
|0-6 months  |EE             |PAKISTAN     |     7|           1|      0|  127|
|0-6 months  |EE             |PAKISTAN     |     8|           0|      0|  127|
|0-6 months  |EE             |PAKISTAN     |     8|           1|      0|  127|
|0-6 months  |EE             |PAKISTAN     |     9|           0|      0|  127|
|0-6 months  |EE             |PAKISTAN     |     9|           1|      0|  127|
|0-6 months  |EE             |PAKISTAN     |    10|           0|      0|  127|
|0-6 months  |EE             |PAKISTAN     |    10|           1|      1|  127|
|0-6 months  |EE             |PAKISTAN     |    11|           0|     12|  127|
|0-6 months  |EE             |PAKISTAN     |    11|           1|     13|  127|
|0-6 months  |EE             |PAKISTAN     |    12|           0|      9|  127|
|0-6 months  |EE             |PAKISTAN     |    12|           1|     17|  127|
|0-6 months  |GMS-Nepal      |NEPAL        |     1|           0|      0|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |     1|           1|      0|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |     2|           0|      0|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |     2|           1|      0|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |     3|           0|      0|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |     3|           1|      0|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |     4|           0|      0|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |     4|           1|      1|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |     5|           0|      0|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |     5|           1|      0|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |     6|           0|     25|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |     6|           1|     34|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |     7|           0|     40|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |     7|           1|     68|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |     8|           0|     39|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |     8|           1|     56|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |     9|           0|      0|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |     9|           1|      0|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |    10|           0|      0|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |    10|           1|      0|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |    11|           0|      0|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |    11|           1|      0|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |    12|           0|      0|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |    12|           1|      0|  263|
|0-6 months  |Guatemala BSC  |GUATEMALA    |     1|           0|      0|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |     1|           1|      0|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |     2|           0|      1|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |     2|           1|      0|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |     3|           0|      0|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |     3|           1|      0|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |     4|           0|      3|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |     4|           1|      0|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |     5|           0|      0|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |     5|           1|      0|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |     6|           0|      1|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |     6|           1|      1|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |     7|           0|      0|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |     7|           1|      2|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |     8|           0|      0|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |     8|           1|      1|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |     9|           0|      0|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |     9|           1|      0|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |    10|           0|      0|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |    10|           1|      0|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |    11|           0|      1|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |    11|           1|      0|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |    12|           0|      0|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |    12|           1|      0|   10|
|0-6 months  |JiVitA-3       |BANGLADESH   |     1|           0|    162| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH   |     1|           1|    271| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH   |     2|           0|    121| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH   |     2|           1|    240| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH   |     3|           0|    153| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH   |     3|           1|    266| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH   |     4|           0|    114| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH   |     4|           1|    209| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH   |     5|           0|     59| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH   |     5|           1|    185| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH   |     6|           0|     66| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH   |     6|           1|    165| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH   |     7|           0|     70| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH   |     7|           1|    177| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH   |     8|           0|     97| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH   |     8|           1|    253| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH   |     9|           0|    142| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH   |     9|           1|    378| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH   |    10|           0|    171| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH   |    10|           1|    366| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH   |    11|           0|    160| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH   |    11|           1|    369| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH   |    12|           0|    223| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH   |    12|           1|    317| 4734|
|0-6 months  |JiVitA-4       |BANGLADESH   |     1|           0|      2|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |     1|           1|      0|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |     2|           0|     19|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |     2|           1|     16|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |     3|           0|     25|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |     3|           1|     27|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |     4|           0|     35|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |     4|           1|     63|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |     5|           0|     30|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |     5|           1|     34|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |     6|           0|     24|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |     6|           1|     30|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |     7|           0|     61|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |     7|           1|     37|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |     8|           0|     17|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |     8|           1|     40|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |     9|           0|     14|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |     9|           1|     41|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |    10|           0|      8|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |    10|           1|     18|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |    11|           0|      6|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |    11|           1|      2|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |    12|           0|      3|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |    12|           1|      1|  553|
|0-6 months  |Keneba         |GAMBIA       |     1|           0|     13|  724|
|0-6 months  |Keneba         |GAMBIA       |     1|           1|     46|  724|
|0-6 months  |Keneba         |GAMBIA       |     2|           0|     12|  724|
|0-6 months  |Keneba         |GAMBIA       |     2|           1|     64|  724|
|0-6 months  |Keneba         |GAMBIA       |     3|           0|     12|  724|
|0-6 months  |Keneba         |GAMBIA       |     3|           1|     54|  724|
|0-6 months  |Keneba         |GAMBIA       |     4|           0|     23|  724|
|0-6 months  |Keneba         |GAMBIA       |     4|           1|     55|  724|
|0-6 months  |Keneba         |GAMBIA       |     5|           0|     15|  724|
|0-6 months  |Keneba         |GAMBIA       |     5|           1|     42|  724|
|0-6 months  |Keneba         |GAMBIA       |     6|           0|     17|  724|
|0-6 months  |Keneba         |GAMBIA       |     6|           1|     33|  724|
|0-6 months  |Keneba         |GAMBIA       |     7|           0|      9|  724|
|0-6 months  |Keneba         |GAMBIA       |     7|           1|     25|  724|
|0-6 months  |Keneba         |GAMBIA       |     8|           0|     12|  724|
|0-6 months  |Keneba         |GAMBIA       |     8|           1|     29|  724|
|0-6 months  |Keneba         |GAMBIA       |     9|           0|     13|  724|
|0-6 months  |Keneba         |GAMBIA       |     9|           1|     54|  724|
|0-6 months  |Keneba         |GAMBIA       |    10|           0|     13|  724|
|0-6 months  |Keneba         |GAMBIA       |    10|           1|     51|  724|
|0-6 months  |Keneba         |GAMBIA       |    11|           0|     15|  724|
|0-6 months  |Keneba         |GAMBIA       |    11|           1|     64|  724|
|0-6 months  |Keneba         |GAMBIA       |    12|           0|     11|  724|
|0-6 months  |Keneba         |GAMBIA       |    12|           1|     42|  724|
|0-6 months  |LCNI-5         |MALAWI       |     1|           0|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |     1|           1|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |     2|           0|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |     2|           1|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |     3|           0|      1|    4|
|0-6 months  |LCNI-5         |MALAWI       |     3|           1|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |     4|           0|      1|    4|
|0-6 months  |LCNI-5         |MALAWI       |     4|           1|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |     5|           0|      1|    4|
|0-6 months  |LCNI-5         |MALAWI       |     5|           1|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |     6|           0|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |     6|           1|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |     7|           0|      1|    4|
|0-6 months  |LCNI-5         |MALAWI       |     7|           1|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |     8|           0|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |     8|           1|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |     9|           0|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |     9|           1|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |    10|           0|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |    10|           1|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |    11|           0|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |    11|           1|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |    12|           0|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |    12|           1|      0|    4|
|0-6 months  |MAL-ED         |INDIA        |     1|           0|      5|   86|
|0-6 months  |MAL-ED         |INDIA        |     1|           1|      5|   86|
|0-6 months  |MAL-ED         |INDIA        |     2|           0|      2|   86|
|0-6 months  |MAL-ED         |INDIA        |     2|           1|      4|   86|
|0-6 months  |MAL-ED         |INDIA        |     3|           0|      2|   86|
|0-6 months  |MAL-ED         |INDIA        |     3|           1|      8|   86|
|0-6 months  |MAL-ED         |INDIA        |     4|           0|      2|   86|
|0-6 months  |MAL-ED         |INDIA        |     4|           1|      5|   86|
|0-6 months  |MAL-ED         |INDIA        |     5|           0|      0|   86|
|0-6 months  |MAL-ED         |INDIA        |     5|           1|      4|   86|
|0-6 months  |MAL-ED         |INDIA        |     6|           0|      5|   86|
|0-6 months  |MAL-ED         |INDIA        |     6|           1|      3|   86|
|0-6 months  |MAL-ED         |INDIA        |     7|           0|      3|   86|
|0-6 months  |MAL-ED         |INDIA        |     7|           1|      7|   86|
|0-6 months  |MAL-ED         |INDIA        |     8|           0|      1|   86|
|0-6 months  |MAL-ED         |INDIA        |     8|           1|      7|   86|
|0-6 months  |MAL-ED         |INDIA        |     9|           0|      1|   86|
|0-6 months  |MAL-ED         |INDIA        |     9|           1|      6|   86|
|0-6 months  |MAL-ED         |INDIA        |    10|           0|      3|   86|
|0-6 months  |MAL-ED         |INDIA        |    10|           1|      3|   86|
|0-6 months  |MAL-ED         |INDIA        |    11|           0|      2|   86|
|0-6 months  |MAL-ED         |INDIA        |    11|           1|      6|   86|
|0-6 months  |MAL-ED         |INDIA        |    12|           0|      1|   86|
|0-6 months  |MAL-ED         |INDIA        |    12|           1|      1|   86|
|0-6 months  |MAL-ED         |BANGLADESH   |     1|           0|      0|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |     1|           1|      3|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |     2|           0|      1|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |     2|           1|      6|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |     3|           0|      2|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |     3|           1|      7|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |     4|           0|      2|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |     4|           1|      4|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |     5|           0|      2|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |     5|           1|      4|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |     6|           0|      1|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |     6|           1|      0|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |     7|           0|      2|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |     7|           1|      6|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |     8|           0|      0|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |     8|           1|      3|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |     9|           0|      0|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |     9|           1|      8|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |    10|           0|      2|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |    10|           1|      3|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |    11|           0|      0|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |    11|           1|      2|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |    12|           0|      1|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |    12|           1|      4|   63|
|0-6 months  |MAL-ED         |PERU         |     1|           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |     1|           1|      1|   11|
|0-6 months  |MAL-ED         |PERU         |     2|           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |     2|           1|      1|   11|
|0-6 months  |MAL-ED         |PERU         |     3|           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |     3|           1|      0|   11|
|0-6 months  |MAL-ED         |PERU         |     4|           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |     4|           1|      0|   11|
|0-6 months  |MAL-ED         |PERU         |     5|           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |     5|           1|      2|   11|
|0-6 months  |MAL-ED         |PERU         |     6|           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |     6|           1|      0|   11|
|0-6 months  |MAL-ED         |PERU         |     7|           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |     7|           1|      1|   11|
|0-6 months  |MAL-ED         |PERU         |     8|           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |     8|           1|      1|   11|
|0-6 months  |MAL-ED         |PERU         |     9|           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |     9|           1|      0|   11|
|0-6 months  |MAL-ED         |PERU         |    10|           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |    10|           1|      1|   11|
|0-6 months  |MAL-ED         |PERU         |    11|           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |    11|           1|      4|   11|
|0-6 months  |MAL-ED         |PERU         |    12|           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |    12|           1|      0|   11|
|0-6 months  |MAL-ED         |NEPAL        |     1|           0|      1|   48|
|0-6 months  |MAL-ED         |NEPAL        |     1|           1|      4|   48|
|0-6 months  |MAL-ED         |NEPAL        |     2|           0|      0|   48|
|0-6 months  |MAL-ED         |NEPAL        |     2|           1|      2|   48|
|0-6 months  |MAL-ED         |NEPAL        |     3|           0|      0|   48|
|0-6 months  |MAL-ED         |NEPAL        |     3|           1|      4|   48|
|0-6 months  |MAL-ED         |NEPAL        |     4|           0|      0|   48|
|0-6 months  |MAL-ED         |NEPAL        |     4|           1|      6|   48|
|0-6 months  |MAL-ED         |NEPAL        |     5|           0|      2|   48|
|0-6 months  |MAL-ED         |NEPAL        |     5|           1|      5|   48|
|0-6 months  |MAL-ED         |NEPAL        |     6|           0|      2|   48|
|0-6 months  |MAL-ED         |NEPAL        |     6|           1|      3|   48|
|0-6 months  |MAL-ED         |NEPAL        |     7|           0|      2|   48|
|0-6 months  |MAL-ED         |NEPAL        |     7|           1|      2|   48|
|0-6 months  |MAL-ED         |NEPAL        |     8|           0|      2|   48|
|0-6 months  |MAL-ED         |NEPAL        |     8|           1|      5|   48|
|0-6 months  |MAL-ED         |NEPAL        |     9|           0|      0|   48|
|0-6 months  |MAL-ED         |NEPAL        |     9|           1|      3|   48|
|0-6 months  |MAL-ED         |NEPAL        |    10|           0|      0|   48|
|0-6 months  |MAL-ED         |NEPAL        |    10|           1|      2|   48|
|0-6 months  |MAL-ED         |NEPAL        |    11|           0|      0|   48|
|0-6 months  |MAL-ED         |NEPAL        |    11|           1|      1|   48|
|0-6 months  |MAL-ED         |NEPAL        |    12|           0|      0|   48|
|0-6 months  |MAL-ED         |NEPAL        |    12|           1|      2|   48|
|0-6 months  |MAL-ED         |BRAZIL       |     1|           0|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |     1|           1|      2|   15|
|0-6 months  |MAL-ED         |BRAZIL       |     2|           0|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |     2|           1|      2|   15|
|0-6 months  |MAL-ED         |BRAZIL       |     3|           0|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |     3|           1|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |     4|           0|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |     4|           1|      1|   15|
|0-6 months  |MAL-ED         |BRAZIL       |     5|           0|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |     5|           1|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |     6|           0|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |     6|           1|      1|   15|
|0-6 months  |MAL-ED         |BRAZIL       |     7|           0|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |     7|           1|      1|   15|
|0-6 months  |MAL-ED         |BRAZIL       |     8|           0|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |     8|           1|      1|   15|
|0-6 months  |MAL-ED         |BRAZIL       |     9|           0|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |     9|           1|      1|   15|
|0-6 months  |MAL-ED         |BRAZIL       |    10|           0|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |    10|           1|      3|   15|
|0-6 months  |MAL-ED         |BRAZIL       |    11|           0|      1|   15|
|0-6 months  |MAL-ED         |BRAZIL       |    11|           1|      1|   15|
|0-6 months  |MAL-ED         |BRAZIL       |    12|           0|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |    12|           1|      1|   15|
|0-6 months  |MAL-ED         |TANZANIA     |     1|           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |     1|           1|      3|   14|
|0-6 months  |MAL-ED         |TANZANIA     |     2|           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |     2|           1|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |     3|           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |     3|           1|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |     4|           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |     4|           1|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |     5|           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |     5|           1|      1|   14|
|0-6 months  |MAL-ED         |TANZANIA     |     6|           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |     6|           1|      3|   14|
|0-6 months  |MAL-ED         |TANZANIA     |     7|           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |     7|           1|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |     8|           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |     8|           1|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |     9|           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |     9|           1|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |    10|           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |    10|           1|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |    11|           0|      1|   14|
|0-6 months  |MAL-ED         |TANZANIA     |    11|           1|      2|   14|
|0-6 months  |MAL-ED         |TANZANIA     |    12|           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |    12|           1|      4|   14|
|0-6 months  |MAL-ED         |SOUTH AFRICA |     1|           0|      1|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |     1|           1|      3|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |     2|           0|      0|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |     2|           1|      4|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |     3|           0|      0|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |     3|           1|      1|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |     4|           0|      1|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |     4|           1|      1|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |     5|           0|      1|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |     5|           1|      0|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |     6|           0|      1|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |     6|           1|      1|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |     7|           0|      0|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |     7|           1|      4|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |     8|           0|      0|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |     8|           1|      0|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |     9|           0|      0|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |     9|           1|      0|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |    10|           0|      1|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |    10|           1|      5|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |    11|           0|      3|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |    11|           1|      3|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |    12|           0|      1|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |    12|           1|      5|   36|
|0-6 months  |NIH-Birth      |BANGLADESH   |     1|           0|     10|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |     1|           1|     19|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |     2|           0|      3|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |     2|           1|     16|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |     3|           0|     12|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |     3|           1|     13|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |     4|           0|      6|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |     4|           1|     16|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |     5|           0|      3|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |     5|           1|     17|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |     6|           0|      4|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |     6|           1|     14|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |     7|           0|      8|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |     7|           1|     14|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |     8|           0|      2|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |     8|           1|     13|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |     9|           0|      2|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |     9|           1|     12|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |    10|           0|      5|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |    10|           1|     10|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |    11|           0|      5|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |    11|           1|     11|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |    12|           0|      4|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |    12|           1|      4|  223|
|0-6 months  |PROBIT         |BELARUS      |     1|           0|     36| 4267|
|0-6 months  |PROBIT         |BELARUS      |     1|           1|    249| 4267|
|0-6 months  |PROBIT         |BELARUS      |     2|           0|     22| 4267|
|0-6 months  |PROBIT         |BELARUS      |     2|           1|    192| 4267|
|0-6 months  |PROBIT         |BELARUS      |     3|           0|     20| 4267|
|0-6 months  |PROBIT         |BELARUS      |     3|           1|    270| 4267|
|0-6 months  |PROBIT         |BELARUS      |     4|           0|     27| 4267|
|0-6 months  |PROBIT         |BELARUS      |     4|           1|    256| 4267|
|0-6 months  |PROBIT         |BELARUS      |     5|           0|     33| 4267|
|0-6 months  |PROBIT         |BELARUS      |     5|           1|    290| 4267|
|0-6 months  |PROBIT         |BELARUS      |     6|           0|     37| 4267|
|0-6 months  |PROBIT         |BELARUS      |     6|           1|    290| 4267|
|0-6 months  |PROBIT         |BELARUS      |     7|           0|     29| 4267|
|0-6 months  |PROBIT         |BELARUS      |     7|           1|    375| 4267|
|0-6 months  |PROBIT         |BELARUS      |     8|           0|     46| 4267|
|0-6 months  |PROBIT         |BELARUS      |     8|           1|    404| 4267|
|0-6 months  |PROBIT         |BELARUS      |     9|           0|     39| 4267|
|0-6 months  |PROBIT         |BELARUS      |     9|           1|    343| 4267|
|0-6 months  |PROBIT         |BELARUS      |    10|           0|     45| 4267|
|0-6 months  |PROBIT         |BELARUS      |    10|           1|    417| 4267|
|0-6 months  |PROBIT         |BELARUS      |    11|           0|     52| 4267|
|0-6 months  |PROBIT         |BELARUS      |    11|           1|    350| 4267|
|0-6 months  |PROBIT         |BELARUS      |    12|           0|     37| 4267|
|0-6 months  |PROBIT         |BELARUS      |    12|           1|    408| 4267|
|0-6 months  |PROVIDE        |BANGLADESH   |     1|           0|      2|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |     1|           1|      5|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |     2|           0|      2|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |     2|           1|      2|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |     3|           0|      1|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |     3|           1|      8|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |     4|           0|      2|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |     4|           1|     10|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |     5|           0|      1|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |     5|           1|      7|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |     6|           0|      6|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |     6|           1|     11|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |     7|           0|      6|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |     7|           1|     16|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |     8|           0|      9|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |     8|           1|     25|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |     9|           0|      4|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |     9|           1|     22|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |    10|           0|      3|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |    10|           1|     17|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |    11|           0|      2|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |    11|           1|     16|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |    12|           0|      2|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |    12|           1|      6|  185|
|0-6 months  |ResPak         |PAKISTAN     |     1|           0|      0|  113|
|0-6 months  |ResPak         |PAKISTAN     |     1|           1|      1|  113|
|0-6 months  |ResPak         |PAKISTAN     |     2|           0|      3|  113|
|0-6 months  |ResPak         |PAKISTAN     |     2|           1|      1|  113|
|0-6 months  |ResPak         |PAKISTAN     |     3|           0|      2|  113|
|0-6 months  |ResPak         |PAKISTAN     |     3|           1|      3|  113|
|0-6 months  |ResPak         |PAKISTAN     |     4|           0|      4|  113|
|0-6 months  |ResPak         |PAKISTAN     |     4|           1|      7|  113|
|0-6 months  |ResPak         |PAKISTAN     |     5|           0|      8|  113|
|0-6 months  |ResPak         |PAKISTAN     |     5|           1|      9|  113|
|0-6 months  |ResPak         |PAKISTAN     |     6|           0|      8|  113|
|0-6 months  |ResPak         |PAKISTAN     |     6|           1|      9|  113|
|0-6 months  |ResPak         |PAKISTAN     |     7|           0|      4|  113|
|0-6 months  |ResPak         |PAKISTAN     |     7|           1|     11|  113|
|0-6 months  |ResPak         |PAKISTAN     |     8|           0|      4|  113|
|0-6 months  |ResPak         |PAKISTAN     |     8|           1|     12|  113|
|0-6 months  |ResPak         |PAKISTAN     |     9|           0|      9|  113|
|0-6 months  |ResPak         |PAKISTAN     |     9|           1|      7|  113|
|0-6 months  |ResPak         |PAKISTAN     |    10|           0|      0|  113|
|0-6 months  |ResPak         |PAKISTAN     |    10|           1|      6|  113|
|0-6 months  |ResPak         |PAKISTAN     |    11|           0|      1|  113|
|0-6 months  |ResPak         |PAKISTAN     |    11|           1|      4|  113|
|0-6 months  |ResPak         |PAKISTAN     |    12|           0|      0|  113|
|0-6 months  |ResPak         |PAKISTAN     |    12|           1|      0|  113|
|0-6 months  |SAS-CompFeed   |INDIA        |     1|           0|     18|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |     1|           1|     13|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |     2|           0|     11|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |     2|           1|      6|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |     3|           0|     12|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |     3|           1|      6|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |     4|           0|     14|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |     4|           1|      7|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |     5|           0|     18|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |     5|           1|     16|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |     6|           0|      9|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |     6|           1|     25|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |     7|           0|     10|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |     7|           1|     13|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |     8|           0|     13|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |     8|           1|     17|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |     9|           0|     10|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |     9|           1|     25|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |    10|           0|     18|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |    10|           1|     24|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |    11|           0|     22|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |    11|           1|     10|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |    12|           0|     11|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |    12|           1|     13|  341|
|0-6 months  |SAS-FoodSuppl  |INDIA        |     1|           0|     12|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |     1|           1|      0|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |     2|           0|      9|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |     2|           1|      0|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |     3|           0|      9|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |     3|           1|      0|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |     4|           0|      7|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |     4|           1|      0|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |     5|           0|      4|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |     5|           1|      0|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |     6|           0|      8|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |     6|           1|      0|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |     7|           0|      4|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |     7|           1|      0|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |     8|           0|      0|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |     8|           1|      0|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |     9|           0|      2|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |     9|           1|      0|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |    10|           0|      6|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |    10|           1|      0|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |    11|           0|      2|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |    11|           1|      0|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |    12|           0|     15|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |    12|           1|      0|   78|
|0-6 months  |TanzaniaChild2 |TANZANIA     |     1|           0|     12|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |     1|           1|     14|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |     2|           0|      9|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |     2|           1|     22|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |     3|           0|      6|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |     3|           1|     16|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |     4|           0|      5|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |     4|           1|     10|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |     5|           0|      3|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |     5|           1|     13|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |     6|           0|      3|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |     6|           1|     18|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |     7|           0|      7|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |     7|           1|     23|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |     8|           0|      9|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |     8|           1|     32|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |     9|           0|      2|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |     9|           1|     23|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |    10|           0|     13|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |    10|           1|     30|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |    11|           0|     19|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |    11|           1|     15|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |    12|           0|     13|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |    12|           1|     23|  340|
|0-6 months  |Vellore Crypto |INDIA        |     1|           0|      7|  240|
|0-6 months  |Vellore Crypto |INDIA        |     1|           1|      9|  240|
|0-6 months  |Vellore Crypto |INDIA        |     2|           0|      5|  240|
|0-6 months  |Vellore Crypto |INDIA        |     2|           1|      6|  240|
|0-6 months  |Vellore Crypto |INDIA        |     3|           0|      8|  240|
|0-6 months  |Vellore Crypto |INDIA        |     3|           1|      9|  240|
|0-6 months  |Vellore Crypto |INDIA        |     4|           0|      2|  240|
|0-6 months  |Vellore Crypto |INDIA        |     4|           1|      9|  240|
|0-6 months  |Vellore Crypto |INDIA        |     5|           0|      4|  240|
|0-6 months  |Vellore Crypto |INDIA        |     5|           1|     10|  240|
|0-6 months  |Vellore Crypto |INDIA        |     6|           0|     12|  240|
|0-6 months  |Vellore Crypto |INDIA        |     6|           1|     11|  240|
|0-6 months  |Vellore Crypto |INDIA        |     7|           0|      9|  240|
|0-6 months  |Vellore Crypto |INDIA        |     7|           1|     18|  240|
|0-6 months  |Vellore Crypto |INDIA        |     8|           0|      9|  240|
|0-6 months  |Vellore Crypto |INDIA        |     8|           1|     17|  240|
|0-6 months  |Vellore Crypto |INDIA        |     9|           0|      4|  240|
|0-6 months  |Vellore Crypto |INDIA        |     9|           1|     12|  240|
|0-6 months  |Vellore Crypto |INDIA        |    10|           0|      9|  240|
|0-6 months  |Vellore Crypto |INDIA        |    10|           1|     15|  240|
|0-6 months  |Vellore Crypto |INDIA        |    11|           0|      6|  240|
|0-6 months  |Vellore Crypto |INDIA        |    11|           1|     16|  240|
|0-6 months  |Vellore Crypto |INDIA        |    12|           0|     12|  240|
|0-6 months  |Vellore Crypto |INDIA        |    12|           1|     21|  240|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |     1|           0|     61| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |     1|           1|    165| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |     2|           0|     47| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |     2|           1|    120| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |     3|           0|     57| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |     3|           1|    145| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |     4|           0|     31| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |     4|           1|    117| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |     5|           0|     36| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |     5|           1|    123| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |     6|           0|     44| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |     6|           1|    181| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |     7|           0|     60| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |     7|           1|    195| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |     8|           0|     64| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |     8|           1|    192| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |     9|           0|     60| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |     9|           1|    168| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |    10|           0|     48| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |    10|           1|    141| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |    11|           0|     59| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |    11|           1|    169| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |    12|           0|     69| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |    12|           1|    167| 2519|
|6-24 months |CMC-V-BCS-2002 |INDIA        |     1|           0|      2|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |     1|           1|      8|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |     2|           0|      1|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |     2|           1|      0|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |     3|           0|      3|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |     3|           1|      4|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |     4|           0|      9|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |     4|           1|      6|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |     5|           0|      1|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |     5|           1|      4|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |     6|           0|      6|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |     6|           1|      9|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |     7|           0|     11|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |     7|           1|      1|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |     8|           0|      3|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |     8|           1|      8|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |     9|           0|      4|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |     9|           1|      5|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |    10|           0|      3|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |    10|           1|      7|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |    11|           0|      6|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |    11|           1|     11|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |    12|           0|      5|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |    12|           1|      6|  123|
|6-24 months |CMIN           |BANGLADESH   |     1|           0|      4|  138|
|6-24 months |CMIN           |BANGLADESH   |     1|           1|     11|  138|
|6-24 months |CMIN           |BANGLADESH   |     2|           0|      6|  138|
|6-24 months |CMIN           |BANGLADESH   |     2|           1|     11|  138|
|6-24 months |CMIN           |BANGLADESH   |     3|           0|      2|  138|
|6-24 months |CMIN           |BANGLADESH   |     3|           1|      4|  138|
|6-24 months |CMIN           |BANGLADESH   |     4|           0|      2|  138|
|6-24 months |CMIN           |BANGLADESH   |     4|           1|      9|  138|
|6-24 months |CMIN           |BANGLADESH   |     5|           0|      4|  138|
|6-24 months |CMIN           |BANGLADESH   |     5|           1|      9|  138|
|6-24 months |CMIN           |BANGLADESH   |     6|           0|      2|  138|
|6-24 months |CMIN           |BANGLADESH   |     6|           1|      5|  138|
|6-24 months |CMIN           |BANGLADESH   |     7|           0|      0|  138|
|6-24 months |CMIN           |BANGLADESH   |     7|           1|      5|  138|
|6-24 months |CMIN           |BANGLADESH   |     8|           0|      4|  138|
|6-24 months |CMIN           |BANGLADESH   |     8|           1|      2|  138|
|6-24 months |CMIN           |BANGLADESH   |     9|           0|      6|  138|
|6-24 months |CMIN           |BANGLADESH   |     9|           1|      6|  138|
|6-24 months |CMIN           |BANGLADESH   |    10|           0|      5|  138|
|6-24 months |CMIN           |BANGLADESH   |    10|           1|      8|  138|
|6-24 months |CMIN           |BANGLADESH   |    11|           0|      0|  138|
|6-24 months |CMIN           |BANGLADESH   |    11|           1|      0|  138|
|6-24 months |CMIN           |BANGLADESH   |    12|           0|     20|  138|
|6-24 months |CMIN           |BANGLADESH   |    12|           1|     13|  138|
|6-24 months |CONTENT        |PERU         |     1|           0|      1|    3|
|6-24 months |CONTENT        |PERU         |     1|           1|      1|    3|
|6-24 months |CONTENT        |PERU         |     2|           0|      0|    3|
|6-24 months |CONTENT        |PERU         |     2|           1|      0|    3|
|6-24 months |CONTENT        |PERU         |     3|           0|      0|    3|
|6-24 months |CONTENT        |PERU         |     3|           1|      0|    3|
|6-24 months |CONTENT        |PERU         |     4|           0|      0|    3|
|6-24 months |CONTENT        |PERU         |     4|           1|      0|    3|
|6-24 months |CONTENT        |PERU         |     5|           0|      0|    3|
|6-24 months |CONTENT        |PERU         |     5|           1|      0|    3|
|6-24 months |CONTENT        |PERU         |     6|           0|      0|    3|
|6-24 months |CONTENT        |PERU         |     6|           1|      1|    3|
|6-24 months |CONTENT        |PERU         |     7|           0|      0|    3|
|6-24 months |CONTENT        |PERU         |     7|           1|      0|    3|
|6-24 months |CONTENT        |PERU         |     8|           0|      0|    3|
|6-24 months |CONTENT        |PERU         |     8|           1|      0|    3|
|6-24 months |CONTENT        |PERU         |     9|           0|      0|    3|
|6-24 months |CONTENT        |PERU         |     9|           1|      0|    3|
|6-24 months |CONTENT        |PERU         |    10|           0|      0|    3|
|6-24 months |CONTENT        |PERU         |    10|           1|      0|    3|
|6-24 months |CONTENT        |PERU         |    11|           0|      0|    3|
|6-24 months |CONTENT        |PERU         |    11|           1|      0|    3|
|6-24 months |CONTENT        |PERU         |    12|           0|      0|    3|
|6-24 months |CONTENT        |PERU         |    12|           1|      0|    3|
|6-24 months |EE             |PAKISTAN     |     1|           0|     26|  196|
|6-24 months |EE             |PAKISTAN     |     1|           1|     16|  196|
|6-24 months |EE             |PAKISTAN     |     2|           0|     16|  196|
|6-24 months |EE             |PAKISTAN     |     2|           1|     15|  196|
|6-24 months |EE             |PAKISTAN     |     3|           0|     15|  196|
|6-24 months |EE             |PAKISTAN     |     3|           1|     13|  196|
|6-24 months |EE             |PAKISTAN     |     4|           0|      8|  196|
|6-24 months |EE             |PAKISTAN     |     4|           1|      3|  196|
|6-24 months |EE             |PAKISTAN     |     5|           0|      0|  196|
|6-24 months |EE             |PAKISTAN     |     5|           1|      0|  196|
|6-24 months |EE             |PAKISTAN     |     6|           0|      0|  196|
|6-24 months |EE             |PAKISTAN     |     6|           1|      0|  196|
|6-24 months |EE             |PAKISTAN     |     7|           0|      0|  196|
|6-24 months |EE             |PAKISTAN     |     7|           1|      0|  196|
|6-24 months |EE             |PAKISTAN     |     8|           0|      0|  196|
|6-24 months |EE             |PAKISTAN     |     8|           1|      0|  196|
|6-24 months |EE             |PAKISTAN     |     9|           0|      0|  196|
|6-24 months |EE             |PAKISTAN     |     9|           1|      0|  196|
|6-24 months |EE             |PAKISTAN     |    10|           0|      0|  196|
|6-24 months |EE             |PAKISTAN     |    10|           1|      2|  196|
|6-24 months |EE             |PAKISTAN     |    11|           0|     22|  196|
|6-24 months |EE             |PAKISTAN     |    11|           1|     20|  196|
|6-24 months |EE             |PAKISTAN     |    12|           0|     18|  196|
|6-24 months |EE             |PAKISTAN     |    12|           1|     22|  196|
|6-24 months |GMS-Nepal      |NEPAL        |     1|           0|      0|  380|
|6-24 months |GMS-Nepal      |NEPAL        |     1|           1|      0|  380|
|6-24 months |GMS-Nepal      |NEPAL        |     2|           0|      0|  380|
|6-24 months |GMS-Nepal      |NEPAL        |     2|           1|      0|  380|
|6-24 months |GMS-Nepal      |NEPAL        |     3|           0|      0|  380|
|6-24 months |GMS-Nepal      |NEPAL        |     3|           1|      0|  380|
|6-24 months |GMS-Nepal      |NEPAL        |     4|           0|      1|  380|
|6-24 months |GMS-Nepal      |NEPAL        |     4|           1|      0|  380|
|6-24 months |GMS-Nepal      |NEPAL        |     5|           0|      0|  380|
|6-24 months |GMS-Nepal      |NEPAL        |     5|           1|      0|  380|
|6-24 months |GMS-Nepal      |NEPAL        |     6|           0|     47|  380|
|6-24 months |GMS-Nepal      |NEPAL        |     6|           1|     27|  380|
|6-24 months |GMS-Nepal      |NEPAL        |     7|           0|     67|  380|
|6-24 months |GMS-Nepal      |NEPAL        |     7|           1|     65|  380|
|6-24 months |GMS-Nepal      |NEPAL        |     8|           0|     77|  380|
|6-24 months |GMS-Nepal      |NEPAL        |     8|           1|     96|  380|
|6-24 months |GMS-Nepal      |NEPAL        |     9|           0|      0|  380|
|6-24 months |GMS-Nepal      |NEPAL        |     9|           1|      0|  380|
|6-24 months |GMS-Nepal      |NEPAL        |    10|           0|      0|  380|
|6-24 months |GMS-Nepal      |NEPAL        |    10|           1|      0|  380|
|6-24 months |GMS-Nepal      |NEPAL        |    11|           0|      0|  380|
|6-24 months |GMS-Nepal      |NEPAL        |    11|           1|      0|  380|
|6-24 months |GMS-Nepal      |NEPAL        |    12|           0|      0|  380|
|6-24 months |GMS-Nepal      |NEPAL        |    12|           1|      0|  380|
|6-24 months |Guatemala BSC  |GUATEMALA    |     1|           0|      1|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |     1|           1|      1|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |     2|           0|      0|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |     2|           1|      1|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |     3|           0|      2|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |     3|           1|      2|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |     4|           0|      3|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |     4|           1|      1|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |     5|           0|      0|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |     5|           1|      3|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |     6|           0|      1|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |     6|           1|      1|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |     7|           0|      0|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |     7|           1|      1|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |     8|           0|      2|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |     8|           1|      1|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |     9|           0|      3|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |     9|           1|      2|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |    10|           0|      1|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |    10|           1|      0|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |    11|           0|      2|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |    11|           1|      0|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |    12|           0|      0|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |    12|           1|      0|   28|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |     1|           0|     55|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |     1|           1|      2|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |     2|           0|     44|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |     2|           1|      5|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |     3|           0|     49|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |     3|           1|      1|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |     4|           0|     41|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |     4|           1|      2|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |     5|           0|     61|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |     5|           1|      5|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |     6|           0|     89|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |     6|           1|      7|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |     7|           0|     94|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |     7|           1|      5|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |     8|           0|     97|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |     8|           1|      3|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |     9|           0|     73|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |     9|           1|      3|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |    10|           0|     74|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |    10|           1|      2|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |    11|           0|     59|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |    11|           1|      1|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |    12|           0|     48|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |    12|           1|      0|  820|
|6-24 months |JiVitA-3       |BANGLADESH   |     1|           0|    215| 2837|
|6-24 months |JiVitA-3       |BANGLADESH   |     1|           1|      0| 2837|
|6-24 months |JiVitA-3       |BANGLADESH   |     2|           0|    170| 2837|
|6-24 months |JiVitA-3       |BANGLADESH   |     2|           1|      0| 2837|
|6-24 months |JiVitA-3       |BANGLADESH   |     3|           0|    193| 2837|
|6-24 months |JiVitA-3       |BANGLADESH   |     3|           1|      0| 2837|
|6-24 months |JiVitA-3       |BANGLADESH   |     4|           0|    192| 2837|
|6-24 months |JiVitA-3       |BANGLADESH   |     4|           1|      0| 2837|
|6-24 months |JiVitA-3       |BANGLADESH   |     5|           0|    233| 2837|
|6-24 months |JiVitA-3       |BANGLADESH   |     5|           1|      0| 2837|
|6-24 months |JiVitA-3       |BANGLADESH   |     6|           0|    229| 2837|
|6-24 months |JiVitA-3       |BANGLADESH   |     6|           1|      0| 2837|
|6-24 months |JiVitA-3       |BANGLADESH   |     7|           0|    241| 2837|
|6-24 months |JiVitA-3       |BANGLADESH   |     7|           1|      0| 2837|
|6-24 months |JiVitA-3       |BANGLADESH   |     8|           0|    269| 2837|
|6-24 months |JiVitA-3       |BANGLADESH   |     8|           1|      0| 2837|
|6-24 months |JiVitA-3       |BANGLADESH   |     9|           0|    266| 2837|
|6-24 months |JiVitA-3       |BANGLADESH   |     9|           1|      0| 2837|
|6-24 months |JiVitA-3       |BANGLADESH   |    10|           0|    291| 2837|
|6-24 months |JiVitA-3       |BANGLADESH   |    10|           1|      0| 2837|
|6-24 months |JiVitA-3       |BANGLADESH   |    11|           0|    286| 2837|
|6-24 months |JiVitA-3       |BANGLADESH   |    11|           1|      0| 2837|
|6-24 months |JiVitA-3       |BANGLADESH   |    12|           0|    252| 2837|
|6-24 months |JiVitA-3       |BANGLADESH   |    12|           1|      0| 2837|
|6-24 months |JiVitA-4       |BANGLADESH   |     1|           0|      8| 1516|
|6-24 months |JiVitA-4       |BANGLADESH   |     1|           1|      2| 1516|
|6-24 months |JiVitA-4       |BANGLADESH   |     2|           0|     77| 1516|
|6-24 months |JiVitA-4       |BANGLADESH   |     2|           1|     18| 1516|
|6-24 months |JiVitA-4       |BANGLADESH   |     3|           0|    110| 1516|
|6-24 months |JiVitA-4       |BANGLADESH   |     3|           1|     23| 1516|
|6-24 months |JiVitA-4       |BANGLADESH   |     4|           0|    245| 1516|
|6-24 months |JiVitA-4       |BANGLADESH   |     4|           1|     35| 1516|
|6-24 months |JiVitA-4       |BANGLADESH   |     5|           0|    179| 1516|
|6-24 months |JiVitA-4       |BANGLADESH   |     5|           1|     27| 1516|
|6-24 months |JiVitA-4       |BANGLADESH   |     6|           0|    107| 1516|
|6-24 months |JiVitA-4       |BANGLADESH   |     6|           1|     28| 1516|
|6-24 months |JiVitA-4       |BANGLADESH   |     7|           0|    219| 1516|
|6-24 months |JiVitA-4       |BANGLADESH   |     7|           1|     44| 1516|
|6-24 months |JiVitA-4       |BANGLADESH   |     8|           0|    112| 1516|
|6-24 months |JiVitA-4       |BANGLADESH   |     8|           1|     23| 1516|
|6-24 months |JiVitA-4       |BANGLADESH   |     9|           0|    103| 1516|
|6-24 months |JiVitA-4       |BANGLADESH   |     9|           1|     14| 1516|
|6-24 months |JiVitA-4       |BANGLADESH   |    10|           0|     76| 1516|
|6-24 months |JiVitA-4       |BANGLADESH   |    10|           1|      8| 1516|
|6-24 months |JiVitA-4       |BANGLADESH   |    11|           0|     38| 1516|
|6-24 months |JiVitA-4       |BANGLADESH   |    11|           1|      3| 1516|
|6-24 months |JiVitA-4       |BANGLADESH   |    12|           0|     16| 1516|
|6-24 months |JiVitA-4       |BANGLADESH   |    12|           1|      1| 1516|
|6-24 months |Keneba         |GAMBIA       |     1|           0|     52| 1104|
|6-24 months |Keneba         |GAMBIA       |     1|           1|     51| 1104|
|6-24 months |Keneba         |GAMBIA       |     2|           0|     60| 1104|
|6-24 months |Keneba         |GAMBIA       |     2|           1|     76| 1104|
|6-24 months |Keneba         |GAMBIA       |     3|           0|     40| 1104|
|6-24 months |Keneba         |GAMBIA       |     3|           1|     57| 1104|
|6-24 months |Keneba         |GAMBIA       |     4|           0|     50| 1104|
|6-24 months |Keneba         |GAMBIA       |     4|           1|     53| 1104|
|6-24 months |Keneba         |GAMBIA       |     5|           0|     32| 1104|
|6-24 months |Keneba         |GAMBIA       |     5|           1|     35| 1104|
|6-24 months |Keneba         |GAMBIA       |     6|           0|     21| 1104|
|6-24 months |Keneba         |GAMBIA       |     6|           1|     23| 1104|
|6-24 months |Keneba         |GAMBIA       |     7|           0|     35| 1104|
|6-24 months |Keneba         |GAMBIA       |     7|           1|     39| 1104|
|6-24 months |Keneba         |GAMBIA       |     8|           0|     45| 1104|
|6-24 months |Keneba         |GAMBIA       |     8|           1|     28| 1104|
|6-24 months |Keneba         |GAMBIA       |     9|           0|     43| 1104|
|6-24 months |Keneba         |GAMBIA       |     9|           1|     48| 1104|
|6-24 months |Keneba         |GAMBIA       |    10|           0|     52| 1104|
|6-24 months |Keneba         |GAMBIA       |    10|           1|     46| 1104|
|6-24 months |Keneba         |GAMBIA       |    11|           0|     69| 1104|
|6-24 months |Keneba         |GAMBIA       |    11|           1|     64| 1104|
|6-24 months |Keneba         |GAMBIA       |    12|           0|     48| 1104|
|6-24 months |Keneba         |GAMBIA       |    12|           1|     37| 1104|
|6-24 months |LCNI-5         |MALAWI       |     1|           0|      5|   75|
|6-24 months |LCNI-5         |MALAWI       |     1|           1|      1|   75|
|6-24 months |LCNI-5         |MALAWI       |     2|           0|      9|   75|
|6-24 months |LCNI-5         |MALAWI       |     2|           1|      3|   75|
|6-24 months |LCNI-5         |MALAWI       |     3|           0|     11|   75|
|6-24 months |LCNI-5         |MALAWI       |     3|           1|      2|   75|
|6-24 months |LCNI-5         |MALAWI       |     4|           0|      5|   75|
|6-24 months |LCNI-5         |MALAWI       |     4|           1|      1|   75|
|6-24 months |LCNI-5         |MALAWI       |     5|           0|      5|   75|
|6-24 months |LCNI-5         |MALAWI       |     5|           1|      1|   75|
|6-24 months |LCNI-5         |MALAWI       |     6|           0|     12|   75|
|6-24 months |LCNI-5         |MALAWI       |     6|           1|      1|   75|
|6-24 months |LCNI-5         |MALAWI       |     7|           0|      3|   75|
|6-24 months |LCNI-5         |MALAWI       |     7|           1|      2|   75|
|6-24 months |LCNI-5         |MALAWI       |     8|           0|      3|   75|
|6-24 months |LCNI-5         |MALAWI       |     8|           1|      0|   75|
|6-24 months |LCNI-5         |MALAWI       |     9|           0|      2|   75|
|6-24 months |LCNI-5         |MALAWI       |     9|           1|      1|   75|
|6-24 months |LCNI-5         |MALAWI       |    10|           0|      0|   75|
|6-24 months |LCNI-5         |MALAWI       |    10|           1|      0|   75|
|6-24 months |LCNI-5         |MALAWI       |    11|           0|      5|   75|
|6-24 months |LCNI-5         |MALAWI       |    11|           1|      1|   75|
|6-24 months |LCNI-5         |MALAWI       |    12|           0|      2|   75|
|6-24 months |LCNI-5         |MALAWI       |    12|           1|      0|   75|
|6-24 months |MAL-ED         |INDIA        |     1|           0|      2|   95|
|6-24 months |MAL-ED         |INDIA        |     1|           1|      3|   95|
|6-24 months |MAL-ED         |INDIA        |     2|           0|      1|   95|
|6-24 months |MAL-ED         |INDIA        |     2|           1|      0|   95|
|6-24 months |MAL-ED         |INDIA        |     3|           0|      3|   95|
|6-24 months |MAL-ED         |INDIA        |     3|           1|      5|   95|
|6-24 months |MAL-ED         |INDIA        |     4|           0|      4|   95|
|6-24 months |MAL-ED         |INDIA        |     4|           1|      1|   95|
|6-24 months |MAL-ED         |INDIA        |     5|           0|      2|   95|
|6-24 months |MAL-ED         |INDIA        |     5|           1|      2|   95|
|6-24 months |MAL-ED         |INDIA        |     6|           0|      2|   95|
|6-24 months |MAL-ED         |INDIA        |     6|           1|      5|   95|
|6-24 months |MAL-ED         |INDIA        |     7|           0|      6|   95|
|6-24 months |MAL-ED         |INDIA        |     7|           1|      5|   95|
|6-24 months |MAL-ED         |INDIA        |     8|           0|      6|   95|
|6-24 months |MAL-ED         |INDIA        |     8|           1|     10|   95|
|6-24 months |MAL-ED         |INDIA        |     9|           0|      5|   95|
|6-24 months |MAL-ED         |INDIA        |     9|           1|      2|   95|
|6-24 months |MAL-ED         |INDIA        |    10|           0|      5|   95|
|6-24 months |MAL-ED         |INDIA        |    10|           1|      7|   95|
|6-24 months |MAL-ED         |INDIA        |    11|           0|      8|   95|
|6-24 months |MAL-ED         |INDIA        |    11|           1|      8|   95|
|6-24 months |MAL-ED         |INDIA        |    12|           0|      0|   95|
|6-24 months |MAL-ED         |INDIA        |    12|           1|      3|   95|
|6-24 months |MAL-ED         |BANGLADESH   |     1|           0|      1|   61|
|6-24 months |MAL-ED         |BANGLADESH   |     1|           1|      1|   61|
|6-24 months |MAL-ED         |BANGLADESH   |     2|           0|      5|   61|
|6-24 months |MAL-ED         |BANGLADESH   |     2|           1|      4|   61|
|6-24 months |MAL-ED         |BANGLADESH   |     3|           0|      6|   61|
|6-24 months |MAL-ED         |BANGLADESH   |     3|           1|      9|   61|
|6-24 months |MAL-ED         |BANGLADESH   |     4|           0|      2|   61|
|6-24 months |MAL-ED         |BANGLADESH   |     4|           1|      1|   61|
|6-24 months |MAL-ED         |BANGLADESH   |     5|           0|      4|   61|
|6-24 months |MAL-ED         |BANGLADESH   |     5|           1|      2|   61|
|6-24 months |MAL-ED         |BANGLADESH   |     6|           0|      0|   61|
|6-24 months |MAL-ED         |BANGLADESH   |     6|           1|      1|   61|
|6-24 months |MAL-ED         |BANGLADESH   |     7|           0|      2|   61|
|6-24 months |MAL-ED         |BANGLADESH   |     7|           1|      3|   61|
|6-24 months |MAL-ED         |BANGLADESH   |     8|           0|      1|   61|
|6-24 months |MAL-ED         |BANGLADESH   |     8|           1|      0|   61|
|6-24 months |MAL-ED         |BANGLADESH   |     9|           0|      5|   61|
|6-24 months |MAL-ED         |BANGLADESH   |     9|           1|      8|   61|
|6-24 months |MAL-ED         |BANGLADESH   |    10|           0|      1|   61|
|6-24 months |MAL-ED         |BANGLADESH   |    10|           1|      0|   61|
|6-24 months |MAL-ED         |BANGLADESH   |    11|           0|      2|   61|
|6-24 months |MAL-ED         |BANGLADESH   |    11|           1|      0|   61|
|6-24 months |MAL-ED         |BANGLADESH   |    12|           0|      2|   61|
|6-24 months |MAL-ED         |BANGLADESH   |    12|           1|      1|   61|
|6-24 months |MAL-ED         |PERU         |     1|           0|      2|   24|
|6-24 months |MAL-ED         |PERU         |     1|           1|      5|   24|
|6-24 months |MAL-ED         |PERU         |     2|           0|      0|   24|
|6-24 months |MAL-ED         |PERU         |     2|           1|      2|   24|
|6-24 months |MAL-ED         |PERU         |     3|           0|      0|   24|
|6-24 months |MAL-ED         |PERU         |     3|           1|      3|   24|
|6-24 months |MAL-ED         |PERU         |     4|           0|      0|   24|
|6-24 months |MAL-ED         |PERU         |     4|           1|      1|   24|
|6-24 months |MAL-ED         |PERU         |     5|           0|      1|   24|
|6-24 months |MAL-ED         |PERU         |     5|           1|      1|   24|
|6-24 months |MAL-ED         |PERU         |     6|           0|      1|   24|
|6-24 months |MAL-ED         |PERU         |     6|           1|      1|   24|
|6-24 months |MAL-ED         |PERU         |     7|           0|      0|   24|
|6-24 months |MAL-ED         |PERU         |     7|           1|      0|   24|
|6-24 months |MAL-ED         |PERU         |     8|           0|      1|   24|
|6-24 months |MAL-ED         |PERU         |     8|           1|      0|   24|
|6-24 months |MAL-ED         |PERU         |     9|           0|      1|   24|
|6-24 months |MAL-ED         |PERU         |     9|           1|      1|   24|
|6-24 months |MAL-ED         |PERU         |    10|           0|      0|   24|
|6-24 months |MAL-ED         |PERU         |    10|           1|      0|   24|
|6-24 months |MAL-ED         |PERU         |    11|           0|      0|   24|
|6-24 months |MAL-ED         |PERU         |    11|           1|      4|   24|
|6-24 months |MAL-ED         |PERU         |    12|           0|      0|   24|
|6-24 months |MAL-ED         |PERU         |    12|           1|      0|   24|
|6-24 months |MAL-ED         |NEPAL        |     1|           0|      0|   50|
|6-24 months |MAL-ED         |NEPAL        |     1|           1|      5|   50|
|6-24 months |MAL-ED         |NEPAL        |     2|           0|      0|   50|
|6-24 months |MAL-ED         |NEPAL        |     2|           1|      5|   50|
|6-24 months |MAL-ED         |NEPAL        |     3|           0|      1|   50|
|6-24 months |MAL-ED         |NEPAL        |     3|           1|      0|   50|
|6-24 months |MAL-ED         |NEPAL        |     4|           0|      2|   50|
|6-24 months |MAL-ED         |NEPAL        |     4|           1|      4|   50|
|6-24 months |MAL-ED         |NEPAL        |     5|           0|      1|   50|
|6-24 months |MAL-ED         |NEPAL        |     5|           1|      7|   50|
|6-24 months |MAL-ED         |NEPAL        |     6|           0|      3|   50|
|6-24 months |MAL-ED         |NEPAL        |     6|           1|      4|   50|
|6-24 months |MAL-ED         |NEPAL        |     7|           0|      1|   50|
|6-24 months |MAL-ED         |NEPAL        |     7|           1|      5|   50|
|6-24 months |MAL-ED         |NEPAL        |     8|           0|      1|   50|
|6-24 months |MAL-ED         |NEPAL        |     8|           1|      1|   50|
|6-24 months |MAL-ED         |NEPAL        |     9|           0|      0|   50|
|6-24 months |MAL-ED         |NEPAL        |     9|           1|      0|   50|
|6-24 months |MAL-ED         |NEPAL        |    10|           0|      1|   50|
|6-24 months |MAL-ED         |NEPAL        |    10|           1|      1|   50|
|6-24 months |MAL-ED         |NEPAL        |    11|           0|      1|   50|
|6-24 months |MAL-ED         |NEPAL        |    11|           1|      4|   50|
|6-24 months |MAL-ED         |NEPAL        |    12|           0|      0|   50|
|6-24 months |MAL-ED         |NEPAL        |    12|           1|      3|   50|
|6-24 months |MAL-ED         |BRAZIL       |     1|           0|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |     1|           1|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |     2|           0|      1|    9|
|6-24 months |MAL-ED         |BRAZIL       |     2|           1|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |     3|           0|      1|    9|
|6-24 months |MAL-ED         |BRAZIL       |     3|           1|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |     4|           0|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |     4|           1|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |     5|           0|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |     5|           1|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |     6|           0|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |     6|           1|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |     7|           0|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |     7|           1|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |     8|           0|      2|    9|
|6-24 months |MAL-ED         |BRAZIL       |     8|           1|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |     9|           0|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |     9|           1|      2|    9|
|6-24 months |MAL-ED         |BRAZIL       |    10|           0|      1|    9|
|6-24 months |MAL-ED         |BRAZIL       |    10|           1|      1|    9|
|6-24 months |MAL-ED         |BRAZIL       |    11|           0|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |    11|           1|      1|    9|
|6-24 months |MAL-ED         |BRAZIL       |    12|           0|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |    12|           1|      0|    9|
|6-24 months |MAL-ED         |TANZANIA     |     1|           0|      1|   37|
|6-24 months |MAL-ED         |TANZANIA     |     1|           1|      9|   37|
|6-24 months |MAL-ED         |TANZANIA     |     2|           0|      1|   37|
|6-24 months |MAL-ED         |TANZANIA     |     2|           1|      6|   37|
|6-24 months |MAL-ED         |TANZANIA     |     3|           0|      0|   37|
|6-24 months |MAL-ED         |TANZANIA     |     3|           1|      2|   37|
|6-24 months |MAL-ED         |TANZANIA     |     4|           0|      1|   37|
|6-24 months |MAL-ED         |TANZANIA     |     4|           1|      1|   37|
|6-24 months |MAL-ED         |TANZANIA     |     5|           0|      0|   37|
|6-24 months |MAL-ED         |TANZANIA     |     5|           1|      1|   37|
|6-24 months |MAL-ED         |TANZANIA     |     6|           0|      0|   37|
|6-24 months |MAL-ED         |TANZANIA     |     6|           1|      4|   37|
|6-24 months |MAL-ED         |TANZANIA     |     7|           0|      0|   37|
|6-24 months |MAL-ED         |TANZANIA     |     7|           1|      0|   37|
|6-24 months |MAL-ED         |TANZANIA     |     8|           0|      2|   37|
|6-24 months |MAL-ED         |TANZANIA     |     8|           1|      1|   37|
|6-24 months |MAL-ED         |TANZANIA     |     9|           0|      0|   37|
|6-24 months |MAL-ED         |TANZANIA     |     9|           1|      0|   37|
|6-24 months |MAL-ED         |TANZANIA     |    10|           0|      0|   37|
|6-24 months |MAL-ED         |TANZANIA     |    10|           1|      0|   37|
|6-24 months |MAL-ED         |TANZANIA     |    11|           0|      2|   37|
|6-24 months |MAL-ED         |TANZANIA     |    11|           1|      3|   37|
|6-24 months |MAL-ED         |TANZANIA     |    12|           0|      1|   37|
|6-24 months |MAL-ED         |TANZANIA     |    12|           1|      2|   37|
|6-24 months |MAL-ED         |SOUTH AFRICA |     1|           0|      3|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |     1|           1|     13|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |     2|           0|      0|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |     2|           1|      2|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |     3|           0|      0|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |     3|           1|      1|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |     4|           0|      0|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |     4|           1|      2|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |     5|           0|      0|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |     5|           1|      2|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |     6|           0|      0|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |     6|           1|      3|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |     7|           0|      0|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |     7|           1|      1|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |     8|           0|      0|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |     8|           1|      0|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |     9|           0|      1|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |     9|           1|      2|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |    10|           0|      2|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |    10|           1|      6|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |    11|           0|      1|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |    11|           1|      4|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |    12|           0|      2|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |    12|           1|      6|   51|
|6-24 months |NIH-Birth      |BANGLADESH   |     1|           0|     17|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |     1|           1|      8|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |     2|           0|     14|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |     2|           1|      5|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |     3|           0|     16|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |     3|           1|      8|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |     4|           0|     10|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |     4|           1|      4|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |     5|           0|      9|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |     5|           1|      4|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |     6|           0|      6|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |     6|           1|      6|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |     7|           0|     13|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |     7|           1|      4|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |     8|           0|     11|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |     8|           1|      5|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |     9|           0|      7|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |     9|           1|      3|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |    10|           0|     10|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |    10|           1|      4|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |    11|           0|     11|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |    11|           1|      6|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |    12|           0|     14|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |    12|           1|      3|  198|
|6-24 months |PROBIT         |BELARUS      |     1|           0|      8|  141|
|6-24 months |PROBIT         |BELARUS      |     1|           1|      1|  141|
|6-24 months |PROBIT         |BELARUS      |     2|           0|      2|  141|
|6-24 months |PROBIT         |BELARUS      |     2|           1|      5|  141|
|6-24 months |PROBIT         |BELARUS      |     3|           0|      6|  141|
|6-24 months |PROBIT         |BELARUS      |     3|           1|      3|  141|
|6-24 months |PROBIT         |BELARUS      |     4|           0|      4|  141|
|6-24 months |PROBIT         |BELARUS      |     4|           1|      3|  141|
|6-24 months |PROBIT         |BELARUS      |     5|           0|      7|  141|
|6-24 months |PROBIT         |BELARUS      |     5|           1|      1|  141|
|6-24 months |PROBIT         |BELARUS      |     6|           0|      5|  141|
|6-24 months |PROBIT         |BELARUS      |     6|           1|      1|  141|
|6-24 months |PROBIT         |BELARUS      |     7|           0|      6|  141|
|6-24 months |PROBIT         |BELARUS      |     7|           1|      2|  141|
|6-24 months |PROBIT         |BELARUS      |     8|           0|      6|  141|
|6-24 months |PROBIT         |BELARUS      |     8|           1|      2|  141|
|6-24 months |PROBIT         |BELARUS      |     9|           0|     10|  141|
|6-24 months |PROBIT         |BELARUS      |     9|           1|      4|  141|
|6-24 months |PROBIT         |BELARUS      |    10|           0|     14|  141|
|6-24 months |PROBIT         |BELARUS      |    10|           1|     10|  141|
|6-24 months |PROBIT         |BELARUS      |    11|           0|     17|  141|
|6-24 months |PROBIT         |BELARUS      |    11|           1|      2|  141|
|6-24 months |PROBIT         |BELARUS      |    12|           0|     18|  141|
|6-24 months |PROBIT         |BELARUS      |    12|           1|      4|  141|
|6-24 months |PROVIDE        |BANGLADESH   |     1|           0|      6|  123|
|6-24 months |PROVIDE        |BANGLADESH   |     1|           1|      3|  123|
|6-24 months |PROVIDE        |BANGLADESH   |     2|           0|      6|  123|
|6-24 months |PROVIDE        |BANGLADESH   |     2|           1|      2|  123|
|6-24 months |PROVIDE        |BANGLADESH   |     3|           0|      4|  123|
|6-24 months |PROVIDE        |BANGLADESH   |     3|           1|      1|  123|
|6-24 months |PROVIDE        |BANGLADESH   |     4|           0|      6|  123|
|6-24 months |PROVIDE        |BANGLADESH   |     4|           1|      4|  123|
|6-24 months |PROVIDE        |BANGLADESH   |     5|           0|      6|  123|
|6-24 months |PROVIDE        |BANGLADESH   |     5|           1|      3|  123|
|6-24 months |PROVIDE        |BANGLADESH   |     6|           0|      6|  123|
|6-24 months |PROVIDE        |BANGLADESH   |     6|           1|      0|  123|
|6-24 months |PROVIDE        |BANGLADESH   |     7|           0|     13|  123|
|6-24 months |PROVIDE        |BANGLADESH   |     7|           1|      5|  123|
|6-24 months |PROVIDE        |BANGLADESH   |     8|           0|     10|  123|
|6-24 months |PROVIDE        |BANGLADESH   |     8|           1|      5|  123|
|6-24 months |PROVIDE        |BANGLADESH   |     9|           0|     12|  123|
|6-24 months |PROVIDE        |BANGLADESH   |     9|           1|      7|  123|
|6-24 months |PROVIDE        |BANGLADESH   |    10|           0|      8|  123|
|6-24 months |PROVIDE        |BANGLADESH   |    10|           1|      1|  123|
|6-24 months |PROVIDE        |BANGLADESH   |    11|           0|     11|  123|
|6-24 months |PROVIDE        |BANGLADESH   |    11|           1|      2|  123|
|6-24 months |PROVIDE        |BANGLADESH   |    12|           0|      1|  123|
|6-24 months |PROVIDE        |BANGLADESH   |    12|           1|      1|  123|
|6-24 months |ResPak         |PAKISTAN     |     1|           0|      0|   91|
|6-24 months |ResPak         |PAKISTAN     |     1|           1|      1|   91|
|6-24 months |ResPak         |PAKISTAN     |     2|           0|      0|   91|
|6-24 months |ResPak         |PAKISTAN     |     2|           1|      0|   91|
|6-24 months |ResPak         |PAKISTAN     |     3|           0|      2|   91|
|6-24 months |ResPak         |PAKISTAN     |     3|           1|      0|   91|
|6-24 months |ResPak         |PAKISTAN     |     4|           0|      4|   91|
|6-24 months |ResPak         |PAKISTAN     |     4|           1|      3|   91|
|6-24 months |ResPak         |PAKISTAN     |     5|           0|     10|   91|
|6-24 months |ResPak         |PAKISTAN     |     5|           1|      5|   91|
|6-24 months |ResPak         |PAKISTAN     |     6|           0|     16|   91|
|6-24 months |ResPak         |PAKISTAN     |     6|           1|      2|   91|
|6-24 months |ResPak         |PAKISTAN     |     7|           0|     13|   91|
|6-24 months |ResPak         |PAKISTAN     |     7|           1|      5|   91|
|6-24 months |ResPak         |PAKISTAN     |     8|           0|      8|   91|
|6-24 months |ResPak         |PAKISTAN     |     8|           1|      2|   91|
|6-24 months |ResPak         |PAKISTAN     |     9|           0|      8|   91|
|6-24 months |ResPak         |PAKISTAN     |     9|           1|      2|   91|
|6-24 months |ResPak         |PAKISTAN     |    10|           0|      5|   91|
|6-24 months |ResPak         |PAKISTAN     |    10|           1|      1|   91|
|6-24 months |ResPak         |PAKISTAN     |    11|           0|      2|   91|
|6-24 months |ResPak         |PAKISTAN     |    11|           1|      1|   91|
|6-24 months |ResPak         |PAKISTAN     |    12|           0|      1|   91|
|6-24 months |ResPak         |PAKISTAN     |    12|           1|      0|   91|
|6-24 months |SAS-CompFeed   |INDIA        |     1|           0|     25|  473|
|6-24 months |SAS-CompFeed   |INDIA        |     1|           1|      6|  473|
|6-24 months |SAS-CompFeed   |INDIA        |     2|           0|     19|  473|
|6-24 months |SAS-CompFeed   |INDIA        |     2|           1|      3|  473|
|6-24 months |SAS-CompFeed   |INDIA        |     3|           0|     19|  473|
|6-24 months |SAS-CompFeed   |INDIA        |     3|           1|      6|  473|
|6-24 months |SAS-CompFeed   |INDIA        |     4|           0|     16|  473|
|6-24 months |SAS-CompFeed   |INDIA        |     4|           1|      9|  473|
|6-24 months |SAS-CompFeed   |INDIA        |     5|           0|     20|  473|
|6-24 months |SAS-CompFeed   |INDIA        |     5|           1|      9|  473|
|6-24 months |SAS-CompFeed   |INDIA        |     6|           0|     25|  473|
|6-24 months |SAS-CompFeed   |INDIA        |     6|           1|     11|  473|
|6-24 months |SAS-CompFeed   |INDIA        |     7|           0|     23|  473|
|6-24 months |SAS-CompFeed   |INDIA        |     7|           1|     16|  473|
|6-24 months |SAS-CompFeed   |INDIA        |     8|           0|     40|  473|
|6-24 months |SAS-CompFeed   |INDIA        |     8|           1|     18|  473|
|6-24 months |SAS-CompFeed   |INDIA        |     9|           0|     49|  473|
|6-24 months |SAS-CompFeed   |INDIA        |     9|           1|     20|  473|
|6-24 months |SAS-CompFeed   |INDIA        |    10|           0|     27|  473|
|6-24 months |SAS-CompFeed   |INDIA        |    10|           1|     22|  473|
|6-24 months |SAS-CompFeed   |INDIA        |    11|           0|     41|  473|
|6-24 months |SAS-CompFeed   |INDIA        |    11|           1|     13|  473|
|6-24 months |SAS-CompFeed   |INDIA        |    12|           0|     34|  473|
|6-24 months |SAS-CompFeed   |INDIA        |    12|           1|      2|  473|
|6-24 months |SAS-FoodSuppl  |INDIA        |     1|           0|     23|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |     1|           1|      4|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |     2|           0|     18|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |     2|           1|      0|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |     3|           0|     14|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |     3|           1|      1|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |     4|           0|     12|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |     4|           1|      0|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |     5|           0|     13|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |     5|           1|      2|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |     6|           0|     12|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |     6|           1|      0|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |     7|           0|      4|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |     7|           1|      1|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |     8|           0|      0|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |     8|           1|      0|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |     9|           0|      6|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |     9|           1|      2|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |    10|           0|      6|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |    10|           1|      0|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |    11|           0|     15|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |    11|           1|      3|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |    12|           0|     20|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |    12|           1|      0|  156|
|6-24 months |TanzaniaChild2 |TANZANIA     |     1|           0|     14|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |     1|           1|     20|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |     2|           0|      4|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |     2|           1|     17|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |     3|           0|     11|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |     3|           1|     13|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |     4|           0|     10|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |     4|           1|      9|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |     5|           0|     11|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |     5|           1|     17|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |     6|           0|     16|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |     6|           1|     13|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |     7|           0|     12|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |     7|           1|     19|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |     8|           0|     21|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |     8|           1|     24|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |     9|           0|     14|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |     9|           1|     21|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |    10|           0|     16|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |    10|           1|     20|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |    11|           0|     16|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |    11|           1|     23|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |    12|           0|     20|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |    12|           1|     12|  373|
|6-24 months |Vellore Crypto |INDIA        |     1|           0|      4|  155|
|6-24 months |Vellore Crypto |INDIA        |     1|           1|     11|  155|
|6-24 months |Vellore Crypto |INDIA        |     2|           0|      4|  155|
|6-24 months |Vellore Crypto |INDIA        |     2|           1|      7|  155|
|6-24 months |Vellore Crypto |INDIA        |     3|           0|      2|  155|
|6-24 months |Vellore Crypto |INDIA        |     3|           1|      4|  155|
|6-24 months |Vellore Crypto |INDIA        |     4|           0|      4|  155|
|6-24 months |Vellore Crypto |INDIA        |     4|           1|      6|  155|
|6-24 months |Vellore Crypto |INDIA        |     5|           0|      6|  155|
|6-24 months |Vellore Crypto |INDIA        |     5|           1|      3|  155|
|6-24 months |Vellore Crypto |INDIA        |     6|           0|      7|  155|
|6-24 months |Vellore Crypto |INDIA        |     6|           1|      7|  155|
|6-24 months |Vellore Crypto |INDIA        |     7|           0|      8|  155|
|6-24 months |Vellore Crypto |INDIA        |     7|           1|      5|  155|
|6-24 months |Vellore Crypto |INDIA        |     8|           0|      9|  155|
|6-24 months |Vellore Crypto |INDIA        |     8|           1|      9|  155|
|6-24 months |Vellore Crypto |INDIA        |     9|           0|     10|  155|
|6-24 months |Vellore Crypto |INDIA        |     9|           1|      6|  155|
|6-24 months |Vellore Crypto |INDIA        |    10|           0|     10|  155|
|6-24 months |Vellore Crypto |INDIA        |    10|           1|      8|  155|
|6-24 months |Vellore Crypto |INDIA        |    11|           0|      6|  155|
|6-24 months |Vellore Crypto |INDIA        |    11|           1|      4|  155|
|6-24 months |Vellore Crypto |INDIA        |    12|           0|      5|  155|
|6-24 months |Vellore Crypto |INDIA        |    12|           1|     10|  155|
|6-24 months |ZVITAMBO       |ZIMBABWE     |     1|           0|    104| 1096|
|6-24 months |ZVITAMBO       |ZIMBABWE     |     1|           1|      7| 1096|
|6-24 months |ZVITAMBO       |ZIMBABWE     |     2|           0|     78| 1096|
|6-24 months |ZVITAMBO       |ZIMBABWE     |     2|           1|      9| 1096|
|6-24 months |ZVITAMBO       |ZIMBABWE     |     3|           0|    104| 1096|
|6-24 months |ZVITAMBO       |ZIMBABWE     |     3|           1|      7| 1096|
|6-24 months |ZVITAMBO       |ZIMBABWE     |     4|           0|     68| 1096|
|6-24 months |ZVITAMBO       |ZIMBABWE     |     4|           1|      6| 1096|
|6-24 months |ZVITAMBO       |ZIMBABWE     |     5|           0|     85| 1096|
|6-24 months |ZVITAMBO       |ZIMBABWE     |     5|           1|      7| 1096|
|6-24 months |ZVITAMBO       |ZIMBABWE     |     6|           0|     77| 1096|
|6-24 months |ZVITAMBO       |ZIMBABWE     |     6|           1|      8| 1096|
|6-24 months |ZVITAMBO       |ZIMBABWE     |     7|           0|     72| 1096|
|6-24 months |ZVITAMBO       |ZIMBABWE     |     7|           1|      6| 1096|
|6-24 months |ZVITAMBO       |ZIMBABWE     |     8|           0|     84| 1096|
|6-24 months |ZVITAMBO       |ZIMBABWE     |     8|           1|      5| 1096|
|6-24 months |ZVITAMBO       |ZIMBABWE     |     9|           0|     71| 1096|
|6-24 months |ZVITAMBO       |ZIMBABWE     |     9|           1|      2| 1096|
|6-24 months |ZVITAMBO       |ZIMBABWE     |    10|           0|     78| 1096|
|6-24 months |ZVITAMBO       |ZIMBABWE     |    10|           1|      7| 1096|
|6-24 months |ZVITAMBO       |ZIMBABWE     |    11|           0|     92| 1096|
|6-24 months |ZVITAMBO       |ZIMBABWE     |    11|           1|      8| 1096|
|6-24 months |ZVITAMBO       |ZIMBABWE     |    12|           0|    102| 1096|
|6-24 months |ZVITAMBO       |ZIMBABWE     |    12|           1|      9| 1096|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
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

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


