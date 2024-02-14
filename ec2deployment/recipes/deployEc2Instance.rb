#
# Cookbook:: ec2deployment
# Recipe:: deployEc2Instance
#
# Copyright:: 2024, The Authors, All Rights Reserved.

chef_gem 'aws-sdk' do
compile_time true if respond_to?(:compile_time)
end

include recipe 'aws'
aws_creds=data_bag_item('aws', 'credentials')
aws_access_key_id= aws_creds['AKIATCKASWIER7UWXEA7']
aws_secret_key_id= aws_creds['SolmUYqxPHMUKs0jctKSdjHL2lqwgFHD5/pv4c3E']
aws_region= 'ap-south-1a'

aws_instance 'Lavanya-first-ec2instance-using-chef' do
aws_access_key_id aws_access_key_id
aws_secret_key_id aws_secret_key_id
region aws_region
image id 'ami-0e731c8a588258d0d'
instance_type 't2.micro'
key_name 'Lavany-key'
subnet_id 'subnet-02d25feb674b62ccb'
securitygroup_id 'sg-0877e27c83573d892'

action :create
end
