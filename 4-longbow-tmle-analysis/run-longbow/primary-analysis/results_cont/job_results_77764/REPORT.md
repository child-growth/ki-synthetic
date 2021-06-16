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

**Intervention Variable:** gagebrth

**Adjustment Set:**

* sex
* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* brthmon
* W_parity
* impsan
* delta_arm
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* syntype
* agecat
* studyid
* country

## Data Summary

|syntype |agecat    |studyid        |country     |gagebrth          | n_cell|     n|
|:-------|:---------|:--------------|:-----------|:-----------------|------:|-----:|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA       |Full or late term |     57|    89|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA       |Early term        |     23|    89|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA       |Preterm           |      9|    89|
|BC      |Birth     |COHORTS        |INDIA       |Full or late term |    495|  1200|
|BC      |Birth     |COHORTS        |INDIA       |Early term        |    326|  1200|
|BC      |Birth     |COHORTS        |INDIA       |Preterm           |    379|  1200|
|BC      |Birth     |COHORTS        |GUATEMALA   |Full or late term |    237|   411|
|BC      |Birth     |COHORTS        |GUATEMALA   |Early term        |    121|   411|
|BC      |Birth     |COHORTS        |GUATEMALA   |Preterm           |     53|   411|
|BC      |Birth     |COHORTS        |PHILIPPINES |Full or late term |   1191|  3023|
|BC      |Birth     |COHORTS        |PHILIPPINES |Early term        |   1190|  3023|
|BC      |Birth     |COHORTS        |PHILIPPINES |Preterm           |    642|  3023|
|BC      |Birth     |JiVitA-3       |BANGLADESH  |Full or late term |  11070| 21675|
|BC      |Birth     |JiVitA-3       |BANGLADESH  |Early term        |   5639| 21675|
|BC      |Birth     |JiVitA-3       |BANGLADESH  |Preterm           |   4966| 21675|
|BC      |Birth     |Keneba         |GAMBIA      |Full or late term |    466|   978|
|BC      |Birth     |Keneba         |GAMBIA      |Early term        |    380|   978|
|BC      |Birth     |Keneba         |GAMBIA      |Preterm           |    132|   978|
|BC      |Birth     |NIH-Crypto     |BANGLADESH  |Full or late term |    212|   732|
|BC      |Birth     |NIH-Crypto     |BANGLADESH  |Early term        |    219|   732|
|BC      |Birth     |NIH-Crypto     |BANGLADESH  |Preterm           |    301|   732|
|BC      |Birth     |PROBIT         |BELARUS     |Full or late term |   7153| 13893|
|BC      |Birth     |PROBIT         |BELARUS     |Early term        |   6282| 13893|
|BC      |Birth     |PROBIT         |BELARUS     |Preterm           |    458| 13893|
|BC      |Birth     |Vellore Crypto |INDIA       |Full or late term |    231|   375|
|BC      |Birth     |Vellore Crypto |INDIA       |Early term        |     92|   375|
|BC      |Birth     |Vellore Crypto |INDIA       |Preterm           |     52|   375|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA       |Full or late term |    196|   344|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA       |Early term        |    100|   344|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA       |Preterm           |     48|   344|
|BC      |6 months  |COHORTS        |INDIA       |Full or late term |    496|  1204|
|BC      |6 months  |COHORTS        |INDIA       |Early term        |    327|  1204|
|BC      |6 months  |COHORTS        |INDIA       |Preterm           |    381|  1204|
|BC      |6 months  |COHORTS        |GUATEMALA   |Full or late term |    251|   456|
|BC      |6 months  |COHORTS        |GUATEMALA   |Early term        |    133|   456|
|BC      |6 months  |COHORTS        |GUATEMALA   |Preterm           |     72|   456|
|BC      |6 months  |COHORTS        |PHILIPPINES |Full or late term |   1054|  2685|
|BC      |6 months  |COHORTS        |PHILIPPINES |Early term        |   1062|  2685|
|BC      |6 months  |COHORTS        |PHILIPPINES |Preterm           |    569|  2685|
|BC      |6 months  |JiVitA-3       |BANGLADESH  |Full or late term |   8613| 16234|
|BC      |6 months  |JiVitA-3       |BANGLADESH  |Early term        |   4184| 16234|
|BC      |6 months  |JiVitA-3       |BANGLADESH  |Preterm           |   3437| 16234|
|BC      |6 months  |Keneba         |GAMBIA      |Full or late term |    592|  1218|
|BC      |6 months  |Keneba         |GAMBIA      |Early term        |    463|  1218|
|BC      |6 months  |Keneba         |GAMBIA      |Preterm           |    163|  1218|
|BC      |6 months  |NIH-Crypto     |BANGLADESH  |Full or late term |    209|   715|
|BC      |6 months  |NIH-Crypto     |BANGLADESH  |Early term        |    207|   715|
|BC      |6 months  |NIH-Crypto     |BANGLADESH  |Preterm           |    299|   715|
|BC      |6 months  |PROBIT         |BELARUS     |Full or late term |   8041| 15760|
|BC      |6 months  |PROBIT         |BELARUS     |Early term        |   7167| 15760|
|BC      |6 months  |PROBIT         |BELARUS     |Preterm           |    552| 15760|
|BC      |6 months  |TanzaniaChild2 |TANZANIA    |Full or late term |   1175|  1928|
|BC      |6 months  |TanzaniaChild2 |TANZANIA    |Early term        |    450|  1928|
|BC      |6 months  |TanzaniaChild2 |TANZANIA    |Preterm           |    303|  1928|
|BC      |6 months  |Vellore Crypto |INDIA       |Full or late term |    241|   391|
|BC      |6 months  |Vellore Crypto |INDIA       |Early term        |     95|   391|
|BC      |6 months  |Vellore Crypto |INDIA       |Preterm           |     55|   391|
|BC      |24 months |CMC-V-BCS-2002 |INDIA       |Full or late term |    195|   346|
|BC      |24 months |CMC-V-BCS-2002 |INDIA       |Early term        |    102|   346|
|BC      |24 months |CMC-V-BCS-2002 |INDIA       |Preterm           |     49|   346|
|BC      |24 months |COHORTS        |INDIA       |Full or late term |    411|   994|
|BC      |24 months |COHORTS        |INDIA       |Early term        |    272|   994|
|BC      |24 months |COHORTS        |INDIA       |Preterm           |    311|   994|
|BC      |24 months |COHORTS        |GUATEMALA   |Full or late term |    266|   487|
|BC      |24 months |COHORTS        |GUATEMALA   |Early term        |    142|   487|
|BC      |24 months |COHORTS        |GUATEMALA   |Preterm           |     79|   487|
|BC      |24 months |COHORTS        |PHILIPPINES |Full or late term |    953|  2422|
|BC      |24 months |COHORTS        |PHILIPPINES |Early term        |    955|  2422|
|BC      |24 months |COHORTS        |PHILIPPINES |Preterm           |    514|  2422|
|BC      |24 months |JiVitA-3       |BANGLADESH  |Full or late term |   4355|  8346|
|BC      |24 months |JiVitA-3       |BANGLADESH  |Early term        |   2145|  8346|
|BC      |24 months |JiVitA-3       |BANGLADESH  |Preterm           |   1846|  8346|
|BC      |24 months |Keneba         |GAMBIA      |Full or late term |    508|  1031|
|BC      |24 months |Keneba         |GAMBIA      |Early term        |    395|  1031|
|BC      |24 months |Keneba         |GAMBIA      |Preterm           |    128|  1031|
|BC      |24 months |NIH-Crypto     |BANGLADESH  |Full or late term |    150|   514|
|BC      |24 months |NIH-Crypto     |BANGLADESH  |Early term        |    148|   514|
|BC      |24 months |NIH-Crypto     |BANGLADESH  |Preterm           |    216|   514|
|BC      |24 months |PROBIT         |BELARUS     |Full or late term |   2036|  4035|
|BC      |24 months |PROBIT         |BELARUS     |Early term        |   1851|  4035|
|BC      |24 months |PROBIT         |BELARUS     |Preterm           |    148|  4035|
|BC      |24 months |TanzaniaChild2 |TANZANIA    |Full or late term |      3|     6|
|BC      |24 months |TanzaniaChild2 |TANZANIA    |Early term        |      1|     6|
|BC      |24 months |TanzaniaChild2 |TANZANIA    |Preterm           |      2|     6|
|BC      |24 months |Vellore Crypto |INDIA       |Full or late term |    243|   393|
|BC      |24 months |Vellore Crypto |INDIA       |Early term        |     95|   393|
|BC      |24 months |Vellore Crypto |INDIA       |Preterm           |     55|   393|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA       |Full or late term |     58|    92|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA       |Early term        |     23|    92|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA       |Preterm           |     11|    92|
|FULL    |Birth     |COHORTS        |INDIA       |Full or late term |    570|  1293|
|FULL    |Birth     |COHORTS        |INDIA       |Early term        |    438|  1293|
|FULL    |Birth     |COHORTS        |INDIA       |Preterm           |    285|  1293|
|FULL    |Birth     |COHORTS        |GUATEMALA   |Full or late term |    341|   617|
|FULL    |Birth     |COHORTS        |GUATEMALA   |Early term        |    181|   617|
|FULL    |Birth     |COHORTS        |GUATEMALA   |Preterm           |     95|   617|
|FULL    |Birth     |COHORTS        |PHILIPPINES |Full or late term |   1164|  3024|
|FULL    |Birth     |COHORTS        |PHILIPPINES |Early term        |   1211|  3024|
|FULL    |Birth     |COHORTS        |PHILIPPINES |Preterm           |    649|  3024|
|FULL    |Birth     |JiVitA-3       |BANGLADESH  |Full or late term |  10944| 21442|
|FULL    |Birth     |JiVitA-3       |BANGLADESH  |Early term        |   5984| 21442|
|FULL    |Birth     |JiVitA-3       |BANGLADESH  |Preterm           |   4514| 21442|
|FULL    |Birth     |Keneba         |GAMBIA      |Full or late term |    734|  1515|
|FULL    |Birth     |Keneba         |GAMBIA      |Early term        |    546|  1515|
|FULL    |Birth     |Keneba         |GAMBIA      |Preterm           |    235|  1515|
|FULL    |Birth     |NIH-Crypto     |BANGLADESH  |Full or late term |    162|   732|
|FULL    |Birth     |NIH-Crypto     |BANGLADESH  |Early term        |    313|   732|
|FULL    |Birth     |NIH-Crypto     |BANGLADESH  |Preterm           |    257|   732|
|FULL    |Birth     |PROBIT         |BELARUS     |Full or late term |   7100| 13893|
|FULL    |Birth     |PROBIT         |BELARUS     |Early term        |   6321| 13893|
|FULL    |Birth     |PROBIT         |BELARUS     |Preterm           |    472| 13893|
|FULL    |Birth     |Vellore Crypto |INDIA       |Full or late term |    238|   369|
|FULL    |Birth     |Vellore Crypto |INDIA       |Early term        |     95|   369|
|FULL    |Birth     |Vellore Crypto |INDIA       |Preterm           |     36|   369|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA       |Full or late term |    212|   347|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA       |Early term        |     83|   347|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA       |Preterm           |     52|   347|
|FULL    |6 months  |COHORTS        |INDIA       |Full or late term |    568|  1312|
|FULL    |6 months  |COHORTS        |INDIA       |Early term        |    445|  1312|
|FULL    |6 months  |COHORTS        |INDIA       |Preterm           |    299|  1312|
|FULL    |6 months  |COHORTS        |GUATEMALA   |Full or late term |    389|   713|
|FULL    |6 months  |COHORTS        |GUATEMALA   |Early term        |    211|   713|
|FULL    |6 months  |COHORTS        |GUATEMALA   |Preterm           |    113|   713|
|FULL    |6 months  |COHORTS        |PHILIPPINES |Full or late term |   1028|  2687|
|FULL    |6 months  |COHORTS        |PHILIPPINES |Early term        |   1086|  2687|
|FULL    |6 months  |COHORTS        |PHILIPPINES |Preterm           |    573|  2687|
|FULL    |6 months  |JiVitA-3       |BANGLADESH  |Full or late term |   8527| 16010|
|FULL    |6 months  |JiVitA-3       |BANGLADESH  |Early term        |   4438| 16010|
|FULL    |6 months  |JiVitA-3       |BANGLADESH  |Preterm           |   3045| 16010|
|FULL    |6 months  |Keneba         |GAMBIA      |Full or late term |    658|  1374|
|FULL    |6 months  |Keneba         |GAMBIA      |Early term        |    509|  1374|
|FULL    |6 months  |Keneba         |GAMBIA      |Preterm           |    207|  1374|
|FULL    |6 months  |NIH-Crypto     |BANGLADESH  |Full or late term |    155|   715|
|FULL    |6 months  |NIH-Crypto     |BANGLADESH  |Early term        |    309|   715|
|FULL    |6 months  |NIH-Crypto     |BANGLADESH  |Preterm           |    251|   715|
|FULL    |6 months  |PROBIT         |BELARUS     |Full or late term |   8007| 15760|
|FULL    |6 months  |PROBIT         |BELARUS     |Early term        |   7202| 15760|
|FULL    |6 months  |PROBIT         |BELARUS     |Preterm           |    551| 15760|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA    |Full or late term |   1167|  1903|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA    |Early term        |    445|  1903|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA    |Preterm           |    291|  1903|
|FULL    |6 months  |Vellore Crypto |INDIA       |Full or late term |    249|   388|
|FULL    |6 months  |Vellore Crypto |INDIA       |Early term        |     97|   388|
|FULL    |6 months  |Vellore Crypto |INDIA       |Preterm           |     42|   388|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA       |Full or late term |    213|   349|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA       |Early term        |     84|   349|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA       |Preterm           |     52|   349|
|FULL    |24 months |COHORTS        |INDIA       |Full or late term |    565|  1308|
|FULL    |24 months |COHORTS        |INDIA       |Early term        |    438|  1308|
|FULL    |24 months |COHORTS        |INDIA       |Preterm           |    305|  1308|
|FULL    |24 months |COHORTS        |GUATEMALA   |Full or late term |    375|   661|
|FULL    |24 months |COHORTS        |GUATEMALA   |Early term        |    179|   661|
|FULL    |24 months |COHORTS        |GUATEMALA   |Preterm           |    107|   661|
|FULL    |24 months |COHORTS        |PHILIPPINES |Full or late term |    938|  2424|
|FULL    |24 months |COHORTS        |PHILIPPINES |Early term        |    973|  2424|
|FULL    |24 months |COHORTS        |PHILIPPINES |Preterm           |    513|  2424|
|FULL    |24 months |JiVitA-3       |BANGLADESH  |Full or late term |   4327|  8202|
|FULL    |24 months |JiVitA-3       |BANGLADESH  |Early term        |   2271|  8202|
|FULL    |24 months |JiVitA-3       |BANGLADESH  |Preterm           |   1604|  8202|
|FULL    |24 months |Keneba         |GAMBIA      |Full or late term |    557|  1156|
|FULL    |24 months |Keneba         |GAMBIA      |Early term        |    432|  1156|
|FULL    |24 months |Keneba         |GAMBIA      |Preterm           |    167|  1156|
|FULL    |24 months |NIH-Crypto     |BANGLADESH  |Full or late term |     79|   514|
|FULL    |24 months |NIH-Crypto     |BANGLADESH  |Early term        |    227|   514|
|FULL    |24 months |NIH-Crypto     |BANGLADESH  |Preterm           |    208|   514|
|FULL    |24 months |PROBIT         |BELARUS     |Full or late term |   2025|  4035|
|FULL    |24 months |PROBIT         |BELARUS     |Early term        |   1873|  4035|
|FULL    |24 months |PROBIT         |BELARUS     |Preterm           |    137|  4035|
|FULL    |24 months |TanzaniaChild2 |TANZANIA    |Full or late term |      5|     6|
|FULL    |24 months |TanzaniaChild2 |TANZANIA    |Early term        |      1|     6|
|FULL    |24 months |TanzaniaChild2 |TANZANIA    |Preterm           |      0|     6|
|FULL    |24 months |Vellore Crypto |INDIA       |Full or late term |    250|   390|
|FULL    |24 months |Vellore Crypto |INDIA       |Early term        |     98|   390|
|FULL    |24 months |Vellore Crypto |INDIA       |Preterm           |     42|   390|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA       |Full or late term |    209|   345|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA       |Early term        |     85|   345|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA       |Preterm           |     51|   345|
|QI      |Birth     |COHORTS        |INDIA       |Full or late term |    617|  1288|
|QI      |Birth     |COHORTS        |INDIA       |Early term        |    312|  1288|
|QI      |Birth     |COHORTS        |INDIA       |Preterm           |    359|  1288|
|QI      |Birth     |COHORTS        |GUATEMALA   |Full or late term |    186|   379|
|QI      |Birth     |COHORTS        |GUATEMALA   |Early term        |    118|   379|
|QI      |Birth     |COHORTS        |GUATEMALA   |Preterm           |     75|   379|
|QI      |Birth     |COHORTS        |PHILIPPINES |Full or late term |   1149|  3030|
|QI      |Birth     |COHORTS        |PHILIPPINES |Early term        |   1151|  3030|
|QI      |Birth     |COHORTS        |PHILIPPINES |Preterm           |    730|  3030|
|QI      |Birth     |JiVitA-3       |BANGLADESH  |Full or late term |   5450| 10996|
|QI      |Birth     |JiVitA-3       |BANGLADESH  |Early term        |   2900| 10996|
|QI      |Birth     |JiVitA-3       |BANGLADESH  |Preterm           |   2646| 10996|
|QI      |Birth     |Keneba         |GAMBIA      |Full or late term |    850|  1690|
|QI      |Birth     |Keneba         |GAMBIA      |Early term        |    600|  1690|
|QI      |Birth     |Keneba         |GAMBIA      |Preterm           |    240|  1690|
|QI      |Birth     |NIH-Crypto     |BANGLADESH  |Full or late term |    205|   753|
|QI      |Birth     |NIH-Crypto     |BANGLADESH  |Early term        |    219|   753|
|QI      |Birth     |NIH-Crypto     |BANGLADESH  |Preterm           |    329|   753|
|QI      |Birth     |PROBIT         |BELARUS     |Full or late term |   3086|  6759|
|QI      |Birth     |PROBIT         |BELARUS     |Early term        |   3443|  6759|
|QI      |Birth     |PROBIT         |BELARUS     |Preterm           |    230|  6759|
|QI      |Birth     |TanzaniaChild2 |TANZANIA    |Full or late term |   1334|  2235|
|QI      |Birth     |TanzaniaChild2 |TANZANIA    |Early term        |    528|  2235|
|QI      |Birth     |TanzaniaChild2 |TANZANIA    |Preterm           |    373|  2235|
|QI      |Birth     |Vellore Crypto |INDIA       |Full or late term |    256|   386|
|QI      |Birth     |Vellore Crypto |INDIA       |Early term        |     83|   386|
|QI      |Birth     |Vellore Crypto |INDIA       |Preterm           |     47|   386|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA       |Full or late term |    197|   329|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA       |Early term        |     85|   329|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA       |Preterm           |     47|   329|
|QI      |6 months  |COHORTS        |INDIA       |Full or late term |    372|   807|
|QI      |6 months  |COHORTS        |INDIA       |Early term        |    186|   807|
|QI      |6 months  |COHORTS        |INDIA       |Preterm           |    249|   807|
|QI      |6 months  |COHORTS        |GUATEMALA   |Full or late term |    127|   259|
|QI      |6 months  |COHORTS        |GUATEMALA   |Early term        |     81|   259|
|QI      |6 months  |COHORTS        |GUATEMALA   |Preterm           |     51|   259|
|QI      |6 months  |COHORTS        |PHILIPPINES |Full or late term |    901|  2374|
|QI      |6 months  |COHORTS        |PHILIPPINES |Early term        |    929|  2374|
|QI      |6 months  |COHORTS        |PHILIPPINES |Preterm           |    544|  2374|
|QI      |6 months  |JiVitA-3       |BANGLADESH  |Full or late term |   2469|  4703|
|QI      |6 months  |JiVitA-3       |BANGLADESH  |Early term        |   1230|  4703|
|QI      |6 months  |JiVitA-3       |BANGLADESH  |Preterm           |   1004|  4703|
|QI      |6 months  |Keneba         |GAMBIA      |Full or late term |    694|  1375|
|QI      |6 months  |Keneba         |GAMBIA      |Early term        |    482|  1375|
|QI      |6 months  |Keneba         |GAMBIA      |Preterm           |    199|  1375|
|QI      |6 months  |NIH-Crypto     |BANGLADESH  |Full or late term |    151|   537|
|QI      |6 months  |NIH-Crypto     |BANGLADESH  |Early term        |    159|   537|
|QI      |6 months  |NIH-Crypto     |BANGLADESH  |Preterm           |    227|   537|
|QI      |6 months  |PROBIT         |BELARUS     |Full or late term |   2389|  5179|
|QI      |6 months  |PROBIT         |BELARUS     |Early term        |   2620|  5179|
|QI      |6 months  |PROBIT         |BELARUS     |Preterm           |    170|  5179|
|QI      |6 months  |TanzaniaChild2 |TANZANIA    |Full or late term |   1073|  1820|
|QI      |6 months  |TanzaniaChild2 |TANZANIA    |Early term        |    444|  1820|
|QI      |6 months  |TanzaniaChild2 |TANZANIA    |Preterm           |    303|  1820|
|QI      |6 months  |Vellore Crypto |INDIA       |Full or late term |    240|   364|
|QI      |6 months  |Vellore Crypto |INDIA       |Early term        |     77|   364|
|QI      |6 months  |Vellore Crypto |INDIA       |Preterm           |     47|   364|
|QI      |24 months |CMC-V-BCS-2002 |INDIA       |Full or late term |     91|   137|
|QI      |24 months |CMC-V-BCS-2002 |INDIA       |Early term        |     32|   137|
|QI      |24 months |CMC-V-BCS-2002 |INDIA       |Preterm           |     14|   137|
|QI      |24 months |COHORTS        |GUATEMALA   |Full or late term |      4|    18|
|QI      |24 months |COHORTS        |GUATEMALA   |Early term        |      9|    18|
|QI      |24 months |COHORTS        |GUATEMALA   |Preterm           |      5|    18|
|QI      |24 months |COHORTS        |PHILIPPINES |Full or late term |    107|   292|
|QI      |24 months |COHORTS        |PHILIPPINES |Early term        |    117|   292|
|QI      |24 months |COHORTS        |PHILIPPINES |Preterm           |     68|   292|
|QI      |24 months |JiVitA-3       |BANGLADESH  |Full or late term |      4|     6|
|QI      |24 months |JiVitA-3       |BANGLADESH  |Early term        |      1|     6|
|QI      |24 months |JiVitA-3       |BANGLADESH  |Preterm           |      1|     6|
|QI      |24 months |Keneba         |GAMBIA      |Full or late term |    141|   244|
|QI      |24 months |Keneba         |GAMBIA      |Early term        |     68|   244|
|QI      |24 months |Keneba         |GAMBIA      |Preterm           |     35|   244|
|QI      |24 months |NIH-Crypto     |BANGLADESH  |Full or late term |     11|    47|
|QI      |24 months |NIH-Crypto     |BANGLADESH  |Early term        |     11|    47|
|QI      |24 months |NIH-Crypto     |BANGLADESH  |Preterm           |     25|    47|
|QI      |24 months |PROBIT         |BELARUS     |Full or late term |     46|   143|
|QI      |24 months |PROBIT         |BELARUS     |Early term        |     90|   143|
|QI      |24 months |PROBIT         |BELARUS     |Preterm           |      7|   143|
|QI      |24 months |TanzaniaChild2 |TANZANIA    |Full or late term |     33|    50|
|QI      |24 months |TanzaniaChild2 |TANZANIA    |Early term        |     10|    50|
|QI      |24 months |TanzaniaChild2 |TANZANIA    |Preterm           |      7|    50|
|QI      |24 months |Vellore Crypto |INDIA       |Full or late term |    108|   153|
|QI      |24 months |Vellore Crypto |INDIA       |Early term        |     26|   153|
|QI      |24 months |Vellore Crypto |INDIA       |Preterm           |     19|   153|


