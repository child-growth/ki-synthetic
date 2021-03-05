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

**Intervention Variable:** fhtcm

**Adjustment Set:**

* arm
* W_mage
* W_fage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid       |country   |fhtcm        | ever_stunted| n_cell|     n|
|:-----------|:-------------|:---------|:------------|------------:|------:|-----:|
|0-24 months |COHORTS       |GUATEMALA |>=167 cm     |            0|     16|   496|
|0-24 months |COHORTS       |GUATEMALA |>=167 cm     |            1|     48|   496|
|0-24 months |COHORTS       |GUATEMALA |<162 cm      |            0|     24|   496|
|0-24 months |COHORTS       |GUATEMALA |<162 cm      |            1|    269|   496|
|0-24 months |COHORTS       |GUATEMALA |[162-167) cm |            0|     24|   496|
|0-24 months |COHORTS       |GUATEMALA |[162-167) cm |            1|    115|   496|
|0-24 months |Keneba        |GAMBIA    |>=167 cm     |            0|    598|  1929|
|0-24 months |Keneba        |GAMBIA    |>=167 cm     |            1|    647|  1929|
|0-24 months |Keneba        |GAMBIA    |<162 cm      |            0|     52|  1929|
|0-24 months |Keneba        |GAMBIA    |<162 cm      |            1|     80|  1929|
|0-24 months |Keneba        |GAMBIA    |[162-167) cm |            0|    207|  1929|
|0-24 months |Keneba        |GAMBIA    |[162-167) cm |            1|    345|  1929|
|0-24 months |PROBIT        |BELARUS   |>=167 cm     |            0|  10314| 12537|
|0-24 months |PROBIT        |BELARUS   |>=167 cm     |            1|   1430| 12537|
|0-24 months |PROBIT        |BELARUS   |<162 cm      |            0|    122| 12537|
|0-24 months |PROBIT        |BELARUS   |<162 cm      |            1|     46| 12537|
|0-24 months |PROBIT        |BELARUS   |[162-167) cm |            0|    495| 12537|
|0-24 months |PROBIT        |BELARUS   |[162-167) cm |            1|    130| 12537|
|0-24 months |SAS-CompFeed  |INDIA     |>=167 cm     |            0|    137|   907|
|0-24 months |SAS-CompFeed  |INDIA     |>=167 cm     |            1|    273|   907|
|0-24 months |SAS-CompFeed  |INDIA     |<162 cm      |            0|     50|   907|
|0-24 months |SAS-CompFeed  |INDIA     |<162 cm      |            1|    180|   907|
|0-24 months |SAS-CompFeed  |INDIA     |[162-167) cm |            0|     69|   907|
|0-24 months |SAS-CompFeed  |INDIA     |[162-167) cm |            1|    198|   907|
|0-24 months |SAS-FoodSuppl |INDIA     |>=167 cm     |            0|     23|   399|
|0-24 months |SAS-FoodSuppl |INDIA     |>=167 cm     |            1|     83|   399|
|0-24 months |SAS-FoodSuppl |INDIA     |<162 cm      |            0|     15|   399|
|0-24 months |SAS-FoodSuppl |INDIA     |<162 cm      |            1|    148|   399|
|0-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm |            0|     23|   399|
|0-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm |            1|    107|   399|
|0-6 months  |COHORTS       |GUATEMALA |>=167 cm     |            0|     36|   337|
|0-6 months  |COHORTS       |GUATEMALA |>=167 cm     |            1|     13|   337|
|0-6 months  |COHORTS       |GUATEMALA |<162 cm      |            0|    112|   337|
|0-6 months  |COHORTS       |GUATEMALA |<162 cm      |            1|     84|   337|
|0-6 months  |COHORTS       |GUATEMALA |[162-167) cm |            0|     66|   337|
|0-6 months  |COHORTS       |GUATEMALA |[162-167) cm |            1|     26|   337|
|0-6 months  |Keneba        |GAMBIA    |>=167 cm     |            0|    780|  1723|
|0-6 months  |Keneba        |GAMBIA    |>=167 cm     |            1|    333|  1723|
|0-6 months  |Keneba        |GAMBIA    |<162 cm      |            0|     84|  1723|
|0-6 months  |Keneba        |GAMBIA    |<162 cm      |            1|     40|  1723|
|0-6 months  |Keneba        |GAMBIA    |[162-167) cm |            0|    322|  1723|
|0-6 months  |Keneba        |GAMBIA    |[162-167) cm |            1|    164|  1723|
|0-6 months  |PROBIT        |BELARUS   |>=167 cm     |            0|  11014| 12537|
|0-6 months  |PROBIT        |BELARUS   |>=167 cm     |            1|    730| 12537|
|0-6 months  |PROBIT        |BELARUS   |<162 cm      |            0|    145| 12537|
|0-6 months  |PROBIT        |BELARUS   |<162 cm      |            1|     23| 12537|
|0-6 months  |PROBIT        |BELARUS   |[162-167) cm |            0|    560| 12537|
|0-6 months  |PROBIT        |BELARUS   |[162-167) cm |            1|     65| 12537|
|0-6 months  |SAS-CompFeed  |INDIA     |>=167 cm     |            0|    255|   905|
|0-6 months  |SAS-CompFeed  |INDIA     |>=167 cm     |            1|    155|   905|
|0-6 months  |SAS-CompFeed  |INDIA     |<162 cm      |            0|    117|   905|
|0-6 months  |SAS-CompFeed  |INDIA     |<162 cm      |            1|    112|   905|
|0-6 months  |SAS-CompFeed  |INDIA     |[162-167) cm |            0|    147|   905|
|0-6 months  |SAS-CompFeed  |INDIA     |[162-167) cm |            1|    119|   905|
|0-6 months  |SAS-FoodSuppl |INDIA     |>=167 cm     |            0|     79|   397|
|0-6 months  |SAS-FoodSuppl |INDIA     |>=167 cm     |            1|     27|   397|
|0-6 months  |SAS-FoodSuppl |INDIA     |<162 cm      |            0|     81|   397|
|0-6 months  |SAS-FoodSuppl |INDIA     |<162 cm      |            1|     81|   397|
|0-6 months  |SAS-FoodSuppl |INDIA     |[162-167) cm |            0|     82|   397|
|0-6 months  |SAS-FoodSuppl |INDIA     |[162-167) cm |            1|     47|   397|
|6-24 months |COHORTS       |GUATEMALA |>=167 cm     |            0|     16|   372|
|6-24 months |COHORTS       |GUATEMALA |>=167 cm     |            1|     35|   372|
|6-24 months |COHORTS       |GUATEMALA |<162 cm      |            0|     23|   372|
|6-24 months |COHORTS       |GUATEMALA |<162 cm      |            1|    185|   372|
|6-24 months |COHORTS       |GUATEMALA |[162-167) cm |            0|     24|   372|
|6-24 months |COHORTS       |GUATEMALA |[162-167) cm |            1|     89|   372|
|6-24 months |Keneba        |GAMBIA    |>=167 cm     |            0|    561|  1345|
|6-24 months |Keneba        |GAMBIA    |>=167 cm     |            1|    314|  1345|
|6-24 months |Keneba        |GAMBIA    |<162 cm      |            0|     52|  1345|
|6-24 months |Keneba        |GAMBIA    |<162 cm      |            1|     40|  1345|
|6-24 months |Keneba        |GAMBIA    |[162-167) cm |            0|    197|  1345|
|6-24 months |Keneba        |GAMBIA    |[162-167) cm |            1|    181|  1345|
|6-24 months |PROBIT        |BELARUS   |>=167 cm     |            0|  10308| 11712|
|6-24 months |PROBIT        |BELARUS   |>=167 cm     |            1|    700| 11712|
|6-24 months |PROBIT        |BELARUS   |<162 cm      |            0|    122| 11712|
|6-24 months |PROBIT        |BELARUS   |<162 cm      |            1|     23| 11712|
|6-24 months |PROBIT        |BELARUS   |[162-167) cm |            0|    494| 11712|
|6-24 months |PROBIT        |BELARUS   |[162-167) cm |            1|     65| 11712|
|6-24 months |SAS-CompFeed  |INDIA     |>=167 cm     |            0|    126|   487|
|6-24 months |SAS-CompFeed  |INDIA     |>=167 cm     |            1|    118|   487|
|6-24 months |SAS-CompFeed  |INDIA     |<162 cm      |            0|     37|   487|
|6-24 months |SAS-CompFeed  |INDIA     |<162 cm      |            1|     68|   487|
|6-24 months |SAS-CompFeed  |INDIA     |[162-167) cm |            0|     59|   487|
|6-24 months |SAS-CompFeed  |INDIA     |[162-167) cm |            1|     79|   487|
|6-24 months |SAS-FoodSuppl |INDIA     |>=167 cm     |            0|     22|   238|
|6-24 months |SAS-FoodSuppl |INDIA     |>=167 cm     |            1|     56|   238|
|6-24 months |SAS-FoodSuppl |INDIA     |<162 cm      |            0|     12|   238|
|6-24 months |SAS-FoodSuppl |INDIA     |<162 cm      |            1|     67|   238|
|6-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm |            0|     21|   238|
|6-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm |            1|     60|   238|


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA



## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/c1dec31d-bd1e-4cd7-bd31-4be27884d10a/52123680-53b1-47c8-9c33-425aad97a5fb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c1dec31d-bd1e-4cd7-bd31-4be27884d10a/52123680-53b1-47c8-9c33-425aad97a5fb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c1dec31d-bd1e-4cd7-bd31-4be27884d10a/52123680-53b1-47c8-9c33-425aad97a5fb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c1dec31d-bd1e-4cd7-bd31-4be27884d10a/52123680-53b1-47c8-9c33-425aad97a5fb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid       |country   |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:---------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS       |GUATEMALA |>=167 cm           |NA             | 0.7566212| 0.6520420| 0.8612004|
|0-24 months |COHORTS       |GUATEMALA |<162 cm            |NA             | 0.9170720| 0.8847322| 0.9494118|
|0-24 months |COHORTS       |GUATEMALA |[162-167) cm       |NA             | 0.8261908| 0.7582995| 0.8940822|
|0-24 months |Keneba        |GAMBIA    |>=167 cm           |NA             | 0.5267517| 0.4987862| 0.5547171|
|0-24 months |Keneba        |GAMBIA    |<162 cm            |NA             | 0.5772932| 0.4925389| 0.6620474|
|0-24 months |Keneba        |GAMBIA    |[162-167) cm       |NA             | 0.6163008| 0.5747574| 0.6578441|
|0-24 months |PROBIT        |BELARUS   |>=167 cm           |NA             | 0.1240485| 0.1086700| 0.1394271|
|0-24 months |PROBIT        |BELARUS   |<162 cm            |NA             | 0.1769690| 0.1437928| 0.2101451|
|0-24 months |PROBIT        |BELARUS   |[162-167) cm       |NA             | 0.1746938| 0.1303277| 0.2190599|
|0-24 months |SAS-CompFeed  |INDIA     |>=167 cm           |NA             | 0.6855886| 0.6382807| 0.7328966|
|0-24 months |SAS-CompFeed  |INDIA     |<162 cm            |NA             | 0.7505702| 0.6757926| 0.8253478|
|0-24 months |SAS-CompFeed  |INDIA     |[162-167) cm       |NA             | 0.7406719| 0.6659023| 0.8154414|
|0-24 months |SAS-FoodSuppl |INDIA     |>=167 cm           |NA             | 0.7996122| 0.7223775| 0.8768468|
|0-24 months |SAS-FoodSuppl |INDIA     |<162 cm            |NA             | 0.9081807| 0.8644819| 0.9518796|
|0-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm       |NA             | 0.8275592| 0.7609202| 0.8941983|
|0-6 months  |COHORTS       |GUATEMALA |>=167 cm           |NA             | 0.2756595| 0.1470901| 0.4042289|
|0-6 months  |COHORTS       |GUATEMALA |<162 cm            |NA             | 0.4277628| 0.3580152| 0.4975105|
|0-6 months  |COHORTS       |GUATEMALA |[162-167) cm       |NA             | 0.2805047| 0.1889041| 0.3721053|
|0-6 months  |Keneba        |GAMBIA    |>=167 cm           |NA             | 0.2983021| 0.2709919| 0.3256123|
|0-6 months  |Keneba        |GAMBIA    |<162 cm            |NA             | 0.3018417| 0.2157589| 0.3879245|
|0-6 months  |Keneba        |GAMBIA    |[162-167) cm       |NA             | 0.3449050| 0.3013054| 0.3885045|
|0-6 months  |PROBIT        |BELARUS   |>=167 cm           |NA             | 0.0634680| 0.0524536| 0.0744824|
|0-6 months  |PROBIT        |BELARUS   |<162 cm            |NA             | 0.1132110| 0.0965061| 0.1299158|
|0-6 months  |PROBIT        |BELARUS   |[162-167) cm       |NA             | 0.0868379| 0.0618192| 0.1118565|
|0-6 months  |SAS-CompFeed  |INDIA     |>=167 cm           |NA             | 0.4055241| 0.3473816| 0.4636666|
|0-6 months  |SAS-CompFeed  |INDIA     |<162 cm            |NA             | 0.4533901| 0.4010173| 0.5057630|
|0-6 months  |SAS-CompFeed  |INDIA     |[162-167) cm       |NA             | 0.4349737| 0.3758340| 0.4941134|
|0-6 months  |SAS-FoodSuppl |INDIA     |>=167 cm           |NA             | 0.2686484| 0.1880799| 0.3492169|
|0-6 months  |SAS-FoodSuppl |INDIA     |<162 cm            |NA             | 0.4917046| 0.4153641| 0.5680451|
|0-6 months  |SAS-FoodSuppl |INDIA     |[162-167) cm       |NA             | 0.3845542| 0.3025257| 0.4665826|
|6-24 months |COHORTS       |GUATEMALA |>=167 cm           |NA             | 0.6802230| 0.5546807| 0.8057653|
|6-24 months |COHORTS       |GUATEMALA |<162 cm            |NA             | 0.8891284| 0.8452376| 0.9330192|
|6-24 months |COHORTS       |GUATEMALA |[162-167) cm       |NA             | 0.7841514| 0.7037973| 0.8645054|
|6-24 months |Keneba        |GAMBIA    |>=167 cm           |NA             | 0.3693471| 0.3368423| 0.4018520|
|6-24 months |Keneba        |GAMBIA    |<162 cm            |NA             | 0.4148412| 0.3098062| 0.5198762|
|6-24 months |Keneba        |GAMBIA    |[162-167) cm       |NA             | 0.4637273| 0.4130895| 0.5143652|
|6-24 months |PROBIT        |BELARUS   |>=167 cm           |NA             | 0.0646954| 0.0530254| 0.0763654|
|6-24 months |PROBIT        |BELARUS   |<162 cm            |NA             | 0.0993141| 0.0663756| 0.1322525|
|6-24 months |PROBIT        |BELARUS   |[162-167) cm       |NA             | 0.0989282| 0.0646978| 0.1331585|
|6-24 months |SAS-CompFeed  |INDIA     |>=167 cm           |NA             | 0.4989882| 0.4484602| 0.5495162|
|6-24 months |SAS-CompFeed  |INDIA     |<162 cm            |NA             | 0.6460631| 0.5238846| 0.7682415|
|6-24 months |SAS-CompFeed  |INDIA     |[162-167) cm       |NA             | 0.5800966| 0.5207037| 0.6394895|
|6-24 months |SAS-FoodSuppl |INDIA     |>=167 cm           |NA             | 0.7248748| 0.6243507| 0.8253989|
|6-24 months |SAS-FoodSuppl |INDIA     |<162 cm            |NA             | 0.8611705| 0.7859227| 0.9364184|
|6-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm       |NA             | 0.7460705| 0.6477887| 0.8443523|


