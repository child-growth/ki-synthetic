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

**Intervention Variable:** mbmi

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* brthmon
* W_parity
* delta_arm
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
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

|syntype |agecat    |studyid        |country      |mbmi          | n_cell|     n|
|:-------|:---------|:--------------|:------------|:-------------|------:|-----:|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |Normal weight |  13419| 22234|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |Underweight   |   8815| 22234|
|BC      |Birth     |MAL-ED         |INDIA        |Normal weight |     38|    45|
|BC      |Birth     |MAL-ED         |INDIA        |Underweight   |      7|    45|
|BC      |Birth     |MAL-ED         |BANGLADESH   |Normal weight |    188|   216|
|BC      |Birth     |MAL-ED         |BANGLADESH   |Underweight   |     28|   216|
|BC      |Birth     |MAL-ED         |PERU         |Normal weight |    219|   223|
|BC      |Birth     |MAL-ED         |PERU         |Underweight   |      4|   223|
|BC      |Birth     |MAL-ED         |NEPAL        |Normal weight |     27|    27|
|BC      |Birth     |MAL-ED         |NEPAL        |Underweight   |      0|    27|
|BC      |Birth     |MAL-ED         |BRAZIL       |Normal weight |     57|    63|
|BC      |Birth     |MAL-ED         |BRAZIL       |Underweight   |      6|    63|
|BC      |Birth     |MAL-ED         |TANZANIA     |Normal weight |    108|   118|
|BC      |Birth     |MAL-ED         |TANZANIA     |Underweight   |     10|   118|
|BC      |Birth     |MAL-ED         |SOUTH AFRICA |Normal weight |     94|    99|
|BC      |Birth     |MAL-ED         |SOUTH AFRICA |Underweight   |      5|    99|
|BC      |Birth     |NIH-Birth      |BANGLADESH   |Normal weight |    518|   608|
|BC      |Birth     |NIH-Birth      |BANGLADESH   |Underweight   |     90|   608|
|BC      |Birth     |NIH-Crypto     |BANGLADESH   |Normal weight |    679|   728|
|BC      |Birth     |NIH-Crypto     |BANGLADESH   |Underweight   |     49|   728|
|BC      |Birth     |PROBIT         |BELARUS      |Normal weight |  13172| 13713|
|BC      |Birth     |PROBIT         |BELARUS      |Underweight   |    541| 13713|
|BC      |Birth     |PROVIDE        |BANGLADESH   |Normal weight |    416|   516|
|BC      |Birth     |PROVIDE        |BANGLADESH   |Underweight   |    100|   516|
|BC      |Birth     |SAS-CompFeed   |INDIA        |Normal weight |    802|  1139|
|BC      |Birth     |SAS-CompFeed   |INDIA        |Underweight   |    337|  1139|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE     |Normal weight |   8953|  9475|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE     |Underweight   |    522|  9475|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |Normal weight |  10085| 16687|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |Underweight   |   6602| 16687|
|BC      |6 months  |LCNI-5         |MALAWI       |Normal weight |    674|   835|
|BC      |6 months  |LCNI-5         |MALAWI       |Underweight   |    161|   835|
|BC      |6 months  |MAL-ED         |INDIA        |Normal weight |    179|   227|
|BC      |6 months  |MAL-ED         |INDIA        |Underweight   |     48|   227|
|BC      |6 months  |MAL-ED         |BANGLADESH   |Normal weight |    196|   228|
|BC      |6 months  |MAL-ED         |BANGLADESH   |Underweight   |     32|   228|
|BC      |6 months  |MAL-ED         |PERU         |Normal weight |    257|   261|
|BC      |6 months  |MAL-ED         |PERU         |Underweight   |      4|   261|
|BC      |6 months  |MAL-ED         |NEPAL        |Normal weight |    232|   234|
|BC      |6 months  |MAL-ED         |NEPAL        |Underweight   |      2|   234|
|BC      |6 months  |MAL-ED         |BRAZIL       |Normal weight |    183|   198|
|BC      |6 months  |MAL-ED         |BRAZIL       |Underweight   |     15|   198|
|BC      |6 months  |MAL-ED         |TANZANIA     |Normal weight |    221|   240|
|BC      |6 months  |MAL-ED         |TANZANIA     |Underweight   |     19|   240|
|BC      |6 months  |MAL-ED         |SOUTH AFRICA |Normal weight |    222|   233|
|BC      |6 months  |MAL-ED         |SOUTH AFRICA |Underweight   |     11|   233|
|BC      |6 months  |NIH-Birth      |BANGLADESH   |Normal weight |    454|   537|
|BC      |6 months  |NIH-Birth      |BANGLADESH   |Underweight   |     83|   537|
|BC      |6 months  |NIH-Crypto     |BANGLADESH   |Normal weight |    660|   711|
|BC      |6 months  |NIH-Crypto     |BANGLADESH   |Underweight   |     51|   711|
|BC      |6 months  |PROBIT         |BELARUS      |Normal weight |  12548| 13077|
|BC      |6 months  |PROBIT         |BELARUS      |Underweight   |    529| 13077|
|BC      |6 months  |PROVIDE        |BANGLADESH   |Normal weight |    480|   587|
|BC      |6 months  |PROVIDE        |BANGLADESH   |Underweight   |    107|   587|
|BC      |6 months  |SAS-CompFeed   |INDIA        |Normal weight |    872|  1226|
|BC      |6 months  |SAS-CompFeed   |INDIA        |Underweight   |    354|  1226|
|BC      |6 months  |TanzaniaChild2 |TANZANIA     |Normal weight |   1949|  1994|
|BC      |6 months  |TanzaniaChild2 |TANZANIA     |Underweight   |     45|  1994|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE     |Normal weight |   6865|  7243|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE     |Underweight   |    378|  7243|
|BC      |24 months |JiVitA-3       |BANGLADESH   |Normal weight |   5168|  8572|
|BC      |24 months |JiVitA-3       |BANGLADESH   |Underweight   |   3404|  8572|
|BC      |24 months |LCNI-5         |MALAWI       |Normal weight |    468|   577|
|BC      |24 months |LCNI-5         |MALAWI       |Underweight   |    109|   577|
|BC      |24 months |MAL-ED         |INDIA        |Normal weight |    172|   218|
|BC      |24 months |MAL-ED         |INDIA        |Underweight   |     46|   218|
|BC      |24 months |MAL-ED         |BANGLADESH   |Normal weight |    169|   199|
|BC      |24 months |MAL-ED         |BANGLADESH   |Underweight   |     30|   199|
|BC      |24 months |MAL-ED         |PERU         |Normal weight |    186|   190|
|BC      |24 months |MAL-ED         |PERU         |Underweight   |      4|   190|
|BC      |24 months |MAL-ED         |NEPAL        |Normal weight |    224|   226|
|BC      |24 months |MAL-ED         |NEPAL        |Underweight   |      2|   226|
|BC      |24 months |MAL-ED         |BRAZIL       |Normal weight |    148|   159|
|BC      |24 months |MAL-ED         |BRAZIL       |Underweight   |     11|   159|
|BC      |24 months |MAL-ED         |TANZANIA     |Normal weight |    190|   208|
|BC      |24 months |MAL-ED         |TANZANIA     |Underweight   |     18|   208|
|BC      |24 months |MAL-ED         |SOUTH AFRICA |Normal weight |    208|   218|
|BC      |24 months |MAL-ED         |SOUTH AFRICA |Underweight   |     10|   218|
|BC      |24 months |NIH-Birth      |BANGLADESH   |Normal weight |    359|   429|
|BC      |24 months |NIH-Birth      |BANGLADESH   |Underweight   |     70|   429|
|BC      |24 months |NIH-Crypto     |BANGLADESH   |Normal weight |    475|   510|
|BC      |24 months |NIH-Crypto     |BANGLADESH   |Underweight   |     35|   510|
|BC      |24 months |PROBIT         |BELARUS      |Normal weight |   3852|  4000|
|BC      |24 months |PROBIT         |BELARUS      |Underweight   |    148|  4000|
|BC      |24 months |PROVIDE        |BANGLADESH   |Normal weight |    460|   562|
|BC      |24 months |PROVIDE        |BANGLADESH   |Underweight   |    102|   562|
|BC      |24 months |TanzaniaChild2 |TANZANIA     |Normal weight |      6|     6|
|BC      |24 months |TanzaniaChild2 |TANZANIA     |Underweight   |      0|     6|
|BC      |24 months |ZVITAMBO       |ZIMBABWE     |Normal weight |   1311|  1371|
|BC      |24 months |ZVITAMBO       |ZIMBABWE     |Underweight   |     60|  1371|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |Normal weight |  13623| 22324|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |Underweight   |   8701| 22324|
|FULL    |Birth     |MAL-ED         |INDIA        |Normal weight |     35|    44|
|FULL    |Birth     |MAL-ED         |INDIA        |Underweight   |      9|    44|
|FULL    |Birth     |MAL-ED         |BANGLADESH   |Normal weight |    189|   226|
|FULL    |Birth     |MAL-ED         |BANGLADESH   |Underweight   |     37|   226|
|FULL    |Birth     |MAL-ED         |PERU         |Normal weight |    215|   222|
|FULL    |Birth     |MAL-ED         |PERU         |Underweight   |      7|   222|
|FULL    |Birth     |MAL-ED         |NEPAL        |Normal weight |     26|    26|
|FULL    |Birth     |MAL-ED         |NEPAL        |Underweight   |      0|    26|
|FULL    |Birth     |MAL-ED         |BRAZIL       |Normal weight |     56|    61|
|FULL    |Birth     |MAL-ED         |BRAZIL       |Underweight   |      5|    61|
|FULL    |Birth     |MAL-ED         |TANZANIA     |Normal weight |    109|   123|
|FULL    |Birth     |MAL-ED         |TANZANIA     |Underweight   |     14|   123|
|FULL    |Birth     |MAL-ED         |SOUTH AFRICA |Normal weight |     99|   104|
|FULL    |Birth     |MAL-ED         |SOUTH AFRICA |Underweight   |      5|   104|
|FULL    |Birth     |NIH-Birth      |BANGLADESH   |Normal weight |    497|   608|
|FULL    |Birth     |NIH-Birth      |BANGLADESH   |Underweight   |    111|   608|
|FULL    |Birth     |NIH-Crypto     |BANGLADESH   |Normal weight |    659|   723|
|FULL    |Birth     |NIH-Crypto     |BANGLADESH   |Underweight   |     64|   723|
|FULL    |Birth     |PROBIT         |BELARUS      |Normal weight |  12518| 13012|
|FULL    |Birth     |PROBIT         |BELARUS      |Underweight   |    494| 13012|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |Normal weight |    408|   514|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |Underweight   |    106|   514|
|FULL    |Birth     |SAS-CompFeed   |INDIA        |Normal weight |    821|  1137|
|FULL    |Birth     |SAS-CompFeed   |INDIA        |Underweight   |    316|  1137|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE     |Normal weight |   9124|  9643|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE     |Underweight   |    519|  9643|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |Normal weight |  10200| 16729|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |Underweight   |   6529| 16729|
|FULL    |6 months  |LCNI-5         |MALAWI       |Normal weight |    694|   837|
|FULL    |6 months  |LCNI-5         |MALAWI       |Underweight   |    143|   837|
|FULL    |6 months  |MAL-ED         |INDIA        |Normal weight |    178|   227|
|FULL    |6 months  |MAL-ED         |INDIA        |Underweight   |     49|   227|
|FULL    |6 months  |MAL-ED         |BANGLADESH   |Normal weight |    199|   236|
|FULL    |6 months  |MAL-ED         |BANGLADESH   |Underweight   |     37|   236|
|FULL    |6 months  |MAL-ED         |PERU         |Normal weight |    250|   257|
|FULL    |6 months  |MAL-ED         |PERU         |Underweight   |      7|   257|
|FULL    |6 months  |MAL-ED         |NEPAL        |Normal weight |    232|   234|
|FULL    |6 months  |MAL-ED         |NEPAL        |Underweight   |      2|   234|
|FULL    |6 months  |MAL-ED         |BRAZIL       |Normal weight |    176|   191|
|FULL    |6 months  |MAL-ED         |BRAZIL       |Underweight   |     15|   191|
|FULL    |6 months  |MAL-ED         |TANZANIA     |Normal weight |    216|   244|
|FULL    |6 months  |MAL-ED         |TANZANIA     |Underweight   |     28|   244|
|FULL    |6 months  |MAL-ED         |SOUTH AFRICA |Normal weight |    220|   225|
|FULL    |6 months  |MAL-ED         |SOUTH AFRICA |Underweight   |      5|   225|
|FULL    |6 months  |NIH-Birth      |BANGLADESH   |Normal weight |    439|   537|
|FULL    |6 months  |NIH-Birth      |BANGLADESH   |Underweight   |     98|   537|
|FULL    |6 months  |NIH-Crypto     |BANGLADESH   |Normal weight |    641|   705|
|FULL    |6 months  |NIH-Crypto     |BANGLADESH   |Underweight   |     64|   705|
|FULL    |6 months  |PROBIT         |BELARUS      |Normal weight |  12466| 12988|
|FULL    |6 months  |PROBIT         |BELARUS      |Underweight   |    522| 12988|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |Normal weight |    469|   578|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |Underweight   |    109|   578|
|FULL    |6 months  |SAS-CompFeed   |INDIA        |Normal weight |    895|  1217|
|FULL    |6 months  |SAS-CompFeed   |INDIA        |Underweight   |    322|  1217|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA     |Normal weight |   1949|  1985|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA     |Underweight   |     36|  1985|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE     |Normal weight |   6618|  6950|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE     |Underweight   |    332|  6950|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |Normal weight |   5262|  8583|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |Underweight   |   3321|  8583|
|FULL    |24 months |LCNI-5         |MALAWI       |Normal weight |    471|   578|
|FULL    |24 months |LCNI-5         |MALAWI       |Underweight   |    107|   578|
|FULL    |24 months |MAL-ED         |INDIA        |Normal weight |    171|   219|
|FULL    |24 months |MAL-ED         |INDIA        |Underweight   |     48|   219|
|FULL    |24 months |MAL-ED         |BANGLADESH   |Normal weight |    176|   211|
|FULL    |24 months |MAL-ED         |BANGLADESH   |Underweight   |     35|   211|
|FULL    |24 months |MAL-ED         |PERU         |Normal weight |    185|   189|
|FULL    |24 months |MAL-ED         |PERU         |Underweight   |      4|   189|
|FULL    |24 months |MAL-ED         |NEPAL        |Normal weight |    224|   226|
|FULL    |24 months |MAL-ED         |NEPAL        |Underweight   |      2|   226|
|FULL    |24 months |MAL-ED         |BRAZIL       |Normal weight |    145|   153|
|FULL    |24 months |MAL-ED         |BRAZIL       |Underweight   |      8|   153|
|FULL    |24 months |MAL-ED         |TANZANIA     |Normal weight |    186|   211|
|FULL    |24 months |MAL-ED         |TANZANIA     |Underweight   |     25|   211|
|FULL    |24 months |MAL-ED         |SOUTH AFRICA |Normal weight |    208|   213|
|FULL    |24 months |MAL-ED         |SOUTH AFRICA |Underweight   |      5|   213|
|FULL    |24 months |NIH-Birth      |BANGLADESH   |Normal weight |    356|   429|
|FULL    |24 months |NIH-Birth      |BANGLADESH   |Underweight   |     73|   429|
|FULL    |24 months |NIH-Crypto     |BANGLADESH   |Normal weight |    463|   507|
|FULL    |24 months |NIH-Crypto     |BANGLADESH   |Underweight   |     44|   507|
|FULL    |24 months |PROBIT         |BELARUS      |Normal weight |   3675|  3797|
|FULL    |24 months |PROBIT         |BELARUS      |Underweight   |    122|  3797|
|FULL    |24 months |PROVIDE        |BANGLADESH   |Normal weight |    451|   551|
|FULL    |24 months |PROVIDE        |BANGLADESH   |Underweight   |    100|   551|
|FULL    |24 months |TanzaniaChild2 |TANZANIA     |Normal weight |      6|     6|
|FULL    |24 months |TanzaniaChild2 |TANZANIA     |Underweight   |      0|     6|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE     |Normal weight |   1234|  1301|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE     |Underweight   |     67|  1301|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |Normal weight |   6941| 11240|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |Underweight   |   4299| 11240|
|QI      |Birth     |MAL-ED         |INDIA        |Normal weight |    185|   236|
|QI      |Birth     |MAL-ED         |INDIA        |Underweight   |     51|   236|
|QI      |Birth     |MAL-ED         |BANGLADESH   |Normal weight |    216|   252|
|QI      |Birth     |MAL-ED         |BANGLADESH   |Underweight   |     36|   252|
|QI      |Birth     |MAL-ED         |PERU         |Normal weight |    275|   288|
|QI      |Birth     |MAL-ED         |PERU         |Underweight   |     13|   288|
|QI      |Birth     |MAL-ED         |NEPAL        |Normal weight |    231|   232|
|QI      |Birth     |MAL-ED         |NEPAL        |Underweight   |      1|   232|
|QI      |Birth     |MAL-ED         |BRAZIL       |Normal weight |    214|   224|
|QI      |Birth     |MAL-ED         |BRAZIL       |Underweight   |     10|   224|
|QI      |Birth     |MAL-ED         |TANZANIA     |Normal weight |    186|   204|
|QI      |Birth     |MAL-ED         |TANZANIA     |Underweight   |     18|   204|
|QI      |Birth     |MAL-ED         |SOUTH AFRICA |Normal weight |    259|   265|
|QI      |Birth     |MAL-ED         |SOUTH AFRICA |Underweight   |      6|   265|
|QI      |Birth     |NIH-Birth      |BANGLADESH   |Normal weight |    527|   612|
|QI      |Birth     |NIH-Birth      |BANGLADESH   |Underweight   |     85|   612|
|QI      |Birth     |NIH-Crypto     |BANGLADESH   |Normal weight |    701|   749|
|QI      |Birth     |NIH-Crypto     |BANGLADESH   |Underweight   |     48|   749|
|QI      |Birth     |PROBIT         |BELARUS      |Normal weight |   6377|  6642|
|QI      |Birth     |PROBIT         |BELARUS      |Underweight   |    265|  6642|
|QI      |Birth     |PROVIDE        |BANGLADESH   |Normal weight |    412|   515|
|QI      |Birth     |PROVIDE        |BANGLADESH   |Underweight   |    103|   515|
|QI      |Birth     |SAS-CompFeed   |INDIA        |Normal weight |    229|   351|
|QI      |Birth     |SAS-CompFeed   |INDIA        |Underweight   |    122|   351|
|QI      |Birth     |TanzaniaChild2 |TANZANIA     |Normal weight |   2276|  2322|
|QI      |Birth     |TanzaniaChild2 |TANZANIA     |Underweight   |     46|  2322|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE     |Normal weight |   8537|  8997|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE     |Underweight   |    460|  8997|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |Normal weight |   2982|  4827|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |Underweight   |   1845|  4827|
|QI      |6 months  |LCNI-5         |MALAWI       |Normal weight |    655|   831|
|QI      |6 months  |LCNI-5         |MALAWI       |Underweight   |    176|   831|
|QI      |6 months  |MAL-ED         |INDIA        |Normal weight |    180|   229|
|QI      |6 months  |MAL-ED         |INDIA        |Underweight   |     49|   229|
|QI      |6 months  |MAL-ED         |BANGLADESH   |Normal weight |    206|   241|
|QI      |6 months  |MAL-ED         |BANGLADESH   |Underweight   |     35|   241|
|QI      |6 months  |MAL-ED         |PERU         |Normal weight |    247|   258|
|QI      |6 months  |MAL-ED         |PERU         |Underweight   |     11|   258|
|QI      |6 months  |MAL-ED         |NEPAL        |Normal weight |    217|   218|
|QI      |6 months  |MAL-ED         |NEPAL        |Underweight   |      1|   218|
|QI      |6 months  |MAL-ED         |BRAZIL       |Normal weight |    200|   207|
|QI      |6 months  |MAL-ED         |BRAZIL       |Underweight   |      7|   207|
|QI      |6 months  |MAL-ED         |TANZANIA     |Normal weight |    216|   239|
|QI      |6 months  |MAL-ED         |TANZANIA     |Underweight   |     23|   239|
|QI      |6 months  |MAL-ED         |SOUTH AFRICA |Normal weight |    240|   246|
|QI      |6 months  |MAL-ED         |SOUTH AFRICA |Underweight   |      6|   246|
|QI      |6 months  |NIH-Birth      |BANGLADESH   |Normal weight |    341|   391|
|QI      |6 months  |NIH-Birth      |BANGLADESH   |Underweight   |     50|   391|
|QI      |6 months  |NIH-Crypto     |BANGLADESH   |Normal weight |    500|   535|
|QI      |6 months  |NIH-Crypto     |BANGLADESH   |Underweight   |     35|   535|
|QI      |6 months  |PROBIT         |BELARUS      |Normal weight |   4059|  4231|
|QI      |6 months  |PROBIT         |BELARUS      |Underweight   |    172|  4231|
|QI      |6 months  |PROVIDE        |BANGLADESH   |Normal weight |    463|   592|
|QI      |6 months  |PROVIDE        |BANGLADESH   |Underweight   |    129|   592|
|QI      |6 months  |SAS-CompFeed   |INDIA        |Normal weight |    156|   244|
|QI      |6 months  |SAS-CompFeed   |INDIA        |Underweight   |     88|   244|
|QI      |6 months  |TanzaniaChild2 |TANZANIA     |Normal weight |   1859|  1898|
|QI      |6 months  |TanzaniaChild2 |TANZANIA     |Underweight   |     39|  1898|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE     |Normal weight |   4720|  4963|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE     |Underweight   |    243|  4963|
|QI      |24 months |iLiNS-Zinc     |BURKINA FASO |Normal weight |     16|    18|
|QI      |24 months |iLiNS-Zinc     |BURKINA FASO |Underweight   |      2|    18|
|QI      |24 months |JiVitA-3       |BANGLADESH   |Normal weight |      4|     6|
|QI      |24 months |JiVitA-3       |BANGLADESH   |Underweight   |      2|     6|
|QI      |24 months |LCNI-5         |MALAWI       |Normal weight |     64|    83|
|QI      |24 months |LCNI-5         |MALAWI       |Underweight   |     19|    83|
|QI      |24 months |MAL-ED         |INDIA        |Normal weight |     77|   100|
|QI      |24 months |MAL-ED         |INDIA        |Underweight   |     23|   100|
|QI      |24 months |MAL-ED         |BANGLADESH   |Normal weight |     83|    95|
|QI      |24 months |MAL-ED         |BANGLADESH   |Underweight   |     12|    95|
|QI      |24 months |MAL-ED         |PERU         |Normal weight |     62|    66|
|QI      |24 months |MAL-ED         |PERU         |Underweight   |      4|    66|
|QI      |24 months |MAL-ED         |NEPAL        |Normal weight |     99|    99|
|QI      |24 months |MAL-ED         |NEPAL        |Underweight   |      0|    99|
|QI      |24 months |MAL-ED         |BRAZIL       |Normal weight |     69|    70|
|QI      |24 months |MAL-ED         |BRAZIL       |Underweight   |      1|    70|
|QI      |24 months |MAL-ED         |TANZANIA     |Normal weight |     71|    80|
|QI      |24 months |MAL-ED         |TANZANIA     |Underweight   |      9|    80|
|QI      |24 months |MAL-ED         |SOUTH AFRICA |Normal weight |     82|    86|
|QI      |24 months |MAL-ED         |SOUTH AFRICA |Underweight   |      4|    86|
|QI      |24 months |NIH-Birth      |BANGLADESH   |Normal weight |     27|    32|
|QI      |24 months |NIH-Birth      |BANGLADESH   |Underweight   |      5|    32|
|QI      |24 months |NIH-Crypto     |BANGLADESH   |Normal weight |     44|    47|
|QI      |24 months |NIH-Crypto     |BANGLADESH   |Underweight   |      3|    47|
|QI      |24 months |PROBIT         |BELARUS      |Normal weight |    132|   137|
|QI      |24 months |PROBIT         |BELARUS      |Underweight   |      5|   137|
|QI      |24 months |PROVIDE        |BANGLADESH   |Normal weight |     42|    53|
|QI      |24 months |PROVIDE        |BANGLADESH   |Underweight   |     11|    53|
|QI      |24 months |SAS-CompFeed   |INDIA        |Normal weight |      1|     3|
|QI      |24 months |SAS-CompFeed   |INDIA        |Underweight   |      2|     3|
|QI      |24 months |TanzaniaChild2 |TANZANIA     |Normal weight |     53|    54|
|QI      |24 months |TanzaniaChild2 |TANZANIA     |Underweight   |      1|    54|
|QI      |24 months |ZVITAMBO       |ZIMBABWE     |Normal weight |    119|   134|
|QI      |24 months |ZVITAMBO       |ZIMBABWE     |Underweight   |     15|   134|


The following strata were considered:

* syntype: BC, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
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
* syntype: BC, agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: BC, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
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
* syntype: BC, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: BC, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: BC, agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: BC, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
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
* syntype: BC, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: BC, agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: FULL, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
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
* syntype: FULL, agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: FULL, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
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
* syntype: FULL, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: FULL, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
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
* syntype: FULL, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: FULL, agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: QI, agecat: 24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* syntype: QI, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
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
* syntype: QI, agecat: 24 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: QI, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
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
* syntype: QI, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: QI, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
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
* syntype: QI, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: Birth, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* syntype: BC, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* syntype: QI, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


