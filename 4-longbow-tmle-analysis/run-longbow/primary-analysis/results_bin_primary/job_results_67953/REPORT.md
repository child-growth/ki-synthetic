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

**Intervention Variable:** exclfeed6

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                     |studyid        |country                      |exclfeed6 | ever_stunted| n_cell|     n|
|:--------------------------|:--------------|:----------------------------|:---------|------------:|------:|-----:|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |1         |            0|      1|    14|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |1         |            1|     13|    14|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |0         |            0|      0|    14|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |0         |            1|      0|    14|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |1         |            0|      4|    27|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |1         |            1|     19|    27|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |0         |            0|      2|    27|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |0         |            1|      2|    27|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |1         |            0|    130|   471|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |1         |            1|    222|   471|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |0         |            0|     34|   471|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |0         |            1|     85|   471|
|0-24 months (no birth st.) |IRC            |INDIA                        |1         |            0|      0|    13|
|0-24 months (no birth st.) |IRC            |INDIA                        |1         |            1|      0|    13|
|0-24 months (no birth st.) |IRC            |INDIA                        |0         |            0|      4|    13|
|0-24 months (no birth st.) |IRC            |INDIA                        |0         |            1|      9|    13|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |1         |            0|   6237| 10809|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |1         |            1|   2188| 10809|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |0         |            0|   1786| 10809|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |0         |            1|    598| 10809|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |1         |            0|   1558|  3397|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |1         |            1|   1122|  3397|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |0         |            0|    400|  3397|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |0         |            1|    317|  3397|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |1         |            0|    401|  2023|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |1         |            1|    350|  2023|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |0         |            0|    566|  2023|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |0         |            1|    706|  2023|
|0-24 months (no birth st.) |LCNI-5         |MALAWI                       |1         |            0|     18|   175|
|0-24 months (no birth st.) |LCNI-5         |MALAWI                       |1         |            1|     12|   175|
|0-24 months (no birth st.) |LCNI-5         |MALAWI                       |0         |            0|     83|   175|
|0-24 months (no birth st.) |LCNI-5         |MALAWI                       |0         |            1|     62|   175|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |1         |            0|     12|   195|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |1         |            1|     16|   195|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |0         |            0|     78|   195|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |0         |            1|     89|   195|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL                       |1         |            0|      8|   185|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL                       |1         |            1|      1|   185|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL                       |0         |            0|    146|   185|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL                       |0         |            1|     30|   185|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |1         |            0|      0|   185|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |1         |            1|      1|   185|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |0         |            0|     83|   185|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |0         |            1|    101|   185|
|0-24 months (no birth st.) |MAL-ED         |NEPAL                        |1         |            0|      3|   199|
|0-24 months (no birth st.) |MAL-ED         |NEPAL                        |1         |            1|      2|   199|
|0-24 months (no birth st.) |MAL-ED         |NEPAL                        |0         |            0|    143|   199|
|0-24 months (no birth st.) |MAL-ED         |NEPAL                        |0         |            1|     51|   199|
|0-24 months (no birth st.) |MAL-ED         |PERU                         |1         |            0|      0|   237|
|0-24 months (no birth st.) |MAL-ED         |PERU                         |1         |            1|      4|   237|
|0-24 months (no birth st.) |MAL-ED         |PERU                         |0         |            0|     90|   237|
|0-24 months (no birth st.) |MAL-ED         |PERU                         |0         |            1|    143|   237|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA                 |1         |            0|      0|   212|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA                 |1         |            1|      0|   212|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA                 |0         |            0|     91|   212|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA                 |0         |            1|    121|   212|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1         |            0|      0|   197|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1         |            1|      0|   197|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0         |            0|     28|   197|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0         |            1|    169|   197|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |1         |            0|    132|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |1         |            1|     63|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |0         |            0|    263|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |0         |            1|    175|   633|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |1         |            0|    121|   326|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |1         |            1|    191|   326|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |0         |            0|      5|   326|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |0         |            1|      9|   326|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA                        |1         |            0|      0|    95|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA                        |1         |            1|      0|    95|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA                        |0         |            0|     25|    95|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA                        |0         |            1|     70|    95|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |1         |            0|     11|    14|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |1         |            1|      3|    14|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |0         |            0|      0|    14|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |0         |            1|      0|    14|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |1         |            0|      8|    27|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |1         |            1|     15|    27|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |0         |            0|      3|    27|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |0         |            1|      1|    27|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |1         |            0|    286|   471|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |1         |            1|     66|   471|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |0         |            0|     88|   471|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |0         |            1|     31|   471|
|0-6 months (no birth st.)  |IRC            |INDIA                        |1         |            0|      0|    13|
|0-6 months (no birth st.)  |IRC            |INDIA                        |1         |            1|      0|    13|
|0-6 months (no birth st.)  |IRC            |INDIA                        |0         |            0|      8|    13|
|0-6 months (no birth st.)  |IRC            |INDIA                        |0         |            1|      5|    13|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |1         |            0|   7278| 10806|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |1         |            1|   1145| 10806|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |0         |            0|   2073| 10806|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |0         |            1|    310| 10806|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |1         |            0|   2432|  3369|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |1         |            1|    237|  3369|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |0         |            0|    625|  3369|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |0         |            1|     75|  3369|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |1         |            0|    582|  2023|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |1         |            1|    169|  2023|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |0         |            0|    923|  2023|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |0         |            1|    349|  2023|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI                       |1         |            0|     30|   175|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI                       |1         |            1|      0|   175|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI                       |0         |            0|    145|   175|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI                       |0         |            1|      0|   175|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |1         |            0|     21|   195|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |1         |            1|      7|   195|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |0         |            0|    134|   195|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |0         |            1|     33|   195|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL                       |1         |            0|      9|   185|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL                       |1         |            1|      0|   185|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL                       |0         |            0|    156|   185|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL                       |0         |            1|     20|   185|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |1         |            0|      1|   185|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |1         |            1|      0|   185|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |0         |            0|    140|   185|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |0         |            1|     44|   185|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL                        |1         |            0|      5|   199|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL                        |1         |            1|      0|   199|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL                        |0         |            0|    182|   199|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL                        |0         |            1|     12|   199|
|0-6 months (no birth st.)  |MAL-ED         |PERU                         |1         |            0|      2|   237|
|0-6 months (no birth st.)  |MAL-ED         |PERU                         |1         |            1|      2|   237|
|0-6 months (no birth st.)  |MAL-ED         |PERU                         |0         |            0|    147|   237|
|0-6 months (no birth st.)  |MAL-ED         |PERU                         |0         |            1|     86|   237|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA                 |1         |            0|      0|   212|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA                 |1         |            1|      0|   212|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA                 |0         |            0|    146|   212|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA                 |0         |            1|     66|   212|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1         |            0|      0|   197|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1         |            1|      0|   197|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0         |            0|    137|   197|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0         |            1|     60|   197|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |1         |            0|    169|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |1         |            1|     26|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |0         |            0|    363|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |0         |            1|     75|   633|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |1         |            0|    250|   326|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |1         |            1|     62|   326|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |0         |            0|      9|   326|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |0         |            1|      5|   326|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA                        |1         |            0|      0|    95|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA                        |1         |            1|      0|    95|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA                        |0         |            0|     95|    95|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA                        |0         |            1|      0|    95|


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
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
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
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
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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




