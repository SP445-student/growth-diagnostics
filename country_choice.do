clear all
set more off
set scheme s1color

global data "C:\Users\angel\OneDrive\Desktop\PP413 stuff\data"
global graphs "C:\Users\angel\OneDrive\Desktop\PP413 stuff\graphs"

use "$data/wdi_extended"

keep if year >= 1990 & year <= 2023

bysort country: egen mean_gdp_percap_growth = mean(ny_gdp_pcap_kd_zg)

keep country mean_gdp_percap_growth
duplicates drop

sort mean_gdp_percap_growth
list country mean_gdp_percap_growth in 1/250
