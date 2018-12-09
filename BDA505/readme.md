This folder is dedicated to our group project under the framework of BDA505 course. 

## Group Members

* [Efehan Danışman](https://mef-bda503.github.io/pj18-efehandanisman/) 
* [Batur Usta](https://mef-bda503.github.io/pj18-baturusta/) 
* [Özgür Özdemir](https://mef-bda503.github.io/pj18-ozdemiroz/)

## Proposal

We will be using Airbnb dataset scraped via Inside Airbnb(http://insideairbnb.com/about.html) which is aiming to contribute the debate about how Airbnb is used in cities. Data is scraped in November so the datas here are more or less updated. Our datas are 970MB in total (unzipped) and divided into two main tables(one with listing and another one with availability). Below you can find the description variables.

Data has slightly over 100.000 observations at the listings table and several million observation at the calendar. Calendar tables are not imported to any other platform then Excel yet which could not handle the data. For the same reason and its large size, we could not upload them to github also. Here can be reached:http://insideairbnb.com/get-the-data.html

```{r}

# LISTINGS
id: Unique id of the house rented
name: Name of the house
host_id: Unique id of the host
host_name: Name of the host
neighbourhood_group: Neighbourhood group
neighbourhood: Sub-category of the neighbourhood group
latitude: Latitude of the house
longitude: Longitude of the house
room_type: Type of the room as a categorical variables
price: Price in local currency
minimum_nights: Minimum number of nights to stay
number_of_reviews: Number of reviews
last_review: Most recent reviews from the data scraped
reviews_per_month:Average reviews per month
calculated_host_listings_count: Number of listings of the host
availability_365: Availability of the place out of 365 days

# AVAILABILITY

listing_id: Unique id of the house rented
date: date
available: Binary variable true or false
price: Price at local currency

```
Aim is initially making an exploratory analysis on cities and average price of properties depending on their room type, price, neighbourhood,number of reviews etc. Furthermore analysis can be extended to comparison of cities between each other in terms of price, availability and number of reviews. Other data sources may be necessary to strengthen this analysis such as currency levels (since price is in local currency) and number of tourists in the city so that we can see how Airbnb penetrated accommodation market in the city.

We will import the data to a suitable platform such as Jupyter Notebook and code at R in order to clean, transform and query the data for our analysis.
