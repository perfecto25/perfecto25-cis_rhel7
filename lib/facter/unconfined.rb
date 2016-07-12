# perfecto25-cis_rhel7
# Yum Available Updates (CIS 1.2.5)

require 'facter'

Facter.add('cis_unconfined_daemons') do
	confine :osfamily => 'RedHat'
	setcode do
		key = Facter::Core::Execution.exec('/tmp/cis_scripts/cis_unconfined_daemons.sh')
	end
			
end
