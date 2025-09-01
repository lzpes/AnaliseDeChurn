# Análise de Churn de Clientes

**Status:** Concluído ✔️

## 1. Contexto de Negócio

Este projeto simula um desafio real de Business Intelligence em uma empresa de telecomunicações, focando na análise da **taxa de cancelamento de clientes (Churn)**. O objetivo foi identificar os principais fatores que contribuem para a perda de clientes e traduzir esses dados em insights acionáveis, permitindo que a empresa desenvolva estratégias de retenção mais eficazes.

---

## 2. Ferramentas e Tecnologias

* **Linguagem:** `SQL`
* **Banco de Dados:** `PostgreSQL`
* **Ferramenta de BI:** `Power BI`
* **Linguagem de Fórmulas:** `DAX`
* **IDE:** `DBeaver`

---

## 3. Processo e Metodologia

O projeto foi desenvolvido seguindo um fluxo de trabalho completo, desde a preparação dos dados até a apresentação final.

* **ETL (Extração, Transformação e Carga):** Os dados brutos foram carregados em um banco de dados PostgreSQL. Nesta etapa, foram realizados processos de limpeza para tratar inconsistências, como valores numéricos representados por strings vazias ou espaços, garantindo a integridade dos dados para a análise.

* **Análise Exploratória com SQL:** Utilizando SQL, foram feitas as primeiras investigações para entender a estrutura dos dados e formular hipóteses sobre os principais drivers de churn, como tipo de contrato, método de pagamento e perfil demográfico.

* **Desenvolvimento do Dashboard em Power BI:** Foi construído um dashboard interativo de duas páginas para apresentar os resultados de forma clara e intuitiva para uma audiência de negócios. Medidas complexas, como a **Taxa de Churn** e a **Receita Mensal Perdida**, foram criadas com DAX para enriquecer a análise.

---

## 4. Dashboard e Principais Insights
## Página 1: Visão Geral

<img width="1245" height="691" alt="Captura de tela 2025-09-01 110526" src="https://github.com/user-attachments/assets/92b7d0fe-cd20-41b0-b6a6-23edd00090c2" />


## Principais Insights:

Taxa de Churn Alarmante: A empresa apresenta uma taxa de churn geral de 26,54%, um número que exige atenção imediata, pois representa a perda de mais de um quarto da base de clientes e impacta diretamente a receita.

O Perfil de Risco Contratual: A análise revela que o tipo de contrato e o método de pagamento são os preditores mais fortes de churn. Clientes com contratos mensais (Month-to-month) e que pagam via cheque eletrônico (Electronic check) formam o segmento de maior risco.

Vulnerabilidade dos Idosos: Clientes idosos (Senior Citizens) apresentam uma taxa de churn drasticamente superior à dos clientes mais jovens. Embora representem uma parcela menor da base total, a propensão ao cancelamento dentro deste grupo é desproporcionalmente alta, indicando possíveis problemas de usabilidade, comunicação ou adequação do produto para este público.

## Página 2: Análise de Perfil do Cliente
<img width="1277" height="714" alt="image" src="https://github.com/user-attachments/assets/06860dda-6676-4949-865e-d11a686d075a" />


## Principais Insights:

A grande maioria dos cancelamentos ocorre logo nos primeiros meses de serviço. A retenção aumenta significativamente à medida que o tempo de contrato (tenure) avança, evidenciando que o período de onboarding e as primeiras experiências são absolutamente críticos para a fidelização.

Sensibilidade ao Preço nos Primeiros Meses: O gráfico de dispersão mostra uma forte concentração de churn entre clientes com mensalidades mais altas e pouco tempo de contrato. Isso sugere que clientes novos podem não perceber o valor do serviço rápido o suficiente para justificar o custo mensal.

## 5. Recomendações Estratégicas
Com base na análise completa, as seguintes ações são recomendadas para a área de negócio:

## Para o Problema dos Contratos Mensais:

Ação: Criar incentivos claros (descontos, benefícios exclusivos) para a migração de clientes do plano mensal para contratos anuais ou bianuais, aumentando a barreira de saída e a estabilidade da receita.

## Para o Problema dos Clientes Idosos:

Ação: Realizar uma análise de usabilidade (UX) focada neste público. Simplificar a interface de pagamento, oferecer canais de suporte mais tradicionais (como telefone) e criar materiais de comunicação direcionados pode reduzir o atrito e aumentar a retenção deste segmento valioso.

## Para o Problema do Onboarding (Primeiros Meses):

Ação: Desenvolver um programa de engajamento proativo para os primeiros 90 dias. Isso pode incluir tutoriais, contato de um gerente de sucesso e ofertas personalizadas para garantir que o cliente extraia o máximo valor do serviço logo no início de sua jornada.

## Para o Problema do Método de Pagamento:

Ação: Incentivar ativamente a migração de clientes que usam "Cheque Eletrônico" para métodos de pagamento automáticos e mais seguros (Cartão de Crédito, Débito Automático), que historicamente possuem taxas de retenção muito superiores
