require 'yaml'

module ZHRB
  class << self
    def eval code
      super compile(code)
    end

    def compile code
      code.scan(/類\s+(\S+)/m).each do |matched|
        matched = matched.first
        code.gsub!(/(\s)(#{matched}[\.\s])/, '\1C\2')
      end
      @mapping ||= YAML.load(File.read(File.join(__dir__, 'mapping.yml')))
      @mapping.each{|key, value| code.gsub!(key, value) }
      code
    end
  end
end