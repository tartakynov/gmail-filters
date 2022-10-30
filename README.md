This repository is a template for organizing Gmail filters as human-editable code in version control. This unlocks iterative development of Gmail filters, and lets me avoid interacting with its UI.

This repository does not contain filters that I use in real life.

## Prerequisites

### Install [pipx](https://pypa.github.io/pipx/)
```
brew install pipx
```

And then add `$HOME/.local/bin` to your PATH variable

### Install [gmail-yaml-filters](https://github.com/mesozoic/gmail-yaml-filters)
```
pipx install gmail-yaml-filters
```

## Edit the filters
You can edit the filters in `filters/` folder. See [gmail-yaml-filters](https://github.com/mesozoic/gmail-yaml-filters) for supported syntax.

## Re-generate filters XML from YML
```
make
```

And then you can upload `mail-filters.xml` to Gmail.

This will also create `mail-filters.yml.lock` file, which is a simple merge of all the `filters/*.yml` files.
You should not edit this file manually.

### See the list of labels
Run the following list to see the list of expected labels
```
./labels.py
```

## Links
- http://tom-henderson.github.io/2022/01/11/wrangling-gmail-filters.html
- https://therub.org/2018/11/19/advanced-gmail-filtering-for-linux-kernel-lists/
- https://support.google.com/mail/answer/7190?hl=en
