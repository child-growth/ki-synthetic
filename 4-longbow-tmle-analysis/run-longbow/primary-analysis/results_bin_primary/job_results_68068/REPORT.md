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

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** perdiar24

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* hdlvry
* W_birthwt
* W_birthlen
* single
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_hdlvry
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid       |country                      |perdiar24 | ever_wasted| n_cell|    n|
|:---------------------------|:-------------|:----------------------------|:---------|-----------:|------:|----:|
|0-24 months (no birth wast) |CMIN          |BANGLADESH                   |0%        |           0|      8|  268|
|0-24 months (no birth wast) |CMIN          |BANGLADESH                   |0%        |           1|      1|  268|
|0-24 months (no birth wast) |CMIN          |BANGLADESH                   |(0%, 5%]  |           0|     69|  268|
|0-24 months (no birth wast) |CMIN          |BANGLADESH                   |(0%, 5%]  |           1|     51|  268|
|0-24 months (no birth wast) |CMIN          |BANGLADESH                   |>5%       |           0|     76|  268|
|0-24 months (no birth wast) |CMIN          |BANGLADESH                   |>5%       |           1|     63|  268|
|0-24 months (no birth wast) |CONTENT       |PERU                         |0%        |           0|      6|  215|
|0-24 months (no birth wast) |CONTENT       |PERU                         |0%        |           1|      0|  215|
|0-24 months (no birth wast) |CONTENT       |PERU                         |(0%, 5%]  |           0|    139|  215|
|0-24 months (no birth wast) |CONTENT       |PERU                         |(0%, 5%]  |           1|      3|  215|
|0-24 months (no birth wast) |CONTENT       |PERU                         |>5%       |           0|     66|  215|
|0-24 months (no birth wast) |CONTENT       |PERU                         |>5%       |           1|      1|  215|
|0-24 months (no birth wast) |EE            |PAKISTAN                     |0%        |           0|    123|  377|
|0-24 months (no birth wast) |EE            |PAKISTAN                     |0%        |           1|    137|  377|
|0-24 months (no birth wast) |EE            |PAKISTAN                     |(0%, 5%]  |           0|     51|  377|
|0-24 months (no birth wast) |EE            |PAKISTAN                     |(0%, 5%]  |           1|     66|  377|
|0-24 months (no birth wast) |EE            |PAKISTAN                     |>5%       |           0|      0|  377|
|0-24 months (no birth wast) |EE            |PAKISTAN                     |>5%       |           1|      0|  377|
|0-24 months (no birth wast) |Guatemala BSC |GUATEMALA                    |0%        |           0|     30|  307|
|0-24 months (no birth wast) |Guatemala BSC |GUATEMALA                    |0%        |           1|      2|  307|
|0-24 months (no birth wast) |Guatemala BSC |GUATEMALA                    |(0%, 5%]  |           0|     63|  307|
|0-24 months (no birth wast) |Guatemala BSC |GUATEMALA                    |(0%, 5%]  |           1|      8|  307|
|0-24 months (no birth wast) |Guatemala BSC |GUATEMALA                    |>5%       |           0|    188|  307|
|0-24 months (no birth wast) |Guatemala BSC |GUATEMALA                    |>5%       |           1|     16|  307|
|0-24 months (no birth wast) |iLiNS-Zinc    |BURKINA FASO                 |0%        |           0|    307| 2348|
|0-24 months (no birth wast) |iLiNS-Zinc    |BURKINA FASO                 |0%        |           1|     22| 2348|
|0-24 months (no birth wast) |iLiNS-Zinc    |BURKINA FASO                 |(0%, 5%]  |           0|   1169| 2348|
|0-24 months (no birth wast) |iLiNS-Zinc    |BURKINA FASO                 |(0%, 5%]  |           1|    114| 2348|
|0-24 months (no birth wast) |iLiNS-Zinc    |BURKINA FASO                 |>5%       |           0|    651| 2348|
|0-24 months (no birth wast) |iLiNS-Zinc    |BURKINA FASO                 |>5%       |           1|     85| 2348|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH                   |0%        |           0|    165| 5396|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH                   |0%        |           1|     51| 5396|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH                   |(0%, 5%]  |           0|   3444| 5396|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH                   |(0%, 5%]  |           1|   1155| 5396|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH                   |>5%       |           0|    396| 5396|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH                   |>5%       |           1|    185| 5396|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH                   |0%        |           0|     17|  263|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH                   |0%        |           1|      3|  263|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH                   |(0%, 5%]  |           0|    112|  263|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH                   |(0%, 5%]  |           1|     36|  263|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH                   |>5%       |           0|     76|  263|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH                   |>5%       |           1|     19|  263|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL                       |0%        |           0|    124|  233|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL                       |0%        |           1|      6|  233|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL                       |(0%, 5%]  |           0|     95|  233|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL                       |(0%, 5%]  |           1|      6|  233|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL                       |>5%       |           0|      1|  233|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL                       |>5%       |           1|      1|  233|
|0-24 months (no birth wast) |MAL-ED        |INDIA                        |0%        |           0|     11|  246|
|0-24 months (no birth wast) |MAL-ED        |INDIA                        |0%        |           1|      2|  246|
|0-24 months (no birth wast) |MAL-ED        |INDIA                        |(0%, 5%]  |           0|    117|  246|
|0-24 months (no birth wast) |MAL-ED        |INDIA                        |(0%, 5%]  |           1|     74|  246|
|0-24 months (no birth wast) |MAL-ED        |INDIA                        |>5%       |           0|     27|  246|
|0-24 months (no birth wast) |MAL-ED        |INDIA                        |>5%       |           1|     15|  246|
|0-24 months (no birth wast) |MAL-ED        |NEPAL                        |0%        |           0|     16|  239|
|0-24 months (no birth wast) |MAL-ED        |NEPAL                        |0%        |           1|      1|  239|
|0-24 months (no birth wast) |MAL-ED        |NEPAL                        |(0%, 5%]  |           0|    112|  239|
|0-24 months (no birth wast) |MAL-ED        |NEPAL                        |(0%, 5%]  |           1|     31|  239|
|0-24 months (no birth wast) |MAL-ED        |NEPAL                        |>5%       |           0|     65|  239|
|0-24 months (no birth wast) |MAL-ED        |NEPAL                        |>5%       |           1|     14|  239|
|0-24 months (no birth wast) |MAL-ED        |PERU                         |0%        |           0|     28|  302|
|0-24 months (no birth wast) |MAL-ED        |PERU                         |0%        |           1|      0|  302|
|0-24 months (no birth wast) |MAL-ED        |PERU                         |(0%, 5%]  |           0|    106|  302|
|0-24 months (no birth wast) |MAL-ED        |PERU                         |(0%, 5%]  |           1|      7|  302|
|0-24 months (no birth wast) |MAL-ED        |PERU                         |>5%       |           0|    147|  302|
|0-24 months (no birth wast) |MAL-ED        |PERU                         |>5%       |           1|     14|  302|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA                 |0%        |           0|     97|  302|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA                 |0%        |           1|     20|  302|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA                 |(0%, 5%]  |           0|    157|  302|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA                 |(0%, 5%]  |           1|     25|  302|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA                 |>5%       |           0|      3|  302|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA                 |>5%       |           1|      0|  302|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0%        |           0|     13|  261|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0%        |           1|      3|  261|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |(0%, 5%]  |           0|    161|  261|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |(0%, 5%]  |           1|     22|  261|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |>5%       |           0|     53|  261|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |>5%       |           1|      9|  261|
|0-24 months (no birth wast) |NIH-Birth     |BANGLADESH                   |0%        |           0|     41|  599|
|0-24 months (no birth wast) |NIH-Birth     |BANGLADESH                   |0%        |           1|      2|  599|
|0-24 months (no birth wast) |NIH-Birth     |BANGLADESH                   |(0%, 5%]  |           0|    242|  599|
|0-24 months (no birth wast) |NIH-Birth     |BANGLADESH                   |(0%, 5%]  |           1|    112|  599|
|0-24 months (no birth wast) |NIH-Birth     |BANGLADESH                   |>5%       |           0|    138|  599|
|0-24 months (no birth wast) |NIH-Birth     |BANGLADESH                   |>5%       |           1|     64|  599|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH                   |0%        |           0|    131|  754|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH                   |0%        |           1|     22|  754|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH                   |(0%, 5%]  |           0|    340|  754|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH                   |(0%, 5%]  |           1|     58|  754|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH                   |>5%       |           0|    175|  754|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH                   |>5%       |           1|     28|  754|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH                   |0%        |           0|     57|  687|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH                   |0%        |           1|      3|  687|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH                   |(0%, 5%]  |           0|    340|  687|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH                   |(0%, 5%]  |           1|     87|  687|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH                   |>5%       |           0|    168|  687|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH                   |>5%       |           1|     32|  687|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA                        |0%        |           0|     48|  397|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA                        |0%        |           1|     31|  397|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA                        |(0%, 5%]  |           0|     33|  397|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA                        |(0%, 5%]  |           1|     12|  397|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA                        |>5%       |           0|    173|  397|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA                        |>5%       |           1|    100|  397|
|0-6 months (no birth wast)  |CMIN          |BANGLADESH                   |0%        |           0|      9|  267|
|0-6 months (no birth wast)  |CMIN          |BANGLADESH                   |0%        |           1|      0|  267|
|0-6 months (no birth wast)  |CMIN          |BANGLADESH                   |(0%, 5%]  |           0|    102|  267|
|0-6 months (no birth wast)  |CMIN          |BANGLADESH                   |(0%, 5%]  |           1|     17|  267|
|0-6 months (no birth wast)  |CMIN          |BANGLADESH                   |>5%       |           0|    125|  267|
|0-6 months (no birth wast)  |CMIN          |BANGLADESH                   |>5%       |           1|     14|  267|
|0-6 months (no birth wast)  |CONTENT       |PERU                         |0%        |           0|      6|  215|
|0-6 months (no birth wast)  |CONTENT       |PERU                         |0%        |           1|      0|  215|
|0-6 months (no birth wast)  |CONTENT       |PERU                         |(0%, 5%]  |           0|    140|  215|
|0-6 months (no birth wast)  |CONTENT       |PERU                         |(0%, 5%]  |           1|      2|  215|
|0-6 months (no birth wast)  |CONTENT       |PERU                         |>5%       |           0|     66|  215|
|0-6 months (no birth wast)  |CONTENT       |PERU                         |>5%       |           1|      1|  215|
|0-6 months (no birth wast)  |EE            |PAKISTAN                     |0%        |           0|    209|  375|
|0-6 months (no birth wast)  |EE            |PAKISTAN                     |0%        |           1|     49|  375|
|0-6 months (no birth wast)  |EE            |PAKISTAN                     |(0%, 5%]  |           0|     85|  375|
|0-6 months (no birth wast)  |EE            |PAKISTAN                     |(0%, 5%]  |           1|     32|  375|
|0-6 months (no birth wast)  |EE            |PAKISTAN                     |>5%       |           0|      0|  375|
|0-6 months (no birth wast)  |EE            |PAKISTAN                     |>5%       |           1|      0|  375|
|0-6 months (no birth wast)  |Guatemala BSC |GUATEMALA                    |0%        |           0|     29|  284|
|0-6 months (no birth wast)  |Guatemala BSC |GUATEMALA                    |0%        |           1|      0|  284|
|0-6 months (no birth wast)  |Guatemala BSC |GUATEMALA                    |(0%, 5%]  |           0|     63|  284|
|0-6 months (no birth wast)  |Guatemala BSC |GUATEMALA                    |(0%, 5%]  |           1|      2|  284|
|0-6 months (no birth wast)  |Guatemala BSC |GUATEMALA                    |>5%       |           0|    187|  284|
|0-6 months (no birth wast)  |Guatemala BSC |GUATEMALA                    |>5%       |           1|      3|  284|
|0-6 months (no birth wast)  |JiVitA-4      |BANGLADESH                   |0%        |           0|    167| 4957|
|0-6 months (no birth wast)  |JiVitA-4      |BANGLADESH                   |0%        |           1|      4| 4957|
|0-6 months (no birth wast)  |JiVitA-4      |BANGLADESH                   |(0%, 5%]  |           0|   4149| 4957|
|0-6 months (no birth wast)  |JiVitA-4      |BANGLADESH                   |(0%, 5%]  |           1|    105| 4957|
|0-6 months (no birth wast)  |JiVitA-4      |BANGLADESH                   |>5%       |           0|    514| 4957|
|0-6 months (no birth wast)  |JiVitA-4      |BANGLADESH                   |>5%       |           1|     18| 4957|
|0-6 months (no birth wast)  |MAL-ED        |BANGLADESH                   |0%        |           0|     19|  262|
|0-6 months (no birth wast)  |MAL-ED        |BANGLADESH                   |0%        |           1|      1|  262|
|0-6 months (no birth wast)  |MAL-ED        |BANGLADESH                   |(0%, 5%]  |           0|    136|  262|
|0-6 months (no birth wast)  |MAL-ED        |BANGLADESH                   |(0%, 5%]  |           1|     11|  262|
|0-6 months (no birth wast)  |MAL-ED        |BANGLADESH                   |>5%       |           0|     88|  262|
|0-6 months (no birth wast)  |MAL-ED        |BANGLADESH                   |>5%       |           1|      7|  262|
|0-6 months (no birth wast)  |MAL-ED        |BRAZIL                       |0%        |           0|    126|  233|
|0-6 months (no birth wast)  |MAL-ED        |BRAZIL                       |0%        |           1|      4|  233|
|0-6 months (no birth wast)  |MAL-ED        |BRAZIL                       |(0%, 5%]  |           0|     97|  233|
|0-6 months (no birth wast)  |MAL-ED        |BRAZIL                       |(0%, 5%]  |           1|      4|  233|
|0-6 months (no birth wast)  |MAL-ED        |BRAZIL                       |>5%       |           0|      2|  233|
|0-6 months (no birth wast)  |MAL-ED        |BRAZIL                       |>5%       |           1|      0|  233|
|0-6 months (no birth wast)  |MAL-ED        |INDIA                        |0%        |           0|     12|  244|
|0-6 months (no birth wast)  |MAL-ED        |INDIA                        |0%        |           1|      1|  244|
|0-6 months (no birth wast)  |MAL-ED        |INDIA                        |(0%, 5%]  |           0|    161|  244|
|0-6 months (no birth wast)  |MAL-ED        |INDIA                        |(0%, 5%]  |           1|     30|  244|
|0-6 months (no birth wast)  |MAL-ED        |INDIA                        |>5%       |           0|     32|  244|
|0-6 months (no birth wast)  |MAL-ED        |INDIA                        |>5%       |           1|      8|  244|
|0-6 months (no birth wast)  |MAL-ED        |NEPAL                        |0%        |           0|     16|  237|
|0-6 months (no birth wast)  |MAL-ED        |NEPAL                        |0%        |           1|      0|  237|
|0-6 months (no birth wast)  |MAL-ED        |NEPAL                        |(0%, 5%]  |           0|    128|  237|
|0-6 months (no birth wast)  |MAL-ED        |NEPAL                        |(0%, 5%]  |           1|     14|  237|
|0-6 months (no birth wast)  |MAL-ED        |NEPAL                        |>5%       |           0|     77|  237|
|0-6 months (no birth wast)  |MAL-ED        |NEPAL                        |>5%       |           1|      2|  237|
|0-6 months (no birth wast)  |MAL-ED        |PERU                         |0%        |           0|     28|  302|
|0-6 months (no birth wast)  |MAL-ED        |PERU                         |0%        |           1|      0|  302|
|0-6 months (no birth wast)  |MAL-ED        |PERU                         |(0%, 5%]  |           0|    112|  302|
|0-6 months (no birth wast)  |MAL-ED        |PERU                         |(0%, 5%]  |           1|      1|  302|
|0-6 months (no birth wast)  |MAL-ED        |PERU                         |>5%       |           0|    157|  302|
|0-6 months (no birth wast)  |MAL-ED        |PERU                         |>5%       |           1|      4|  302|
|0-6 months (no birth wast)  |MAL-ED        |SOUTH AFRICA                 |0%        |           0|    111|  301|
|0-6 months (no birth wast)  |MAL-ED        |SOUTH AFRICA                 |0%        |           1|      6|  301|
|0-6 months (no birth wast)  |MAL-ED        |SOUTH AFRICA                 |(0%, 5%]  |           0|    173|  301|
|0-6 months (no birth wast)  |MAL-ED        |SOUTH AFRICA                 |(0%, 5%]  |           1|      8|  301|
|0-6 months (no birth wast)  |MAL-ED        |SOUTH AFRICA                 |>5%       |           0|      3|  301|
|0-6 months (no birth wast)  |MAL-ED        |SOUTH AFRICA                 |>5%       |           1|      0|  301|
|0-6 months (no birth wast)  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0%        |           0|     15|  261|
|0-6 months (no birth wast)  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0%        |           1|      1|  261|
|0-6 months (no birth wast)  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |(0%, 5%]  |           0|    175|  261|
|0-6 months (no birth wast)  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |(0%, 5%]  |           1|      8|  261|
|0-6 months (no birth wast)  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |>5%       |           0|     61|  261|
|0-6 months (no birth wast)  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |>5%       |           1|      1|  261|
|0-6 months (no birth wast)  |NIH-Birth     |BANGLADESH                   |0%        |           0|     42|  581|
|0-6 months (no birth wast)  |NIH-Birth     |BANGLADESH                   |0%        |           1|      1|  581|
|0-6 months (no birth wast)  |NIH-Birth     |BANGLADESH                   |(0%, 5%]  |           0|    316|  581|
|0-6 months (no birth wast)  |NIH-Birth     |BANGLADESH                   |(0%, 5%]  |           1|     23|  581|
|0-6 months (no birth wast)  |NIH-Birth     |BANGLADESH                   |>5%       |           0|    177|  581|
|0-6 months (no birth wast)  |NIH-Birth     |BANGLADESH                   |>5%       |           1|     22|  581|
|0-6 months (no birth wast)  |NIH-Crypto    |BANGLADESH                   |0%        |           0|    149|  749|
|0-6 months (no birth wast)  |NIH-Crypto    |BANGLADESH                   |0%        |           1|      3|  749|
|0-6 months (no birth wast)  |NIH-Crypto    |BANGLADESH                   |(0%, 5%]  |           0|    383|  749|
|0-6 months (no birth wast)  |NIH-Crypto    |BANGLADESH                   |(0%, 5%]  |           1|     13|  749|
|0-6 months (no birth wast)  |NIH-Crypto    |BANGLADESH                   |>5%       |           0|    197|  749|
|0-6 months (no birth wast)  |NIH-Crypto    |BANGLADESH                   |>5%       |           1|      4|  749|
|0-6 months (no birth wast)  |PROVIDE       |BANGLADESH                   |0%        |           0|     60|  683|
|0-6 months (no birth wast)  |PROVIDE       |BANGLADESH                   |0%        |           1|      0|  683|
|0-6 months (no birth wast)  |PROVIDE       |BANGLADESH                   |(0%, 5%]  |           0|    398|  683|
|0-6 months (no birth wast)  |PROVIDE       |BANGLADESH                   |(0%, 5%]  |           1|     25|  683|
|0-6 months (no birth wast)  |PROVIDE       |BANGLADESH                   |>5%       |           0|    188|  683|
|0-6 months (no birth wast)  |PROVIDE       |BANGLADESH                   |>5%       |           1|     12|  683|
|0-6 months (no birth wast)  |SAS-FoodSuppl |INDIA                        |0%        |           0|     69|  341|
|0-6 months (no birth wast)  |SAS-FoodSuppl |INDIA                        |0%        |           1|      0|  341|
|0-6 months (no birth wast)  |SAS-FoodSuppl |INDIA                        |(0%, 5%]  |           0|     36|  341|
|0-6 months (no birth wast)  |SAS-FoodSuppl |INDIA                        |(0%, 5%]  |           1|      0|  341|
|0-6 months (no birth wast)  |SAS-FoodSuppl |INDIA                        |>5%       |           0|    236|  341|
|0-6 months (no birth wast)  |SAS-FoodSuppl |INDIA                        |>5%       |           1|      0|  341|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/99e62df6-c89e-46c3-b1f0-b484eb24dd40/a213a7f0-a258-4d9c-8574-8544ef9baa0f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/99e62df6-c89e-46c3-b1f0-b484eb24dd40/a213a7f0-a258-4d9c-8574-8544ef9baa0f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/99e62df6-c89e-46c3-b1f0-b484eb24dd40/a213a7f0-a258-4d9c-8574-8544ef9baa0f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/99e62df6-c89e-46c3-b1f0-b484eb24dd40/a213a7f0-a258-4d9c-8574-8544ef9baa0f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid       |country      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:-------------|:------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |iLiNS-Zinc    |BURKINA FASO |0%                 |NA             | 0.0684658| 0.0460807| 0.0908509|
|0-24 months (no birth wast) |iLiNS-Zinc    |BURKINA FASO |(0%, 5%]           |NA             | 0.0892313| 0.0651105| 0.1133522|
|0-24 months (no birth wast) |iLiNS-Zinc    |BURKINA FASO |>5%                |NA             | 0.1152295| 0.0664673| 0.1639917|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH   |0%                 |NA             | 0.2511997| 0.1856363| 0.3167632|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH   |(0%, 5%]           |NA             | 0.2516592| 0.2373031| 0.2660153|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH   |>5%                |NA             | 0.3073734| 0.2639052| 0.3508415|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH   |0%                 |NA             | 0.1438790| 0.0880706| 0.1996874|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH   |(0%, 5%]           |NA             | 0.1452633| 0.1105224| 0.1800043|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH   |>5%                |NA             | 0.1361327| 0.0882065| 0.1840589|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA        |0%                 |NA             | 0.4127615| 0.3026687| 0.5228544|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA        |(0%, 5%]           |NA             | 0.2619716| 0.1234818| 0.4004613|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA        |>5%                |NA             | 0.3662611| 0.3085672| 0.4239550|


