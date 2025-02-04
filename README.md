# Risk-Neutral-Densities
Contains Matlab programs to construct Risk Neutral Densities

A_Project indicates the road to go

Description of the Matlab programs relevant for the project

rows.m cols.m		returns the number of rows or number of columns of a matrix

FTSE100Mar2604.xls	an excel file with the raw data.

FTSEStart.m		a first program that loads the data and reshapes it. This program should be the basis for your further explorations.

VolatSurf.m		extracts out of the given options the volatility surface

BSCallD.m		Black-Scholes formula for a call written on a dividend paying asset

BSPutD.m		Same but for put option price

BenchRND.m		Construction of benchmark-lognormal densities

MixRND.m		Mixture of distribution

CompRND.m		Compares the various RNDs

GB2RND.m		Fits the Generalized Beta distribution

SempDen.m     	Semi Parametric density. Abken etc.

% estimation of a subjective probability with a kernel estimation

TestKern.m		Tests the kernel smoother

Kern.m 		The kernel estimator

StockIdx.xls	The database with stock indices

GarchAT.m		Some garch code to estimate asymmetric garch

MaxLik.m		Maximum likelihood estimation

SimGarch.m		Simulates an objective density

RRA.m			Computes the relative risk aversion function

