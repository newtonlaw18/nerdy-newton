require 'programr'

brains = Dir.glob("lib/newtonbot/*")

NEWTONBOT = ProgramR::Facade.new
NEWTONBOT.learn(brains)