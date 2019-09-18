describe 'fazer requisição' do
    it 'post' do
        @body = {
            "name": "Isabela Teste",
            "last_name": "teste",
            "email": "isa.bela2@gmail.com",
            "age": "24",
            "phone": "16998778182",
            "address": "R Bahia",
            "state": "Sao Paulo",
            "city": "Araraquara"
         }.to_json

        # @headers = {
        #    "Accept": 'application/vnd.taskmanager.v2',
        #    'Content-Type': 'application/json'
        # }

        # @request = HTTParty.post('https://api-de-tarefas.herokuapp.com/contacts', body: @body, headers: @headers)
        #puts @request

        @request = Contato.post('/contacts', body: @body)
        puts @request

        end 

    end