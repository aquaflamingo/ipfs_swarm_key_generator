class Generator
  VERSION = "0.1.0"

  def initialize(@key = Random::Secure.hex(32)); end

	def generate
		 content = <<-EOF
			/key/swarm/psk/1.0.0/
			/base16/
			#{@key}
		 EOF

		 print content
	end
end
