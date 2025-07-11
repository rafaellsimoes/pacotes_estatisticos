# Operações básicas
85 + 9
sin(pi/2)

# Manipulação de vetores
p <- c(1, 2, 3, 5, 7, 9)
p <- 8 * p
p - 8

# Entrada interativa de dados
a <- as.numeric(readline(prompt = "A: "))
b <- as.numeric(readline(prompt = "B: "))
c <- a + b
c

# Estatísticas básicas
c <- c(5, 3, 6)
mean(c, na.rm = TRUE)

# Instalação de pacotes (com verificação)
if (!require(tidyverse)) install.packages('tidyverse')
if (!require(readr)) install.packages('readr')
if (!require(devtools)) install.packages('devtools')
if (!require(ggplot2)) devtools::install_github("hadley/ggplot2")
if (!require(dplyr)) install.packages("dplyr")
if (!require(readxl)) install.packages("readxl")

# Carregar pacotes
library(dplyr)
library(tidyverse)
library(readxl)

# Definir diretório de trabalho (substitua pelo seu caminho)
# setwd("caminho/para/seu/diretorio")

# Leitura de dados (caminhos genéricos)
fazendas <- readxl::read_xlsx(
  path = "dados/Fazendas.xlsx",
  sheet = "Fazendas"
)

fazendas_colnames <- readxl::read_xlsx(
  path = "dados/Fazendas.xlsx",
  sheet = "Fazendas",
  col_names = TRUE
)

Tabela_1286 <- readxl::read_xlsx(
  path = "dados/Tabela1286_Sidra-IBGE.xlsx",
  sheet = "Tabela",
  range = "A5:O37",
  col_names = c("Nível", "Cód.", "Brasil, Grande Região e Unidade da Federação",
                "1872", "1890", "1900", "1920", "1940", 
                "1950", "1960", "1970", "1980", 
                "1991", "2000", "2010"),
  col_types = NULL,
  na = ""
)
