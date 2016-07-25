# perfecto25-cis_rhel7
# RHN GPG Key (CIS 1.2.2)

require 'facter'

Facter.add('cis_inactive_acct') do
	confine :osfamily => 'RedHat'
	setcode do
		key = Facter::Core::Execution.exec("useradd -D | grep INACTIVE | awk -F= {'print $2'}")
	end
			
end
