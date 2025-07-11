install.packages("readxl")
library(readxl)

# --- Exemplo com fazendas --- 
fazendas <- readxl::read_xlsx(
  path = "dados/Fazendas.xlsx",
  sheet = "Fazendas"
)
names(fazendas)
str(fazendas)

# --- Exemplo com a tabela SIDRA --- 
tabela_1286_exemplo1 <- readxl::read_xlsx(
  path = "dados/Tabela1286_Sidra-IBGE.xlsx",
  sheet = "Tabela",
  range = "A5:O35",
  col_names = c("Nivel", "COD", "Unidade_geografica",
                "A1872", "A1890", "A1900", "A1920", "A1940", 
                "A1950", "A1960", "A1970", "A1980", 
                "A1991", "A2000", "A2010"),
  col_types = NULL,
  na = ""
)

# --- Exemplo com HAVEN --- 
install.packages("haven")
library(haven)

dir_examples <- system.file("examples", package = "haven")

list.files(dir_examples)

# SAS
dados_iris_sas <- haven::read_sas(paste0(dir_examples, "/iris.sas7bdat"))
head(dados_iris_sas)

# Stata
dados_iris_stata <- haven::read_dta(paste0(dir_examples, "/iris.dta")) 
head(dados_iris_stata)

# SPSS
dados_iris_spss <- haven::read_sav(paste0(dir_examples, "/iris.sav"))   
head(dados_iris_spss)

# --- Exemplo com googlesheets4 --- 
install.packages("googlesheets4")
library(googlesheets4)

gs4_auth()
fazendas_googlesheet4 <- googlesheets4::read_sheet(
  "https://docs.google.com/spreadsheets/d/ID_DA_PLANILHA/edit?usp=sharing",
  sheet = "Fazendas"
)

# --- Exemplo com readr --- 
install.packages("readr")
library(readr)

DM_CURSO_2015 <- readr::read_delim(
  file = "dados/DM_CURSO_2015.CSV",
  delim = "|",
  col_names = TRUE,
  locale = readr::locale(encoding = "Latin1")
)
