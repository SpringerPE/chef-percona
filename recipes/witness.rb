#
# Cookbook Name:: percona
# Recipe:: witness
#

include_recipe "percona::package_repo"

# install packages
package node["percona"]["witness"]["package"]

include_recipe "percona::configure_witness"
