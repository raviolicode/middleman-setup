require "middleman-core/cli"

module Middleman
  module Cli

    # This class provides a "setup" command for the middleman CLI.
    class Deploy < Thor
      include Thor::Actions

      desc "setup", Middleman::Setup::TAGLINE
      def setup
        raise "Not Implemented Error"
      end
    end
  end
end
