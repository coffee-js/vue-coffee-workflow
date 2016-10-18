
Vue CoffeeScript Workflow
----

> Templating is tricky, use language based DSL.

This project demonstrates writing Vue.js 2 in plain CoffeeScript.
The goal is to find a eas solution to render HTML during building.

### Usage

```bash
gulp ssr
webpack-dev-server --hot --inline
```

Open `build/index.html` to debug.

There are actually 3 entries, and I 'm trying to make it isomorphic:

```text
build/index.html
build/page/a.html
build/page/b.html
```

### TODO

Still need works on:

[ ] hot code swapping
[ ] build with revisions
[ ] migrate to `*.vue` files and build code

### License

MIT
