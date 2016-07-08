# perfecto25-cis_rhel7
# Stick Bit check

require 'facter'

Facter.add(:sticky_bit) do
	confine :kernel => 'Linux'
	setcode do
		Facter::Core::Execution.exec('/tmp/cis_sticky_bit.sh')
	end
			
end
