content = inspec.profile.file("terraform.json")
params = JSON.parse(content)

DNS = params['clb_dns_name']['value']
describe aws_elb('examplecluster') do
    it { should exist }
  end
  
describe aws_elb(elb_name: 'examplecluster') do
    it { should exist }
  end

  describe aws_elb('examplecluster') do
    its('availability_zones.count') { should be > 1 }
    its('availability_zones')       { should include 'us-east-2a' }
    its('availability_zones')       { should include 'us-east-2b' }
  end

  describe aws_elb('examplecluster') do
    its('instance_ids.count') { should cmp 2 }
  end

  describe aws_elb('examplecluster') do
    its('dns_name') { should cmp DNS }
  end

  describe aws_elb('examplecluster') do
    its('external_ports.count') { should cmp 1 }
    its('external_ports')       { should include 80 }
    its('internal_ports.count') { should cmp 1 }
    its('internal_ports')       { should include 8080 }
  end