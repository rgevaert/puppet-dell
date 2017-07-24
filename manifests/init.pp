class dell (
  $omsa_url_base           = $dell::params::omsa_url_base,
  $omsa_url_args_indep     = $dell::params::omsa_url_args_indep,
  $omsa_url_args_specific  = $dell::params::omsa_url_args_specific,
  $omsa_version            = $dell::params::omsa_version,
  $customplugins           = $dell::params::customplugins,
  $check_warranty_revision = $dell::params::check_warranty_revision,
  $manage_debian_apt       = $dell::params::manage_debian_apt,
  $api_key                 = undef,
) inherits ::dell::params {
  validate_absolute_path($customplugins)

  class { '::dell::warranty':
    api_key => $api_key,
  }
}
