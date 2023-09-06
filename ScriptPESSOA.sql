
 
 -- update para remover espa�os
update PRF.tblAgrupadoPorPessoa
set id = trim(id)


--update para tirar aspas
UPDATE PRF.tblAgrupadoPorPessoa
set dia_semana = replace(dia_semana , '"', ''),
	data_inversa = replace(data_inversa , '"', ''),
	horario = replace(horario , '"', ''),
	uf = replace(uf , '"', ''),
	br = replace(br , '"', ''),
	km = replace(km , '"', ''),
	municipio = replace(municipio , '"', ''),
	causa_acidente = replace(causa_acidente , '"', ''),
	tipo_acidente = replace(tipo_acidente , '"', ''),
	classificacao_acidente = replace(classificacao_acidente , '"', ''),
	fase_dia = replace(fase_dia , '"', ''),
	sentido_via = replace(sentido_via , '"', ''),
	condicao_metereologica = replace(condicao_metereologica , '"', ''),
	tipo_pista = replace(tipo_pista , '"', ''),
	tracado_via = replace(tracado_via , '"', ''),
	uso_solo = replace(uso_solo , '"', ''),
	id_veiculo = replace (id_veiculo, '"', ''),
	tipo_veiculo = replace (tipo_veiculo, '"', ''),
	marca = replace (marca, '"', ''),
	ano_fabricacao_veiculo = replace (ano_fabricacao_veiculo, '"', ''),
	tipo_envolvido = replace (tipo_envolvido, '"', ''),
	estado_fisico = replace (estado_fisico, '"', ''),
	idade = replace(idade , '"', ''),
	sexo = replace (sexo, '"', ''),
	ilesos = replace(ilesos , '"', ''),
	feridos_leves = replace(feridos_leves , '"', ''),
	feridos_graves = replace(feridos_graves , '"', ''),
	mortos = replace(mortos , '"', ''),
	latitude = replace(latitude , '"', ''),
	longitude = replace(longitude , '"', ''),
	regional = replace(regional , '"', ''),
	delegacia = replace(delegacia , '"', ''),
	uop = replace(uop , '"', ''),
	arquivo = replace(arquivo , '"', ''),
	nacionalidade = replace(nacionalidade , '"', ''),
	naturalidade = replace(naturalidade , '"', '')


	--Ajuste das campos Null
	update [PRF].[tblAgrupadoPorPessoa]
	set uf = null,
		br = null,
		km = null
	where uf = '(null)'

	update [PRF].[tblAgrupadoPorPessoa]
	set pesid = null
	where pesid = 'NA'

	update [PRF].[tblAgrupadoPorPessoa]
	set idade = null
	where idade = 'NA' or idade = ''

	update [PRF].[tblAgrupadoPorPessoa]
	set municipio = null
	where municipio = '(null)' or municipio = ''

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = null
	where causa_acidente = '(null)'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Defeito Mecanico no Veiculo'
	where causa_acidente = 'Defeito Mecânico no Veículo'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Fen�menos da Natureza'
	where causa_acidente = 'Fenômenos da Natureza'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Convers�o proibida'
	where causa_acidente = 'Conversão proibida'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Desobedi�ncia das normas de tr�nsito pelo condutor'
	where causa_acidente = 'Desobediência às normas de trânsito pelo condutor'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Rea��o tardia ou ineficiente do condutor'
	where causa_acidente = 'Reação tardia ou ineficiente do condutor'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Aus�ncia de sinaliza��o'
	where causa_acidente = 'Ausência de sinalização'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Ilumina��o deficiente'
	where causa_acidente = 'Iluminação deficiente'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Ilumina��o deficiente'
	where causa_acidente = 'Iluminação deficiente'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Ingest�o de �lcool pelo condutor'
	where causa_acidente = 'Ingestão de álcool pelo condutor' or causa_acidente = 'Ingestão de Álcool'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Fuma�a'
	where causa_acidente = 'Fumaça'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'N�o guardar dist�ncia de seguran�a'
	where causa_acidente = 'Não guardar distância de segurança'
		  
	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Ingest�o de �lcool e/ou subst�ncias psicoativas pelo pedestre'
	where causa_acidente = 'Ingestão de álcool e/ou substâncias psicoativas pelo pedestre' or
		  causa_acidente = 'Ingestão de álcool ou de substâncias psicoativas pelo pedestre'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Mal s�bito'
	where causa_acidente = 'Mal Súbito'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Acostamento em desn�vel'
	where causa_acidente = 'Acostamento em desnível'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Agress�o externa'
	where causa_acidente = 'Agressão Externa'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Condutor desrespeitou a ilumina��o vermelha do sem�foro'
	where causa_acidente = 'Condutor desrespeitou a iluminação vermelha do semáforo'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Sinaliza��o da via insuficiente ou inadequada'
	where causa_acidente = 'Sinalização da via insuficiente ou inadequada'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Aus�ncia de rea��o do condutor'
	where causa_acidente = 'Ausência de reação do condutor'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Ac�mulo de �gua sobre o pavimento'
	where causa_acidente = 'Acumulo de água sobre o pavimento'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Demais falhas mec�nicas ou el�tricas'
	where causa_acidente = 'Demais falhas mecânicas ou elétricas'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Afundamento ou ondula��o no pavimento'
	where causa_acidente = 'Afundamento ou ondulação no pavimento'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Desrespeitar a prefer�ncia no cruzamento'
	where causa_acidente = 'Desrespeitar a preferência no cruzamento'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Acessar a via sem observar a presen�a dos outros ve�culos'
	where causa_acidente = 'Acessar a via sem observar a presença dos outros veículos'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Falta de aten��o � condu��o'
	where causa_acidente = 'Falta de Atenção à Condução'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Mal s�bito do condutor'
	where causa_acidente = 'Mal súbito do condutor'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Defici�ncia ou n�o acionamento do Sistema de Ilumina��o/Sinaliza��o do Ve�culo'
	where causa_acidente = 'Deficiência ou não Acionamento do Sistema de Iluminação/Sinalização do Veículo'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Transitar pela contram�o'
	where causa_acidente = 'Transitar na contramão'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Condutor deixou de manter dist�ncia do ve�culo da frente'
	where causa_acidente = 'Condutor deixou de manter distância do veículo da frente'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Velocidade incompat�vel'
	where causa_acidente = 'Velocidade Incompatível'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Desobedi�ncia das normas de tr�nsito pelo pedestre '
	where causa_acidente = 'Desobediência às normas de trânsito pelo pedestre'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Ingest�o de subst�ncias Psicoativas'
	where causa_acidente = 'Ingestão de Substâncias Psicoativas'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Manobra de mudan�a de faixa'
	where causa_acidente = 'Manobra de mudança de faixa'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Objeto est�tico sobre o leito carro��vel '
	where causa_acidente = 'Objeto estático sobre o leito carroçável'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Restri��o de Visibilidade '
	where causa_acidente = 'Restrição de Visibilidade'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Ac�mulo de �leo sobre o pavimento'
	where causa_acidente = 'Acumulo de óleo sobre o pavimento'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Falta de Aten��o do Pedestre'
	where causa_acidente = 'Falta de Atenção do Pedestre'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_acidente = null
	where tipo_acidente = '(null)' or tipo_acidente = ''

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_acidente = 'Colis�o lateral mesmo sentido'
	where tipo_acidente = 'Colisão lateral mesmo sentido'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_acidente = 'Colis�o lateral sentido oposto'
	where tipo_acidente = 'Colisão lateral sentido oposto'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_acidente = 'Colis�o com objeto em movimento'
	where tipo_acidente = 'Colisão com objeto em movimento'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_acidente = 'Colis�o transversal'
	where tipo_acidente = 'Colisão transversal'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_acidente = 'Colis�o com objeto est�tico'
	where tipo_acidente = 'Colisão com objeto estático'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_acidente = 'Inc�ndio'
	where tipo_acidente = 'Incêndio'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_acidente = 'Colis�o com objeto'
	where tipo_acidente = 'Colisão com objeto'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_acidente = 'Eventos at�picos'
	where tipo_acidente = 'Eventos atípicos'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_acidente = 'Colis�o frontal'
	where tipo_acidente = 'Colisão frontal'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_acidente = 'Queda de ocupante de ve�culo'
	where tipo_acidente = 'Queda de ocupante de veículo'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_acidente = 'Colis�o lateral'
	where tipo_acidente = 'Colisão lateral'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_acidente = 'Sa�da de leito casso��vel'
	where tipo_acidente = 'Saída de leito carroçável'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_acidente = 'Colis�o traseira'
	where tipo_acidente = 'Colisão traseira'

	update [PRF].[tblAgrupadoPorPessoa]
	set classificacao_acidente = null
	where classificacao_acidente = '(null)' or classificacao_acidente = '' or
		  classificacao_acidente = 'Ignorado'

	update [PRF].[tblAgrupadoPorPessoa]
	set classificacao_acidente = 'Sem V�timas'
	where classificacao_acidente = 'Sem Vítimas'

	update [PRF].[tblAgrupadoPorPessoa]
	set classificacao_acidente = 'Com V�timas Fatais'
	where classificacao_acidente = 'Com Vítimas Fatais'

	update [PRF].[tblAgrupadoPorPessoa]
	set classificacao_acidente = 'Com V�timas Feridas'
	where classificacao_acidente = 'Com Vítimas Feridas'

	update [PRF].[tblAgrupadoPorPessoa]
	set fase_dia = null
	where fase_dia = '(null)' or fase_dia = ''

	update [PRF].[tblAgrupadoPorPessoa]
	set sentido_via = null
	where sentido_via = 'Não Informado' or sentido_via = 'N�o Informado'

    update [PRF].[tblAgrupadoPorPessoa]
	set condicao_metereologica = null
	where condicao_metereologica = '(null)'  or condicao_metereologica = ''

	update [PRF].[tblAgrupadoPorPessoa]
	set condicao_metereologica = null
	where condicao_metereologica = 'Ignorado' or condicao_metereologica = 'Ignorada'

	update [PRF].[tblAgrupadoPorPessoa]
	set condicao_metereologica = 'C�u Claro'
	where condicao_metereologica = 'Céu Claro' or condicao_metereologica = 'Ceu Claro'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_pista = null
	where tipo_pista = '(null)' or tipo_pista = ''

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_pista = 'M�ltipla'
	where tipo_pista = 'Múltipla'

	update [PRF].[tblAgrupadoPorPessoa]
	set tracado_via = 'Rotat�ria'
	where tracado_via = 'Rotatória'

	update [PRF].[tblAgrupadoPorPessoa]
	set tracado_via = 'Interse��o de vias'
	where tracado_via = 'Interseção de vias'

	update [PRF].[tblAgrupadoPorPessoa]
	set tracado_via = 'T�nel'
	where tracado_via = 'Túnel'

	update [PRF].[tblAgrupadoPorPessoa]
	set tracado_via = null
	where tracado_via = 'Não Informado' or tracado_via = 'N�o Informado'


	update [PRF].[tblAgrupadoPorPessoa]
	set uso_solo = null
	where uso_solo = '(null)' or uso_solo = ''

	update [PRF].[tblAgrupadoPorPessoa]
	set uso_solo = 'N�o'
	where uso_solo = 'Não'

	  
	update [PRF].[tblAgrupadoPorPessoa]
	set latitude = null
	where latitude = '(null)' or latitude = ''

	update [PRF].[tblAgrupadoPorPessoa]
	set longitude = null
	where longitude = '(null)' or longitude = ''

	update [PRF].[tblAgrupadoPorPessoa]
	set regional = 'N�o Informado'
	where regional = '(null)' or regional = '' or 
		  regional = 'N�o Informado'

	update [PRF].[tblAgrupadoPorPessoa]
	set delegacia = null
	where delegacia = '(null)' or delegacia = ''
	
	update [PRF].[tblAgrupadoPorPessoa]
	set uop = null
	where uop = '(null)' or uop = '' 

	update [PRF].[tblAgrupadoPorPessoa]
	set sexo = 'Feminino'
	where sexo = 'F'

	update [PRF].[tblAgrupadoPorPessoa]
	set sexo = 'Masculino'
	where sexo = 'M'

	update [PRF].[tblAgrupadoPorPessoa]
	set sexo = null
	where sexo = 'Inv�lido'

	update [PRF].[tblAgrupadoPorPessoa]
	set sexo = null
	where sexo = 'NA' or sexo = 'Ignorado' or sexo = 'N�o Informado' or sexo = 'I'
				or sexo = 'NULL' or sexo = 'Não Informado' or sexo = 'Inv�lido'
				or sexo = '(null)' or sexo = '' 

	update [PRF].[tblAgrupadoPorPessoa]
	set estado_fisico = null
	where estado_fisico = '(null)' or estado_fisico = ''

	update [PRF].[tblAgrupadoPorPessoa]
	set marca = null
	where marca = '(null)' or marca = ''

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_veiculo = null
	where tipo_veiculo = '(null)' or tipo_veiculo = ''

	update [PRF].[tblAgrupadoPorPessoa]
	set id = case when id = '1e+05' then '100000'
					when id = '2e+05' then '200000'
					when id = '3e+05' then '300000'
					when id = '4e+05' then '400000' 
			 end
	where id like '%e+05%'
	

	update [PRF].[tblAgrupadoPorPessoa]
	set id_veiculo = null
	where id_veiculo = '(null)' or id_veiculo = '' or id_veiculo = 'NA'

	update [PRF].[tblAgrupadoPorPessoa]
	set tracado_via = null
	where tracado_via = '(null)' or tracado_via = ''

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_envolvido = null
	where tipo_envolvido = 'N�o Informado' or tipo_envolvido = 'Não Informado'

	update [PRF].[tblAgrupadoPorPessoa]
	set estado_fisico = null
	where estado_fisico = 'Ignorado' or estado_fisico = 'N�o Informado' or
		  estado_fisico = 'Não Informado'

	update [PRF].[tblAgrupadoPorPessoa]
	set estado_fisico = 'Les�es Leves'
	where estado_fisico = 'Lesões Leves'

	update [PRF].[tblAgrupadoPorPessoa]
	set estado_fisico = 'Les�es Graves'
	where estado_fisico = 'Lesões Graves'

	update [PRF].[tblAgrupadoPorPessoa]
	set estado_fisico = '�bito'
	where estado_fisico = 'Óbito'

	update [PRF].[tblAgrupadoPorPessoa]
	set sentido_via = null
	where sentido_via = '(null)' or sentido_via = ''

	update [PRF].[tblAgrupadoPorPessoa]
	set nacionalidade = null
	where nacionalidade = 'NA' or nacionalidade = 'N�o Informado'

	update [PRF].[tblAgrupadoPorPessoa]
	set naturalidade = null
	where naturalidade = 'NA' or naturalidade = 'N�o Informado'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_veiculo = 'Autom�vel'
	where tipo_veiculo = 'Automóvel'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_veiculo = 'Carro�a/Charrete'
	where tipo_veiculo = 'Carroça-charrete' or tipo_veiculo = 'Carro�a-charrete' or
		  tipo_veiculo = 'Carro�a' or tipo_veiculo = 'Charrete'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_veiculo = null
	where tipo_veiculo = 'N�o Informado' or tipo_veiculo = 'Não Informado'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_veiculo = 'Caminh�o'
	where tipo_veiculo = 'Caminhão'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_veiculo = 'Micro-�nibus'
	where tipo_veiculo = 'Micro-ônibus' or tipo_veiculo = 'Micro�nibus'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_veiculo = 'Caminh�o-Trator'
	where tipo_veiculo = 'Caminhão-trator'
	
	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_veiculo = 'Carro de m�o'
	where tipo_veiculo = 'Carro de mão' or tipo_veiculo = 'Carro-de-mao'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_veiculo = 'Utilit�rio'
	where tipo_veiculo = 'Utilitário'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_veiculo = '�nibus'
	where tipo_veiculo = 'Ônibus'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_veiculo = 'Semi-reboque'
	where tipo_veiculo = 'Semireboque'


	--Ajuste dos dias da semana
	update   [PRF].[tblAgrupadoPorPessoa]
	SET dia_semana = case	when dia_semana = 'domingo'													then 'Domingo'
									when dia_semana = 'Segunda'	or dia_semana =	'segunda-feira'	then 'Segunda-Feira' 
									when dia_semana = 'Ter�a'		or dia_semana =	'ter�a-feira'		then 'Ter�a-Feira' 
									when dia_semana = 'Quarta'		or dia_semana =	'quarta-feira'		then 'Quarta-Feira' 
									when dia_semana = 'Quinta'		or dia_semana =	'quinta-feira'		then 'Quinta-Feira' 
									when dia_semana = 'Sexta'		or dia_semana =	'sexta-feira'		then 'Sexta-Feira' 
									when dia_semana = 'S�bado'														then 'S�bado' 
							end

							
