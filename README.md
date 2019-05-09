# ConsultaSunat

Consulta información Sunat por el número de DNI o RUC

## Instalación

añada la gema a su proyecto
```ruby
gem 'consulta_sunat'
```

Y luego ejecute:

    $ bundle

o instalelo usted mismo:

    $ gem install consulta_sunat

## Uso

Consultar datos

```ruby
data = ConsultaSunat.by_dni("25632457")
data = ConsultaSunat.by_ruc("10256324570")
```

Obtener el número de RUC por medio del número de DNI

```ruby
ruc = ConsultaSunat.find_ruc('62456874')
```
## Información que devuelve

```ruby
{
	:razon_social=>"Test S.A.C.",
	:condicion=>"HABIDO", 
	:telefono=>"-", 
	:nombre_comercial=>"-", 
	:tipo=>"SOCIEDAD ANONIMA CERRADA", 
	:fecha_inscripcion=>"26/12/2018", 
	:estado=>"-", :direccion=>"-", 
	:sistema_emision=>"-", 
	:actividad_exterior=>"-", 
	:sistema_contabilidad=>"-", 
	:oficio=>"-", 
	:actividad_economica=>"-", 
	:emision_electronica=>"-", 
	:ple=>"-"
}

```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jsalvad0r/consulta_sunat. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant (http://contributor-covenant.org) code of conduct.

## License
The gem is available as open source under the terms of the MIT License (https://opensource.org/licenses/MIT).