require 'yaml'
module ConsultaSunat
	module ParseContent		
		def self.parse_page page
			page = clean_page page
			file_path = File.join(File.dirname(__FILE__), "sunat_match_data.yaml")
			sunat_match_data = YAML.load_file(file_path)
			sunat_data = {}
			sunat_match_data.each do |key, expr|
				sunat_data[key] = if result = page.match(expr)
					result[1]
				else
					"-"
				end
			end

			return sunat_data
		end

		def self.clean_page page
			page.encode!('UTF-8', 'UTF-8', :invalid => :replace)
			page.gsub(/\r\n/, "\n")
		end
	end
end