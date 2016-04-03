class DashboardController < ApplicationController

  require "uri"
  require "net/http"

  def index
    @CLIENT_ID = "6500d9647dd187c6e8a5ab9a5f8a9b5c58156e67c4eeb4708a9fd1ce64ddda64"
    @CLIENT_SECRET = "886b31a93be53f8c7d35ffc09048b38155dbfc763409bd81c23be1fddfb64c2f"
    @code = request.query_parameters()["code"]
    params = {"grant_type" => "authorization_code",
              "code" => @code,
              "client_id" => @CLIENT_ID,
              "client_secret" => @CLIENT_SECRET,
              "redirect_uri" => "https://bitcoin-for-good.herokuapp.com/dashboard"}

    response = Net::HTTP.post_form(URI.parse("https://api.coinbase.com/oauth/token"), params)
    @body = response.body
    puts @body
  end

  def auth
  end
end