### Parameter: E(Y)


|agecat      |studyid       |country   |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:---------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS       |GUATEMALA |NA                 |NA             | 0.8709677| 0.8414356| 0.9004999|
|0-24 months |Keneba        |GAMBIA    |NA                 |NA             | 0.5557284| 0.5335489| 0.5779078|
|0-24 months |PROBIT        |BELARUS   |NA                 |NA             | 0.1281008| 0.1120747| 0.1441270|
|0-24 months |SAS-CompFeed  |INDIA     |NA                 |NA             | 0.7177508| 0.6751525| 0.7603491|
|0-24 months |SAS-FoodSuppl |INDIA     |NA                 |NA             | 0.8471178| 0.8117623| 0.8824733|
|0-6 months  |COHORTS       |GUATEMALA |NA                 |NA             | 0.3649852| 0.3135088| 0.4164615|
|0-6 months  |Keneba        |GAMBIA    |NA                 |NA             | 0.3116657| 0.2897893| 0.3335421|
|0-6 months  |PROBIT        |BELARUS   |NA                 |NA             | 0.0652469| 0.0543989| 0.0760949|
|0-6 months  |SAS-CompFeed  |INDIA     |NA                 |NA             | 0.4265193| 0.3923837| 0.4606550|
|0-6 months  |SAS-FoodSuppl |INDIA     |NA                 |NA             | 0.3904282| 0.3423793| 0.4384771|
|6-24 months |COHORTS       |GUATEMALA |NA                 |NA             | 0.8306452| 0.7924799| 0.8688104|
|6-24 months |Keneba        |GAMBIA    |NA                 |NA             | 0.3977695| 0.3716030| 0.4239360|
|6-24 months |PROBIT        |BELARUS   |NA                 |NA             | 0.0672814| 0.0549972| 0.0795656|
|6-24 months |SAS-CompFeed  |INDIA     |NA                 |NA             | 0.5441478| 0.5023342| 0.5859615|
|6-24 months |SAS-FoodSuppl |INDIA     |NA                 |NA             | 0.7689076| 0.7152410| 0.8225741|


