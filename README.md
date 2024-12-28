# coolify-firebase-nginx-reverse-proxy
Simple nginx reverse proxy on coolify for firebase authentication..

Referenced docs: https://github.com/mgscox/coolify-firebase-nginx-reverse-proxy.git

## Environment variables
### `FIREBASE_ID`
The firebase project id (e.g. PROJECT-12345) you wish to support authentication for. The project id can be found in the firebase console under project settings.

Rather than use a .env file, it is recommended to set a coolify environment variable in your configuration. Ensure BUILD option is selected when you set the variable.

## Setup and usage
1. Create a new resource in coolify referencing the github repository
2. Ensure build file is set to compose.yml (this is not the default value)
3. Assign a domain name to the resource. Note that you may need to adjust your firebase configuration in your application to set "authDomain" to the domain name you have assigned. Refer to the [firebase redirection best practices](https://firebase.google.com/docs/auth/web/redirect-best-practices?authuser=0&hl=en#proxy-requests) documentation for more information.
4. Add a coolify environment variable called `FIREBASE_ID` with the value of the firebase project id.


# History
Forked from https://github.com/nicanordlc/coolify-nginx-reverse-proxy with thanks to @nicanordlc


# Licence
The original code has no licence assigned. This fork is released under the MIT license subject to any inherited licences.