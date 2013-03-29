unless Alfred.query.include?('zementa.com')
  Alfred.settings['api_key'] = Alfred.query
  Alfred.store_settings!
end
