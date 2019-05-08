# ConsultaSunat

Consulta información Sunat por el número de DNI o RUC

## Installation

añada la gema a su proyecto
```ruby
gem 'consulta_sunat'
```

Y luego ejecute:

    $ bundle

o instalelo usted mismo:

    $ gem install consulta_sunat

## Uso
```ruby
data = ConsultaSunat.by_dni("25632457")
data = ConsultaSunat.by_ruc("10256324570")
```

## Información que devuelve
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
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jsalvad0r/consulta_sunat. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant (http://contributor-covenant.org) code of conduct.

## License
The gem is available as open source under the terms of the MIT License (https://opensource.org/licenses/MIT).