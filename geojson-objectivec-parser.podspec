Pod::Spec.new do |s|
  s.name         = "geojson-objectivec-parser"
  s.version      = "0.1"
  s.summary      = "Full datamodel & parser for GeoJSON 1.0 specification"
  s.description  = <<-DESC
                    Full datamodel & parser for GeoJSON 1.0 specification http://www.geojson.org/
                   DESC

  s.homepage     = "https://github.com/MrZoidberg/geojson-objectivec-parser"
  s.authors = { 'jmnavarro' => 'https://github.com/jmnavarro',
                 "Mikhail Merkulov" => "Mihail.Merkulov@gmail.com"}
  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.8'
  s.source       = { :git => "https://github.com/MrZoidberg/geojson-objectivec-parser.git", :tag => s.version.to_s }
  s.source_files  = 'geojson-objectivec-parser', 'parser/*.{h,m}'
  s.framework  = 'CoreLocation'
  s.requires_arc = true
end
