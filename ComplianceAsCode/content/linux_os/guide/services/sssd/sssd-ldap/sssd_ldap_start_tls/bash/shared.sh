# platform = multi_platform_wrlinux,multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rocky

# Include source function library.
. /usr/share/scap-security-guide/remediation_functions

{{{ bash_sssd_ldap_config(parameter="ldap_id_use_start_tls", value="true") }}}
