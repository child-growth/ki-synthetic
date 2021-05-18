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

**Intervention Variable:** brthmon

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |brthmon | wast_rec90d| n_cell|    n|
|:-----------|:--------------|:------------|:-------|-----------:|------:|----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1       |           0|      6|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1       |           1|     13|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |2       |           0|      4|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |2       |           1|     14|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |3       |           0|      8|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |3       |           1|     10|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |4       |           0|     16|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |4       |           1|     16|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |5       |           0|      8|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |5       |           1|     14|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |6       |           0|     12|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |6       |           1|     14|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |7       |           0|     13|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |7       |           1|     27|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |8       |           0|      7|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |8       |           1|     24|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |9       |           0|     11|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |9       |           1|     12|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |10      |           0|      7|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |10      |           1|     12|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |11      |           0|     19|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |11      |           1|     31|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |12      |           0|      9|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |12      |           1|     17|  324|
|0-24 months |CMIN           |BANGLADESH   |1       |           0|     10|  189|
|0-24 months |CMIN           |BANGLADESH   |1       |           1|      8|  189|
|0-24 months |CMIN           |BANGLADESH   |2       |           0|      4|  189|
|0-24 months |CMIN           |BANGLADESH   |2       |           1|     12|  189|
|0-24 months |CMIN           |BANGLADESH   |3       |           0|      5|  189|
|0-24 months |CMIN           |BANGLADESH   |3       |           1|     14|  189|
|0-24 months |CMIN           |BANGLADESH   |4       |           0|      4|  189|
|0-24 months |CMIN           |BANGLADESH   |4       |           1|      5|  189|
|0-24 months |CMIN           |BANGLADESH   |5       |           0|      6|  189|
|0-24 months |CMIN           |BANGLADESH   |5       |           1|      4|  189|
|0-24 months |CMIN           |BANGLADESH   |6       |           0|      2|  189|
|0-24 months |CMIN           |BANGLADESH   |6       |           1|      7|  189|
|0-24 months |CMIN           |BANGLADESH   |7       |           0|      3|  189|
|0-24 months |CMIN           |BANGLADESH   |7       |           1|      6|  189|
|0-24 months |CMIN           |BANGLADESH   |8       |           0|      9|  189|
|0-24 months |CMIN           |BANGLADESH   |8       |           1|     10|  189|
|0-24 months |CMIN           |BANGLADESH   |9       |           0|      3|  189|
|0-24 months |CMIN           |BANGLADESH   |9       |           1|      8|  189|
|0-24 months |CMIN           |BANGLADESH   |10      |           0|      9|  189|
|0-24 months |CMIN           |BANGLADESH   |10      |           1|      9|  189|
|0-24 months |CMIN           |BANGLADESH   |11      |           0|     13|  189|
|0-24 months |CMIN           |BANGLADESH   |11      |           1|     12|  189|
|0-24 months |CMIN           |BANGLADESH   |12      |           0|     12|  189|
|0-24 months |CMIN           |BANGLADESH   |12      |           1|     14|  189|
|0-24 months |CONTENT        |PERU         |1       |           0|      1|    7|
|0-24 months |CONTENT        |PERU         |1       |           1|      2|    7|
|0-24 months |CONTENT        |PERU         |2       |           0|      0|    7|
|0-24 months |CONTENT        |PERU         |2       |           1|      2|    7|
|0-24 months |CONTENT        |PERU         |3       |           0|      0|    7|
|0-24 months |CONTENT        |PERU         |3       |           1|      1|    7|
|0-24 months |CONTENT        |PERU         |4       |           0|      0|    7|
|0-24 months |CONTENT        |PERU         |4       |           1|      0|    7|
|0-24 months |CONTENT        |PERU         |5       |           0|      0|    7|
|0-24 months |CONTENT        |PERU         |5       |           1|      0|    7|
|0-24 months |CONTENT        |PERU         |6       |           0|      0|    7|
|0-24 months |CONTENT        |PERU         |6       |           1|      0|    7|
|0-24 months |CONTENT        |PERU         |7       |           0|      0|    7|
|0-24 months |CONTENT        |PERU         |7       |           1|      1|    7|
|0-24 months |CONTENT        |PERU         |8       |           0|      0|    7|
|0-24 months |CONTENT        |PERU         |8       |           1|      0|    7|
|0-24 months |CONTENT        |PERU         |9       |           0|      0|    7|
|0-24 months |CONTENT        |PERU         |9       |           1|      0|    7|
|0-24 months |CONTENT        |PERU         |10      |           0|      0|    7|
|0-24 months |CONTENT        |PERU         |10      |           1|      0|    7|
|0-24 months |CONTENT        |PERU         |11      |           0|      0|    7|
|0-24 months |CONTENT        |PERU         |11      |           1|      0|    7|
|0-24 months |CONTENT        |PERU         |12      |           0|      0|    7|
|0-24 months |CONTENT        |PERU         |12      |           1|      0|    7|
|0-24 months |EE             |PAKISTAN     |1       |           0|     55|  323|
|0-24 months |EE             |PAKISTAN     |1       |           1|     41|  323|
|0-24 months |EE             |PAKISTAN     |2       |           0|     21|  323|
|0-24 months |EE             |PAKISTAN     |2       |           1|     16|  323|
|0-24 months |EE             |PAKISTAN     |3       |           0|     12|  323|
|0-24 months |EE             |PAKISTAN     |3       |           1|     25|  323|
|0-24 months |EE             |PAKISTAN     |4       |           0|     11|  323|
|0-24 months |EE             |PAKISTAN     |4       |           1|      6|  323|
|0-24 months |EE             |PAKISTAN     |5       |           0|      0|  323|
|0-24 months |EE             |PAKISTAN     |5       |           1|      0|  323|
|0-24 months |EE             |PAKISTAN     |6       |           0|      0|  323|
|0-24 months |EE             |PAKISTAN     |6       |           1|      0|  323|
|0-24 months |EE             |PAKISTAN     |7       |           0|      0|  323|
|0-24 months |EE             |PAKISTAN     |7       |           1|      0|  323|
|0-24 months |EE             |PAKISTAN     |8       |           0|      0|  323|
|0-24 months |EE             |PAKISTAN     |8       |           1|      0|  323|
|0-24 months |EE             |PAKISTAN     |9       |           0|      0|  323|
|0-24 months |EE             |PAKISTAN     |9       |           1|      0|  323|
|0-24 months |EE             |PAKISTAN     |10      |           0|      0|  323|
|0-24 months |EE             |PAKISTAN     |10      |           1|      0|  323|
|0-24 months |EE             |PAKISTAN     |11      |           0|     28|  323|
|0-24 months |EE             |PAKISTAN     |11      |           1|     46|  323|
|0-24 months |EE             |PAKISTAN     |12      |           0|     33|  323|
|0-24 months |EE             |PAKISTAN     |12      |           1|     29|  323|
|0-24 months |GMS-Nepal      |NEPAL        |1       |           0|      0|  643|
|0-24 months |GMS-Nepal      |NEPAL        |1       |           1|      0|  643|
|0-24 months |GMS-Nepal      |NEPAL        |2       |           0|      0|  643|
|0-24 months |GMS-Nepal      |NEPAL        |2       |           1|      0|  643|
|0-24 months |GMS-Nepal      |NEPAL        |3       |           0|      0|  643|
|0-24 months |GMS-Nepal      |NEPAL        |3       |           1|      0|  643|
|0-24 months |GMS-Nepal      |NEPAL        |4       |           0|      0|  643|
|0-24 months |GMS-Nepal      |NEPAL        |4       |           1|      0|  643|
|0-24 months |GMS-Nepal      |NEPAL        |5       |           0|      0|  643|
|0-24 months |GMS-Nepal      |NEPAL        |5       |           1|      0|  643|
|0-24 months |GMS-Nepal      |NEPAL        |6       |           0|     69|  643|
|0-24 months |GMS-Nepal      |NEPAL        |6       |           1|     76|  643|
|0-24 months |GMS-Nepal      |NEPAL        |7       |           0|    131|  643|
|0-24 months |GMS-Nepal      |NEPAL        |7       |           1|    144|  643|
|0-24 months |GMS-Nepal      |NEPAL        |8       |           0|     96|  643|
|0-24 months |GMS-Nepal      |NEPAL        |8       |           1|    127|  643|
|0-24 months |GMS-Nepal      |NEPAL        |9       |           0|      0|  643|
|0-24 months |GMS-Nepal      |NEPAL        |9       |           1|      0|  643|
|0-24 months |GMS-Nepal      |NEPAL        |10      |           0|      0|  643|
|0-24 months |GMS-Nepal      |NEPAL        |10      |           1|      0|  643|
|0-24 months |GMS-Nepal      |NEPAL        |11      |           0|      0|  643|
|0-24 months |GMS-Nepal      |NEPAL        |11      |           1|      0|  643|
|0-24 months |GMS-Nepal      |NEPAL        |12      |           0|      0|  643|
|0-24 months |GMS-Nepal      |NEPAL        |12      |           1|      0|  643|
|0-24 months |Guatemala BSC  |GUATEMALA    |1       |           0|      1|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |1       |           1|      3|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |2       |           0|      1|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |2       |           1|      0|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |3       |           0|      1|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |3       |           1|      4|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |4       |           0|      6|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |4       |           1|      1|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |5       |           0|      1|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |5       |           1|      4|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |6       |           0|      3|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |6       |           1|      0|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |7       |           0|      0|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |7       |           1|      1|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |8       |           0|      1|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |8       |           1|      1|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |9       |           0|      3|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |9       |           1|      0|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |10      |           0|      1|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |10      |           1|      1|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |11      |           0|      2|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |11      |           1|      0|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |12      |           0|      1|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |12      |           1|      2|   38|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |1       |           0|     82|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |1       |           1|      5|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |2       |           0|     45|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |2       |           1|      1|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |3       |           0|     50|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |3       |           1|      4|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |4       |           0|     48|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |4       |           1|      3|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |5       |           0|     54|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |5       |           1|      0|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |6       |           0|     51|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |6       |           1|      1|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |7       |           0|     38|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |7       |           1|      2|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |8       |           0|     79|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |8       |           1|      2|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |9       |           0|    117|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |9       |           1|      4|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |10      |           0|     76|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |10      |           1|      4|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |11      |           0|     73|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |11      |           1|      6|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |12      |           0|     71|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |12      |           1|      4|  820|
|0-24 months |JiVitA-3       |BANGLADESH   |1       |           0|    417| 7566|
|0-24 months |JiVitA-3       |BANGLADESH   |1       |           1|    290| 7566|
|0-24 months |JiVitA-3       |BANGLADESH   |2       |           0|    333| 7566|
|0-24 months |JiVitA-3       |BANGLADESH   |2       |           1|    247| 7566|
|0-24 months |JiVitA-3       |BANGLADESH   |3       |           0|    409| 7566|
|0-24 months |JiVitA-3       |BANGLADESH   |3       |           1|    280| 7566|
|0-24 months |JiVitA-3       |BANGLADESH   |4       |           0|    316| 7566|
|0-24 months |JiVitA-3       |BANGLADESH   |4       |           1|    214| 7566|
|0-24 months |JiVitA-3       |BANGLADESH   |5       |           0|    261| 7566|
|0-24 months |JiVitA-3       |BANGLADESH   |5       |           1|    149| 7566|
|0-24 months |JiVitA-3       |BANGLADESH   |6       |           0|    245| 7566|
|0-24 months |JiVitA-3       |BANGLADESH   |6       |           1|    182| 7566|
|0-24 months |JiVitA-3       |BANGLADESH   |7       |           0|    268| 7566|
|0-24 months |JiVitA-3       |BANGLADESH   |7       |           1|    189| 7566|
|0-24 months |JiVitA-3       |BANGLADESH   |8       |           0|    351| 7566|
|0-24 months |JiVitA-3       |BANGLADESH   |8       |           1|    228| 7566|
|0-24 months |JiVitA-3       |BANGLADESH   |9       |           0|    428| 7566|
|0-24 months |JiVitA-3       |BANGLADESH   |9       |           1|    382| 7566|
|0-24 months |JiVitA-3       |BANGLADESH   |10      |           0|    432| 7566|
|0-24 months |JiVitA-3       |BANGLADESH   |10      |           1|    322| 7566|
|0-24 months |JiVitA-3       |BANGLADESH   |11      |           0|    453| 7566|
|0-24 months |JiVitA-3       |BANGLADESH   |11      |           1|    357| 7566|
|0-24 months |JiVitA-3       |BANGLADESH   |12      |           0|    458| 7566|
|0-24 months |JiVitA-3       |BANGLADESH   |12      |           1|    355| 7566|
|0-24 months |JiVitA-4       |BANGLADESH   |1       |           0|      0| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |1       |           1|      0| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |2       |           0|    252| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |2       |           1|     78| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |3       |           0|    290| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |3       |           1|     85| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |4       |           0|    243| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |4       |           1|     79| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |5       |           0|    168| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |5       |           1|     70| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |6       |           0|    135| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |6       |           1|     51| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |7       |           0|    127| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |7       |           1|     44| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |8       |           0|    173| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |8       |           1|     57| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |9       |           0|    110| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |9       |           1|     49| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |10      |           0|     35| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |10      |           1|     22| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |11      |           0|      0| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |11      |           1|      0| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |12      |           0|      0| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |12      |           1|      0| 2068|
|0-24 months |Keneba         |GAMBIA       |1       |           0|     83| 1828|
|0-24 months |Keneba         |GAMBIA       |1       |           1|    122| 1828|
|0-24 months |Keneba         |GAMBIA       |2       |           0|     65| 1828|
|0-24 months |Keneba         |GAMBIA       |2       |           1|    112| 1828|
|0-24 months |Keneba         |GAMBIA       |3       |           0|     74| 1828|
|0-24 months |Keneba         |GAMBIA       |3       |           1|    115| 1828|
|0-24 months |Keneba         |GAMBIA       |4       |           0|     37| 1828|
|0-24 months |Keneba         |GAMBIA       |4       |           1|     70| 1828|
|0-24 months |Keneba         |GAMBIA       |5       |           0|     51| 1828|
|0-24 months |Keneba         |GAMBIA       |5       |           1|     80| 1828|
|0-24 months |Keneba         |GAMBIA       |6       |           0|     39| 1828|
|0-24 months |Keneba         |GAMBIA       |6       |           1|     67| 1828|
|0-24 months |Keneba         |GAMBIA       |7       |           0|     26| 1828|
|0-24 months |Keneba         |GAMBIA       |7       |           1|     48| 1828|
|0-24 months |Keneba         |GAMBIA       |8       |           0|     65| 1828|
|0-24 months |Keneba         |GAMBIA       |8       |           1|     94| 1828|
|0-24 months |Keneba         |GAMBIA       |9       |           0|     62| 1828|
|0-24 months |Keneba         |GAMBIA       |9       |           1|     96| 1828|
|0-24 months |Keneba         |GAMBIA       |10      |           0|     90| 1828|
|0-24 months |Keneba         |GAMBIA       |10      |           1|    113| 1828|
|0-24 months |Keneba         |GAMBIA       |11      |           0|     48| 1828|
|0-24 months |Keneba         |GAMBIA       |11      |           1|    107| 1828|
|0-24 months |Keneba         |GAMBIA       |12      |           0|     72| 1828|
|0-24 months |Keneba         |GAMBIA       |12      |           1|     92| 1828|
|0-24 months |LCNI-5         |MALAWI       |1       |           0|      3|   79|
|0-24 months |LCNI-5         |MALAWI       |1       |           1|      0|   79|
|0-24 months |LCNI-5         |MALAWI       |2       |           0|      1|   79|
|0-24 months |LCNI-5         |MALAWI       |2       |           1|      1|   79|
|0-24 months |LCNI-5         |MALAWI       |3       |           0|      0|   79|
|0-24 months |LCNI-5         |MALAWI       |3       |           1|      0|   79|
|0-24 months |LCNI-5         |MALAWI       |4       |           0|      1|   79|
|0-24 months |LCNI-5         |MALAWI       |4       |           1|      1|   79|
|0-24 months |LCNI-5         |MALAWI       |5       |           0|      2|   79|
|0-24 months |LCNI-5         |MALAWI       |5       |           1|      0|   79|
|0-24 months |LCNI-5         |MALAWI       |6       |           0|      3|   79|
|0-24 months |LCNI-5         |MALAWI       |6       |           1|      1|   79|
|0-24 months |LCNI-5         |MALAWI       |7       |           0|      3|   79|
|0-24 months |LCNI-5         |MALAWI       |7       |           1|      0|   79|
|0-24 months |LCNI-5         |MALAWI       |8       |           0|      4|   79|
|0-24 months |LCNI-5         |MALAWI       |8       |           1|      4|   79|
|0-24 months |LCNI-5         |MALAWI       |9       |           0|     12|   79|
|0-24 months |LCNI-5         |MALAWI       |9       |           1|      1|   79|
|0-24 months |LCNI-5         |MALAWI       |10      |           0|     11|   79|
|0-24 months |LCNI-5         |MALAWI       |10      |           1|      2|   79|
|0-24 months |LCNI-5         |MALAWI       |11      |           0|      8|   79|
|0-24 months |LCNI-5         |MALAWI       |11      |           1|      1|   79|
|0-24 months |LCNI-5         |MALAWI       |12      |           0|     18|   79|
|0-24 months |LCNI-5         |MALAWI       |12      |           1|      2|   79|
|0-24 months |MAL-ED         |INDIA        |1       |           0|      8|  181|
|0-24 months |MAL-ED         |INDIA        |1       |           1|      5|  181|
|0-24 months |MAL-ED         |INDIA        |2       |           0|      2|  181|
|0-24 months |MAL-ED         |INDIA        |2       |           1|      5|  181|
|0-24 months |MAL-ED         |INDIA        |3       |           0|      8|  181|
|0-24 months |MAL-ED         |INDIA        |3       |           1|     11|  181|
|0-24 months |MAL-ED         |INDIA        |4       |           0|      4|  181|
|0-24 months |MAL-ED         |INDIA        |4       |           1|      6|  181|
|0-24 months |MAL-ED         |INDIA        |5       |           0|      0|  181|
|0-24 months |MAL-ED         |INDIA        |5       |           1|      2|  181|
|0-24 months |MAL-ED         |INDIA        |6       |           0|      5|  181|
|0-24 months |MAL-ED         |INDIA        |6       |           1|      4|  181|
|0-24 months |MAL-ED         |INDIA        |7       |           0|      3|  181|
|0-24 months |MAL-ED         |INDIA        |7       |           1|      8|  181|
|0-24 months |MAL-ED         |INDIA        |8       |           0|      9|  181|
|0-24 months |MAL-ED         |INDIA        |8       |           1|     19|  181|
|0-24 months |MAL-ED         |INDIA        |9       |           0|      8|  181|
|0-24 months |MAL-ED         |INDIA        |9       |           1|     12|  181|
|0-24 months |MAL-ED         |INDIA        |10      |           0|      7|  181|
|0-24 months |MAL-ED         |INDIA        |10      |           1|     22|  181|
|0-24 months |MAL-ED         |INDIA        |11      |           0|     10|  181|
|0-24 months |MAL-ED         |INDIA        |11      |           1|     10|  181|
|0-24 months |MAL-ED         |INDIA        |12      |           0|      7|  181|
|0-24 months |MAL-ED         |INDIA        |12      |           1|      6|  181|
|0-24 months |MAL-ED         |BANGLADESH   |1       |           0|      3|  124|
|0-24 months |MAL-ED         |BANGLADESH   |1       |           1|      5|  124|
|0-24 months |MAL-ED         |BANGLADESH   |2       |           0|      0|  124|
|0-24 months |MAL-ED         |BANGLADESH   |2       |           1|      3|  124|
|0-24 months |MAL-ED         |BANGLADESH   |3       |           0|      8|  124|
|0-24 months |MAL-ED         |BANGLADESH   |3       |           1|     14|  124|
|0-24 months |MAL-ED         |BANGLADESH   |4       |           0|      5|  124|
|0-24 months |MAL-ED         |BANGLADESH   |4       |           1|      6|  124|
|0-24 months |MAL-ED         |BANGLADESH   |5       |           0|      2|  124|
|0-24 months |MAL-ED         |BANGLADESH   |5       |           1|      7|  124|
|0-24 months |MAL-ED         |BANGLADESH   |6       |           0|      3|  124|
|0-24 months |MAL-ED         |BANGLADESH   |6       |           1|      3|  124|
|0-24 months |MAL-ED         |BANGLADESH   |7       |           0|      4|  124|
|0-24 months |MAL-ED         |BANGLADESH   |7       |           1|      3|  124|
|0-24 months |MAL-ED         |BANGLADESH   |8       |           0|      3|  124|
|0-24 months |MAL-ED         |BANGLADESH   |8       |           1|     11|  124|
|0-24 months |MAL-ED         |BANGLADESH   |9       |           0|      3|  124|
|0-24 months |MAL-ED         |BANGLADESH   |9       |           1|      4|  124|
|0-24 months |MAL-ED         |BANGLADESH   |10      |           0|      3|  124|
|0-24 months |MAL-ED         |BANGLADESH   |10      |           1|      8|  124|
|0-24 months |MAL-ED         |BANGLADESH   |11      |           0|      3|  124|
|0-24 months |MAL-ED         |BANGLADESH   |11      |           1|      5|  124|
|0-24 months |MAL-ED         |BANGLADESH   |12      |           0|      7|  124|
|0-24 months |MAL-ED         |BANGLADESH   |12      |           1|     11|  124|
|0-24 months |MAL-ED         |PERU         |1       |           0|      0|   35|
|0-24 months |MAL-ED         |PERU         |1       |           1|      2|   35|
|0-24 months |MAL-ED         |PERU         |2       |           0|      0|   35|
|0-24 months |MAL-ED         |PERU         |2       |           1|      1|   35|
|0-24 months |MAL-ED         |PERU         |3       |           0|      1|   35|
|0-24 months |MAL-ED         |PERU         |3       |           1|      3|   35|
|0-24 months |MAL-ED         |PERU         |4       |           0|      0|   35|
|0-24 months |MAL-ED         |PERU         |4       |           1|      4|   35|
|0-24 months |MAL-ED         |PERU         |5       |           0|      2|   35|
|0-24 months |MAL-ED         |PERU         |5       |           1|      2|   35|
|0-24 months |MAL-ED         |PERU         |6       |           0|      0|   35|
|0-24 months |MAL-ED         |PERU         |6       |           1|      0|   35|
|0-24 months |MAL-ED         |PERU         |7       |           0|      0|   35|
|0-24 months |MAL-ED         |PERU         |7       |           1|      5|   35|
|0-24 months |MAL-ED         |PERU         |8       |           0|      0|   35|
|0-24 months |MAL-ED         |PERU         |8       |           1|      4|   35|
|0-24 months |MAL-ED         |PERU         |9       |           0|      1|   35|
|0-24 months |MAL-ED         |PERU         |9       |           1|      3|   35|
|0-24 months |MAL-ED         |PERU         |10      |           0|      1|   35|
|0-24 months |MAL-ED         |PERU         |10      |           1|      1|   35|
|0-24 months |MAL-ED         |PERU         |11      |           0|      1|   35|
|0-24 months |MAL-ED         |PERU         |11      |           1|      1|   35|
|0-24 months |MAL-ED         |PERU         |12      |           0|      0|   35|
|0-24 months |MAL-ED         |PERU         |12      |           1|      3|   35|
|0-24 months |MAL-ED         |NEPAL        |1       |           0|      3|   98|
|0-24 months |MAL-ED         |NEPAL        |1       |           1|     11|   98|
|0-24 months |MAL-ED         |NEPAL        |2       |           0|      3|   98|
|0-24 months |MAL-ED         |NEPAL        |2       |           1|     15|   98|
|0-24 months |MAL-ED         |NEPAL        |3       |           0|      3|   98|
|0-24 months |MAL-ED         |NEPAL        |3       |           1|      6|   98|
|0-24 months |MAL-ED         |NEPAL        |4       |           0|      2|   98|
|0-24 months |MAL-ED         |NEPAL        |4       |           1|      8|   98|
|0-24 months |MAL-ED         |NEPAL        |5       |           0|      2|   98|
|0-24 months |MAL-ED         |NEPAL        |5       |           1|      6|   98|
|0-24 months |MAL-ED         |NEPAL        |6       |           0|      0|   98|
|0-24 months |MAL-ED         |NEPAL        |6       |           1|      7|   98|
|0-24 months |MAL-ED         |NEPAL        |7       |           0|      4|   98|
|0-24 months |MAL-ED         |NEPAL        |7       |           1|      3|   98|
|0-24 months |MAL-ED         |NEPAL        |8       |           0|      2|   98|
|0-24 months |MAL-ED         |NEPAL        |8       |           1|      8|   98|
|0-24 months |MAL-ED         |NEPAL        |9       |           0|      0|   98|
|0-24 months |MAL-ED         |NEPAL        |9       |           1|      1|   98|
|0-24 months |MAL-ED         |NEPAL        |10      |           0|      0|   98|
|0-24 months |MAL-ED         |NEPAL        |10      |           1|      3|   98|
|0-24 months |MAL-ED         |NEPAL        |11      |           0|      1|   98|
|0-24 months |MAL-ED         |NEPAL        |11      |           1|      4|   98|
|0-24 months |MAL-ED         |NEPAL        |12      |           0|      0|   98|
|0-24 months |MAL-ED         |NEPAL        |12      |           1|      6|   98|
|0-24 months |MAL-ED         |BRAZIL       |1       |           0|      1|   24|
|0-24 months |MAL-ED         |BRAZIL       |1       |           1|      1|   24|
|0-24 months |MAL-ED         |BRAZIL       |2       |           0|      2|   24|
|0-24 months |MAL-ED         |BRAZIL       |2       |           1|      2|   24|
|0-24 months |MAL-ED         |BRAZIL       |3       |           0|      0|   24|
|0-24 months |MAL-ED         |BRAZIL       |3       |           1|      0|   24|
|0-24 months |MAL-ED         |BRAZIL       |4       |           0|      0|   24|
|0-24 months |MAL-ED         |BRAZIL       |4       |           1|      1|   24|
|0-24 months |MAL-ED         |BRAZIL       |5       |           0|      0|   24|
|0-24 months |MAL-ED         |BRAZIL       |5       |           1|      1|   24|
|0-24 months |MAL-ED         |BRAZIL       |6       |           0|      0|   24|
|0-24 months |MAL-ED         |BRAZIL       |6       |           1|      1|   24|
|0-24 months |MAL-ED         |BRAZIL       |7       |           0|      0|   24|
|0-24 months |MAL-ED         |BRAZIL       |7       |           1|      3|   24|
|0-24 months |MAL-ED         |BRAZIL       |8       |           0|      0|   24|
|0-24 months |MAL-ED         |BRAZIL       |8       |           1|      4|   24|
|0-24 months |MAL-ED         |BRAZIL       |9       |           0|      2|   24|
|0-24 months |MAL-ED         |BRAZIL       |9       |           1|      1|   24|
|0-24 months |MAL-ED         |BRAZIL       |10      |           0|      1|   24|
|0-24 months |MAL-ED         |BRAZIL       |10      |           1|      2|   24|
|0-24 months |MAL-ED         |BRAZIL       |11      |           0|      0|   24|
|0-24 months |MAL-ED         |BRAZIL       |11      |           1|      0|   24|
|0-24 months |MAL-ED         |BRAZIL       |12      |           0|      0|   24|
|0-24 months |MAL-ED         |BRAZIL       |12      |           1|      2|   24|
|0-24 months |MAL-ED         |TANZANIA     |1       |           0|      1|   51|
|0-24 months |MAL-ED         |TANZANIA     |1       |           1|      1|   51|
|0-24 months |MAL-ED         |TANZANIA     |2       |           0|      0|   51|
|0-24 months |MAL-ED         |TANZANIA     |2       |           1|      1|   51|
|0-24 months |MAL-ED         |TANZANIA     |3       |           0|      0|   51|
|0-24 months |MAL-ED         |TANZANIA     |3       |           1|      5|   51|
|0-24 months |MAL-ED         |TANZANIA     |4       |           0|      2|   51|
|0-24 months |MAL-ED         |TANZANIA     |4       |           1|      2|   51|
|0-24 months |MAL-ED         |TANZANIA     |5       |           0|      0|   51|
|0-24 months |MAL-ED         |TANZANIA     |5       |           1|      4|   51|
|0-24 months |MAL-ED         |TANZANIA     |6       |           0|      1|   51|
|0-24 months |MAL-ED         |TANZANIA     |6       |           1|      3|   51|
|0-24 months |MAL-ED         |TANZANIA     |7       |           0|      0|   51|
|0-24 months |MAL-ED         |TANZANIA     |7       |           1|      4|   51|
|0-24 months |MAL-ED         |TANZANIA     |8       |           0|      0|   51|
|0-24 months |MAL-ED         |TANZANIA     |8       |           1|      0|   51|
|0-24 months |MAL-ED         |TANZANIA     |9       |           0|      2|   51|
|0-24 months |MAL-ED         |TANZANIA     |9       |           1|      4|   51|
|0-24 months |MAL-ED         |TANZANIA     |10      |           0|      0|   51|
|0-24 months |MAL-ED         |TANZANIA     |10      |           1|      4|   51|
|0-24 months |MAL-ED         |TANZANIA     |11      |           0|      1|   51|
|0-24 months |MAL-ED         |TANZANIA     |11      |           1|      7|   51|
|0-24 months |MAL-ED         |TANZANIA     |12      |           0|      2|   51|
|0-24 months |MAL-ED         |TANZANIA     |12      |           1|      7|   51|
|0-24 months |MAL-ED         |SOUTH AFRICA |1       |           0|      1|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |1       |           1|     14|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |2       |           0|      3|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |2       |           1|      3|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |3       |           0|      0|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |3       |           1|      7|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |4       |           0|      1|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |4       |           1|      2|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |5       |           0|      0|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |5       |           1|      1|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |6       |           0|      2|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |6       |           1|      5|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |7       |           0|      2|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |7       |           1|      9|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |8       |           0|      0|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |8       |           1|      1|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |9       |           0|      2|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |9       |           1|      5|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |10      |           0|      1|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |10      |           1|      7|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |11      |           0|      5|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |11      |           1|      3|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |12      |           0|      1|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |12      |           1|     12|   87|
|0-24 months |NIH-Birth      |BANGLADESH   |1       |           0|     23|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |1       |           1|     27|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |2       |           0|     17|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |2       |           1|     15|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |3       |           0|     24|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |3       |           1|     18|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |4       |           0|     16|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |4       |           1|     25|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |5       |           0|     19|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |5       |           1|     19|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |6       |           0|     19|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |6       |           1|     13|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |7       |           0|      8|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |7       |           1|     13|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |8       |           0|     23|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |8       |           1|     22|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |9       |           0|     17|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |9       |           1|     14|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |10      |           0|     10|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |10      |           1|     10|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |11      |           0|     12|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |11      |           1|     26|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |12      |           0|     14|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |12      |           1|     17|  421|
|0-24 months |PROBIT         |BELARUS      |1       |           0|     32| 4408|
|0-24 months |PROBIT         |BELARUS      |1       |           1|    220| 4408|
|0-24 months |PROBIT         |BELARUS      |2       |           0|     26| 4408|
|0-24 months |PROBIT         |BELARUS      |2       |           1|    221| 4408|
|0-24 months |PROBIT         |BELARUS      |3       |           0|     32| 4408|
|0-24 months |PROBIT         |BELARUS      |3       |           1|    260| 4408|
|0-24 months |PROBIT         |BELARUS      |4       |           0|     33| 4408|
|0-24 months |PROBIT         |BELARUS      |4       |           1|    265| 4408|
|0-24 months |PROBIT         |BELARUS      |5       |           0|     31| 4408|
|0-24 months |PROBIT         |BELARUS      |5       |           1|    265| 4408|
|0-24 months |PROBIT         |BELARUS      |6       |           0|     32| 4408|
|0-24 months |PROBIT         |BELARUS      |6       |           1|    292| 4408|
|0-24 months |PROBIT         |BELARUS      |7       |           0|     52| 4408|
|0-24 months |PROBIT         |BELARUS      |7       |           1|    347| 4408|
|0-24 months |PROBIT         |BELARUS      |8       |           0|     52| 4408|
|0-24 months |PROBIT         |BELARUS      |8       |           1|    387| 4408|
|0-24 months |PROBIT         |BELARUS      |9       |           0|     59| 4408|
|0-24 months |PROBIT         |BELARUS      |9       |           1|    367| 4408|
|0-24 months |PROBIT         |BELARUS      |10      |           0|     63| 4408|
|0-24 months |PROBIT         |BELARUS      |10      |           1|    432| 4408|
|0-24 months |PROBIT         |BELARUS      |11      |           0|     56| 4408|
|0-24 months |PROBIT         |BELARUS      |11      |           1|    393| 4408|
|0-24 months |PROBIT         |BELARUS      |12      |           0|     58| 4408|
|0-24 months |PROBIT         |BELARUS      |12      |           1|    433| 4408|
|0-24 months |PROVIDE        |BANGLADESH   |1       |           0|      6|  308|
|0-24 months |PROVIDE        |BANGLADESH   |1       |           1|      9|  308|
|0-24 months |PROVIDE        |BANGLADESH   |2       |           0|      8|  308|
|0-24 months |PROVIDE        |BANGLADESH   |2       |           1|      6|  308|
|0-24 months |PROVIDE        |BANGLADESH   |3       |           0|     12|  308|
|0-24 months |PROVIDE        |BANGLADESH   |3       |           1|     16|  308|
|0-24 months |PROVIDE        |BANGLADESH   |4       |           0|      8|  308|
|0-24 months |PROVIDE        |BANGLADESH   |4       |           1|      4|  308|
|0-24 months |PROVIDE        |BANGLADESH   |5       |           0|     10|  308|
|0-24 months |PROVIDE        |BANGLADESH   |5       |           1|     11|  308|
|0-24 months |PROVIDE        |BANGLADESH   |6       |           0|     21|  308|
|0-24 months |PROVIDE        |BANGLADESH   |6       |           1|     25|  308|
|0-24 months |PROVIDE        |BANGLADESH   |7       |           0|     20|  308|
|0-24 months |PROVIDE        |BANGLADESH   |7       |           1|     26|  308|
|0-24 months |PROVIDE        |BANGLADESH   |8       |           0|      9|  308|
|0-24 months |PROVIDE        |BANGLADESH   |8       |           1|     17|  308|
|0-24 months |PROVIDE        |BANGLADESH   |9       |           0|     14|  308|
|0-24 months |PROVIDE        |BANGLADESH   |9       |           1|     27|  308|
|0-24 months |PROVIDE        |BANGLADESH   |10      |           0|     10|  308|
|0-24 months |PROVIDE        |BANGLADESH   |10      |           1|     24|  308|
|0-24 months |PROVIDE        |BANGLADESH   |11      |           0|      5|  308|
|0-24 months |PROVIDE        |BANGLADESH   |11      |           1|      9|  308|
|0-24 months |PROVIDE        |BANGLADESH   |12      |           0|      6|  308|
|0-24 months |PROVIDE        |BANGLADESH   |12      |           1|      5|  308|
|0-24 months |ResPak         |PAKISTAN     |1       |           0|      3|  204|
|0-24 months |ResPak         |PAKISTAN     |1       |           1|      4|  204|
|0-24 months |ResPak         |PAKISTAN     |2       |           0|      2|  204|
|0-24 months |ResPak         |PAKISTAN     |2       |           1|      7|  204|
|0-24 months |ResPak         |PAKISTAN     |3       |           0|     10|  204|
|0-24 months |ResPak         |PAKISTAN     |3       |           1|     10|  204|
|0-24 months |ResPak         |PAKISTAN     |4       |           0|     14|  204|
|0-24 months |ResPak         |PAKISTAN     |4       |           1|      9|  204|
|0-24 months |ResPak         |PAKISTAN     |5       |           0|     22|  204|
|0-24 months |ResPak         |PAKISTAN     |5       |           1|     12|  204|
|0-24 months |ResPak         |PAKISTAN     |6       |           0|     27|  204|
|0-24 months |ResPak         |PAKISTAN     |6       |           1|     15|  204|
|0-24 months |ResPak         |PAKISTAN     |7       |           0|      9|  204|
|0-24 months |ResPak         |PAKISTAN     |7       |           1|      8|  204|
|0-24 months |ResPak         |PAKISTAN     |8       |           0|     16|  204|
|0-24 months |ResPak         |PAKISTAN     |8       |           1|      6|  204|
|0-24 months |ResPak         |PAKISTAN     |9       |           0|      5|  204|
|0-24 months |ResPak         |PAKISTAN     |9       |           1|     14|  204|
|0-24 months |ResPak         |PAKISTAN     |10      |           0|      2|  204|
|0-24 months |ResPak         |PAKISTAN     |10      |           1|      3|  204|
|0-24 months |ResPak         |PAKISTAN     |11      |           0|      1|  204|
|0-24 months |ResPak         |PAKISTAN     |11      |           1|      3|  204|
|0-24 months |ResPak         |PAKISTAN     |12      |           0|      1|  204|
|0-24 months |ResPak         |PAKISTAN     |12      |           1|      1|  204|
|0-24 months |SAS-CompFeed   |INDIA        |1       |           0|     38|  813|
|0-24 months |SAS-CompFeed   |INDIA        |1       |           1|     28|  813|
|0-24 months |SAS-CompFeed   |INDIA        |2       |           0|     35|  813|
|0-24 months |SAS-CompFeed   |INDIA        |2       |           1|     15|  813|
|0-24 months |SAS-CompFeed   |INDIA        |3       |           0|     21|  813|
|0-24 months |SAS-CompFeed   |INDIA        |3       |           1|     11|  813|
|0-24 months |SAS-CompFeed   |INDIA        |4       |           0|     20|  813|
|0-24 months |SAS-CompFeed   |INDIA        |4       |           1|     11|  813|
|0-24 months |SAS-CompFeed   |INDIA        |5       |           0|     43|  813|
|0-24 months |SAS-CompFeed   |INDIA        |5       |           1|     30|  813|
|0-24 months |SAS-CompFeed   |INDIA        |6       |           0|     46|  813|
|0-24 months |SAS-CompFeed   |INDIA        |6       |           1|     19|  813|
|0-24 months |SAS-CompFeed   |INDIA        |7       |           0|     30|  813|
|0-24 months |SAS-CompFeed   |INDIA        |7       |           1|     35|  813|
|0-24 months |SAS-CompFeed   |INDIA        |8       |           0|     56|  813|
|0-24 months |SAS-CompFeed   |INDIA        |8       |           1|     38|  813|
|0-24 months |SAS-CompFeed   |INDIA        |9       |           0|     68|  813|
|0-24 months |SAS-CompFeed   |INDIA        |9       |           1|     36|  813|
|0-24 months |SAS-CompFeed   |INDIA        |10      |           0|     62|  813|
|0-24 months |SAS-CompFeed   |INDIA        |10      |           1|     29|  813|
|0-24 months |SAS-CompFeed   |INDIA        |11      |           0|     49|  813|
|0-24 months |SAS-CompFeed   |INDIA        |11      |           1|     30|  813|
|0-24 months |SAS-CompFeed   |INDIA        |12      |           0|     36|  813|
|0-24 months |SAS-CompFeed   |INDIA        |12      |           1|     27|  813|
|0-24 months |SAS-FoodSuppl  |INDIA        |1       |           0|      7|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |1       |           1|      1|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |2       |           0|     20|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |2       |           1|      1|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |3       |           0|     15|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |3       |           1|      1|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |4       |           0|      4|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |4       |           1|      0|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |5       |           0|      9|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |5       |           1|      0|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |6       |           0|     11|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |6       |           1|      0|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |7       |           0|     15|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |7       |           1|      3|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |8       |           0|     39|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |8       |           1|      3|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |9       |           0|     32|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |9       |           1|      1|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |10      |           0|     27|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |10      |           1|      2|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |11      |           0|     18|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |11      |           1|      0|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |12      |           0|     24|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |12      |           1|      1|  234|
|0-24 months |TanzaniaChild2 |TANZANIA     |1       |           0|     13|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |1       |           1|     28|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |2       |           0|     14|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |2       |           1|     30|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |3       |           0|     19|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |3       |           1|     29|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |4       |           0|     16|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |4       |           1|     36|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |5       |           0|     22|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |5       |           1|     27|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |6       |           0|     23|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |6       |           1|     31|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |7       |           0|     30|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |7       |           1|     53|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |8       |           0|     27|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |8       |           1|     49|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |9       |           0|     24|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |9       |           1|     38|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |10      |           0|     35|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |10      |           1|     49|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |11      |           0|     20|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |11      |           1|     37|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |12      |           0|     23|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |12      |           1|     40|  713|
|0-24 months |Vellore Crypto |INDIA        |1       |           0|     16|  395|
|0-24 months |Vellore Crypto |INDIA        |1       |           1|     18|  395|
|0-24 months |Vellore Crypto |INDIA        |2       |           0|      4|  395|
|0-24 months |Vellore Crypto |INDIA        |2       |           1|     10|  395|
|0-24 months |Vellore Crypto |INDIA        |3       |           0|     12|  395|
|0-24 months |Vellore Crypto |INDIA        |3       |           1|     24|  395|
|0-24 months |Vellore Crypto |INDIA        |4       |           0|      8|  395|
|0-24 months |Vellore Crypto |INDIA        |4       |           1|      3|  395|
|0-24 months |Vellore Crypto |INDIA        |5       |           0|      4|  395|
|0-24 months |Vellore Crypto |INDIA        |5       |           1|     15|  395|
|0-24 months |Vellore Crypto |INDIA        |6       |           0|     21|  395|
|0-24 months |Vellore Crypto |INDIA        |6       |           1|     37|  395|
|0-24 months |Vellore Crypto |INDIA        |7       |           0|      9|  395|
|0-24 months |Vellore Crypto |INDIA        |7       |           1|     21|  395|
|0-24 months |Vellore Crypto |INDIA        |8       |           0|     26|  395|
|0-24 months |Vellore Crypto |INDIA        |8       |           1|     27|  395|
|0-24 months |Vellore Crypto |INDIA        |9       |           0|     16|  395|
|0-24 months |Vellore Crypto |INDIA        |9       |           1|     21|  395|
|0-24 months |Vellore Crypto |INDIA        |10      |           0|     15|  395|
|0-24 months |Vellore Crypto |INDIA        |10      |           1|     20|  395|
|0-24 months |Vellore Crypto |INDIA        |11      |           0|     19|  395|
|0-24 months |Vellore Crypto |INDIA        |11      |           1|     18|  395|
|0-24 months |Vellore Crypto |INDIA        |12      |           0|     12|  395|
|0-24 months |Vellore Crypto |INDIA        |12      |           1|     19|  395|
|0-24 months |ZVITAMBO       |ZIMBABWE     |1       |           0|    153| 3610|
|0-24 months |ZVITAMBO       |ZIMBABWE     |1       |           1|    183| 3610|
|0-24 months |ZVITAMBO       |ZIMBABWE     |2       |           0|    138| 3610|
|0-24 months |ZVITAMBO       |ZIMBABWE     |2       |           1|    132| 3610|
|0-24 months |ZVITAMBO       |ZIMBABWE     |3       |           0|    134| 3610|
|0-24 months |ZVITAMBO       |ZIMBABWE     |3       |           1|    158| 3610|
|0-24 months |ZVITAMBO       |ZIMBABWE     |4       |           0|     96| 3610|
|0-24 months |ZVITAMBO       |ZIMBABWE     |4       |           1|    135| 3610|
|0-24 months |ZVITAMBO       |ZIMBABWE     |5       |           0|    127| 3610|
|0-24 months |ZVITAMBO       |ZIMBABWE     |5       |           1|    146| 3610|
|0-24 months |ZVITAMBO       |ZIMBABWE     |6       |           0|    144| 3610|
|0-24 months |ZVITAMBO       |ZIMBABWE     |6       |           1|    167| 3610|
|0-24 months |ZVITAMBO       |ZIMBABWE     |7       |           0|    140| 3610|
|0-24 months |ZVITAMBO       |ZIMBABWE     |7       |           1|    188| 3610|
|0-24 months |ZVITAMBO       |ZIMBABWE     |8       |           0|    164| 3610|
|0-24 months |ZVITAMBO       |ZIMBABWE     |8       |           1|    198| 3610|
|0-24 months |ZVITAMBO       |ZIMBABWE     |9       |           0|    149| 3610|
|0-24 months |ZVITAMBO       |ZIMBABWE     |9       |           1|    189| 3610|
|0-24 months |ZVITAMBO       |ZIMBABWE     |10      |           0|    121| 3610|
|0-24 months |ZVITAMBO       |ZIMBABWE     |10      |           1|    142| 3610|
|0-24 months |ZVITAMBO       |ZIMBABWE     |11      |           0|    130| 3610|
|0-24 months |ZVITAMBO       |ZIMBABWE     |11      |           1|    168| 3610|
|0-24 months |ZVITAMBO       |ZIMBABWE     |12      |           0|    153| 3610|
|0-24 months |ZVITAMBO       |ZIMBABWE     |12      |           1|    155| 3610|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1       |           0|      2|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1       |           1|      8|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |2       |           0|      2|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |2       |           1|     11|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |3       |           0|      5|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |3       |           1|      9|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |4       |           0|     10|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |4       |           1|     10|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |5       |           0|      4|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |5       |           1|     11|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |6       |           0|      9|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |6       |           1|      8|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |7       |           0|      3|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |7       |           1|     19|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |8       |           0|      5|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |8       |           1|     15|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |9       |           0|      7|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |9       |           1|      6|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |10      |           0|      4|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |10      |           1|      8|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |11      |           0|     10|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |11      |           1|     21|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |12      |           0|      5|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |12      |           1|      9|  201|
|0-6 months  |CMIN           |BANGLADESH   |1       |           0|      5|   52|
|0-6 months  |CMIN           |BANGLADESH   |1       |           1|      1|   52|
|0-6 months  |CMIN           |BANGLADESH   |2       |           0|      3|   52|
|0-6 months  |CMIN           |BANGLADESH   |2       |           1|      4|   52|
|0-6 months  |CMIN           |BANGLADESH   |3       |           0|      3|   52|
|0-6 months  |CMIN           |BANGLADESH   |3       |           1|      3|   52|
|0-6 months  |CMIN           |BANGLADESH   |4       |           0|      0|   52|
|0-6 months  |CMIN           |BANGLADESH   |4       |           1|      1|   52|
|0-6 months  |CMIN           |BANGLADESH   |5       |           0|      2|   52|
|0-6 months  |CMIN           |BANGLADESH   |5       |           1|      2|   52|
|0-6 months  |CMIN           |BANGLADESH   |6       |           0|      0|   52|
|0-6 months  |CMIN           |BANGLADESH   |6       |           1|      4|   52|
|0-6 months  |CMIN           |BANGLADESH   |7       |           0|      1|   52|
|0-6 months  |CMIN           |BANGLADESH   |7       |           1|      0|   52|
|0-6 months  |CMIN           |BANGLADESH   |8       |           0|      3|   52|
|0-6 months  |CMIN           |BANGLADESH   |8       |           1|      2|   52|
|0-6 months  |CMIN           |BANGLADESH   |9       |           0|      0|   52|
|0-6 months  |CMIN           |BANGLADESH   |9       |           1|      0|   52|
|0-6 months  |CMIN           |BANGLADESH   |10      |           0|      2|   52|
|0-6 months  |CMIN           |BANGLADESH   |10      |           1|      3|   52|
|0-6 months  |CMIN           |BANGLADESH   |11      |           0|      3|   52|
|0-6 months  |CMIN           |BANGLADESH   |11      |           1|      4|   52|
|0-6 months  |CMIN           |BANGLADESH   |12      |           0|      3|   52|
|0-6 months  |CMIN           |BANGLADESH   |12      |           1|      3|   52|
|0-6 months  |CONTENT        |PERU         |1       |           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |1       |           1|      1|    4|
|0-6 months  |CONTENT        |PERU         |2       |           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |2       |           1|      2|    4|
|0-6 months  |CONTENT        |PERU         |3       |           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |3       |           1|      1|    4|
|0-6 months  |CONTENT        |PERU         |4       |           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |4       |           1|      0|    4|
|0-6 months  |CONTENT        |PERU         |5       |           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |5       |           1|      0|    4|
|0-6 months  |CONTENT        |PERU         |6       |           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |6       |           1|      0|    4|
|0-6 months  |CONTENT        |PERU         |7       |           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |7       |           1|      0|    4|
|0-6 months  |CONTENT        |PERU         |8       |           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |8       |           1|      0|    4|
|0-6 months  |CONTENT        |PERU         |9       |           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |9       |           1|      0|    4|
|0-6 months  |CONTENT        |PERU         |10      |           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |10      |           1|      0|    4|
|0-6 months  |CONTENT        |PERU         |11      |           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |11      |           1|      0|    4|
|0-6 months  |CONTENT        |PERU         |12      |           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |12      |           1|      0|    4|
|0-6 months  |EE             |PAKISTAN     |1       |           0|     23|  127|
|0-6 months  |EE             |PAKISTAN     |1       |           1|     21|  127|
|0-6 months  |EE             |PAKISTAN     |2       |           0|      6|  127|
|0-6 months  |EE             |PAKISTAN     |2       |           1|      6|  127|
|0-6 months  |EE             |PAKISTAN     |3       |           0|      1|  127|
|0-6 months  |EE             |PAKISTAN     |3       |           1|     10|  127|
|0-6 months  |EE             |PAKISTAN     |4       |           0|      4|  127|
|0-6 months  |EE             |PAKISTAN     |4       |           1|      4|  127|
|0-6 months  |EE             |PAKISTAN     |5       |           0|      0|  127|
|0-6 months  |EE             |PAKISTAN     |5       |           1|      0|  127|
|0-6 months  |EE             |PAKISTAN     |6       |           0|      0|  127|
|0-6 months  |EE             |PAKISTAN     |6       |           1|      0|  127|
|0-6 months  |EE             |PAKISTAN     |7       |           0|      0|  127|
|0-6 months  |EE             |PAKISTAN     |7       |           1|      0|  127|
|0-6 months  |EE             |PAKISTAN     |8       |           0|      0|  127|
|0-6 months  |EE             |PAKISTAN     |8       |           1|      0|  127|
|0-6 months  |EE             |PAKISTAN     |9       |           0|      0|  127|
|0-6 months  |EE             |PAKISTAN     |9       |           1|      0|  127|
|0-6 months  |EE             |PAKISTAN     |10      |           0|      0|  127|
|0-6 months  |EE             |PAKISTAN     |10      |           1|      0|  127|
|0-6 months  |EE             |PAKISTAN     |11      |           0|     10|  127|
|0-6 months  |EE             |PAKISTAN     |11      |           1|     20|  127|
|0-6 months  |EE             |PAKISTAN     |12      |           0|     11|  127|
|0-6 months  |EE             |PAKISTAN     |12      |           1|     11|  127|
|0-6 months  |GMS-Nepal      |NEPAL        |1       |           0|      0|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |1       |           1|      0|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |2       |           0|      0|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |2       |           1|      0|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |3       |           0|      0|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |3       |           1|      0|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |4       |           0|      0|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |4       |           1|      0|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |5       |           0|      0|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |5       |           1|      0|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |6       |           0|     23|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |6       |           1|     33|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |7       |           0|     45|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |7       |           1|     66|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |8       |           0|     36|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |8       |           1|     60|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |9       |           0|      0|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |9       |           1|      0|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |10      |           0|      0|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |10      |           1|      0|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |11      |           0|      0|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |11      |           1|      0|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |12      |           0|      0|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |12      |           1|      0|  263|
|0-6 months  |Guatemala BSC  |GUATEMALA    |1       |           0|      0|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |1       |           1|      1|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |2       |           0|      0|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |2       |           1|      0|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |3       |           0|      0|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |3       |           1|      0|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |4       |           0|      3|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |4       |           1|      1|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |5       |           0|      0|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |5       |           1|      0|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |6       |           0|      0|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |6       |           1|      0|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |7       |           0|      0|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |7       |           1|      0|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |8       |           0|      1|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |8       |           1|      1|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |9       |           0|      1|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |9       |           1|      0|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |10      |           0|      1|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |10      |           1|      1|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |11      |           0|      0|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |11      |           1|      0|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |12      |           0|      0|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |12      |           1|      0|   10|
|0-6 months  |JiVitA-3       |BANGLADESH   |1       |           0|    133| 4731|
|0-6 months  |JiVitA-3       |BANGLADESH   |1       |           1|    290| 4731|
|0-6 months  |JiVitA-3       |BANGLADESH   |2       |           0|    100| 4731|
|0-6 months  |JiVitA-3       |BANGLADESH   |2       |           1|    247| 4731|
|0-6 months  |JiVitA-3       |BANGLADESH   |3       |           0|    133| 4731|
|0-6 months  |JiVitA-3       |BANGLADESH   |3       |           1|    280| 4731|
|0-6 months  |JiVitA-3       |BANGLADESH   |4       |           0|     84| 4731|
|0-6 months  |JiVitA-3       |BANGLADESH   |4       |           1|    214| 4731|
|0-6 months  |JiVitA-3       |BANGLADESH   |5       |           0|     62| 4731|
|0-6 months  |JiVitA-3       |BANGLADESH   |5       |           1|    149| 4731|
|0-6 months  |JiVitA-3       |BANGLADESH   |6       |           0|     64| 4731|
|0-6 months  |JiVitA-3       |BANGLADESH   |6       |           1|    182| 4731|
|0-6 months  |JiVitA-3       |BANGLADESH   |7       |           0|     76| 4731|
|0-6 months  |JiVitA-3       |BANGLADESH   |7       |           1|    189| 4731|
|0-6 months  |JiVitA-3       |BANGLADESH   |8       |           0|    120| 4731|
|0-6 months  |JiVitA-3       |BANGLADESH   |8       |           1|    228| 4731|
|0-6 months  |JiVitA-3       |BANGLADESH   |9       |           0|    155| 4731|
|0-6 months  |JiVitA-3       |BANGLADESH   |9       |           1|    382| 4731|
|0-6 months  |JiVitA-3       |BANGLADESH   |10      |           0|    204| 4731|
|0-6 months  |JiVitA-3       |BANGLADESH   |10      |           1|    322| 4731|
|0-6 months  |JiVitA-3       |BANGLADESH   |11      |           0|    194| 4731|
|0-6 months  |JiVitA-3       |BANGLADESH   |11      |           1|    357| 4731|
|0-6 months  |JiVitA-3       |BANGLADESH   |12      |           0|    211| 4731|
|0-6 months  |JiVitA-3       |BANGLADESH   |12      |           1|    355| 4731|
|0-6 months  |JiVitA-4       |BANGLADESH   |1       |           0|      0|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |1       |           1|      0|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |2       |           0|     40|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |2       |           1|     44|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |3       |           0|     39|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |3       |           1|     49|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |4       |           0|     36|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |4       |           1|     42|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |5       |           0|     24|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |5       |           1|     35|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |6       |           0|     29|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |6       |           1|     32|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |7       |           0|     25|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |7       |           1|     28|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |8       |           0|     24|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |8       |           1|     33|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |9       |           0|     22|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |9       |           1|     30|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |10      |           0|      5|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |10      |           1|     16|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |11      |           0|      0|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |11      |           1|      0|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |12      |           0|      0|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |12      |           1|      0|  553|
|0-6 months  |Keneba         |GAMBIA       |1       |           0|     23|  724|
|0-6 months  |Keneba         |GAMBIA       |1       |           1|     55|  724|
|0-6 months  |Keneba         |GAMBIA       |2       |           0|     15|  724|
|0-6 months  |Keneba         |GAMBIA       |2       |           1|     49|  724|
|0-6 months  |Keneba         |GAMBIA       |3       |           0|     14|  724|
|0-6 months  |Keneba         |GAMBIA       |3       |           1|     61|  724|
|0-6 months  |Keneba         |GAMBIA       |4       |           0|      7|  724|
|0-6 months  |Keneba         |GAMBIA       |4       |           1|     32|  724|
|0-6 months  |Keneba         |GAMBIA       |5       |           0|     13|  724|
|0-6 months  |Keneba         |GAMBIA       |5       |           1|     40|  724|
|0-6 months  |Keneba         |GAMBIA       |6       |           0|      8|  724|
|0-6 months  |Keneba         |GAMBIA       |6       |           1|     39|  724|
|0-6 months  |Keneba         |GAMBIA       |7       |           0|     10|  724|
|0-6 months  |Keneba         |GAMBIA       |7       |           1|     26|  724|
|0-6 months  |Keneba         |GAMBIA       |8       |           0|     13|  724|
|0-6 months  |Keneba         |GAMBIA       |8       |           1|     54|  724|
|0-6 months  |Keneba         |GAMBIA       |9       |           0|     14|  724|
|0-6 months  |Keneba         |GAMBIA       |9       |           1|     48|  724|
|0-6 months  |Keneba         |GAMBIA       |10      |           0|     21|  724|
|0-6 months  |Keneba         |GAMBIA       |10      |           1|     51|  724|
|0-6 months  |Keneba         |GAMBIA       |11      |           0|      9|  724|
|0-6 months  |Keneba         |GAMBIA       |11      |           1|     52|  724|
|0-6 months  |Keneba         |GAMBIA       |12      |           0|     18|  724|
|0-6 months  |Keneba         |GAMBIA       |12      |           1|     52|  724|
|0-6 months  |LCNI-5         |MALAWI       |1       |           0|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |1       |           1|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |2       |           0|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |2       |           1|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |3       |           0|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |3       |           1|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |4       |           0|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |4       |           1|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |5       |           0|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |5       |           1|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |6       |           0|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |6       |           1|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |7       |           0|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |7       |           1|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |8       |           0|      1|    4|
|0-6 months  |LCNI-5         |MALAWI       |8       |           1|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |9       |           0|      1|    4|
|0-6 months  |LCNI-5         |MALAWI       |9       |           1|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |10      |           0|      1|    4|
|0-6 months  |LCNI-5         |MALAWI       |10      |           1|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |11      |           0|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |11      |           1|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |12      |           0|      1|    4|
|0-6 months  |LCNI-5         |MALAWI       |12      |           1|      0|    4|
|0-6 months  |MAL-ED         |INDIA        |1       |           0|      6|   86|
|0-6 months  |MAL-ED         |INDIA        |1       |           1|      3|   86|
|0-6 months  |MAL-ED         |INDIA        |2       |           0|      1|   86|
|0-6 months  |MAL-ED         |INDIA        |2       |           1|      3|   86|
|0-6 months  |MAL-ED         |INDIA        |3       |           0|      2|   86|
|0-6 months  |MAL-ED         |INDIA        |3       |           1|      6|   86|
|0-6 months  |MAL-ED         |INDIA        |4       |           0|      1|   86|
|0-6 months  |MAL-ED         |INDIA        |4       |           1|      3|   86|
|0-6 months  |MAL-ED         |INDIA        |5       |           0|      0|   86|
|0-6 months  |MAL-ED         |INDIA        |5       |           1|      0|   86|
|0-6 months  |MAL-ED         |INDIA        |6       |           0|      3|   86|
|0-6 months  |MAL-ED         |INDIA        |6       |           1|      2|   86|
|0-6 months  |MAL-ED         |INDIA        |7       |           0|      2|   86|
|0-6 months  |MAL-ED         |INDIA        |7       |           1|      2|   86|
|0-6 months  |MAL-ED         |INDIA        |8       |           0|      0|   86|
|0-6 months  |MAL-ED         |INDIA        |8       |           1|     14|   86|
|0-6 months  |MAL-ED         |INDIA        |9       |           0|      1|   86|
|0-6 months  |MAL-ED         |INDIA        |9       |           1|     10|   86|
|0-6 months  |MAL-ED         |INDIA        |10      |           0|      4|   86|
|0-6 months  |MAL-ED         |INDIA        |10      |           1|      8|   86|
|0-6 months  |MAL-ED         |INDIA        |11      |           0|      4|   86|
|0-6 months  |MAL-ED         |INDIA        |11      |           1|      3|   86|
|0-6 months  |MAL-ED         |INDIA        |12      |           0|      3|   86|
|0-6 months  |MAL-ED         |INDIA        |12      |           1|      5|   86|
|0-6 months  |MAL-ED         |BANGLADESH   |1       |           0|      0|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |1       |           1|      4|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |2       |           0|      0|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |2       |           1|      3|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |3       |           0|      2|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |3       |           1|      7|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |4       |           0|      1|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |4       |           1|      2|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |5       |           0|      1|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |5       |           1|      4|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |6       |           0|      1|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |6       |           1|      1|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |7       |           0|      3|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |7       |           1|      2|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |8       |           0|      1|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |8       |           1|      8|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |9       |           0|      1|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |9       |           1|      3|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |10      |           0|      0|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |10      |           1|      6|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |11      |           0|      1|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |11      |           1|      4|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |12      |           0|      2|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |12      |           1|      6|   63|
|0-6 months  |MAL-ED         |PERU         |1       |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |1       |           1|      1|   11|
|0-6 months  |MAL-ED         |PERU         |2       |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |2       |           1|      0|   11|
|0-6 months  |MAL-ED         |PERU         |3       |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |3       |           1|      2|   11|
|0-6 months  |MAL-ED         |PERU         |4       |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |4       |           1|      2|   11|
|0-6 months  |MAL-ED         |PERU         |5       |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |5       |           1|      0|   11|
|0-6 months  |MAL-ED         |PERU         |6       |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |6       |           1|      0|   11|
|0-6 months  |MAL-ED         |PERU         |7       |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |7       |           1|      2|   11|
|0-6 months  |MAL-ED         |PERU         |8       |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |8       |           1|      0|   11|
|0-6 months  |MAL-ED         |PERU         |9       |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |9       |           1|      1|   11|
|0-6 months  |MAL-ED         |PERU         |10      |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |10      |           1|      0|   11|
|0-6 months  |MAL-ED         |PERU         |11      |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |11      |           1|      1|   11|
|0-6 months  |MAL-ED         |PERU         |12      |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |12      |           1|      2|   11|
|0-6 months  |MAL-ED         |NEPAL        |1       |           0|      1|   48|
|0-6 months  |MAL-ED         |NEPAL        |1       |           1|      7|   48|
|0-6 months  |MAL-ED         |NEPAL        |2       |           0|      2|   48|
|0-6 months  |MAL-ED         |NEPAL        |2       |           1|      6|   48|
|0-6 months  |MAL-ED         |NEPAL        |3       |           0|      1|   48|
|0-6 months  |MAL-ED         |NEPAL        |3       |           1|      3|   48|
|0-6 months  |MAL-ED         |NEPAL        |4       |           0|      1|   48|
|0-6 months  |MAL-ED         |NEPAL        |4       |           1|      1|   48|
|0-6 months  |MAL-ED         |NEPAL        |5       |           0|      1|   48|
|0-6 months  |MAL-ED         |NEPAL        |5       |           1|      4|   48|
|0-6 months  |MAL-ED         |NEPAL        |6       |           0|      0|   48|
|0-6 months  |MAL-ED         |NEPAL        |6       |           1|      3|   48|
|0-6 months  |MAL-ED         |NEPAL        |7       |           0|      1|   48|
|0-6 months  |MAL-ED         |NEPAL        |7       |           1|      2|   48|
|0-6 months  |MAL-ED         |NEPAL        |8       |           0|      2|   48|
|0-6 months  |MAL-ED         |NEPAL        |8       |           1|      5|   48|
|0-6 months  |MAL-ED         |NEPAL        |9       |           0|      0|   48|
|0-6 months  |MAL-ED         |NEPAL        |9       |           1|      1|   48|
|0-6 months  |MAL-ED         |NEPAL        |10      |           0|      0|   48|
|0-6 months  |MAL-ED         |NEPAL        |10      |           1|      1|   48|
|0-6 months  |MAL-ED         |NEPAL        |11      |           0|      0|   48|
|0-6 months  |MAL-ED         |NEPAL        |11      |           1|      2|   48|
|0-6 months  |MAL-ED         |NEPAL        |12      |           0|      0|   48|
|0-6 months  |MAL-ED         |NEPAL        |12      |           1|      4|   48|
|0-6 months  |MAL-ED         |BRAZIL       |1       |           0|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |1       |           1|      1|   15|
|0-6 months  |MAL-ED         |BRAZIL       |2       |           0|      1|   15|
|0-6 months  |MAL-ED         |BRAZIL       |2       |           1|      2|   15|
|0-6 months  |MAL-ED         |BRAZIL       |3       |           0|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |3       |           1|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |4       |           0|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |4       |           1|      1|   15|
|0-6 months  |MAL-ED         |BRAZIL       |5       |           0|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |5       |           1|      1|   15|
|0-6 months  |MAL-ED         |BRAZIL       |6       |           0|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |6       |           1|      1|   15|
|0-6 months  |MAL-ED         |BRAZIL       |7       |           0|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |7       |           1|      2|   15|
|0-6 months  |MAL-ED         |BRAZIL       |8       |           0|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |8       |           1|      4|   15|
|0-6 months  |MAL-ED         |BRAZIL       |9       |           0|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |9       |           1|      1|   15|
|0-6 months  |MAL-ED         |BRAZIL       |10      |           0|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |10      |           1|      1|   15|
|0-6 months  |MAL-ED         |BRAZIL       |11      |           0|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |11      |           1|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |12      |           0|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |12      |           1|      0|   15|
|0-6 months  |MAL-ED         |TANZANIA     |1       |           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |1       |           1|      1|   14|
|0-6 months  |MAL-ED         |TANZANIA     |2       |           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |2       |           1|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |3       |           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |3       |           1|      3|   14|
|0-6 months  |MAL-ED         |TANZANIA     |4       |           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |4       |           1|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |5       |           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |5       |           1|      1|   14|
|0-6 months  |MAL-ED         |TANZANIA     |6       |           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |6       |           1|      1|   14|
|0-6 months  |MAL-ED         |TANZANIA     |7       |           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |7       |           1|      1|   14|
|0-6 months  |MAL-ED         |TANZANIA     |8       |           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |8       |           1|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |9       |           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |9       |           1|      1|   14|
|0-6 months  |MAL-ED         |TANZANIA     |10      |           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |10      |           1|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |11      |           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |11      |           1|      3|   14|
|0-6 months  |MAL-ED         |TANZANIA     |12      |           0|      1|   14|
|0-6 months  |MAL-ED         |TANZANIA     |12      |           1|      2|   14|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1       |           0|      1|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1       |           1|      5|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |2       |           0|      1|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |2       |           1|      1|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |3       |           0|      0|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |3       |           1|      4|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |4       |           0|      1|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |4       |           1|      0|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |5       |           0|      0|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |5       |           1|      0|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |6       |           0|      2|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |6       |           1|      4|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |7       |           0|      0|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |7       |           1|      2|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |8       |           0|      0|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |8       |           1|      0|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |9       |           0|      0|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |9       |           1|      1|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |10      |           0|      0|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |10      |           1|      4|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |11      |           0|      3|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |11      |           1|      1|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |12      |           0|      1|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |12      |           1|      5|   36|
|0-6 months  |NIH-Birth      |BANGLADESH   |1       |           0|      6|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |1       |           1|     21|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |2       |           0|      8|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |2       |           1|     10|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |3       |           0|      6|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |3       |           1|     13|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |4       |           0|      4|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |4       |           1|     19|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |5       |           0|      6|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |5       |           1|     13|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |6       |           0|      8|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |6       |           1|     11|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |7       |           0|      1|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |7       |           1|     12|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |8       |           0|      2|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |8       |           1|     15|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |9       |           0|     12|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |9       |           1|     10|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |10      |           0|      3|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |10      |           1|      9|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |11      |           0|      1|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |11      |           1|     16|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |12      |           0|      7|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |12      |           1|     10|  223|
|0-6 months  |PROBIT         |BELARUS      |1       |           0|     28| 4267|
|0-6 months  |PROBIT         |BELARUS      |1       |           1|    217| 4267|
|0-6 months  |PROBIT         |BELARUS      |2       |           0|     20| 4267|
|0-6 months  |PROBIT         |BELARUS      |2       |           1|    218| 4267|
|0-6 months  |PROBIT         |BELARUS      |3       |           0|     28| 4267|
|0-6 months  |PROBIT         |BELARUS      |3       |           1|    258| 4267|
|0-6 months  |PROBIT         |BELARUS      |4       |           0|     25| 4267|
|0-6 months  |PROBIT         |BELARUS      |4       |           1|    260| 4267|
|0-6 months  |PROBIT         |BELARUS      |5       |           0|     27| 4267|
|0-6 months  |PROBIT         |BELARUS      |5       |           1|    263| 4267|
|0-6 months  |PROBIT         |BELARUS      |6       |           0|     25| 4267|
|0-6 months  |PROBIT         |BELARUS      |6       |           1|    289| 4267|
|0-6 months  |PROBIT         |BELARUS      |7       |           0|     45| 4267|
|0-6 months  |PROBIT         |BELARUS      |7       |           1|    343| 4267|
|0-6 months  |PROBIT         |BELARUS      |8       |           0|     42| 4267|
|0-6 months  |PROBIT         |BELARUS      |8       |           1|    385| 4267|
|0-6 months  |PROBIT         |BELARUS      |9       |           0|     48| 4267|
|0-6 months  |PROBIT         |BELARUS      |9       |           1|    364| 4267|
|0-6 months  |PROBIT         |BELARUS      |10      |           0|     49| 4267|
|0-6 months  |PROBIT         |BELARUS      |10      |           1|    425| 4267|
|0-6 months  |PROBIT         |BELARUS      |11      |           0|     42| 4267|
|0-6 months  |PROBIT         |BELARUS      |11      |           1|    392| 4267|
|0-6 months  |PROBIT         |BELARUS      |12      |           0|     44| 4267|
|0-6 months  |PROBIT         |BELARUS      |12      |           1|    430| 4267|
|0-6 months  |PROVIDE        |BANGLADESH   |1       |           0|      2|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |1       |           1|      9|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |2       |           0|      1|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |2       |           1|      3|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |3       |           0|      1|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |3       |           1|     14|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |4       |           0|      4|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |4       |           1|      3|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |5       |           0|      3|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |5       |           1|      9|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |6       |           0|      7|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |6       |           1|     20|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |7       |           0|     13|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |7       |           1|     18|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |8       |           0|      2|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |8       |           1|     14|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |9       |           0|      3|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |9       |           1|     24|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |10      |           0|      2|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |10      |           1|     20|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |11      |           0|      1|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |11      |           1|      7|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |12      |           0|      1|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |12      |           1|      4|  185|
|0-6 months  |ResPak         |PAKISTAN     |1       |           0|      1|  113|
|0-6 months  |ResPak         |PAKISTAN     |1       |           1|      3|  113|
|0-6 months  |ResPak         |PAKISTAN     |2       |           0|      1|  113|
|0-6 months  |ResPak         |PAKISTAN     |2       |           1|      5|  113|
|0-6 months  |ResPak         |PAKISTAN     |3       |           0|      6|  113|
|0-6 months  |ResPak         |PAKISTAN     |3       |           1|      8|  113|
|0-6 months  |ResPak         |PAKISTAN     |4       |           0|      6|  113|
|0-6 months  |ResPak         |PAKISTAN     |4       |           1|      7|  113|
|0-6 months  |ResPak         |PAKISTAN     |5       |           0|      8|  113|
|0-6 months  |ResPak         |PAKISTAN     |5       |           1|      7|  113|
|0-6 months  |ResPak         |PAKISTAN     |6       |           0|      9|  113|
|0-6 months  |ResPak         |PAKISTAN     |6       |           1|     11|  113|
|0-6 months  |ResPak         |PAKISTAN     |7       |           0|      1|  113|
|0-6 months  |ResPak         |PAKISTAN     |7       |           1|      5|  113|
|0-6 months  |ResPak         |PAKISTAN     |8       |           0|      4|  113|
|0-6 months  |ResPak         |PAKISTAN     |8       |           1|      6|  113|
|0-6 months  |ResPak         |PAKISTAN     |9       |           0|      4|  113|
|0-6 months  |ResPak         |PAKISTAN     |9       |           1|     12|  113|
|0-6 months  |ResPak         |PAKISTAN     |10      |           0|      2|  113|
|0-6 months  |ResPak         |PAKISTAN     |10      |           1|      3|  113|
|0-6 months  |ResPak         |PAKISTAN     |11      |           0|      0|  113|
|0-6 months  |ResPak         |PAKISTAN     |11      |           1|      2|  113|
|0-6 months  |ResPak         |PAKISTAN     |12      |           0|      1|  113|
|0-6 months  |ResPak         |PAKISTAN     |12      |           1|      1|  113|
|0-6 months  |SAS-CompFeed   |INDIA        |1       |           0|     15|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |1       |           1|     19|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |2       |           0|     14|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |2       |           1|     11|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |3       |           0|     12|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |3       |           1|      7|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |4       |           0|      7|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |4       |           1|      4|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |5       |           0|     13|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |5       |           1|     22|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |6       |           0|     22|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |6       |           1|      9|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |7       |           0|      7|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |7       |           1|     18|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |8       |           0|     16|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |8       |           1|     19|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |9       |           0|     19|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |9       |           1|     22|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |10      |           0|     19|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |10      |           1|     15|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |11      |           0|     12|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |11      |           1|     17|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |12      |           0|     10|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |12      |           1|     12|  341|
|0-6 months  |SAS-FoodSuppl  |INDIA        |1       |           0|      2|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |1       |           1|      0|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |2       |           0|      7|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |2       |           1|      0|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |3       |           0|      5|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |3       |           1|      0|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |4       |           0|      2|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |4       |           1|      0|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |5       |           0|      1|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |5       |           1|      0|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |6       |           0|      1|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |6       |           1|      0|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |7       |           0|      5|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |7       |           1|      0|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |8       |           0|     11|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |8       |           1|      0|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |9       |           0|     14|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |9       |           1|      0|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |10      |           0|     12|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |10      |           1|      0|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |11      |           0|     11|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |11      |           1|      0|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |12      |           0|      7|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |12      |           1|      0|   78|
|0-6 months  |TanzaniaChild2 |TANZANIA     |1       |           0|      3|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |1       |           1|     16|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |2       |           0|      6|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |2       |           1|     15|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |3       |           0|      7|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |3       |           1|     11|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |4       |           0|      7|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |4       |           1|     25|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |5       |           0|      8|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |5       |           1|     15|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |6       |           0|      5|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |6       |           1|     14|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |7       |           0|     10|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |7       |           1|     24|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |8       |           0|      9|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |8       |           1|     26|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |9       |           0|      9|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |9       |           1|     17|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |10      |           0|     19|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |10      |           1|     30|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |11      |           0|      8|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |11      |           1|     21|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |12      |           0|     10|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |12      |           1|     25|  340|
|0-6 months  |Vellore Crypto |INDIA        |1       |           0|      8|  240|
|0-6 months  |Vellore Crypto |INDIA        |1       |           1|     11|  240|
|0-6 months  |Vellore Crypto |INDIA        |2       |           0|      1|  240|
|0-6 months  |Vellore Crypto |INDIA        |2       |           1|      6|  240|
|0-6 months  |Vellore Crypto |INDIA        |3       |           0|      8|  240|
|0-6 months  |Vellore Crypto |INDIA        |3       |           1|     12|  240|
|0-6 months  |Vellore Crypto |INDIA        |4       |           0|      5|  240|
|0-6 months  |Vellore Crypto |INDIA        |4       |           1|      2|  240|
|0-6 months  |Vellore Crypto |INDIA        |5       |           0|      4|  240|
|0-6 months  |Vellore Crypto |INDIA        |5       |           1|      9|  240|
|0-6 months  |Vellore Crypto |INDIA        |6       |           0|     10|  240|
|0-6 months  |Vellore Crypto |INDIA        |6       |           1|     23|  240|
|0-6 months  |Vellore Crypto |INDIA        |7       |           0|      6|  240|
|0-6 months  |Vellore Crypto |INDIA        |7       |           1|     13|  240|
|0-6 months  |Vellore Crypto |INDIA        |8       |           0|     13|  240|
|0-6 months  |Vellore Crypto |INDIA        |8       |           1|     18|  240|
|0-6 months  |Vellore Crypto |INDIA        |9       |           0|      9|  240|
|0-6 months  |Vellore Crypto |INDIA        |9       |           1|     16|  240|
|0-6 months  |Vellore Crypto |INDIA        |10      |           0|      8|  240|
|0-6 months  |Vellore Crypto |INDIA        |10      |           1|     14|  240|
|0-6 months  |Vellore Crypto |INDIA        |11      |           0|      8|  240|
|0-6 months  |Vellore Crypto |INDIA        |11      |           1|     14|  240|
|0-6 months  |Vellore Crypto |INDIA        |12      |           0|      7|  240|
|0-6 months  |Vellore Crypto |INDIA        |12      |           1|     15|  240|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |1       |           0|     52| 2516|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |1       |           1|    176| 2516|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |2       |           0|     56| 2516|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |2       |           1|    127| 2516|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |3       |           0|     44| 2516|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |3       |           1|    154| 2516|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |4       |           0|     31| 2516|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |4       |           1|    132| 2516|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |5       |           0|     51| 2516|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |5       |           1|    134| 2516|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |6       |           0|     58| 2516|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |6       |           1|    162| 2516|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |7       |           0|     54| 2516|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |7       |           1|    180| 2516|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |8       |           0|     59| 2516|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |8       |           1|    190| 2516|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |9       |           0|     67| 2516|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |9       |           1|    180| 2516|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |10      |           0|     49| 2516|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |10      |           1|    139| 2516|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |11      |           0|     59| 2516|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |11      |           1|    161| 2516|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |12      |           0|     56| 2516|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |12      |           1|    145| 2516|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1       |           0|      4|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1       |           1|      5|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |2       |           0|      2|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |2       |           1|      3|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |3       |           0|      3|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |3       |           1|      1|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |4       |           0|      6|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |4       |           1|      6|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |5       |           0|      4|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |5       |           1|      3|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |6       |           0|      3|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |6       |           1|      6|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |7       |           0|     10|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |7       |           1|      8|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |8       |           0|      2|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |8       |           1|      9|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |9       |           0|      4|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |9       |           1|      6|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |10      |           0|      3|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |10      |           1|      4|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |11      |           0|      9|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |11      |           1|     10|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |12      |           0|      4|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |12      |           1|      8|  123|
|6-24 months |CMIN           |BANGLADESH   |1       |           0|      5|  137|
|6-24 months |CMIN           |BANGLADESH   |1       |           1|      7|  137|
|6-24 months |CMIN           |BANGLADESH   |2       |           0|      1|  137|
|6-24 months |CMIN           |BANGLADESH   |2       |           1|      8|  137|
|6-24 months |CMIN           |BANGLADESH   |3       |           0|      2|  137|
|6-24 months |CMIN           |BANGLADESH   |3       |           1|     11|  137|
|6-24 months |CMIN           |BANGLADESH   |4       |           0|      4|  137|
|6-24 months |CMIN           |BANGLADESH   |4       |           1|      4|  137|
|6-24 months |CMIN           |BANGLADESH   |5       |           0|      4|  137|
|6-24 months |CMIN           |BANGLADESH   |5       |           1|      2|  137|
|6-24 months |CMIN           |BANGLADESH   |6       |           0|      2|  137|
|6-24 months |CMIN           |BANGLADESH   |6       |           1|      3|  137|
|6-24 months |CMIN           |BANGLADESH   |7       |           0|      2|  137|
|6-24 months |CMIN           |BANGLADESH   |7       |           1|      6|  137|
|6-24 months |CMIN           |BANGLADESH   |8       |           0|      6|  137|
|6-24 months |CMIN           |BANGLADESH   |8       |           1|      8|  137|
|6-24 months |CMIN           |BANGLADESH   |9       |           0|      3|  137|
|6-24 months |CMIN           |BANGLADESH   |9       |           1|      8|  137|
|6-24 months |CMIN           |BANGLADESH   |10      |           0|      7|  137|
|6-24 months |CMIN           |BANGLADESH   |10      |           1|      6|  137|
|6-24 months |CMIN           |BANGLADESH   |11      |           0|     10|  137|
|6-24 months |CMIN           |BANGLADESH   |11      |           1|      8|  137|
|6-24 months |CMIN           |BANGLADESH   |12      |           0|      9|  137|
|6-24 months |CMIN           |BANGLADESH   |12      |           1|     11|  137|
|6-24 months |CONTENT        |PERU         |1       |           0|      1|    3|
|6-24 months |CONTENT        |PERU         |1       |           1|      1|    3|
|6-24 months |CONTENT        |PERU         |2       |           0|      0|    3|
|6-24 months |CONTENT        |PERU         |2       |           1|      0|    3|
|6-24 months |CONTENT        |PERU         |3       |           0|      0|    3|
|6-24 months |CONTENT        |PERU         |3       |           1|      0|    3|
|6-24 months |CONTENT        |PERU         |4       |           0|      0|    3|
|6-24 months |CONTENT        |PERU         |4       |           1|      0|    3|
|6-24 months |CONTENT        |PERU         |5       |           0|      0|    3|
|6-24 months |CONTENT        |PERU         |5       |           1|      0|    3|
|6-24 months |CONTENT        |PERU         |6       |           0|      0|    3|
|6-24 months |CONTENT        |PERU         |6       |           1|      0|    3|
|6-24 months |CONTENT        |PERU         |7       |           0|      0|    3|
|6-24 months |CONTENT        |PERU         |7       |           1|      1|    3|
|6-24 months |CONTENT        |PERU         |8       |           0|      0|    3|
|6-24 months |CONTENT        |PERU         |8       |           1|      0|    3|
|6-24 months |CONTENT        |PERU         |9       |           0|      0|    3|
|6-24 months |CONTENT        |PERU         |9       |           1|      0|    3|
|6-24 months |CONTENT        |PERU         |10      |           0|      0|    3|
|6-24 months |CONTENT        |PERU         |10      |           1|      0|    3|
|6-24 months |CONTENT        |PERU         |11      |           0|      0|    3|
|6-24 months |CONTENT        |PERU         |11      |           1|      0|    3|
|6-24 months |CONTENT        |PERU         |12      |           0|      0|    3|
|6-24 months |CONTENT        |PERU         |12      |           1|      0|    3|
|6-24 months |EE             |PAKISTAN     |1       |           0|     32|  196|
|6-24 months |EE             |PAKISTAN     |1       |           1|     20|  196|
|6-24 months |EE             |PAKISTAN     |2       |           0|     15|  196|
|6-24 months |EE             |PAKISTAN     |2       |           1|     10|  196|
|6-24 months |EE             |PAKISTAN     |3       |           0|     11|  196|
|6-24 months |EE             |PAKISTAN     |3       |           1|     15|  196|
|6-24 months |EE             |PAKISTAN     |4       |           0|      7|  196|
|6-24 months |EE             |PAKISTAN     |4       |           1|      2|  196|
|6-24 months |EE             |PAKISTAN     |5       |           0|      0|  196|
|6-24 months |EE             |PAKISTAN     |5       |           1|      0|  196|
|6-24 months |EE             |PAKISTAN     |6       |           0|      0|  196|
|6-24 months |EE             |PAKISTAN     |6       |           1|      0|  196|
|6-24 months |EE             |PAKISTAN     |7       |           0|      0|  196|
|6-24 months |EE             |PAKISTAN     |7       |           1|      0|  196|
|6-24 months |EE             |PAKISTAN     |8       |           0|      0|  196|
|6-24 months |EE             |PAKISTAN     |8       |           1|      0|  196|
|6-24 months |EE             |PAKISTAN     |9       |           0|      0|  196|
|6-24 months |EE             |PAKISTAN     |9       |           1|      0|  196|
|6-24 months |EE             |PAKISTAN     |10      |           0|      0|  196|
|6-24 months |EE             |PAKISTAN     |10      |           1|      0|  196|
|6-24 months |EE             |PAKISTAN     |11      |           0|     18|  196|
|6-24 months |EE             |PAKISTAN     |11      |           1|     26|  196|
|6-24 months |EE             |PAKISTAN     |12      |           0|     22|  196|
|6-24 months |EE             |PAKISTAN     |12      |           1|     18|  196|
|6-24 months |GMS-Nepal      |NEPAL        |1       |           0|      0|  380|
|6-24 months |GMS-Nepal      |NEPAL        |1       |           1|      0|  380|
|6-24 months |GMS-Nepal      |NEPAL        |2       |           0|      0|  380|
|6-24 months |GMS-Nepal      |NEPAL        |2       |           1|      0|  380|
|6-24 months |GMS-Nepal      |NEPAL        |3       |           0|      0|  380|
|6-24 months |GMS-Nepal      |NEPAL        |3       |           1|      0|  380|
|6-24 months |GMS-Nepal      |NEPAL        |4       |           0|      0|  380|
|6-24 months |GMS-Nepal      |NEPAL        |4       |           1|      0|  380|
|6-24 months |GMS-Nepal      |NEPAL        |5       |           0|      0|  380|
|6-24 months |GMS-Nepal      |NEPAL        |5       |           1|      0|  380|
|6-24 months |GMS-Nepal      |NEPAL        |6       |           0|     46|  380|
|6-24 months |GMS-Nepal      |NEPAL        |6       |           1|     43|  380|
|6-24 months |GMS-Nepal      |NEPAL        |7       |           0|     86|  380|
|6-24 months |GMS-Nepal      |NEPAL        |7       |           1|     78|  380|
|6-24 months |GMS-Nepal      |NEPAL        |8       |           0|     60|  380|
|6-24 months |GMS-Nepal      |NEPAL        |8       |           1|     67|  380|
|6-24 months |GMS-Nepal      |NEPAL        |9       |           0|      0|  380|
|6-24 months |GMS-Nepal      |NEPAL        |9       |           1|      0|  380|
|6-24 months |GMS-Nepal      |NEPAL        |10      |           0|      0|  380|
|6-24 months |GMS-Nepal      |NEPAL        |10      |           1|      0|  380|
|6-24 months |GMS-Nepal      |NEPAL        |11      |           0|      0|  380|
|6-24 months |GMS-Nepal      |NEPAL        |11      |           1|      0|  380|
|6-24 months |GMS-Nepal      |NEPAL        |12      |           0|      0|  380|
|6-24 months |GMS-Nepal      |NEPAL        |12      |           1|      0|  380|
|6-24 months |Guatemala BSC  |GUATEMALA    |1       |           0|      1|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |1       |           1|      2|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |2       |           0|      1|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |2       |           1|      0|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |3       |           0|      1|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |3       |           1|      4|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |4       |           0|      3|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |4       |           1|      0|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |5       |           0|      1|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |5       |           1|      4|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |6       |           0|      3|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |6       |           1|      0|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |7       |           0|      0|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |7       |           1|      1|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |8       |           0|      0|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |8       |           1|      0|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |9       |           0|      2|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |9       |           1|      0|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |10      |           0|      0|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |10      |           1|      0|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |11      |           0|      2|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |11      |           1|      0|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |12      |           0|      1|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |12      |           1|      2|   28|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |1       |           0|     82|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |1       |           1|      5|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |2       |           0|     45|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |2       |           1|      1|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |3       |           0|     50|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |3       |           1|      4|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |4       |           0|     48|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |4       |           1|      3|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |5       |           0|     54|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |5       |           1|      0|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |6       |           0|     51|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |6       |           1|      1|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |7       |           0|     38|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |7       |           1|      2|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |8       |           0|     79|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |8       |           1|      2|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |9       |           0|    117|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |9       |           1|      4|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |10      |           0|     76|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |10      |           1|      4|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |11      |           0|     73|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |11      |           1|      6|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |12      |           0|     71|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |12      |           1|      4|  820|
|6-24 months |JiVitA-3       |BANGLADESH   |1       |           0|    284| 2835|
|6-24 months |JiVitA-3       |BANGLADESH   |1       |           1|      0| 2835|
|6-24 months |JiVitA-3       |BANGLADESH   |2       |           0|    233| 2835|
|6-24 months |JiVitA-3       |BANGLADESH   |2       |           1|      0| 2835|
|6-24 months |JiVitA-3       |BANGLADESH   |3       |           0|    276| 2835|
|6-24 months |JiVitA-3       |BANGLADESH   |3       |           1|      0| 2835|
|6-24 months |JiVitA-3       |BANGLADESH   |4       |           0|    232| 2835|
|6-24 months |JiVitA-3       |BANGLADESH   |4       |           1|      0| 2835|
|6-24 months |JiVitA-3       |BANGLADESH   |5       |           0|    199| 2835|
|6-24 months |JiVitA-3       |BANGLADESH   |5       |           1|      0| 2835|
|6-24 months |JiVitA-3       |BANGLADESH   |6       |           0|    181| 2835|
|6-24 months |JiVitA-3       |BANGLADESH   |6       |           1|      0| 2835|
|6-24 months |JiVitA-3       |BANGLADESH   |7       |           0|    192| 2835|
|6-24 months |JiVitA-3       |BANGLADESH   |7       |           1|      0| 2835|
|6-24 months |JiVitA-3       |BANGLADESH   |8       |           0|    231| 2835|
|6-24 months |JiVitA-3       |BANGLADESH   |8       |           1|      0| 2835|
|6-24 months |JiVitA-3       |BANGLADESH   |9       |           0|    273| 2835|
|6-24 months |JiVitA-3       |BANGLADESH   |9       |           1|      0| 2835|
|6-24 months |JiVitA-3       |BANGLADESH   |10      |           0|    228| 2835|
|6-24 months |JiVitA-3       |BANGLADESH   |10      |           1|      0| 2835|
|6-24 months |JiVitA-3       |BANGLADESH   |11      |           0|    259| 2835|
|6-24 months |JiVitA-3       |BANGLADESH   |11      |           1|      0| 2835|
|6-24 months |JiVitA-3       |BANGLADESH   |12      |           0|    247| 2835|
|6-24 months |JiVitA-3       |BANGLADESH   |12      |           1|      0| 2835|
|6-24 months |JiVitA-4       |BANGLADESH   |1       |           0|      0| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |1       |           1|      0| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |2       |           0|    212| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |2       |           1|     34| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |3       |           0|    251| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |3       |           1|     36| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |4       |           0|    207| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |4       |           1|     37| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |5       |           0|    144| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |5       |           1|     35| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |6       |           0|    106| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |6       |           1|     19| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |7       |           0|    102| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |7       |           1|     16| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |8       |           0|    149| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |8       |           1|     24| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |9       |           0|     88| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |9       |           1|     19| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |10      |           0|     30| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |10      |           1|      6| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |11      |           0|      0| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |11      |           1|      0| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |12      |           0|      0| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |12      |           1|      0| 1515|
|6-24 months |Keneba         |GAMBIA       |1       |           0|     60| 1104|
|6-24 months |Keneba         |GAMBIA       |1       |           1|     67| 1104|
|6-24 months |Keneba         |GAMBIA       |2       |           0|     50| 1104|
|6-24 months |Keneba         |GAMBIA       |2       |           1|     63| 1104|
|6-24 months |Keneba         |GAMBIA       |3       |           0|     60| 1104|
|6-24 months |Keneba         |GAMBIA       |3       |           1|     54| 1104|
|6-24 months |Keneba         |GAMBIA       |4       |           0|     30| 1104|
|6-24 months |Keneba         |GAMBIA       |4       |           1|     38| 1104|
|6-24 months |Keneba         |GAMBIA       |5       |           0|     38| 1104|
|6-24 months |Keneba         |GAMBIA       |5       |           1|     40| 1104|
|6-24 months |Keneba         |GAMBIA       |6       |           0|     31| 1104|
|6-24 months |Keneba         |GAMBIA       |6       |           1|     28| 1104|
|6-24 months |Keneba         |GAMBIA       |7       |           0|     16| 1104|
|6-24 months |Keneba         |GAMBIA       |7       |           1|     22| 1104|
|6-24 months |Keneba         |GAMBIA       |8       |           0|     52| 1104|
|6-24 months |Keneba         |GAMBIA       |8       |           1|     40| 1104|
|6-24 months |Keneba         |GAMBIA       |9       |           0|     48| 1104|
|6-24 months |Keneba         |GAMBIA       |9       |           1|     48| 1104|
|6-24 months |Keneba         |GAMBIA       |10      |           0|     69| 1104|
|6-24 months |Keneba         |GAMBIA       |10      |           1|     62| 1104|
|6-24 months |Keneba         |GAMBIA       |11      |           0|     39| 1104|
|6-24 months |Keneba         |GAMBIA       |11      |           1|     55| 1104|
|6-24 months |Keneba         |GAMBIA       |12      |           0|     54| 1104|
|6-24 months |Keneba         |GAMBIA       |12      |           1|     40| 1104|
|6-24 months |LCNI-5         |MALAWI       |1       |           0|      3|   75|
|6-24 months |LCNI-5         |MALAWI       |1       |           1|      0|   75|
|6-24 months |LCNI-5         |MALAWI       |2       |           0|      1|   75|
|6-24 months |LCNI-5         |MALAWI       |2       |           1|      1|   75|
|6-24 months |LCNI-5         |MALAWI       |3       |           0|      0|   75|
|6-24 months |LCNI-5         |MALAWI       |3       |           1|      0|   75|
|6-24 months |LCNI-5         |MALAWI       |4       |           0|      1|   75|
|6-24 months |LCNI-5         |MALAWI       |4       |           1|      1|   75|
|6-24 months |LCNI-5         |MALAWI       |5       |           0|      2|   75|
|6-24 months |LCNI-5         |MALAWI       |5       |           1|      0|   75|
|6-24 months |LCNI-5         |MALAWI       |6       |           0|      3|   75|
|6-24 months |LCNI-5         |MALAWI       |6       |           1|      1|   75|
|6-24 months |LCNI-5         |MALAWI       |7       |           0|      3|   75|
|6-24 months |LCNI-5         |MALAWI       |7       |           1|      0|   75|
|6-24 months |LCNI-5         |MALAWI       |8       |           0|      3|   75|
|6-24 months |LCNI-5         |MALAWI       |8       |           1|      4|   75|
|6-24 months |LCNI-5         |MALAWI       |9       |           0|     11|   75|
|6-24 months |LCNI-5         |MALAWI       |9       |           1|      1|   75|
|6-24 months |LCNI-5         |MALAWI       |10      |           0|     10|   75|
|6-24 months |LCNI-5         |MALAWI       |10      |           1|      2|   75|
|6-24 months |LCNI-5         |MALAWI       |11      |           0|      8|   75|
|6-24 months |LCNI-5         |MALAWI       |11      |           1|      1|   75|
|6-24 months |LCNI-5         |MALAWI       |12      |           0|     17|   75|
|6-24 months |LCNI-5         |MALAWI       |12      |           1|      2|   75|
|6-24 months |MAL-ED         |INDIA        |1       |           0|      2|   95|
|6-24 months |MAL-ED         |INDIA        |1       |           1|      2|   95|
|6-24 months |MAL-ED         |INDIA        |2       |           0|      1|   95|
|6-24 months |MAL-ED         |INDIA        |2       |           1|      2|   95|
|6-24 months |MAL-ED         |INDIA        |3       |           0|      6|   95|
|6-24 months |MAL-ED         |INDIA        |3       |           1|      5|   95|
|6-24 months |MAL-ED         |INDIA        |4       |           0|      3|   95|
|6-24 months |MAL-ED         |INDIA        |4       |           1|      3|   95|
|6-24 months |MAL-ED         |INDIA        |5       |           0|      0|   95|
|6-24 months |MAL-ED         |INDIA        |5       |           1|      2|   95|
|6-24 months |MAL-ED         |INDIA        |6       |           0|      2|   95|
|6-24 months |MAL-ED         |INDIA        |6       |           1|      2|   95|
|6-24 months |MAL-ED         |INDIA        |7       |           0|      1|   95|
|6-24 months |MAL-ED         |INDIA        |7       |           1|      6|   95|
|6-24 months |MAL-ED         |INDIA        |8       |           0|      9|   95|
|6-24 months |MAL-ED         |INDIA        |8       |           1|      5|   95|
|6-24 months |MAL-ED         |INDIA        |9       |           0|      7|   95|
|6-24 months |MAL-ED         |INDIA        |9       |           1|      2|   95|
|6-24 months |MAL-ED         |INDIA        |10      |           0|      3|   95|
|6-24 months |MAL-ED         |INDIA        |10      |           1|     14|   95|
|6-24 months |MAL-ED         |INDIA        |11      |           0|      6|   95|
|6-24 months |MAL-ED         |INDIA        |11      |           1|      7|   95|
|6-24 months |MAL-ED         |INDIA        |12      |           0|      4|   95|
|6-24 months |MAL-ED         |INDIA        |12      |           1|      1|   95|
|6-24 months |MAL-ED         |BANGLADESH   |1       |           0|      3|   61|
|6-24 months |MAL-ED         |BANGLADESH   |1       |           1|      1|   61|
|6-24 months |MAL-ED         |BANGLADESH   |2       |           0|      0|   61|
|6-24 months |MAL-ED         |BANGLADESH   |2       |           1|      0|   61|
|6-24 months |MAL-ED         |BANGLADESH   |3       |           0|      6|   61|
|6-24 months |MAL-ED         |BANGLADESH   |3       |           1|      7|   61|
|6-24 months |MAL-ED         |BANGLADESH   |4       |           0|      4|   61|
|6-24 months |MAL-ED         |BANGLADESH   |4       |           1|      4|   61|
|6-24 months |MAL-ED         |BANGLADESH   |5       |           0|      1|   61|
|6-24 months |MAL-ED         |BANGLADESH   |5       |           1|      3|   61|
|6-24 months |MAL-ED         |BANGLADESH   |6       |           0|      2|   61|
|6-24 months |MAL-ED         |BANGLADESH   |6       |           1|      2|   61|
|6-24 months |MAL-ED         |BANGLADESH   |7       |           0|      1|   61|
|6-24 months |MAL-ED         |BANGLADESH   |7       |           1|      1|   61|
|6-24 months |MAL-ED         |BANGLADESH   |8       |           0|      2|   61|
|6-24 months |MAL-ED         |BANGLADESH   |8       |           1|      3|   61|
|6-24 months |MAL-ED         |BANGLADESH   |9       |           0|      2|   61|
|6-24 months |MAL-ED         |BANGLADESH   |9       |           1|      1|   61|
|6-24 months |MAL-ED         |BANGLADESH   |10      |           0|      3|   61|
|6-24 months |MAL-ED         |BANGLADESH   |10      |           1|      2|   61|
|6-24 months |MAL-ED         |BANGLADESH   |11      |           0|      2|   61|
|6-24 months |MAL-ED         |BANGLADESH   |11      |           1|      1|   61|
|6-24 months |MAL-ED         |BANGLADESH   |12      |           0|      5|   61|
|6-24 months |MAL-ED         |BANGLADESH   |12      |           1|      5|   61|
|6-24 months |MAL-ED         |PERU         |1       |           0|      0|   24|
|6-24 months |MAL-ED         |PERU         |1       |           1|      1|   24|
|6-24 months |MAL-ED         |PERU         |2       |           0|      0|   24|
|6-24 months |MAL-ED         |PERU         |2       |           1|      1|   24|
|6-24 months |MAL-ED         |PERU         |3       |           0|      1|   24|
|6-24 months |MAL-ED         |PERU         |3       |           1|      1|   24|
|6-24 months |MAL-ED         |PERU         |4       |           0|      0|   24|
|6-24 months |MAL-ED         |PERU         |4       |           1|      2|   24|
|6-24 months |MAL-ED         |PERU         |5       |           0|      2|   24|
|6-24 months |MAL-ED         |PERU         |5       |           1|      2|   24|
|6-24 months |MAL-ED         |PERU         |6       |           0|      0|   24|
|6-24 months |MAL-ED         |PERU         |6       |           1|      0|   24|
|6-24 months |MAL-ED         |PERU         |7       |           0|      0|   24|
|6-24 months |MAL-ED         |PERU         |7       |           1|      3|   24|
|6-24 months |MAL-ED         |PERU         |8       |           0|      0|   24|
|6-24 months |MAL-ED         |PERU         |8       |           1|      4|   24|
|6-24 months |MAL-ED         |PERU         |9       |           0|      1|   24|
|6-24 months |MAL-ED         |PERU         |9       |           1|      2|   24|
|6-24 months |MAL-ED         |PERU         |10      |           0|      1|   24|
|6-24 months |MAL-ED         |PERU         |10      |           1|      1|   24|
|6-24 months |MAL-ED         |PERU         |11      |           0|      1|   24|
|6-24 months |MAL-ED         |PERU         |11      |           1|      0|   24|
|6-24 months |MAL-ED         |PERU         |12      |           0|      0|   24|
|6-24 months |MAL-ED         |PERU         |12      |           1|      1|   24|
|6-24 months |MAL-ED         |NEPAL        |1       |           0|      2|   50|
|6-24 months |MAL-ED         |NEPAL        |1       |           1|      4|   50|
|6-24 months |MAL-ED         |NEPAL        |2       |           0|      1|   50|
|6-24 months |MAL-ED         |NEPAL        |2       |           1|      9|   50|
|6-24 months |MAL-ED         |NEPAL        |3       |           0|      2|   50|
|6-24 months |MAL-ED         |NEPAL        |3       |           1|      3|   50|
|6-24 months |MAL-ED         |NEPAL        |4       |           0|      1|   50|
|6-24 months |MAL-ED         |NEPAL        |4       |           1|      7|   50|
|6-24 months |MAL-ED         |NEPAL        |5       |           0|      1|   50|
|6-24 months |MAL-ED         |NEPAL        |5       |           1|      2|   50|
|6-24 months |MAL-ED         |NEPAL        |6       |           0|      0|   50|
|6-24 months |MAL-ED         |NEPAL        |6       |           1|      4|   50|
|6-24 months |MAL-ED         |NEPAL        |7       |           0|      3|   50|
|6-24 months |MAL-ED         |NEPAL        |7       |           1|      1|   50|
|6-24 months |MAL-ED         |NEPAL        |8       |           0|      0|   50|
|6-24 months |MAL-ED         |NEPAL        |8       |           1|      3|   50|
|6-24 months |MAL-ED         |NEPAL        |9       |           0|      0|   50|
|6-24 months |MAL-ED         |NEPAL        |9       |           1|      0|   50|
|6-24 months |MAL-ED         |NEPAL        |10      |           0|      0|   50|
|6-24 months |MAL-ED         |NEPAL        |10      |           1|      2|   50|
|6-24 months |MAL-ED         |NEPAL        |11      |           0|      1|   50|
|6-24 months |MAL-ED         |NEPAL        |11      |           1|      2|   50|
|6-24 months |MAL-ED         |NEPAL        |12      |           0|      0|   50|
|6-24 months |MAL-ED         |NEPAL        |12      |           1|      2|   50|
|6-24 months |MAL-ED         |BRAZIL       |1       |           0|      1|    9|
|6-24 months |MAL-ED         |BRAZIL       |1       |           1|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |2       |           0|      1|    9|
|6-24 months |MAL-ED         |BRAZIL       |2       |           1|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |3       |           0|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |3       |           1|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |4       |           0|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |4       |           1|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |5       |           0|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |5       |           1|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |6       |           0|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |6       |           1|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |7       |           0|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |7       |           1|      1|    9|
|6-24 months |MAL-ED         |BRAZIL       |8       |           0|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |8       |           1|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |9       |           0|      2|    9|
|6-24 months |MAL-ED         |BRAZIL       |9       |           1|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |10      |           0|      1|    9|
|6-24 months |MAL-ED         |BRAZIL       |10      |           1|      1|    9|
|6-24 months |MAL-ED         |BRAZIL       |11      |           0|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |11      |           1|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |12      |           0|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |12      |           1|      2|    9|
|6-24 months |MAL-ED         |TANZANIA     |1       |           0|      1|   37|
|6-24 months |MAL-ED         |TANZANIA     |1       |           1|      0|   37|
|6-24 months |MAL-ED         |TANZANIA     |2       |           0|      0|   37|
|6-24 months |MAL-ED         |TANZANIA     |2       |           1|      1|   37|
|6-24 months |MAL-ED         |TANZANIA     |3       |           0|      0|   37|
|6-24 months |MAL-ED         |TANZANIA     |3       |           1|      2|   37|
|6-24 months |MAL-ED         |TANZANIA     |4       |           0|      2|   37|
|6-24 months |MAL-ED         |TANZANIA     |4       |           1|      2|   37|
|6-24 months |MAL-ED         |TANZANIA     |5       |           0|      0|   37|
|6-24 months |MAL-ED         |TANZANIA     |5       |           1|      3|   37|
|6-24 months |MAL-ED         |TANZANIA     |6       |           0|      1|   37|
|6-24 months |MAL-ED         |TANZANIA     |6       |           1|      2|   37|
|6-24 months |MAL-ED         |TANZANIA     |7       |           0|      0|   37|
|6-24 months |MAL-ED         |TANZANIA     |7       |           1|      3|   37|
|6-24 months |MAL-ED         |TANZANIA     |8       |           0|      0|   37|
|6-24 months |MAL-ED         |TANZANIA     |8       |           1|      0|   37|
|6-24 months |MAL-ED         |TANZANIA     |9       |           0|      2|   37|
|6-24 months |MAL-ED         |TANZANIA     |9       |           1|      3|   37|
|6-24 months |MAL-ED         |TANZANIA     |10      |           0|      0|   37|
|6-24 months |MAL-ED         |TANZANIA     |10      |           1|      4|   37|
|6-24 months |MAL-ED         |TANZANIA     |11      |           0|      1|   37|
|6-24 months |MAL-ED         |TANZANIA     |11      |           1|      4|   37|
|6-24 months |MAL-ED         |TANZANIA     |12      |           0|      1|   37|
|6-24 months |MAL-ED         |TANZANIA     |12      |           1|      5|   37|
|6-24 months |MAL-ED         |SOUTH AFRICA |1       |           0|      0|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |1       |           1|      9|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |2       |           0|      2|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |2       |           1|      2|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |3       |           0|      0|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |3       |           1|      3|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |4       |           0|      0|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |4       |           1|      2|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |5       |           0|      0|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |5       |           1|      1|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |6       |           0|      0|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |6       |           1|      1|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |7       |           0|      2|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |7       |           1|      7|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |8       |           0|      0|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |8       |           1|      1|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |9       |           0|      2|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |9       |           1|      4|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |10      |           0|      1|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |10      |           1|      3|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |11      |           0|      2|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |11      |           1|      2|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |12      |           0|      0|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |12      |           1|      7|   51|
|6-24 months |NIH-Birth      |BANGLADESH   |1       |           0|     17|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |1       |           1|      6|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |2       |           0|      9|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |2       |           1|      5|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |3       |           0|     18|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |3       |           1|      5|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |4       |           0|     12|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |4       |           1|      6|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |5       |           0|     13|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |5       |           1|      6|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |6       |           0|     11|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |6       |           1|      2|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |7       |           0|      7|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |7       |           1|      1|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |8       |           0|     21|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |8       |           1|      7|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |9       |           0|      5|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |9       |           1|      4|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |10      |           0|      7|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |10      |           1|      1|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |11      |           0|     11|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |11      |           1|     10|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |12      |           0|      7|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |12      |           1|      7|  198|
|6-24 months |PROBIT         |BELARUS      |1       |           0|      4|  141|
|6-24 months |PROBIT         |BELARUS      |1       |           1|      3|  141|
|6-24 months |PROBIT         |BELARUS      |2       |           0|      6|  141|
|6-24 months |PROBIT         |BELARUS      |2       |           1|      3|  141|
|6-24 months |PROBIT         |BELARUS      |3       |           0|      4|  141|
|6-24 months |PROBIT         |BELARUS      |3       |           1|      2|  141|
|6-24 months |PROBIT         |BELARUS      |4       |           0|      8|  141|
|6-24 months |PROBIT         |BELARUS      |4       |           1|      5|  141|
|6-24 months |PROBIT         |BELARUS      |5       |           0|      4|  141|
|6-24 months |PROBIT         |BELARUS      |5       |           1|      2|  141|
|6-24 months |PROBIT         |BELARUS      |6       |           0|      7|  141|
|6-24 months |PROBIT         |BELARUS      |6       |           1|      3|  141|
|6-24 months |PROBIT         |BELARUS      |7       |           0|      7|  141|
|6-24 months |PROBIT         |BELARUS      |7       |           1|      4|  141|
|6-24 months |PROBIT         |BELARUS      |8       |           0|     10|  141|
|6-24 months |PROBIT         |BELARUS      |8       |           1|      2|  141|
|6-24 months |PROBIT         |BELARUS      |9       |           0|     11|  141|
|6-24 months |PROBIT         |BELARUS      |9       |           1|      3|  141|
|6-24 months |PROBIT         |BELARUS      |10      |           0|     14|  141|
|6-24 months |PROBIT         |BELARUS      |10      |           1|      7|  141|
|6-24 months |PROBIT         |BELARUS      |11      |           0|     14|  141|
|6-24 months |PROBIT         |BELARUS      |11      |           1|      1|  141|
|6-24 months |PROBIT         |BELARUS      |12      |           0|     14|  141|
|6-24 months |PROBIT         |BELARUS      |12      |           1|      3|  141|
|6-24 months |PROVIDE        |BANGLADESH   |1       |           0|      4|  123|
|6-24 months |PROVIDE        |BANGLADESH   |1       |           1|      0|  123|
|6-24 months |PROVIDE        |BANGLADESH   |2       |           0|      7|  123|
|6-24 months |PROVIDE        |BANGLADESH   |2       |           1|      3|  123|
|6-24 months |PROVIDE        |BANGLADESH   |3       |           0|     11|  123|
|6-24 months |PROVIDE        |BANGLADESH   |3       |           1|      2|  123|
|6-24 months |PROVIDE        |BANGLADESH   |4       |           0|      4|  123|
|6-24 months |PROVIDE        |BANGLADESH   |4       |           1|      1|  123|
|6-24 months |PROVIDE        |BANGLADESH   |5       |           0|      7|  123|
|6-24 months |PROVIDE        |BANGLADESH   |5       |           1|      2|  123|
|6-24 months |PROVIDE        |BANGLADESH   |6       |           0|     14|  123|
|6-24 months |PROVIDE        |BANGLADESH   |6       |           1|      5|  123|
|6-24 months |PROVIDE        |BANGLADESH   |7       |           0|      7|  123|
|6-24 months |PROVIDE        |BANGLADESH   |7       |           1|      8|  123|
|6-24 months |PROVIDE        |BANGLADESH   |8       |           0|      7|  123|
|6-24 months |PROVIDE        |BANGLADESH   |8       |           1|      3|  123|
|6-24 months |PROVIDE        |BANGLADESH   |9       |           0|     11|  123|
|6-24 months |PROVIDE        |BANGLADESH   |9       |           1|      3|  123|
|6-24 months |PROVIDE        |BANGLADESH   |10      |           0|      8|  123|
|6-24 months |PROVIDE        |BANGLADESH   |10      |           1|      4|  123|
|6-24 months |PROVIDE        |BANGLADESH   |11      |           0|      4|  123|
|6-24 months |PROVIDE        |BANGLADESH   |11      |           1|      2|  123|
|6-24 months |PROVIDE        |BANGLADESH   |12      |           0|      5|  123|
|6-24 months |PROVIDE        |BANGLADESH   |12      |           1|      1|  123|
|6-24 months |ResPak         |PAKISTAN     |1       |           0|      2|   91|
|6-24 months |ResPak         |PAKISTAN     |1       |           1|      1|   91|
|6-24 months |ResPak         |PAKISTAN     |2       |           0|      1|   91|
|6-24 months |ResPak         |PAKISTAN     |2       |           1|      2|   91|
|6-24 months |ResPak         |PAKISTAN     |3       |           0|      4|   91|
|6-24 months |ResPak         |PAKISTAN     |3       |           1|      2|   91|
|6-24 months |ResPak         |PAKISTAN     |4       |           0|      8|   91|
|6-24 months |ResPak         |PAKISTAN     |4       |           1|      2|   91|
|6-24 months |ResPak         |PAKISTAN     |5       |           0|     14|   91|
|6-24 months |ResPak         |PAKISTAN     |5       |           1|      5|   91|
|6-24 months |ResPak         |PAKISTAN     |6       |           0|     18|   91|
|6-24 months |ResPak         |PAKISTAN     |6       |           1|      4|   91|
|6-24 months |ResPak         |PAKISTAN     |7       |           0|      8|   91|
|6-24 months |ResPak         |PAKISTAN     |7       |           1|      3|   91|
|6-24 months |ResPak         |PAKISTAN     |8       |           0|     12|   91|
|6-24 months |ResPak         |PAKISTAN     |8       |           1|      0|   91|
|6-24 months |ResPak         |PAKISTAN     |9       |           0|      1|   91|
|6-24 months |ResPak         |PAKISTAN     |9       |           1|      2|   91|
|6-24 months |ResPak         |PAKISTAN     |10      |           0|      0|   91|
|6-24 months |ResPak         |PAKISTAN     |10      |           1|      0|   91|
|6-24 months |ResPak         |PAKISTAN     |11      |           0|      1|   91|
|6-24 months |ResPak         |PAKISTAN     |11      |           1|      1|   91|
|6-24 months |ResPak         |PAKISTAN     |12      |           0|      0|   91|
|6-24 months |ResPak         |PAKISTAN     |12      |           1|      0|   91|
|6-24 months |SAS-CompFeed   |INDIA        |1       |           0|     23|  472|
|6-24 months |SAS-CompFeed   |INDIA        |1       |           1|      9|  472|
|6-24 months |SAS-CompFeed   |INDIA        |2       |           0|     21|  472|
|6-24 months |SAS-CompFeed   |INDIA        |2       |           1|      4|  472|
|6-24 months |SAS-CompFeed   |INDIA        |3       |           0|      9|  472|
|6-24 months |SAS-CompFeed   |INDIA        |3       |           1|      4|  472|
|6-24 months |SAS-CompFeed   |INDIA        |4       |           0|     13|  472|
|6-24 months |SAS-CompFeed   |INDIA        |4       |           1|      7|  472|
|6-24 months |SAS-CompFeed   |INDIA        |5       |           0|     30|  472|
|6-24 months |SAS-CompFeed   |INDIA        |5       |           1|      8|  472|
|6-24 months |SAS-CompFeed   |INDIA        |6       |           0|     24|  472|
|6-24 months |SAS-CompFeed   |INDIA        |6       |           1|     10|  472|
|6-24 months |SAS-CompFeed   |INDIA        |7       |           0|     23|  472|
|6-24 months |SAS-CompFeed   |INDIA        |7       |           1|     17|  472|
|6-24 months |SAS-CompFeed   |INDIA        |8       |           0|     40|  472|
|6-24 months |SAS-CompFeed   |INDIA        |8       |           1|     19|  472|
|6-24 months |SAS-CompFeed   |INDIA        |9       |           0|     49|  472|
|6-24 months |SAS-CompFeed   |INDIA        |9       |           1|     14|  472|
|6-24 months |SAS-CompFeed   |INDIA        |10      |           0|     43|  472|
|6-24 months |SAS-CompFeed   |INDIA        |10      |           1|     14|  472|
|6-24 months |SAS-CompFeed   |INDIA        |11      |           0|     37|  472|
|6-24 months |SAS-CompFeed   |INDIA        |11      |           1|     13|  472|
|6-24 months |SAS-CompFeed   |INDIA        |12      |           0|     26|  472|
|6-24 months |SAS-CompFeed   |INDIA        |12      |           1|     15|  472|
|6-24 months |SAS-FoodSuppl  |INDIA        |1       |           0|      5|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |1       |           1|      1|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |2       |           0|     13|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |2       |           1|      1|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |3       |           0|     10|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |3       |           1|      1|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |4       |           0|      2|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |4       |           1|      0|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |5       |           0|      8|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |5       |           1|      0|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |6       |           0|     10|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |6       |           1|      0|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |7       |           0|     10|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |7       |           1|      3|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |8       |           0|     28|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |8       |           1|      3|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |9       |           0|     18|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |9       |           1|      1|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |10      |           0|     15|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |10      |           1|      2|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |11      |           0|      7|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |11      |           1|      0|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |12      |           0|     17|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |12      |           1|      1|  156|
|6-24 months |TanzaniaChild2 |TANZANIA     |1       |           0|     10|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |1       |           1|     12|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |2       |           0|      8|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |2       |           1|     15|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |3       |           0|     12|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |3       |           1|     18|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |4       |           0|      9|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |4       |           1|     11|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |5       |           0|     14|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |5       |           1|     12|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |6       |           0|     18|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |6       |           1|     17|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |7       |           0|     20|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |7       |           1|     29|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |8       |           0|     18|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |8       |           1|     23|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |9       |           0|     15|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |9       |           1|     21|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |10      |           0|     16|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |10      |           1|     19|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |11      |           0|     12|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |11      |           1|     16|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |12      |           0|     13|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |12      |           1|     15|  373|
|6-24 months |Vellore Crypto |INDIA        |1       |           0|      8|  155|
|6-24 months |Vellore Crypto |INDIA        |1       |           1|      7|  155|
|6-24 months |Vellore Crypto |INDIA        |2       |           0|      3|  155|
|6-24 months |Vellore Crypto |INDIA        |2       |           1|      4|  155|
|6-24 months |Vellore Crypto |INDIA        |3       |           0|      4|  155|
|6-24 months |Vellore Crypto |INDIA        |3       |           1|     12|  155|
|6-24 months |Vellore Crypto |INDIA        |4       |           0|      3|  155|
|6-24 months |Vellore Crypto |INDIA        |4       |           1|      1|  155|
|6-24 months |Vellore Crypto |INDIA        |5       |           0|      0|  155|
|6-24 months |Vellore Crypto |INDIA        |5       |           1|      6|  155|
|6-24 months |Vellore Crypto |INDIA        |6       |           0|     11|  155|
|6-24 months |Vellore Crypto |INDIA        |6       |           1|     14|  155|
|6-24 months |Vellore Crypto |INDIA        |7       |           0|      3|  155|
|6-24 months |Vellore Crypto |INDIA        |7       |           1|      8|  155|
|6-24 months |Vellore Crypto |INDIA        |8       |           0|     13|  155|
|6-24 months |Vellore Crypto |INDIA        |8       |           1|      9|  155|
|6-24 months |Vellore Crypto |INDIA        |9       |           0|      7|  155|
|6-24 months |Vellore Crypto |INDIA        |9       |           1|      5|  155|
|6-24 months |Vellore Crypto |INDIA        |10      |           0|      7|  155|
|6-24 months |Vellore Crypto |INDIA        |10      |           1|      6|  155|
|6-24 months |Vellore Crypto |INDIA        |11      |           0|     11|  155|
|6-24 months |Vellore Crypto |INDIA        |11      |           1|      4|  155|
|6-24 months |Vellore Crypto |INDIA        |12      |           0|      5|  155|
|6-24 months |Vellore Crypto |INDIA        |12      |           1|      4|  155|
|6-24 months |ZVITAMBO       |ZIMBABWE     |1       |           0|    101| 1094|
|6-24 months |ZVITAMBO       |ZIMBABWE     |1       |           1|      7| 1094|
|6-24 months |ZVITAMBO       |ZIMBABWE     |2       |           0|     82| 1094|
|6-24 months |ZVITAMBO       |ZIMBABWE     |2       |           1|      5| 1094|
|6-24 months |ZVITAMBO       |ZIMBABWE     |3       |           0|     90| 1094|
|6-24 months |ZVITAMBO       |ZIMBABWE     |3       |           1|      4| 1094|
|6-24 months |ZVITAMBO       |ZIMBABWE     |4       |           0|     65| 1094|
|6-24 months |ZVITAMBO       |ZIMBABWE     |4       |           1|      3| 1094|
|6-24 months |ZVITAMBO       |ZIMBABWE     |5       |           0|     76| 1094|
|6-24 months |ZVITAMBO       |ZIMBABWE     |5       |           1|     12| 1094|
|6-24 months |ZVITAMBO       |ZIMBABWE     |6       |           0|     86| 1094|
|6-24 months |ZVITAMBO       |ZIMBABWE     |6       |           1|      5| 1094|
|6-24 months |ZVITAMBO       |ZIMBABWE     |7       |           0|     86| 1094|
|6-24 months |ZVITAMBO       |ZIMBABWE     |7       |           1|      8| 1094|
|6-24 months |ZVITAMBO       |ZIMBABWE     |8       |           0|    105| 1094|
|6-24 months |ZVITAMBO       |ZIMBABWE     |8       |           1|      8| 1094|
|6-24 months |ZVITAMBO       |ZIMBABWE     |9       |           0|     82| 1094|
|6-24 months |ZVITAMBO       |ZIMBABWE     |9       |           1|      9| 1094|
|6-24 months |ZVITAMBO       |ZIMBABWE     |10      |           0|     72| 1094|
|6-24 months |ZVITAMBO       |ZIMBABWE     |10      |           1|      3| 1094|
|6-24 months |ZVITAMBO       |ZIMBABWE     |11      |           0|     71| 1094|
|6-24 months |ZVITAMBO       |ZIMBABWE     |11      |           1|      7| 1094|
|6-24 months |ZVITAMBO       |ZIMBABWE     |12      |           0|     97| 1094|
|6-24 months |ZVITAMBO       |ZIMBABWE     |12      |           1|     10| 1094|


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
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
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
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
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


