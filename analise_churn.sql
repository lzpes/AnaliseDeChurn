-- ====================================================================
-- ETAPA 1: LIMPEZA E TRANSFORMAÇÃO DA COLUNA 'totalcharges'
-- ====================================================================

-- A coluna 'totalcharges' foi importada como VARCHAR para evitar erros de carga
-- com valores não numéricos. Os comandos abaixo limpam e convertem a coluna.

-- Passo 1.1: Converte valores que são um espaço em branco (' ') para NULO.
UPDATE public.churn_data
SET totalcharges = NULL
WHERE totalcharges = ' ';

-- Passo 1.2: Converte valores que são uma string vazia ('') para NULO.
UPDATE public.churn_data
SET totalcharges = NULL
WHERE totalcharges = '';

-- Passo 1.3: Altera o tipo da coluna de VARCHAR para NUMERIC.
-- O cast `::numeric` é usado para fazer a conversão explícita.
ALTER TABLE public.churn_data
ALTER COLUMN totalcharges TYPE NUMERIC USING totalcharges::numeric;


-- ====================================================================
-- ETAPA 2: ANÁLISE EXPLORATÓRIA DE DADOS (AED)
-- ====================================================================

-- Pergunta 1: Qual a contagem total de clientes e a proporção de churn?
SELECT
    churn,
    COUNT(customerid) AS total_clientes
FROM
    public.churn_data
GROUP BY
    churn;

-- Pergunta 2: Como o perfil demográfico (gênero, idade) se relaciona com o churn?
SELECT
    gender,
    seniorcitizen,
    churn,
    COUNT(customerid) AS total_clientes
FROM
    public.churn_data
GROUP BY
    gender,
    seniorcitizen,
    churn
ORDER BY
    gender,
    seniorcitizen,
    churn;

-- Pergunta 3: Qual a influência do tipo de contrato e método de pagamento?
SELECT
    contract,
    paymentmethod,
    churn,
    COUNT(customerid) AS total_clientes
FROM
    public.churn_data
GROUP BY
    contract,
    paymentmethod,
    churn
ORDER BY
    contract,
    total_clientes DESC;

-- Pergunta 4: Qual a média de meses de contrato e mensalidade para cada grupo de churn?
-- É necessário fazer o cast para NUMERIC antes de usar a função ROUND com duas casas decimais.
SELECT
    churn,
    ROUND(AVG(tenure)::NUMERIC, 1) AS media_meses_contrato,
    ROUND(AVG(monthlycharges)::NUMERIC, 2) AS media_mensalidade
FROM
    public.churn_data
GROUP BY
    churn;