describe 'fazer requisição' do
    context 'para alterar dados' do

   

        it 'put' do
            @body_put = {
                "id": 1199,
                "name": "Isabela Teste 28",
                "last_name": "teste 28",
                "email": "isa.bela28@gmail.com",
                "age": "24",
                "phone": "16998778182",
                "address": "R Bahia",
                "state": "Sao Paulo",
                "city": "Araraquara"
    
            }.to_json
    
        @requisicao_put = Contato.put('/contacts/1199', body: @body_put)
        puts @requisicao_put
        
    end

    it 'patch' do
        @body_patch = {
            "id": 1131,
            "name": "Isabela Teste 30",
            "last_name": "teste 30 ",
            "email": "isa.bela30@gmail.com"

        }.to_json

       @requisicao_patch = Contato.patch('/contacts/1131', body: @body_patch) 
       puts @requisicao_patch
    end
      
    end
  
end