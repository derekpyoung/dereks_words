class CheckWordController < ApplicationController
  require 'uri'
  require 'net/http'
  require 'openssl'
  require 'json'

  def check_word(word)
    word_guess = params[:word]
    is_word = check_word_external_api_call(word)
    
    if is_word
      render json: { is_word: true }.to_json, status: :ok
    else
      render json: { is_word: false }.to_json, status: :ok
    end
  end

  private
    def check_word_external_api_call(word)
      # make API call to external service to check word
        url = URI("https://wordsapiv1.p.rapidapi.com/words/%7B#{word}%7D")
        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    
        request = Net::HTTP::Get.new(url)
        request["X-RapidAPI-Key"] = 'e905768c02msh834caa2efce7d42p17db17jsncb64eaa8f93a'
        request["X-RapidAPI-Host"] = 'wordsapiv1.p.rapidapi.com'
    
        response = http.request(request)
        puts response.read_body
        p word 
    
      
    end
end
