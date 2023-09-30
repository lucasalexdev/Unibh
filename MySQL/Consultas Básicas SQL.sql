USE pokedex
SHOW COLUMNS FROM pokemon;

SELECT * FROM pokemon;

SELECT * FROM pokemon WHERE geracao = 1 AND cor = "Amarelo";

SELECT numero, nome, tipo1 FROM pokemon WHERE tipo1 = 'Fire';

SELECT nome, ataque FROM pokemon ORDER BY ataque DESC LIMIT 1;

SELECT numero, nome, defesa FROM pokemon ORDER BY defesa DESC;

SELECT numero, nome FROM pokemon ORDER BY taxa_de_captura LIMIT 1;

SELECT numero, nome FROM pokemon ORDER BY numero DESC;

SELECT numero, nome FROM pokemon WHERE tipo2 IS NULL;

SELECT numero, nome, tipo1, tipo2 FROM pokemon WHERE peso_kg BETWEEN 100 AND 500;

SELECT numero, nome, velocidade FROM pokemon ORDER BY velocidade DESC LIMIT 10;

SELECT numero, nome, tipo1, tipo2 FROM pokemon WHERE tipo1 IS NOT NULL AND tipo2 IS NOT NULL AND numero > 100 ORDER BY numero DESC;

SELECT DISTINCT tipo1 FROM pokemon;

SELECT numero, nome, cor FROM pokemon WHERE nome LIKE 'D%';

SELECT numero, nome, ataque FROM pokemon ORDER BY ataque DESC LIMIT 1;

SELECT numero, nome, defesa, ataque, (defesa + ataque) AS total FROM pokemon WHERE defesa > 60 AND ataque <= 70 ORDER BY total DESC;

SELECT numero, nome, tipo1, tipo2 FROM pokemon WHERE (tipo1 = 'Planta' OR tipo2 = 'Planta') AND (tipo1 = 'Venenoso' OR tipo2 = 'Venenoso') AND nome != 'Green' ORDER BY nome ASC;

SELECT nome FROM pokemon WHERE SUBSTRING(nome, 4, 1) = 'y' ORDER BY nome ASC;

SELECT MAX(ataque_especial) FROM pokemon;

SELECT numero, nome, altura_m FROM pokemon WHERE altura_m > 2.10;

SELECT DISTINCT cor FROM pokemon ORDER BY cor ASC;

SELECT nome, velocidade FROM pokemon WHERE velocidade BETWEEN 30 AND 70 ORDER BY nome ASC, velocidade DESC;

SELECT numero, nome, total FROM pokemon WHERE lendario = 1 ORDER BY total DESC;

SELECT numero, nome FROM pokemon WHERE geracao = 1 AND numero = 255;

SELECT numero, nome, total FROM pokemon WHERE nome IN ('Pikachu', 'Squirtle', 'Bulbasaur', 'Charmander') ORDER BY total DESC;

SELECT numero, nome, total FROM pokemon ORDER BY total DESC LIMIT 1

SELECT numero, nome, tipo1, tipo2, total, taxa_captura FROM pokemon WHERE geracao = 1 AND nome LIKE 'D%' AND tipo2 IS NULL ORDER BY taxa_captura ASC, total DESC;

SELECT numero, nome, tipo1, tipo2, taxa_captura FROM pokemon WHERE tipo1 IS NOT NULL AND tipo2 IS NOT NULL AND taxa_captura > 100 ORDER BY taxa_captura DESC;

SELECT numero, nome, taxa_captura FROM pokemon ORDER BY taxa_captura ASC;

SELECT numero, nome, taxa_captura FROM pokemon WHERE geracao = 1 AND taxa_captura = 255;

SELECT numero, nome, total, taxa_captura FROM pokemon WHERE lendario = 1 ORDER BY taxa_captura DESC, total DESC LIMIT 5;

SELECT numero, nome, peso_kg FROM pokemon WHERE peso_kg BETWEEN 2 AND 3;

SELECT numero, nome, tipo1, tipo2 FROM pokemon WHERE tipo1 = 'Normal' AND tipo2 IS NULL AND lendario = 0;

