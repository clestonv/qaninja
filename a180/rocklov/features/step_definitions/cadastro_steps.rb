Dado('que acesso a página de cadastro') do
    @signup_page.open
end

Quando('submete o seguinte formulário de cadastro:') do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    user = table.hashes.first
    
    MongoDB.new.remove_user(user[:email])

    @signup_page.create(user)

end