require 'net/http'
require 'uri'
module ConsultaSunat
	class HttpRequestSunat

		def initialize
			@uri_random_number = URI.parse('http://e-consultaruc.sunat.gob.pe/cl-ti-itmrconsruc/captcha?accion=random')
			@uri_consulta = URI.parse('http://e-consultaruc.sunat.gob.pe/cl-ti-itmrconsruc/jcrS00Alias')
			@user_agent  = 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'
			@action_request = 'consPorRuc'
			@random_number, @session_cookie = random_session
		end

		def request_page document
			data_form = {'nroRuc'=> document, 'accion' => @action_request, 'numRnd' => @random_number}
			http_request = Net::HTTP::Post.new(@uri_consulta.path)
			http_request.set_form_data(data_form)
			http_request['Cookie'] = @session_cookie
			http_request['User-Agent'] = @user_agent
			page = Net::HTTP.start(@uri_consulta.hostname, @uri_consulta.port) do |http|
				http.request(http_request).body
			end
			return page
		end

		private
		def random_session
			response = Net::HTTP.get_response(@uri_random_number)
			if response.is_a? Net::HTTPOK
				return response.body, response['set-cookie'].split(";")[0]
			end			
		end
	end
end