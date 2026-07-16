# 🚚 Análise de Eficiência Logística no E-commerce (SQL)

## 📌 Sobre o Projeto
Projeto prático de Business Intelligence focado em Supply Chain e Nível de Serviço (SLA) no varejo online. O objetivo foi analisar o histórico de entradas de diferentes transportadores para identificar a raiz de ataques sistêmicos e propor uma solução de roteamento que zerasse a ineficiência sem a necessidade de trocar de fornecedores.

## 🛠️ Ferramentas e Técnicas Utilizadas
* **Modelagem Relacional:** Estruturação de tabelas conectando Entregas e Transportadoras (`JUNÇÃO INTERNA`).
* **Lógica Profissional Avançada:** Uso de `CASO QUANDO` combinado com funções de agregação (`SOMA`, `MÉDIA`) para criar "bandeiras" de atraso diretamente no banco de dados.
* **Manipulação de Dados:** Cálculo exato de dias de atraso utilizando a função matemática `JULIANDAY` (SQLite).

## 📊 Principais Insights de Negócio
A consulta SQL revelou um forte padrão de eficiência regional invisível a olho nu:
* A **Transportadora A** possui SLA perfeito (0 atrasos) no Sudeste, mas apresentada uma média crítica de 5 dias de atraso na região Nordeste.
* A **Transportadora B** possui o comportamento oposto: entradas pontuais no Nordeste, mas atrasos frequentes no Sudeste.
* **Decisão Estratégica Sugerida:** Implementar uma regra de rotação no sistema de checkout dirigindo automaticamente os pedestres do Sudeste para a Transportadora A e os do Nordeste para a Transportadora B, zerando os atrasos da operação.


