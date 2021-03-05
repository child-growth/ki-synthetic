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

**Outcome Variable:** ever_swasted

## Predictor Variables

**Intervention Variable:** birthlen

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid        |country                      |birthlen   | ever_swasted| n_cell|     n|
|:---------------------------|:--------------|:----------------------------|:----------|------------:|------:|-----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |>=50 cm    |            0|     13|   104|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |>=50 cm    |            1|      3|   104|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |<48 cm     |            0|     36|   104|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |<48 cm     |            1|     12|   104|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |[48-50) cm |            0|     34|   104|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |[48-50) cm |            1|      6|   104|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |>=50 cm    |            0|      1|    17|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |>=50 cm    |            1|      0|    17|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |<48 cm     |            0|     11|    17|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |<48 cm     |            1|      0|    17|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |[48-50) cm |            0|      5|    17|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |[48-50) cm |            1|      0|    17|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |>=50 cm    |            0|    418|   821|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |>=50 cm    |            1|      2|   821|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |<48 cm     |            0|    149|   821|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |<48 cm     |            1|      6|   821|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |[48-50) cm |            0|    243|   821|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |[48-50) cm |            1|      3|   821|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |>=50 cm    |            0|   1349|  6400|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |>=50 cm    |            1|     40|  6400|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |<48 cm     |            0|   2473|  6400|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |<48 cm     |            1|    171|  6400|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |[48-50) cm |            0|   2249|  6400|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |[48-50) cm |            1|    118|  6400|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |>=50 cm    |            0|   1044|  3011|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |>=50 cm    |            1|     77|  3011|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |<48 cm     |            0|    674|  3011|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |<48 cm     |            1|     66|  3011|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |[48-50) cm |            0|   1044|  3011|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |[48-50) cm |            1|    106|  3011|
|0-24 months (no birth wast) |CONTENT        |PERU                         |>=50 cm    |            0|      1|     2|
|0-24 months (no birth wast) |CONTENT        |PERU                         |>=50 cm    |            1|      0|     2|
|0-24 months (no birth wast) |CONTENT        |PERU                         |<48 cm     |            0|      1|     2|
|0-24 months (no birth wast) |CONTENT        |PERU                         |<48 cm     |            1|      0|     2|
|0-24 months (no birth wast) |CONTENT        |PERU                         |[48-50) cm |            0|      0|     2|
|0-24 months (no birth wast) |CONTENT        |PERU                         |[48-50) cm |            1|      0|     2|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |>=50 cm    |            0|     17|   240|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |>=50 cm    |            1|      5|   240|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |<48 cm     |            0|    136|   240|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |<48 cm     |            1|     36|   240|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |[48-50) cm |            0|     43|   240|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |[48-50) cm |            1|      3|   240|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |>=50 cm    |            0|     83|   659|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |>=50 cm    |            1|     14|   659|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |<48 cm     |            0|    289|   659|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |<48 cm     |            1|     72|   659|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |[48-50) cm |            0|    156|   659|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |[48-50) cm |            1|     45|   659|
|0-24 months (no birth wast) |IRC            |INDIA                        |>=50 cm    |            0|    114|   390|
|0-24 months (no birth wast) |IRC            |INDIA                        |>=50 cm    |            1|     28|   390|
|0-24 months (no birth wast) |IRC            |INDIA                        |<48 cm     |            0|     91|   390|
|0-24 months (no birth wast) |IRC            |INDIA                        |<48 cm     |            1|     20|   390|
|0-24 months (no birth wast) |IRC            |INDIA                        |[48-50) cm |            0|    110|   390|
|0-24 months (no birth wast) |IRC            |INDIA                        |[48-50) cm |            1|     27|   390|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |>=50 cm    |            0|   1161| 21905|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |>=50 cm    |            1|     43| 21905|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |<48 cm     |            0|  15086| 21905|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |<48 cm     |            1|    601| 21905|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |[48-50) cm |            0|   4830| 21905|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |[48-50) cm |            1|    184| 21905|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |>=50 cm    |            0|   1183|  4464|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |>=50 cm    |            1|     47|  4464|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |<48 cm     |            0|   2036|  4464|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |<48 cm     |            1|    125|  4464|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |[48-50) cm |            0|   1037|  4464|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |[48-50) cm |            1|     36|  4464|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |>=50 cm    |            0|    658|  1547|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |>=50 cm    |            1|    101|  1547|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |<48 cm     |            0|    247|  1547|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |<48 cm     |            1|     46|  1547|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |[48-50) cm |            0|    416|  1547|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |[48-50) cm |            1|     79|  1547|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |>=50 cm    |            0|     32|   229|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |>=50 cm    |            1|      3|   229|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |<48 cm     |            0|    110|   229|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |<48 cm     |            1|      5|   229|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |[48-50) cm |            0|     75|   229|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |[48-50) cm |            1|      4|   229|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |>=50 cm    |            0|     22|    65|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |>=50 cm    |            1|      1|    65|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |<48 cm     |            0|     18|    65|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |<48 cm     |            1|      0|    65|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |[48-50) cm |            0|     24|    65|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |[48-50) cm |            1|      0|    65|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |>=50 cm    |            0|      8|    47|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |>=50 cm    |            1|      1|    47|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |<48 cm     |            0|     21|    47|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |<48 cm     |            1|      1|    47|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |[48-50) cm |            0|     14|    47|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |[48-50) cm |            1|      2|    47|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |>=50 cm    |            0|      7|    27|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |>=50 cm    |            1|      0|    27|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |<48 cm     |            0|     12|    27|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |<48 cm     |            1|      0|    27|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |[48-50) cm |            0|      8|    27|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |[48-50) cm |            1|      0|    27|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |>=50 cm    |            0|     40|   233|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |>=50 cm    |            1|      1|   233|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |<48 cm     |            0|     90|   233|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |<48 cm     |            1|      2|   233|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |[48-50) cm |            0|     99|   233|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |[48-50) cm |            1|      1|   233|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |>=50 cm    |            0|     33|   119|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |>=50 cm    |            1|      1|   119|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |<48 cm     |            0|     31|   119|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |<48 cm     |            1|      3|   119|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |[48-50) cm |            0|     46|   119|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |[48-50) cm |            1|      5|   119|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=50 cm    |            0|     20|   124|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=50 cm    |            1|      0|   124|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<48 cm     |            0|     40|   124|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<48 cm     |            1|      3|   124|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[48-50) cm |            0|     59|   124|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[48-50) cm |            1|      2|   124|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |>=50 cm    |            0|    109|   581|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |>=50 cm    |            1|      7|   581|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |<48 cm     |            0|    215|   581|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |<48 cm     |            1|     26|   581|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |[48-50) cm |            0|    204|   581|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |[48-50) cm |            1|     20|   581|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |>=50 cm    |            0|    168|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |>=50 cm    |            1|      0|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |<48 cm     |            0|    280|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |<48 cm     |            1|     10|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |[48-50) cm |            0|    286|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |[48-50) cm |            1|     10|   754|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |>=50 cm    |            0|  15120| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |>=50 cm    |            1|    177| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |<48 cm     |            0|    186| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |<48 cm     |            1|      3| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |[48-50) cm |            0|   1369| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |[48-50) cm |            1|     24| 16879|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |>=50 cm    |            0|    164|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |>=50 cm    |            1|      2|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |<48 cm     |            0|    230|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |<48 cm     |            1|      9|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |[48-50) cm |            0|    274|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |[48-50) cm |            1|      8|   687|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |>=50 cm    |            0|      9|    41|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |>=50 cm    |            1|      1|    41|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |<48 cm     |            0|     17|    41|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |<48 cm     |            1|      1|    41|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |[48-50) cm |            0|     12|    41|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |[48-50) cm |            1|      1|    41|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |>=50 cm    |            0|    204|  1489|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |>=50 cm    |            1|     15|  1489|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |<48 cm     |            0|    678|  1489|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |<48 cm     |            1|    117|  1489|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |[48-50) cm |            0|    437|  1489|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |[48-50) cm |            1|     38|  1489|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |>=50 cm    |            0|   3885| 13501|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |>=50 cm    |            1|    103| 13501|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |<48 cm     |            0|   4106| 13501|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |<48 cm     |            1|    179| 13501|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |[48-50) cm |            0|   5034| 13501|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |[48-50) cm |            1|    194| 13501|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ResPak, country: PAKISTAN

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/9382484c-6fda-45fc-883d-62c746a571e0/0ad497cb-7290-471d-9540-7090b4169b11/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9382484c-6fda-45fc-883d-62c746a571e0/0ad497cb-7290-471d-9540-7090b4169b11/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9382484c-6fda-45fc-883d-62c746a571e0/0ad497cb-7290-471d-9540-7090b4169b11/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9382484c-6fda-45fc-883d-62c746a571e0/0ad497cb-7290-471d-9540-7090b4169b11/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid      |country     |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:------------|:-----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |COHORTS      |INDIA       |>=50 cm            |NA             | 0.0291513| 0.0204812| 0.0378214|
|0-24 months (no birth wast) |COHORTS      |INDIA       |<48 cm             |NA             | 0.0628048| 0.0535263| 0.0720833|
|0-24 months (no birth wast) |COHORTS      |INDIA       |[48-50) cm         |NA             | 0.0506378| 0.0416853| 0.0595904|
|0-24 months (no birth wast) |COHORTS      |PHILIPPINES |>=50 cm            |NA             | 0.0692573| 0.0543620| 0.0841526|
|0-24 months (no birth wast) |COHORTS      |PHILIPPINES |<48 cm             |NA             | 0.0866632| 0.0664893| 0.1068372|
|0-24 months (no birth wast) |COHORTS      |PHILIPPINES |[48-50) cm         |NA             | 0.0929504| 0.0761120| 0.1097888|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL       |>=50 cm            |NA             | 0.1413322| 0.0705371| 0.2121274|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL       |<48 cm             |NA             | 0.2020320| 0.1607099| 0.2433542|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL       |[48-50) cm         |NA             | 0.2231565| 0.1652546| 0.2810585|
|0-24 months (no birth wast) |IRC          |INDIA       |>=50 cm            |NA             | 0.1959854| 0.1295198| 0.2624510|
|0-24 months (no birth wast) |IRC          |INDIA       |<48 cm             |NA             | 0.1784596| 0.1053546| 0.2515645|
|0-24 months (no birth wast) |IRC          |INDIA       |[48-50) cm         |NA             | 0.1984188| 0.1315281| 0.2653095|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH  |>=50 cm            |NA             | 0.0383395| 0.0254564| 0.0512226|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH  |<48 cm             |NA             | 0.0380970| 0.0347751| 0.0414188|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH  |[48-50) cm         |NA             | 0.0372289| 0.0307445| 0.0437133|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH  |>=50 cm            |NA             | 0.0417392| 0.0290589| 0.0544196|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH  |<48 cm             |NA             | 0.0567580| 0.0461460| 0.0673701|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH  |[48-50) cm         |NA             | 0.0347900| 0.0219681| 0.0476119|
|0-24 months (no birth wast) |Keneba       |GAMBIA      |>=50 cm            |NA             | 0.1302614| 0.1062914| 0.1542314|
|0-24 months (no birth wast) |Keneba       |GAMBIA      |<48 cm             |NA             | 0.1613031| 0.1191965| 0.2034097|
|0-24 months (no birth wast) |Keneba       |GAMBIA      |[48-50) cm         |NA             | 0.1592791| 0.1267657| 0.1917924|
|0-24 months (no birth wast) |NIH-Birth    |BANGLADESH  |>=50 cm            |NA             | 0.0603448| 0.0169740| 0.1037156|
|0-24 months (no birth wast) |NIH-Birth    |BANGLADESH  |<48 cm             |NA             | 0.1078838| 0.0686823| 0.1470853|
|0-24 months (no birth wast) |NIH-Birth    |BANGLADESH  |[48-50) cm         |NA             | 0.0892857| 0.0519108| 0.1266606|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA       |>=50 cm            |NA             | 0.0691592| 0.0305706| 0.1077478|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA       |<48 cm             |NA             | 0.1409706| 0.1039073| 0.1780338|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA       |[48-50) cm         |NA             | 0.0838432| 0.0618113| 0.1058751|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE    |>=50 cm            |NA             | 0.0260407| 0.0210028| 0.0310786|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE    |<48 cm             |NA             | 0.0421587| 0.0360690| 0.0482483|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE    |[48-50) cm         |NA             | 0.0368692| 0.0316934| 0.0420451|


