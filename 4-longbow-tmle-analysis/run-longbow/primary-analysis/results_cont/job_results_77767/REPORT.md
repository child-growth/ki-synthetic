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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** enstunt

**Adjustment Set:**

* sex
* arm
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_arm
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* syntype
* agecat
* studyid
* country

## Data Summary

|syntype |agecat    |studyid        |country      |enstunt | n_cell|     n|
|:-------|:---------|:--------------|:------------|:-------|------:|-----:|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA        |0       |     75|    92|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA        |1       |     17|    92|
|BC      |Birth     |CMIN           |BANGLADESH   |0       |     17|    26|
|BC      |Birth     |CMIN           |BANGLADESH   |1       |      9|    26|
|BC      |Birth     |COHORTS        |INDIA        |0       |   5848|  6640|
|BC      |Birth     |COHORTS        |INDIA        |1       |    792|  6640|
|BC      |Birth     |COHORTS        |GUATEMALA    |0       |    802|   852|
|BC      |Birth     |COHORTS        |GUATEMALA    |1       |     50|   852|
|BC      |Birth     |COHORTS        |PHILIPPINES  |0       |   2863|  3050|
|BC      |Birth     |COHORTS        |PHILIPPINES  |1       |    187|  3050|
|BC      |Birth     |CONTENT        |PERU         |0       |      2|     2|
|BC      |Birth     |CONTENT        |PERU         |1       |      0|     2|
|BC      |Birth     |EE             |PAKISTAN     |0       |    140|   240|
|BC      |Birth     |EE             |PAKISTAN     |1       |    100|   240|
|BC      |Birth     |GMS-Nepal      |NEPAL        |0       |    574|   696|
|BC      |Birth     |GMS-Nepal      |NEPAL        |1       |    122|   696|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |0       |  15068| 22455|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |1       |   7387| 22455|
|BC      |Birth     |JiVitA-4       |BANGLADESH   |0       |   1966|  2823|
|BC      |Birth     |JiVitA-4       |BANGLADESH   |1       |    857|  2823|
|BC      |Birth     |Keneba         |GAMBIA       |0       |   1460|  1543|
|BC      |Birth     |Keneba         |GAMBIA       |1       |     83|  1543|
|BC      |Birth     |MAL-ED         |INDIA        |0       |     37|    47|
|BC      |Birth     |MAL-ED         |INDIA        |1       |     10|    47|
|BC      |Birth     |MAL-ED         |BANGLADESH   |0       |    187|   231|
|BC      |Birth     |MAL-ED         |BANGLADESH   |1       |     44|   231|
|BC      |Birth     |MAL-ED         |PERU         |0       |    207|   233|
|BC      |Birth     |MAL-ED         |PERU         |1       |     26|   233|
|BC      |Birth     |MAL-ED         |NEPAL        |0       |     25|    27|
|BC      |Birth     |MAL-ED         |NEPAL        |1       |      2|    27|
|BC      |Birth     |MAL-ED         |BRAZIL       |0       |     56|    65|
|BC      |Birth     |MAL-ED         |BRAZIL       |1       |      9|    65|
|BC      |Birth     |MAL-ED         |TANZANIA     |0       |    102|   125|
|BC      |Birth     |MAL-ED         |TANZANIA     |1       |     23|   125|
|BC      |Birth     |MAL-ED         |SOUTH AFRICA |0       |    113|   123|
|BC      |Birth     |MAL-ED         |SOUTH AFRICA |1       |     10|   123|
|BC      |Birth     |NIH-Birth      |BANGLADESH   |0       |    511|   608|
|BC      |Birth     |NIH-Birth      |BANGLADESH   |1       |     97|   608|
|BC      |Birth     |NIH-Crypto     |BANGLADESH   |0       |    631|   732|
|BC      |Birth     |NIH-Crypto     |BANGLADESH   |1       |    101|   732|
|BC      |Birth     |PROBIT         |BELARUS      |0       |  13859| 13893|
|BC      |Birth     |PROBIT         |BELARUS      |1       |     34| 13893|
|BC      |Birth     |PROVIDE        |BANGLADESH   |0       |    491|   539|
|BC      |Birth     |PROVIDE        |BANGLADESH   |1       |     48|   539|
|BC      |Birth     |ResPak         |PAKISTAN     |0       |     28|    42|
|BC      |Birth     |ResPak         |PAKISTAN     |1       |     14|    42|
|BC      |Birth     |SAS-CompFeed   |INDIA        |0       |    903|  1252|
|BC      |Birth     |SAS-CompFeed   |INDIA        |1       |    349|  1252|
|BC      |Birth     |Vellore Crypto |INDIA        |0       |    343|   388|
|BC      |Birth     |Vellore Crypto |INDIA        |1       |     45|   388|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE     |0       |  12441| 13875|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE     |1       |   1434| 13875|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA        |0       |    294|   369|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA        |1       |     75|   369|
|BC      |6 months  |CMIN           |BANGLADESH   |0       |    151|   243|
|BC      |6 months  |CMIN           |BANGLADESH   |1       |     92|   243|
|BC      |6 months  |COHORTS        |INDIA        |0       |   6048|  6860|
|BC      |6 months  |COHORTS        |INDIA        |1       |    812|  6860|
|BC      |6 months  |COHORTS        |GUATEMALA    |0       |    809|   961|
|BC      |6 months  |COHORTS        |GUATEMALA    |1       |    152|   961|
|BC      |6 months  |COHORTS        |PHILIPPINES  |0       |   2552|  2708|
|BC      |6 months  |COHORTS        |PHILIPPINES  |1       |    156|  2708|
|BC      |6 months  |CONTENT        |PERU         |0       |    195|   215|
|BC      |6 months  |CONTENT        |PERU         |1       |     20|   215|
|BC      |6 months  |EE             |PAKISTAN     |0       |    209|   373|
|BC      |6 months  |EE             |PAKISTAN     |1       |    164|   373|
|BC      |6 months  |GMS-Nepal      |NEPAL        |0       |    473|   564|
|BC      |6 months  |GMS-Nepal      |NEPAL        |1       |     91|   564|
|BC      |6 months  |Guatemala BSC  |GUATEMALA    |0       |    228|   299|
|BC      |6 months  |Guatemala BSC  |GUATEMALA    |1       |     71|   299|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |0       |  11707| 16811|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |1       |   5104| 16811|
|BC      |6 months  |JiVitA-4       |BANGLADESH   |0       |   3475|  4831|
|BC      |6 months  |JiVitA-4       |BANGLADESH   |1       |   1356|  4831|
|BC      |6 months  |Keneba         |GAMBIA       |0       |   1892|  2089|
|BC      |6 months  |Keneba         |GAMBIA       |1       |    197|  2089|
|BC      |6 months  |LCNI-5         |MALAWI       |0       |    530|   839|
|BC      |6 months  |LCNI-5         |MALAWI       |1       |    309|   839|
|BC      |6 months  |MAL-ED         |INDIA        |0       |    198|   236|
|BC      |6 months  |MAL-ED         |INDIA        |1       |     38|   236|
|BC      |6 months  |MAL-ED         |BANGLADESH   |0       |    202|   241|
|BC      |6 months  |MAL-ED         |BANGLADESH   |1       |     39|   241|
|BC      |6 months  |MAL-ED         |PERU         |0       |    239|   273|
|BC      |6 months  |MAL-ED         |PERU         |1       |     34|   273|
|BC      |6 months  |MAL-ED         |NEPAL        |0       |    208|   236|
|BC      |6 months  |MAL-ED         |NEPAL        |1       |     28|   236|
|BC      |6 months  |MAL-ED         |BRAZIL       |0       |    184|   209|
|BC      |6 months  |MAL-ED         |BRAZIL       |1       |     25|   209|
|BC      |6 months  |MAL-ED         |TANZANIA     |0       |    208|   247|
|BC      |6 months  |MAL-ED         |TANZANIA     |1       |     39|   247|
|BC      |6 months  |MAL-ED         |SOUTH AFRICA |0       |    227|   254|
|BC      |6 months  |MAL-ED         |SOUTH AFRICA |1       |     27|   254|
|BC      |6 months  |NIH-Birth      |BANGLADESH   |0       |    452|   537|
|BC      |6 months  |NIH-Birth      |BANGLADESH   |1       |     85|   537|
|BC      |6 months  |NIH-Crypto     |BANGLADESH   |0       |    613|   715|
|BC      |6 months  |NIH-Crypto     |BANGLADESH   |1       |    102|   715|
|BC      |6 months  |PROBIT         |BELARUS      |0       |  15644| 15760|
|BC      |6 months  |PROBIT         |BELARUS      |1       |    116| 15760|
|BC      |6 months  |PROVIDE        |BANGLADESH   |0       |    543|   604|
|BC      |6 months  |PROVIDE        |BANGLADESH   |1       |     61|   604|
|BC      |6 months  |ResPak         |PAKISTAN     |0       |    173|   239|
|BC      |6 months  |ResPak         |PAKISTAN     |1       |     66|   239|
|BC      |6 months  |SAS-CompFeed   |INDIA        |0       |    972|  1336|
|BC      |6 months  |SAS-CompFeed   |INDIA        |1       |    364|  1336|
|BC      |6 months  |SAS-FoodSuppl  |INDIA        |0       |    232|   380|
|BC      |6 months  |SAS-FoodSuppl  |INDIA        |1       |    148|   380|
|BC      |6 months  |TanzaniaChild2 |TANZANIA     |0       |   1890|  2029|
|BC      |6 months  |TanzaniaChild2 |TANZANIA     |1       |    139|  2029|
|BC      |6 months  |Vellore Crypto |INDIA        |0       |    358|   407|
|BC      |6 months  |Vellore Crypto |INDIA        |1       |     49|   407|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE     |0       |   7795|  8669|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE     |1       |    874|  8669|
|BC      |24 months |CMC-V-BCS-2002 |INDIA        |0       |    294|   371|
|BC      |24 months |CMC-V-BCS-2002 |INDIA        |1       |     77|   371|
|BC      |24 months |CMIN           |BANGLADESH   |0       |    153|   242|
|BC      |24 months |CMIN           |BANGLADESH   |1       |     89|   242|
|BC      |24 months |COHORTS        |INDIA        |0       |   4696|  5337|
|BC      |24 months |COHORTS        |INDIA        |1       |    641|  5337|
|BC      |24 months |COHORTS        |GUATEMALA    |0       |    740|  1070|
|BC      |24 months |COHORTS        |GUATEMALA    |1       |    330|  1070|
|BC      |24 months |COHORTS        |PHILIPPINES  |0       |   2310|  2445|
|BC      |24 months |COHORTS        |PHILIPPINES  |1       |    135|  2445|
|BC      |24 months |CONTENT        |PERU         |0       |    147|   164|
|BC      |24 months |CONTENT        |PERU         |1       |     17|   164|
|BC      |24 months |EE             |PAKISTAN     |0       |    100|   167|
|BC      |24 months |EE             |PAKISTAN     |1       |     67|   167|
|BC      |24 months |GMS-Nepal      |NEPAL        |0       |    406|   488|
|BC      |24 months |GMS-Nepal      |NEPAL        |1       |     82|   488|
|BC      |24 months |JiVitA-3       |BANGLADESH   |0       |   5942|  8632|
|BC      |24 months |JiVitA-3       |BANGLADESH   |1       |   2690|  8632|
|BC      |24 months |JiVitA-4       |BANGLADESH   |0       |   3396|  4752|
|BC      |24 months |JiVitA-4       |BANGLADESH   |1       |   1356|  4752|
|BC      |24 months |Keneba         |GAMBIA       |0       |   1549|  1725|
|BC      |24 months |Keneba         |GAMBIA       |1       |    176|  1725|
|BC      |24 months |LCNI-5         |MALAWI       |0       |    377|   579|
|BC      |24 months |LCNI-5         |MALAWI       |1       |    202|   579|
|BC      |24 months |MAL-ED         |INDIA        |0       |    191|   227|
|BC      |24 months |MAL-ED         |INDIA        |1       |     36|   227|
|BC      |24 months |MAL-ED         |BANGLADESH   |0       |    179|   212|
|BC      |24 months |MAL-ED         |BANGLADESH   |1       |     33|   212|
|BC      |24 months |MAL-ED         |PERU         |0       |    174|   201|
|BC      |24 months |MAL-ED         |PERU         |1       |     27|   201|
|BC      |24 months |MAL-ED         |NEPAL        |0       |    201|   228|
|BC      |24 months |MAL-ED         |NEPAL        |1       |     27|   228|
|BC      |24 months |MAL-ED         |BRAZIL       |0       |    150|   169|
|BC      |24 months |MAL-ED         |BRAZIL       |1       |     19|   169|
|BC      |24 months |MAL-ED         |TANZANIA     |0       |    181|   214|
|BC      |24 months |MAL-ED         |TANZANIA     |1       |     33|   214|
|BC      |24 months |MAL-ED         |SOUTH AFRICA |0       |    214|   238|
|BC      |24 months |MAL-ED         |SOUTH AFRICA |1       |     24|   238|
|BC      |24 months |NIH-Birth      |BANGLADESH   |0       |    355|   429|
|BC      |24 months |NIH-Birth      |BANGLADESH   |1       |     74|   429|
|BC      |24 months |NIH-Crypto     |BANGLADESH   |0       |    444|   514|
|BC      |24 months |NIH-Crypto     |BANGLADESH   |1       |     70|   514|
|BC      |24 months |PROBIT         |BELARUS      |0       |   4022|  4035|
|BC      |24 months |PROBIT         |BELARUS      |1       |     13|  4035|
|BC      |24 months |PROVIDE        |BANGLADESH   |0       |    518|   578|
|BC      |24 months |PROVIDE        |BANGLADESH   |1       |     60|   578|
|BC      |24 months |TanzaniaChild2 |TANZANIA     |0       |      6|     6|
|BC      |24 months |TanzaniaChild2 |TANZANIA     |1       |      0|     6|
|BC      |24 months |Vellore Crypto |INDIA        |0       |    358|   409|
|BC      |24 months |Vellore Crypto |INDIA        |1       |     51|   409|
|BC      |24 months |ZVITAMBO       |ZIMBABWE     |0       |   1406|  1640|
|BC      |24 months |ZVITAMBO       |ZIMBABWE     |1       |    234|  1640|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA        |0       |     75|    92|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA        |1       |     17|    92|
|FULL    |Birth     |CMIN           |BANGLADESH   |0       |     17|    26|
|FULL    |Birth     |CMIN           |BANGLADESH   |1       |      9|    26|
|FULL    |Birth     |COHORTS        |INDIA        |0       |   5848|  6640|
|FULL    |Birth     |COHORTS        |INDIA        |1       |    792|  6640|
|FULL    |Birth     |COHORTS        |GUATEMALA    |0       |    802|   852|
|FULL    |Birth     |COHORTS        |GUATEMALA    |1       |     50|   852|
|FULL    |Birth     |COHORTS        |PHILIPPINES  |0       |   2863|  3050|
|FULL    |Birth     |COHORTS        |PHILIPPINES  |1       |    187|  3050|
|FULL    |Birth     |CONTENT        |PERU         |0       |      2|     2|
|FULL    |Birth     |CONTENT        |PERU         |1       |      0|     2|
|FULL    |Birth     |EE             |PAKISTAN     |0       |    140|   240|
|FULL    |Birth     |EE             |PAKISTAN     |1       |    100|   240|
|FULL    |Birth     |GMS-Nepal      |NEPAL        |0       |    574|   696|
|FULL    |Birth     |GMS-Nepal      |NEPAL        |1       |    122|   696|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |0       |  15068| 22455|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |1       |   7387| 22455|
|FULL    |Birth     |JiVitA-4       |BANGLADESH   |0       |   1966|  2823|
|FULL    |Birth     |JiVitA-4       |BANGLADESH   |1       |    857|  2823|
|FULL    |Birth     |Keneba         |GAMBIA       |0       |   1460|  1543|
|FULL    |Birth     |Keneba         |GAMBIA       |1       |     83|  1543|
|FULL    |Birth     |MAL-ED         |INDIA        |0       |     37|    47|
|FULL    |Birth     |MAL-ED         |INDIA        |1       |     10|    47|
|FULL    |Birth     |MAL-ED         |BANGLADESH   |0       |    187|   231|
|FULL    |Birth     |MAL-ED         |BANGLADESH   |1       |     44|   231|
|FULL    |Birth     |MAL-ED         |PERU         |0       |    207|   233|
|FULL    |Birth     |MAL-ED         |PERU         |1       |     26|   233|
|FULL    |Birth     |MAL-ED         |NEPAL        |0       |     25|    27|
|FULL    |Birth     |MAL-ED         |NEPAL        |1       |      2|    27|
|FULL    |Birth     |MAL-ED         |BRAZIL       |0       |     56|    65|
|FULL    |Birth     |MAL-ED         |BRAZIL       |1       |      9|    65|
|FULL    |Birth     |MAL-ED         |TANZANIA     |0       |    102|   125|
|FULL    |Birth     |MAL-ED         |TANZANIA     |1       |     23|   125|
|FULL    |Birth     |MAL-ED         |SOUTH AFRICA |0       |    113|   123|
|FULL    |Birth     |MAL-ED         |SOUTH AFRICA |1       |     10|   123|
|FULL    |Birth     |NIH-Birth      |BANGLADESH   |0       |    511|   608|
|FULL    |Birth     |NIH-Birth      |BANGLADESH   |1       |     97|   608|
|FULL    |Birth     |NIH-Crypto     |BANGLADESH   |0       |    631|   732|
|FULL    |Birth     |NIH-Crypto     |BANGLADESH   |1       |    101|   732|
|FULL    |Birth     |PROBIT         |BELARUS      |0       |  13859| 13893|
|FULL    |Birth     |PROBIT         |BELARUS      |1       |     34| 13893|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |0       |    491|   539|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |1       |     48|   539|
|FULL    |Birth     |ResPak         |PAKISTAN     |0       |     28|    42|
|FULL    |Birth     |ResPak         |PAKISTAN     |1       |     14|    42|
|FULL    |Birth     |SAS-CompFeed   |INDIA        |0       |    903|  1252|
|FULL    |Birth     |SAS-CompFeed   |INDIA        |1       |    349|  1252|
|FULL    |Birth     |Vellore Crypto |INDIA        |0       |    343|   388|
|FULL    |Birth     |Vellore Crypto |INDIA        |1       |     45|   388|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE     |0       |  12441| 13875|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE     |1       |   1434| 13875|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA        |0       |    294|   369|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA        |1       |     75|   369|
|FULL    |6 months  |CMIN           |BANGLADESH   |0       |    151|   243|
|FULL    |6 months  |CMIN           |BANGLADESH   |1       |     92|   243|
|FULL    |6 months  |COHORTS        |INDIA        |0       |   6048|  6860|
|FULL    |6 months  |COHORTS        |INDIA        |1       |    812|  6860|
|FULL    |6 months  |COHORTS        |GUATEMALA    |0       |    809|   961|
|FULL    |6 months  |COHORTS        |GUATEMALA    |1       |    152|   961|
|FULL    |6 months  |COHORTS        |PHILIPPINES  |0       |   2552|  2708|
|FULL    |6 months  |COHORTS        |PHILIPPINES  |1       |    156|  2708|
|FULL    |6 months  |CONTENT        |PERU         |0       |    195|   215|
|FULL    |6 months  |CONTENT        |PERU         |1       |     20|   215|
|FULL    |6 months  |EE             |PAKISTAN     |0       |    209|   373|
|FULL    |6 months  |EE             |PAKISTAN     |1       |    164|   373|
|FULL    |6 months  |GMS-Nepal      |NEPAL        |0       |    473|   564|
|FULL    |6 months  |GMS-Nepal      |NEPAL        |1       |     91|   564|
|FULL    |6 months  |Guatemala BSC  |GUATEMALA    |0       |    228|   299|
|FULL    |6 months  |Guatemala BSC  |GUATEMALA    |1       |     71|   299|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |0       |  11707| 16811|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |1       |   5104| 16811|
|FULL    |6 months  |JiVitA-4       |BANGLADESH   |0       |   3475|  4831|
|FULL    |6 months  |JiVitA-4       |BANGLADESH   |1       |   1356|  4831|
|FULL    |6 months  |Keneba         |GAMBIA       |0       |   1892|  2089|
|FULL    |6 months  |Keneba         |GAMBIA       |1       |    197|  2089|
|FULL    |6 months  |LCNI-5         |MALAWI       |0       |    530|   839|
|FULL    |6 months  |LCNI-5         |MALAWI       |1       |    309|   839|
|FULL    |6 months  |MAL-ED         |INDIA        |0       |    198|   236|
|FULL    |6 months  |MAL-ED         |INDIA        |1       |     38|   236|
|FULL    |6 months  |MAL-ED         |BANGLADESH   |0       |    202|   241|
|FULL    |6 months  |MAL-ED         |BANGLADESH   |1       |     39|   241|
|FULL    |6 months  |MAL-ED         |PERU         |0       |    239|   273|
|FULL    |6 months  |MAL-ED         |PERU         |1       |     34|   273|
|FULL    |6 months  |MAL-ED         |NEPAL        |0       |    208|   236|
|FULL    |6 months  |MAL-ED         |NEPAL        |1       |     28|   236|
|FULL    |6 months  |MAL-ED         |BRAZIL       |0       |    184|   209|
|FULL    |6 months  |MAL-ED         |BRAZIL       |1       |     25|   209|
|FULL    |6 months  |MAL-ED         |TANZANIA     |0       |    208|   247|
|FULL    |6 months  |MAL-ED         |TANZANIA     |1       |     39|   247|
|FULL    |6 months  |MAL-ED         |SOUTH AFRICA |0       |    227|   254|
|FULL    |6 months  |MAL-ED         |SOUTH AFRICA |1       |     27|   254|
|FULL    |6 months  |NIH-Birth      |BANGLADESH   |0       |    452|   537|
|FULL    |6 months  |NIH-Birth      |BANGLADESH   |1       |     85|   537|
|FULL    |6 months  |NIH-Crypto     |BANGLADESH   |0       |    613|   715|
|FULL    |6 months  |NIH-Crypto     |BANGLADESH   |1       |    102|   715|
|FULL    |6 months  |PROBIT         |BELARUS      |0       |  15644| 15760|
|FULL    |6 months  |PROBIT         |BELARUS      |1       |    116| 15760|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |0       |    543|   604|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |1       |     61|   604|
|FULL    |6 months  |ResPak         |PAKISTAN     |0       |    173|   239|
|FULL    |6 months  |ResPak         |PAKISTAN     |1       |     66|   239|
|FULL    |6 months  |SAS-CompFeed   |INDIA        |0       |    972|  1336|
|FULL    |6 months  |SAS-CompFeed   |INDIA        |1       |    364|  1336|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA        |0       |    232|   380|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA        |1       |    148|   380|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA     |0       |   1890|  2029|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA     |1       |    139|  2029|
|FULL    |6 months  |Vellore Crypto |INDIA        |0       |    358|   407|
|FULL    |6 months  |Vellore Crypto |INDIA        |1       |     49|   407|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE     |0       |   7795|  8669|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE     |1       |    874|  8669|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA        |0       |    294|   371|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA        |1       |     77|   371|
|FULL    |24 months |CMIN           |BANGLADESH   |0       |    153|   242|
|FULL    |24 months |CMIN           |BANGLADESH   |1       |     89|   242|
|FULL    |24 months |COHORTS        |INDIA        |0       |   4696|  5337|
|FULL    |24 months |COHORTS        |INDIA        |1       |    641|  5337|
|FULL    |24 months |COHORTS        |GUATEMALA    |0       |    740|  1070|
|FULL    |24 months |COHORTS        |GUATEMALA    |1       |    330|  1070|
|FULL    |24 months |COHORTS        |PHILIPPINES  |0       |   2310|  2445|
|FULL    |24 months |COHORTS        |PHILIPPINES  |1       |    135|  2445|
|FULL    |24 months |CONTENT        |PERU         |0       |    147|   164|
|FULL    |24 months |CONTENT        |PERU         |1       |     17|   164|
|FULL    |24 months |EE             |PAKISTAN     |0       |    100|   167|
|FULL    |24 months |EE             |PAKISTAN     |1       |     67|   167|
|FULL    |24 months |GMS-Nepal      |NEPAL        |0       |    406|   488|
|FULL    |24 months |GMS-Nepal      |NEPAL        |1       |     82|   488|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |0       |   5942|  8632|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |1       |   2690|  8632|
|FULL    |24 months |JiVitA-4       |BANGLADESH   |0       |   3396|  4752|
|FULL    |24 months |JiVitA-4       |BANGLADESH   |1       |   1356|  4752|
|FULL    |24 months |Keneba         |GAMBIA       |0       |   1549|  1725|
|FULL    |24 months |Keneba         |GAMBIA       |1       |    176|  1725|
|FULL    |24 months |LCNI-5         |MALAWI       |0       |    377|   579|
|FULL    |24 months |LCNI-5         |MALAWI       |1       |    202|   579|
|FULL    |24 months |MAL-ED         |INDIA        |0       |    191|   227|
|FULL    |24 months |MAL-ED         |INDIA        |1       |     36|   227|
|FULL    |24 months |MAL-ED         |BANGLADESH   |0       |    179|   212|
|FULL    |24 months |MAL-ED         |BANGLADESH   |1       |     33|   212|
|FULL    |24 months |MAL-ED         |PERU         |0       |    174|   201|
|FULL    |24 months |MAL-ED         |PERU         |1       |     27|   201|
|FULL    |24 months |MAL-ED         |NEPAL        |0       |    201|   228|
|FULL    |24 months |MAL-ED         |NEPAL        |1       |     27|   228|
|FULL    |24 months |MAL-ED         |BRAZIL       |0       |    150|   169|
|FULL    |24 months |MAL-ED         |BRAZIL       |1       |     19|   169|
|FULL    |24 months |MAL-ED         |TANZANIA     |0       |    181|   214|
|FULL    |24 months |MAL-ED         |TANZANIA     |1       |     33|   214|
|FULL    |24 months |MAL-ED         |SOUTH AFRICA |0       |    214|   238|
|FULL    |24 months |MAL-ED         |SOUTH AFRICA |1       |     24|   238|
|FULL    |24 months |NIH-Birth      |BANGLADESH   |0       |    355|   429|
|FULL    |24 months |NIH-Birth      |BANGLADESH   |1       |     74|   429|
|FULL    |24 months |NIH-Crypto     |BANGLADESH   |0       |    444|   514|
|FULL    |24 months |NIH-Crypto     |BANGLADESH   |1       |     70|   514|
|FULL    |24 months |PROBIT         |BELARUS      |0       |   4022|  4035|
|FULL    |24 months |PROBIT         |BELARUS      |1       |     13|  4035|
|FULL    |24 months |PROVIDE        |BANGLADESH   |0       |    518|   578|
|FULL    |24 months |PROVIDE        |BANGLADESH   |1       |     60|   578|
|FULL    |24 months |TanzaniaChild2 |TANZANIA     |0       |      6|     6|
|FULL    |24 months |TanzaniaChild2 |TANZANIA     |1       |      0|     6|
|FULL    |24 months |Vellore Crypto |INDIA        |0       |    358|   409|
|FULL    |24 months |Vellore Crypto |INDIA        |1       |     51|   409|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE     |0       |   1406|  1640|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE     |1       |    234|  1640|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA        |0       |    297|   363|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA        |1       |     66|   363|
|QI      |Birth     |CMIN           |BANGLADESH   |0       |     12|    20|
|QI      |Birth     |CMIN           |BANGLADESH   |1       |      8|    20|
|QI      |Birth     |COHORTS        |INDIA        |0       |   5899|  6772|
|QI      |Birth     |COHORTS        |INDIA        |1       |    873|  6772|
|QI      |Birth     |COHORTS        |GUATEMALA    |0       |    495|   571|
|QI      |Birth     |COHORTS        |GUATEMALA    |1       |     76|   571|
|QI      |Birth     |COHORTS        |PHILIPPINES  |0       |   2878|  3061|
|QI      |Birth     |COHORTS        |PHILIPPINES  |1       |    183|  3061|
|QI      |Birth     |CONTENT        |PERU         |0       |      3|     3|
|QI      |Birth     |CONTENT        |PERU         |1       |      0|     3|
|QI      |Birth     |EE             |PAKISTAN     |0       |    216|   378|
|QI      |Birth     |EE             |PAKISTAN     |1       |    162|   378|
|QI      |Birth     |GMS-Nepal      |NEPAL        |0       |    581|   697|
|QI      |Birth     |GMS-Nepal      |NEPAL        |1       |    116|   697|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |0       |   7218| 11315|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |1       |   4097| 11315|
|QI      |Birth     |JiVitA-4       |BANGLADESH   |0       |    527|   730|
|QI      |Birth     |JiVitA-4       |BANGLADESH   |1       |    203|   730|
|QI      |Birth     |Keneba         |GAMBIA       |0       |   1916|  2135|
|QI      |Birth     |Keneba         |GAMBIA       |1       |    219|  2135|
|QI      |Birth     |MAL-ED         |INDIA        |0       |    206|   244|
|QI      |Birth     |MAL-ED         |INDIA        |1       |     38|   244|
|QI      |Birth     |MAL-ED         |BANGLADESH   |0       |    209|   262|
|QI      |Birth     |MAL-ED         |BANGLADESH   |1       |     53|   262|
|QI      |Birth     |MAL-ED         |PERU         |0       |    255|   302|
|QI      |Birth     |MAL-ED         |PERU         |1       |     47|   302|
|QI      |Birth     |MAL-ED         |NEPAL        |0       |    200|   236|
|QI      |Birth     |MAL-ED         |NEPAL        |1       |     36|   236|
|QI      |Birth     |MAL-ED         |BRAZIL       |0       |    208|   233|
|QI      |Birth     |MAL-ED         |BRAZIL       |1       |     25|   233|
|QI      |Birth     |MAL-ED         |TANZANIA     |0       |    178|   208|
|QI      |Birth     |MAL-ED         |TANZANIA     |1       |     30|   208|
|QI      |Birth     |MAL-ED         |SOUTH AFRICA |0       |    283|   314|
|QI      |Birth     |MAL-ED         |SOUTH AFRICA |1       |     31|   314|
|QI      |Birth     |NIH-Birth      |BANGLADESH   |0       |    499|   612|
|QI      |Birth     |NIH-Birth      |BANGLADESH   |1       |    113|   612|
|QI      |Birth     |NIH-Crypto     |BANGLADESH   |0       |    624|   753|
|QI      |Birth     |NIH-Crypto     |BANGLADESH   |1       |    129|   753|
|QI      |Birth     |PROBIT         |BELARUS      |0       |   6753|  6759|
|QI      |Birth     |PROBIT         |BELARUS      |1       |      6|  6759|
|QI      |Birth     |PROVIDE        |BANGLADESH   |0       |    456|   531|
|QI      |Birth     |PROVIDE        |BANGLADESH   |1       |     75|   531|
|QI      |Birth     |ResPak         |PAKISTAN     |0       |     30|    42|
|QI      |Birth     |ResPak         |PAKISTAN     |1       |     12|    42|
|QI      |Birth     |SAS-CompFeed   |INDIA        |0       |    265|   394|
|QI      |Birth     |SAS-CompFeed   |INDIA        |1       |    129|   394|
|QI      |Birth     |TanzaniaChild2 |TANZANIA     |0       |   2166|  2375|
|QI      |Birth     |TanzaniaChild2 |TANZANIA     |1       |    209|  2375|
|QI      |Birth     |Vellore Crypto |INDIA        |0       |    364|   405|
|QI      |Birth     |Vellore Crypto |INDIA        |1       |     41|   405|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE     |0       |  12243| 12988|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE     |1       |    745| 12988|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA        |0       |    284|   347|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA        |1       |     63|   347|
|QI      |6 months  |CMIN           |BANGLADESH   |0       |    146|   231|
|QI      |6 months  |CMIN           |BANGLADESH   |1       |     85|   231|
|QI      |6 months  |COHORTS        |INDIA        |0       |   3775|  4348|
|QI      |6 months  |COHORTS        |INDIA        |1       |    573|  4348|
|QI      |6 months  |COHORTS        |GUATEMALA    |0       |    344|   407|
|QI      |6 months  |COHORTS        |GUATEMALA    |1       |     63|   407|
|QI      |6 months  |COHORTS        |PHILIPPINES  |0       |   2267|  2401|
|QI      |6 months  |COHORTS        |PHILIPPINES  |1       |    134|  2401|
|QI      |6 months  |CONTENT        |PERU         |0       |    185|   207|
|QI      |6 months  |CONTENT        |PERU         |1       |     22|   207|
|QI      |6 months  |EE             |PAKISTAN     |0       |    196|   343|
|QI      |6 months  |EE             |PAKISTAN     |1       |    147|   343|
|QI      |6 months  |GMS-Nepal      |NEPAL        |0       |    463|   552|
|QI      |6 months  |GMS-Nepal      |NEPAL        |1       |     89|   552|
|QI      |6 months  |Guatemala BSC  |GUATEMALA    |0       |    187|   258|
|QI      |6 months  |Guatemala BSC  |GUATEMALA    |1       |     71|   258|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |0       |   3217|  4851|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |1       |   1634|  4851|
|QI      |6 months  |JiVitA-4       |BANGLADESH   |0       |    622|   843|
|QI      |6 months  |JiVitA-4       |BANGLADESH   |1       |    221|   843|
|QI      |6 months  |Keneba         |GAMBIA       |0       |   1899|  2130|
|QI      |6 months  |Keneba         |GAMBIA       |1       |    231|  2130|
|QI      |6 months  |LCNI-5         |MALAWI       |0       |    521|   840|
|QI      |6 months  |LCNI-5         |MALAWI       |1       |    319|   840|
|QI      |6 months  |MAL-ED         |INDIA        |0       |    199|   236|
|QI      |6 months  |MAL-ED         |INDIA        |1       |     37|   236|
|QI      |6 months  |MAL-ED         |BANGLADESH   |0       |    201|   249|
|QI      |6 months  |MAL-ED         |BANGLADESH   |1       |     48|   249|
|QI      |6 months  |MAL-ED         |PERU         |0       |    232|   269|
|QI      |6 months  |MAL-ED         |PERU         |1       |     37|   269|
|QI      |6 months  |MAL-ED         |NEPAL        |0       |    190|   222|
|QI      |6 months  |MAL-ED         |NEPAL        |1       |     32|   222|
|QI      |6 months  |MAL-ED         |BRAZIL       |0       |    193|   215|
|QI      |6 months  |MAL-ED         |BRAZIL       |1       |     22|   215|
|QI      |6 months  |MAL-ED         |TANZANIA     |0       |    210|   243|
|QI      |6 months  |MAL-ED         |TANZANIA     |1       |     33|   243|
|QI      |6 months  |MAL-ED         |SOUTH AFRICA |0       |    258|   285|
|QI      |6 months  |MAL-ED         |SOUTH AFRICA |1       |     27|   285|
|QI      |6 months  |NIH-Birth      |BANGLADESH   |0       |    323|   391|
|QI      |6 months  |NIH-Birth      |BANGLADESH   |1       |     68|   391|
|QI      |6 months  |NIH-Crypto     |BANGLADESH   |0       |    447|   537|
|QI      |6 months  |NIH-Crypto     |BANGLADESH   |1       |     90|   537|
|QI      |6 months  |PROBIT         |BELARUS      |0       |   5163|  5179|
|QI      |6 months  |PROBIT         |BELARUS      |1       |     16|  5179|
|QI      |6 months  |PROVIDE        |BANGLADESH   |0       |    533|   611|
|QI      |6 months  |PROVIDE        |BANGLADESH   |1       |     78|   611|
|QI      |6 months  |ResPak         |PAKISTAN     |0       |    150|   209|
|QI      |6 months  |ResPak         |PAKISTAN     |1       |     59|   209|
|QI      |6 months  |SAS-CompFeed   |INDIA        |0       |    195|   272|
|QI      |6 months  |SAS-CompFeed   |INDIA        |1       |     77|   272|
|QI      |6 months  |SAS-FoodSuppl  |INDIA        |0       |    145|   253|
|QI      |6 months  |SAS-FoodSuppl  |INDIA        |1       |    108|   253|
|QI      |6 months  |TanzaniaChild2 |TANZANIA     |0       |   1758|  1939|
|QI      |6 months  |TanzaniaChild2 |TANZANIA     |1       |    181|  1939|
|QI      |6 months  |Vellore Crypto |INDIA        |0       |    339|   383|
|QI      |6 months  |Vellore Crypto |INDIA        |1       |     44|   383|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE     |0       |   5655|  6305|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE     |1       |    650|  6305|
|QI      |24 months |CMC-V-BCS-2002 |INDIA        |0       |    117|   145|
|QI      |24 months |CMC-V-BCS-2002 |INDIA        |1       |     28|   145|
|QI      |24 months |CMIN           |BANGLADESH   |0       |     51|    86|
|QI      |24 months |CMIN           |BANGLADESH   |1       |     35|    86|
|QI      |24 months |COHORTS        |GUATEMALA    |0       |     23|    31|
|QI      |24 months |COHORTS        |GUATEMALA    |1       |      8|    31|
|QI      |24 months |COHORTS        |PHILIPPINES  |0       |    283|   294|
|QI      |24 months |COHORTS        |PHILIPPINES  |1       |     11|   294|
|QI      |24 months |CONTENT        |PERU         |0       |     87|   104|
|QI      |24 months |CONTENT        |PERU         |1       |     17|   104|
|QI      |24 months |EE             |PAKISTAN     |0       |     64|   113|
|QI      |24 months |EE             |PAKISTAN     |1       |     49|   113|
|QI      |24 months |GMS-Nepal      |NEPAL        |0       |    157|   193|
|QI      |24 months |GMS-Nepal      |NEPAL        |1       |     36|   193|
|QI      |24 months |Guatemala BSC  |GUATEMALA    |0       |      2|     3|
|QI      |24 months |Guatemala BSC  |GUATEMALA    |1       |      1|     3|
|QI      |24 months |iLiNS-Zinc     |BURKINA FASO |0       |     16|    19|
|QI      |24 months |iLiNS-Zinc     |BURKINA FASO |1       |      3|    19|
|QI      |24 months |JiVitA-3       |BANGLADESH   |0       |      3|     6|
|QI      |24 months |JiVitA-3       |BANGLADESH   |1       |      3|     6|
|QI      |24 months |JiVitA-4       |BANGLADESH   |0       |     45|    58|
|QI      |24 months |JiVitA-4       |BANGLADESH   |1       |     13|    58|
|QI      |24 months |Keneba         |GAMBIA       |0       |    366|   408|
|QI      |24 months |Keneba         |GAMBIA       |1       |     42|   408|
|QI      |24 months |LCNI-5         |MALAWI       |0       |     47|    84|
|QI      |24 months |LCNI-5         |MALAWI       |1       |     37|    84|
|QI      |24 months |MAL-ED         |INDIA        |0       |     90|   102|
|QI      |24 months |MAL-ED         |INDIA        |1       |     12|   102|
|QI      |24 months |MAL-ED         |BANGLADESH   |0       |     84|    97|
|QI      |24 months |MAL-ED         |BANGLADESH   |1       |     13|    97|
|QI      |24 months |MAL-ED         |PERU         |0       |     52|    67|
|QI      |24 months |MAL-ED         |PERU         |1       |     15|    67|
|QI      |24 months |MAL-ED         |NEPAL        |0       |     87|   100|
|QI      |24 months |MAL-ED         |NEPAL        |1       |     13|   100|
|QI      |24 months |MAL-ED         |BRAZIL       |0       |     64|    71|
|QI      |24 months |MAL-ED         |BRAZIL       |1       |      7|    71|
|QI      |24 months |MAL-ED         |TANZANIA     |0       |     71|    80|
|QI      |24 months |MAL-ED         |TANZANIA     |1       |      9|    80|
|QI      |24 months |MAL-ED         |SOUTH AFRICA |0       |     81|    89|
|QI      |24 months |MAL-ED         |SOUTH AFRICA |1       |      8|    89|
|QI      |24 months |NIH-Birth      |BANGLADESH   |0       |     26|    32|
|QI      |24 months |NIH-Birth      |BANGLADESH   |1       |      6|    32|
|QI      |24 months |NIH-Crypto     |BANGLADESH   |0       |     38|    47|
|QI      |24 months |NIH-Crypto     |BANGLADESH   |1       |      9|    47|
|QI      |24 months |PROBIT         |BELARUS      |0       |    143|   143|
|QI      |24 months |PROBIT         |BELARUS      |1       |      0|   143|
|QI      |24 months |PROVIDE        |BANGLADESH   |0       |     47|    55|
|QI      |24 months |PROVIDE        |BANGLADESH   |1       |      8|    55|
|QI      |24 months |ResPak         |PAKISTAN     |0       |      3|     3|
|QI      |24 months |ResPak         |PAKISTAN     |1       |      0|     3|
|QI      |24 months |SAS-CompFeed   |INDIA        |0       |      3|     3|
|QI      |24 months |SAS-CompFeed   |INDIA        |1       |      0|     3|
|QI      |24 months |SAS-FoodSuppl  |INDIA        |0       |      1|     6|
|QI      |24 months |SAS-FoodSuppl  |INDIA        |1       |      5|     6|
|QI      |24 months |TanzaniaChild2 |TANZANIA     |0       |     49|    54|
|QI      |24 months |TanzaniaChild2 |TANZANIA     |1       |      5|    54|
|QI      |24 months |Vellore Crypto |INDIA        |0       |    145|   161|
|QI      |24 months |Vellore Crypto |INDIA        |1       |     16|   161|
|QI      |24 months |ZVITAMBO       |ZIMBABWE     |0       |    129|   152|
|QI      |24 months |ZVITAMBO       |ZIMBABWE     |1       |     23|   152|


