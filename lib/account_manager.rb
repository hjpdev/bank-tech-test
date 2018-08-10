require_relative 'client_account'

class AccountManager
  attr_reader :client_info

  def initialize
    @client_info = []
  end

  def add_client(client)
    @client_info << client.info_hash
  end

  def client_names
    names = []
    @client_info.each { |x| names << x[:name] }
    names
  end
end
