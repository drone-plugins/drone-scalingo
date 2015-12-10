Use this plugin for deplying an application to Scalingo. You can override the
default configuration with the following parameters:

* `app` - Application name, defaults to repo name
* `force` - Force a push, defaults to `false`
* `commit` - Commit local changes, defaults to `false`

## Example

The following is a sample configuration in your .drone.yml file:

```yaml
deploy:
  scalingo:
    app: awesomeness
    force: true
```
