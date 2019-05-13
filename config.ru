#config.ru
require 'rack'
class MiPrimeraWebApp
  def call(env)
    [200, {'Content-type' => 'text/html'}, []]
  end
end

run MiPrimeraWebApp.new
