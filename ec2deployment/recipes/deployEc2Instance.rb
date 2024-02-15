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
aws_access_key_id= aws_creds['Enter your access key']
aws_secret_key_id= aws_creds['Enter your secret key']
aws_region= 'ap-south-1a'

aws_instance 'Lavanya-first-ec2instance-using-chef' do
aws_access_key_id aws_access_key_id
aws_secret_key_id aws_secret_key_id
region aws_region
image id 'Enter your image id'
instance_type 't2.micro'
key_name 'Lavany-key'
subnet_id 'Enter Subnet id'
securitygroup_id 'Enter security group id'

action :create
end
