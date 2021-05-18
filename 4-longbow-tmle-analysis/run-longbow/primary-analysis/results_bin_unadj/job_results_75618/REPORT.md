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

**Intervention Variable:** predexfd6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |predexfd6 | wast_rec90d| n_cell|    n|
|:-----------|:--------------|:------------|:---------|-----------:|------:|----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1         |           0|      8|   30|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1         |           1|     22|   30|
|0-24 months |CMC-V-BCS-2002 |INDIA        |0         |           0|      0|   30|
|0-24 months |CMC-V-BCS-2002 |INDIA        |0         |           1|      0|   30|
|0-24 months |EE             |PAKISTAN     |1         |           0|     27|   39|
|0-24 months |EE             |PAKISTAN     |1         |           1|     12|   39|
|0-24 months |EE             |PAKISTAN     |0         |           0|      0|   39|
|0-24 months |EE             |PAKISTAN     |0         |           1|      0|   39|
|0-24 months |GMS-Nepal      |NEPAL        |1         |           0|    194|  524|
|0-24 months |GMS-Nepal      |NEPAL        |1         |           1|    198|  524|
|0-24 months |GMS-Nepal      |NEPAL        |0         |           0|     52|  524|
|0-24 months |GMS-Nepal      |NEPAL        |0         |           1|     80|  524|
|0-24 months |JiVitA-3       |BANGLADESH   |1         |           0|   2044| 4496|
|0-24 months |JiVitA-3       |BANGLADESH   |1         |           1|   1458| 4496|
|0-24 months |JiVitA-3       |BANGLADESH   |0         |           0|    563| 4496|
|0-24 months |JiVitA-3       |BANGLADESH   |0         |           1|    431| 4496|
|0-24 months |JiVitA-4       |BANGLADESH   |1         |           0|    996| 1792|
|0-24 months |JiVitA-4       |BANGLADESH   |1         |           1|    350| 1792|
|0-24 months |JiVitA-4       |BANGLADESH   |0         |           0|    325| 1792|
|0-24 months |JiVitA-4       |BANGLADESH   |0         |           1|    121| 1792|
|0-24 months |Keneba         |GAMBIA       |1         |           0|    212| 1437|
|0-24 months |Keneba         |GAMBIA       |1         |           1|    312| 1437|
|0-24 months |Keneba         |GAMBIA       |0         |           0|    347| 1437|
|0-24 months |Keneba         |GAMBIA       |0         |           1|    566| 1437|
|0-24 months |LCNI-5         |MALAWI       |1         |           0|      3|   34|
|0-24 months |LCNI-5         |MALAWI       |1         |           1|      1|   34|
|0-24 months |LCNI-5         |MALAWI       |0         |           0|     26|   34|
|0-24 months |LCNI-5         |MALAWI       |0         |           1|      4|   34|
|0-24 months |MAL-ED         |INDIA        |1         |           0|      4|  152|
|0-24 months |MAL-ED         |INDIA        |1         |           1|      5|  152|
|0-24 months |MAL-ED         |INDIA        |0         |           0|     53|  152|
|0-24 months |MAL-ED         |INDIA        |0         |           1|     90|  152|
|0-24 months |MAL-ED         |BANGLADESH   |1         |           0|     11|  107|
|0-24 months |MAL-ED         |BANGLADESH   |1         |           1|     25|  107|
|0-24 months |MAL-ED         |BANGLADESH   |0         |           0|     27|  107|
|0-24 months |MAL-ED         |BANGLADESH   |0         |           1|     44|  107|
|0-24 months |MAL-ED         |PERU         |1         |           0|      1|   32|
|0-24 months |MAL-ED         |PERU         |1         |           1|      6|   32|
|0-24 months |MAL-ED         |PERU         |0         |           0|      4|   32|
|0-24 months |MAL-ED         |PERU         |0         |           1|     21|   32|
|0-24 months |MAL-ED         |NEPAL        |1         |           0|      2|   93|
|0-24 months |MAL-ED         |NEPAL        |1         |           1|      4|   93|
|0-24 months |MAL-ED         |NEPAL        |0         |           0|     16|   93|
|0-24 months |MAL-ED         |NEPAL        |0         |           1|     71|   93|
|0-24 months |MAL-ED         |BRAZIL       |1         |           0|      1|   21|
|0-24 months |MAL-ED         |BRAZIL       |1         |           1|      2|   21|
|0-24 months |MAL-ED         |BRAZIL       |0         |           0|      3|   21|
|0-24 months |MAL-ED         |BRAZIL       |0         |           1|     15|   21|
|0-24 months |MAL-ED         |TANZANIA     |1         |           0|      0|   50|
|0-24 months |MAL-ED         |TANZANIA     |1         |           1|      0|   50|
|0-24 months |MAL-ED         |TANZANIA     |0         |           0|      8|   50|
|0-24 months |MAL-ED         |TANZANIA     |0         |           1|     42|   50|
|0-24 months |MAL-ED         |SOUTH AFRICA |1         |           0|      0|   57|
|0-24 months |MAL-ED         |SOUTH AFRICA |1         |           1|      0|   57|
|0-24 months |MAL-ED         |SOUTH AFRICA |0         |           0|      6|   57|
|0-24 months |MAL-ED         |SOUTH AFRICA |0         |           1|     51|   57|
|0-24 months |PROVIDE        |BANGLADESH   |1         |           0|     30|  308|
|0-24 months |PROVIDE        |BANGLADESH   |1         |           1|     47|  308|
|0-24 months |PROVIDE        |BANGLADESH   |0         |           0|     99|  308|
|0-24 months |PROVIDE        |BANGLADESH   |0         |           1|    132|  308|
|0-24 months |SAS-CompFeed   |INDIA        |1         |           0|    128|  204|
|0-24 months |SAS-CompFeed   |INDIA        |1         |           1|     66|  204|
|0-24 months |SAS-CompFeed   |INDIA        |0         |           0|      5|  204|
|0-24 months |SAS-CompFeed   |INDIA        |0         |           1|      5|  204|
|0-24 months |SAS-FoodSuppl  |INDIA        |1         |           0|      0|   96|
|0-24 months |SAS-FoodSuppl  |INDIA        |1         |           1|      0|   96|
|0-24 months |SAS-FoodSuppl  |INDIA        |0         |           0|     91|   96|
|0-24 months |SAS-FoodSuppl  |INDIA        |0         |           1|      5|   96|
|0-24 months |Vellore Crypto |INDIA        |1         |           0|      0|    8|
|0-24 months |Vellore Crypto |INDIA        |1         |           1|      0|    8|
|0-24 months |Vellore Crypto |INDIA        |0         |           0|      4|    8|
|0-24 months |Vellore Crypto |INDIA        |0         |           1|      4|    8|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1         |           0|      6|   21|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1         |           1|     15|   21|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |0         |           0|      0|   21|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |0         |           1|      0|   21|
|0-6 months  |EE             |PAKISTAN     |1         |           0|     11|   15|
|0-6 months  |EE             |PAKISTAN     |1         |           1|      4|   15|
|0-6 months  |EE             |PAKISTAN     |0         |           0|      0|   15|
|0-6 months  |EE             |PAKISTAN     |0         |           1|      0|   15|
|0-6 months  |GMS-Nepal      |NEPAL        |1         |           0|     65|  209|
|0-6 months  |GMS-Nepal      |NEPAL        |1         |           1|     90|  209|
|0-6 months  |GMS-Nepal      |NEPAL        |0         |           0|     21|  209|
|0-6 months  |GMS-Nepal      |NEPAL        |0         |           1|     33|  209|
|0-6 months  |JiVitA-3       |BANGLADESH   |1         |           0|    713| 2796|
|0-6 months  |JiVitA-3       |BANGLADESH   |1         |           1|   1458| 2796|
|0-6 months  |JiVitA-3       |BANGLADESH   |0         |           0|    194| 2796|
|0-6 months  |JiVitA-3       |BANGLADESH   |0         |           1|    431| 2796|
|0-6 months  |JiVitA-4       |BANGLADESH   |1         |           0|    169|  495|
|0-6 months  |JiVitA-4       |BANGLADESH   |1         |           1|    209|  495|
|0-6 months  |JiVitA-4       |BANGLADESH   |0         |           0|     48|  495|
|0-6 months  |JiVitA-4       |BANGLADESH   |0         |           1|     69|  495|
|0-6 months  |Keneba         |GAMBIA       |1         |           0|     46|  588|
|0-6 months  |Keneba         |GAMBIA       |1         |           1|    160|  588|
|0-6 months  |Keneba         |GAMBIA       |0         |           0|     83|  588|
|0-6 months  |Keneba         |GAMBIA       |0         |           1|    299|  588|
|0-6 months  |LCNI-5         |MALAWI       |1         |           0|      0|    1|
|0-6 months  |LCNI-5         |MALAWI       |1         |           1|      0|    1|
|0-6 months  |LCNI-5         |MALAWI       |0         |           0|      1|    1|
|0-6 months  |LCNI-5         |MALAWI       |0         |           1|      0|    1|
|0-6 months  |MAL-ED         |INDIA        |1         |           0|      1|   70|
|0-6 months  |MAL-ED         |INDIA        |1         |           1|      3|   70|
|0-6 months  |MAL-ED         |INDIA        |0         |           0|     16|   70|
|0-6 months  |MAL-ED         |INDIA        |0         |           1|     50|   70|
|0-6 months  |MAL-ED         |BANGLADESH   |1         |           0|      3|   54|
|0-6 months  |MAL-ED         |BANGLADESH   |1         |           1|     17|   54|
|0-6 months  |MAL-ED         |BANGLADESH   |0         |           0|      8|   54|
|0-6 months  |MAL-ED         |BANGLADESH   |0         |           1|     26|   54|
|0-6 months  |MAL-ED         |PERU         |1         |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |1         |           1|      2|   11|
|0-6 months  |MAL-ED         |PERU         |0         |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |0         |           1|      9|   11|
|0-6 months  |MAL-ED         |NEPAL        |1         |           0|      1|   45|
|0-6 months  |MAL-ED         |NEPAL        |1         |           1|      1|   45|
|0-6 months  |MAL-ED         |NEPAL        |0         |           0|      7|   45|
|0-6 months  |MAL-ED         |NEPAL        |0         |           1|     36|   45|
|0-6 months  |MAL-ED         |BRAZIL       |1         |           0|      0|   14|
|0-6 months  |MAL-ED         |BRAZIL       |1         |           1|      1|   14|
|0-6 months  |MAL-ED         |BRAZIL       |0         |           0|      1|   14|
|0-6 months  |MAL-ED         |BRAZIL       |0         |           1|     12|   14|
|0-6 months  |MAL-ED         |TANZANIA     |1         |           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |1         |           1|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |0         |           0|      1|   14|
|0-6 months  |MAL-ED         |TANZANIA     |0         |           1|     13|   14|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1         |           0|      0|   22|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1         |           1|      0|   22|
|0-6 months  |MAL-ED         |SOUTH AFRICA |0         |           0|      4|   22|
|0-6 months  |MAL-ED         |SOUTH AFRICA |0         |           1|     18|   22|
|0-6 months  |PROVIDE        |BANGLADESH   |1         |           0|     10|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |1         |           1|     37|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |0         |           0|     30|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |0         |           1|    108|  185|
|0-6 months  |SAS-CompFeed   |INDIA        |1         |           0|     37|   77|
|0-6 months  |SAS-CompFeed   |INDIA        |1         |           1|     34|   77|
|0-6 months  |SAS-CompFeed   |INDIA        |0         |           0|      3|   77|
|0-6 months  |SAS-CompFeed   |INDIA        |0         |           1|      3|   77|
|0-6 months  |SAS-FoodSuppl  |INDIA        |1         |           0|      0|   28|
|0-6 months  |SAS-FoodSuppl  |INDIA        |1         |           1|      0|   28|
|0-6 months  |SAS-FoodSuppl  |INDIA        |0         |           0|     28|   28|
|0-6 months  |SAS-FoodSuppl  |INDIA        |0         |           1|      0|   28|
|0-6 months  |Vellore Crypto |INDIA        |1         |           0|      0|    3|
|0-6 months  |Vellore Crypto |INDIA        |1         |           1|      0|    3|
|0-6 months  |Vellore Crypto |INDIA        |0         |           0|      1|    3|
|0-6 months  |Vellore Crypto |INDIA        |0         |           1|      2|    3|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1         |           0|      2|    9|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1         |           1|      7|    9|
|6-24 months |CMC-V-BCS-2002 |INDIA        |0         |           0|      0|    9|
|6-24 months |CMC-V-BCS-2002 |INDIA        |0         |           1|      0|    9|
|6-24 months |EE             |PAKISTAN     |1         |           0|     16|   24|
|6-24 months |EE             |PAKISTAN     |1         |           1|      8|   24|
|6-24 months |EE             |PAKISTAN     |0         |           0|      0|   24|
|6-24 months |EE             |PAKISTAN     |0         |           1|      0|   24|
|6-24 months |GMS-Nepal      |NEPAL        |1         |           0|    129|  315|
|6-24 months |GMS-Nepal      |NEPAL        |1         |           1|    108|  315|
|6-24 months |GMS-Nepal      |NEPAL        |0         |           0|     31|  315|
|6-24 months |GMS-Nepal      |NEPAL        |0         |           1|     47|  315|
|6-24 months |JiVitA-3       |BANGLADESH   |1         |           0|   1331| 1700|
|6-24 months |JiVitA-3       |BANGLADESH   |1         |           1|      0| 1700|
|6-24 months |JiVitA-3       |BANGLADESH   |0         |           0|    369| 1700|
|6-24 months |JiVitA-3       |BANGLADESH   |0         |           1|      0| 1700|
|6-24 months |JiVitA-4       |BANGLADESH   |1         |           0|    827| 1297|
|6-24 months |JiVitA-4       |BANGLADESH   |1         |           1|    141| 1297|
|6-24 months |JiVitA-4       |BANGLADESH   |0         |           0|    277| 1297|
|6-24 months |JiVitA-4       |BANGLADESH   |0         |           1|     52| 1297|
|6-24 months |Keneba         |GAMBIA       |1         |           0|    166|  849|
|6-24 months |Keneba         |GAMBIA       |1         |           1|    152|  849|
|6-24 months |Keneba         |GAMBIA       |0         |           0|    264|  849|
|6-24 months |Keneba         |GAMBIA       |0         |           1|    267|  849|
|6-24 months |LCNI-5         |MALAWI       |1         |           0|      3|   33|
|6-24 months |LCNI-5         |MALAWI       |1         |           1|      1|   33|
|6-24 months |LCNI-5         |MALAWI       |0         |           0|     25|   33|
|6-24 months |LCNI-5         |MALAWI       |0         |           1|      4|   33|
|6-24 months |MAL-ED         |INDIA        |1         |           0|      3|   82|
|6-24 months |MAL-ED         |INDIA        |1         |           1|      2|   82|
|6-24 months |MAL-ED         |INDIA        |0         |           0|     37|   82|
|6-24 months |MAL-ED         |INDIA        |0         |           1|     40|   82|
|6-24 months |MAL-ED         |BANGLADESH   |1         |           0|      8|   53|
|6-24 months |MAL-ED         |BANGLADESH   |1         |           1|      8|   53|
|6-24 months |MAL-ED         |BANGLADESH   |0         |           0|     19|   53|
|6-24 months |MAL-ED         |BANGLADESH   |0         |           1|     18|   53|
|6-24 months |MAL-ED         |PERU         |1         |           0|      1|   21|
|6-24 months |MAL-ED         |PERU         |1         |           1|      4|   21|
|6-24 months |MAL-ED         |PERU         |0         |           0|      4|   21|
|6-24 months |MAL-ED         |PERU         |0         |           1|     12|   21|
|6-24 months |MAL-ED         |NEPAL        |1         |           0|      1|   48|
|6-24 months |MAL-ED         |NEPAL        |1         |           1|      3|   48|
|6-24 months |MAL-ED         |NEPAL        |0         |           0|      9|   48|
|6-24 months |MAL-ED         |NEPAL        |0         |           1|     35|   48|
|6-24 months |MAL-ED         |BRAZIL       |1         |           0|      1|    7|
|6-24 months |MAL-ED         |BRAZIL       |1         |           1|      1|    7|
|6-24 months |MAL-ED         |BRAZIL       |0         |           0|      2|    7|
|6-24 months |MAL-ED         |BRAZIL       |0         |           1|      3|    7|
|6-24 months |MAL-ED         |TANZANIA     |1         |           0|      0|   36|
|6-24 months |MAL-ED         |TANZANIA     |1         |           1|      0|   36|
|6-24 months |MAL-ED         |TANZANIA     |0         |           0|      7|   36|
|6-24 months |MAL-ED         |TANZANIA     |0         |           1|     29|   36|
|6-24 months |MAL-ED         |SOUTH AFRICA |1         |           0|      0|   35|
|6-24 months |MAL-ED         |SOUTH AFRICA |1         |           1|      0|   35|
|6-24 months |MAL-ED         |SOUTH AFRICA |0         |           0|      2|   35|
|6-24 months |MAL-ED         |SOUTH AFRICA |0         |           1|     33|   35|
|6-24 months |PROVIDE        |BANGLADESH   |1         |           0|     20|  123|
|6-24 months |PROVIDE        |BANGLADESH   |1         |           1|     10|  123|
|6-24 months |PROVIDE        |BANGLADESH   |0         |           0|     69|  123|
|6-24 months |PROVIDE        |BANGLADESH   |0         |           1|     24|  123|
|6-24 months |SAS-CompFeed   |INDIA        |1         |           0|     91|  127|
|6-24 months |SAS-CompFeed   |INDIA        |1         |           1|     32|  127|
|6-24 months |SAS-CompFeed   |INDIA        |0         |           0|      2|  127|
|6-24 months |SAS-CompFeed   |INDIA        |0         |           1|      2|  127|
|6-24 months |SAS-FoodSuppl  |INDIA        |1         |           0|      0|   68|
|6-24 months |SAS-FoodSuppl  |INDIA        |1         |           1|      0|   68|
|6-24 months |SAS-FoodSuppl  |INDIA        |0         |           0|     63|   68|
|6-24 months |SAS-FoodSuppl  |INDIA        |0         |           1|      5|   68|
|6-24 months |Vellore Crypto |INDIA        |1         |           0|      0|    5|
|6-24 months |Vellore Crypto |INDIA        |1         |           1|      0|    5|
|6-24 months |Vellore Crypto |INDIA        |0         |           0|      3|    5|
|6-24 months |Vellore Crypto |INDIA        |0         |           1|      2|    5|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
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
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
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
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
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
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
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