SELECT numero, nome, tipo1, tipo2, cor FROM pokemon WHERE tipo1 = 'Water' AND cor != 'Blue' ORDER BY nome ASC;

SELECT numero, nome, velocidade FROM pokemon ORDER BY velocidade ASC LIMIT 10;

SELECT numero, nome FROM pokemon WHERE nome LIKE 'a%a';

SELECT numero, nome, tipo1, tipo2, cor FROM pokemon WHERE tipo1 = 'Fire' AND cor != 'Red' ORDER BY nome ASC;

SELECT DISTINCT peso_kg FROM pokemon ORDER BY peso_kg ASC;

SELECT numero, nome, hp FROM pokemon WHERE hp BETWEEN 0 AND 100 ORDER BY hp ASC, nome ASC;

SELECT numero, nome, hp, ataque, defesa, total FROM pokemon WHERE hp >= 100 AND ataque >= 100 AND defesa >= 100;

SELECT numero, nome, total FROM pokemon WHERE tipo1 = 'Water' OR tipo2 = 'Water' OR tipo1 = 'Gelo' OR tipo2 = 'Gelo' ORDER BY total DESC;

SELECT MAX(total) AS max_total, MIN(total) AS min_total FROM pokemon;

SELECT MAX(hp) AS max_hp, MIN(hp) AS min_hp FROM pokemon;

SELECT MAX(ataque) AS max_ataque, MIN(ataque) AS min_ataque FROM pokemon;

SELECT MAX(defesa) AS max_defesa, MIN(defesa) AS min_defesa FROM pokemon;

SELECT MAX(ataque_especial) AS max_ataque_especial, MIN(ataque_especial) AS min_ataque_especial FROM pokemon;

SELECT MAX(defesa_especial) AS max_defesa_especial, MIN(defesa_especial) AS min_defesa_especial FROM pokemon;

SELECT MAX(velocidade) AS max_velocidade, MIN(velocidade) AS min_velocidade FROM pokemon;

SELECT MAX(taxa_captura) AS max_taxa_captura, MIN(taxa_captura) AS min_taxa_captura FROM pokemon;

SELECT COUNT(DISTINCT cor) AS total_cores FROM pokemon;

SELECT AVG(peso_kg) AS peso_medio FROM pokemon;

SELECT SUM(altura_m) AS soma_alturas FROM pokemon;

SELECT COUNT(*) AS total_pokemons FROM pokemon;

SELECT AVG(altura_m) AS altura_media FROM pokemon;

SELECT STDDEV(hp) AS desvio_padrao_hp FROM pokemon;

SELECT COUNT(*) AS total_pokemon_com_tipo2 FROM pokemon WHERE tipo2 IS NOT NULL;

SELECT COUNT(DISTINCT tipo1) AS total_tipos_primários FROM pokemon;

SELECT SUM(peso_kg) AS soma_pesos FROM pokemon;

SELECT lendario, COUNT(*) AS quantidade FROM pokemon GROUP BY lendario;

SELECT cor, COUNT(*) AS quantidade FROM pokemon GROUP BY cor ORDER BY quantidade DESC;

SELECT cor, AVG(taxa_captura) AS taxa_captura_media FROM pokemon WHERE lendario = 1 GROUP BY cor;

SELECT tipo1, AVG(taxa_captura) AS taxa_captura_media FROM pokemon GROUP BY tipo1 HAVING AVG(taxa_captura) > 100;

SELECT cor, AVG(total) AS media_total FROM pokemon WHERE lendario = 0 GROUP BY cor HAVING AVG(total) < 400;

SELECT geracao, COUNT(*) AS quantidade_lendários FROM pokemon WHERE lendario = 1 GROUP BY geracao;

SELECT geracao, COUNT(*) AS quantidade_pokemons, AVG(taxa_captura) AS taxa_captura_media FROM pokemon WHERE tipo1 IS NOT NULL AND tipo2 IS NOT NULL GROUP BY geracao;

SELECT geracao, cor, COUNT(DISTINCT cor) AS quantidade_cores_lendárias FROM pokemon WHERE lendario = 1 GROUP BY geracao, cor;











