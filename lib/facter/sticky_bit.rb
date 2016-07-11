# perfecto25-cis_rhel7
# Stick Bit check

require 'facter'

Facter.add(:world_writable_dirs) do
	confine :kernel => 'Linux'
	setcode do
		Facter::Core::Execution.exec('/tmp/cis_scripts/cis_sticky_bit.sh')
	end
			
end