The following strata were considered:

* syntype: BC, agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: BC, agecat: 24 months, studyid: CMIN, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: BC, agecat: 24 months, studyid: COHORTS, country: INDIA
* syntype: BC, agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* syntype: BC, agecat: 24 months, studyid: CONTENT, country: PERU
* syntype: BC, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* syntype: BC, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: Keneba, country: GAMBIA
* syntype: BC, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: BC, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: BC, agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* syntype: BC, agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: BC, agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: BC, agecat: 6 months, studyid: CMIN, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: BC, agecat: 6 months, studyid: COHORTS, country: INDIA
* syntype: BC, agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* syntype: BC, agecat: 6 months, studyid: CONTENT, country: PERU
* syntype: BC, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* syntype: BC, agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* syntype: BC, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: Keneba, country: GAMBIA
* syntype: BC, agecat: 6 months, studyid: LCNI-5, country: MALAWI
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: PROBIT, country: BELARUS
* syntype: BC, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: ResPak, country: PAKISTAN
* syntype: BC, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: BC, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: BC, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: BC, agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* syntype: BC, agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: BC, agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: BC, agecat: Birth, studyid: CMIN, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: BC, agecat: Birth, studyid: COHORTS, country: INDIA
* syntype: BC, agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* syntype: BC, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: BC, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* syntype: BC, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: Keneba, country: GAMBIA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: PROBIT, country: BELARUS
* syntype: BC, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: ResPak, country: PAKISTAN
* syntype: BC, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: BC, agecat: Birth, studyid: Vellore Crypto, country: INDIA
* syntype: BC, agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: FULL, agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: CMIN, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: FULL, agecat: 24 months, studyid: COHORTS, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* syntype: FULL, agecat: 24 months, studyid: CONTENT, country: PERU
* syntype: FULL, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* syntype: FULL, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: Keneba, country: GAMBIA
* syntype: FULL, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: FULL, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: FULL, agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: CMIN, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: FULL, agecat: 6 months, studyid: COHORTS, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* syntype: FULL, agecat: 6 months, studyid: CONTENT, country: PERU
* syntype: FULL, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* syntype: FULL, agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* syntype: FULL, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: Keneba, country: GAMBIA
* syntype: FULL, agecat: 6 months, studyid: LCNI-5, country: MALAWI
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: PROBIT, country: BELARUS
* syntype: FULL, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: ResPak, country: PAKISTAN
* syntype: FULL, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: FULL, agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: FULL, agecat: Birth, studyid: CMIN, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: FULL, agecat: Birth, studyid: COHORTS, country: INDIA
* syntype: FULL, agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* syntype: FULL, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: FULL, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* syntype: FULL, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: Keneba, country: GAMBIA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: PROBIT, country: BELARUS
* syntype: FULL, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: ResPak, country: PAKISTAN
* syntype: FULL, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: FULL, agecat: Birth, studyid: Vellore Crypto, country: INDIA
* syntype: FULL, agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: QI, agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: QI, agecat: 24 months, studyid: CMIN, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: 24 months, studyid: CONTENT, country: PERU
* syntype: QI, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* syntype: QI, agecat: 24 months, studyid: Guatemala BSC, country: GUATEMALA
* syntype: QI, agecat: 24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* syntype: QI, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: Keneba, country: GAMBIA
* syntype: QI, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: ResPak, country: PAKISTAN
* syntype: QI, agecat: 24 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 24 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: QI, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* syntype: QI, agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: QI, agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: QI, agecat: 6 months, studyid: CMIN, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: INDIA
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: 6 months, studyid: CONTENT, country: PERU
* syntype: QI, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* syntype: QI, agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* syntype: QI, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: Keneba, country: GAMBIA
* syntype: QI, agecat: 6 months, studyid: LCNI-5, country: MALAWI
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: ResPak, country: PAKISTAN
* syntype: QI, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: QI, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* syntype: QI, agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: QI, agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: QI, agecat: Birth, studyid: CMIN, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: Birth, studyid: COHORTS, country: INDIA
* syntype: QI, agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: QI, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* syntype: QI, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: Keneba, country: GAMBIA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: ResPak, country: PAKISTAN
* syntype: QI, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: Birth, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: Birth, studyid: Vellore Crypto, country: INDIA
* syntype: QI, agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* syntype: BC, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: QI, agecat: 24 months, studyid: Guatemala BSC, country: GUATEMALA
* syntype: QI, agecat: 24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* syntype: QI, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: 24 months, studyid: ResPak, country: PAKISTAN
* syntype: QI, agecat: 24 months, studyid: SAS-CompFeed, country: INDIA
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


