
Vue CoffeeScript Workflow
----

> Templating is tricky, use language based DSL.

This project demonstrates writing Vue.js 2 in plain CoffeeScript.
The goal is to find an easy solution to render HTML during building.

### Usage

* Develop

```bash
gulp ssr
webpack-dev-server --hot --inline
```

Open `build/index.html` to debug.

There are actually 3 entries, and I'm trying to make it isomorphic:

```text
build/index.html
build/page/a.html
build/page/b.html
```

* Build for production

```bash
webpack --config webpack-build.config.coffee
webpack --config webpack.server.coffee
env=prod gulp ssr
```

### TODO

Still need to work on:

* [x] build with revisions
* [x] support `*.vue` files and build code
* [ ] hot code swapping

### License

MIT