### Parameter: E(Y)


|agecat                      |studyid       |country      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:-------------|:------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |iLiNS-Zinc    |BURKINA FASO |NA                 |NA             | 0.0941227| 0.0721577| 0.1160876|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH   |NA                 |NA             | 0.2577835| 0.2441424| 0.2714247|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH   |NA                 |NA             | 0.1432361| 0.1182149| 0.1682572|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA        |NA                 |NA             | 0.3602015| 0.3129196| 0.4074834|


### Parameter: RR


|agecat                      |studyid       |country      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:---------------------------|:-------------|:------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth wast) |iLiNS-Zinc    |BURKINA FASO |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |iLiNS-Zinc    |BURKINA FASO |(0%, 5%]           |0%             | 1.3032975| 0.8829066| 1.923855|
|0-24 months (no birth wast) |iLiNS-Zinc    |BURKINA FASO |>5%                |0%             | 1.6830224| 1.0093410| 2.806350|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH   |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH   |(0%, 5%]           |0%             | 1.0018292| 0.7674984| 1.307705|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH   |>5%                |0%             | 1.2236213| 0.9126319| 1.640584|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH   |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH   |(0%, 5%]           |0%             | 1.0096213| 0.6402079| 1.592194|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH   |>5%                |0%             | 0.9461609| 0.5604612| 1.597292|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA        |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA        |(0%, 5%]           |0%             | 0.6346802| 0.3514462| 1.146175|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA        |>5%                |0%             | 0.8873433| 0.6508499| 1.209769|


### Parameter: PAR


|agecat                      |studyid       |country      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:-------------|:------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |iLiNS-Zinc    |BURKINA FASO |0%                 |NA             |  0.0256569| -0.0004100| 0.0517237|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH   |0%                 |NA             |  0.0065838| -0.0574877| 0.0706553|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH   |0%                 |NA             | -0.0006430| -0.0504647| 0.0491787|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA        |0%                 |NA             | -0.0525600| -0.1513958| 0.0462758|


### Parameter: PAF


|agecat                      |studyid       |country      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:-------------|:------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |iLiNS-Zinc    |BURKINA FASO |0%                 |NA             |  0.2725895| -0.0198238| 0.4811594|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH   |0%                 |NA             |  0.0255400| -0.2575931| 0.2449288|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH   |0%                 |NA             | -0.0044888| -0.4201359| 0.2895062|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA        |0%                 |NA             | -0.1459183| -0.4564930| 0.0984311|
