## Prerequisites

### Install pipx
```
brew install pipx
```

And then add `$HOME/.local/bin` to your PATH variable

### Install gmail-yaml-filters
```
pipx install gmail-yaml-filters
```

## Edit the filters
You can edit the filters in `filters/` folder.

## Re-generate filters XML from YML
```
make
```

And then you can upload `mail-filters.xml` to Gmail.

This will also create `mail-filters.yml.lock` file, which is a simple merge of all the `filters/*.yml` files.
You should not edit this file manually.
