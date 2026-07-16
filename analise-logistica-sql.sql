SELECT 
    t.Nome_Transportadora,
    e.Estado_Destino,
    COUNT(e.ID_Pedido) AS Total_Pedidos,
    
    -- Conta quantos pedidos atrasaram
    SUM(CASE WHEN e.Data_Entrega > e.Data_Prometida THEN 1 ELSE 0 END) AS Pedidos_Atrasados,
    
    -- Calcula a média de dias de atraso (ignorando os que chegaram no prazo)
    ROUND(AVG(
        CASE 
            WHEN e.Data_Entrega > e.Data_Prometida 
            THEN JULIANDAY(e.Data_Entrega) - JULIANDAY(e.Data_Prometida) 
            ELSE 0 
        END
    ), 1) AS Media_Dias_Atraso

FROM Entregas e
INNER JOIN Transportadoras t ON e.ID_Transportadora = t.ID_Transportadora
GROUP BY t.Nome_Transportadora, e.Estado_Destino
ORDER BY Pedidos_Atrasados DESC;