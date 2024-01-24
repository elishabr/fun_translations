require 'fun_translations'

begin
  client = FunTranslations.client
rescue FunTranslations::Error => e
  puts 'unknown exception!'
  puts e.inspect
rescue StandardError => e
  puts e.class.name
  puts e.message
end

result = client.translate :pirate, 'Hello sir!'
puts result.translated_text
