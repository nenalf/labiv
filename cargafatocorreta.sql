INSERT IGNORE INTO energia.fato_energia
(`Qtde Coletada`,
`Qtde Programada`,
`Fator de Geração`,
`Tempo_idTempo`, 
`Localidade_idLocalidade`,
`Fonte de Energia_idTipo de Energia`,
`Qtde Verificada`,
`Fato - Energiacol`)

SELECT distinct
st.val_capacidadeinstalada, 
st.val_geracaoprogramada, 
st.val_fatorcapacidade, 
dt.idTempo, 
dl.idLocalidade, 
df.`idTipo de Energia`, 
st.val_geracaoverificada, 
st.`MyUnknownColumn`
from
staging.staging_energia st INNER JOIN  energia.tempo dt on st.ano =  dt.ano and st.mes = dt.Mes
inner join
energia.localidade dl on st.id_estado = dl.estado and st.id_subsistema = dl.Regiao and st.nom_localizacao = dl.Ponto
inner join
energia.fonte_energia df on st.nom_tipousina = df.`Descrição do Tipo`;

