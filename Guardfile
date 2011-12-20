# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'spork' do
  watch('Gemfile')
  watch('Gemfile.lock')
  watch('spec/spec_helper.rb') { :rspec }
#  watch(%r{features/support/}) { :cucumber }
end

guard 'rspec', :cli => "--drb", :version => 2 do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})           { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')        { "spec" }
  watch(%r{^spec/support/(.+)\.rb$})  { "spec" }
#  watch(%r{^app/controllers/(.+)_(controller)\.rb$})  { |m| ["spec/routing/#{m[1]}_routing_spec.rb", "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb", "spec/acceptance/#{m[1]}_spec.rb"] }
end


guard 'bundler' do
  watch('Gemfile')
  # Uncomment next line if Gemfile contain `gemspec' command
  watch(/^.+\.gemspec/)
end