The following strata were considered:

* syntype: BC, agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: BC, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: BC, agecat: 24 months, studyid: COHORTS, country: INDIA
* syntype: BC, agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* syntype: BC, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: Keneba, country: GAMBIA
* syntype: BC, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: BC, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: BC, agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* syntype: BC, agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: BC, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: BC, agecat: 6 months, studyid: COHORTS, country: INDIA
* syntype: BC, agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* syntype: BC, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: Keneba, country: GAMBIA
* syntype: BC, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: PROBIT, country: BELARUS
* syntype: BC, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: BC, agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* syntype: BC, agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: BC, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: BC, agecat: Birth, studyid: COHORTS, country: INDIA
* syntype: BC, agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* syntype: BC, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: Keneba, country: GAMBIA
* syntype: BC, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: PROBIT, country: BELARUS
* syntype: BC, agecat: Birth, studyid: Vellore Crypto, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: FULL, agecat: 24 months, studyid: COHORTS, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* syntype: FULL, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: Keneba, country: GAMBIA
* syntype: FULL, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: FULL, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: FULL, agecat: 6 months, studyid: COHORTS, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* syntype: FULL, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: Keneba, country: GAMBIA
* syntype: FULL, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: PROBIT, country: BELARUS
* syntype: FULL, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* syntype: FULL, agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: FULL, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: FULL, agecat: Birth, studyid: COHORTS, country: INDIA
* syntype: FULL, agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* syntype: FULL, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: Keneba, country: GAMBIA
* syntype: FULL, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: PROBIT, country: BELARUS
* syntype: FULL, agecat: Birth, studyid: Vellore Crypto, country: INDIA
* syntype: QI, agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: QI, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: Keneba, country: GAMBIA
* syntype: QI, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* syntype: QI, agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: INDIA
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: Keneba, country: GAMBIA
* syntype: QI, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* syntype: QI, agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: QI, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: Birth, studyid: COHORTS, country: INDIA
* syntype: QI, agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: Keneba, country: GAMBIA
* syntype: QI, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: Birth, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: Birth, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* syntype: BC, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


