# perfecto25-cis_rhel7
# CIS RHEL7 Benchmarks

require 'facter'

Facter.add('cis_benchmarks') do
	confine :kernel => 'Linux'
	setcode do
		cis_benchmarks = {}
			ww_files=Facter::Core::Execution.exec('/tmp/cis_scripts/cis_ww_files.sh')
			ww_dirs=Facter::Core::Execution.exec('/tmp/cis_scripts/cis_ww_dirs.sh')
			yum_updates=Facter::Core::Execution.exec('/tmp/cis_scripts/cis_yumupdates.sh')
			unconfined_daemons=Facter::Core::Execution.exec('/tmp/cis_scripts/cis_unconfined_daemons.sh')
			redhat_network=Facter::Core::Execution.exec('/tmp/cis_scripts/cis_redhat_network.sh')
			redhat_gpg=Facter::Core::Execution.exec('/tmp/cis_scripts/cis_redhat_gpg.sh')
			pw_hash=Facter::Core::Execution.exec('authconfig --test | grep hashing | grep sha512')
			inactive_acct=Facter::Core::Execution.exec("useradd -D | grep INACTIVE | awk -F= {'print $2'}")
			system_acct=Facter::Core::Execution.exec('/tmp/cis_scripts/cis_disable_sys_acct.sh')
			unknown_files=Facter::Core::Execution.exec('/tmp/cis_scripts/cis_unowned_files.sh')
			# pkg_integrity=Facter::Core::Execution.exec('/tmp/cis_scripts/cis_pkg_integrity.sh')


			if ww_files
				cis_benchmarks['ww_files'] = ww_files
			end

			if ww_dirs
				cis_benchmarks['ww_dirs'] = ww_dirs
			end

			if yum_updates
				cis_benchmarks['yum_updates'] = yum_updates
			end

			if unconfined_daemons
				cis_benchmarks['unconfined_daemons'] = unconfined_daemons
			end

			if redhat_network
				cis_benchmarks['redhat_network'] = redhat_network
			end

			if redhat_gpg
				cis_benchmarks['redhat_gpg'] = redhat_gpg
			end

			if pw_hash
				cis_benchmarks['pw_hash'] = pw_hash
			end

			if system_acct
				cis_benchmarks['system_acct'] = ww_dirs
			end

			if inactive_acct
				cis_benchmarks['inactive_acct'] = inactive_acct
			end

			if unowned_files
				cis_benchmarks['unowned_files'] = unowned_files
			end

			# if pkg_integrity
			#	cis_benchmarks['pkg_integrity'] = pkg_integrity
			# end

	
		cis_benchmarks
	end	
end
