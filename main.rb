require 'term_extraction'

content = if File.exists? Alfred.query
  File.read(Alfred.query)
elsif clipboard = IO.popen('pbpaste', 'r+').read
  clipboard
end

zemanta = TermExtraction::Zemanta.new :api_key => Alfred.settings['api_key'], :context => content
puts zemanta.terms.join(', ')
