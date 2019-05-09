require "consulta_sunat/version"
require "consulta_sunat/http_request_sunat"
require "consulta_sunat/parse_content"

module ConsultaSunat
  def self.by_dni document
    if document =~ /^[0-9]{8}$/
      document   = dni_to_ruc document
      return search(document)
    else
      return {error: "invalid document"}
    end
  end

  def self.by_ruc document
    if document =~ /^[0-9]{11}$/
      return search(document)
    else
      return {error: "invalid document"}
    end
  end

  def self.find_ruc document
    if document =~ /^[0-9]{8}$/
      return dni_to_ruc(document)
    else
      return {error: "invalid document"}
    end
  end

  def self.dni_to_ruc dni
    dni = "10#{dni}"
    digits = dni.split("").map(&:to_i)
    array_mod_11 = [5,4,3,2,7,6,5,4,3,2]
    sum_digits = digits.zip(array_mod_11).map{|i,j| i*j}.inject(0, :+)
    mod_11 = sum_digits % 11
    check_digit = 11 - mod_11

    if check_digit == 11
      check_digit = "0"
    elsif check_digit == 10
      check_digit = "1"
    end

    return "#{dni}#{check_digit.to_s}"    
  end

  def self.search document
    request    = ConsultaSunat::HttpRequestSunat.new
    page       = request.request_page document
    sunat_data = ConsultaSunat::ParseContent.parse_page page

    sunat_data
  end

  private_class_method :search, :dni_to_ruc
end