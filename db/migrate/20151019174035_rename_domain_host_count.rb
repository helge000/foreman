class RenameDomainHostCount < ActiveRecord::Migration
  #prevent wierdness with rails treating hosts_count as cached counter in some cases
  def up
    rename_column :domains, :hosts_count, :total_hosts
    Domain.all.each {|d| d.update_attribute('total_hosts', Nic::Base.primary.where(:domain_id => d.id).count)}
  end

  def down
    rename_column :domains, :total_hosts, :hosts_count
  end
end