### Parameter: E(Y)


|agecat                      |studyid      |country     |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:------------|:-----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |COHORTS      |INDIA       |NA                 |NA             | 0.0514063| 0.0459957| 0.0568168|
|0-24 months (no birth wast) |COHORTS      |PHILIPPINES |NA                 |NA             | 0.0826968| 0.0728574| 0.0925361|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL       |NA                 |NA             | 0.1987860| 0.1682929| 0.2292792|
|0-24 months (no birth wast) |IRC          |INDIA       |NA                 |NA             | 0.1923077| 0.1531430| 0.2314724|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH  |NA                 |NA             | 0.0377996| 0.0348944| 0.0407048|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH  |NA                 |NA             | 0.0465950| 0.0398949| 0.0532951|
|0-24 months (no birth wast) |Keneba       |GAMBIA      |NA                 |NA             | 0.1460892| 0.1284833| 0.1636951|
|0-24 months (no birth wast) |NIH-Birth    |BANGLADESH  |NA                 |NA             | 0.0912220| 0.0677898| 0.1146542|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA       |NA                 |NA             | 0.1141706| 0.0903032| 0.1380379|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE    |NA                 |NA             | 0.0352566| 0.0321456| 0.0383677|


### Parameter: RR


|agecat                      |studyid      |country     |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:---------------------------|:------------|:-----------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth wast) |COHORTS      |INDIA       |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |COHORTS      |INDIA       |<48 cm             |>=50 cm        | 2.1544419| 1.5458537| 3.002626|
|0-24 months (no birth wast) |COHORTS      |INDIA       |[48-50) cm         |>=50 cm        | 1.7370694| 1.2292632| 2.454649|
|0-24 months (no birth wast) |COHORTS      |PHILIPPINES |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |COHORTS      |PHILIPPINES |<48 cm             |>=50 cm        | 1.2513231| 0.9120104| 1.716877|
|0-24 months (no birth wast) |COHORTS      |PHILIPPINES |[48-50) cm         |>=50 cm        | 1.3421030| 1.0136033| 1.777067|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL       |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL       |<48 cm             |>=50 cm        | 1.4294831| 0.8322654| 2.455253|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL       |[48-50) cm         |>=50 cm        | 1.5789500| 0.8979508| 2.776414|
|0-24 months (no birth wast) |IRC          |INDIA       |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |IRC          |INDIA       |<48 cm             |>=50 cm        | 0.9105758| 0.5347107| 1.550648|
|0-24 months (no birth wast) |IRC          |INDIA       |[48-50) cm         |>=50 cm        | 1.0124164| 0.6276294| 1.633109|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH  |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH  |<48 cm             |>=50 cm        | 0.9936739| 0.7053539| 1.399847|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH  |[48-50) cm         |>=50 cm        | 0.9710331| 0.6709644| 1.405299|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH  |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH  |<48 cm             |>=50 cm        | 1.3598243| 0.9479802| 1.950592|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH  |[48-50) cm         |>=50 cm        | 0.8335081| 0.5159485| 1.346521|
|0-24 months (no birth wast) |Keneba       |GAMBIA      |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |Keneba       |GAMBIA      |<48 cm             |>=50 cm        | 1.2383032| 0.9004199| 1.702978|
|0-24 months (no birth wast) |Keneba       |GAMBIA      |[48-50) cm         |>=50 cm        | 1.2227649| 0.9288590| 1.609667|
|0-24 months (no birth wast) |NIH-Birth    |BANGLADESH  |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |NIH-Birth    |BANGLADESH  |<48 cm             |>=50 cm        | 1.7877890| 0.7990190| 4.000142|
|0-24 months (no birth wast) |NIH-Birth    |BANGLADESH  |[48-50) cm         |>=50 cm        | 1.4795918| 0.6440585| 3.399058|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA       |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA       |<48 cm             |>=50 cm        | 2.0383487| 1.0577109| 3.928167|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA       |[48-50) cm         |>=50 cm        | 1.2123216| 0.6711113| 2.189985|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE    |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE    |<48 cm             |>=50 cm        | 1.6189530| 1.2716360| 2.061131|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE    |[48-50) cm         |>=50 cm        | 1.4158309| 1.1147979| 1.798153|


