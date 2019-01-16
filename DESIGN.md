# RODD: ReactiveOps Datadog

## Intent

RODD grew out of the need for a declarative syntax to provide a simple way to add default baseline monitors and dashboards to a client’s Datadog instance. Terraform chosen as the best way to manage the monitors but copy/paste management of the .tf files was a non-starter. 


## Key Design Elements

* Rodd is an external component of Pentagon
* Simple declarative format to create and maintain Datadog Timeboard and Monitors configuration files
* Groups of default monitors with exclusions (ie calling out the `kubernetes` group will apply all default kubernetes monitors except those that are specifically excluded)
* Default monitors must be able to have element overrides 
* Declarative format must allow for arbitrary monitors that are not part of the default
* There should be a way to override arbitrary aspects of any monitor in the group but keep defaults for all other aspects
* There should be a way to template values into the defaults 
* There should be a way to create arbitrary monitors that don’t exist in a group
* There should be a way to exclude individual monitors from a group
* The configuration syntax should be provide significant time savings over copy/paste maintenance of underlying Terraform files


## Scope
### In Scope:
* Addition and modification of default monitors
* Improvements to the interface and usage
* Templating terraform configuration files 

### Out of Scope:
* Separation from the Pentagon Component framework
* APM Monitors
* Direct interaction between RODD and the Datadog API
