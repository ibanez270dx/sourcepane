# Your GitHub Applications Credentials
options =
  client_id: 'your_client_id'
  client_secret: 'your_client_secret'
  scopes: [
    'user:email'
    'notifications'
  ]
# Build the OAuth consent page URL
authWindow = new BrowserWindow(
  width: 800
  height: 600
  show: false
  'node-integration': false)
githubUrl = 'https://github.com/login/oauth/authorize?'
authUrl = githubUrl + 'client_id=' + options.client_id + '&scope=' + options.scopes

handleCallback = (url) ->
  raw_code = /code=([^&]*)/.exec(url) or null
  code = if raw_code and raw_code.length > 1 then raw_code[1] else null
  error = /\?error=(.+)$/.exec(url)
  if code or error
    # Close the browser if code found or error
    authWindow.destroy()
  # If there is a code, proceed to get token from github
  if code
    self.requestGithubToken options, code
  else if error
    alert 'Oops! Something went wrong and we couldn\'t' + 'log you in using Github. Please try again.'
  return

authWindow.loadUrl authUrl
authWindow.show()
# Handle the response from GitHub - See Update from 4/12/2015
authWindow.webContents.on 'will-navigate', (event, url) ->
  handleCallback url
  return
authWindow.webContents.on 'did-get-redirect-request', (event, oldUrl, newUrl) ->
  handleCallback newUrl
  return
# Reset the authWindow on close
authWindow.on 'close', (->
  authWindow = null
  return
), false
