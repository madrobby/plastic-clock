run Rack::Cascade.new([
  Rack::Builder.new do
    use Rack::Static, :urls => [""], :root => '.', :index => 'index.html'
    run Proc.new { ['404', {'Content-Type' => 'text/html'}, ['nope']] }
  end
])