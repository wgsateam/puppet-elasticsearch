require File.join(File.dirname(__FILE__), '..', '..', '..', 'puppet/provider/elastic_user_roles')

Puppet::Type.type(:elasticsearch_user_roles).provide(
  :oss_xpack,
  :parent => Puppet::Provider::ElasticUserRoles
) do
  desc 'Provider for X-Pack user roles (parsed file.)'

  oss_xpack_config 'users_roles'
  confine :exists => default_target
end
