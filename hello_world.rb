require_relative 'advice'

class HelloWorld
  def call(env)
    case env['REQUEST_PATH']
    when '/'
      template = File.read("views/index.erb")
      content = ERB.new(template)
      ['200', {"Content-Type" => 'text/html'}, [content.result]]
    when '/advice'
      ['200', {"Content-Type" => 'text/plain'}, [Advice.new.sample]]
    else
      [
        '404',
        {"Content-Type" => 'text/plain', "Content-Length" => '13'},
        ["404 Not Found"]
      ]
    end
  end
end
