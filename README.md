Tind3r.com - frontend
=====================

Author Rafał Leśniak

### Usage

```
yarn install
yarn start
open http://localhost:3000
```



### Building

A basic production script is included that builds your app to a `dist` folder

```
yarn run build
```

### Serving production
```
yarn run server
```

### Dependencies
To be able to run app you have to have installed [Chrome Extension]( https://chrome.google.com/webstore/detail/tind3rcom-client/olicollicgbjgnialpnmnolopimdccon?hl=pl&authuser=1) or build from this repo [tind3r-chrome-extension](https://github.com/rlesniak/tind3r-chrome-extension) or zip file from assets folder [https://github.com/darc-ai/d33r/blob/main/assets/tind3r_0.4.4.zip].

If you are build your own Extension remember to change Extension ID in `src/const/index.js` by replacing value in `originalId`.


## Updates from niko247
Update src/const/index.js with version of extension you added in assets. 

Run 
For building:
```
mvn_build.bat
```
For running:
```
mvn_run.bat
```
For both:
```
mvn_build_run.bat
```

## Configuration to deploy on Heroku

Extract extension file and add your heroku host in manifest.json file key matches

Add system.properties file for npm and java configuration.

Add engine details for node in package.json file.


### Serving on Heroku

Create an app to Heroku

Add codepipe line of github

Click on deploy button

After succesful build click on Open app


### Serving on Render (https://render.com)

Create a Webservice project and connect this repo

Make sure to use Docker deployment

For more info check Dockerfile