### Parameter: PAR


|agecat                      |studyid      |country     |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:------------|:-----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |COHORTS      |INDIA       |>=50 cm            |NA             |  0.0222550|  0.0138082| 0.0307017|
|0-24 months (no birth wast) |COHORTS      |PHILIPPINES |>=50 cm            |NA             |  0.0134395|  0.0010239| 0.0258551|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL       |>=50 cm            |NA             |  0.0574538| -0.0095030| 0.1244106|
|0-24 months (no birth wast) |IRC          |INDIA       |>=50 cm            |NA             | -0.0036777| -0.0564425| 0.0490870|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH  |>=50 cm            |NA             | -0.0005399| -0.0129442| 0.0118643|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH  |>=50 cm            |NA             |  0.0048557| -0.0065946| 0.0163061|
|0-24 months (no birth wast) |Keneba       |GAMBIA      |>=50 cm            |NA             |  0.0158278| -0.0019946| 0.0336502|
|0-24 months (no birth wast) |NIH-Birth    |BANGLADESH  |>=50 cm            |NA             |  0.0308772| -0.0100981| 0.0718525|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA       |>=50 cm            |NA             |  0.0450114|  0.0029031| 0.0871197|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE    |>=50 cm            |NA             |  0.0092160|  0.0046717| 0.0137602|


