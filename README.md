# Microsoft Office Cookbook
[![Cookbook Version](https://img.shields.io/cookbook/v/msoffice.svg)](https://community.opscode.com/cookbooks/msoffice)

This Chef cookbook installs Microsoft Office 2016 from an ISO.
It is working fine, but is not fully completed. You're welcome to contribute!

# Requirements

This cookbook requires 7-zip to be installed so it can extract the ISO. To ensure this happens this cookbook includes the 7-zip default recipe.

It was successfully tested on:
- Windows 10 Pro

Also it should work on:
- Windows 7
- Windows 8 (8.1)
- Windows 10 Home
- Windows 2008 Server (R2)
- Windows 2012 Server (R2)
- Windows 2016 Server

# Usage

Set the `node['msoffice']['source']` attribute to the download location of the MS Office ISO and add 'msoffice::default' to your runlist.
Using a Virtualbox synched folder and supplying the local path is working ok.

By default this cookbook assumes you're installing Microsoft Office 2016 Standard.

# Attributes

## Required
* `node['msoffice']['source']` - Required, fully qualified http(s) path to the ISO directory. For example: http://example.com/installs

## Optional
* `node['msoffice']['edition']` - MS Office edition to install. Default: `standard`
* `node['msoffice']['bitversion']` - Choose between '32bit' and '64bit'  MS Office edition to install. Default: `32bit`
* `node['msoffice']['pid_key']` - Your MS Office product key. You can leave it undefined or empty to enter key manually later.
* `node['msoffice']['companyname']` - If you want a Company Name registered to the MS Office software.
* `node['msoffice']['username']` - If you want a users name registered to the MS Office software.
* `node['msoffice']['auto_activate']` - Activate MS Office product after installation. Default: `false`

Attributes per each edition:
* `node['msoffice'][<edition>]['package_name']` - The name of the package as it shows in Add/Remove programs. Default is Microsoft Office Professional Plus 2013.
* `node['msoffice'][<edition>]['filename']` - The name of the ISO file located in the 'source'.
* `node['msoffice'][<edition>]['checksum']` - SHA256 checksum of the ISO.


# Recipes

## default
Just wraps over the 'install' recipe.

## install
Installs Microsoft Office 2016 using the included Config.xml. Also ensures 7-zip is installed so the ISO can be extracted. Included by the default recipe.

# Contributors
Author:: Mikhail Zholobov (@legal90)
Contributor:: Frank Kehlenbach (@HerrStinson)

Great thanks to Shawn Neal (@sneal). This `msoffice` cookbook is based on his [VisualStudio](https://github.com/daptiv/visualstudio) cookbook.
