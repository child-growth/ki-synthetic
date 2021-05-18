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

**Intervention Variable:** mwtkg

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |mwtkg      | wast_rec90d| n_cell|    n|
|:-----------|:--------------|:------------|:----------|-----------:|------:|----:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |>=58 kg    |           0|    168|  802|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |>=58 kg    |           1|      9|  802|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |[52-58) kg |           0|    237|  802|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |[52-58) kg |           1|      7|  802|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |<52 kg     |           0|    362|  802|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |<52 kg     |           1|     19|  802|
|0-24 months |JiVitA-3       |BANGLADESH   |>=58 kg    |           0|    102| 7561|
|0-24 months |JiVitA-3       |BANGLADESH   |>=58 kg    |           1|     83| 7561|
|0-24 months |JiVitA-3       |BANGLADESH   |[52-58) kg |           0|    283| 7561|
|0-24 months |JiVitA-3       |BANGLADESH   |[52-58) kg |           1|    229| 7561|
|0-24 months |JiVitA-3       |BANGLADESH   |<52 kg     |           0|   3983| 7561|
|0-24 months |JiVitA-3       |BANGLADESH   |<52 kg     |           1|   2881| 7561|
|0-24 months |LCNI-5         |MALAWI       |>=58 kg    |           0|      5|   79|
|0-24 months |LCNI-5         |MALAWI       |>=58 kg    |           1|      1|   79|
|0-24 months |LCNI-5         |MALAWI       |[52-58) kg |           0|     14|   79|
|0-24 months |LCNI-5         |MALAWI       |[52-58) kg |           1|      2|   79|
|0-24 months |LCNI-5         |MALAWI       |<52 kg     |           0|     47|   79|
|0-24 months |LCNI-5         |MALAWI       |<52 kg     |           1|     10|   79|
|0-24 months |MAL-ED         |INDIA        |>=58 kg    |           0|      7|  179|
|0-24 months |MAL-ED         |INDIA        |>=58 kg    |           1|     17|  179|
|0-24 months |MAL-ED         |INDIA        |[52-58) kg |           0|      7|  179|
|0-24 months |MAL-ED         |INDIA        |[52-58) kg |           1|     12|  179|
|0-24 months |MAL-ED         |INDIA        |<52 kg     |           0|     56|  179|
|0-24 months |MAL-ED         |INDIA        |<52 kg     |           1|     80|  179|
|0-24 months |MAL-ED         |BANGLADESH   |>=58 kg    |           0|      4|  122|
|0-24 months |MAL-ED         |BANGLADESH   |>=58 kg    |           1|     11|  122|
|0-24 months |MAL-ED         |BANGLADESH   |[52-58) kg |           0|      8|  122|
|0-24 months |MAL-ED         |BANGLADESH   |[52-58) kg |           1|     14|  122|
|0-24 months |MAL-ED         |BANGLADESH   |<52 kg     |           0|     31|  122|
|0-24 months |MAL-ED         |BANGLADESH   |<52 kg     |           1|     54|  122|
|0-24 months |MAL-ED         |PERU         |>=58 kg    |           0|      2|   33|
|0-24 months |MAL-ED         |PERU         |>=58 kg    |           1|      9|   33|
|0-24 months |MAL-ED         |PERU         |[52-58) kg |           0|      1|   33|
|0-24 months |MAL-ED         |PERU         |[52-58) kg |           1|      8|   33|
|0-24 months |MAL-ED         |PERU         |<52 kg     |           0|      2|   33|
|0-24 months |MAL-ED         |PERU         |<52 kg     |           1|     11|   33|
|0-24 months |MAL-ED         |NEPAL        |>=58 kg    |           0|      6|   93|
|0-24 months |MAL-ED         |NEPAL        |>=58 kg    |           1|     19|   93|
|0-24 months |MAL-ED         |NEPAL        |[52-58) kg |           0|      4|   93|
|0-24 months |MAL-ED         |NEPAL        |[52-58) kg |           1|     20|   93|
|0-24 months |MAL-ED         |NEPAL        |<52 kg     |           0|      9|   93|
|0-24 months |MAL-ED         |NEPAL        |<52 kg     |           1|     35|   93|
|0-24 months |MAL-ED         |BRAZIL       |>=58 kg    |           0|      3|   24|
|0-24 months |MAL-ED         |BRAZIL       |>=58 kg    |           1|      9|   24|
|0-24 months |MAL-ED         |BRAZIL       |[52-58) kg |           0|      2|   24|
|0-24 months |MAL-ED         |BRAZIL       |[52-58) kg |           1|      4|   24|
|0-24 months |MAL-ED         |BRAZIL       |<52 kg     |           0|      1|   24|
|0-24 months |MAL-ED         |BRAZIL       |<52 kg     |           1|      5|   24|
|0-24 months |MAL-ED         |TANZANIA     |>=58 kg    |           0|      1|   51|
|0-24 months |MAL-ED         |TANZANIA     |>=58 kg    |           1|     12|   51|
|0-24 months |MAL-ED         |TANZANIA     |[52-58) kg |           0|      2|   51|
|0-24 months |MAL-ED         |TANZANIA     |[52-58) kg |           1|      8|   51|
|0-24 months |MAL-ED         |TANZANIA     |<52 kg     |           0|      6|   51|
|0-24 months |MAL-ED         |TANZANIA     |<52 kg     |           1|     22|   51|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=58 kg    |           0|     10|   81|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=58 kg    |           1|     47|   81|
|0-24 months |MAL-ED         |SOUTH AFRICA |[52-58) kg |           0|      4|   81|
|0-24 months |MAL-ED         |SOUTH AFRICA |[52-58) kg |           1|     11|   81|
|0-24 months |MAL-ED         |SOUTH AFRICA |<52 kg     |           0|      2|   81|
|0-24 months |MAL-ED         |SOUTH AFRICA |<52 kg     |           1|      7|   81|
|0-24 months |NIH-Birth      |BANGLADESH   |>=58 kg    |           0|     18|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |>=58 kg    |           1|     25|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |[52-58) kg |           0|     19|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |[52-58) kg |           1|     29|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |<52 kg     |           0|    165|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |<52 kg     |           1|    165|  421|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=58 kg    |           0|     25|  309|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=58 kg    |           1|     52|  309|
|0-24 months |NIH-Crypto     |BANGLADESH   |[52-58) kg |           0|     20|  309|
|0-24 months |NIH-Crypto     |BANGLADESH   |[52-58) kg |           1|     38|  309|
|0-24 months |NIH-Crypto     |BANGLADESH   |<52 kg     |           0|     72|  309|
|0-24 months |NIH-Crypto     |BANGLADESH   |<52 kg     |           1|    102|  309|
|0-24 months |PROBIT         |BELARUS      |>=58 kg    |           0|    329| 3972|
|0-24 months |PROBIT         |BELARUS      |>=58 kg    |           1|   2586| 3972|
|0-24 months |PROBIT         |BELARUS      |[52-58) kg |           0|     65| 3972|
|0-24 months |PROBIT         |BELARUS      |[52-58) kg |           1|    632| 3972|
|0-24 months |PROBIT         |BELARUS      |<52 kg     |           0|     36| 3972|
|0-24 months |PROBIT         |BELARUS      |<52 kg     |           1|    324| 3972|
|0-24 months |PROVIDE        |BANGLADESH   |>=58 kg    |           0|     16|  306|
|0-24 months |PROVIDE        |BANGLADESH   |>=58 kg    |           1|     37|  306|
|0-24 months |PROVIDE        |BANGLADESH   |[52-58) kg |           0|     16|  306|
|0-24 months |PROVIDE        |BANGLADESH   |[52-58) kg |           1|     32|  306|
|0-24 months |PROVIDE        |BANGLADESH   |<52 kg     |           0|     95|  306|
|0-24 months |PROVIDE        |BANGLADESH   |<52 kg     |           1|    110|  306|
|0-24 months |SAS-CompFeed   |INDIA        |>=58 kg    |           0|     24|  814|
|0-24 months |SAS-CompFeed   |INDIA        |>=58 kg    |           1|     21|  814|
|0-24 months |SAS-CompFeed   |INDIA        |[52-58) kg |           0|     64|  814|
|0-24 months |SAS-CompFeed   |INDIA        |[52-58) kg |           1|     37|  814|
|0-24 months |SAS-CompFeed   |INDIA        |<52 kg     |           0|    416|  814|
|0-24 months |SAS-CompFeed   |INDIA        |<52 kg     |           1|    252|  814|
|0-24 months |TanzaniaChild2 |TANZANIA     |>=58 kg    |           0|    149|  711|
|0-24 months |TanzaniaChild2 |TANZANIA     |>=58 kg    |           1|    262|  711|
|0-24 months |TanzaniaChild2 |TANZANIA     |[52-58) kg |           0|     63|  711|
|0-24 months |TanzaniaChild2 |TANZANIA     |[52-58) kg |           1|     89|  711|
|0-24 months |TanzaniaChild2 |TANZANIA     |<52 kg     |           0|     54|  711|
|0-24 months |TanzaniaChild2 |TANZANIA     |<52 kg     |           1|     94|  711|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=58 kg    |           0|    504| 3002|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=58 kg    |           1|    846| 3002|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[52-58) kg |           0|    349| 3002|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[52-58) kg |           1|    483| 3002|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<52 kg     |           0|    382| 3002|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<52 kg     |           1|    438| 3002|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=58 kg    |           0|     32| 4728|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=58 kg    |           1|     83| 4728|
|0-6 months  |JiVitA-3       |BANGLADESH   |[52-58) kg |           0|     98| 4728|
|0-6 months  |JiVitA-3       |BANGLADESH   |[52-58) kg |           1|    229| 4728|
|0-6 months  |JiVitA-3       |BANGLADESH   |<52 kg     |           0|   1405| 4728|
|0-6 months  |JiVitA-3       |BANGLADESH   |<52 kg     |           1|   2881| 4728|
|0-6 months  |LCNI-5         |MALAWI       |>=58 kg    |           0|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |>=58 kg    |           1|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |[52-58) kg |           0|      1|    4|
|0-6 months  |LCNI-5         |MALAWI       |[52-58) kg |           1|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |<52 kg     |           0|      3|    4|
|0-6 months  |LCNI-5         |MALAWI       |<52 kg     |           1|      0|    4|
|0-6 months  |MAL-ED         |INDIA        |>=58 kg    |           0|      4|   85|
|0-6 months  |MAL-ED         |INDIA        |>=58 kg    |           1|     13|   85|
|0-6 months  |MAL-ED         |INDIA        |[52-58) kg |           0|      2|   85|
|0-6 months  |MAL-ED         |INDIA        |[52-58) kg |           1|      9|   85|
|0-6 months  |MAL-ED         |INDIA        |<52 kg     |           0|     21|   85|
|0-6 months  |MAL-ED         |INDIA        |<52 kg     |           1|     36|   85|
|0-6 months  |MAL-ED         |BANGLADESH   |>=58 kg    |           0|      3|   61|
|0-6 months  |MAL-ED         |BANGLADESH   |>=58 kg    |           1|      6|   61|
|0-6 months  |MAL-ED         |BANGLADESH   |[52-58) kg |           0|      1|   61|
|0-6 months  |MAL-ED         |BANGLADESH   |[52-58) kg |           1|     11|   61|
|0-6 months  |MAL-ED         |BANGLADESH   |<52 kg     |           0|      8|   61|
|0-6 months  |MAL-ED         |BANGLADESH   |<52 kg     |           1|     32|   61|
|0-6 months  |MAL-ED         |PERU         |>=58 kg    |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |>=58 kg    |           1|      5|   11|
|0-6 months  |MAL-ED         |PERU         |[52-58) kg |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |[52-58) kg |           1|      2|   11|
|0-6 months  |MAL-ED         |PERU         |<52 kg     |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |<52 kg     |           1|      4|   11|
|0-6 months  |MAL-ED         |NEPAL        |>=58 kg    |           0|      3|   46|
|0-6 months  |MAL-ED         |NEPAL        |>=58 kg    |           1|      7|   46|
|0-6 months  |MAL-ED         |NEPAL        |[52-58) kg |           0|      3|   46|
|0-6 months  |MAL-ED         |NEPAL        |[52-58) kg |           1|     10|   46|
|0-6 months  |MAL-ED         |NEPAL        |<52 kg     |           0|      2|   46|
|0-6 months  |MAL-ED         |NEPAL        |<52 kg     |           1|     21|   46|
|0-6 months  |MAL-ED         |BRAZIL       |>=58 kg    |           0|      1|   15|
|0-6 months  |MAL-ED         |BRAZIL       |>=58 kg    |           1|      9|   15|
|0-6 months  |MAL-ED         |BRAZIL       |[52-58) kg |           0|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |[52-58) kg |           1|      3|   15|
|0-6 months  |MAL-ED         |BRAZIL       |<52 kg     |           0|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |<52 kg     |           1|      2|   15|
|0-6 months  |MAL-ED         |TANZANIA     |>=58 kg    |           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |>=58 kg    |           1|      7|   14|
|0-6 months  |MAL-ED         |TANZANIA     |[52-58) kg |           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |[52-58) kg |           1|      2|   14|
|0-6 months  |MAL-ED         |TANZANIA     |<52 kg     |           0|      1|   14|
|0-6 months  |MAL-ED         |TANZANIA     |<52 kg     |           1|      4|   14|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=58 kg    |           0|      2|   32|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=58 kg    |           1|     18|   32|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[52-58) kg |           0|      3|   32|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[52-58) kg |           1|      5|   32|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<52 kg     |           0|      2|   32|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<52 kg     |           1|      2|   32|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=58 kg    |           0|      7|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=58 kg    |           1|     16|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |[52-58) kg |           0|      6|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |[52-58) kg |           1|     20|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |<52 kg     |           0|     51|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |<52 kg     |           1|    123|  223|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=58 kg    |           0|      6|  196|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=58 kg    |           1|     48|  196|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[52-58) kg |           0|      4|  196|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[52-58) kg |           1|     33|  196|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<52 kg     |           0|     11|  196|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<52 kg     |           1|     94|  196|
|0-6 months  |PROBIT         |BELARUS      |>=58 kg    |           0|    268| 3844|
|0-6 months  |PROBIT         |BELARUS      |>=58 kg    |           1|   2557| 3844|
|0-6 months  |PROBIT         |BELARUS      |[52-58) kg |           0|     43| 3844|
|0-6 months  |PROBIT         |BELARUS      |[52-58) kg |           1|    629| 3844|
|0-6 months  |PROBIT         |BELARUS      |<52 kg     |           0|     25| 3844|
|0-6 months  |PROBIT         |BELARUS      |<52 kg     |           1|    322| 3844|
|0-6 months  |PROVIDE        |BANGLADESH   |>=58 kg    |           0|      7|  183|
|0-6 months  |PROVIDE        |BANGLADESH   |>=58 kg    |           1|     29|  183|
|0-6 months  |PROVIDE        |BANGLADESH   |[52-58) kg |           0|      3|  183|
|0-6 months  |PROVIDE        |BANGLADESH   |[52-58) kg |           1|     26|  183|
|0-6 months  |PROVIDE        |BANGLADESH   |<52 kg     |           0|     28|  183|
|0-6 months  |PROVIDE        |BANGLADESH   |<52 kg     |           1|     90|  183|
|0-6 months  |SAS-CompFeed   |INDIA        |>=58 kg    |           0|     10|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |>=58 kg    |           1|     11|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |[52-58) kg |           0|     26|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |[52-58) kg |           1|     24|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |<52 kg     |           0|    130|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |<52 kg     |           1|    140|  341|
|0-6 months  |TanzaniaChild2 |TANZANIA     |>=58 kg    |           0|     58|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |>=58 kg    |           1|    139|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |[52-58) kg |           0|     27|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |[52-58) kg |           1|     49|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |<52 kg     |           0|     16|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |<52 kg     |           1|     51|  340|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=58 kg    |           0|    128| 1986|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=58 kg    |           1|    811| 1986|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[52-58) kg |           0|     78| 1986|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[52-58) kg |           1|    459| 1986|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<52 kg     |           0|     93| 1986|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<52 kg     |           1|    417| 1986|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |>=58 kg    |           0|    168|  802|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |>=58 kg    |           1|      9|  802|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |[52-58) kg |           0|    237|  802|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |[52-58) kg |           1|      7|  802|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |<52 kg     |           0|    362|  802|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |<52 kg     |           1|     19|  802|
|6-24 months |JiVitA-3       |BANGLADESH   |>=58 kg    |           0|     70| 2833|
|6-24 months |JiVitA-3       |BANGLADESH   |>=58 kg    |           1|      0| 2833|
|6-24 months |JiVitA-3       |BANGLADESH   |[52-58) kg |           0|    185| 2833|
|6-24 months |JiVitA-3       |BANGLADESH   |[52-58) kg |           1|      0| 2833|
|6-24 months |JiVitA-3       |BANGLADESH   |<52 kg     |           0|   2578| 2833|
|6-24 months |JiVitA-3       |BANGLADESH   |<52 kg     |           1|      0| 2833|
|6-24 months |LCNI-5         |MALAWI       |>=58 kg    |           0|      5|   75|
|6-24 months |LCNI-5         |MALAWI       |>=58 kg    |           1|      1|   75|
|6-24 months |LCNI-5         |MALAWI       |[52-58) kg |           0|     13|   75|
|6-24 months |LCNI-5         |MALAWI       |[52-58) kg |           1|      2|   75|
|6-24 months |LCNI-5         |MALAWI       |<52 kg     |           0|     44|   75|
|6-24 months |LCNI-5         |MALAWI       |<52 kg     |           1|     10|   75|
|6-24 months |MAL-ED         |INDIA        |>=58 kg    |           0|      3|   94|
|6-24 months |MAL-ED         |INDIA        |>=58 kg    |           1|      4|   94|
|6-24 months |MAL-ED         |INDIA        |[52-58) kg |           0|      5|   94|
|6-24 months |MAL-ED         |INDIA        |[52-58) kg |           1|      3|   94|
|6-24 months |MAL-ED         |INDIA        |<52 kg     |           0|     35|   94|
|6-24 months |MAL-ED         |INDIA        |<52 kg     |           1|     44|   94|
|6-24 months |MAL-ED         |BANGLADESH   |>=58 kg    |           0|      1|   61|
|6-24 months |MAL-ED         |BANGLADESH   |>=58 kg    |           1|      5|   61|
|6-24 months |MAL-ED         |BANGLADESH   |[52-58) kg |           0|      7|   61|
|6-24 months |MAL-ED         |BANGLADESH   |[52-58) kg |           1|      3|   61|
|6-24 months |MAL-ED         |BANGLADESH   |<52 kg     |           0|     23|   61|
|6-24 months |MAL-ED         |BANGLADESH   |<52 kg     |           1|     22|   61|
|6-24 months |MAL-ED         |PERU         |>=58 kg    |           0|      2|   22|
|6-24 months |MAL-ED         |PERU         |>=58 kg    |           1|      4|   22|
|6-24 months |MAL-ED         |PERU         |[52-58) kg |           0|      1|   22|
|6-24 months |MAL-ED         |PERU         |[52-58) kg |           1|      6|   22|
|6-24 months |MAL-ED         |PERU         |<52 kg     |           0|      2|   22|
|6-24 months |MAL-ED         |PERU         |<52 kg     |           1|      7|   22|
|6-24 months |MAL-ED         |NEPAL        |>=58 kg    |           0|      3|   47|
|6-24 months |MAL-ED         |NEPAL        |>=58 kg    |           1|     12|   47|
|6-24 months |MAL-ED         |NEPAL        |[52-58) kg |           0|      1|   47|
|6-24 months |MAL-ED         |NEPAL        |[52-58) kg |           1|     10|   47|
|6-24 months |MAL-ED         |NEPAL        |<52 kg     |           0|      7|   47|
|6-24 months |MAL-ED         |NEPAL        |<52 kg     |           1|     14|   47|
|6-24 months |MAL-ED         |BRAZIL       |>=58 kg    |           0|      2|    9|
|6-24 months |MAL-ED         |BRAZIL       |>=58 kg    |           1|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |[52-58) kg |           0|      2|    9|
|6-24 months |MAL-ED         |BRAZIL       |[52-58) kg |           1|      1|    9|
|6-24 months |MAL-ED         |BRAZIL       |<52 kg     |           0|      1|    9|
|6-24 months |MAL-ED         |BRAZIL       |<52 kg     |           1|      3|    9|
|6-24 months |MAL-ED         |TANZANIA     |>=58 kg    |           0|      1|   37|
|6-24 months |MAL-ED         |TANZANIA     |>=58 kg    |           1|      5|   37|
|6-24 months |MAL-ED         |TANZANIA     |[52-58) kg |           0|      2|   37|
|6-24 months |MAL-ED         |TANZANIA     |[52-58) kg |           1|      6|   37|
|6-24 months |MAL-ED         |TANZANIA     |<52 kg     |           0|      5|   37|
|6-24 months |MAL-ED         |TANZANIA     |<52 kg     |           1|     18|   37|
|6-24 months |MAL-ED         |SOUTH AFRICA |>=58 kg    |           0|      8|   49|
|6-24 months |MAL-ED         |SOUTH AFRICA |>=58 kg    |           1|     29|   49|
|6-24 months |MAL-ED         |SOUTH AFRICA |[52-58) kg |           0|      1|   49|
|6-24 months |MAL-ED         |SOUTH AFRICA |[52-58) kg |           1|      6|   49|
|6-24 months |MAL-ED         |SOUTH AFRICA |<52 kg     |           0|      0|   49|
|6-24 months |MAL-ED         |SOUTH AFRICA |<52 kg     |           1|      5|   49|
|6-24 months |NIH-Birth      |BANGLADESH   |>=58 kg    |           0|     11|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |>=58 kg    |           1|      9|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |[52-58) kg |           0|     13|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |[52-58) kg |           1|      9|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |<52 kg     |           0|    114|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |<52 kg     |           1|     42|  198|
|6-24 months |NIH-Crypto     |BANGLADESH   |>=58 kg    |           0|     19|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |>=58 kg    |           1|      4|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |[52-58) kg |           0|     16|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |[52-58) kg |           1|      5|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |<52 kg     |           0|     61|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |<52 kg     |           1|      8|  113|
|6-24 months |PROBIT         |BELARUS      |>=58 kg    |           0|     61|  128|
|6-24 months |PROBIT         |BELARUS      |>=58 kg    |           1|     29|  128|
|6-24 months |PROBIT         |BELARUS      |[52-58) kg |           0|     22|  128|
|6-24 months |PROBIT         |BELARUS      |[52-58) kg |           1|      3|  128|
|6-24 months |PROBIT         |BELARUS      |<52 kg     |           0|     11|  128|
|6-24 months |PROBIT         |BELARUS      |<52 kg     |           1|      2|  128|
|6-24 months |PROVIDE        |BANGLADESH   |>=58 kg    |           0|      9|  123|
|6-24 months |PROVIDE        |BANGLADESH   |>=58 kg    |           1|      8|  123|
|6-24 months |PROVIDE        |BANGLADESH   |[52-58) kg |           0|     13|  123|
|6-24 months |PROVIDE        |BANGLADESH   |[52-58) kg |           1|      6|  123|
|6-24 months |PROVIDE        |BANGLADESH   |<52 kg     |           0|     67|  123|
|6-24 months |PROVIDE        |BANGLADESH   |<52 kg     |           1|     20|  123|
|6-24 months |SAS-CompFeed   |INDIA        |>=58 kg    |           0|     14|  473|
|6-24 months |SAS-CompFeed   |INDIA        |>=58 kg    |           1|     10|  473|
|6-24 months |SAS-CompFeed   |INDIA        |[52-58) kg |           0|     38|  473|
|6-24 months |SAS-CompFeed   |INDIA        |[52-58) kg |           1|     13|  473|
|6-24 months |SAS-CompFeed   |INDIA        |<52 kg     |           0|    286|  473|
|6-24 months |SAS-CompFeed   |INDIA        |<52 kg     |           1|    112|  473|
|6-24 months |TanzaniaChild2 |TANZANIA     |>=58 kg    |           0|     91|  371|
|6-24 months |TanzaniaChild2 |TANZANIA     |>=58 kg    |           1|    123|  371|
|6-24 months |TanzaniaChild2 |TANZANIA     |[52-58) kg |           0|     36|  371|
|6-24 months |TanzaniaChild2 |TANZANIA     |[52-58) kg |           1|     40|  371|
|6-24 months |TanzaniaChild2 |TANZANIA     |<52 kg     |           0|     38|  371|
|6-24 months |TanzaniaChild2 |TANZANIA     |<52 kg     |           1|     43|  371|
|6-24 months |ZVITAMBO       |ZIMBABWE     |>=58 kg    |           0|    376| 1016|
|6-24 months |ZVITAMBO       |ZIMBABWE     |>=58 kg    |           1|     35| 1016|
|6-24 months |ZVITAMBO       |ZIMBABWE     |[52-58) kg |           0|    271| 1016|
|6-24 months |ZVITAMBO       |ZIMBABWE     |[52-58) kg |           1|     24| 1016|
|6-24 months |ZVITAMBO       |ZIMBABWE     |<52 kg     |           0|    289| 1016|
|6-24 months |ZVITAMBO       |ZIMBABWE     |<52 kg     |           1|     21| 1016|


The following strata were considered:

* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


