# perfecto25-cis_rhel7
# password hash algorithm

require 'facter'

Facter.add('cis_pw_hash_algo') do
	confine :kernel => 'Linux'
	setcode do
		Facter::Core::Execution.exec('authconfig --test | grep hashing | grep sha512')
	end
			
end