### Parameter: RR


|agecat      |studyid       |country   |intervention_level |baseline_level | estimate|  ci_lower| ci_upper|
|:-----------|:-------------|:---------|:------------------|:--------------|--------:|---------:|--------:|
|0-24 months |COHORTS       |GUATEMALA |>=167 cm           |>=167 cm       | 1.000000| 1.0000000| 1.000000|
|0-24 months |COHORTS       |GUATEMALA |<162 cm            |>=167 cm       | 1.212062| 1.0511471| 1.397611|
|0-24 months |COHORTS       |GUATEMALA |[162-167) cm       |>=167 cm       | 1.091948| 0.9299958| 1.282102|
|0-24 months |Keneba        |GAMBIA    |>=167 cm           |>=167 cm       | 1.000000| 1.0000000| 1.000000|
|0-24 months |Keneba        |GAMBIA    |<162 cm            |>=167 cm       | 1.095949| 0.9379937| 1.280504|
|0-24 months |Keneba        |GAMBIA    |[162-167) cm       |>=167 cm       | 1.170003| 1.0749567| 1.273452|
|0-24 months |PROBIT        |BELARUS   |>=167 cm           |>=167 cm       | 1.000000| 1.0000000| 1.000000|
|0-24 months |PROBIT        |BELARUS   |<162 cm            |>=167 cm       | 1.426611| 1.1801963| 1.724474|
|0-24 months |PROBIT        |BELARUS   |[162-167) cm       |>=167 cm       | 1.408270| 1.1331980| 1.750113|
|0-24 months |SAS-CompFeed  |INDIA     |>=167 cm           |>=167 cm       | 1.000000| 1.0000000| 1.000000|
|0-24 months |SAS-CompFeed  |INDIA     |<162 cm            |>=167 cm       | 1.094782| 0.9982849| 1.200607|
|0-24 months |SAS-CompFeed  |INDIA     |[162-167) cm       |>=167 cm       | 1.080344| 0.9553606| 1.221679|
|0-24 months |SAS-FoodSuppl |INDIA     |>=167 cm           |>=167 cm       | 1.000000| 1.0000000| 1.000000|
|0-24 months |SAS-FoodSuppl |INDIA     |<162 cm            |>=167 cm       | 1.135776| 1.0199956| 1.264700|
|0-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm       |>=167 cm       | 1.034951| 0.9129768| 1.173221|
|0-6 months  |COHORTS       |GUATEMALA |>=167 cm           |>=167 cm       | 1.000000| 1.0000000| 1.000000|
|0-6 months  |COHORTS       |GUATEMALA |<162 cm            |>=167 cm       | 1.551780| 0.9459691| 2.545560|
|0-6 months  |COHORTS       |GUATEMALA |[162-167) cm       |>=167 cm       | 1.017577| 0.5762919| 1.796767|
|0-6 months  |Keneba        |GAMBIA    |>=167 cm           |>=167 cm       | 1.000000| 1.0000000| 1.000000|
|0-6 months  |Keneba        |GAMBIA    |<162 cm            |>=167 cm       | 1.011866| 0.7501597| 1.364872|
|0-6 months  |Keneba        |GAMBIA    |[162-167) cm       |>=167 cm       | 1.156227| 0.9898704| 1.350541|
|0-6 months  |PROBIT        |BELARUS   |>=167 cm           |>=167 cm       | 1.000000| 1.0000000| 1.000000|
|0-6 months  |PROBIT        |BELARUS   |<162 cm            |>=167 cm       | 1.783749| 1.4255784| 2.231908|
|0-6 months  |PROBIT        |BELARUS   |[162-167) cm       |>=167 cm       | 1.368215| 1.0436059| 1.793792|
|0-6 months  |SAS-CompFeed  |INDIA     |>=167 cm           |>=167 cm       | 1.000000| 1.0000000| 1.000000|
|0-6 months  |SAS-CompFeed  |INDIA     |<162 cm            |>=167 cm       | 1.118035| 0.9361099| 1.335316|
|0-6 months  |SAS-CompFeed  |INDIA     |[162-167) cm       |>=167 cm       | 1.072621| 0.8831436| 1.302750|
|0-6 months  |SAS-FoodSuppl |INDIA     |>=167 cm           |>=167 cm       | 1.000000| 1.0000000| 1.000000|
|0-6 months  |SAS-FoodSuppl |INDIA     |<162 cm            |>=167 cm       | 1.830290| 1.3112669| 2.554752|
|0-6 months  |SAS-FoodSuppl |INDIA     |[162-167) cm       |>=167 cm       | 1.431440| 0.9944906| 2.060372|
|6-24 months |COHORTS       |GUATEMALA |>=167 cm           |>=167 cm       | 1.000000| 1.0000000| 1.000000|
|6-24 months |COHORTS       |GUATEMALA |<162 cm            |>=167 cm       | 1.307113| 1.0800896| 1.581855|
|6-24 months |COHORTS       |GUATEMALA |[162-167) cm       |>=167 cm       | 1.152786| 0.9338519| 1.423047|
|6-24 months |Keneba        |GAMBIA    |>=167 cm           |>=167 cm       | 1.000000| 1.0000000| 1.000000|
|6-24 months |Keneba        |GAMBIA    |<162 cm            |>=167 cm       | 1.123174| 0.8597395| 1.467329|
|6-24 months |Keneba        |GAMBIA    |[162-167) cm       |>=167 cm       | 1.255532| 1.0931233| 1.442071|
|6-24 months |PROBIT        |BELARUS   |>=167 cm           |>=167 cm       | 1.000000| 1.0000000| 1.000000|
|6-24 months |PROBIT        |BELARUS   |<162 cm            |>=167 cm       | 1.535103| 1.1358355| 2.074720|
|6-24 months |PROBIT        |BELARUS   |[162-167) cm       |>=167 cm       | 1.529138| 1.1205286| 2.086751|
|6-24 months |SAS-CompFeed  |INDIA     |>=167 cm           |>=167 cm       | 1.000000| 1.0000000| 1.000000|
|6-24 months |SAS-CompFeed  |INDIA     |<162 cm            |>=167 cm       | 1.294746| 1.0827519| 1.548247|
|6-24 months |SAS-CompFeed  |INDIA     |[162-167) cm       |>=167 cm       | 1.162546| 0.9803834| 1.378555|
|6-24 months |SAS-FoodSuppl |INDIA     |>=167 cm           |>=167 cm       | 1.000000| 1.0000000| 1.000000|
|6-24 months |SAS-FoodSuppl |INDIA     |<162 cm            |>=167 cm       | 1.188027| 1.0093728| 1.398301|
|6-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm       |>=167 cm       | 1.029241| 0.8505948| 1.245406|


