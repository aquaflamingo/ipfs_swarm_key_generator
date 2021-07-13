require "option_parser"
require "./generator.cr"

OptionParser.parse do |parser|
	 parser.banner = "ipfs-swarm-key-generator"

	 parser.on "-v", "--version", "Show version" do
			puts "#{Generator::VERSION}"
			exit
	 end

	 parser.on "-h", "--help", "Show help" do
			puts parser
			exit
	 end
end

generator = Generator.new

generator.generate
