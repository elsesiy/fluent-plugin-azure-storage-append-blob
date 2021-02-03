lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name = 'fluent-plugin-azure-storage-append-blob-lts'
  spec.version = '0.6.1'
  spec.authors = ['Jonas-Taha El Sesiy']
  spec.email = ['github@elsesiy.com']

  spec.summary = 'Azure Storage Append Blob output plugin for Fluentd event collector'
  spec.description = 'Fluentd plugin to upload logs to Azure Storage append blobs. Fork of https://github.com/microsoft/fluent-plugin-azure-storage-append-blob'
  spec.homepage = 'https://github.com/elsesiy/fluent-plugin-azure-storage-append-blob-lts'
  spec.license = 'MIT'

  test_files, files = `git ls-files -z`.split("\x0").partition do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.files = files
  spec.executables = files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files = test_files
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.6'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'test-unit', '~> 3.0'
  spec.add_runtime_dependency 'azure-storage-blob', '~> 2.0'
  spec.add_runtime_dependency 'fluentd', ['>= 0.14.10', '< 2']
end