# Results Detail

## Results Plots
![](/tmp/0b9cd6a6-6773-42b5-b34d-23055341272c/2cecbeab-617e-484e-bacd-50b20cb1bbf5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0b9cd6a6-6773-42b5-b34d-23055341272c/2cecbeab-617e-484e-bacd-50b20cb1bbf5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0b9cd6a6-6773-42b5-b34d-23055341272c/2cecbeab-617e-484e-bacd-50b20cb1bbf5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0b9cd6a6-6773-42b5-b34d-23055341272c/2cecbeab-617e-484e-bacd-50b20cb1bbf5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                     |studyid      |country    |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:--------------------------|:------------|:----------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months (no birth st.) |GMS-Nepal    |NEPAL      |1                  |NA             | 0.6271147|  0.5767950| 0.6774345|
|0-24 months (no birth st.) |GMS-Nepal    |NEPAL      |0                  |NA             | 0.7159048|  0.6396831| 0.7921264|
|0-24 months (no birth st.) |JiVitA-3     |BANGLADESH |1                  |NA             | 0.2588441|  0.2478334| 0.2698548|
|0-24 months (no birth st.) |JiVitA-3     |BANGLADESH |0                  |NA             | 0.2536962|  0.2368412| 0.2705512|
|0-24 months (no birth st.) |JiVitA-4     |BANGLADESH |1                  |NA             | 0.4185291|  0.3966845| 0.4403737|
|0-24 months (no birth st.) |JiVitA-4     |BANGLADESH |0                  |NA             | 0.4484277|  0.4075678| 0.4892875|
|0-24 months (no birth st.) |Keneba       |GAMBIA     |1                  |NA             | 0.4757636|  0.4411067| 0.5104205|
|0-24 months (no birth st.) |Keneba       |GAMBIA     |0                  |NA             | 0.5505387|  0.5237293| 0.5773481|
|0-24 months (no birth st.) |LCNI-5       |MALAWI     |1                  |NA             | 0.4109227|  0.2306720| 0.5911734|
|0-24 months (no birth st.) |LCNI-5       |MALAWI     |0                  |NA             | 0.4272017|  0.3463738| 0.5080295|
|0-24 months (no birth st.) |MAL-ED       |BANGLADESH |1                  |NA             | 0.6052428|  0.4128818| 0.7976039|
|0-24 months (no birth st.) |MAL-ED       |BANGLADESH |0                  |NA             | 0.5324143|  0.4564172| 0.6084113|
|0-24 months (no birth st.) |PROVIDE      |BANGLADESH |1                  |NA             | 0.3326930|  0.2657630| 0.3996230|
|0-24 months (no birth st.) |PROVIDE      |BANGLADESH |0                  |NA             | 0.3963823|  0.3512656| 0.4414989|
|0-24 months (no birth st.) |SAS-CompFeed |INDIA      |1                  |NA             | 0.6121795|  0.5306906| 0.6936683|
|0-24 months (no birth st.) |SAS-CompFeed |INDIA      |0                  |NA             | 0.6428571|  0.3329177| 0.9527966|
|0-6 months (no birth st.)  |GMS-Nepal    |NEPAL      |1                  |NA             | 0.1865236|  0.1456974| 0.2273497|
|0-6 months (no birth st.)  |GMS-Nepal    |NEPAL      |0                  |NA             | 0.2654081|  0.1848376| 0.3459786|
|0-6 months (no birth st.)  |JiVitA-3     |BANGLADESH |1                  |NA             | 0.1343065|  0.1260628| 0.1425501|
|0-6 months (no birth st.)  |JiVitA-3     |BANGLADESH |0                  |NA             | 0.1357684|  0.1227700| 0.1487669|
|0-6 months (no birth st.)  |JiVitA-4     |BANGLADESH |1                  |NA             | 0.0865864|  0.0730844| 0.1000884|
|0-6 months (no birth st.)  |JiVitA-4     |BANGLADESH |0                  |NA             | 0.1153940|  0.0900613| 0.1407267|
|0-6 months (no birth st.)  |Keneba       |GAMBIA     |1                  |NA             | 0.2235229|  0.1945549| 0.2524910|
|0-6 months (no birth st.)  |Keneba       |GAMBIA     |0                  |NA             | 0.2752197|  0.2510488| 0.2993906|
|0-6 months (no birth st.)  |MAL-ED       |BANGLADESH |1                  |NA             | 0.2500000|  0.0892000| 0.4108000|
|0-6 months (no birth st.)  |MAL-ED       |BANGLADESH |0                  |NA             | 0.1976048|  0.1370569| 0.2581527|
|0-6 months (no birth st.)  |PROVIDE      |BANGLADESH |1                  |NA             | 0.1331990|  0.0842083| 0.1821897|
|0-6 months (no birth st.)  |PROVIDE      |BANGLADESH |0                  |NA             | 0.1736332|  0.1383088| 0.2089576|
|0-6 months (no birth st.)  |SAS-CompFeed |INDIA      |1                  |NA             | 0.1987179|  0.1419130| 0.2555229|
|0-6 months (no birth st.)  |SAS-CompFeed |INDIA      |0                  |NA             | 0.3571429| -0.1170496| 0.8313354|


### Parameter: E(Y)


|agecat                     |studyid      |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:--------------------------|:------------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth st.) |GMS-Nepal    |NEPAL      |NA                 |NA             | 0.6518047| 0.6087352| 0.6948741|
|0-24 months (no birth st.) |JiVitA-3     |BANGLADESH |NA                 |NA             | 0.2577482| 0.2478575| 0.2676389|
|0-24 months (no birth st.) |JiVitA-4     |BANGLADESH |NA                 |NA             | 0.4236091| 0.4038600| 0.4433581|
|0-24 months (no birth st.) |Keneba       |GAMBIA     |NA                 |NA             | 0.5219970| 0.5002246| 0.5437695|
|0-24 months (no birth st.) |LCNI-5       |MALAWI     |NA                 |NA             | 0.4228571| 0.3494545| 0.4962598|
|0-24 months (no birth st.) |MAL-ED       |BANGLADESH |NA                 |NA             | 0.5384615| 0.4683114| 0.6086117|
|0-24 months (no birth st.) |PROVIDE      |BANGLADESH |NA                 |NA             | 0.3759874| 0.3382238| 0.4137509|
|0-24 months (no birth st.) |SAS-CompFeed |INDIA      |NA                 |NA             | 0.6134969| 0.5286303| 0.6983636|
|0-6 months (no birth st.)  |GMS-Nepal    |NEPAL      |NA                 |NA             | 0.2059448| 0.1693853| 0.2425043|
|0-6 months (no birth st.)  |JiVitA-3     |BANGLADESH |NA                 |NA             | 0.1346474| 0.1274032| 0.1418916|
|0-6 months (no birth st.)  |JiVitA-4     |BANGLADESH |NA                 |NA             | 0.0926091| 0.0806150| 0.1046031|
|0-6 months (no birth st.)  |Keneba       |GAMBIA     |NA                 |NA             | 0.2560554| 0.2370317| 0.2750791|
|0-6 months (no birth st.)  |MAL-ED       |BANGLADESH |NA                 |NA             | 0.2051282| 0.1483073| 0.2619492|
|0-6 months (no birth st.)  |PROVIDE      |BANGLADESH |NA                 |NA             | 0.1595577| 0.1310079| 0.1881074|
|0-6 months (no birth st.)  |SAS-CompFeed |INDIA      |NA                 |NA             | 0.2055215| 0.1385538| 0.2724891|


