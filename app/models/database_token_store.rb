require 'googleauth'
require 'googleauth/token_store'

class DatabaseTokenStore < Google::Auth::TokenStore
  # (see Google::Auth::Stores::TokenStore#load)
  def load(id)
    google_token = GoogleToken.find_by(user_id: id)

    google_token ? google_token.token : nil
  end

  # (see Google::Auth::Stores::TokenStore#store)
  def store(id, token)
    google_token = GoogleToken.find_by(user_id: id) || GoogleToken.new

    google_token.user_id = id
    google_token.token = token
    google_token.save
  end

  # (see Google::Auth::Stores::TokenStore#delete)
  def delete(id)
    GoogleToken.where(user_id: id).delete_all
  end
end
