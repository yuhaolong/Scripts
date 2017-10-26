# Usage

    pip install diskimage-builder
    # run build scripts
    ./build_centos7 -t raw

# Feature

* disable selinux
* enable epel
* use aliyun mirror site for base and epel repo
* enable cloud-init
* configure cloud init datasource to 'ConfigDrive, OpenStack, Ec2'
* dynamic-login [0]
* element-manifest [1]
* enable dhcp-all-interfaces [2]
* enable ssh root login and password login
* disable dns in ssh server
* console security enhance. auto logout after 60 minute
* enable qemu-guest-agent on centos6, centos7 and ubuntu xenial
* enable auto fstrim when discard is enabled

# REF

* [0] http://docs.openstack.org/developer/diskimage-builder/elements/dynamic-login/README.html
* [1] http://docs.openstack.org/developer/diskimage-builder/elements/element-manifest/README.html
* [2] http://docs.openstack.org/developer/diskimage-builder/elements/dhcp-all-interfaces/README.html