### Parameter: RR


|agecat                     |studyid      |country    |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:--------------------------|:------------|:----------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth st.) |GMS-Nepal    |NEPAL      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |GMS-Nepal    |NEPAL      |0                  |1              | 1.1415850| 1.0020237| 1.300584|
|0-24 months (no birth st.) |JiVitA-3     |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |JiVitA-3     |BANGLADESH |0                  |1              | 0.9801121| 0.9112530| 1.054175|
|0-24 months (no birth st.) |JiVitA-4     |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |JiVitA-4     |BANGLADESH |0                  |1              | 1.0714373| 0.9679148| 1.186032|
|0-24 months (no birth st.) |Keneba       |GAMBIA     |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |Keneba       |GAMBIA     |0                  |1              | 1.1571686| 1.0629160| 1.259779|
|0-24 months (no birth st.) |LCNI-5       |MALAWI     |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |LCNI-5       |MALAWI     |0                  |1              | 1.0396156| 0.6450822| 1.675447|
|0-24 months (no birth st.) |MAL-ED       |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED       |BANGLADESH |0                  |1              | 0.8796705| 0.6200626| 1.247971|
|0-24 months (no birth st.) |PROVIDE      |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |PROVIDE      |BANGLADESH |0                  |1              | 1.1914354| 0.9528115| 1.489821|
|0-24 months (no birth st.) |SAS-CompFeed |INDIA      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |SAS-CompFeed |INDIA      |0                  |1              | 1.0501122| 0.6736522| 1.636951|
|0-6 months (no birth st.)  |GMS-Nepal    |NEPAL      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |GMS-Nepal    |NEPAL      |0                  |1              | 1.4229200| 0.9784745| 2.069243|
|0-6 months (no birth st.)  |JiVitA-3     |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |JiVitA-3     |BANGLADESH |0                  |1              | 1.0108853| 0.9060286| 1.127878|
|0-6 months (no birth st.)  |JiVitA-4     |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |JiVitA-4     |BANGLADESH |0                  |1              | 1.3327038| 1.0203040| 1.740755|
|0-6 months (no birth st.)  |Keneba       |GAMBIA     |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |Keneba       |GAMBIA     |0                  |1              | 1.2312820| 1.0568690| 1.434478|
|0-6 months (no birth st.)  |MAL-ED       |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |MAL-ED       |BANGLADESH |0                  |1              | 0.7904192| 0.3876519| 1.611658|
|0-6 months (no birth st.)  |PROVIDE      |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |PROVIDE      |BANGLADESH |0                  |1              | 1.3035619| 0.8574597| 1.981753|
|0-6 months (no birth st.)  |SAS-CompFeed |INDIA      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |SAS-CompFeed |INDIA      |0                  |1              | 1.7972350| 0.5064696| 6.377587|


