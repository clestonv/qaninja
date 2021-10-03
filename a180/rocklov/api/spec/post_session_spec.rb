require_relative "routes/sessions"
require_relative "helpers"

# DRY Don`t Repeat Yourself => Não Repita

describe "POST /sessions" do
  context "Login com sucesso" do
    before(:all) do
      payload = { email: "betao@yahoo.com", password: "pwd123" }
      @result = Sessions.new.login(payload)
    end

    it "Valida status code" do
      expect(@result.code).to eql 200
    end

    it "Valida id do usuário" do
      expect(@result.parsed_response["_id"].length).to eql 24
    end
  end

  examples = Helpers::get_fixtures("login")

  examples.each do |e|
    context "Tentar logar" do
      before(:all) do
        @result = Sessions.new.login(e[:payload])
      end

      it "Valida status code" do
        expect(@result.code).to eql e[:code]
      end
      it "Valida id do usuário" do
        expect(@result.parsed_response["error"]).to eql e[:error]
      end
    end
  end
end
