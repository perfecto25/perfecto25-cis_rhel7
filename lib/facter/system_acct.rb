# perfecto25-cis_rhel7
# (CIS 7.2)

require 'facter'

Facter.add('cis_system_accounts') do
	confine :osfamily => 'RedHat'
	setcode do
		key = Facter::Core::Execution.exec('/tmp/cis_scripts/cis_disable_sys_acct.sh')
	end
			
end

