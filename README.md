# docker-pgecode
wip on a simple flask app for pgecode


samples
```
$ curl http://0.0.0.0:5000/geocde/us/postal/90210
"{\"postal_code\":\"90210\",\"country code\":\"US\",\"place_name\":\"Beverly Hills\",\"state_name\":\"California\",\"state_code\":\"CA\",\"county_name\":\"Los Angeles\",\"county_code\":37.0,\"community_name\":null,\"community_code\":null,\"latitude\":34.0901,\"longitude\":-118.4065,\"accuracy\":4.0}"

$ curl http://0.0.0.0:5000/geocde/ca/postal/m5t1x4
"{\"postal_code\":\"M5T\",\"country code\":\"CA\",\"place_name\":\"Downtown Toronto (Kensington Market \\/ Chinatown \\/ Grange Park)\",\"state_name\":\"Ontario\",\"state_code\":\"ON\",\"county_name\":\"Toronto\",\"county_code\":8133394.0,\"community_name\":null,\"community_code\":null,\"latitude\":43.6541,\"longitude\":-79.3978,\"accuracy\":6.0}"

```

