## Getting started

## Post 2.4 (tested on 2.4.4)
Please refer to [testmodaldynamix](https://github.com/vahidhedayati/testmodaldynamix) to see this being used and where all the below examples were taken from.

After having either followed above steps or copied the
[test controller](https://github.com/vahidhedayati/testmodaldynamix/blob/master/grails-app/controllers/testmodaldynamix/TestdynamixController.groovy)
and copied [the views folder](https://github.com/vahidhedayati/testmodaldynamix/tree/master/grails-app/views/testdynamix) to you own app.

The changes required to a vanilla 2.4.4 install are:

Update [BuildConfig.groovy](https://github.com/vahidhedayati/testmodaldynamix/blob/master/grails-app/conf/BuildConfig.groovy)
```
compile ":jquery-ui:1.10.3"
compile ":modaldynamix:0.12" 
```
update [main.gsp](https://github.com/vahidhedayati/testmodaldynamix/blob/master/grails-app/views/layouts/main.gsp) add this loadbootrap call, if your site is not already bootstrapped. You could also choose not to make your entire site load this and instead make the call on a given gsp page that will use the plugin.
```
<!-- Vahid load in bootstrap - if app has no bootstrap -->
<g:loadbootstrap/>
```

Update [application.js](https://github.com/vahidhedayati/testmodaldynamix/blob/master/grails-app/assets/javascripts/application.js) addd the jquery-ui line
```
//= require jquery
//= require jquery-ui/js/jquery-ui-1.10.3.custom.min
```

I think that should be all. If any issues/suggestions raise it [here](https://github.com/vahidhedayati/modaldynamix/issues)


### Modify views/layouts/main.gsp  (Pre 2.4 grails resources based applications)

your layouts main.gsp: (add jquery-ui,jquery + loadbootstrap)

```gsp
<g:layoutHead/>
<g:javascript library="application"/>
<g:javascript library="jquery"/>
<g:javascript library="jquery-ui"/>	
<r:layoutResources />
<g:loadbootstrap/>
</head>
```


You will notice from a default installed application the extra jquery jquery-ui and <g:loadbootstrap/>

If your site is already bootstrapped then no need to load that up.


Please refer to [grails-modaldx-test](https://github.com/vahidhedayati/grails-modaldx-test) to see this being used and where all the below examples were taken from.


