class Github < Source
  def self.authorize!(current_user, params)
    # request access token from github
    response = Net::HTTP.post_form(
      URI.parse('https://github.com/login/oauth/access_token'), {
        client_id: Rails.application.secrets[:github_client_id],
        client_secret: Rails.application.secrets[:github_client_secret],
        code: params["code"],
        accept: :json
      }
    )
    # parse the response body for credentials to save as json
    credentials = response.body.split('&').inject({}) do |memo, uri_parameter|
      config_option_pair = uri_parameter.split("=")
      memo[config_option_pair[0]] = config_option_pair[1]
      memo
    end

    if credentials["access_token"]
      Github.create(credentials: credentials.to_json, user: current_user)
    end
  end

  def self.notifications
    @response = Net::HTTP.get "https://api.github.com/notifications?access_token=#{credentials['access_token']}"
  end
end
