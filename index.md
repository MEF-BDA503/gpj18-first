# fiRst Project Journal

## Group Members

* [Efehan Danışman](https://mef-bda503.github.io/pj18-efehandanisman/) 
* [Batur Usta](https://mef-bda503.github.io/pj18-baturusta/) 
* [Özgür Özdemir](https://mef-bda503.github.io/pj18-ozdemiroz/)

## Project Proposal

We obtained electricty cuts data in Turkey between 2012 and 2018 from the [Energy Transparency Platform](https://seffaflik.epias.com.tr/transparency/index.xhtml). Data contain 51568 rows and 7 variables. Variables are as follows:

```{r}
Santral İsmi: Name of the power plant.
Uzlaştırmaya Esas Veriş Çekiş Birimi (UEVÇB): Registered energy supplier name.
Olay başlangıç tarihi: Start date time of the cut.
Olay bitiş tarihi: End date/time of the cut.
İşletmedeki kurulu güç: Total power at the plant.
Olay sırasındaki kapasite: Capacity at the time of incident
Gerekçe: Reason of the cut
```

## Learning Objectives
- Cleaning dirty data and doing text mining in order to extract insights.
- Visualizing data according to different variables.
- Visualizing geographical data over the map.

## Analysis Objectives
- Finding longest and shortest cuts and visualizing them.
- Visualizing cuts at the power plants according to city and duration.
- Finding top reasons of electricity cuts with tidy text mining.
- Analyzing cuts vis-a-vis to capacity and total power at the power plant.

Our updated analysis can be found [here](fiRst.html).


## Final Report

- [Here](cuts_shiny.R) is the source code for our Shiny App.
- [Here](fiRst_Final.html) is the last version of our analysis.
- [Here](slide_1.html) is our presentation.


