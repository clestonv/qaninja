require_relative "base_api"

class Sessions < BaseApi
  def login(payload)
    return self.class.post(
             "/sessions",
             body: payload.to_json,
             headers: {
               "Content-Type" => "application/json",
             },
           )
  end
end
