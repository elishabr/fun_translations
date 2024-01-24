# frozen_string_literal: true

def div(a, b) # rubocop:disable Naming/MethodParameterName,Metrics/MethodLength
  retries = 0
  max_retries = 3
  begin
    div = a / b
  rescue StandardError => e # предвосхищая
    # puts e.inspect
    puts e.class.name
    if retries < max_retries
      retries += 1
      sleep 2**retries # экспоненциальный откат
      retry
    else
      raise NameError, 'boom' #=> породить собственное исключение
    end
    # puts e.message
  else # иначе
    div + 10
  ensure # сюда заходим в любом случае
    puts 'ENSURE'
  end
end
puts div(10, 0).inspect