--INCIO ALTER TABLE 
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		id								int 
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		pesid							int 		
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		data_inversa					date		
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		dia_semana						varchar(15)		
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		horario							time(0)				
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		uf								varchar(2)		
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		br								varchar(3)		
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		km								varchar(6)
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		municipio						varchar(50)
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		causa_acidente				    varchar(100)
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		tipo_acidente					varchar(50)
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		classificacao_acidente			varchar(20)		
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		fase_dia						varchar(15)		
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		sentido_via						varchar(15)
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		condicao_metereologica			varchar(20)
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		tipo_pista						varchar(15)	
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		tracado_via						varchar(25)		
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		uso_solo						varchar(10)
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		id_veiculo						int
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		tipo_veiculo					varchar(20)
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		marca							varchar(50)
alter table [PRF].[tblAgrupadoPorPessoa]	drop column		   ano_fabricacao_veiculo			
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		tipo_envolvido					varchar(50)
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		estado_fisico					varchar (50)
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		idade							int 
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		sexo							varchar(10)
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		feridos_leves					int
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		feridos_graves					int
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		ilesos							int
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		mortos							int
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		latitude						varchar(100)
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		longitude						varchar(100)
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		regional						varchar(20)
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		delegacia						varchar (15)
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		uop								varchar(15)		
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		arquivo							varchar(50)
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		nacionalidade					varchar(30)
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		naturalidade					varchar(35)
--FIM ALTER TABLE

-- RODAR DEPOIS ALTERAR PARA A IDADE DE VARCHAR PARA INT
update[PRF].[tblAgrupadoPorPessoa]
set idade = null
where idade > 120
