#
# Cookbook Name:: percona
# Recipe:: configure_witness
#

case node["platform_family"]
when "debian"
  template "/etc/default/garb" do
    owner "root"
    group "root"
    mode 0755
    source "garb.erb"
  end.

when "rhel"
  template "/etc/sysconfig/garb" do
    owner "root"
    group "root"
    mode 0755
    source "garb.erb"
  end.
end