### Parameter: PAR


|agecat                     |studyid      |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:--------------------------|:------------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth st.) |GMS-Nepal    |NEPAL      |1                  |NA             |  0.0246899|  0.0013747| 0.0480052|
|0-24 months (no birth st.) |JiVitA-3     |BANGLADESH |1                  |NA             | -0.0010959| -0.0051934| 0.0030016|
|0-24 months (no birth st.) |JiVitA-4     |BANGLADESH |1                  |NA             |  0.0050800| -0.0045329| 0.0146929|
|0-24 months (no birth st.) |Keneba       |GAMBIA     |1                  |NA             |  0.0462334|  0.0192616| 0.0732053|
|0-24 months (no birth st.) |LCNI-5       |MALAWI     |1                  |NA             |  0.0119344| -0.1525331| 0.1764020|
|0-24 months (no birth st.) |MAL-ED       |BANGLADESH |1                  |NA             | -0.0667813| -0.2459589| 0.1123963|
|0-24 months (no birth st.) |PROVIDE      |BANGLADESH |1                  |NA             |  0.0432943| -0.0129774| 0.0995661|
|0-24 months (no birth st.) |SAS-CompFeed |INDIA      |1                  |NA             |  0.0013174| -0.0112602| 0.0138950|
|0-6 months (no birth st.)  |GMS-Nepal    |NEPAL      |1                  |NA             |  0.0194212| -0.0032986| 0.0421411|
|0-6 months (no birth st.)  |JiVitA-3     |BANGLADESH |1                  |NA             |  0.0003409| -0.0029262| 0.0036080|
|0-6 months (no birth st.)  |JiVitA-4     |BANGLADESH |1                  |NA             |  0.0060227|  0.0002845| 0.0117609|
|0-6 months (no birth st.)  |Keneba       |GAMBIA     |1                  |NA             |  0.0325325|  0.0093654| 0.0556995|
|0-6 months (no birth st.)  |MAL-ED       |BANGLADESH |1                  |NA             | -0.0448718| -0.1920444| 0.1023008|
|0-6 months (no birth st.)  |PROVIDE      |BANGLADESH |1                  |NA             |  0.0263586| -0.0157278| 0.0684450|
|0-6 months (no birth st.)  |SAS-CompFeed |INDIA      |1                  |NA             |  0.0068035| -0.0151879| 0.0287949|


