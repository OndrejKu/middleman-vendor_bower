module Middleman
  class VendorBowerExtension < Extension
    def initialize(app, options_hash={}, &block)
      super
    end

    def after_configuration
      sprockets.append_path File.join(app.root, bower_directory)
    end

    private

    def read_bower_config
      JSON.parse(File.read(File.join(app.root, '.bowerrc')))
    rescue JSON::ParserError => e
      puts 'Bower stuff skipped. There\'s something wrong with your `.bowerrc` file.'
    rescue Errno::ENOENT => e
      puts 'Bower stuff skipped. Missing `.bowerrc` file.'
    end

    def bower_directory
      @bower_config = read_bower_config
      raise unless @bower_config['directory'] && Dir.exist?(@bower_config['directory'])
      @bower_config['directory']
    rescue => e
      puts 'Bower stuff skipped. Could not determine a valid directory from your `.bowerrc` file.'
    end

    def sprockets
      app.extensions[:sprockets].environment
    end
  end
end
