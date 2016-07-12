# perfecto25-cis_rhel7
# Sticky Bit check

require 'facter'

Facter.add('cis_world_writable_dirs') do
	confine :kernel => 'Linux'
	setcode do
		Facter::Core::Execution.exec('/tmp/cis_scripts/cis_sticky_bit.sh')
	end
			
end
