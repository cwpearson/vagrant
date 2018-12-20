# vagrant
vagrant boxes

## ubuntu1404_cuda75
ubuntu/trusty64 20181207.0.2

Ubuntu 14.04

* CUDA Toolkit 7.5
* CMake 3.13.2
* gcc/g++ 4.8.4

```vagrant
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu1404_cuda75"
  config.vm.box_url = "https://uofi.box.com/shared/static/8fwnbcgh1jbsl0qln2arg55ggpj2c6w2.box"
  config.vm.box_download_checksum = "4f13a7a7e118ede7c53d91305927cdbe"
  config.vm.box_download_checksum_type = "md5"
end
```

## Creating a new Box

    vagrant package --output mynew.box