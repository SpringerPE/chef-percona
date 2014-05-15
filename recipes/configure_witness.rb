#
# Cookbook Name:: percona
# Recipe:: configure_witness
#

case node["platform_family"]
when "debian"
  template "/etc/default/garb" do
  	source "garb.erb"
    owner "root"
    group "root"
    mode 0755
  end

when "rhel"
  template "/etc/sysconfig/garb" do
  	source "garb.erb"
    owner "root"
    group "root"
    mode 0755
  end
end