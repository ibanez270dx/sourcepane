class Github < Authorization
  def self.authorize!(current_user, params)
    response = Net::HTTP.post_form(
      URI.parse('https://github.com/login/oauth/access_token'), {
        client_id: Rails.application.secrets[:github_client_id],
        client_secret: Rails.application.secrets[:github_client_secret],
        code: params["code"],
        accept: :json
      }
    )
    credentials = response.body.split('&').inject({}) do |memo, uri_parameter|
      config_option_pair = uri_parameter.split("=")
      memo[config_option_pair[0]] = config_option_pair[1]
      memo
    end

    Github.create(credentials: credentials.to_json, user_id: current_user.id)
  end
end
