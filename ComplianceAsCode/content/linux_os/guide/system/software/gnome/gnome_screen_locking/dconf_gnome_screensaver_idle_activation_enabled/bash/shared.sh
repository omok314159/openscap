# platform = Red Hat Enterprise Linux 7,Red Hat Enterprise Linux 8,multi_platform_fedora,multi_platform_ol,multi_platform_rocky


{{{ bash_dconf_settings("org/gnome/desktop/screensaver", "idle-activation-enabled", "true", "local.d", "00-security-settings") }}}
{{{ bash_dconf_lock("org/gnome/desktop/screensaver", "idle-activation-enabled", "local.d", "00-security-settings-lock") }}}