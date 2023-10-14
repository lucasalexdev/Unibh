USE bd_estacionamento;

SELECT * FROM historico_estacionamento;

SELECT * FROM veiculo;

SELECT * FROM usuario;

SELECT veiculo.placa, veiculo.ano_fabricacao, veiculo.id_tipo_veiculo
FROM veiculo, historico_estacionamento
WHERE veiculo.renavam = historico_estacionamento.renavam

SELECT veiculo.placa, marca.nome_marca, veiculo.ano_fabricacao
FROM veiculo, historico_estacionamento, marca
WHERE veiculo.renavam = historico_estacionamento.renavam
  AND veiculo.id_marca = marca.id_marca
ORDER BY veiculo.ano_fabricacao;

SELECT u.id_usuario, u.nome, u.sobrenome, u.id_sexo, u.telefone, t.papel
FROM usuario u, tipo_usuario t
WHERE u.id_tipo_usuario = t.id_tipo_usuario
ORDER BY u.nome;

SELECT * FROM cartao_estacionamento;

SELECT u.id_usuario, u.nome, u.sobrenome, u.cpf, c.*
FROM usuario u, cartao_estacionamento c
WHERE u.id_usuario = c.id_usuario;

SELECT v.renavam, v.placa, v.chassi, m.nome_marca, mo.nome_modelo, v.ano_fabricacao
FROM veiculo v, marca m, modelo mo
WHERE v.id_marca = m.id_marca
  AND v.id_modelo = mo.id_modelo
ORDER BY v.ano_fabricacao DESC;

SELECT v.renavam, v.placa, v.chassi, m.nome_marca, mo.nome_modelo, c.nome_cor, v.id_tipo_veiculo, v.ano_fabricacao
FROM veiculo v
JOIN marca m ON v.id_marca = m.id_marca
JOIN modelo mo ON v.id_modelo = mo.id_modelo
JOIN cor c ON v.id_cor = c.id_cor
JOIN tipo_veiculo tv ON v.id_tipo_veiculo = tv.id_tipo_veiculo
ORDER BY v.ano_fabricacao DESC;

SELECT mo.id_modelo, m.nome_marca, mo.nome_modelo, co.tipo_combustivel
FROM modelo mo
JOIN marca m ON mo.id_marca = m.id_marca
JOIN combustivel co ON mo.id_combustivel = co.id_combustivel;


SELECT e.nome_estacionamento, he.renavam, he.data_hora_entrada, he.data_hora_saida
FROM estacionamento e
LEFT JOIN historico_estacionamento he ON e.id_estacionamento = he.id_estacionamento;

SELECT e.nome_estacionamento, AVG(he.permanencia) AS media_permanencia
FROM estacionamento e
LEFT JOIN historico_estacionamento he ON e.id_estacionamento = he.id_estacionamento
GROUP BY e.nome_estacionamento;


SELECT mo.id_modelo, mo.nome_modelo, m.nome_marca, c.tipo_combustivel
FROM modelo mo 
JOIN marca m ON mo.id_marca = m.id_marca
JOIN tipo_combustivel tc ON mo.id_modelo = tc.id_modelo
JOIN combustivel c ON tc.id_combustivel = c.id_combustivel

SELECT e.nome_estacionamento, COUNT(he.id_estacionamento) AS total_veiculos_estacionados
FROM estacionamento e
LEFT JOIN historico_estacionamento he ON e.id_estacionamento = he.id_estacionamento
GROUP BY e.nome_estacionamento;


SELECT u.id_usuario, u.nome, u.sobrenome, u.telefone, tu.papel, v.placa, v.chassi, p.data_inicio, p.data_fim
FROM usuario u
JOIN propriedade p ON u.id_usuario = p.id_usuario
JOIN veiculo v ON p.renavam = v.renavam
JOIN tipo_usuario tu ON u.id_tipo_usuario = tu.id_tipo_usuario;

USE bd_estacionamento; -- Certifique-se de estar usando o banco de dados correto

SELECT v.renavam, v.placa, v.chassi, m.nome_marca, mo.nome_modelo, mo.lugares, mo.portas, c.nome_cor, t.tipo_transmissao, tr.tipo_tracao, 'Tipo de Veículo' AS tipo_veiculo, cm.categoria, 'Tipo de Combustível' AS tipo_combustivel, mo.ano_modelo, v.ano_fabricacao
FROM veiculo v
JOIN marca m ON v.id_marca = m.id_marca
JOIN modelo mo ON v.id_modelo = mo.id_modelo
JOIN cor c ON v.id_cor = c.id_cor
JOIN transmissao t ON mo.id_transmissao = t.id_transmissao
JOIN tracao tr ON mo.id_tracao = tr.id_tracao
JOIN categoria_modelo cm ON mo.id_categoria = cm.id_categoria;

SELECT tv.tipo
FROM tipo_veiculo tv
LEFT JOIN veiculo v ON tv.id_tipo_veiculo = v.id_tipo_veiculo
WHERE v.id_tipo_veiculo IS NULL;

SELECT tv.*, v.*, he.*
FROM tipo_veiculo tv
LEFT JOIN veiculo v ON tv.id_tipo_veiculo = v.id_tipo_veiculo
LEFT JOIN historico_estacionamento he ON v.renavam = he.renavam;

SELECT tv.tipo
FROM tipo_veiculo tv
LEFT JOIN veiculo v ON tv.id_tipo_veiculo = v.id_tipo_veiculo
LEFT JOIN historico_estacionamento he ON v.renavam = he.renavam
WHERE he.id_estacionamento IS NULL;

SELECT c.*, v.*
FROM cor c
LEFT JOIN veiculo v ON c.id_cor = v.id_cor
ORDER BY c.nome_cor;

SELECT tc.*
FROM tipo_combustivel tc
RIGHT JOIN modelo mo ON tc.id_modelo = mo.id_modelo
WHERE mo.id_modelo IS NULL;

SELECT mo.*, tc.*, c.*
FROM modelo mo
RIGHT JOIN tipo_combustivel tc ON mo.id_modelo = tc.id_modelo
RIGHT JOIN combustivel c ON tc.id_combustivel = c.id_combustivel;

SELECT m.nome_marca, m.website
FROM marca m
RIGHT JOIN veiculo v ON m.id_marca = v.id_marca
WHERE v.id_marca IS NULL;

SELECT u.id_usuario, u.id_tipo_usuario, u.nome, u.sobrenome, u.id_sexo, u.telefone, v.placa, he.data_hora_entrada, he.data_hora_saida
FROM usuario u
INNER JOIN propriedade p ON u.id_usuario = p.id_usuario
INNER JOIN veiculo v ON p.renavam = v.renavam
LEFT JOIN historico_estacionamento he ON v.renavam = he.renavam
WHERE he.data_hora_saida IS NULL;

SELECT u.id_usuario, u.id_tipo_usuario, u.nome, u.sobrenome, u.id_sexo, u.telefone, v.placa
FROM usuario u
INNER JOIN propriedade p ON u.id_usuario = p.id_usuario
INNER JOIN veiculo v ON p.renavam = v.renavam
WHERE SUBSTRING(v.placa, -1) = '5';

SELECT U.id_usuario, U.id_tipo_usuario, U.nome, U.sobrenome, U.id_sexo, U.telefone, V.placa, HE.data_hora_entrada, HE.data_hora_saida
FROM Usuario U
NATURAL JOIN Veiculo V
LEFT JOIN Historico_Estacionamento HE ON V.renavam = HE.renavam
WHERE HE.data_hora_saida IS NULL AND HE.data_hora_entrada IS NOT NULL;

