class DashboardController < ApplicationController

  require "uri"
  require "net/http"
  require 'coinbase/wallet'

  def index
    # @CLIENT_ID = "6500d9647dd187c6e8a5ab9a5f8a9b5c58156e67c4eeb4708a9fd1ce64ddda64"
    # @CLIENT_SECRET = "886b31a93be53f8c7d35ffc09048b38155dbfc763409bd81c23be1fddfb64c2f"
    @CLIENT_ID = '267ce9aec74165c0635151d76f4a2914b65da6b9f1598773886570490353ed1e'
    @CLIENT_SECRET = '3cedba9b14371f826502fb5a0530bea1325c4eb6ecda08b6d80e6bd2e61c341a'
    @code = request.query_parameters()["code"]
    params = {"grant_type" => "authorization_code",
              "code" => @code,
              "client_id" => @CLIENT_ID,
              "client_secret" => @CLIENT_SECRET,
              "redirect_uri" => "http://127.0.0.1:3000/dashboard"}


    response = Net::HTTP.post_form(URI.parse("https://api.coinbase.com/oauth/token"), params)
    @body = response.body

    token = (JSON.parse @body)["access_token"]
    refresh_token = (JSON.parse @body)["refresh_token"]

    client = Coinbase::Wallet::OAuthClient.new(access_token: token, refresh_token: refresh_token)

    curr_user_id = client.primary_account.id
    if User.find_by_identifier(curr_user_id) == nil:
        User.create({})
    end
    balance(request, client)
    history(request, client)
    end

    def balance(request, client)
      account = client.primary_account
      @balance = account.balance.amount

      # uri = URI.parse("https://api.coinbase.com/v2/accounts")
      #
      # http = Net::HTTP.new(uri.host, uri.port)
      # http.use_ssl = true
      # http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      #
      # request = Net::HTTP::Get.new(uri.request_uri)
      #
      # request["Authorization"] = "Bearer " + token
      #
      # @response2 = http.request(request)
      #
      # @account = @response2.body
      #
      # @balance = (JSON.parse @account)["data"][0]["balance"]["amount"]
    end

    def pay
      client = Coinbase::Wallet::OAuthClient.new(access_token: token)
    end

    def auth
    end

    def history(request, client)
      account = client.primary_account
      identifier = account.id
      curr_user = User.find_by_identifier(identifier)
      @history = curr_user.transactions
    end
  end