### Parameter: PAR


|agecat      |studyid       |country   |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:-------------|:---------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |COHORTS       |GUATEMALA |>=167 cm           |NA             | 0.1143465|  0.0183718| 0.2103213|
|0-24 months |Keneba        |GAMBIA    |>=167 cm           |NA             | 0.0289767|  0.0125019| 0.0454515|
|0-24 months |PROBIT        |BELARUS   |>=167 cm           |NA             | 0.0040523|  0.0017586| 0.0063460|
|0-24 months |SAS-CompFeed  |INDIA     |>=167 cm           |NA             | 0.0321622| -0.0027182| 0.0670425|
|0-24 months |SAS-FoodSuppl |INDIA     |>=167 cm           |NA             | 0.0475056| -0.0159183| 0.1109296|
|0-6 months  |COHORTS       |GUATEMALA |>=167 cm           |NA             | 0.0893257| -0.0314300| 0.2100814|
|0-6 months  |Keneba        |GAMBIA    |>=167 cm           |NA             | 0.0133636| -0.0033822| 0.0301093|
|0-6 months  |PROBIT        |BELARUS   |>=167 cm           |NA             | 0.0017789|  0.0001931| 0.0033646|
|0-6 months  |SAS-CompFeed  |INDIA     |>=167 cm           |NA             | 0.0209952| -0.0170810| 0.0590714|
|0-6 months  |SAS-FoodSuppl |INDIA     |>=167 cm           |NA             | 0.1217798|  0.0502484| 0.1933112|
|6-24 months |COHORTS       |GUATEMALA |>=167 cm           |NA             | 0.1504222|  0.0362025| 0.2646418|
|6-24 months |Keneba        |GAMBIA    |>=167 cm           |NA             | 0.0284224|  0.0083692| 0.0484755|
|6-24 months |PROBIT        |BELARUS   |>=167 cm           |NA             | 0.0025860|  0.0008407| 0.0043314|
|6-24 months |SAS-CompFeed  |INDIA     |>=167 cm           |NA             | 0.0451596|  0.0098738| 0.0804455|
|6-24 months |SAS-FoodSuppl |INDIA     |>=167 cm           |NA             | 0.0440327| -0.0360064| 0.1240719|


