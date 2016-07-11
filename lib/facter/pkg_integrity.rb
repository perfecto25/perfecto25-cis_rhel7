# perfecto25-cis_rhel7
# Pkg Integrity (CIS 1.2.6)

require 'facter'

Facter.add(:pkg_integrity) do
	confine :operatingsystem => 'RedHat'
	setcode do
		key = Facter::Core::Execution.exec('/tmp/cis_scripts/cis_pkg_integrity.sh')
	end
			
end
