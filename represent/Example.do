clear all

cd "/Users/balcazar/Dropbox/Yale/represent/"

* Load data
u "jensen-data.dta", clear
encode country, gen(ccode)


* Vector of controls
global controls "var5 market lgdppc gdpgrowt tradeofg overallb generalg d2 d3"

* Obtain basic distributional diagnostics of the regression weights
represent: reg Fvar5 regime $controls, absorb(ccode) group(ccode) diag 

* Estimate Lorenz curve for the regression weights
represent: reg Fvar5 regime $controls, absorb(ccode) group(ccode) lorenz

* Decomposition of the distribution of regression weights
represent: reg Fvar5 regime $controls, absorb(ccode) group(ccode) byg diag


* Obtain cloropeth map and add identifiers
preserve
	import dbase using "world_countries_boundary_file_world_2002.dbf", clear
	cap duplicates drop NAME_12, force
	cap drop if NAME_12==""
	gen country=NAME_12
	tempfile bridge
	save `bridge'
restore
merge m:1 country using `bridge', keep(match using) nogen

represent: reg Fvar5 regime $controls, absorb(ccode) group(ccode) cloropeth("world_countries_boundary_file_world_2002") id("NAME_12")

