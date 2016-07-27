# perfecto25-cis_rhel7
# CIS RHEL7 Benchmarks

require 'facter'

Facter.add('cis_benchmarks') do
	confine :osfamily => 'RedHat'
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
			unowned_files=Facter::Core::Execution.exec('/tmp/cis_scripts/cis_unowned_files.sh')
			ungrouped_files=Facter::Core::Execution.exec('/tmp/cis_scripts/cis_ungrouped_files.sh')
			suid_exec=Facter::Core::Execution.exec('/tmp/cis_scripts/cis_suid_exec.sh')
			sgid_exec=Facter::Core::Execution.exec('/tmp/cis_scripts/cis_sgid_exec.sh')
			password_fields=Facter::Core::Execution.exec('/tmp/cis_scripts/cis_password_fields.sh')
			legacy_entry_passwd=Facter::Core::Execution.exec('/tmp/cis_scripts/cis_legacy_entry.sh /etc/passwd')
			legacy_entry_shadow=Facter::Core::Execution.exec('/tmp/cis_scripts/cis_legacy_entry.sh /etc/shadow')
			legacy_entry_group=Facter::Core::Execution.exec('/tmp/cis_scripts/cis_legacy_entry.sh /etc/group')
			uid=Facter::Core::Execution.exec('/tmp/cis_scripts/cis_uid_0.sh')
			dup_uid=Facter::Core::Execution.exec('/tmp/cis_scripts/cis_dup_uid.sh')
			dup_gid=Facter::Core::Execution.exec('/tmp/cis_scripts/cis_dup_gid.sh')
			res_uid=Facter::Core::Execution.exec('/tmp/cis_scripts/cis_res_uid.sh')
			dup_name=Facter::Core::Execution.exec('/tmp/cis_scripts/cis_dup_name.sh')



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

			if ungrouped_files
				cis_benchmarks['ungrouped_files'] = ungrouped_files
			end

			if unowned_files
				cis_benchmarks['unowned_files'] = unowned_files
			end

			if suid_exec
				cis_benchmarks['suid_exec'] = suid_exec
			end

			if sgid_exec
				cis_benchmarks['sgid_exec'] = sgid_exec
			end

			if sgid_exec
				cis_benchmarks['sgid_exec'] = sgid_exec
			end

			if password_fields
				cis_benchmarks['password_fields'] = password_fields
			end

			if legacy_entry_passwd
				cis_benchmarks['legacy_entry_passwd'] = legacy_entry_passwd
			end

			if legacy_entry_shadow
				cis_benchmarks['legacy_entry_shadow'] = legacy_entry_shadow
			end

			if legacy_entry_group
				cis_benchmarks['legacy_entry_group'] = legacy_entry_group
			end

			if uid
				cis_benchmarks['uid'] = uid
			end

			if dup_uid
				cis_benchmarks['dup_uid'] = dup_uid
			end

			if dup_gid
				cis_benchmarks['dup_gid'] = dup_gid
			end

			if res_uid
				cis_benchmarks['res_uid'] = res_uid
			end

			if dup_name
				cis_benchmarks['dup_name'] = dup_name
			end
	
		cis_benchmarks
	end	
end
