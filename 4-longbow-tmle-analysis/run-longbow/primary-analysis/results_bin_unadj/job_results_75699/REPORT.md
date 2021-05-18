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

**Intervention Variable:** lag_WHZ_quart

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat       |studyid        |country      |lag_WHZ_quart | ever_stunted| n_cell|    n|
|:------------|:--------------|:------------|:-------------|------------:|------:|----:|
|3-6 months   |CMC-V-BCS-2002 |INDIA        |1             |            0|    102|  288|
|3-6 months   |CMC-V-BCS-2002 |INDIA        |1             |            1|     44|  288|
|3-6 months   |CMC-V-BCS-2002 |INDIA        |2             |            0|     52|  288|
|3-6 months   |CMC-V-BCS-2002 |INDIA        |2             |            1|     25|  288|
|3-6 months   |CMC-V-BCS-2002 |INDIA        |3             |            0|     22|  288|
|3-6 months   |CMC-V-BCS-2002 |INDIA        |3             |            1|     12|  288|
|3-6 months   |CMC-V-BCS-2002 |INDIA        |4             |            0|     20|  288|
|3-6 months   |CMC-V-BCS-2002 |INDIA        |4             |            1|     11|  288|
|3-6 months   |CMIN           |BANGLADESH   |1             |            0|     31|  158|
|3-6 months   |CMIN           |BANGLADESH   |1             |            1|     14|  158|
|3-6 months   |CMIN           |BANGLADESH   |2             |            0|     50|  158|
|3-6 months   |CMIN           |BANGLADESH   |2             |            1|     11|  158|
|3-6 months   |CMIN           |BANGLADESH   |3             |            0|     27|  158|
|3-6 months   |CMIN           |BANGLADESH   |3             |            1|      9|  158|
|3-6 months   |CMIN           |BANGLADESH   |4             |            0|     13|  158|
|3-6 months   |CMIN           |BANGLADESH   |4             |            1|      3|  158|
|3-6 months   |CONTENT        |PERU         |1             |            0|      4|  195|
|3-6 months   |CONTENT        |PERU         |1             |            1|      0|  195|
|3-6 months   |CONTENT        |PERU         |2             |            0|     17|  195|
|3-6 months   |CONTENT        |PERU         |2             |            1|      0|  195|
|3-6 months   |CONTENT        |PERU         |3             |            0|     43|  195|
|3-6 months   |CONTENT        |PERU         |3             |            1|      1|  195|
|3-6 months   |CONTENT        |PERU         |4             |            0|    128|  195|
|3-6 months   |CONTENT        |PERU         |4             |            1|      2|  195|
|3-6 months   |EE             |PAKISTAN     |1             |            0|     34|  216|
|3-6 months   |EE             |PAKISTAN     |1             |            1|     25|  216|
|3-6 months   |EE             |PAKISTAN     |2             |            0|     41|  216|
|3-6 months   |EE             |PAKISTAN     |2             |            1|     20|  216|
|3-6 months   |EE             |PAKISTAN     |3             |            0|     32|  216|
|3-6 months   |EE             |PAKISTAN     |3             |            1|     29|  216|
|3-6 months   |EE             |PAKISTAN     |4             |            0|     17|  216|
|3-6 months   |EE             |PAKISTAN     |4             |            1|     18|  216|
|3-6 months   |GMS-Nepal      |NEPAL        |1             |            0|    219|  485|
|3-6 months   |GMS-Nepal      |NEPAL        |1             |            1|     54|  485|
|3-6 months   |GMS-Nepal      |NEPAL        |2             |            0|    103|  485|
|3-6 months   |GMS-Nepal      |NEPAL        |2             |            1|     31|  485|
|3-6 months   |GMS-Nepal      |NEPAL        |3             |            0|     55|  485|
|3-6 months   |GMS-Nepal      |NEPAL        |3             |            1|     13|  485|
|3-6 months   |GMS-Nepal      |NEPAL        |4             |            0|      9|  485|
|3-6 months   |GMS-Nepal      |NEPAL        |4             |            1|      1|  485|
|3-6 months   |Keneba         |GAMBIA       |1             |            0|    382| 1929|
|3-6 months   |Keneba         |GAMBIA       |1             |            1|    101| 1929|
|3-6 months   |Keneba         |GAMBIA       |2             |            0|    466| 1929|
|3-6 months   |Keneba         |GAMBIA       |2             |            1|     87| 1929|
|3-6 months   |Keneba         |GAMBIA       |3             |            0|    429| 1929|
|3-6 months   |Keneba         |GAMBIA       |3             |            1|     95| 1929|
|3-6 months   |Keneba         |GAMBIA       |4             |            0|    284| 1929|
|3-6 months   |Keneba         |GAMBIA       |4             |            1|     85| 1929|
|3-6 months   |MAL-ED         |INDIA        |1             |            0|     74|  200|
|3-6 months   |MAL-ED         |INDIA        |1             |            1|     13|  200|
|3-6 months   |MAL-ED         |INDIA        |2             |            0|     53|  200|
|3-6 months   |MAL-ED         |INDIA        |2             |            1|      8|  200|
|3-6 months   |MAL-ED         |INDIA        |3             |            0|     30|  200|
|3-6 months   |MAL-ED         |INDIA        |3             |            1|     13|  200|
|3-6 months   |MAL-ED         |INDIA        |4             |            0|      7|  200|
|3-6 months   |MAL-ED         |INDIA        |4             |            1|      2|  200|
|3-6 months   |MAL-ED         |BANGLADESH   |1             |            0|     50|  207|
|3-6 months   |MAL-ED         |BANGLADESH   |1             |            1|      3|  207|
|3-6 months   |MAL-ED         |BANGLADESH   |2             |            0|     62|  207|
|3-6 months   |MAL-ED         |BANGLADESH   |2             |            1|     17|  207|
|3-6 months   |MAL-ED         |BANGLADESH   |3             |            0|     49|  207|
|3-6 months   |MAL-ED         |BANGLADESH   |3             |            1|      4|  207|
|3-6 months   |MAL-ED         |BANGLADESH   |4             |            0|     18|  207|
|3-6 months   |MAL-ED         |BANGLADESH   |4             |            1|      4|  207|
|3-6 months   |MAL-ED         |PERU         |1             |            0|      5|  248|
|3-6 months   |MAL-ED         |PERU         |1             |            1|      1|  248|
|3-6 months   |MAL-ED         |PERU         |2             |            0|     18|  248|
|3-6 months   |MAL-ED         |PERU         |2             |            1|      7|  248|
|3-6 months   |MAL-ED         |PERU         |3             |            0|     60|  248|
|3-6 months   |MAL-ED         |PERU         |3             |            1|     18|  248|
|3-6 months   |MAL-ED         |PERU         |4             |            0|     95|  248|
|3-6 months   |MAL-ED         |PERU         |4             |            1|     44|  248|
|3-6 months   |MAL-ED         |NEPAL        |1             |            0|     53|  209|
|3-6 months   |MAL-ED         |NEPAL        |1             |            1|      0|  209|
|3-6 months   |MAL-ED         |NEPAL        |2             |            0|     63|  209|
|3-6 months   |MAL-ED         |NEPAL        |2             |            1|      3|  209|
|3-6 months   |MAL-ED         |NEPAL        |3             |            0|     61|  209|
|3-6 months   |MAL-ED         |NEPAL        |3             |            1|      2|  209|
|3-6 months   |MAL-ED         |NEPAL        |4             |            0|     27|  209|
|3-6 months   |MAL-ED         |NEPAL        |4             |            1|      0|  209|
|3-6 months   |MAL-ED         |BRAZIL       |1             |            0|      9|  197|
|3-6 months   |MAL-ED         |BRAZIL       |1             |            1|      1|  197|
|3-6 months   |MAL-ED         |BRAZIL       |2             |            0|     23|  197|
|3-6 months   |MAL-ED         |BRAZIL       |2             |            1|      1|  197|
|3-6 months   |MAL-ED         |BRAZIL       |3             |            0|     54|  197|
|3-6 months   |MAL-ED         |BRAZIL       |3             |            1|      4|  197|
|3-6 months   |MAL-ED         |BRAZIL       |4             |            0|     98|  197|
|3-6 months   |MAL-ED         |BRAZIL       |4             |            1|      7|  197|
|3-6 months   |MAL-ED         |TANZANIA     |1             |            0|      3|  215|
|3-6 months   |MAL-ED         |TANZANIA     |1             |            1|      1|  215|
|3-6 months   |MAL-ED         |TANZANIA     |2             |            0|     22|  215|
|3-6 months   |MAL-ED         |TANZANIA     |2             |            1|      3|  215|
|3-6 months   |MAL-ED         |TANZANIA     |3             |            0|     48|  215|
|3-6 months   |MAL-ED         |TANZANIA     |3             |            1|     16|  215|
|3-6 months   |MAL-ED         |TANZANIA     |4             |            0|     90|  215|
|3-6 months   |MAL-ED         |TANZANIA     |4             |            1|     32|  215|
|3-6 months   |MAL-ED         |SOUTH AFRICA |1             |            0|     13|  239|
|3-6 months   |MAL-ED         |SOUTH AFRICA |1             |            1|      1|  239|
|3-6 months   |MAL-ED         |SOUTH AFRICA |2             |            0|     32|  239|
|3-6 months   |MAL-ED         |SOUTH AFRICA |2             |            1|      5|  239|
|3-6 months   |MAL-ED         |SOUTH AFRICA |3             |            0|     64|  239|
|3-6 months   |MAL-ED         |SOUTH AFRICA |3             |            1|     14|  239|
|3-6 months   |MAL-ED         |SOUTH AFRICA |4             |            0|     72|  239|
|3-6 months   |MAL-ED         |SOUTH AFRICA |4             |            1|     38|  239|
|3-6 months   |PROVIDE        |BANGLADESH   |1             |            0|    145|  577|
|3-6 months   |PROVIDE        |BANGLADESH   |1             |            1|     26|  577|
|3-6 months   |PROVIDE        |BANGLADESH   |2             |            0|    177|  577|
|3-6 months   |PROVIDE        |BANGLADESH   |2             |            1|     31|  577|
|3-6 months   |PROVIDE        |BANGLADESH   |3             |            0|    130|  577|
|3-6 months   |PROVIDE        |BANGLADESH   |3             |            1|     26|  577|
|3-6 months   |PROVIDE        |BANGLADESH   |4             |            0|     32|  577|
|3-6 months   |PROVIDE        |BANGLADESH   |4             |            1|     10|  577|
|3-6 months   |ResPak         |PAKISTAN     |1             |            0|     43|  192|
|3-6 months   |ResPak         |PAKISTAN     |1             |            1|     16|  192|
|3-6 months   |ResPak         |PAKISTAN     |2             |            0|     30|  192|
|3-6 months   |ResPak         |PAKISTAN     |2             |            1|      9|  192|
|3-6 months   |ResPak         |PAKISTAN     |3             |            0|     28|  192|
|3-6 months   |ResPak         |PAKISTAN     |3             |            1|     16|  192|
|3-6 months   |ResPak         |PAKISTAN     |4             |            0|     14|  192|
|3-6 months   |ResPak         |PAKISTAN     |4             |            1|     36|  192|
|3-6 months   |TanzaniaChild2 |TANZANIA     |1             |            0|    322| 2082|
|3-6 months   |TanzaniaChild2 |TANZANIA     |1             |            1|     38| 2082|
|3-6 months   |TanzaniaChild2 |TANZANIA     |2             |            0|    419| 2082|
|3-6 months   |TanzaniaChild2 |TANZANIA     |2             |            1|     58| 2082|
|3-6 months   |TanzaniaChild2 |TANZANIA     |3             |            0|    513| 2082|
|3-6 months   |TanzaniaChild2 |TANZANIA     |3             |            1|     68| 2082|
|3-6 months   |TanzaniaChild2 |TANZANIA     |4             |            0|    566| 2082|
|3-6 months   |TanzaniaChild2 |TANZANIA     |4             |            1|     98| 2082|
|3-6 months   |Vellore Crypto |INDIA        |1             |            0|    144|  361|
|3-6 months   |Vellore Crypto |INDIA        |1             |            1|     44|  361|
|3-6 months   |Vellore Crypto |INDIA        |2             |            0|     66|  361|
|3-6 months   |Vellore Crypto |INDIA        |2             |            1|     27|  361|
|3-6 months   |Vellore Crypto |INDIA        |3             |            0|     33|  361|
|3-6 months   |Vellore Crypto |INDIA        |3             |            1|     18|  361|
|3-6 months   |Vellore Crypto |INDIA        |4             |            0|     14|  361|
|3-6 months   |Vellore Crypto |INDIA        |4             |            1|     15|  361|
|6-9 months   |CMC-V-BCS-2002 |INDIA        |1             |            0|     69|  206|
|6-9 months   |CMC-V-BCS-2002 |INDIA        |1             |            1|     27|  206|
|6-9 months   |CMC-V-BCS-2002 |INDIA        |2             |            0|     44|  206|
|6-9 months   |CMC-V-BCS-2002 |INDIA        |2             |            1|     13|  206|
|6-9 months   |CMC-V-BCS-2002 |INDIA        |3             |            0|     23|  206|
|6-9 months   |CMC-V-BCS-2002 |INDIA        |3             |            1|      7|  206|
|6-9 months   |CMC-V-BCS-2002 |INDIA        |4             |            0|     16|  206|
|6-9 months   |CMC-V-BCS-2002 |INDIA        |4             |            1|      7|  206|
|6-9 months   |CMIN           |BANGLADESH   |1             |            0|     33|  121|
|6-9 months   |CMIN           |BANGLADESH   |1             |            1|     10|  121|
|6-9 months   |CMIN           |BANGLADESH   |2             |            0|     35|  121|
|6-9 months   |CMIN           |BANGLADESH   |2             |            1|      5|  121|
|6-9 months   |CMIN           |BANGLADESH   |3             |            0|     24|  121|
|6-9 months   |CMIN           |BANGLADESH   |3             |            1|      4|  121|
|6-9 months   |CMIN           |BANGLADESH   |4             |            0|      9|  121|
|6-9 months   |CMIN           |BANGLADESH   |4             |            1|      1|  121|
|6-9 months   |CONTENT        |PERU         |1             |            0|      7|  190|
|6-9 months   |CONTENT        |PERU         |1             |            1|      0|  190|
|6-9 months   |CONTENT        |PERU         |2             |            0|     12|  190|
|6-9 months   |CONTENT        |PERU         |2             |            1|      0|  190|
|6-9 months   |CONTENT        |PERU         |3             |            0|     40|  190|
|6-9 months   |CONTENT        |PERU         |3             |            1|      5|  190|
|6-9 months   |CONTENT        |PERU         |4             |            0|    125|  190|
|6-9 months   |CONTENT        |PERU         |4             |            1|      1|  190|
|6-9 months   |EE             |PAKISTAN     |1             |            0|     28|  106|
|6-9 months   |EE             |PAKISTAN     |1             |            1|     15|  106|
|6-9 months   |EE             |PAKISTAN     |2             |            0|     26|  106|
|6-9 months   |EE             |PAKISTAN     |2             |            1|      6|  106|
|6-9 months   |EE             |PAKISTAN     |3             |            0|     21|  106|
|6-9 months   |EE             |PAKISTAN     |3             |            1|      2|  106|
|6-9 months   |EE             |PAKISTAN     |4             |            0|      4|  106|
|6-9 months   |EE             |PAKISTAN     |4             |            1|      4|  106|
|6-9 months   |GMS-Nepal      |NEPAL        |1             |            0|    134|  412|
|6-9 months   |GMS-Nepal      |NEPAL        |1             |            1|     39|  412|
|6-9 months   |GMS-Nepal      |NEPAL        |2             |            0|    111|  412|
|6-9 months   |GMS-Nepal      |NEPAL        |2             |            1|     28|  412|
|6-9 months   |GMS-Nepal      |NEPAL        |3             |            0|     52|  412|
|6-9 months   |GMS-Nepal      |NEPAL        |3             |            1|     12|  412|
|6-9 months   |GMS-Nepal      |NEPAL        |4             |            0|     33|  412|
|6-9 months   |GMS-Nepal      |NEPAL        |4             |            1|      3|  412|
|6-9 months   |Guatemala BSC  |GUATEMALA    |1             |            0|     31|  197|
|6-9 months   |Guatemala BSC  |GUATEMALA    |1             |            1|     15|  197|
|6-9 months   |Guatemala BSC  |GUATEMALA    |2             |            0|     37|  197|
|6-9 months   |Guatemala BSC  |GUATEMALA    |2             |            1|     20|  197|
|6-9 months   |Guatemala BSC  |GUATEMALA    |3             |            0|     30|  197|
|6-9 months   |Guatemala BSC  |GUATEMALA    |3             |            1|     18|  197|
|6-9 months   |Guatemala BSC  |GUATEMALA    |4             |            0|     40|  197|
|6-9 months   |Guatemala BSC  |GUATEMALA    |4             |            1|      6|  197|
|6-9 months   |Keneba         |GAMBIA       |1             |            0|    279| 1507|
|6-9 months   |Keneba         |GAMBIA       |1             |            1|     59| 1507|
|6-9 months   |Keneba         |GAMBIA       |2             |            0|    376| 1507|
|6-9 months   |Keneba         |GAMBIA       |2             |            1|     61| 1507|
|6-9 months   |Keneba         |GAMBIA       |3             |            0|    390| 1507|
|6-9 months   |Keneba         |GAMBIA       |3             |            1|     40| 1507|
|6-9 months   |Keneba         |GAMBIA       |4             |            0|    267| 1507|
|6-9 months   |Keneba         |GAMBIA       |4             |            1|     35| 1507|
|6-9 months   |MAL-ED         |INDIA        |1             |            0|     63|  165|
|6-9 months   |MAL-ED         |INDIA        |1             |            1|     16|  165|
|6-9 months   |MAL-ED         |INDIA        |2             |            0|     48|  165|
|6-9 months   |MAL-ED         |INDIA        |2             |            1|      3|  165|
|6-9 months   |MAL-ED         |INDIA        |3             |            0|     25|  165|
|6-9 months   |MAL-ED         |INDIA        |3             |            1|      1|  165|
|6-9 months   |MAL-ED         |INDIA        |4             |            0|      8|  165|
|6-9 months   |MAL-ED         |INDIA        |4             |            1|      1|  165|
|6-9 months   |MAL-ED         |BANGLADESH   |1             |            0|     37|  165|
|6-9 months   |MAL-ED         |BANGLADESH   |1             |            1|      1|  165|
|6-9 months   |MAL-ED         |BANGLADESH   |2             |            0|     39|  165|
|6-9 months   |MAL-ED         |BANGLADESH   |2             |            1|      4|  165|
|6-9 months   |MAL-ED         |BANGLADESH   |3             |            0|     42|  165|
|6-9 months   |MAL-ED         |BANGLADESH   |3             |            1|      6|  165|
|6-9 months   |MAL-ED         |BANGLADESH   |4             |            0|     31|  165|
|6-9 months   |MAL-ED         |BANGLADESH   |4             |            1|      5|  165|
|6-9 months   |MAL-ED         |PERU         |1             |            0|      2|  167|
|6-9 months   |MAL-ED         |PERU         |1             |            1|      0|  167|
|6-9 months   |MAL-ED         |PERU         |2             |            0|      8|  167|
|6-9 months   |MAL-ED         |PERU         |2             |            1|      3|  167|
|6-9 months   |MAL-ED         |PERU         |3             |            0|     42|  167|
|6-9 months   |MAL-ED         |PERU         |3             |            1|      7|  167|
|6-9 months   |MAL-ED         |PERU         |4             |            0|     93|  167|
|6-9 months   |MAL-ED         |PERU         |4             |            1|     12|  167|
|6-9 months   |MAL-ED         |NEPAL        |1             |            0|     32|  196|
|6-9 months   |MAL-ED         |NEPAL        |1             |            1|      2|  196|
|6-9 months   |MAL-ED         |NEPAL        |2             |            0|     56|  196|
|6-9 months   |MAL-ED         |NEPAL        |2             |            1|      2|  196|
|6-9 months   |MAL-ED         |NEPAL        |3             |            0|     60|  196|
|6-9 months   |MAL-ED         |NEPAL        |3             |            1|      0|  196|
|6-9 months   |MAL-ED         |NEPAL        |4             |            0|     43|  196|
|6-9 months   |MAL-ED         |NEPAL        |4             |            1|      1|  196|
|6-9 months   |MAL-ED         |BRAZIL       |1             |            0|      7|  170|
|6-9 months   |MAL-ED         |BRAZIL       |1             |            1|      0|  170|
|6-9 months   |MAL-ED         |BRAZIL       |2             |            0|     29|  170|
|6-9 months   |MAL-ED         |BRAZIL       |2             |            1|      0|  170|
|6-9 months   |MAL-ED         |BRAZIL       |3             |            0|     34|  170|
|6-9 months   |MAL-ED         |BRAZIL       |3             |            1|      0|  170|
|6-9 months   |MAL-ED         |BRAZIL       |4             |            0|     96|  170|
|6-9 months   |MAL-ED         |BRAZIL       |4             |            1|      4|  170|
|6-9 months   |MAL-ED         |TANZANIA     |1             |            0|     11|  162|
|6-9 months   |MAL-ED         |TANZANIA     |1             |            1|      2|  162|
|6-9 months   |MAL-ED         |TANZANIA     |2             |            0|     22|  162|
|6-9 months   |MAL-ED         |TANZANIA     |2             |            1|     12|  162|
|6-9 months   |MAL-ED         |TANZANIA     |3             |            0|     36|  162|
|6-9 months   |MAL-ED         |TANZANIA     |3             |            1|     14|  162|
|6-9 months   |MAL-ED         |TANZANIA     |4             |            0|     48|  162|
|6-9 months   |MAL-ED         |TANZANIA     |4             |            1|     17|  162|
|6-9 months   |MAL-ED         |SOUTH AFRICA |1             |            0|     17|  172|
|6-9 months   |MAL-ED         |SOUTH AFRICA |1             |            1|      5|  172|
|6-9 months   |MAL-ED         |SOUTH AFRICA |2             |            0|     27|  172|
|6-9 months   |MAL-ED         |SOUTH AFRICA |2             |            1|      2|  172|
|6-9 months   |MAL-ED         |SOUTH AFRICA |3             |            0|     45|  172|
|6-9 months   |MAL-ED         |SOUTH AFRICA |3             |            1|      9|  172|
|6-9 months   |MAL-ED         |SOUTH AFRICA |4             |            0|     61|  172|
|6-9 months   |MAL-ED         |SOUTH AFRICA |4             |            1|      6|  172|
|6-9 months   |PROVIDE        |BANGLADESH   |1             |            0|      5|   35|
|6-9 months   |PROVIDE        |BANGLADESH   |1             |            1|      3|   35|
|6-9 months   |PROVIDE        |BANGLADESH   |2             |            0|     11|   35|
|6-9 months   |PROVIDE        |BANGLADESH   |2             |            1|      0|   35|
|6-9 months   |PROVIDE        |BANGLADESH   |3             |            0|      9|   35|
|6-9 months   |PROVIDE        |BANGLADESH   |3             |            1|      1|   35|
|6-9 months   |PROVIDE        |BANGLADESH   |4             |            0|      6|   35|
|6-9 months   |PROVIDE        |BANGLADESH   |4             |            1|      0|   35|
|6-9 months   |ResPak         |PAKISTAN     |1             |            0|     36|  101|
|6-9 months   |ResPak         |PAKISTAN     |1             |            1|      6|  101|
|6-9 months   |ResPak         |PAKISTAN     |2             |            0|     18|  101|
|6-9 months   |ResPak         |PAKISTAN     |2             |            1|      2|  101|
|6-9 months   |ResPak         |PAKISTAN     |3             |            0|     22|  101|
|6-9 months   |ResPak         |PAKISTAN     |3             |            1|      2|  101|
|6-9 months   |ResPak         |PAKISTAN     |4             |            0|     12|  101|
|6-9 months   |ResPak         |PAKISTAN     |4             |            1|      3|  101|
|6-9 months   |TanzaniaChild2 |TANZANIA     |1             |            0|    298| 1679|
|6-9 months   |TanzaniaChild2 |TANZANIA     |1             |            1|     51| 1679|
|6-9 months   |TanzaniaChild2 |TANZANIA     |2             |            0|    329| 1679|
|6-9 months   |TanzaniaChild2 |TANZANIA     |2             |            1|     53| 1679|
|6-9 months   |TanzaniaChild2 |TANZANIA     |3             |            0|    432| 1679|
|6-9 months   |TanzaniaChild2 |TANZANIA     |3             |            1|     54| 1679|
|6-9 months   |TanzaniaChild2 |TANZANIA     |4             |            0|    423| 1679|
|6-9 months   |TanzaniaChild2 |TANZANIA     |4             |            1|     39| 1679|
|6-9 months   |Vellore Crypto |INDIA        |1             |            0|    114|  264|
|6-9 months   |Vellore Crypto |INDIA        |1             |            1|     21|  264|
|6-9 months   |Vellore Crypto |INDIA        |2             |            0|     54|  264|
|6-9 months   |Vellore Crypto |INDIA        |2             |            1|     12|  264|
|6-9 months   |Vellore Crypto |INDIA        |3             |            0|     39|  264|
|6-9 months   |Vellore Crypto |INDIA        |3             |            1|      6|  264|
|6-9 months   |Vellore Crypto |INDIA        |4             |            0|     16|  264|
|6-9 months   |Vellore Crypto |INDIA        |4             |            1|      2|  264|
|9-12 months  |CMC-V-BCS-2002 |INDIA        |1             |            0|     38|  171|
|9-12 months  |CMC-V-BCS-2002 |INDIA        |1             |            1|     22|  171|
|9-12 months  |CMC-V-BCS-2002 |INDIA        |2             |            0|     37|  171|
|9-12 months  |CMC-V-BCS-2002 |INDIA        |2             |            1|     15|  171|
|9-12 months  |CMC-V-BCS-2002 |INDIA        |3             |            0|     23|  171|
|9-12 months  |CMC-V-BCS-2002 |INDIA        |3             |            1|      8|  171|
|9-12 months  |CMC-V-BCS-2002 |INDIA        |4             |            0|     18|  171|
|9-12 months  |CMC-V-BCS-2002 |INDIA        |4             |            1|     10|  171|
|9-12 months  |CMIN           |BANGLADESH   |1             |            0|     18|  104|
|9-12 months  |CMIN           |BANGLADESH   |1             |            1|     14|  104|
|9-12 months  |CMIN           |BANGLADESH   |2             |            0|     28|  104|
|9-12 months  |CMIN           |BANGLADESH   |2             |            1|      6|  104|
|9-12 months  |CMIN           |BANGLADESH   |3             |            0|     23|  104|
|9-12 months  |CMIN           |BANGLADESH   |3             |            1|      5|  104|
|9-12 months  |CMIN           |BANGLADESH   |4             |            0|      9|  104|
|9-12 months  |CMIN           |BANGLADESH   |4             |            1|      1|  104|
|9-12 months  |CONTENT        |PERU         |1             |            0|      5|  186|
|9-12 months  |CONTENT        |PERU         |1             |            1|      0|  186|
|9-12 months  |CONTENT        |PERU         |2             |            0|      5|  186|
|9-12 months  |CONTENT        |PERU         |2             |            1|      4|  186|
|9-12 months  |CONTENT        |PERU         |3             |            0|     34|  186|
|9-12 months  |CONTENT        |PERU         |3             |            1|      0|  186|
|9-12 months  |CONTENT        |PERU         |4             |            0|    137|  186|
|9-12 months  |CONTENT        |PERU         |4             |            1|      1|  186|
|9-12 months  |EE             |PAKISTAN     |1             |            0|     13|   87|
|9-12 months  |EE             |PAKISTAN     |1             |            1|     15|   87|
|9-12 months  |EE             |PAKISTAN     |2             |            0|     19|   87|
|9-12 months  |EE             |PAKISTAN     |2             |            1|      8|   87|
|9-12 months  |EE             |PAKISTAN     |3             |            0|     16|   87|
|9-12 months  |EE             |PAKISTAN     |3             |            1|      4|   87|
|9-12 months  |EE             |PAKISTAN     |4             |            0|     11|   87|
|9-12 months  |EE             |PAKISTAN     |4             |            1|      1|   87|
|9-12 months  |GMS-Nepal      |NEPAL        |1             |            0|    105|  358|
|9-12 months  |GMS-Nepal      |NEPAL        |1             |            1|     28|  358|
|9-12 months  |GMS-Nepal      |NEPAL        |2             |            0|     93|  358|
|9-12 months  |GMS-Nepal      |NEPAL        |2             |            1|     24|  358|
|9-12 months  |GMS-Nepal      |NEPAL        |3             |            0|     63|  358|
|9-12 months  |GMS-Nepal      |NEPAL        |3             |            1|     11|  358|
|9-12 months  |GMS-Nepal      |NEPAL        |4             |            0|     30|  358|
|9-12 months  |GMS-Nepal      |NEPAL        |4             |            1|      4|  358|
|9-12 months  |Guatemala BSC  |GUATEMALA    |1             |            0|     14|  133|
|9-12 months  |Guatemala BSC  |GUATEMALA    |1             |            1|      7|  133|
|9-12 months  |Guatemala BSC  |GUATEMALA    |2             |            0|     24|  133|
|9-12 months  |Guatemala BSC  |GUATEMALA    |2             |            1|     11|  133|
|9-12 months  |Guatemala BSC  |GUATEMALA    |3             |            0|     25|  133|
|9-12 months  |Guatemala BSC  |GUATEMALA    |3             |            1|     14|  133|
|9-12 months  |Guatemala BSC  |GUATEMALA    |4             |            0|     32|  133|
|9-12 months  |Guatemala BSC  |GUATEMALA    |4             |            1|      6|  133|
|9-12 months  |Keneba         |GAMBIA       |1             |            0|    292| 1300|
|9-12 months  |Keneba         |GAMBIA       |1             |            1|     63| 1300|
|9-12 months  |Keneba         |GAMBIA       |2             |            0|    347| 1300|
|9-12 months  |Keneba         |GAMBIA       |2             |            1|     36| 1300|
|9-12 months  |Keneba         |GAMBIA       |3             |            0|    304| 1300|
|9-12 months  |Keneba         |GAMBIA       |3             |            1|     28| 1300|
|9-12 months  |Keneba         |GAMBIA       |4             |            0|    220| 1300|
|9-12 months  |Keneba         |GAMBIA       |4             |            1|     10| 1300|
|9-12 months  |MAL-ED         |INDIA        |1             |            0|     37|  145|
|9-12 months  |MAL-ED         |INDIA        |1             |            1|      9|  145|
|9-12 months  |MAL-ED         |INDIA        |2             |            0|     54|  145|
|9-12 months  |MAL-ED         |INDIA        |2             |            1|      6|  145|
|9-12 months  |MAL-ED         |INDIA        |3             |            0|     20|  145|
|9-12 months  |MAL-ED         |INDIA        |3             |            1|     10|  145|
|9-12 months  |MAL-ED         |INDIA        |4             |            0|      9|  145|
|9-12 months  |MAL-ED         |INDIA        |4             |            1|      0|  145|
|9-12 months  |MAL-ED         |BANGLADESH   |1             |            0|     22|  149|
|9-12 months  |MAL-ED         |BANGLADESH   |1             |            1|      2|  149|
|9-12 months  |MAL-ED         |BANGLADESH   |2             |            0|     36|  149|
|9-12 months  |MAL-ED         |BANGLADESH   |2             |            1|      6|  149|
|9-12 months  |MAL-ED         |BANGLADESH   |3             |            0|     38|  149|
|9-12 months  |MAL-ED         |BANGLADESH   |3             |            1|      7|  149|
|9-12 months  |MAL-ED         |BANGLADESH   |4             |            0|     35|  149|
|9-12 months  |MAL-ED         |BANGLADESH   |4             |            1|      3|  149|
|9-12 months  |MAL-ED         |PERU         |1             |            0|      0|  134|
|9-12 months  |MAL-ED         |PERU         |1             |            1|      0|  134|
|9-12 months  |MAL-ED         |PERU         |2             |            0|      6|  134|
|9-12 months  |MAL-ED         |PERU         |2             |            1|      2|  134|
|9-12 months  |MAL-ED         |PERU         |3             |            0|     31|  134|
|9-12 months  |MAL-ED         |PERU         |3             |            1|      9|  134|
|9-12 months  |MAL-ED         |PERU         |4             |            0|     79|  134|
|9-12 months  |MAL-ED         |PERU         |4             |            1|      7|  134|
|9-12 months  |MAL-ED         |NEPAL        |1             |            0|     16|  189|
|9-12 months  |MAL-ED         |NEPAL        |1             |            1|      2|  189|
|9-12 months  |MAL-ED         |NEPAL        |2             |            0|     55|  189|
|9-12 months  |MAL-ED         |NEPAL        |2             |            1|      2|  189|
|9-12 months  |MAL-ED         |NEPAL        |3             |            0|     54|  189|
|9-12 months  |MAL-ED         |NEPAL        |3             |            1|      1|  189|
|9-12 months  |MAL-ED         |NEPAL        |4             |            0|     59|  189|
|9-12 months  |MAL-ED         |NEPAL        |4             |            1|      0|  189|
|9-12 months  |MAL-ED         |BRAZIL       |1             |            0|      4|  158|
|9-12 months  |MAL-ED         |BRAZIL       |1             |            1|      0|  158|
|9-12 months  |MAL-ED         |BRAZIL       |2             |            0|     13|  158|
|9-12 months  |MAL-ED         |BRAZIL       |2             |            1|      0|  158|
|9-12 months  |MAL-ED         |BRAZIL       |3             |            0|     40|  158|
|9-12 months  |MAL-ED         |BRAZIL       |3             |            1|      0|  158|
|9-12 months  |MAL-ED         |BRAZIL       |4             |            0|     99|  158|
|9-12 months  |MAL-ED         |BRAZIL       |4             |            1|      2|  158|
|9-12 months  |MAL-ED         |TANZANIA     |1             |            0|      5|  130|
|9-12 months  |MAL-ED         |TANZANIA     |1             |            1|      5|  130|
|9-12 months  |MAL-ED         |TANZANIA     |2             |            0|     13|  130|
|9-12 months  |MAL-ED         |TANZANIA     |2             |            1|      9|  130|
|9-12 months  |MAL-ED         |TANZANIA     |3             |            0|     27|  130|
|9-12 months  |MAL-ED         |TANZANIA     |3             |            1|     14|  130|
|9-12 months  |MAL-ED         |TANZANIA     |4             |            0|     43|  130|
|9-12 months  |MAL-ED         |TANZANIA     |4             |            1|     14|  130|
|9-12 months  |MAL-ED         |SOUTH AFRICA |1             |            0|     13|  145|
|9-12 months  |MAL-ED         |SOUTH AFRICA |1             |            1|      2|  145|
|9-12 months  |MAL-ED         |SOUTH AFRICA |2             |            0|     21|  145|
|9-12 months  |MAL-ED         |SOUTH AFRICA |2             |            1|      4|  145|
|9-12 months  |MAL-ED         |SOUTH AFRICA |3             |            0|     39|  145|
|9-12 months  |MAL-ED         |SOUTH AFRICA |3             |            1|      4|  145|
|9-12 months  |MAL-ED         |SOUTH AFRICA |4             |            0|     59|  145|
|9-12 months  |MAL-ED         |SOUTH AFRICA |4             |            1|      3|  145|
|9-12 months  |PROVIDE        |BANGLADESH   |1             |            0|      4|   29|
|9-12 months  |PROVIDE        |BANGLADESH   |1             |            1|      2|   29|
|9-12 months  |PROVIDE        |BANGLADESH   |2             |            0|      7|   29|
|9-12 months  |PROVIDE        |BANGLADESH   |2             |            1|      0|   29|
|9-12 months  |PROVIDE        |BANGLADESH   |3             |            0|      9|   29|
|9-12 months  |PROVIDE        |BANGLADESH   |3             |            1|      2|   29|
|9-12 months  |PROVIDE        |BANGLADESH   |4             |            0|      5|   29|
|9-12 months  |PROVIDE        |BANGLADESH   |4             |            1|      0|   29|
|9-12 months  |ResPak         |PAKISTAN     |1             |            0|     30|   85|
|9-12 months  |ResPak         |PAKISTAN     |1             |            1|      0|   85|
|9-12 months  |ResPak         |PAKISTAN     |2             |            0|     21|   85|
|9-12 months  |ResPak         |PAKISTAN     |2             |            1|      2|   85|
|9-12 months  |ResPak         |PAKISTAN     |3             |            0|     17|   85|
|9-12 months  |ResPak         |PAKISTAN     |3             |            1|      1|   85|
|9-12 months  |ResPak         |PAKISTAN     |4             |            0|     13|   85|
|9-12 months  |ResPak         |PAKISTAN     |4             |            1|      1|   85|
|9-12 months  |TanzaniaChild2 |TANZANIA     |1             |            0|    196| 1288|
|9-12 months  |TanzaniaChild2 |TANZANIA     |1             |            1|     30| 1288|
|9-12 months  |TanzaniaChild2 |TANZANIA     |2             |            0|    269| 1288|
|9-12 months  |TanzaniaChild2 |TANZANIA     |2             |            1|     33| 1288|
|9-12 months  |TanzaniaChild2 |TANZANIA     |3             |            0|    318| 1288|
|9-12 months  |TanzaniaChild2 |TANZANIA     |3             |            1|     35| 1288|
|9-12 months  |TanzaniaChild2 |TANZANIA     |4             |            0|    381| 1288|
|9-12 months  |TanzaniaChild2 |TANZANIA     |4             |            1|     26| 1288|
|9-12 months  |Vellore Crypto |INDIA        |1             |            0|     91|  230|
|9-12 months  |Vellore Crypto |INDIA        |1             |            1|      9|  230|
|9-12 months  |Vellore Crypto |INDIA        |2             |            0|     54|  230|
|9-12 months  |Vellore Crypto |INDIA        |2             |            1|      4|  230|
|9-12 months  |Vellore Crypto |INDIA        |3             |            0|     44|  230|
|9-12 months  |Vellore Crypto |INDIA        |3             |            1|      6|  230|
|9-12 months  |Vellore Crypto |INDIA        |4             |            0|     18|  230|
|9-12 months  |Vellore Crypto |INDIA        |4             |            1|      4|  230|
|12-15 months |CMC-V-BCS-2002 |INDIA        |1             |            0|     22|  129|
|12-15 months |CMC-V-BCS-2002 |INDIA        |1             |            1|      7|  129|
|12-15 months |CMC-V-BCS-2002 |INDIA        |2             |            0|     25|  129|
|12-15 months |CMC-V-BCS-2002 |INDIA        |2             |            1|     11|  129|
|12-15 months |CMC-V-BCS-2002 |INDIA        |3             |            0|     19|  129|
|12-15 months |CMC-V-BCS-2002 |INDIA        |3             |            1|     12|  129|
|12-15 months |CMC-V-BCS-2002 |INDIA        |4             |            0|     18|  129|
|12-15 months |CMC-V-BCS-2002 |INDIA        |4             |            1|     15|  129|
|12-15 months |CMIN           |BANGLADESH   |1             |            0|     14|   89|
|12-15 months |CMIN           |BANGLADESH   |1             |            1|     10|   89|
|12-15 months |CMIN           |BANGLADESH   |2             |            0|     19|   89|
|12-15 months |CMIN           |BANGLADESH   |2             |            1|      9|   89|
|12-15 months |CMIN           |BANGLADESH   |3             |            0|     19|   89|
|12-15 months |CMIN           |BANGLADESH   |3             |            1|      6|   89|
|12-15 months |CMIN           |BANGLADESH   |4             |            0|     12|   89|
|12-15 months |CMIN           |BANGLADESH   |4             |            1|      0|   89|
|12-15 months |CONTENT        |PERU         |1             |            0|      4|  182|
|12-15 months |CONTENT        |PERU         |1             |            1|      1|  182|
|12-15 months |CONTENT        |PERU         |2             |            0|      5|  182|
|12-15 months |CONTENT        |PERU         |2             |            1|      1|  182|
|12-15 months |CONTENT        |PERU         |3             |            0|     25|  182|
|12-15 months |CONTENT        |PERU         |3             |            1|      2|  182|
|12-15 months |CONTENT        |PERU         |4             |            0|    139|  182|
|12-15 months |CONTENT        |PERU         |4             |            1|      5|  182|
|12-15 months |EE             |PAKISTAN     |1             |            0|      3|   69|
|12-15 months |EE             |PAKISTAN     |1             |            1|      5|   69|
|12-15 months |EE             |PAKISTAN     |2             |            0|     15|   69|
|12-15 months |EE             |PAKISTAN     |2             |            1|      6|   69|
|12-15 months |EE             |PAKISTAN     |3             |            0|     17|   69|
|12-15 months |EE             |PAKISTAN     |3             |            1|      8|   69|
|12-15 months |EE             |PAKISTAN     |4             |            0|     14|   69|
|12-15 months |EE             |PAKISTAN     |4             |            1|      1|   69|
|12-15 months |GMS-Nepal      |NEPAL        |1             |            0|    100|  303|
|12-15 months |GMS-Nepal      |NEPAL        |1             |            1|     41|  303|
|12-15 months |GMS-Nepal      |NEPAL        |2             |            0|     85|  303|
|12-15 months |GMS-Nepal      |NEPAL        |2             |            1|      8|  303|
|12-15 months |GMS-Nepal      |NEPAL        |3             |            0|     44|  303|
|12-15 months |GMS-Nepal      |NEPAL        |3             |            1|      6|  303|
|12-15 months |GMS-Nepal      |NEPAL        |4             |            0|     19|  303|
|12-15 months |GMS-Nepal      |NEPAL        |4             |            1|      0|  303|
|12-15 months |Guatemala BSC  |GUATEMALA    |1             |            0|      5|   90|
|12-15 months |Guatemala BSC  |GUATEMALA    |1             |            1|      1|   90|
|12-15 months |Guatemala BSC  |GUATEMALA    |2             |            0|     15|   90|
|12-15 months |Guatemala BSC  |GUATEMALA    |2             |            1|      9|   90|
|12-15 months |Guatemala BSC  |GUATEMALA    |3             |            0|     21|   90|
|12-15 months |Guatemala BSC  |GUATEMALA    |3             |            1|      4|   90|
|12-15 months |Guatemala BSC  |GUATEMALA    |4             |            0|     33|   90|
|12-15 months |Guatemala BSC  |GUATEMALA    |4             |            1|      2|   90|
|12-15 months |Keneba         |GAMBIA       |1             |            0|    207| 1033|
|12-15 months |Keneba         |GAMBIA       |1             |            1|     50| 1033|
|12-15 months |Keneba         |GAMBIA       |2             |            0|    271| 1033|
|12-15 months |Keneba         |GAMBIA       |2             |            1|     37| 1033|
|12-15 months |Keneba         |GAMBIA       |3             |            0|    275| 1033|
|12-15 months |Keneba         |GAMBIA       |3             |            1|     33| 1033|
|12-15 months |Keneba         |GAMBIA       |4             |            0|    150| 1033|
|12-15 months |Keneba         |GAMBIA       |4             |            1|     10| 1033|
|12-15 months |MAL-ED         |INDIA        |1             |            0|     33|  134|
|12-15 months |MAL-ED         |INDIA        |1             |            1|      8|  134|
|12-15 months |MAL-ED         |INDIA        |2             |            0|     44|  134|
|12-15 months |MAL-ED         |INDIA        |2             |            1|      8|  134|
|12-15 months |MAL-ED         |INDIA        |3             |            0|     23|  134|
|12-15 months |MAL-ED         |INDIA        |3             |            1|      5|  134|
|12-15 months |MAL-ED         |INDIA        |4             |            0|     11|  134|
|12-15 months |MAL-ED         |INDIA        |4             |            1|      2|  134|
|12-15 months |MAL-ED         |BANGLADESH   |1             |            0|     17|  137|
|12-15 months |MAL-ED         |BANGLADESH   |1             |            1|      5|  137|
|12-15 months |MAL-ED         |BANGLADESH   |2             |            0|     34|  137|
|12-15 months |MAL-ED         |BANGLADESH   |2             |            1|      8|  137|
|12-15 months |MAL-ED         |BANGLADESH   |3             |            0|     30|  137|
|12-15 months |MAL-ED         |BANGLADESH   |3             |            1|      5|  137|
|12-15 months |MAL-ED         |BANGLADESH   |4             |            0|     32|  137|
|12-15 months |MAL-ED         |BANGLADESH   |4             |            1|      6|  137|
|12-15 months |MAL-ED         |PERU         |1             |            0|      1|  121|
|12-15 months |MAL-ED         |PERU         |1             |            1|      0|  121|
|12-15 months |MAL-ED         |PERU         |2             |            0|      4|  121|
|12-15 months |MAL-ED         |PERU         |2             |            1|      1|  121|
|12-15 months |MAL-ED         |PERU         |3             |            0|     26|  121|
|12-15 months |MAL-ED         |PERU         |3             |            1|      9|  121|
|12-15 months |MAL-ED         |PERU         |4             |            0|     69|  121|
|12-15 months |MAL-ED         |PERU         |4             |            1|     11|  121|
|12-15 months |MAL-ED         |NEPAL        |1             |            0|     14|  187|
|12-15 months |MAL-ED         |NEPAL        |1             |            1|      3|  187|
|12-15 months |MAL-ED         |NEPAL        |2             |            0|     43|  187|
|12-15 months |MAL-ED         |NEPAL        |2             |            1|      4|  187|
|12-15 months |MAL-ED         |NEPAL        |3             |            0|     55|  187|
|12-15 months |MAL-ED         |NEPAL        |3             |            1|      6|  187|
|12-15 months |MAL-ED         |NEPAL        |4             |            0|     61|  187|
|12-15 months |MAL-ED         |NEPAL        |4             |            1|      1|  187|
|12-15 months |MAL-ED         |BRAZIL       |1             |            0|      3|  154|
|12-15 months |MAL-ED         |BRAZIL       |1             |            1|      0|  154|
|12-15 months |MAL-ED         |BRAZIL       |2             |            0|      9|  154|
|12-15 months |MAL-ED         |BRAZIL       |2             |            1|      1|  154|
|12-15 months |MAL-ED         |BRAZIL       |3             |            0|     31|  154|
|12-15 months |MAL-ED         |BRAZIL       |3             |            1|      0|  154|
|12-15 months |MAL-ED         |BRAZIL       |4             |            0|    107|  154|
|12-15 months |MAL-ED         |BRAZIL       |4             |            1|      3|  154|
|12-15 months |MAL-ED         |TANZANIA     |1             |            0|      2|   91|
|12-15 months |MAL-ED         |TANZANIA     |1             |            1|      5|   91|
|12-15 months |MAL-ED         |TANZANIA     |2             |            0|      9|   91|
|12-15 months |MAL-ED         |TANZANIA     |2             |            1|      2|   91|
|12-15 months |MAL-ED         |TANZANIA     |3             |            0|     14|   91|
|12-15 months |MAL-ED         |TANZANIA     |3             |            1|     14|   91|
|12-15 months |MAL-ED         |TANZANIA     |4             |            0|     31|   91|
|12-15 months |MAL-ED         |TANZANIA     |4             |            1|     14|   91|
|12-15 months |MAL-ED         |SOUTH AFRICA |1             |            0|     10|  139|
|12-15 months |MAL-ED         |SOUTH AFRICA |1             |            1|      6|  139|
|12-15 months |MAL-ED         |SOUTH AFRICA |2             |            0|     14|  139|
|12-15 months |MAL-ED         |SOUTH AFRICA |2             |            1|      3|  139|
|12-15 months |MAL-ED         |SOUTH AFRICA |3             |            0|     34|  139|
|12-15 months |MAL-ED         |SOUTH AFRICA |3             |            1|      5|  139|
|12-15 months |MAL-ED         |SOUTH AFRICA |4             |            0|     58|  139|
|12-15 months |MAL-ED         |SOUTH AFRICA |4             |            1|      9|  139|
|12-15 months |PROVIDE        |BANGLADESH   |1             |            0|     57|  407|
|12-15 months |PROVIDE        |BANGLADESH   |1             |            1|     10|  407|
|12-15 months |PROVIDE        |BANGLADESH   |2             |            0|     94|  407|
|12-15 months |PROVIDE        |BANGLADESH   |2             |            1|     13|  407|
|12-15 months |PROVIDE        |BANGLADESH   |3             |            0|    127|  407|
|12-15 months |PROVIDE        |BANGLADESH   |3             |            1|      7|  407|
|12-15 months |PROVIDE        |BANGLADESH   |4             |            0|     96|  407|
|12-15 months |PROVIDE        |BANGLADESH   |4             |            1|      3|  407|
|12-15 months |ResPak         |PAKISTAN     |1             |            0|     26|   67|
|12-15 months |ResPak         |PAKISTAN     |1             |            1|      4|   67|
|12-15 months |ResPak         |PAKISTAN     |2             |            0|     16|   67|
|12-15 months |ResPak         |PAKISTAN     |2             |            1|      2|   67|
|12-15 months |ResPak         |PAKISTAN     |3             |            0|     12|   67|
|12-15 months |ResPak         |PAKISTAN     |3             |            1|      0|   67|
|12-15 months |ResPak         |PAKISTAN     |4             |            0|      7|   67|
|12-15 months |ResPak         |PAKISTAN     |4             |            1|      0|   67|
|12-15 months |TanzaniaChild2 |TANZANIA     |1             |            0|    122|  945|
|12-15 months |TanzaniaChild2 |TANZANIA     |1             |            1|     18|  945|
|12-15 months |TanzaniaChild2 |TANZANIA     |2             |            0|    180|  945|
|12-15 months |TanzaniaChild2 |TANZANIA     |2             |            1|     16|  945|
|12-15 months |TanzaniaChild2 |TANZANIA     |3             |            0|    224|  945|
|12-15 months |TanzaniaChild2 |TANZANIA     |3             |            1|     20|  945|
|12-15 months |TanzaniaChild2 |TANZANIA     |4             |            0|    349|  945|
|12-15 months |TanzaniaChild2 |TANZANIA     |4             |            1|     16|  945|
|12-15 months |Vellore Crypto |INDIA        |1             |            0|     68|  212|
|12-15 months |Vellore Crypto |INDIA        |1             |            1|      9|  212|
|12-15 months |Vellore Crypto |INDIA        |2             |            0|     61|  212|
|12-15 months |Vellore Crypto |INDIA        |2             |            1|      8|  212|
|12-15 months |Vellore Crypto |INDIA        |3             |            0|     39|  212|
|12-15 months |Vellore Crypto |INDIA        |3             |            1|      2|  212|
|12-15 months |Vellore Crypto |INDIA        |4             |            0|     23|  212|
|12-15 months |Vellore Crypto |INDIA        |4             |            1|      2|  212|
|15-18 months |CMC-V-BCS-2002 |INDIA        |1             |            0|     15|  106|
|15-18 months |CMC-V-BCS-2002 |INDIA        |1             |            1|     10|  106|
|15-18 months |CMC-V-BCS-2002 |INDIA        |2             |            0|     15|  106|
|15-18 months |CMC-V-BCS-2002 |INDIA        |2             |            1|     10|  106|
|15-18 months |CMC-V-BCS-2002 |INDIA        |3             |            0|     10|  106|
|15-18 months |CMC-V-BCS-2002 |INDIA        |3             |            1|     13|  106|
|15-18 months |CMC-V-BCS-2002 |INDIA        |4             |            0|     20|  106|
|15-18 months |CMC-V-BCS-2002 |INDIA        |4             |            1|     13|  106|
|15-18 months |CMIN           |BANGLADESH   |1             |            0|      6|   69|
|15-18 months |CMIN           |BANGLADESH   |1             |            1|      5|   69|
|15-18 months |CMIN           |BANGLADESH   |2             |            0|     17|   69|
|15-18 months |CMIN           |BANGLADESH   |2             |            1|      9|   69|
|15-18 months |CMIN           |BANGLADESH   |3             |            0|     18|   69|
|15-18 months |CMIN           |BANGLADESH   |3             |            1|      4|   69|
|15-18 months |CMIN           |BANGLADESH   |4             |            0|      9|   69|
|15-18 months |CMIN           |BANGLADESH   |4             |            1|      1|   69|
|15-18 months |CONTENT        |PERU         |1             |            0|      2|  170|
|15-18 months |CONTENT        |PERU         |1             |            1|      0|  170|
|15-18 months |CONTENT        |PERU         |2             |            0|      5|  170|
|15-18 months |CONTENT        |PERU         |2             |            1|      1|  170|
|15-18 months |CONTENT        |PERU         |3             |            0|     24|  170|
|15-18 months |CONTENT        |PERU         |3             |            1|      3|  170|
|15-18 months |CONTENT        |PERU         |4             |            0|    128|  170|
|15-18 months |CONTENT        |PERU         |4             |            1|      7|  170|
|15-18 months |EE             |PAKISTAN     |1             |            0|      3|   54|
|15-18 months |EE             |PAKISTAN     |1             |            1|      4|   54|
|15-18 months |EE             |PAKISTAN     |2             |            0|     12|   54|
|15-18 months |EE             |PAKISTAN     |2             |            1|      1|   54|
|15-18 months |EE             |PAKISTAN     |3             |            0|     13|   54|
|15-18 months |EE             |PAKISTAN     |3             |            1|      4|   54|
|15-18 months |EE             |PAKISTAN     |4             |            0|     17|   54|
|15-18 months |EE             |PAKISTAN     |4             |            1|      0|   54|
|15-18 months |GMS-Nepal      |NEPAL        |1             |            0|     67|  271|
|15-18 months |GMS-Nepal      |NEPAL        |1             |            1|     45|  271|
|15-18 months |GMS-Nepal      |NEPAL        |2             |            0|     69|  271|
|15-18 months |GMS-Nepal      |NEPAL        |2             |            1|     25|  271|
|15-18 months |GMS-Nepal      |NEPAL        |3             |            0|     38|  271|
|15-18 months |GMS-Nepal      |NEPAL        |3             |            1|      6|  271|
|15-18 months |GMS-Nepal      |NEPAL        |4             |            0|     19|  271|
|15-18 months |GMS-Nepal      |NEPAL        |4             |            1|      2|  271|
|15-18 months |Guatemala BSC  |GUATEMALA    |1             |            0|      0|   26|
|15-18 months |Guatemala BSC  |GUATEMALA    |1             |            1|      1|   26|
|15-18 months |Guatemala BSC  |GUATEMALA    |2             |            0|      3|   26|
|15-18 months |Guatemala BSC  |GUATEMALA    |2             |            1|      1|   26|
|15-18 months |Guatemala BSC  |GUATEMALA    |3             |            0|      5|   26|
|15-18 months |Guatemala BSC  |GUATEMALA    |3             |            1|      1|   26|
|15-18 months |Guatemala BSC  |GUATEMALA    |4             |            0|     13|   26|
|15-18 months |Guatemala BSC  |GUATEMALA    |4             |            1|      2|   26|
|15-18 months |Keneba         |GAMBIA       |1             |            0|    167|  824|
|15-18 months |Keneba         |GAMBIA       |1             |            1|     39|  824|
|15-18 months |Keneba         |GAMBIA       |2             |            0|    217|  824|
|15-18 months |Keneba         |GAMBIA       |2             |            1|     32|  824|
|15-18 months |Keneba         |GAMBIA       |3             |            0|    204|  824|
|15-18 months |Keneba         |GAMBIA       |3             |            1|     15|  824|
|15-18 months |Keneba         |GAMBIA       |4             |            0|    141|  824|
|15-18 months |Keneba         |GAMBIA       |4             |            1|      9|  824|
|15-18 months |MAL-ED         |INDIA        |1             |            0|     20|  115|
|15-18 months |MAL-ED         |INDIA        |1             |            1|      9|  115|
|15-18 months |MAL-ED         |INDIA        |2             |            0|     36|  115|
|15-18 months |MAL-ED         |INDIA        |2             |            1|      6|  115|
|15-18 months |MAL-ED         |INDIA        |3             |            0|     26|  115|
|15-18 months |MAL-ED         |INDIA        |3             |            1|      3|  115|
|15-18 months |MAL-ED         |INDIA        |4             |            0|     15|  115|
|15-18 months |MAL-ED         |INDIA        |4             |            1|      0|  115|
|15-18 months |MAL-ED         |BANGLADESH   |1             |            0|     17|  123|
|15-18 months |MAL-ED         |BANGLADESH   |1             |            1|      5|  123|
|15-18 months |MAL-ED         |BANGLADESH   |2             |            0|     29|  123|
|15-18 months |MAL-ED         |BANGLADESH   |2             |            1|      9|  123|
|15-18 months |MAL-ED         |BANGLADESH   |3             |            0|     23|  123|
|15-18 months |MAL-ED         |BANGLADESH   |3             |            1|      9|  123|
|15-18 months |MAL-ED         |BANGLADESH   |4             |            0|     29|  123|
|15-18 months |MAL-ED         |BANGLADESH   |4             |            1|      2|  123|
|15-18 months |MAL-ED         |PERU         |1             |            0|      0|   99|
|15-18 months |MAL-ED         |PERU         |1             |            1|      0|   99|
|15-18 months |MAL-ED         |PERU         |2             |            0|      2|   99|
|15-18 months |MAL-ED         |PERU         |2             |            1|      3|   99|
|15-18 months |MAL-ED         |PERU         |3             |            0|     18|   99|
|15-18 months |MAL-ED         |PERU         |3             |            1|     12|   99|
|15-18 months |MAL-ED         |PERU         |4             |            0|     53|   99|
|15-18 months |MAL-ED         |PERU         |4             |            1|     11|   99|
|15-18 months |MAL-ED         |NEPAL        |1             |            0|     12|  179|
|15-18 months |MAL-ED         |NEPAL        |1             |            1|      2|  179|
|15-18 months |MAL-ED         |NEPAL        |2             |            0|     37|  179|
|15-18 months |MAL-ED         |NEPAL        |2             |            1|     11|  179|
|15-18 months |MAL-ED         |NEPAL        |3             |            0|     54|  179|
|15-18 months |MAL-ED         |NEPAL        |3             |            1|      2|  179|
|15-18 months |MAL-ED         |NEPAL        |4             |            0|     59|  179|
|15-18 months |MAL-ED         |NEPAL        |4             |            1|      2|  179|
|15-18 months |MAL-ED         |BRAZIL       |1             |            0|      5|  144|
|15-18 months |MAL-ED         |BRAZIL       |1             |            1|      0|  144|
|15-18 months |MAL-ED         |BRAZIL       |2             |            0|     11|  144|
|15-18 months |MAL-ED         |BRAZIL       |2             |            1|      0|  144|
|15-18 months |MAL-ED         |BRAZIL       |3             |            0|     21|  144|
|15-18 months |MAL-ED         |BRAZIL       |3             |            1|      1|  144|
|15-18 months |MAL-ED         |BRAZIL       |4             |            0|    103|  144|
|15-18 months |MAL-ED         |BRAZIL       |4             |            1|      3|  144|
|15-18 months |MAL-ED         |TANZANIA     |1             |            0|      2|   66|
|15-18 months |MAL-ED         |TANZANIA     |1             |            1|      1|   66|
|15-18 months |MAL-ED         |TANZANIA     |2             |            0|      8|   66|
|15-18 months |MAL-ED         |TANZANIA     |2             |            1|      3|   66|
|15-18 months |MAL-ED         |TANZANIA     |3             |            0|     13|   66|
|15-18 months |MAL-ED         |TANZANIA     |3             |            1|      6|   66|
|15-18 months |MAL-ED         |TANZANIA     |4             |            0|     22|   66|
|15-18 months |MAL-ED         |TANZANIA     |4             |            1|     11|   66|
|15-18 months |MAL-ED         |SOUTH AFRICA |1             |            0|      5|  123|
|15-18 months |MAL-ED         |SOUTH AFRICA |1             |            1|      1|  123|
|15-18 months |MAL-ED         |SOUTH AFRICA |2             |            0|     12|  123|
|15-18 months |MAL-ED         |SOUTH AFRICA |2             |            1|      1|  123|
|15-18 months |MAL-ED         |SOUTH AFRICA |3             |            0|     33|  123|
|15-18 months |MAL-ED         |SOUTH AFRICA |3             |            1|      2|  123|
|15-18 months |MAL-ED         |SOUTH AFRICA |4             |            0|     62|  123|
|15-18 months |MAL-ED         |SOUTH AFRICA |4             |            1|      7|  123|
|15-18 months |PROVIDE        |BANGLADESH   |1             |            0|     42|  313|
|15-18 months |PROVIDE        |BANGLADESH   |1             |            1|      6|  313|
|15-18 months |PROVIDE        |BANGLADESH   |2             |            0|     82|  313|
|15-18 months |PROVIDE        |BANGLADESH   |2             |            1|     11|  313|
|15-18 months |PROVIDE        |BANGLADESH   |3             |            0|     88|  313|
|15-18 months |PROVIDE        |BANGLADESH   |3             |            1|      5|  313|
|15-18 months |PROVIDE        |BANGLADESH   |4             |            0|     77|  313|
|15-18 months |PROVIDE        |BANGLADESH   |4             |            1|      2|  313|
|15-18 months |ResPak         |PAKISTAN     |1             |            0|     15|   35|
|15-18 months |ResPak         |PAKISTAN     |1             |            1|      0|   35|
|15-18 months |ResPak         |PAKISTAN     |2             |            0|      8|   35|
|15-18 months |ResPak         |PAKISTAN     |2             |            1|      1|   35|
|15-18 months |ResPak         |PAKISTAN     |3             |            0|     10|   35|
|15-18 months |ResPak         |PAKISTAN     |3             |            1|      0|   35|
|15-18 months |ResPak         |PAKISTAN     |4             |            0|      1|   35|
|15-18 months |ResPak         |PAKISTAN     |4             |            1|      0|   35|
|15-18 months |TanzaniaChild2 |TANZANIA     |1             |            0|     85|  730|
|15-18 months |TanzaniaChild2 |TANZANIA     |1             |            1|     15|  730|
|15-18 months |TanzaniaChild2 |TANZANIA     |2             |            0|    108|  730|
|15-18 months |TanzaniaChild2 |TANZANIA     |2             |            1|     18|  730|
|15-18 months |TanzaniaChild2 |TANZANIA     |3             |            0|    172|  730|
|15-18 months |TanzaniaChild2 |TANZANIA     |3             |            1|     23|  730|
|15-18 months |TanzaniaChild2 |TANZANIA     |4             |            0|    289|  730|
|15-18 months |TanzaniaChild2 |TANZANIA     |4             |            1|     20|  730|
|15-18 months |Vellore Crypto |INDIA        |1             |            0|     56|  198|
|15-18 months |Vellore Crypto |INDIA        |1             |            1|      2|  198|
|15-18 months |Vellore Crypto |INDIA        |2             |            0|     60|  198|
|15-18 months |Vellore Crypto |INDIA        |2             |            1|      5|  198|
|15-18 months |Vellore Crypto |INDIA        |3             |            0|     43|  198|
|15-18 months |Vellore Crypto |INDIA        |3             |            1|      3|  198|
|15-18 months |Vellore Crypto |INDIA        |4             |            0|     27|  198|
|15-18 months |Vellore Crypto |INDIA        |4             |            1|      2|  198|
|18-21 months |CMC-V-BCS-2002 |INDIA        |1             |            0|      9|   72|
|18-21 months |CMC-V-BCS-2002 |INDIA        |1             |            1|      3|   72|
|18-21 months |CMC-V-BCS-2002 |INDIA        |2             |            0|      9|   72|
|18-21 months |CMC-V-BCS-2002 |INDIA        |2             |            1|      8|   72|
|18-21 months |CMC-V-BCS-2002 |INDIA        |3             |            0|      9|   72|
|18-21 months |CMC-V-BCS-2002 |INDIA        |3             |            1|      7|   72|
|18-21 months |CMC-V-BCS-2002 |INDIA        |4             |            0|     19|   72|
|18-21 months |CMC-V-BCS-2002 |INDIA        |4             |            1|      8|   72|
|18-21 months |CMIN           |BANGLADESH   |1             |            0|      6|   55|
|18-21 months |CMIN           |BANGLADESH   |1             |            1|      3|   55|
|18-21 months |CMIN           |BANGLADESH   |2             |            0|     11|   55|
|18-21 months |CMIN           |BANGLADESH   |2             |            1|      5|   55|
|18-21 months |CMIN           |BANGLADESH   |3             |            0|     11|   55|
|18-21 months |CMIN           |BANGLADESH   |3             |            1|      7|   55|
|18-21 months |CMIN           |BANGLADESH   |4             |            0|      8|   55|
|18-21 months |CMIN           |BANGLADESH   |4             |            1|      4|   55|
|18-21 months |CONTENT        |PERU         |1             |            0|      1|  156|
|18-21 months |CONTENT        |PERU         |1             |            1|      0|  156|
|18-21 months |CONTENT        |PERU         |2             |            0|      6|  156|
|18-21 months |CONTENT        |PERU         |2             |            1|      1|  156|
|18-21 months |CONTENT        |PERU         |3             |            0|     20|  156|
|18-21 months |CONTENT        |PERU         |3             |            1|      2|  156|
|18-21 months |CONTENT        |PERU         |4             |            0|    123|  156|
|18-21 months |CONTENT        |PERU         |4             |            1|      3|  156|
|18-21 months |EE             |PAKISTAN     |1             |            0|      6|   47|
|18-21 months |EE             |PAKISTAN     |1             |            1|      3|   47|
|18-21 months |EE             |PAKISTAN     |2             |            0|     11|   47|
|18-21 months |EE             |PAKISTAN     |2             |            1|      3|   47|
|18-21 months |EE             |PAKISTAN     |3             |            0|     12|   47|
|18-21 months |EE             |PAKISTAN     |3             |            1|      1|   47|
|18-21 months |EE             |PAKISTAN     |4             |            0|     10|   47|
|18-21 months |EE             |PAKISTAN     |4             |            1|      1|   47|
|18-21 months |GMS-Nepal      |NEPAL        |1             |            0|     46|  226|
|18-21 months |GMS-Nepal      |NEPAL        |1             |            1|     16|  226|
|18-21 months |GMS-Nepal      |NEPAL        |2             |            0|     58|  226|
|18-21 months |GMS-Nepal      |NEPAL        |2             |            1|     10|  226|
|18-21 months |GMS-Nepal      |NEPAL        |3             |            0|     50|  226|
|18-21 months |GMS-Nepal      |NEPAL        |3             |            1|     13|  226|
|18-21 months |GMS-Nepal      |NEPAL        |4             |            0|     29|  226|
|18-21 months |GMS-Nepal      |NEPAL        |4             |            1|      4|  226|
|18-21 months |Keneba         |GAMBIA       |1             |            0|    135|  772|
|18-21 months |Keneba         |GAMBIA       |1             |            1|     28|  772|
|18-21 months |Keneba         |GAMBIA       |2             |            0|    199|  772|
|18-21 months |Keneba         |GAMBIA       |2             |            1|     28|  772|
|18-21 months |Keneba         |GAMBIA       |3             |            0|    208|  772|
|18-21 months |Keneba         |GAMBIA       |3             |            1|     18|  772|
|18-21 months |Keneba         |GAMBIA       |4             |            0|    141|  772|
|18-21 months |Keneba         |GAMBIA       |4             |            1|     15|  772|
|18-21 months |MAL-ED         |INDIA        |1             |            0|     22|  104|
|18-21 months |MAL-ED         |INDIA        |1             |            1|      3|  104|
|18-21 months |MAL-ED         |INDIA        |2             |            0|     29|  104|
|18-21 months |MAL-ED         |INDIA        |2             |            1|      3|  104|
|18-21 months |MAL-ED         |INDIA        |3             |            0|     29|  104|
|18-21 months |MAL-ED         |INDIA        |3             |            1|      2|  104|
|18-21 months |MAL-ED         |INDIA        |4             |            0|     15|  104|
|18-21 months |MAL-ED         |INDIA        |4             |            1|      1|  104|
|18-21 months |MAL-ED         |BANGLADESH   |1             |            0|     20|  103|
|18-21 months |MAL-ED         |BANGLADESH   |1             |            1|      4|  103|
|18-21 months |MAL-ED         |BANGLADESH   |2             |            0|     24|  103|
|18-21 months |MAL-ED         |BANGLADESH   |2             |            1|      5|  103|
|18-21 months |MAL-ED         |BANGLADESH   |3             |            0|     19|  103|
|18-21 months |MAL-ED         |BANGLADESH   |3             |            1|      2|  103|
|18-21 months |MAL-ED         |BANGLADESH   |4             |            0|     28|  103|
|18-21 months |MAL-ED         |BANGLADESH   |4             |            1|      1|  103|
|18-21 months |MAL-ED         |PERU         |1             |            0|      1|   79|
|18-21 months |MAL-ED         |PERU         |1             |            1|      0|   79|
|18-21 months |MAL-ED         |PERU         |2             |            0|      3|   79|
|18-21 months |MAL-ED         |PERU         |2             |            1|      3|   79|
|18-21 months |MAL-ED         |PERU         |3             |            0|     15|   79|
|18-21 months |MAL-ED         |PERU         |3             |            1|      2|   79|
|18-21 months |MAL-ED         |PERU         |4             |            0|     46|   79|
|18-21 months |MAL-ED         |PERU         |4             |            1|      9|   79|
|18-21 months |MAL-ED         |NEPAL        |1             |            0|     14|  169|
|18-21 months |MAL-ED         |NEPAL        |1             |            1|      1|  169|
|18-21 months |MAL-ED         |NEPAL        |2             |            0|     27|  169|
|18-21 months |MAL-ED         |NEPAL        |2             |            1|      9|  169|
|18-21 months |MAL-ED         |NEPAL        |3             |            0|     65|  169|
|18-21 months |MAL-ED         |NEPAL        |3             |            1|      3|  169|
|18-21 months |MAL-ED         |NEPAL        |4             |            0|     47|  169|
|18-21 months |MAL-ED         |NEPAL        |4             |            1|      3|  169|
|18-21 months |MAL-ED         |BRAZIL       |1             |            0|      7|  137|
|18-21 months |MAL-ED         |BRAZIL       |1             |            1|      0|  137|
|18-21 months |MAL-ED         |BRAZIL       |2             |            0|     15|  137|
|18-21 months |MAL-ED         |BRAZIL       |2             |            1|      0|  137|
|18-21 months |MAL-ED         |BRAZIL       |3             |            0|     20|  137|
|18-21 months |MAL-ED         |BRAZIL       |3             |            1|      0|  137|
|18-21 months |MAL-ED         |BRAZIL       |4             |            0|     94|  137|
|18-21 months |MAL-ED         |BRAZIL       |4             |            1|      1|  137|
|18-21 months |MAL-ED         |TANZANIA     |1             |            0|      2|   49|
|18-21 months |MAL-ED         |TANZANIA     |1             |            1|      0|   49|
|18-21 months |MAL-ED         |TANZANIA     |2             |            0|      4|   49|
|18-21 months |MAL-ED         |TANZANIA     |2             |            1|      1|   49|
|18-21 months |MAL-ED         |TANZANIA     |3             |            0|      4|   49|
|18-21 months |MAL-ED         |TANZANIA     |3             |            1|      8|   49|
|18-21 months |MAL-ED         |TANZANIA     |4             |            0|     23|   49|
|18-21 months |MAL-ED         |TANZANIA     |4             |            1|      7|   49|
|18-21 months |MAL-ED         |SOUTH AFRICA |1             |            0|      5|  109|
|18-21 months |MAL-ED         |SOUTH AFRICA |1             |            1|      1|  109|
|18-21 months |MAL-ED         |SOUTH AFRICA |2             |            0|      8|  109|
|18-21 months |MAL-ED         |SOUTH AFRICA |2             |            1|      0|  109|
|18-21 months |MAL-ED         |SOUTH AFRICA |3             |            0|     23|  109|
|18-21 months |MAL-ED         |SOUTH AFRICA |3             |            1|      2|  109|
|18-21 months |MAL-ED         |SOUTH AFRICA |4             |            0|     60|  109|
|18-21 months |MAL-ED         |SOUTH AFRICA |4             |            1|     10|  109|
|18-21 months |PROVIDE        |BANGLADESH   |1             |            0|     35|  261|
|18-21 months |PROVIDE        |BANGLADESH   |1             |            1|      9|  261|
|18-21 months |PROVIDE        |BANGLADESH   |2             |            0|     67|  261|
|18-21 months |PROVIDE        |BANGLADESH   |2             |            1|      4|  261|
|18-21 months |PROVIDE        |BANGLADESH   |3             |            0|     69|  261|
|18-21 months |PROVIDE        |BANGLADESH   |3             |            1|      0|  261|
|18-21 months |PROVIDE        |BANGLADESH   |4             |            0|     75|  261|
|18-21 months |PROVIDE        |BANGLADESH   |4             |            1|      2|  261|
|18-21 months |TanzaniaChild2 |TANZANIA     |1             |            0|     66|  546|
|18-21 months |TanzaniaChild2 |TANZANIA     |1             |            1|      9|  546|
|18-21 months |TanzaniaChild2 |TANZANIA     |2             |            0|     91|  546|
|18-21 months |TanzaniaChild2 |TANZANIA     |2             |            1|      4|  546|
|18-21 months |TanzaniaChild2 |TANZANIA     |3             |            0|    145|  546|
|18-21 months |TanzaniaChild2 |TANZANIA     |3             |            1|      9|  546|
|18-21 months |TanzaniaChild2 |TANZANIA     |4             |            0|    213|  546|
|18-21 months |TanzaniaChild2 |TANZANIA     |4             |            1|      9|  546|
|18-21 months |Vellore Crypto |INDIA        |1             |            0|     49|  190|
|18-21 months |Vellore Crypto |INDIA        |1             |            1|      6|  190|
|18-21 months |Vellore Crypto |INDIA        |2             |            0|     45|  190|
|18-21 months |Vellore Crypto |INDIA        |2             |            1|      6|  190|
|18-21 months |Vellore Crypto |INDIA        |3             |            0|     50|  190|
|18-21 months |Vellore Crypto |INDIA        |3             |            1|      5|  190|
|18-21 months |Vellore Crypto |INDIA        |4             |            0|     29|  190|
|18-21 months |Vellore Crypto |INDIA        |4             |            1|      0|  190|
|21-24 months |CMC-V-BCS-2002 |INDIA        |1             |            0|      2|   51|
|21-24 months |CMC-V-BCS-2002 |INDIA        |1             |            1|      4|   51|
|21-24 months |CMC-V-BCS-2002 |INDIA        |2             |            0|      3|   51|
|21-24 months |CMC-V-BCS-2002 |INDIA        |2             |            1|      8|   51|
|21-24 months |CMC-V-BCS-2002 |INDIA        |3             |            0|      7|   51|
|21-24 months |CMC-V-BCS-2002 |INDIA        |3             |            1|      4|   51|
|21-24 months |CMC-V-BCS-2002 |INDIA        |4             |            0|     18|   51|
|21-24 months |CMC-V-BCS-2002 |INDIA        |4             |            1|      5|   51|
|21-24 months |CMIN           |BANGLADESH   |1             |            0|      5|   42|
|21-24 months |CMIN           |BANGLADESH   |1             |            1|      0|   42|
|21-24 months |CMIN           |BANGLADESH   |2             |            0|      6|   42|
|21-24 months |CMIN           |BANGLADESH   |2             |            1|      4|   42|
|21-24 months |CMIN           |BANGLADESH   |3             |            0|     12|   42|
|21-24 months |CMIN           |BANGLADESH   |3             |            1|      3|   42|
|21-24 months |CMIN           |BANGLADESH   |4             |            0|     11|   42|
|21-24 months |CMIN           |BANGLADESH   |4             |            1|      1|   42|
|21-24 months |CONTENT        |PERU         |1             |            0|      1|  149|
|21-24 months |CONTENT        |PERU         |1             |            1|      0|  149|
|21-24 months |CONTENT        |PERU         |2             |            0|      3|  149|
|21-24 months |CONTENT        |PERU         |2             |            1|      1|  149|
|21-24 months |CONTENT        |PERU         |3             |            0|     22|  149|
|21-24 months |CONTENT        |PERU         |3             |            1|      2|  149|
|21-24 months |CONTENT        |PERU         |4             |            0|    119|  149|
|21-24 months |CONTENT        |PERU         |4             |            1|      1|  149|
|21-24 months |EE             |PAKISTAN     |1             |            0|      8|   38|
|21-24 months |EE             |PAKISTAN     |1             |            1|      0|   38|
|21-24 months |EE             |PAKISTAN     |2             |            0|      7|   38|
|21-24 months |EE             |PAKISTAN     |2             |            1|      1|   38|
|21-24 months |EE             |PAKISTAN     |3             |            0|     13|   38|
|21-24 months |EE             |PAKISTAN     |3             |            1|      2|   38|
|21-24 months |EE             |PAKISTAN     |4             |            0|      7|   38|
|21-24 months |EE             |PAKISTAN     |4             |            1|      0|   38|
|21-24 months |GMS-Nepal      |NEPAL        |1             |            0|     38|  175|
|21-24 months |GMS-Nepal      |NEPAL        |1             |            1|      5|  175|
|21-24 months |GMS-Nepal      |NEPAL        |2             |            0|     46|  175|
|21-24 months |GMS-Nepal      |NEPAL        |2             |            1|      6|  175|
|21-24 months |GMS-Nepal      |NEPAL        |3             |            0|     43|  175|
|21-24 months |GMS-Nepal      |NEPAL        |3             |            1|      2|  175|
|21-24 months |GMS-Nepal      |NEPAL        |4             |            0|     32|  175|
|21-24 months |GMS-Nepal      |NEPAL        |4             |            1|      3|  175|
|21-24 months |Keneba         |GAMBIA       |1             |            0|    121|  658|
|21-24 months |Keneba         |GAMBIA       |1             |            1|     18|  658|
|21-24 months |Keneba         |GAMBIA       |2             |            0|    161|  658|
|21-24 months |Keneba         |GAMBIA       |2             |            1|     22|  658|
|21-24 months |Keneba         |GAMBIA       |3             |            0|    178|  658|
|21-24 months |Keneba         |GAMBIA       |3             |            1|     21|  658|
|21-24 months |Keneba         |GAMBIA       |4             |            0|    128|  658|
|21-24 months |Keneba         |GAMBIA       |4             |            1|      9|  658|
|21-24 months |MAL-ED         |INDIA        |1             |            0|     19|   94|
|21-24 months |MAL-ED         |INDIA        |1             |            1|      2|   94|
|21-24 months |MAL-ED         |INDIA        |2             |            0|     23|   94|
|21-24 months |MAL-ED         |INDIA        |2             |            1|      5|   94|
|21-24 months |MAL-ED         |INDIA        |3             |            0|     25|   94|
|21-24 months |MAL-ED         |INDIA        |3             |            1|      2|   94|
|21-24 months |MAL-ED         |INDIA        |4             |            0|     18|   94|
|21-24 months |MAL-ED         |INDIA        |4             |            1|      0|   94|
|21-24 months |MAL-ED         |BANGLADESH   |1             |            0|     12|   93|
|21-24 months |MAL-ED         |BANGLADESH   |1             |            1|      4|   93|
|21-24 months |MAL-ED         |BANGLADESH   |2             |            0|     26|   93|
|21-24 months |MAL-ED         |BANGLADESH   |2             |            1|      2|   93|
|21-24 months |MAL-ED         |BANGLADESH   |3             |            0|     19|   93|
|21-24 months |MAL-ED         |BANGLADESH   |3             |            1|      4|   93|
|21-24 months |MAL-ED         |BANGLADESH   |4             |            0|     25|   93|
|21-24 months |MAL-ED         |BANGLADESH   |4             |            1|      1|   93|
|21-24 months |MAL-ED         |PERU         |1             |            0|      1|   65|
|21-24 months |MAL-ED         |PERU         |1             |            1|      1|   65|
|21-24 months |MAL-ED         |PERU         |2             |            0|      3|   65|
|21-24 months |MAL-ED         |PERU         |2             |            1|      0|   65|
|21-24 months |MAL-ED         |PERU         |3             |            0|     15|   65|
|21-24 months |MAL-ED         |PERU         |3             |            1|      2|   65|
|21-24 months |MAL-ED         |PERU         |4             |            0|     42|   65|
|21-24 months |MAL-ED         |PERU         |4             |            1|      1|   65|
|21-24 months |MAL-ED         |NEPAL        |1             |            0|     10|  159|
|21-24 months |MAL-ED         |NEPAL        |1             |            1|      2|  159|
|21-24 months |MAL-ED         |NEPAL        |2             |            0|     30|  159|
|21-24 months |MAL-ED         |NEPAL        |2             |            1|      5|  159|
|21-24 months |MAL-ED         |NEPAL        |3             |            0|     62|  159|
|21-24 months |MAL-ED         |NEPAL        |3             |            1|      2|  159|
|21-24 months |MAL-ED         |NEPAL        |4             |            0|     46|  159|
|21-24 months |MAL-ED         |NEPAL        |4             |            1|      2|  159|
|21-24 months |MAL-ED         |BRAZIL       |1             |            0|     11|  130|
|21-24 months |MAL-ED         |BRAZIL       |1             |            1|      0|  130|
|21-24 months |MAL-ED         |BRAZIL       |2             |            0|     15|  130|
|21-24 months |MAL-ED         |BRAZIL       |2             |            1|      0|  130|
|21-24 months |MAL-ED         |BRAZIL       |3             |            0|     16|  130|
|21-24 months |MAL-ED         |BRAZIL       |3             |            1|      0|  130|
|21-24 months |MAL-ED         |BRAZIL       |4             |            0|     87|  130|
|21-24 months |MAL-ED         |BRAZIL       |4             |            1|      1|  130|
|21-24 months |MAL-ED         |TANZANIA     |1             |            0|      0|   37|
|21-24 months |MAL-ED         |TANZANIA     |1             |            1|      1|   37|
|21-24 months |MAL-ED         |TANZANIA     |2             |            0|      3|   37|
|21-24 months |MAL-ED         |TANZANIA     |2             |            1|      4|   37|
|21-24 months |MAL-ED         |TANZANIA     |3             |            0|      9|   37|
|21-24 months |MAL-ED         |TANZANIA     |3             |            1|      1|   37|
|21-24 months |MAL-ED         |TANZANIA     |4             |            0|     16|   37|
|21-24 months |MAL-ED         |TANZANIA     |4             |            1|      3|   37|
|21-24 months |MAL-ED         |SOUTH AFRICA |1             |            0|      3|  101|
|21-24 months |MAL-ED         |SOUTH AFRICA |1             |            1|      1|  101|
|21-24 months |MAL-ED         |SOUTH AFRICA |2             |            0|     12|  101|
|21-24 months |MAL-ED         |SOUTH AFRICA |2             |            1|      1|  101|
|21-24 months |MAL-ED         |SOUTH AFRICA |3             |            0|     14|  101|
|21-24 months |MAL-ED         |SOUTH AFRICA |3             |            1|      0|  101|
|21-24 months |MAL-ED         |SOUTH AFRICA |4             |            0|     62|  101|
|21-24 months |MAL-ED         |SOUTH AFRICA |4             |            1|      8|  101|
|21-24 months |PROVIDE        |BANGLADESH   |1             |            0|     38|  239|
|21-24 months |PROVIDE        |BANGLADESH   |1             |            1|      2|  239|
|21-24 months |PROVIDE        |BANGLADESH   |2             |            0|     59|  239|
|21-24 months |PROVIDE        |BANGLADESH   |2             |            1|      5|  239|
|21-24 months |PROVIDE        |BANGLADESH   |3             |            0|     70|  239|
|21-24 months |PROVIDE        |BANGLADESH   |3             |            1|      2|  239|
|21-24 months |PROVIDE        |BANGLADESH   |4             |            0|     60|  239|
|21-24 months |PROVIDE        |BANGLADESH   |4             |            1|      3|  239|
|21-24 months |TanzaniaChild2 |TANZANIA     |1             |            0|      1|    1|
|21-24 months |TanzaniaChild2 |TANZANIA     |1             |            1|      0|    1|
|21-24 months |TanzaniaChild2 |TANZANIA     |2             |            0|      0|    1|
|21-24 months |TanzaniaChild2 |TANZANIA     |2             |            1|      0|    1|
|21-24 months |TanzaniaChild2 |TANZANIA     |3             |            0|      0|    1|
|21-24 months |TanzaniaChild2 |TANZANIA     |3             |            1|      0|    1|
|21-24 months |TanzaniaChild2 |TANZANIA     |4             |            0|      0|    1|
|21-24 months |TanzaniaChild2 |TANZANIA     |4             |            1|      0|    1|
|21-24 months |Vellore Crypto |INDIA        |1             |            0|     35|  178|
|21-24 months |Vellore Crypto |INDIA        |1             |            1|     13|  178|
|21-24 months |Vellore Crypto |INDIA        |2             |            0|     43|  178|
|21-24 months |Vellore Crypto |INDIA        |2             |            1|      9|  178|
|21-24 months |Vellore Crypto |INDIA        |3             |            0|     49|  178|
|21-24 months |Vellore Crypto |INDIA        |3             |            1|      3|  178|
|21-24 months |Vellore Crypto |INDIA        |4             |            0|     24|  178|
|21-24 months |Vellore Crypto |INDIA        |4             |            1|      2|  178|


