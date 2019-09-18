module Contato
    include HTTParty
    #url base de contato 
    base_uri 'https://api-de-tarefas.herokuapp.com'
    
    #opções dos meus services 
    format :json
    headers Accept: 'application/vnd.taskmanager.v2',
                    'Content-Type': 'application/json'
end


#toda vez que chamar o modulo a url padrão sera a colocada na base_uri
# ele tera o header com as opções do headers 

