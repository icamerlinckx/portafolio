## PRUEBA

## AGREGAMOS ALGO MAS

library(tidyverse)
library(readxl)

df <- read.csv("sube_daily_2025/dat-ab-usos-2025.csv") %>% as.tibble()
glimpse(df)

df <- df %>%
  mutate(
    FECHA = as.Date(DIA_TRANSPORTE),        # convierte a fecha
    NOMBRE_EMPRESA = as.factor(NOMBRE_EMPRESA),      # factor (categoría)
    LINEA          = as.character(LINEA),            # mantener como texto
    AMBA           = AMBA == "SI",                   # lógico TRUE/FALSE
    TIPO_TRANSPORTE = as.factor(TIPO_TRANSPORTE),    # factor
    JURISDICCION   = as.factor(JURISDICCION),        # factor
    PROVINCIA      = as.factor(PROVINCIA),           # factor
    MUNICIPIO      = as.factor(MUNICIPIO),           # factor
   
  ) %>% 
  select(FECHA, everything()) %>% 
  select(- DIA_TRANSPORTE)

glimpse()


