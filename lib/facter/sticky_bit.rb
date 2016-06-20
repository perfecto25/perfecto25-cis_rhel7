# perfecto25-cis_rhel7
# Stick Bit check

Facter.add('sticky_bit') do
	confine :kernel => 'Linux'
	setcode do
		Facter::Core::Execution.exec('/usr/local/sbin/sticky_bit.sh')
	end
end
