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

**Outcome Variable:** wasted

## Predictor Variables

**Intervention Variable:** perdiar24

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid       |country      |perdiar24 | wasted| n_cell|    n|
|:---------|:-------------|:------------|:---------|------:|------:|----:|
|Birth     |CMIN          |BANGLADESH   |(0%, 5%]  |      0|      7|   18|
|Birth     |CMIN          |BANGLADESH   |(0%, 5%]  |      1|      1|   18|
|Birth     |CMIN          |BANGLADESH   |>5%       |      0|      7|   18|
|Birth     |CMIN          |BANGLADESH   |>5%       |      1|      2|   18|
|Birth     |CMIN          |BANGLADESH   |0%        |      0|      0|   18|
|Birth     |CMIN          |BANGLADESH   |0%        |      1|      1|   18|
|Birth     |CONTENT       |PERU         |(0%, 5%]  |      0|      1|    2|
|Birth     |CONTENT       |PERU         |(0%, 5%]  |      1|      0|    2|
|Birth     |CONTENT       |PERU         |>5%       |      0|      1|    2|
|Birth     |CONTENT       |PERU         |>5%       |      1|      0|    2|
|Birth     |CONTENT       |PERU         |0%        |      0|      0|    2|
|Birth     |CONTENT       |PERU         |0%        |      1|      0|    2|
|Birth     |EE            |PAKISTAN     |(0%, 5%]  |      0|     46|  177|
|Birth     |EE            |PAKISTAN     |(0%, 5%]  |      1|      8|  177|
|Birth     |EE            |PAKISTAN     |>5%       |      0|      0|  177|
|Birth     |EE            |PAKISTAN     |>5%       |      1|      0|  177|
|Birth     |EE            |PAKISTAN     |0%        |      0|    109|  177|
|Birth     |EE            |PAKISTAN     |0%        |      1|     14|  177|
|Birth     |JiVitA-4      |BANGLADESH   |(0%, 5%]  |      0|   1851| 2396|
|Birth     |JiVitA-4      |BANGLADESH   |(0%, 5%]  |      1|    205| 2396|
|Birth     |JiVitA-4      |BANGLADESH   |>5%       |      0|    222| 2396|
|Birth     |JiVitA-4      |BANGLADESH   |>5%       |      1|     23| 2396|
|Birth     |JiVitA-4      |BANGLADESH   |0%        |      0|     84| 2396|
|Birth     |JiVitA-4      |BANGLADESH   |0%        |      1|     11| 2396|
|Birth     |MAL-ED        |INDIA        |(0%, 5%]  |      0|     26|   45|
|Birth     |MAL-ED        |INDIA        |(0%, 5%]  |      1|      4|   45|
|Birth     |MAL-ED        |INDIA        |>5%       |      0|     13|   45|
|Birth     |MAL-ED        |INDIA        |>5%       |      1|      1|   45|
|Birth     |MAL-ED        |INDIA        |0%        |      0|      1|   45|
|Birth     |MAL-ED        |INDIA        |0%        |      1|      0|   45|
|Birth     |MAL-ED        |BANGLADESH   |(0%, 5%]  |      0|     92|  215|
|Birth     |MAL-ED        |BANGLADESH   |(0%, 5%]  |      1|     16|  215|
|Birth     |MAL-ED        |BANGLADESH   |>5%       |      0|     68|  215|
|Birth     |MAL-ED        |BANGLADESH   |>5%       |      1|     16|  215|
|Birth     |MAL-ED        |BANGLADESH   |0%        |      0|     19|  215|
|Birth     |MAL-ED        |BANGLADESH   |0%        |      1|      4|  215|
|Birth     |MAL-ED        |PERU         |(0%, 5%]  |      0|    102|  228|
|Birth     |MAL-ED        |PERU         |(0%, 5%]  |      1|      1|  228|
|Birth     |MAL-ED        |PERU         |>5%       |      0|     97|  228|
|Birth     |MAL-ED        |PERU         |>5%       |      1|      3|  228|
|Birth     |MAL-ED        |PERU         |0%        |      0|     24|  228|
|Birth     |MAL-ED        |PERU         |0%        |      1|      1|  228|
|Birth     |MAL-ED        |NEPAL        |(0%, 5%]  |      0|     14|   26|
|Birth     |MAL-ED        |NEPAL        |(0%, 5%]  |      1|      0|   26|
|Birth     |MAL-ED        |NEPAL        |>5%       |      0|     10|   26|
|Birth     |MAL-ED        |NEPAL        |>5%       |      1|      1|   26|
|Birth     |MAL-ED        |NEPAL        |0%        |      0|      0|   26|
|Birth     |MAL-ED        |NEPAL        |0%        |      1|      1|   26|
|Birth     |MAL-ED        |BRAZIL       |(0%, 5%]  |      0|     26|   62|
|Birth     |MAL-ED        |BRAZIL       |(0%, 5%]  |      1|      0|   62|
|Birth     |MAL-ED        |BRAZIL       |>5%       |      0|      0|   62|
|Birth     |MAL-ED        |BRAZIL       |>5%       |      1|      0|   62|
|Birth     |MAL-ED        |BRAZIL       |0%        |      0|     34|   62|
|Birth     |MAL-ED        |BRAZIL       |0%        |      1|      2|   62|
|Birth     |MAL-ED        |TANZANIA     |(0%, 5%]  |      0|     71|  115|
|Birth     |MAL-ED        |TANZANIA     |(0%, 5%]  |      1|      1|  115|
|Birth     |MAL-ED        |TANZANIA     |>5%       |      0|     41|  115|
|Birth     |MAL-ED        |TANZANIA     |>5%       |      1|      0|  115|
|Birth     |MAL-ED        |TANZANIA     |0%        |      0|      2|  115|
|Birth     |MAL-ED        |TANZANIA     |0%        |      1|      0|  115|
|Birth     |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |      0|     72|  120|
|Birth     |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |      1|      5|  120|
|Birth     |MAL-ED        |SOUTH AFRICA |>5%       |      0|      0|  120|
|Birth     |MAL-ED        |SOUTH AFRICA |>5%       |      1|      0|  120|
|Birth     |MAL-ED        |SOUTH AFRICA |0%        |      0|     36|  120|
|Birth     |MAL-ED        |SOUTH AFRICA |0%        |      1|      7|  120|
|Birth     |NIH-Birth     |BANGLADESH   |(0%, 5%]  |      0|    235|  572|
|Birth     |NIH-Birth     |BANGLADESH   |(0%, 5%]  |      1|     81|  572|
|Birth     |NIH-Birth     |BANGLADESH   |>5%       |      0|    142|  572|
|Birth     |NIH-Birth     |BANGLADESH   |>5%       |      1|     69|  572|
|Birth     |NIH-Birth     |BANGLADESH   |0%        |      0|     28|  572|
|Birth     |NIH-Birth     |BANGLADESH   |0%        |      1|     17|  572|
|Birth     |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |      0|    290|  707|
|Birth     |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |      1|    101|  707|
|Birth     |NIH-Crypto    |BANGLADESH   |>5%       |      0|    146|  707|
|Birth     |NIH-Crypto    |BANGLADESH   |>5%       |      1|     37|  707|
|Birth     |NIH-Crypto    |BANGLADESH   |0%        |      0|     99|  707|
|Birth     |NIH-Crypto    |BANGLADESH   |0%        |      1|     34|  707|
|Birth     |PROVIDE       |BANGLADESH   |(0%, 5%]  |      0|    263|  532|
|Birth     |PROVIDE       |BANGLADESH   |(0%, 5%]  |      1|     73|  532|
|Birth     |PROVIDE       |BANGLADESH   |>5%       |      0|    119|  532|
|Birth     |PROVIDE       |BANGLADESH   |>5%       |      1|     31|  532|
|Birth     |PROVIDE       |BANGLADESH   |0%        |      0|     33|  532|
|Birth     |PROVIDE       |BANGLADESH   |0%        |      1|     13|  532|
|6 months  |CMIN          |BANGLADESH   |(0%, 5%]  |      0|     93|  241|
|6 months  |CMIN          |BANGLADESH   |(0%, 5%]  |      1|     11|  241|
|6 months  |CMIN          |BANGLADESH   |>5%       |      0|    109|  241|
|6 months  |CMIN          |BANGLADESH   |>5%       |      1|      8|  241|
|6 months  |CMIN          |BANGLADESH   |0%        |      0|     18|  241|
|6 months  |CMIN          |BANGLADESH   |0%        |      1|      2|  241|
|6 months  |CONTENT       |PERU         |(0%, 5%]  |      0|    132|  215|
|6 months  |CONTENT       |PERU         |(0%, 5%]  |      1|      0|  215|
|6 months  |CONTENT       |PERU         |>5%       |      0|     81|  215|
|6 months  |CONTENT       |PERU         |>5%       |      1|      0|  215|
|6 months  |CONTENT       |PERU         |0%        |      0|      2|  215|
|6 months  |CONTENT       |PERU         |0%        |      1|      0|  215|
|6 months  |EE            |PAKISTAN     |(0%, 5%]  |      0|    101|  375|
|6 months  |EE            |PAKISTAN     |(0%, 5%]  |      1|     14|  375|
|6 months  |EE            |PAKISTAN     |>5%       |      0|      0|  375|
|6 months  |EE            |PAKISTAN     |>5%       |      1|      0|  375|
|6 months  |EE            |PAKISTAN     |0%        |      0|    227|  375|
|6 months  |EE            |PAKISTAN     |0%        |      1|     33|  375|
|6 months  |Guatemala BSC |GUATEMALA    |(0%, 5%]  |      0|     71|  296|
|6 months  |Guatemala BSC |GUATEMALA    |(0%, 5%]  |      1|      1|  296|
|6 months  |Guatemala BSC |GUATEMALA    |>5%       |      0|    185|  296|
|6 months  |Guatemala BSC |GUATEMALA    |>5%       |      1|      3|  296|
|6 months  |Guatemala BSC |GUATEMALA    |0%        |      0|     36|  296|
|6 months  |Guatemala BSC |GUATEMALA    |0%        |      1|      0|  296|
|6 months  |JiVitA-4      |BANGLADESH   |(0%, 5%]  |      0|   3864| 4833|
|6 months  |JiVitA-4      |BANGLADESH   |(0%, 5%]  |      1|    227| 4833|
|6 months  |JiVitA-4      |BANGLADESH   |>5%       |      0|    520| 4833|
|6 months  |JiVitA-4      |BANGLADESH   |>5%       |      1|     35| 4833|
|6 months  |JiVitA-4      |BANGLADESH   |0%        |      0|    174| 4833|
|6 months  |JiVitA-4      |BANGLADESH   |0%        |      1|     13| 4833|
|6 months  |MAL-ED        |INDIA        |(0%, 5%]  |      0|    165|  236|
|6 months  |MAL-ED        |INDIA        |(0%, 5%]  |      1|     14|  236|
|6 months  |MAL-ED        |INDIA        |>5%       |      0|     51|  236|
|6 months  |MAL-ED        |INDIA        |>5%       |      1|      5|  236|
|6 months  |MAL-ED        |INDIA        |0%        |      0|      1|  236|
|6 months  |MAL-ED        |INDIA        |0%        |      1|      0|  236|
|6 months  |MAL-ED        |BANGLADESH   |(0%, 5%]  |      0|    123|  241|
|6 months  |MAL-ED        |BANGLADESH   |(0%, 5%]  |      1|      7|  241|
|6 months  |MAL-ED        |BANGLADESH   |>5%       |      0|     84|  241|
|6 months  |MAL-ED        |BANGLADESH   |>5%       |      1|      1|  241|
|6 months  |MAL-ED        |BANGLADESH   |0%        |      0|     26|  241|
|6 months  |MAL-ED        |BANGLADESH   |0%        |      1|      0|  241|
|6 months  |MAL-ED        |PERU         |(0%, 5%]  |      0|    120|  273|
|6 months  |MAL-ED        |PERU         |(0%, 5%]  |      1|      0|  273|
|6 months  |MAL-ED        |PERU         |>5%       |      0|    125|  273|
|6 months  |MAL-ED        |PERU         |>5%       |      1|      0|  273|
|6 months  |MAL-ED        |PERU         |0%        |      0|     28|  273|
|6 months  |MAL-ED        |PERU         |0%        |      1|      0|  273|
|6 months  |MAL-ED        |NEPAL        |(0%, 5%]  |      0|    140|  236|
|6 months  |MAL-ED        |NEPAL        |(0%, 5%]  |      1|      1|  236|
|6 months  |MAL-ED        |NEPAL        |>5%       |      0|     91|  236|
|6 months  |MAL-ED        |NEPAL        |>5%       |      1|      3|  236|
|6 months  |MAL-ED        |NEPAL        |0%        |      0|      1|  236|
|6 months  |MAL-ED        |NEPAL        |0%        |      1|      0|  236|
|6 months  |MAL-ED        |BRAZIL       |(0%, 5%]  |      0|     91|  209|
|6 months  |MAL-ED        |BRAZIL       |(0%, 5%]  |      1|      1|  209|
|6 months  |MAL-ED        |BRAZIL       |>5%       |      0|      3|  209|
|6 months  |MAL-ED        |BRAZIL       |>5%       |      1|      0|  209|
|6 months  |MAL-ED        |BRAZIL       |0%        |      0|    114|  209|
|6 months  |MAL-ED        |BRAZIL       |0%        |      1|      0|  209|
|6 months  |MAL-ED        |TANZANIA     |(0%, 5%]  |      0|    162|  247|
|6 months  |MAL-ED        |TANZANIA     |(0%, 5%]  |      1|      1|  247|
|6 months  |MAL-ED        |TANZANIA     |>5%       |      0|     80|  247|
|6 months  |MAL-ED        |TANZANIA     |>5%       |      1|      0|  247|
|6 months  |MAL-ED        |TANZANIA     |0%        |      0|      4|  247|
|6 months  |MAL-ED        |TANZANIA     |0%        |      1|      0|  247|
|6 months  |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |      0|    146|  253|
|6 months  |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |      1|      4|  253|
|6 months  |MAL-ED        |SOUTH AFRICA |>5%       |      0|      1|  253|
|6 months  |MAL-ED        |SOUTH AFRICA |>5%       |      1|      0|  253|
|6 months  |MAL-ED        |SOUTH AFRICA |0%        |      0|     99|  253|
|6 months  |MAL-ED        |SOUTH AFRICA |0%        |      1|      3|  253|
|6 months  |NIH-Birth     |BANGLADESH   |(0%, 5%]  |      0|    274|  534|
|6 months  |NIH-Birth     |BANGLADESH   |(0%, 5%]  |      1|     18|  534|
|6 months  |NIH-Birth     |BANGLADESH   |>5%       |      0|    189|  534|
|6 months  |NIH-Birth     |BANGLADESH   |>5%       |      1|     14|  534|
|6 months  |NIH-Birth     |BANGLADESH   |0%        |      0|     37|  534|
|6 months  |NIH-Birth     |BANGLADESH   |0%        |      1|      2|  534|
|6 months  |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |      0|    383|  715|
|6 months  |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |      1|     11|  715|
|6 months  |NIH-Crypto    |BANGLADESH   |>5%       |      0|    175|  715|
|6 months  |NIH-Crypto    |BANGLADESH   |>5%       |      1|      9|  715|
|6 months  |NIH-Crypto    |BANGLADESH   |0%        |      0|    136|  715|
|6 months  |NIH-Crypto    |BANGLADESH   |0%        |      1|      1|  715|
|6 months  |PROVIDE       |BANGLADESH   |(0%, 5%]  |      0|    360|  603|
|6 months  |PROVIDE       |BANGLADESH   |(0%, 5%]  |      1|     17|  603|
|6 months  |PROVIDE       |BANGLADESH   |>5%       |      0|    172|  603|
|6 months  |PROVIDE       |BANGLADESH   |>5%       |      1|      7|  603|
|6 months  |PROVIDE       |BANGLADESH   |0%        |      0|     46|  603|
|6 months  |PROVIDE       |BANGLADESH   |0%        |      1|      1|  603|
|6 months  |SAS-FoodSuppl |INDIA        |(0%, 5%]  |      0|     35|  380|
|6 months  |SAS-FoodSuppl |INDIA        |(0%, 5%]  |      1|     12|  380|
|6 months  |SAS-FoodSuppl |INDIA        |>5%       |      0|    219|  380|
|6 months  |SAS-FoodSuppl |INDIA        |>5%       |      1|     42|  380|
|6 months  |SAS-FoodSuppl |INDIA        |0%        |      0|     57|  380|
|6 months  |SAS-FoodSuppl |INDIA        |0%        |      1|     15|  380|
|24 months |CMIN          |BANGLADESH   |(0%, 5%]  |      0|     90|  240|
|24 months |CMIN          |BANGLADESH   |(0%, 5%]  |      1|     10|  240|
|24 months |CMIN          |BANGLADESH   |>5%       |      0|    108|  240|
|24 months |CMIN          |BANGLADESH   |>5%       |      1|     13|  240|
|24 months |CMIN          |BANGLADESH   |0%        |      0|     17|  240|
|24 months |CMIN          |BANGLADESH   |0%        |      1|      2|  240|
|24 months |CONTENT       |PERU         |(0%, 5%]  |      0|    104|  164|
|24 months |CONTENT       |PERU         |(0%, 5%]  |      1|      0|  164|
|24 months |CONTENT       |PERU         |>5%       |      0|     58|  164|
|24 months |CONTENT       |PERU         |>5%       |      1|      0|  164|
|24 months |CONTENT       |PERU         |0%        |      0|      1|  164|
|24 months |CONTENT       |PERU         |0%        |      1|      1|  164|
|24 months |EE            |PAKISTAN     |(0%, 5%]  |      0|     48|  168|
|24 months |EE            |PAKISTAN     |(0%, 5%]  |      1|      8|  168|
|24 months |EE            |PAKISTAN     |>5%       |      0|      0|  168|
|24 months |EE            |PAKISTAN     |>5%       |      1|      0|  168|
|24 months |EE            |PAKISTAN     |0%        |      0|     90|  168|
|24 months |EE            |PAKISTAN     |0%        |      1|     22|  168|
|24 months |JiVitA-4      |BANGLADESH   |(0%, 5%]  |      0|   3217| 4735|
|24 months |JiVitA-4      |BANGLADESH   |(0%, 5%]  |      1|    796| 4735|
|24 months |JiVitA-4      |BANGLADESH   |>5%       |      0|    445| 4735|
|24 months |JiVitA-4      |BANGLADESH   |>5%       |      1|     88| 4735|
|24 months |JiVitA-4      |BANGLADESH   |0%        |      0|    153| 4735|
|24 months |JiVitA-4      |BANGLADESH   |0%        |      1|     36| 4735|
|24 months |MAL-ED        |INDIA        |(0%, 5%]  |      0|    155|  227|
|24 months |MAL-ED        |INDIA        |(0%, 5%]  |      1|     17|  227|
|24 months |MAL-ED        |INDIA        |>5%       |      0|     45|  227|
|24 months |MAL-ED        |INDIA        |>5%       |      1|      9|  227|
|24 months |MAL-ED        |INDIA        |0%        |      0|      0|  227|
|24 months |MAL-ED        |INDIA        |0%        |      1|      1|  227|
|24 months |MAL-ED        |BANGLADESH   |(0%, 5%]  |      0|     99|  212|
|24 months |MAL-ED        |BANGLADESH   |(0%, 5%]  |      1|     12|  212|
|24 months |MAL-ED        |BANGLADESH   |>5%       |      0|     71|  212|
|24 months |MAL-ED        |BANGLADESH   |>5%       |      1|      8|  212|
|24 months |MAL-ED        |BANGLADESH   |0%        |      0|     21|  212|
|24 months |MAL-ED        |BANGLADESH   |0%        |      1|      1|  212|
|24 months |MAL-ED        |PERU         |(0%, 5%]  |      0|     84|  201|
|24 months |MAL-ED        |PERU         |(0%, 5%]  |      1|      3|  201|
|24 months |MAL-ED        |PERU         |>5%       |      0|     94|  201|
|24 months |MAL-ED        |PERU         |>5%       |      1|      1|  201|
|24 months |MAL-ED        |PERU         |0%        |      0|     19|  201|
|24 months |MAL-ED        |PERU         |0%        |      1|      0|  201|
|24 months |MAL-ED        |NEPAL        |(0%, 5%]  |      0|    135|  228|
|24 months |MAL-ED        |NEPAL        |(0%, 5%]  |      1|      2|  228|
|24 months |MAL-ED        |NEPAL        |>5%       |      0|     87|  228|
|24 months |MAL-ED        |NEPAL        |>5%       |      1|      3|  228|
|24 months |MAL-ED        |NEPAL        |0%        |      0|      1|  228|
|24 months |MAL-ED        |NEPAL        |0%        |      1|      0|  228|
|24 months |MAL-ED        |BRAZIL       |(0%, 5%]  |      0|     70|  169|
|24 months |MAL-ED        |BRAZIL       |(0%, 5%]  |      1|      3|  169|
|24 months |MAL-ED        |BRAZIL       |>5%       |      0|      3|  169|
|24 months |MAL-ED        |BRAZIL       |>5%       |      1|      0|  169|
|24 months |MAL-ED        |BRAZIL       |0%        |      0|     93|  169|
|24 months |MAL-ED        |BRAZIL       |0%        |      1|      0|  169|
|24 months |MAL-ED        |TANZANIA     |(0%, 5%]  |      0|    137|  214|
|24 months |MAL-ED        |TANZANIA     |(0%, 5%]  |      1|      4|  214|
|24 months |MAL-ED        |TANZANIA     |>5%       |      0|     70|  214|
|24 months |MAL-ED        |TANZANIA     |>5%       |      1|      0|  214|
|24 months |MAL-ED        |TANZANIA     |0%        |      0|      3|  214|
|24 months |MAL-ED        |TANZANIA     |0%        |      1|      0|  214|
|24 months |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |      0|    141|  237|
|24 months |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |      1|      0|  237|
|24 months |MAL-ED        |SOUTH AFRICA |>5%       |      0|      1|  237|
|24 months |MAL-ED        |SOUTH AFRICA |>5%       |      1|      0|  237|
|24 months |MAL-ED        |SOUTH AFRICA |0%        |      0|     94|  237|
|24 months |MAL-ED        |SOUTH AFRICA |0%        |      1|      1|  237|
|24 months |NIH-Birth     |BANGLADESH   |(0%, 5%]  |      0|    208|  425|
|24 months |NIH-Birth     |BANGLADESH   |(0%, 5%]  |      1|     31|  425|
|24 months |NIH-Birth     |BANGLADESH   |>5%       |      0|    138|  425|
|24 months |NIH-Birth     |BANGLADESH   |>5%       |      1|     16|  425|
|24 months |NIH-Birth     |BANGLADESH   |0%        |      0|     29|  425|
|24 months |NIH-Birth     |BANGLADESH   |0%        |      1|      3|  425|
|24 months |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |      0|    256|  514|
|24 months |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |      1|     28|  514|
|24 months |NIH-Crypto    |BANGLADESH   |>5%       |      0|    124|  514|
|24 months |NIH-Crypto    |BANGLADESH   |>5%       |      1|      9|  514|
|24 months |NIH-Crypto    |BANGLADESH   |0%        |      0|     89|  514|
|24 months |NIH-Crypto    |BANGLADESH   |0%        |      1|      8|  514|
|24 months |PROVIDE       |BANGLADESH   |(0%, 5%]  |      0|    308|  579|
|24 months |PROVIDE       |BANGLADESH   |(0%, 5%]  |      1|     48|  579|
|24 months |PROVIDE       |BANGLADESH   |>5%       |      0|    160|  579|
|24 months |PROVIDE       |BANGLADESH   |>5%       |      1|     14|  579|
|24 months |PROVIDE       |BANGLADESH   |0%        |      0|     49|  579|
|24 months |PROVIDE       |BANGLADESH   |0%        |      1|      0|  579|


The following strata were considered:

* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
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
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


