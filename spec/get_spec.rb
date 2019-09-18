

describe 'fazer uma requisição' do
    it 'get' do
        #se a gente nao usasse o modulo chamaria o httparty com o get assim:
        #@primeira_opcao = HTTParty.get('https://api-de-tarefas.herokuapp.com/contacts/1131')
        #puts @primeira_opcao

        @melhor_opcao = Contato.get('/contacts/1199')
        puts @melhor_opcao
        puts @melhor_opcao.code
        expect(@melhor_opcao.code).to eq 200

        puts @melhor_opcao.parsed_response['data'] ['attributes'] ['name']
        expect(@melhor_opcao.parsed_response['data'] ['attributes'] ['name']).to eq 'Isabela Teste 28'
    end
end