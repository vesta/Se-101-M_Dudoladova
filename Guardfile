# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'rspec', version: 2, cli: '--profile', run_all_after_pass: false do
  watch(%r{^spec/.+_spec\.rb$})
  watch('spec/spec_helper.rb')  { "spec" }
end

