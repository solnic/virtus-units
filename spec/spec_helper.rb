require 'pathname'
require 'rubygems'
require 'rspec'

require 'virtus-units'

SPEC_ROOT = Pathname(__FILE__).dirname.expand_path

Pathname.glob((SPEC_ROOT + '**/shared/**/*.rb').to_s).each { |file| require file }

RSpec.configure do |config|

  # Remove anonymous Attribute classes from Attribute descendants
  config.after :all do
    stack = [ Virtus::Attribute ]
    while klass = stack.pop
      klass.descendants.delete_if do |descendant|
        descendant.name.nil? || descendant.name.empty?
      end
      stack.concat(klass.descendants)
    end
  end

end
