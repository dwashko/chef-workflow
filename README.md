# workflow-cookbook

workflow-cookbook is the role cookbook for the workflow process example.

## Supported Platforms

centos

## Attributes

Attributes are dependent on the included cookbooks:

 - apache2
 - workflow_apache_support

## Usage

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
