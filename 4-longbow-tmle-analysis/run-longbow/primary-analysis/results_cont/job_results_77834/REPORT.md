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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** perdiar24

**Adjustment Set:**

* sex
* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* vagbrth
* hdlvry
* W_birthwt
* W_birthlen
* single
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* delta_arm
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_vagbrth
* delta_hdlvry
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_impfloor
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* syntype
* agecat
* studyid
* country

## Data Summary

|syntype |agecat    |studyid       |country      |perdiar24 | n_cell|    n|
|:-------|:---------|:-------------|:------------|:---------|------:|----:|
|BC      |Birth     |CMIN          |BANGLADESH   |(0%, 5%]  |      8|   18|
|BC      |Birth     |CMIN          |BANGLADESH   |>5%       |      9|   18|
|BC      |Birth     |CMIN          |BANGLADESH   |0%        |      1|   18|
|BC      |Birth     |CONTENT       |PERU         |(0%, 5%]  |      1|    2|
|BC      |Birth     |CONTENT       |PERU         |>5%       |      1|    2|
|BC      |Birth     |CONTENT       |PERU         |0%        |      0|    2|
|BC      |Birth     |EE            |PAKISTAN     |(0%, 5%]  |     54|  177|
|BC      |Birth     |EE            |PAKISTAN     |>5%       |      0|  177|
|BC      |Birth     |EE            |PAKISTAN     |0%        |    123|  177|
|BC      |Birth     |JiVitA-4      |BANGLADESH   |(0%, 5%]  |   2056| 2396|
|BC      |Birth     |JiVitA-4      |BANGLADESH   |>5%       |    245| 2396|
|BC      |Birth     |JiVitA-4      |BANGLADESH   |0%        |     95| 2396|
|BC      |Birth     |MAL-ED        |INDIA        |(0%, 5%]  |     30|   45|
|BC      |Birth     |MAL-ED        |INDIA        |>5%       |     14|   45|
|BC      |Birth     |MAL-ED        |INDIA        |0%        |      1|   45|
|BC      |Birth     |MAL-ED        |BANGLADESH   |(0%, 5%]  |    108|  215|
|BC      |Birth     |MAL-ED        |BANGLADESH   |>5%       |     84|  215|
|BC      |Birth     |MAL-ED        |BANGLADESH   |0%        |     23|  215|
|BC      |Birth     |MAL-ED        |PERU         |(0%, 5%]  |    103|  228|
|BC      |Birth     |MAL-ED        |PERU         |>5%       |    100|  228|
|BC      |Birth     |MAL-ED        |PERU         |0%        |     25|  228|
|BC      |Birth     |MAL-ED        |NEPAL        |(0%, 5%]  |     14|   26|
|BC      |Birth     |MAL-ED        |NEPAL        |>5%       |     11|   26|
|BC      |Birth     |MAL-ED        |NEPAL        |0%        |      1|   26|
|BC      |Birth     |MAL-ED        |BRAZIL       |(0%, 5%]  |     26|   62|
|BC      |Birth     |MAL-ED        |BRAZIL       |>5%       |      0|   62|
|BC      |Birth     |MAL-ED        |BRAZIL       |0%        |     36|   62|
|BC      |Birth     |MAL-ED        |TANZANIA     |(0%, 5%]  |     72|  115|
|BC      |Birth     |MAL-ED        |TANZANIA     |>5%       |     41|  115|
|BC      |Birth     |MAL-ED        |TANZANIA     |0%        |      2|  115|
|BC      |Birth     |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |     77|  120|
|BC      |Birth     |MAL-ED        |SOUTH AFRICA |>5%       |      0|  120|
|BC      |Birth     |MAL-ED        |SOUTH AFRICA |0%        |     43|  120|
|BC      |Birth     |NIH-Birth     |BANGLADESH   |(0%, 5%]  |    316|  572|
|BC      |Birth     |NIH-Birth     |BANGLADESH   |>5%       |    211|  572|
|BC      |Birth     |NIH-Birth     |BANGLADESH   |0%        |     45|  572|
|BC      |Birth     |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |    391|  707|
|BC      |Birth     |NIH-Crypto    |BANGLADESH   |>5%       |    183|  707|
|BC      |Birth     |NIH-Crypto    |BANGLADESH   |0%        |    133|  707|
|BC      |Birth     |PROVIDE       |BANGLADESH   |(0%, 5%]  |    336|  532|
|BC      |Birth     |PROVIDE       |BANGLADESH   |>5%       |    150|  532|
|BC      |Birth     |PROVIDE       |BANGLADESH   |0%        |     46|  532|
|BC      |6 months  |CMIN          |BANGLADESH   |(0%, 5%]  |    104|  241|
|BC      |6 months  |CMIN          |BANGLADESH   |>5%       |    117|  241|
|BC      |6 months  |CMIN          |BANGLADESH   |0%        |     20|  241|
|BC      |6 months  |CONTENT       |PERU         |(0%, 5%]  |    132|  215|
|BC      |6 months  |CONTENT       |PERU         |>5%       |     81|  215|
|BC      |6 months  |CONTENT       |PERU         |0%        |      2|  215|
|BC      |6 months  |EE            |PAKISTAN     |(0%, 5%]  |    115|  375|
|BC      |6 months  |EE            |PAKISTAN     |>5%       |      0|  375|
|BC      |6 months  |EE            |PAKISTAN     |0%        |    260|  375|
|BC      |6 months  |Guatemala BSC |GUATEMALA    |(0%, 5%]  |     72|  296|
|BC      |6 months  |Guatemala BSC |GUATEMALA    |>5%       |    188|  296|
|BC      |6 months  |Guatemala BSC |GUATEMALA    |0%        |     36|  296|
|BC      |6 months  |JiVitA-4      |BANGLADESH   |(0%, 5%]  |   4091| 4833|
|BC      |6 months  |JiVitA-4      |BANGLADESH   |>5%       |    555| 4833|
|BC      |6 months  |JiVitA-4      |BANGLADESH   |0%        |    187| 4833|
|BC      |6 months  |MAL-ED        |INDIA        |(0%, 5%]  |    179|  236|
|BC      |6 months  |MAL-ED        |INDIA        |>5%       |     56|  236|
|BC      |6 months  |MAL-ED        |INDIA        |0%        |      1|  236|
|BC      |6 months  |MAL-ED        |BANGLADESH   |(0%, 5%]  |    130|  241|
|BC      |6 months  |MAL-ED        |BANGLADESH   |>5%       |     85|  241|
|BC      |6 months  |MAL-ED        |BANGLADESH   |0%        |     26|  241|
|BC      |6 months  |MAL-ED        |PERU         |(0%, 5%]  |    120|  273|
|BC      |6 months  |MAL-ED        |PERU         |>5%       |    125|  273|
|BC      |6 months  |MAL-ED        |PERU         |0%        |     28|  273|
|BC      |6 months  |MAL-ED        |NEPAL        |(0%, 5%]  |    141|  236|
|BC      |6 months  |MAL-ED        |NEPAL        |>5%       |     94|  236|
|BC      |6 months  |MAL-ED        |NEPAL        |0%        |      1|  236|
|BC      |6 months  |MAL-ED        |BRAZIL       |(0%, 5%]  |     92|  209|
|BC      |6 months  |MAL-ED        |BRAZIL       |>5%       |      3|  209|
|BC      |6 months  |MAL-ED        |BRAZIL       |0%        |    114|  209|
|BC      |6 months  |MAL-ED        |TANZANIA     |(0%, 5%]  |    163|  247|
|BC      |6 months  |MAL-ED        |TANZANIA     |>5%       |     80|  247|
|BC      |6 months  |MAL-ED        |TANZANIA     |0%        |      4|  247|
|BC      |6 months  |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |    150|  253|
|BC      |6 months  |MAL-ED        |SOUTH AFRICA |>5%       |      1|  253|
|BC      |6 months  |MAL-ED        |SOUTH AFRICA |0%        |    102|  253|
|BC      |6 months  |NIH-Birth     |BANGLADESH   |(0%, 5%]  |    292|  534|
|BC      |6 months  |NIH-Birth     |BANGLADESH   |>5%       |    203|  534|
|BC      |6 months  |NIH-Birth     |BANGLADESH   |0%        |     39|  534|
|BC      |6 months  |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |    394|  715|
|BC      |6 months  |NIH-Crypto    |BANGLADESH   |>5%       |    184|  715|
|BC      |6 months  |NIH-Crypto    |BANGLADESH   |0%        |    137|  715|
|BC      |6 months  |PROVIDE       |BANGLADESH   |(0%, 5%]  |    377|  603|
|BC      |6 months  |PROVIDE       |BANGLADESH   |>5%       |    179|  603|
|BC      |6 months  |PROVIDE       |BANGLADESH   |0%        |     47|  603|
|BC      |6 months  |SAS-FoodSuppl |INDIA        |(0%, 5%]  |     47|  380|
|BC      |6 months  |SAS-FoodSuppl |INDIA        |>5%       |    261|  380|
|BC      |6 months  |SAS-FoodSuppl |INDIA        |0%        |     72|  380|
|BC      |24 months |CMIN          |BANGLADESH   |(0%, 5%]  |    100|  240|
|BC      |24 months |CMIN          |BANGLADESH   |>5%       |    121|  240|
|BC      |24 months |CMIN          |BANGLADESH   |0%        |     19|  240|
|BC      |24 months |CONTENT       |PERU         |(0%, 5%]  |    104|  164|
|BC      |24 months |CONTENT       |PERU         |>5%       |     58|  164|
|BC      |24 months |CONTENT       |PERU         |0%        |      2|  164|
|BC      |24 months |EE            |PAKISTAN     |(0%, 5%]  |     56|  168|
|BC      |24 months |EE            |PAKISTAN     |>5%       |      0|  168|
|BC      |24 months |EE            |PAKISTAN     |0%        |    112|  168|
|BC      |24 months |JiVitA-4      |BANGLADESH   |(0%, 5%]  |   4013| 4735|
|BC      |24 months |JiVitA-4      |BANGLADESH   |>5%       |    533| 4735|
|BC      |24 months |JiVitA-4      |BANGLADESH   |0%        |    189| 4735|
|BC      |24 months |MAL-ED        |INDIA        |(0%, 5%]  |    172|  227|
|BC      |24 months |MAL-ED        |INDIA        |>5%       |     54|  227|
|BC      |24 months |MAL-ED        |INDIA        |0%        |      1|  227|
|BC      |24 months |MAL-ED        |BANGLADESH   |(0%, 5%]  |    111|  212|
|BC      |24 months |MAL-ED        |BANGLADESH   |>5%       |     79|  212|
|BC      |24 months |MAL-ED        |BANGLADESH   |0%        |     22|  212|
|BC      |24 months |MAL-ED        |PERU         |(0%, 5%]  |     87|  201|
|BC      |24 months |MAL-ED        |PERU         |>5%       |     95|  201|
|BC      |24 months |MAL-ED        |PERU         |0%        |     19|  201|
|BC      |24 months |MAL-ED        |NEPAL        |(0%, 5%]  |    137|  228|
|BC      |24 months |MAL-ED        |NEPAL        |>5%       |     90|  228|
|BC      |24 months |MAL-ED        |NEPAL        |0%        |      1|  228|
|BC      |24 months |MAL-ED        |BRAZIL       |(0%, 5%]  |     73|  169|
|BC      |24 months |MAL-ED        |BRAZIL       |>5%       |      3|  169|
|BC      |24 months |MAL-ED        |BRAZIL       |0%        |     93|  169|
|BC      |24 months |MAL-ED        |TANZANIA     |(0%, 5%]  |    141|  214|
|BC      |24 months |MAL-ED        |TANZANIA     |>5%       |     70|  214|
|BC      |24 months |MAL-ED        |TANZANIA     |0%        |      3|  214|
|BC      |24 months |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |    141|  237|
|BC      |24 months |MAL-ED        |SOUTH AFRICA |>5%       |      1|  237|
|BC      |24 months |MAL-ED        |SOUTH AFRICA |0%        |     95|  237|
|BC      |24 months |NIH-Birth     |BANGLADESH   |(0%, 5%]  |    239|  425|
|BC      |24 months |NIH-Birth     |BANGLADESH   |>5%       |    154|  425|
|BC      |24 months |NIH-Birth     |BANGLADESH   |0%        |     32|  425|
|BC      |24 months |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |    284|  514|
|BC      |24 months |NIH-Crypto    |BANGLADESH   |>5%       |    133|  514|
|BC      |24 months |NIH-Crypto    |BANGLADESH   |0%        |     97|  514|
|BC      |24 months |PROVIDE       |BANGLADESH   |(0%, 5%]  |    356|  579|
|BC      |24 months |PROVIDE       |BANGLADESH   |>5%       |    174|  579|
|BC      |24 months |PROVIDE       |BANGLADESH   |0%        |     49|  579|
|FULL    |Birth     |CMIN          |BANGLADESH   |(0%, 5%]  |      3|   19|
|FULL    |Birth     |CMIN          |BANGLADESH   |>5%       |     10|   19|
|FULL    |Birth     |CMIN          |BANGLADESH   |0%        |      6|   19|
|FULL    |Birth     |CONTENT       |PERU         |(0%, 5%]  |      1|    2|
|FULL    |Birth     |CONTENT       |PERU         |>5%       |      1|    2|
|FULL    |Birth     |CONTENT       |PERU         |0%        |      0|    2|
|FULL    |Birth     |EE            |PAKISTAN     |(0%, 5%]  |     62|  177|
|FULL    |Birth     |EE            |PAKISTAN     |>5%       |      0|  177|
|FULL    |Birth     |EE            |PAKISTAN     |0%        |    115|  177|
|FULL    |Birth     |JiVitA-4      |BANGLADESH   |(0%, 5%]  |   2091| 2396|
|FULL    |Birth     |JiVitA-4      |BANGLADESH   |>5%       |    244| 2396|
|FULL    |Birth     |JiVitA-4      |BANGLADESH   |0%        |     61| 2396|
|FULL    |Birth     |MAL-ED        |INDIA        |(0%, 5%]  |     31|   45|
|FULL    |Birth     |MAL-ED        |INDIA        |>5%       |      9|   45|
|FULL    |Birth     |MAL-ED        |INDIA        |0%        |      5|   45|
|FULL    |Birth     |MAL-ED        |BANGLADESH   |(0%, 5%]  |    127|  215|
|FULL    |Birth     |MAL-ED        |BANGLADESH   |>5%       |     74|  215|
|FULL    |Birth     |MAL-ED        |BANGLADESH   |0%        |     14|  215|
|FULL    |Birth     |MAL-ED        |PERU         |(0%, 5%]  |     87|  228|
|FULL    |Birth     |MAL-ED        |PERU         |>5%       |    120|  228|
|FULL    |Birth     |MAL-ED        |PERU         |0%        |     21|  228|
|FULL    |Birth     |MAL-ED        |NEPAL        |(0%, 5%]  |     19|   26|
|FULL    |Birth     |MAL-ED        |NEPAL        |>5%       |      5|   26|
|FULL    |Birth     |MAL-ED        |NEPAL        |0%        |      2|   26|
|FULL    |Birth     |MAL-ED        |BRAZIL       |(0%, 5%]  |     26|   62|
|FULL    |Birth     |MAL-ED        |BRAZIL       |>5%       |      2|   62|
|FULL    |Birth     |MAL-ED        |BRAZIL       |0%        |     34|   62|
|FULL    |Birth     |MAL-ED        |TANZANIA     |(0%, 5%]  |     77|  115|
|FULL    |Birth     |MAL-ED        |TANZANIA     |>5%       |     31|  115|
|FULL    |Birth     |MAL-ED        |TANZANIA     |0%        |      7|  115|
|FULL    |Birth     |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |     69|  112|
|FULL    |Birth     |MAL-ED        |SOUTH AFRICA |>5%       |      1|  112|
|FULL    |Birth     |MAL-ED        |SOUTH AFRICA |0%        |     42|  112|
|FULL    |Birth     |NIH-Birth     |BANGLADESH   |(0%, 5%]  |    327|  572|
|FULL    |Birth     |NIH-Birth     |BANGLADESH   |>5%       |    199|  572|
|FULL    |Birth     |NIH-Birth     |BANGLADESH   |0%        |     46|  572|
|FULL    |Birth     |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |    375|  707|
|FULL    |Birth     |NIH-Crypto    |BANGLADESH   |>5%       |    188|  707|
|FULL    |Birth     |NIH-Crypto    |BANGLADESH   |0%        |    144|  707|
|FULL    |Birth     |PROVIDE       |BANGLADESH   |(0%, 5%]  |    322|  532|
|FULL    |Birth     |PROVIDE       |BANGLADESH   |>5%       |    155|  532|
|FULL    |Birth     |PROVIDE       |BANGLADESH   |0%        |     55|  532|
|FULL    |6 months  |CMIN          |BANGLADESH   |(0%, 5%]  |    111|  243|
|FULL    |6 months  |CMIN          |BANGLADESH   |>5%       |    130|  243|
|FULL    |6 months  |CMIN          |BANGLADESH   |0%        |      2|  243|
|FULL    |6 months  |CONTENT       |PERU         |(0%, 5%]  |    142|  215|
|FULL    |6 months  |CONTENT       |PERU         |>5%       |     67|  215|
|FULL    |6 months  |CONTENT       |PERU         |0%        |      6|  215|
|FULL    |6 months  |EE            |PAKISTAN     |(0%, 5%]  |    117|  375|
|FULL    |6 months  |EE            |PAKISTAN     |>5%       |      0|  375|
|FULL    |6 months  |EE            |PAKISTAN     |0%        |    258|  375|
|FULL    |6 months  |Guatemala BSC |GUATEMALA    |(0%, 5%]  |     70|  299|
|FULL    |6 months  |Guatemala BSC |GUATEMALA    |>5%       |    200|  299|
|FULL    |6 months  |Guatemala BSC |GUATEMALA    |0%        |     29|  299|
|FULL    |6 months  |JiVitA-4      |BANGLADESH   |(0%, 5%]  |   4153| 4833|
|FULL    |6 months  |JiVitA-4      |BANGLADESH   |>5%       |    524| 4833|
|FULL    |6 months  |JiVitA-4      |BANGLADESH   |0%        |    156| 4833|
|FULL    |6 months  |MAL-ED        |INDIA        |(0%, 5%]  |    191|  236|
|FULL    |6 months  |MAL-ED        |INDIA        |>5%       |     42|  236|
|FULL    |6 months  |MAL-ED        |INDIA        |0%        |      3|  236|
|FULL    |6 months  |MAL-ED        |BANGLADESH   |(0%, 5%]  |    142|  241|
|FULL    |6 months  |MAL-ED        |BANGLADESH   |>5%       |     93|  241|
|FULL    |6 months  |MAL-ED        |BANGLADESH   |0%        |      6|  241|
|FULL    |6 months  |MAL-ED        |PERU         |(0%, 5%]  |    109|  273|
|FULL    |6 months  |MAL-ED        |PERU         |>5%       |    157|  273|
|FULL    |6 months  |MAL-ED        |PERU         |0%        |      7|  273|
|FULL    |6 months  |MAL-ED        |NEPAL        |(0%, 5%]  |    143|  236|
|FULL    |6 months  |MAL-ED        |NEPAL        |>5%       |     79|  236|
|FULL    |6 months  |MAL-ED        |NEPAL        |0%        |     14|  236|
|FULL    |6 months  |MAL-ED        |BRAZIL       |(0%, 5%]  |    101|  209|
|FULL    |6 months  |MAL-ED        |BRAZIL       |>5%       |      2|  209|
|FULL    |6 months  |MAL-ED        |BRAZIL       |0%        |    106|  209|
|FULL    |6 months  |MAL-ED        |TANZANIA     |(0%, 5%]  |    177|  247|
|FULL    |6 months  |MAL-ED        |TANZANIA     |>5%       |     61|  247|
|FULL    |6 months  |MAL-ED        |TANZANIA     |0%        |      9|  247|
|FULL    |6 months  |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |    174|  254|
|FULL    |6 months  |MAL-ED        |SOUTH AFRICA |>5%       |      2|  254|
|FULL    |6 months  |MAL-ED        |SOUTH AFRICA |0%        |     78|  254|
|FULL    |6 months  |NIH-Birth     |BANGLADESH   |(0%, 5%]  |    339|  537|
|FULL    |6 months  |NIH-Birth     |BANGLADESH   |>5%       |    183|  537|
|FULL    |6 months  |NIH-Birth     |BANGLADESH   |0%        |     15|  537|
|FULL    |6 months  |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |    386|  715|
|FULL    |6 months  |NIH-Crypto    |BANGLADESH   |>5%       |    195|  715|
|FULL    |6 months  |NIH-Crypto    |BANGLADESH   |0%        |    134|  715|
|FULL    |6 months  |PROVIDE       |BANGLADESH   |(0%, 5%]  |    408|  603|
|FULL    |6 months  |PROVIDE       |BANGLADESH   |>5%       |    183|  603|
|FULL    |6 months  |PROVIDE       |BANGLADESH   |0%        |     12|  603|
|FULL    |6 months  |SAS-FoodSuppl |INDIA        |(0%, 5%]  |     46|  380|
|FULL    |6 months  |SAS-FoodSuppl |INDIA        |>5%       |    260|  380|
|FULL    |6 months  |SAS-FoodSuppl |INDIA        |0%        |     74|  380|
|FULL    |24 months |CMIN          |BANGLADESH   |(0%, 5%]  |    114|  243|
|FULL    |24 months |CMIN          |BANGLADESH   |>5%       |    126|  243|
|FULL    |24 months |CMIN          |BANGLADESH   |0%        |      3|  243|
|FULL    |24 months |CONTENT       |PERU         |(0%, 5%]  |    108|  164|
|FULL    |24 months |CONTENT       |PERU         |>5%       |     52|  164|
|FULL    |24 months |CONTENT       |PERU         |0%        |      4|  164|
|FULL    |24 months |EE            |PAKISTAN     |(0%, 5%]  |     52|  168|
|FULL    |24 months |EE            |PAKISTAN     |>5%       |      0|  168|
|FULL    |24 months |EE            |PAKISTAN     |0%        |    116|  168|
|FULL    |24 months |JiVitA-4      |BANGLADESH   |(0%, 5%]  |   4082| 4735|
|FULL    |24 months |JiVitA-4      |BANGLADESH   |>5%       |    489| 4735|
|FULL    |24 months |JiVitA-4      |BANGLADESH   |0%        |    164| 4735|
|FULL    |24 months |MAL-ED        |INDIA        |(0%, 5%]  |    183|  227|
|FULL    |24 months |MAL-ED        |INDIA        |>5%       |     41|  227|
|FULL    |24 months |MAL-ED        |INDIA        |0%        |      3|  227|
|FULL    |24 months |MAL-ED        |BANGLADESH   |(0%, 5%]  |    130|  212|
|FULL    |24 months |MAL-ED        |BANGLADESH   |>5%       |     76|  212|
|FULL    |24 months |MAL-ED        |BANGLADESH   |0%        |      6|  212|
|FULL    |24 months |MAL-ED        |PERU         |(0%, 5%]  |     84|  201|
|FULL    |24 months |MAL-ED        |PERU         |>5%       |    116|  201|
|FULL    |24 months |MAL-ED        |PERU         |0%        |      1|  201|
|FULL    |24 months |MAL-ED        |NEPAL        |(0%, 5%]  |    140|  228|
|FULL    |24 months |MAL-ED        |NEPAL        |>5%       |     76|  228|
|FULL    |24 months |MAL-ED        |NEPAL        |0%        |     12|  228|
|FULL    |24 months |MAL-ED        |BRAZIL       |(0%, 5%]  |     91|  169|
|FULL    |24 months |MAL-ED        |BRAZIL       |>5%       |      2|  169|
|FULL    |24 months |MAL-ED        |BRAZIL       |0%        |     76|  169|
|FULL    |24 months |MAL-ED        |TANZANIA     |(0%, 5%]  |    156|  214|
|FULL    |24 months |MAL-ED        |TANZANIA     |>5%       |     52|  214|
|FULL    |24 months |MAL-ED        |TANZANIA     |0%        |      6|  214|
|FULL    |24 months |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |    166|  238|
|FULL    |24 months |MAL-ED        |SOUTH AFRICA |>5%       |      1|  238|
|FULL    |24 months |MAL-ED        |SOUTH AFRICA |0%        |     71|  238|
|FULL    |24 months |NIH-Birth     |BANGLADESH   |(0%, 5%]  |    278|  428|
|FULL    |24 months |NIH-Birth     |BANGLADESH   |>5%       |    145|  428|
|FULL    |24 months |NIH-Birth     |BANGLADESH   |0%        |      5|  428|
|FULL    |24 months |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |    276|  514|
|FULL    |24 months |NIH-Crypto    |BANGLADESH   |>5%       |    115|  514|
|FULL    |24 months |NIH-Crypto    |BANGLADESH   |0%        |    123|  514|
|FULL    |24 months |PROVIDE       |BANGLADESH   |(0%, 5%]  |    396|  579|
|FULL    |24 months |PROVIDE       |BANGLADESH   |>5%       |    174|  579|
|FULL    |24 months |PROVIDE       |BANGLADESH   |0%        |      9|  579|
|QI      |Birth     |CMIN          |BANGLADESH   |(0%, 5%]  |      8|   21|
|QI      |Birth     |CMIN          |BANGLADESH   |>5%       |     13|   21|
|QI      |Birth     |CMIN          |BANGLADESH   |0%        |      0|   21|
|QI      |Birth     |CONTENT       |PERU         |(0%, 5%]  |      1|    3|
|QI      |Birth     |CONTENT       |PERU         |>5%       |      2|    3|
|QI      |Birth     |CONTENT       |PERU         |0%        |      0|    3|
|QI      |Birth     |EE            |PAKISTAN     |(0%, 5%]  |    132|  378|
|QI      |Birth     |EE            |PAKISTAN     |>5%       |      0|  378|
|QI      |Birth     |EE            |PAKISTAN     |0%        |    246|  378|
|QI      |Birth     |JiVitA-4      |BANGLADESH   |(0%, 5%]  |    585|  730|
|QI      |Birth     |JiVitA-4      |BANGLADESH   |>5%       |    109|  730|
|QI      |Birth     |JiVitA-4      |BANGLADESH   |0%        |     36|  730|
|QI      |Birth     |MAL-ED        |INDIA        |(0%, 5%]  |    197|  244|
|QI      |Birth     |MAL-ED        |INDIA        |>5%       |     46|  244|
|QI      |Birth     |MAL-ED        |INDIA        |0%        |      1|  244|
|QI      |Birth     |MAL-ED        |BANGLADESH   |(0%, 5%]  |    145|  262|
|QI      |Birth     |MAL-ED        |BANGLADESH   |>5%       |     97|  262|
|QI      |Birth     |MAL-ED        |BANGLADESH   |0%        |     20|  262|
|QI      |Birth     |MAL-ED        |PERU         |(0%, 5%]  |    119|  302|
|QI      |Birth     |MAL-ED        |PERU         |>5%       |    157|  302|
|QI      |Birth     |MAL-ED        |PERU         |0%        |     26|  302|
|QI      |Birth     |MAL-ED        |NEPAL        |(0%, 5%]  |    151|  236|
|QI      |Birth     |MAL-ED        |NEPAL        |>5%       |     84|  236|
|QI      |Birth     |MAL-ED        |NEPAL        |0%        |      1|  236|
|QI      |Birth     |MAL-ED        |BRAZIL       |(0%, 5%]  |    102|  233|
|QI      |Birth     |MAL-ED        |BRAZIL       |>5%       |      0|  233|
|QI      |Birth     |MAL-ED        |BRAZIL       |0%        |    131|  233|
|QI      |Birth     |MAL-ED        |TANZANIA     |(0%, 5%]  |    147|  208|
|QI      |Birth     |MAL-ED        |TANZANIA     |>5%       |     57|  208|
|QI      |Birth     |MAL-ED        |TANZANIA     |0%        |      4|  208|
|QI      |Birth     |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |    195|  307|
|QI      |Birth     |MAL-ED        |SOUTH AFRICA |>5%       |      0|  307|
|QI      |Birth     |MAL-ED        |SOUTH AFRICA |0%        |    112|  307|
|QI      |Birth     |NIH-Birth     |BANGLADESH   |(0%, 5%]  |    373|  606|
|QI      |Birth     |NIH-Birth     |BANGLADESH   |>5%       |    191|  606|
|QI      |Birth     |NIH-Birth     |BANGLADESH   |0%        |     42|  606|
|QI      |Birth     |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |    391|  756|
|QI      |Birth     |NIH-Crypto    |BANGLADESH   |>5%       |    206|  756|
|QI      |Birth     |NIH-Crypto    |BANGLADESH   |0%        |    159|  756|
|QI      |Birth     |PROVIDE       |BANGLADESH   |(0%, 5%]  |    333|  531|
|QI      |Birth     |PROVIDE       |BANGLADESH   |>5%       |    140|  531|
|QI      |Birth     |PROVIDE       |BANGLADESH   |0%        |     58|  531|
|QI      |6 months  |CMIN          |BANGLADESH   |(0%, 5%]  |    105|  234|
|QI      |6 months  |CMIN          |BANGLADESH   |>5%       |    127|  234|
|QI      |6 months  |CMIN          |BANGLADESH   |0%        |      2|  234|
|QI      |6 months  |CONTENT       |PERU         |(0%, 5%]  |    138|  207|
|QI      |6 months  |CONTENT       |PERU         |>5%       |     67|  207|
|QI      |6 months  |CONTENT       |PERU         |0%        |      2|  207|
|QI      |6 months  |EE            |PAKISTAN     |(0%, 5%]  |    118|  343|
|QI      |6 months  |EE            |PAKISTAN     |>5%       |      0|  343|
|QI      |6 months  |EE            |PAKISTAN     |0%        |    225|  343|
|QI      |6 months  |Guatemala BSC |GUATEMALA    |(0%, 5%]  |     61|  256|
|QI      |6 months  |Guatemala BSC |GUATEMALA    |>5%       |    171|  256|
|QI      |6 months  |Guatemala BSC |GUATEMALA    |0%        |     24|  256|
|QI      |6 months  |JiVitA-4      |BANGLADESH   |(0%, 5%]  |    665|  844|
|QI      |6 months  |JiVitA-4      |BANGLADESH   |>5%       |    132|  844|
|QI      |6 months  |JiVitA-4      |BANGLADESH   |0%        |     47|  844|
|QI      |6 months  |MAL-ED        |INDIA        |(0%, 5%]  |    191|  236|
|QI      |6 months  |MAL-ED        |INDIA        |>5%       |     44|  236|
|QI      |6 months  |MAL-ED        |INDIA        |0%        |      1|  236|
|QI      |6 months  |MAL-ED        |BANGLADESH   |(0%, 5%]  |    140|  249|
|QI      |6 months  |MAL-ED        |BANGLADESH   |>5%       |     90|  249|
|QI      |6 months  |MAL-ED        |BANGLADESH   |0%        |     19|  249|
|QI      |6 months  |MAL-ED        |PERU         |(0%, 5%]  |    108|  269|
|QI      |6 months  |MAL-ED        |PERU         |>5%       |    137|  269|
|QI      |6 months  |MAL-ED        |PERU         |0%        |     24|  269|
|QI      |6 months  |MAL-ED        |NEPAL        |(0%, 5%]  |    141|  222|
|QI      |6 months  |MAL-ED        |NEPAL        |>5%       |     80|  222|
|QI      |6 months  |MAL-ED        |NEPAL        |0%        |      1|  222|
|QI      |6 months  |MAL-ED        |BRAZIL       |(0%, 5%]  |     96|  215|
|QI      |6 months  |MAL-ED        |BRAZIL       |>5%       |      0|  215|
|QI      |6 months  |MAL-ED        |BRAZIL       |0%        |    119|  215|
|QI      |6 months  |MAL-ED        |TANZANIA     |(0%, 5%]  |    176|  243|
|QI      |6 months  |MAL-ED        |TANZANIA     |>5%       |     62|  243|
|QI      |6 months  |MAL-ED        |TANZANIA     |0%        |      5|  243|
|QI      |6 months  |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |    178|  281|
|QI      |6 months  |MAL-ED        |SOUTH AFRICA |>5%       |      0|  281|
|QI      |6 months  |MAL-ED        |SOUTH AFRICA |0%        |    103|  281|
|QI      |6 months  |NIH-Birth     |BANGLADESH   |(0%, 5%]  |    254|  391|
|QI      |6 months  |NIH-Birth     |BANGLADESH   |>5%       |    125|  391|
|QI      |6 months  |NIH-Birth     |BANGLADESH   |0%        |     12|  391|
|QI      |6 months  |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |    295|  537|
|QI      |6 months  |NIH-Crypto    |BANGLADESH   |>5%       |    154|  537|
|QI      |6 months  |NIH-Crypto    |BANGLADESH   |0%        |     88|  537|
|QI      |6 months  |PROVIDE       |BANGLADESH   |(0%, 5%]  |    364|  611|
|QI      |6 months  |PROVIDE       |BANGLADESH   |>5%       |    187|  611|
|QI      |6 months  |PROVIDE       |BANGLADESH   |0%        |     60|  611|
|QI      |6 months  |SAS-FoodSuppl |INDIA        |(0%, 5%]  |     25|  255|
|QI      |6 months  |SAS-FoodSuppl |INDIA        |>5%       |    186|  255|
|QI      |6 months  |SAS-FoodSuppl |INDIA        |0%        |     44|  255|
|QI      |24 months |CMIN          |BANGLADESH   |(0%, 5%]  |     44|   86|
|QI      |24 months |CMIN          |BANGLADESH   |>5%       |     41|   86|
|QI      |24 months |CMIN          |BANGLADESH   |0%        |      1|   86|
|QI      |24 months |CONTENT       |PERU         |(0%, 5%]  |     71|  104|
|QI      |24 months |CONTENT       |PERU         |>5%       |     33|  104|
|QI      |24 months |CONTENT       |PERU         |0%        |      0|  104|
|QI      |24 months |EE            |PAKISTAN     |(0%, 5%]  |     44|  113|
|QI      |24 months |EE            |PAKISTAN     |>5%       |      0|  113|
|QI      |24 months |EE            |PAKISTAN     |0%        |     69|  113|
|QI      |24 months |Guatemala BSC |GUATEMALA    |(0%, 5%]  |      1|    3|
|QI      |24 months |Guatemala BSC |GUATEMALA    |>5%       |      2|    3|
|QI      |24 months |Guatemala BSC |GUATEMALA    |0%        |      0|    3|
|QI      |24 months |JiVitA-4      |BANGLADESH   |(0%, 5%]  |     46|   57|
|QI      |24 months |JiVitA-4      |BANGLADESH   |>5%       |      9|   57|
|QI      |24 months |JiVitA-4      |BANGLADESH   |0%        |      2|   57|
|QI      |24 months |MAL-ED        |INDIA        |(0%, 5%]  |     79|  102|
|QI      |24 months |MAL-ED        |INDIA        |>5%       |     23|  102|
|QI      |24 months |MAL-ED        |INDIA        |0%        |      0|  102|
|QI      |24 months |MAL-ED        |BANGLADESH   |(0%, 5%]  |     60|   97|
|QI      |24 months |MAL-ED        |BANGLADESH   |>5%       |     31|   97|
|QI      |24 months |MAL-ED        |BANGLADESH   |0%        |      6|   97|
|QI      |24 months |MAL-ED        |PERU         |(0%, 5%]  |     22|   67|
|QI      |24 months |MAL-ED        |PERU         |>5%       |     42|   67|
|QI      |24 months |MAL-ED        |PERU         |0%        |      3|   67|
|QI      |24 months |MAL-ED        |NEPAL        |(0%, 5%]  |     58|  100|
|QI      |24 months |MAL-ED        |NEPAL        |>5%       |     41|  100|
|QI      |24 months |MAL-ED        |NEPAL        |0%        |      1|  100|
|QI      |24 months |MAL-ED        |BRAZIL       |(0%, 5%]  |     39|   71|
|QI      |24 months |MAL-ED        |BRAZIL       |>5%       |      0|   71|
|QI      |24 months |MAL-ED        |BRAZIL       |0%        |     32|   71|
|QI      |24 months |MAL-ED        |TANZANIA     |(0%, 5%]  |     55|   80|
|QI      |24 months |MAL-ED        |TANZANIA     |>5%       |     23|   80|
|QI      |24 months |MAL-ED        |TANZANIA     |0%        |      2|   80|
|QI      |24 months |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |     58|   88|
|QI      |24 months |MAL-ED        |SOUTH AFRICA |>5%       |      0|   88|
|QI      |24 months |MAL-ED        |SOUTH AFRICA |0%        |     30|   88|
|QI      |24 months |NIH-Birth     |BANGLADESH   |(0%, 5%]  |     25|   32|
|QI      |24 months |NIH-Birth     |BANGLADESH   |>5%       |      6|   32|
|QI      |24 months |NIH-Birth     |BANGLADESH   |0%        |      1|   32|
|QI      |24 months |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |     25|   47|
|QI      |24 months |NIH-Crypto    |BANGLADESH   |>5%       |     17|   47|
|QI      |24 months |NIH-Crypto    |BANGLADESH   |0%        |      5|   47|
|QI      |24 months |PROVIDE       |BANGLADESH   |(0%, 5%]  |     35|   55|
|QI      |24 months |PROVIDE       |BANGLADESH   |>5%       |     17|   55|
|QI      |24 months |PROVIDE       |BANGLADESH   |0%        |      3|   55|
|QI      |24 months |SAS-FoodSuppl |INDIA        |(0%, 5%]  |      2|    6|
|QI      |24 months |SAS-FoodSuppl |INDIA        |>5%       |      4|    6|
|QI      |24 months |SAS-FoodSuppl |INDIA        |0%        |      0|    6|


