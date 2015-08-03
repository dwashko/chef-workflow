# workflow-cookbook

workflow-cookbook is the role cookbook for the workflow process example.

## Supported Platforms

centos

## Attributes

Attributes are dependent on the included cookbooks:

 - apache2
 - workflow_apache_support

## Usage

 - Clone this repository down to your workstation. 
 - Clone the workflow apache support cookbook.
 - Edit the Berksfile file and adjust to the location of wofklow_apache_support.
 -- ex: 

 source 'https://gdp-chef-supermarket.gannettdigital.com'

 metadata

 cookbook 'workflow_apache_support', path: '/Users/dwashko/test/chef-workflow_apache_support'

 - Execute kitchen:
 -- kitchen create - creates vm
 -- kitchen converge - provisions vm
 -- kitchen verify - runs serverspec testing
 -- kitchen destory - destorys vm

### workflow::default

Include `workflow` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[workflow::default]"
  ]
}
```

## License and Authors

Author:: daniel washko (<dwashko@gannett.com>)
