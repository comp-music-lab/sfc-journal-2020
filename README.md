# sfc-journal-2020

## Installing dependencies

This repository requires you to have a working version of Python 3 and jupyter. A reliable installation is available via Anaconda.

Once you have downloaded and installed Python, you can run the following command to install the other dependencies

`pip install -r requirements.txt`

This will install all the dependencies in the txt file. 
If you run into issues with requirements, submit a pull request so that I can update the requirements file.

## Directory structure

### /audio
Self explanatory. This has audio examples that we use for our PCA explanation.

### /data
This has cantometrics data, some of it is cleaned up.
ou can find metadata for each song, PCA co-ordinates as well as some of the modified data structures for AMOVA analysis
The contents of this directory are modified by the Data Prep python notebook.

### /output
Here we have the PCA loadings, and cleaned up metadata, full Cantometrics data for India. 
You can run most kinds of analysis with the data in this directory.

### /figs
This directory has a world map plot, india map plot, pca plots, scree plots from the PCA and some screenshots from the Global Jukebox website.

### /paper
I haven't commited this file but it basically has the word document for the paper itself


## R scripts

`amova.r` has the scripts necessary to do amova analsis. You need `ade4` and `textshape` packages to run it.
`mds.r` runs MDS analysis but we didn't include it in the paper


## Python notebooks
Data Prep formats the latest data from the Cantometrics codings. 

The codings are on a protected google sheet. 
In order to get the latest data you need access credentials. Submit a pull request to access the data, and I will give you access.
Once that is done, I will guide you on how to store your credentials effectively.