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
  config.vm.box_download_checksum = "bfda1ddb2a8f5b73ece516b607762502"
  config.vm.box_download_checksum_type = "md5"
end
```

## ubuntu1604_cuda80
ubuntu/xenial64 20181217.0.0

Ubuntu 16.04

* CUDA Toolkit 8.0.61
* CMake 3.13.2
* gcc/g++ 5.4.0

```vagrant
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu1604_cuda80"
  config.vm.box_url = "https://uofi.box.com/shared/static/cx8flnn4qv4c4fjchchrrrcum4x0f3fc.box"
  config.vm.box_download_checksum = "9a235c861a225018241ac24919d5cf1f"
  config.vm.box_download_checksum_type = "md5"
end
```

## ubuntu1404_cuda75_gcc49
ubuntu/xenial64 20181217.0.0

Ubuntu 14.04

* CUDA Toolkit 7.5
* CMake 3.13.2
* gcc/g++ 4.9

```vagrant
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu1404_cuda75_gcc49"
  config.vm.box_url = "https://uofi.box.com/shared/static/so86dc8ufn3iglkbtrn6tfraehklwmps.box"
  config.vm.box_download_checksum = "e1d7467e1534ab4281634f82e1052de6"
  config.vm.box_download_checksum_type = "md5"
end
```

## Creating a new Box

    vagrant package --output mynew.box