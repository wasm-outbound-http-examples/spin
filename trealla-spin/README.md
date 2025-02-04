# Use Spin SDK for Prolog to send HTTP(s) requests from inside WASM

## Instructions for this devcontainer

This demo is based on official Fermion [example](https://developer.fermyon.com/wasm-languages/prolog)
for Prolog language ( [source](https://github.com/fermyon/developer/blob/f6792701cae79afae806dba202c074ab33b8872b/content/wasm-languages/prolog.md) ). 

Tested with Spin 3.1.2 , trealla-spin [commit 1f3ccca7](https://github.com/guregu/trealla-spin/tree/1f3ccca7).

### Preparation

1. Open this repo in devcontainer, e.g. using Github Codespaces.
   Type or copy/paste following commands to devcontainer's terminal.

2. Install the Prolog template from Git repository:

```sh
spin templates install --git https://github.com/guregu/trealla-spin --update
```

### Create the Spin Prolog component

1. `cd` into the folder of this example:

```sh
cd trealla-spin
```

2. Create the Spin component using `http-prolog` template:

```sh
spin new http-request-from-prolog -t http-prolog --accept-defaults
```

3. `cd` into the folder of new project:

```sh
cd http-request-from-prolog
```

4. Replace the template-provided sample with HTTP-request-enabled one:

```
cp ../init.pl ./src/
```

5. Patch `spin.toml` to allow HTTP requests be sent to all hosts (use `insecure:allow-all` with caution):

```sh
sed -i.bak 's/allowed_http_hosts = \[\]/allowed_http_hosts = \["insecure:allow-all"\]/' spin.toml
```

### Test with browser

1. Run this Spin component:

```sh
spin up
```

Codespace will show you "Open in Browser" button. Just click that button or
obtain web address from "Forwarded Ports" tab.

2. After your browser is pointed to URL of that Spin HTTP component, see the result in browser.

Alternatively, just use Curl from additionally opened Codespace terminal:

```sh
curl http://localhost:3000
```

### Finish

Perform your own experiments if desired.
