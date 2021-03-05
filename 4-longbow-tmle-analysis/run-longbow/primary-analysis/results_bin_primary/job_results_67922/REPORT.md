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

**Intervention Variable:** mbmi

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_nchldlt5
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |mbmi          | ever_stunted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:-------------|------------:|------:|-----:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Normal weight |            0|   1803|  3216|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Normal weight |            1|    959|  3216|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Underweight   |            0|    266|  3216|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Underweight   |            1|    188|  3216|
|0-24 months |JiVitA-3       |BANGLADESH                   |Normal weight |            0|   8183| 27105|
|0-24 months |JiVitA-3       |BANGLADESH                   |Normal weight |            1|   8539| 27105|
|0-24 months |JiVitA-3       |BANGLADESH                   |Underweight   |            0|   5491| 27105|
|0-24 months |JiVitA-3       |BANGLADESH                   |Underweight   |            1|   4892| 27105|
|0-24 months |LCNI-5         |MALAWI                       |Normal weight |            0|    259|   837|
|0-24 months |LCNI-5         |MALAWI                       |Normal weight |            1|    433|   837|
|0-24 months |LCNI-5         |MALAWI                       |Underweight   |            0|     46|   837|
|0-24 months |LCNI-5         |MALAWI                       |Underweight   |            1|     99|   837|
|0-24 months |MAL-ED         |BANGLADESH                   |Normal weight |            0|     89|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |Normal weight |            1|    133|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |Underweight   |            0|      9|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |Underweight   |            1|     23|   254|
|0-24 months |MAL-ED         |BRAZIL                       |Normal weight |            0|    158|   221|
|0-24 months |MAL-ED         |BRAZIL                       |Normal weight |            1|     53|   221|
|0-24 months |MAL-ED         |BRAZIL                       |Underweight   |            0|      6|   221|
|0-24 months |MAL-ED         |BRAZIL                       |Underweight   |            1|      4|   221|
|0-24 months |MAL-ED         |INDIA                        |Normal weight |            0|     74|   242|
|0-24 months |MAL-ED         |INDIA                        |Normal weight |            1|    119|   242|
|0-24 months |MAL-ED         |INDIA                        |Underweight   |            0|     19|   242|
|0-24 months |MAL-ED         |INDIA                        |Underweight   |            1|     30|   242|
|0-24 months |MAL-ED         |NEPAL                        |Normal weight |            0|    155|   238|
|0-24 months |MAL-ED         |NEPAL                        |Normal weight |            1|     83|   238|
|0-24 months |MAL-ED         |NEPAL                        |Underweight   |            0|      0|   238|
|0-24 months |MAL-ED         |NEPAL                        |Underweight   |            1|      0|   238|
|0-24 months |MAL-ED         |PERU                         |Normal weight |            0|    102|   290|
|0-24 months |MAL-ED         |PERU                         |Normal weight |            1|    183|   290|
|0-24 months |MAL-ED         |PERU                         |Underweight   |            0|      2|   290|
|0-24 months |MAL-ED         |PERU                         |Underweight   |            1|      3|   290|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Normal weight |            0|    107|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Normal weight |            1|    155|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Underweight   |            0|      1|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Underweight   |            1|      7|   270|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Normal weight |            0|     32|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Normal weight |            1|    210|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Underweight   |            0|      3|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Underweight   |            1|     11|   256|
|0-24 months |NIH-Birth      |BANGLADESH                   |Normal weight |            0|    190|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |Normal weight |            1|    333|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |Underweight   |            0|     21|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |Underweight   |            1|     85|   629|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Normal weight |            0|    365|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Normal weight |            1|    322|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Underweight   |            0|     28|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Underweight   |            1|     40|   755|
|0-24 months |PROBIT         |BELARUS                      |Normal weight |            0|  11530| 13728|
|0-24 months |PROBIT         |BELARUS                      |Normal weight |            1|   1675| 13728|
|0-24 months |PROBIT         |BELARUS                      |Underweight   |            0|    434| 13728|
|0-24 months |PROBIT         |BELARUS                      |Underweight   |            1|     89| 13728|
|0-24 months |PROVIDE        |BANGLADESH                   |Normal weight |            0|    305|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |Normal weight |            1|    237|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |Underweight   |            0|     61|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |Underweight   |            1|     66|   669|
|0-24 months |SAS-CompFeed   |INDIA                        |Normal weight |            0|    353|  1407|
|0-24 months |SAS-CompFeed   |INDIA                        |Normal weight |            1|    675|  1407|
|0-24 months |SAS-CompFeed   |INDIA                        |Underweight   |            0|     88|  1407|
|0-24 months |SAS-CompFeed   |INDIA                        |Underweight   |            1|    291|  1407|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight |            0|   1511|  2345|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight |            1|    796|  2345|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Underweight   |            0|     24|  2345|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Underweight   |            1|     14|  2345|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Normal weight |            0|   5091|  9819|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Normal weight |            1|   4211|  9819|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Underweight   |            0|    222|  9819|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Underweight   |            1|    295|  9819|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Normal weight |            0|   9578| 27039|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Normal weight |            1|   7109| 27039|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Underweight   |            0|   6293| 27039|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Underweight   |            1|   4059| 27039|
|0-6 months  |LCNI-5         |MALAWI                       |Normal weight |            0|    143|   271|
|0-6 months  |LCNI-5         |MALAWI                       |Normal weight |            1|     81|   271|
|0-6 months  |LCNI-5         |MALAWI                       |Underweight   |            0|     31|   271|
|0-6 months  |LCNI-5         |MALAWI                       |Underweight   |            1|     16|   271|
|0-6 months  |MAL-ED         |BANGLADESH                   |Normal weight |            0|    147|   254|
|0-6 months  |MAL-ED         |BANGLADESH                   |Normal weight |            1|     75|   254|
|0-6 months  |MAL-ED         |BANGLADESH                   |Underweight   |            0|     18|   254|
|0-6 months  |MAL-ED         |BANGLADESH                   |Underweight   |            1|     14|   254|
|0-6 months  |MAL-ED         |BRAZIL                       |Normal weight |            0|    168|   221|
|0-6 months  |MAL-ED         |BRAZIL                       |Normal weight |            1|     43|   221|
|0-6 months  |MAL-ED         |BRAZIL                       |Underweight   |            0|      7|   221|
|0-6 months  |MAL-ED         |BRAZIL                       |Underweight   |            1|      3|   221|
|0-6 months  |MAL-ED         |INDIA                        |Normal weight |            0|    128|   242|
|0-6 months  |MAL-ED         |INDIA                        |Normal weight |            1|     65|   242|
|0-6 months  |MAL-ED         |INDIA                        |Underweight   |            0|     30|   242|
|0-6 months  |MAL-ED         |INDIA                        |Underweight   |            1|     19|   242|
|0-6 months  |MAL-ED         |NEPAL                        |Normal weight |            0|    196|   238|
|0-6 months  |MAL-ED         |NEPAL                        |Normal weight |            1|     42|   238|
|0-6 months  |MAL-ED         |NEPAL                        |Underweight   |            0|      0|   238|
|0-6 months  |MAL-ED         |NEPAL                        |Underweight   |            1|      0|   238|
|0-6 months  |MAL-ED         |PERU                         |Normal weight |            0|    160|   290|
|0-6 months  |MAL-ED         |PERU                         |Normal weight |            1|    125|   290|
|0-6 months  |MAL-ED         |PERU                         |Underweight   |            0|      2|   290|
|0-6 months  |MAL-ED         |PERU                         |Underweight   |            1|      3|   290|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Normal weight |            0|    163|   270|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Normal weight |            1|     99|   270|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Underweight   |            0|      3|   270|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Underweight   |            1|      5|   270|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Normal weight |            0|    142|   256|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Normal weight |            1|    100|   256|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Underweight   |            0|      6|   256|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Underweight   |            1|      8|   256|
|0-6 months  |NIH-Birth      |BANGLADESH                   |Normal weight |            0|    353|   629|
|0-6 months  |NIH-Birth      |BANGLADESH                   |Normal weight |            1|    170|   629|
|0-6 months  |NIH-Birth      |BANGLADESH                   |Underweight   |            0|     56|   629|
|0-6 months  |NIH-Birth      |BANGLADESH                   |Underweight   |            1|     50|   629|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Normal weight |            0|    485|   755|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Normal weight |            1|    202|   755|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Underweight   |            0|     41|   755|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Underweight   |            1|     27|   755|
|0-6 months  |PROBIT         |BELARUS                      |Normal weight |            0|  12359| 13728|
|0-6 months  |PROBIT         |BELARUS                      |Normal weight |            1|    846| 13728|
|0-6 months  |PROBIT         |BELARUS                      |Underweight   |            0|    468| 13728|
|0-6 months  |PROBIT         |BELARUS                      |Underweight   |            1|     55| 13728|
|0-6 months  |PROVIDE        |BANGLADESH                   |Normal weight |            0|    414|   669|
|0-6 months  |PROVIDE        |BANGLADESH                   |Normal weight |            1|    128|   669|
|0-6 months  |PROVIDE        |BANGLADESH                   |Underweight   |            0|     89|   669|
|0-6 months  |PROVIDE        |BANGLADESH                   |Underweight   |            1|     38|   669|
|0-6 months  |SAS-CompFeed   |INDIA                        |Normal weight |            0|    618|  1404|
|0-6 months  |SAS-CompFeed   |INDIA                        |Normal weight |            1|    407|  1404|
|0-6 months  |SAS-CompFeed   |INDIA                        |Underweight   |            0|    187|  1404|
|0-6 months  |SAS-CompFeed   |INDIA                        |Underweight   |            1|    192|  1404|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight |            0|   1864|  2345|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight |            1|    443|  2345|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Underweight   |            0|     29|  2345|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Underweight   |            1|      9|  2345|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Normal weight |            0|   6669|  9808|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Normal weight |            1|   2622|  9808|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Underweight   |            0|    325|  9808|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Underweight   |            1|    192|  9808|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |Normal weight |            0|   1803|  3216|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |Normal weight |            1|    959|  3216|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |Underweight   |            0|    266|  3216|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |Underweight   |            1|    188|  3216|
|6-24 months |JiVitA-3       |BANGLADESH                   |Normal weight |            0|   4822| 10460|
|6-24 months |JiVitA-3       |BANGLADESH                   |Normal weight |            1|   1430| 10460|
|6-24 months |JiVitA-3       |BANGLADESH                   |Underweight   |            0|   3375| 10460|
|6-24 months |JiVitA-3       |BANGLADESH                   |Underweight   |            1|    833| 10460|
|6-24 months |LCNI-5         |MALAWI                       |Normal weight |            0|    252|   727|
|6-24 months |LCNI-5         |MALAWI                       |Normal weight |            1|    352|   727|
|6-24 months |LCNI-5         |MALAWI                       |Underweight   |            0|     40|   727|
|6-24 months |LCNI-5         |MALAWI                       |Underweight   |            1|     83|   727|
|6-24 months |MAL-ED         |BANGLADESH                   |Normal weight |            0|     83|   158|
|6-24 months |MAL-ED         |BANGLADESH                   |Normal weight |            1|     58|   158|
|6-24 months |MAL-ED         |BANGLADESH                   |Underweight   |            0|      8|   158|
|6-24 months |MAL-ED         |BANGLADESH                   |Underweight   |            1|      9|   158|
|6-24 months |MAL-ED         |BRAZIL                       |Normal weight |            0|    147|   163|
|6-24 months |MAL-ED         |BRAZIL                       |Normal weight |            1|     10|   163|
|6-24 months |MAL-ED         |BRAZIL                       |Underweight   |            0|      5|   163|
|6-24 months |MAL-ED         |BRAZIL                       |Underweight   |            1|      1|   163|
|6-24 months |MAL-ED         |INDIA                        |Normal weight |            0|     70|   154|
|6-24 months |MAL-ED         |INDIA                        |Normal weight |            1|     54|   154|
|6-24 months |MAL-ED         |INDIA                        |Underweight   |            0|     19|   154|
|6-24 months |MAL-ED         |INDIA                        |Underweight   |            1|     11|   154|
|6-24 months |MAL-ED         |NEPAL                        |Normal weight |            0|    153|   194|
|6-24 months |MAL-ED         |NEPAL                        |Normal weight |            1|     41|   194|
|6-24 months |MAL-ED         |NEPAL                        |Underweight   |            0|      0|   194|
|6-24 months |MAL-ED         |NEPAL                        |Underweight   |            1|      0|   194|
|6-24 months |MAL-ED         |PERU                         |Normal weight |            0|     88|   148|
|6-24 months |MAL-ED         |PERU                         |Normal weight |            1|     58|   148|
|6-24 months |MAL-ED         |PERU                         |Underweight   |            0|      2|   148|
|6-24 months |MAL-ED         |PERU                         |Underweight   |            1|      0|   148|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Normal weight |            0|     97|   155|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Normal weight |            1|     56|   155|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Underweight   |            0|      0|   155|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Underweight   |            1|      2|   155|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Normal weight |            0|     29|   144|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Normal weight |            1|    110|   144|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Underweight   |            0|      2|   144|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Underweight   |            1|      3|   144|
|6-24 months |NIH-Birth      |BANGLADESH                   |Normal weight |            0|    133|   345|
|6-24 months |NIH-Birth      |BANGLADESH                   |Normal weight |            1|    163|   345|
|6-24 months |NIH-Birth      |BANGLADESH                   |Underweight   |            0|     14|   345|
|6-24 months |NIH-Birth      |BANGLADESH                   |Underweight   |            1|     35|   345|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Normal weight |            0|    345|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Normal weight |            1|    120|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Underweight   |            0|     28|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Underweight   |            1|     13|   506|
|6-24 months |PROBIT         |BELARUS                      |Normal weight |            0|  11522| 12819|
|6-24 months |PROBIT         |BELARUS                      |Normal weight |            1|    829| 12819|
|6-24 months |PROBIT         |BELARUS                      |Underweight   |            0|    434| 12819|
|6-24 months |PROBIT         |BELARUS                      |Underweight   |            1|     34| 12819|
|6-24 months |PROVIDE        |BANGLADESH                   |Normal weight |            0|    275|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |Normal weight |            1|    109|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |Underweight   |            0|     44|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |Underweight   |            1|     28|   456|
|6-24 months |SAS-CompFeed   |INDIA                        |Normal weight |            0|    304|   743|
|6-24 months |SAS-CompFeed   |INDIA                        |Normal weight |            1|    268|   743|
|6-24 months |SAS-CompFeed   |INDIA                        |Underweight   |            0|     72|   743|
|6-24 months |SAS-CompFeed   |INDIA                        |Underweight   |            1|     99|   743|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight |            0|   1193|  1570|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight |            1|    353|  1570|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Underweight   |            0|     19|  1570|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Underweight   |            1|      5|  1570|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Normal weight |            0|   4582|  6470|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Normal weight |            1|   1589|  6470|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Underweight   |            0|    196|  6470|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Underweight   |            1|    103|  6470|


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
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/24b74a7b-bd2a-45a0-936f-f05806dde79e/624ed947-a04a-44cc-9a60-ce41360046c0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/24b74a7b-bd2a-45a0-936f-f05806dde79e/624ed947-a04a-44cc-9a60-ce41360046c0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/24b74a7b-bd2a-45a0-936f-f05806dde79e/624ed947-a04a-44cc-9a60-ce41360046c0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/24b74a7b-bd2a-45a0-936f-f05806dde79e/624ed947-a04a-44cc-9a60-ce41360046c0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Normal weight      |NA             | 0.3474848| 0.2944027| 0.4005668|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Underweight        |NA             | 0.4190179| 0.3143118| 0.5237239|
|0-24 months |JiVitA-3       |BANGLADESH                   |Normal weight      |NA             | 0.5092979| 0.4999312| 0.5186647|
|0-24 months |JiVitA-3       |BANGLADESH                   |Underweight        |NA             | 0.4735973| 0.4628236| 0.4843710|
|0-24 months |LCNI-5         |MALAWI                       |Normal weight      |NA             | 0.6250997| 0.5889972| 0.6612021|
|0-24 months |LCNI-5         |MALAWI                       |Underweight        |NA             | 0.6858135| 0.6092019| 0.7624250|
|0-24 months |MAL-ED         |BANGLADESH                   |Normal weight      |NA             | 0.5990991| 0.5345045| 0.6636937|
|0-24 months |MAL-ED         |BANGLADESH                   |Underweight        |NA             | 0.7187500| 0.5626637| 0.8748363|
|0-24 months |MAL-ED         |INDIA                        |Normal weight      |NA             | 0.6166796| 0.5478409| 0.6855183|
|0-24 months |MAL-ED         |INDIA                        |Underweight        |NA             | 0.6103477| 0.4713669| 0.7493284|
|0-24 months |NIH-Birth      |BANGLADESH                   |Normal weight      |NA             | 0.6382173| 0.5969678| 0.6794668|
|0-24 months |NIH-Birth      |BANGLADESH                   |Underweight        |NA             | 0.8158518| 0.7405870| 0.8911165|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Normal weight      |NA             | 0.4694696| 0.4319223| 0.5070170|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Underweight        |NA             | 0.6575411| 0.5472837| 0.7677986|
|0-24 months |PROBIT         |BELARUS                      |Normal weight      |NA             | 0.1272187| 0.1107050| 0.1437324|
|0-24 months |PROBIT         |BELARUS                      |Underweight        |NA             | 0.1584725| 0.1201699| 0.1967752|
|0-24 months |PROVIDE        |BANGLADESH                   |Normal weight      |NA             | 0.4390974| 0.3973268| 0.4808681|
|0-24 months |PROVIDE        |BANGLADESH                   |Underweight        |NA             | 0.5232499| 0.4319902| 0.6145095|
|0-24 months |SAS-CompFeed   |INDIA                        |Normal weight      |NA             | 0.6595328| 0.6100312| 0.7090344|
|0-24 months |SAS-CompFeed   |INDIA                        |Underweight        |NA             | 0.7603591| 0.7268675| 0.7938507|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight      |NA             | 0.3450694| 0.3254881| 0.3646507|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Underweight        |NA             | 0.3320867| 0.2284041| 0.4357693|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Normal weight      |NA             | 0.4530499| 0.4429263| 0.4631736|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Underweight        |NA             | 0.5704042| 0.5262174| 0.6145911|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Normal weight      |NA             | 0.4242034| 0.4152195| 0.4331874|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Underweight        |NA             | 0.3950537| 0.3848000| 0.4053074|
|0-6 months  |LCNI-5         |MALAWI                       |Normal weight      |NA             | 0.3595818| 0.2964588| 0.4227048|
|0-6 months  |LCNI-5         |MALAWI                       |Underweight        |NA             | 0.3143808| 0.1765649| 0.4521967|
|0-6 months  |MAL-ED         |BANGLADESH                   |Normal weight      |NA             | 0.3409987| 0.2786504| 0.4033471|
|0-6 months  |MAL-ED         |BANGLADESH                   |Underweight        |NA             | 0.4535901| 0.2731074| 0.6340729|
|0-6 months  |MAL-ED         |INDIA                        |Normal weight      |NA             | 0.3369201| 0.2699288| 0.4039114|
|0-6 months  |MAL-ED         |INDIA                        |Underweight        |NA             | 0.3835942| 0.2449844| 0.5222039|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Normal weight      |NA             | 0.4132231| 0.3510620| 0.4753843|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Underweight        |NA             | 0.5714286| 0.3116959| 0.8311612|
|0-6 months  |NIH-Birth      |BANGLADESH                   |Normal weight      |NA             | 0.3260264| 0.2858236| 0.3662292|
|0-6 months  |NIH-Birth      |BANGLADESH                   |Underweight        |NA             | 0.4618595| 0.3671009| 0.5566182|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Normal weight      |NA             | 0.2971238| 0.2626830| 0.3315646|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Underweight        |NA             | 0.3866316| 0.2544033| 0.5188600|
|0-6 months  |PROBIT         |BELARUS                      |Normal weight      |NA             | 0.0642823| 0.0535448| 0.0750199|
|0-6 months  |PROBIT         |BELARUS                      |Underweight        |NA             | 0.0953432| 0.0641483| 0.1265381|
|0-6 months  |PROVIDE        |BANGLADESH                   |Normal weight      |NA             | 0.2368087| 0.2010360| 0.2725814|
|0-6 months  |PROVIDE        |BANGLADESH                   |Underweight        |NA             | 0.2986932| 0.2173144| 0.3800721|
|0-6 months  |SAS-CompFeed   |INDIA                        |Normal weight      |NA             | 0.3994343| 0.3612456| 0.4376230|
|0-6 months  |SAS-CompFeed   |INDIA                        |Underweight        |NA             | 0.5008667| 0.4505542| 0.5511793|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight      |NA             | 0.1920243| 0.1758027| 0.2082459|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Underweight        |NA             | 0.2368421| 0.1492053| 0.3244789|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Normal weight      |NA             | 0.2821866| 0.2730295| 0.2913436|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Underweight        |NA             | 0.3706333| 0.3268079| 0.4144587|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |Normal weight      |NA             | 0.3472210| 0.2944613| 0.3999807|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |Underweight        |NA             | 0.4211982| 0.3206546| 0.5217417|
|6-24 months |JiVitA-3       |BANGLADESH                   |Normal weight      |NA             | 0.2292085| 0.2168975| 0.2415195|
|6-24 months |JiVitA-3       |BANGLADESH                   |Underweight        |NA             | 0.1975328| 0.1842906| 0.2107751|
|6-24 months |LCNI-5         |MALAWI                       |Normal weight      |NA             | 0.5820730| 0.5426132| 0.6215327|
|6-24 months |LCNI-5         |MALAWI                       |Underweight        |NA             | 0.6824547| 0.5988259| 0.7660834|
|6-24 months |MAL-ED         |BANGLADESH                   |Normal weight      |NA             | 0.4113475| 0.3298675| 0.4928275|
|6-24 months |MAL-ED         |BANGLADESH                   |Underweight        |NA             | 0.5294118| 0.2913884| 0.7674352|
|6-24 months |MAL-ED         |INDIA                        |Normal weight      |NA             | 0.4334149| 0.3456849| 0.5211449|
|6-24 months |MAL-ED         |INDIA                        |Underweight        |NA             | 0.3583002| 0.1810377| 0.5355627|
|6-24 months |NIH-Birth      |BANGLADESH                   |Normal weight      |NA             | 0.5522554| 0.4954683| 0.6090426|
|6-24 months |NIH-Birth      |BANGLADESH                   |Underweight        |NA             | 0.7518744| 0.6185489| 0.8851998|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Normal weight      |NA             | 0.2567565| 0.2169446| 0.2965683|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Underweight        |NA             | 0.3918843| 0.2424193| 0.5413492|
|6-24 months |PROBIT         |BELARUS                      |Normal weight      |NA             | 0.0671430| 0.0544496| 0.0798364|
|6-24 months |PROBIT         |BELARUS                      |Underweight        |NA             | 0.0686276| 0.0438151| 0.0934401|
|6-24 months |PROVIDE        |BANGLADESH                   |Normal weight      |NA             | 0.2830852| 0.2378278| 0.3283426|
|6-24 months |PROVIDE        |BANGLADESH                   |Underweight        |NA             | 0.3980562| 0.2855208| 0.5105917|
|6-24 months |SAS-CompFeed   |INDIA                        |Normal weight      |NA             | 0.4706689| 0.4158704| 0.5254673|
|6-24 months |SAS-CompFeed   |INDIA                        |Underweight        |NA             | 0.5706759| 0.5297057| 0.6116462|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight      |NA             | 0.2283312| 0.2071921| 0.2494702|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Underweight        |NA             | 0.2083333| 0.1089524| 0.3077142|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Normal weight      |NA             | 0.2576802| 0.2467664| 0.2685941|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Underweight        |NA             | 0.3446570| 0.2913977| 0.3979163|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.3566542| 0.3069876| 0.4063208|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.4955174| 0.4876719| 0.5033630|
|0-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.6356033| 0.6029802| 0.6682264|
|0-24 months |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.6141732| 0.5541901| 0.6741564|
|0-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.6157025| 0.5542897| 0.6771153|
|0-24 months |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.6645469| 0.6276196| 0.7014742|
|0-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.4794702| 0.4438115| 0.5151289|
|0-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.1284965| 0.1123633| 0.1446297|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.4529148| 0.4151667| 0.4906629|
|0-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.6865672| 0.6433613| 0.7297731|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.3454158| 0.3261661| 0.3646654|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.4589062| 0.4490494| 0.4687630|
|0-6 months  |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.4130330| 0.4055721| 0.4204940|
|0-6 months  |LCNI-5         |MALAWI                       |NA                 |NA             | 0.3579336| 0.3007518| 0.4151153|
|0-6 months  |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.3503937| 0.2916054| 0.4091820|
|0-6 months  |MAL-ED         |INDIA                        |NA                 |NA             | 0.3471074| 0.2870050| 0.4072099|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.4218750| 0.3612599| 0.4824901|
|0-6 months  |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.3497615| 0.3124631| 0.3870600|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.3033113| 0.2704998| 0.3361228|
|0-6 months  |PROBIT         |BELARUS                      |NA                 |NA             | 0.0656323| 0.0549927| 0.0762719|
|0-6 months  |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.2481315| 0.2153770| 0.2808861|
|0-6 months  |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.4266382| 0.3925570| 0.4607194|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1927505| 0.1767818| 0.2087193|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.2869086| 0.2779566| 0.2958607|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.3566542| 0.3069876| 0.4063208|
|6-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.2163480| 0.2069669| 0.2257290|
|6-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.5983494| 0.5626894| 0.6340094|
|6-24 months |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.4240506| 0.3467471| 0.5013542|
|6-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.4220779| 0.3438191| 0.5003367|
|6-24 months |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.5739130| 0.5216565| 0.6261696|
|6-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.2628458| 0.2244546| 0.3012371|
|6-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.0673219| 0.0549549| 0.0796890|
|6-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.3004386| 0.2583143| 0.3425629|
|6-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.4939435| 0.4498186| 0.5380683|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.2280255| 0.2072654| 0.2487856|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.2615147| 0.2508057| 0.2722237|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Underweight        |Normal weight  | 1.2058598| 0.9234418| 1.5746500|
|0-24 months |JiVitA-3       |BANGLADESH                   |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |Underweight        |Normal weight  | 0.9299023| 0.9063160| 0.9541024|
|0-24 months |LCNI-5         |MALAWI                       |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |LCNI-5         |MALAWI                       |Underweight        |Normal weight  | 1.0971266| 0.9674768| 1.2441506|
|0-24 months |MAL-ED         |BANGLADESH                   |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |BANGLADESH                   |Underweight        |Normal weight  | 1.1997180| 0.9414164| 1.5288914|
|0-24 months |MAL-ED         |INDIA                        |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |INDIA                        |Underweight        |Normal weight  | 0.9897322| 0.7679120| 1.2756277|
|0-24 months |NIH-Birth      |BANGLADESH                   |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |NIH-Birth      |BANGLADESH                   |Underweight        |Normal weight  | 1.2783291| 1.1414709| 1.4315962|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Underweight        |Normal weight  | 1.4006042| 1.1629179| 1.6868707|
|0-24 months |PROBIT         |BELARUS                      |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |PROBIT         |BELARUS                      |Underweight        |Normal weight  | 1.2456701| 0.9748124| 1.5917874|
|0-24 months |PROVIDE        |BANGLADESH                   |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |PROVIDE        |BANGLADESH                   |Underweight        |Normal weight  | 1.1916487| 0.9769394| 1.4535462|
|0-24 months |SAS-CompFeed   |INDIA                        |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |SAS-CompFeed   |INDIA                        |Underweight        |Normal weight  | 1.1528753| 1.0840953| 1.2260190|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Underweight        |Normal weight  | 0.9623767| 0.7006731| 1.3218273|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Underweight        |Normal weight  | 1.2590316| 1.1615189| 1.3647308|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Underweight        |Normal weight  | 0.9312836| 0.9040754| 0.9593106|
|0-6 months  |LCNI-5         |MALAWI                       |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |LCNI-5         |MALAWI                       |Underweight        |Normal weight  | 0.8742957| 0.5447981| 1.4030759|
|0-6 months  |MAL-ED         |BANGLADESH                   |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |BANGLADESH                   |Underweight        |Normal weight  | 1.3301813| 0.8589784| 2.0598684|
|0-6 months  |MAL-ED         |INDIA                        |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |INDIA                        |Underweight        |Normal weight  | 1.1385315| 0.7535517| 1.7201925|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Underweight        |Normal weight  | 1.3828571| 0.8567351| 2.2320714|
|0-6 months  |NIH-Birth      |BANGLADESH                   |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |NIH-Birth      |BANGLADESH                   |Underweight        |Normal weight  | 1.4166323| 1.1156241| 1.7988560|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Underweight        |Normal weight  | 1.3012474| 0.9065766| 1.8677350|
|0-6 months  |PROBIT         |BELARUS                      |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |PROBIT         |BELARUS                      |Underweight        |Normal weight  | 1.4831943| 1.0764238| 2.0436795|
|0-6 months  |PROVIDE        |BANGLADESH                   |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |PROVIDE        |BANGLADESH                   |Underweight        |Normal weight  | 1.2613269| 0.9241478| 1.7215274|
|0-6 months  |SAS-CompFeed   |INDIA                        |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |SAS-CompFeed   |INDIA                        |Underweight        |Normal weight  | 1.2539404| 1.1150473| 1.4101343|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Underweight        |Normal weight  | 1.2333967| 0.8438583| 1.8027521|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Underweight        |Normal weight  | 1.3134336| 1.1618704| 1.4847679|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |Underweight        |Normal weight  | 1.2130549| 0.9361302| 1.5718991|
|6-24 months |JiVitA-3       |BANGLADESH                   |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |JiVitA-3       |BANGLADESH                   |Underweight        |Normal weight  | 0.8618040| 0.7932082| 0.9363319|
|6-24 months |LCNI-5         |MALAWI                       |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |LCNI-5         |MALAWI                       |Underweight        |Normal weight  | 1.1724555| 1.0192104| 1.3487421|
|6-24 months |MAL-ED         |BANGLADESH                   |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |MAL-ED         |BANGLADESH                   |Underweight        |Normal weight  | 1.2870183| 0.7874368| 2.1035542|
|6-24 months |MAL-ED         |INDIA                        |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |MAL-ED         |INDIA                        |Underweight        |Normal weight  | 0.8266910| 0.4842483| 1.4112966|
|6-24 months |NIH-Birth      |BANGLADESH                   |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |NIH-Birth      |BANGLADESH                   |Underweight        |Normal weight  | 1.3614613| 1.1093065| 1.6709330|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Underweight        |Normal weight  | 1.5262877| 1.0115652| 2.3029205|
|6-24 months |PROBIT         |BELARUS                      |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |PROBIT         |BELARUS                      |Underweight        |Normal weight  | 1.0221114| 0.6872426| 1.5201499|
|6-24 months |PROVIDE        |BANGLADESH                   |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |PROVIDE        |BANGLADESH                   |Underweight        |Normal weight  | 1.4061356| 1.0183559| 1.9415780|
|6-24 months |SAS-CompFeed   |INDIA                        |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |SAS-CompFeed   |INDIA                        |Underweight        |Normal weight  | 1.2124786| 1.0519652| 1.3974839|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Underweight        |Normal weight  | 0.9124174| 0.5612510| 1.4833032|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Normal weight      |Normal weight  | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Underweight        |Normal weight  | 1.3375377| 1.1396526| 1.5697829|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Normal weight      |NA             |  0.0091695| -0.0055606|  0.0238996|
|0-24 months |JiVitA-3       |BANGLADESH                   |Normal weight      |NA             | -0.0137805| -0.0185795| -0.0089815|
|0-24 months |LCNI-5         |MALAWI                       |Normal weight      |NA             |  0.0105037| -0.0041444|  0.0251517|
|0-24 months |MAL-ED         |BANGLADESH                   |Normal weight      |NA             |  0.0150741| -0.0067628|  0.0369110|
|0-24 months |MAL-ED         |INDIA                        |Normal weight      |NA             | -0.0009771| -0.0320597|  0.0301054|
|0-24 months |NIH-Birth      |BANGLADESH                   |Normal weight      |NA             |  0.0263296|  0.0107540|  0.0419052|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Normal weight      |NA             |  0.0100006| -0.0016821|  0.0216832|
|0-24 months |PROBIT         |BELARUS                      |Normal weight      |NA             |  0.0012778| -0.0002210|  0.0027767|
|0-24 months |PROVIDE        |BANGLADESH                   |Normal weight      |NA             |  0.0138174| -0.0048152|  0.0324499|
|0-24 months |SAS-CompFeed   |INDIA                        |Normal weight      |NA             |  0.0270343|  0.0166016|  0.0374671|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight      |NA             |  0.0003464| -0.0021873|  0.0028801|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Normal weight      |NA             |  0.0058563|  0.0034827|  0.0082298|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Normal weight      |NA             | -0.0111704| -0.0157700| -0.0065708|
|0-6 months  |LCNI-5         |MALAWI                       |Normal weight      |NA             | -0.0016482| -0.0278599|  0.0245636|
|0-6 months  |MAL-ED         |BANGLADESH                   |Normal weight      |NA             |  0.0093950| -0.0139586|  0.0327486|
|0-6 months  |MAL-ED         |INDIA                        |Normal weight      |NA             |  0.0101873| -0.0207866|  0.0411612|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Normal weight      |NA             |  0.0086519| -0.0066061|  0.0239098|
|0-6 months  |NIH-Birth      |BANGLADESH                   |Normal weight      |NA             |  0.0237351|  0.0060890|  0.0413813|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Normal weight      |NA             |  0.0061874| -0.0052421|  0.0176170|
|0-6 months  |PROBIT         |BELARUS                      |Normal weight      |NA             |  0.0013500|  0.0001733|  0.0025266|
|0-6 months  |PROVIDE        |BANGLADESH                   |Normal weight      |NA             |  0.0113228| -0.0053655|  0.0280111|
|0-6 months  |SAS-CompFeed   |INDIA                        |Normal weight      |NA             |  0.0272039|  0.0127724|  0.0416355|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight      |NA             |  0.0007263| -0.0015136|  0.0029661|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Normal weight      |NA             |  0.0047221|  0.0024296|  0.0070146|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |Normal weight      |NA             |  0.0094332| -0.0049896|  0.0238560|
|6-24 months |JiVitA-3       |BANGLADESH                   |Normal weight      |NA             | -0.0128605| -0.0198752| -0.0058459|
|6-24 months |LCNI-5         |MALAWI                       |Normal weight      |NA             |  0.0162764|  0.0004104|  0.0321425|
|6-24 months |MAL-ED         |BANGLADESH                   |Normal weight      |NA             |  0.0127031| -0.0149643|  0.0403705|
|6-24 months |MAL-ED         |INDIA                        |Normal weight      |NA             | -0.0113370| -0.0496068|  0.0269328|
|6-24 months |NIH-Birth      |BANGLADESH                   |Normal weight      |NA             |  0.0216576|  0.0011063|  0.0422089|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Normal weight      |NA             |  0.0060894| -0.0061084|  0.0182872|
|6-24 months |PROBIT         |BELARUS                      |Normal weight      |NA             |  0.0001790| -0.0008068|  0.0011648|
|6-24 months |PROVIDE        |BANGLADESH                   |Normal weight      |NA             |  0.0173534| -0.0017097|  0.0364164|
|6-24 months |SAS-CompFeed   |INDIA                        |Normal weight      |NA             |  0.0232746|  0.0084988|  0.0380504|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight      |NA             | -0.0003057| -0.0028487|  0.0022373|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Normal weight      |NA             |  0.0038344|  0.0012768|  0.0063921|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Normal weight      |NA             |  0.0257097| -0.0169801|  0.0666075|
|0-24 months |JiVitA-3       |BANGLADESH                   |Normal weight      |NA             | -0.0278103| -0.0375323| -0.0181794|
|0-24 months |LCNI-5         |MALAWI                       |Normal weight      |NA             |  0.0165255| -0.0068307|  0.0393399|
|0-24 months |MAL-ED         |BANGLADESH                   |Normal weight      |NA             |  0.0245438| -0.0118432|  0.0596222|
|0-24 months |MAL-ED         |INDIA                        |Normal weight      |NA             | -0.0015870| -0.0533642|  0.0476451|
|0-24 months |NIH-Birth      |BANGLADESH                   |Normal weight      |NA             |  0.0396204|  0.0156030|  0.0630518|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Normal weight      |NA             |  0.0208575| -0.0038678|  0.0449739|
|0-24 months |PROBIT         |BELARUS                      |Normal weight      |NA             |  0.0099443| -0.0021181|  0.0218616|
|0-24 months |PROVIDE        |BANGLADESH                   |Normal weight      |NA             |  0.0305076| -0.0115473|  0.0708141|
|0-24 months |SAS-CompFeed   |INDIA                        |Normal weight      |NA             |  0.0393761|  0.0225967|  0.0558675|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight      |NA             |  0.0010028| -0.0063632|  0.0083150|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Normal weight      |NA             |  0.0127613|  0.0075701|  0.0179255|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Normal weight      |NA             | -0.0270448| -0.0382244| -0.0159857|
|0-6 months  |LCNI-5         |MALAWI                       |Normal weight      |NA             | -0.0046048| -0.0805673|  0.0660177|
|0-6 months  |MAL-ED         |BANGLADESH                   |Normal weight      |NA             |  0.0268126| -0.0421346|  0.0911983|
|0-6 months  |MAL-ED         |INDIA                        |Normal weight      |NA             |  0.0293492| -0.0641486|  0.1146322|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Normal weight      |NA             |  0.0205081| -0.0163884|  0.0560652|
|0-6 months  |NIH-Birth      |BANGLADESH                   |Normal weight      |NA             |  0.0678609|  0.0159717|  0.1170140|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Normal weight      |NA             |  0.0203996| -0.0180199|  0.0573692|
|0-6 months  |PROBIT         |BELARUS                      |Normal weight      |NA             |  0.0205686|  0.0020686|  0.0387257|
|0-6 months  |PROVIDE        |BANGLADESH                   |Normal weight      |NA             |  0.0456323| -0.0239156|  0.1104564|
|0-6 months  |SAS-CompFeed   |INDIA                        |Normal weight      |NA             |  0.0637634|  0.0284558|  0.0977879|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight      |NA             |  0.0037679| -0.0079388|  0.0153386|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Normal weight      |NA             |  0.0164585|  0.0084384|  0.0244138|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |Normal weight      |NA             |  0.0264492| -0.0153056|  0.0664868|
|6-24 months |JiVitA-3       |BANGLADESH                   |Normal weight      |NA             | -0.0594437| -0.0921833| -0.0276855|
|6-24 months |LCNI-5         |MALAWI                       |Normal weight      |NA             |  0.0272022|  0.0002208|  0.0534555|
|6-24 months |MAL-ED         |BANGLADESH                   |Normal weight      |NA             |  0.0299566| -0.0376377|  0.0931477|
|6-24 months |MAL-ED         |INDIA                        |Normal weight      |NA             | -0.0268599| -0.1217051|  0.0599657|
|6-24 months |NIH-Birth      |BANGLADESH                   |Normal weight      |NA             |  0.0377367|  0.0009640|  0.0731560|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Normal weight      |NA             |  0.0231671| -0.0243462|  0.0684765|
|6-24 months |PROBIT         |BELARUS                      |Normal weight      |NA             |  0.0026584| -0.0122465|  0.0173438|
|6-24 months |PROVIDE        |BANGLADESH                   |Normal weight      |NA             |  0.0577601| -0.0079451|  0.1191821|
|6-24 months |SAS-CompFeed   |INDIA                        |Normal weight      |NA             |  0.0471200|  0.0137729|  0.0793395|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal weight      |NA             | -0.0013406| -0.0125449|  0.0097397|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Normal weight      |NA             |  0.0146624|  0.0048384|  0.0243895|