### Parameter: PAF


|agecat                     |studyid      |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:--------------------------|:------------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth st.) |GMS-Nepal    |NEPAL      |1                  |NA             |  0.0378793|  0.0011731| 0.0732366|
|0-24 months (no birth st.) |JiVitA-3     |BANGLADESH |1                  |NA             | -0.0042518| -0.0202630| 0.0115082|
|0-24 months (no birth st.) |JiVitA-4     |BANGLADESH |1                  |NA             |  0.0119921| -0.0109625| 0.0344255|
|0-24 months (no birth st.) |Keneba       |GAMBIA     |1                  |NA             |  0.0885703|  0.0352689| 0.1389268|
|0-24 months (no birth st.) |LCNI-5       |MALAWI     |1                  |NA             |  0.0282234| -0.4501299| 0.3487826|
|0-24 months (no birth st.) |MAL-ED       |BANGLADESH |1                  |NA             | -0.1240224| -0.5118258| 0.1643043|
|0-24 months (no birth st.) |PROVIDE      |BANGLADESH |1                  |NA             |  0.1151483| -0.0480826| 0.2529573|
|0-24 months (no birth st.) |SAS-CompFeed |INDIA      |1                  |NA             |  0.0021474| -0.0184658| 0.0223435|
|0-6 months (no birth st.)  |GMS-Nepal    |NEPAL      |1                  |NA             |  0.0943031| -0.0223331| 0.1976325|
|0-6 months (no birth st.)  |JiVitA-3     |BANGLADESH |1                  |NA             |  0.0025321| -0.0220441| 0.0265174|
|0-6 months (no birth st.)  |JiVitA-4     |BANGLADESH |1                  |NA             |  0.0650334|  0.0000066| 0.1258317|
|0-6 months (no birth st.)  |Keneba       |GAMBIA     |1                  |NA             |  0.1270524|  0.0318810| 0.2128680|
|0-6 months (no birth st.)  |MAL-ED       |BANGLADESH |1                  |NA             | -0.2187500| -1.1940228| 0.3230009|
|0-6 months (no birth st.)  |PROVIDE      |BANGLADESH |1                  |NA             |  0.1651981| -0.1441295| 0.3908957|
|0-6 months (no birth st.)  |SAS-CompFeed |INDIA      |1                  |NA             |  0.0331037| -0.0733606| 0.1290081|
