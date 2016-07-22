class cis_rhel7::rule::rule_6_3_3 {

#includes Rules:
# 6.3.3 - Set Lockout for Failed Password Attempts (Not Scored)

pam { "(6.3.3) - password-auth: pam_env.so":
	ensure => present,
	service => 'password-auth',
	type	=> 'auth',
	control	=> 'required',
	module	=> 'pam_env.so',
	#arguments	=> '',
}

# auth required pam_env.so
# auth required pam_faillock.so preauth audit silent deny=5 unlock_time=900
# auth [success=1 default=bad] pam_unix.so
# auth [default=die] pam_faillock.so authfail audit deny=5 unlock_time=900
# auth sufficient pam_faillock.so authsucc audit deny=5 unlock_time=900
# auth required pam_deny.so

# auth required pam_env.so
# auth required pam_faillock.so preauth audit silent deny=5 unlock_time=900
# auth [success=1 default=bad] pam_unix.so
# auth [default=die] pam_faillock.so authfail audit deny=5 unlock_time=900
# auth sufficient pam_faillock.so authsucc audit deny=5 unlock_time=900
# auth required pam_deny.so



} #EOF
