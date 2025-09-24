template for making react apps

usage: `make-react-app.sh dirname`

you'll need to edit make-react-app to point at the directory that it's in (unless you put it in `~/code/react-template`

after that run `npm run dev` to spin up a webserver or `npm run build` to do a prod build (faster, no debug). If you're doing a prod build, you want to take everything in `dist` (html, css, js, etc) and put it on your webserver or whatever.

run `npm run new-component ComponentName` to add new react components.
