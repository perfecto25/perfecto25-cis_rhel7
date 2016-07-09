# perfecto25-cis_rhel7
# RHN Configuration (CIS 1.2.1)

require 'facter'

Facter.add(:redhat_network) do
	confine :operatingsystem => 'RedHat'
	setcode do
		Facter::Core::Execution.exec('/tmp/cis_redhat_network.sh')
	end
			
end
