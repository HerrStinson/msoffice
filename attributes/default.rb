#
# Author:: Mikhail Zholobov
# Cookbook Name:: msoffice
# Attribute:: default
#
# Copyright 2014, Mikhail Zholobov.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['msoffice']['edition'] = 'standard' # other editions are not supported yet
default['msoffice']['bitversion'] = '32bit' # or '32bit'
default['msoffice']['version'] = '2013'

# Set this attribute to the your Product Key, or just leave it empty to enter it manually later
default['msoffice']['pid_key'] = ''

# Setting up Company and User ID in the Config.xml file
# default['msoffice']['companyname'] = ''
# default['msoffice']['username'] = ''


# Set this attribute to the true if you want to activate MS Office automatically
default['msoffice']['auto_activate'] = false


# Set this attribute yourself to the FQDN of the folder which contains the ISO
default['msoffice']['source'] = 'http://example.com:8080/msoffice'

# VS 2012 Professional
default['msoffice']['2016']['standard']['package_name'] = 'Office 2016 Standard de'
default['msoffice']['2016']['standard']['filename'] = 'SW_DVD5_Office_2016_W32_German_MLF_X20-41374.ISO'
default['msoffice']['2016']['standard']['checksum'] = 'bb48792ad9a27b8620b636eff98cfd2c3129a1b9c38b097a2ae89007c3f44b15'

# Used to determine if office is installed
# Change to 14.0 for Office 2010
default['msoffice']['registrykey']['2013']['64bit'] = 'HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Office\15.0\Common'
default['msoffice']['registrykey']['2013']['32bit'] = 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\15.0\Common'
default['msoffice']['registrykey']['2016']['64bit'] = 'HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Office\16.0\Common'
default['msoffice']['registrykey']['2016']['32bit'] = 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\16.0\Common'