### Parameter: PAF


|agecat                      |studyid      |country     |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:------------|:-----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |COHORTS      |INDIA       |>=50 cm            |NA             |  0.4329231|  0.2509607| 0.5706818|
|0-24 months (no birth wast) |COHORTS      |PHILIPPINES |>=50 cm            |NA             |  0.1625154| -0.0006491| 0.2990745|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL       |>=50 cm            |NA             |  0.2890234| -0.1395272| 0.5564057|
|0-24 months (no birth wast) |IRC          |INDIA       |>=50 cm            |NA             | -0.0191241| -0.3338993| 0.2213700|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH  |>=50 cm            |NA             | -0.0142836| -0.4016726| 0.2660403|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH  |>=50 cm            |NA             |  0.1042116| -0.1771889| 0.3183449|
|0-24 months (no birth wast) |Keneba       |GAMBIA      |>=50 cm            |NA             |  0.1083434| -0.0219284| 0.2220087|
|0-24 months (no birth wast) |NIH-Birth    |BANGLADESH  |>=50 cm            |NA             |  0.3384841| -0.2900440| 0.6607842|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA       |>=50 cm            |NA             |  0.3942467| -0.0654438| 0.6556017|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE    |>=50 cm            |NA             |  0.2613963|  0.1229399| 0.3779954|
