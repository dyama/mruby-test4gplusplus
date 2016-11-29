MRuby::Gem::Specification.new('mruby-test4gplusplus') do |spec|
  spec.author  = 'dyama'
  spec.summary = 'Test gem.'
  spec.license = 'MIT license'

  # Compiler option
  spec.cxx.flags << "-Wno-unused-function"
  spec.cxx.flags << "-Wno-unused-variable"
  spec.cxx.flags << "-Wno-unknown-pragmas"
  # spec.cxx.flags << "-std=c++11"
  spec.objs << Dir.glob("#{dir}/src/*.{c,cpp}").map { |f| objfile(f.relative_path_from(dir).pathmap("#{build_dir}/%X")) }
end

