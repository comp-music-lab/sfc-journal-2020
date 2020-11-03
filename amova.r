library('textshape')
library('ade4')
setwd('~/Documents/Work/sfc-journal-2020/')

# subset samples 

indianCanto <- list("samples", "distances", "structures")
df <- read.csv('./data/samples.csv')
indianCanto$samples = subset(df, select = -c(X))
indianCanto$samples <- column_to_rownames(indianCanto$samples, "canto_coding_id")

df <- read.csv('./data/filtered.csv')
df <- subset(df, select = -c(X, Number.of.Samples, language, people, song, region, division, subregion, area_kingdom, culture, lat, lng))
df <- column_to_rownames(df, "canto_coding_id")
indianCanto$distances <- dist(df, method="euclidean")

df <- read.csv('./data/structure.csv')
df = subset(df, select=-c(X))
factors <- df[['language']]
indianCanto$structures <- data.frame(region = as.factor(factors))

indianCanto$amova <- amova(indianCanto$samples, indianCanto$distances, indianCanto$structures)


# subset samples and features

indianCanto <- list("samples", "distances", "structures")
df <- read.csv('./data/samples.csv')
indianCanto$samples = subset(df, select = -c(X))
indianCanto$samples <- column_to_rownames(indianCanto$samples, "canto_coding_id")

df <- read.csv('./data/filtered.csv')
df <- subset(df, select = -c(X, Number.of.Samples, language, people, song, region, division, subregion,
                             area_kingdom, culture, lat, lng, cv_1,cv_5,cv_6,cv_12,
                             cv_22,cv_2,cv_3,cv_8,cv_9,cv_13,cv_14,cv_27))
df <- column_to_rownames(df, "canto_coding_id")
indianCanto$distances <- dist(df, method="euclidean")

df <- read.csv('./data/structure.csv')
df = subset(df, select=-c(X))
factors <- df[['language']]
indianCanto$structures <- data.frame(region = as.factor(factors))

indianCanto$amova <- amova(indianCanto$samples, indianCanto$distances, indianCanto$structures)

# full samples
indianCanto <- list("samples", "distances", "structures")
df <- read.csv('./data/samples_full.csv')
indianCanto$samples = subset(df, select = -c(X))
indianCanto$samples <- column_to_rownames(indianCanto$samples, "canto_coding_id")

df <- read.csv('./data/no_singles_full.csv')
df <- subset(df, select = -c(language, people, song, region, division, subregion, area_kingdom, culture, lat, lng))
df <- column_to_rownames(df, "canto_coding_id")
indianCanto$distances <- dist(df, method="euclidean")

df <- read.csv('./data/structure_full.csv')
df = subset(df, select=-c(X))
factors <- df[['language']]
indianCanto$structures <- data.frame(region = as.factor(factors))

indianCanto$amova <- amova(indianCanto$samples, indianCanto$distances, indianCanto$structures)



# Global Canto

globalCanto <- list("samples", "distances", "structures")
df <- read.csv('./data/global_samples.csv')
globalCanto$samples = subset(df, select = -c(X))
globalCanto$samples <- column_to_rownames(globalCanto$samples, "canto_coding_id")

df <- read.csv('./data/global_no_singles.csv')
df <- subset(df, select = -c(X, Culture, C_cid, orv_1,orv_2,ensemble_value_id,ensemble_value_label,instrument_value_id,instrument_value_label,Number.of.Samples))
df <- column_to_rownames(df, "canto_coding_id")
globalCanto$distances <- dist(df)

df <- read.csv('./data/global_structure.csv')
df = subset(df, select=-c(X))
factors <- df[['region']]
globalCanto$structures <- data.frame(region = as.factor(factors))

globalCanto$amova <- amova(globalCanto$samples, globalCanto$distances, globalCanto$structures)