# perfecto25-cis_rhel7
# RHN GPG Key (CIS 1.2.2)

require 'facter'

Facter.add('cis_redhat_gpg') do
	confine :operatingsystem => 'RedHat'
	setcode do
		key = Facter::Core::Execution.exec('/tmp/cis_scripts/cis_redhat_gpg.sh')
	end
			
end
