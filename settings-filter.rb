require "alfredo"

workflow = Alfredo::Workflow.new

unless Alfred.query.strip == ''
  workflow << Alfredo::Item.new(
    :title => Alfred.query,
    :subtitle => 'Set your Zemanta API key to %s' % Alfred.query,
    :arg => Alfred.query
  )
end

if Alfred.settings['api_key']
  workflow << Alfredo::Item.new(
    :title => 'Your API key is already setup',
    :subtitle => Alfred.settings['api_key'],
    :arg => Alfred.settings['api_key']
  )
end

workflow << Alfredo::Item.new(
  :title => 'Get your API key here (hit Cmd-Enter to open)',
  :subtitle => 'http://developer.zemanta.com/apps/register/',
  :arg => 'http://developer.zemanta.com/apps/register/',
  :type => 'url'
)
workflow.output!
