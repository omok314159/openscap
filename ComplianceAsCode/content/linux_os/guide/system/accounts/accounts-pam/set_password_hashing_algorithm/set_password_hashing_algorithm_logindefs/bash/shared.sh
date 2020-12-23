# platform = multi_platform_wrlinux,multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rocky,multi_platform_rhv
. /usr/share/scap-security-guide/remediation_functions
{{{ bash_instantiate_variables("var_password_hashing_algorithm") }}}

if grep --silent ^ENCRYPT_METHOD /etc/login.defs ; then
	sed -i "s/^ENCRYPT_METHOD .*/ENCRYPT_METHOD $var_password_hashing_algorithm/g" /etc/login.defs
else
	echo "" >> /etc/login.defs
	echo "ENCRYPT_METHOD $var_password_hashing_algorithm" >> /etc/login.defs
fi