### Parameter: PAF


|agecat      |studyid       |country   |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:-------------|:---------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |COHORTS       |GUATEMALA |>=167 cm           |NA             | 0.1312868|  0.0129392| 0.2354446|
|0-24 months |Keneba        |GAMBIA    |>=167 cm           |NA             | 0.0521418|  0.0218978| 0.0814506|
|0-24 months |PROBIT        |BELARUS   |>=167 cm           |NA             | 0.0316335|  0.0145457| 0.0484251|
|0-24 months |SAS-CompFeed  |INDIA     |>=167 cm           |NA             | 0.0448097| -0.0043700| 0.0915812|
|0-24 months |SAS-FoodSuppl |INDIA     |>=167 cm           |NA             | 0.0560791| -0.0222704| 0.1284238|
|0-6 months  |COHORTS       |GUATEMALA |>=167 cm           |NA             | 0.2447378| -0.1702007| 0.5125444|
|0-6 months  |Keneba        |GAMBIA    |>=167 cm           |NA             | 0.0428779| -0.0124207| 0.0951561|
|0-6 months  |PROBIT        |BELARUS   |>=167 cm           |NA             | 0.0272637|  0.0020752| 0.0518164|
|0-6 months  |SAS-CompFeed  |INDIA     |>=167 cm           |NA             | 0.0492245| -0.0457341| 0.1355603|
|0-6 months  |SAS-FoodSuppl |INDIA     |>=167 cm           |NA             | 0.3119134|  0.1035559| 0.4718430|
|6-24 months |COHORTS       |GUATEMALA |>=167 cm           |NA             | 0.1810908|  0.0296541| 0.3088936|
|6-24 months |Keneba        |GAMBIA    |>=167 cm           |NA             | 0.0714544|  0.0195585| 0.1206034|
|6-24 months |PROBIT        |BELARUS   |>=167 cm           |NA             | 0.0384363|  0.0142328| 0.0620454|
|6-24 months |SAS-CompFeed  |INDIA     |>=167 cm           |NA             | 0.0829915|  0.0164857| 0.1450001|
|6-24 months |SAS-FoodSuppl |INDIA     |>=167 cm           |NA             | 0.0572666| -0.0533025| 0.1562289|