The following strata were considered:

* agecat: 12-15 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: CONTENT, country: PERU
* agecat: 12-15 months, studyid: EE, country: PAKISTAN
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ResPak, country: PAKISTAN
* agecat: 12-15 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 12-15 months, studyid: Vellore Crypto, country: INDIA
* agecat: 15-18 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: CONTENT, country: PERU
* agecat: 15-18 months, studyid: EE, country: PAKISTAN
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 15-18 months, studyid: Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ResPak, country: PAKISTAN
* agecat: 15-18 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 15-18 months, studyid: Vellore Crypto, country: INDIA
* agecat: 18-21 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: CONTENT, country: PERU
* agecat: 18-21 months, studyid: EE, country: PAKISTAN
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 18-21 months, studyid: Vellore Crypto, country: INDIA
* agecat: 21-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: CONTENT, country: PERU
* agecat: 21-24 months, studyid: EE, country: PAKISTAN
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 21-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 3-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: CONTENT, country: PERU
* agecat: 3-6 months, studyid: EE, country: PAKISTAN
* agecat: 3-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 3-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 3-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-9 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: CONTENT, country: PERU
* agecat: 6-9 months, studyid: EE, country: PAKISTAN
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-9 months, studyid: Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-9 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-9 months, studyid: Vellore Crypto, country: INDIA
* agecat: 9-12 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: CONTENT, country: PERU
* agecat: 9-12 months, studyid: EE, country: PAKISTAN
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 9-12 months, studyid: Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ResPak, country: PAKISTAN
* agecat: 9-12 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 9-12 months, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: CONTENT, country: PERU
* agecat: 3-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: CONTENT, country: PERU
* agecat: 6-9 months, studyid: EE, country: PAKISTAN
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-9 months, studyid: Vellore Crypto, country: INDIA
* agecat: 9-12 months, studyid: CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: CONTENT, country: PERU
* agecat: 9-12 months, studyid: EE, country: PAKISTAN
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ResPak, country: PAKISTAN
* agecat: 9-12 months, studyid: Vellore Crypto, country: INDIA
* agecat: 12-15 months, studyid: CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: CONTENT, country: PERU
* agecat: 12-15 months, studyid: EE, country: PAKISTAN
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ResPak, country: PAKISTAN
* agecat: 12-15 months, studyid: Vellore Crypto, country: INDIA
* agecat: 15-18 months, studyid: CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: CONTENT, country: PERU
* agecat: 15-18 months, studyid: EE, country: PAKISTAN
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ResPak, country: PAKISTAN
* agecat: 15-18 months, studyid: Vellore Crypto, country: INDIA
* agecat: 18-21 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: CONTENT, country: PERU
* agecat: 18-21 months, studyid: EE, country: PAKISTAN
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 18-21 months, studyid: Vellore Crypto, country: INDIA
* agecat: 21-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: CONTENT, country: PERU
* agecat: 21-24 months, studyid: EE, country: PAKISTAN
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 21-24 months, studyid: Vellore Crypto, country: INDIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


