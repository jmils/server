require 'sinatra'
require 'httparty'
require 'json'
require 'nokogiri'
require "active_support/all"

get '/' do
  stock = params[:stock]
  response = HTTParty.get("https://finance.yahoo.com/q?s=#{stock}&ql=1")

  body = response.body

  document = Nokogiri::HTML body
  node = document.xpath("//span[@id='yfs_l84_#{stock.downcase}']").first
  return "The current price of #{stock} = " + node.content


  price = node.content.to_f.to_s(:currency)
  puts price

end