The following strata were considered:

* syntype: BC, agecat: 24 months, studyid: CMIN, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: CONTENT, country: PERU
* syntype: BC, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: CMIN, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: CONTENT, country: PERU
* syntype: BC, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* syntype: BC, agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: BC, agecat: Birth, studyid: CMIN, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: BC, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: CMIN, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: CONTENT, country: PERU
* syntype: FULL, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: CMIN, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: CONTENT, country: PERU
* syntype: FULL, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* syntype: FULL, agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: FULL, agecat: Birth, studyid: CMIN, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: FULL, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: CMIN, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: CONTENT, country: PERU
* syntype: QI, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: 24 months, studyid: Guatemala BSC, country: GUATEMALA
* syntype: QI, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: QI, agecat: 6 months, studyid: CMIN, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: CONTENT, country: PERU
* syntype: QI, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* syntype: QI, agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: QI, agecat: Birth, studyid: CMIN, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: QI, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* syntype: BC, agecat: Birth, studyid: CMIN, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: BC, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: 6 months, studyid: CONTENT, country: PERU
* syntype: BC, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: 24 months, studyid: CONTENT, country: PERU
* syntype: BC, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: Birth, studyid: CMIN, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: FULL, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: 6 months, studyid: CMIN, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: 24 months, studyid: CMIN, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: CONTENT, country: PERU
* syntype: FULL, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: Birth, studyid: CMIN, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: QI, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: 6 months, studyid: CMIN, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: CONTENT, country: PERU
* syntype: QI, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: 24 months, studyid: CMIN, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: CONTENT, country: PERU
* syntype: QI, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: 24 months, studyid: Guatemala BSC, country: GUATEMALA
* syntype: QI, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: SAS-FoodSuppl, country: INDIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


