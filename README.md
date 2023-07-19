# auth-mkdocs
Arcana Auth Documentation based on Mkdocs, material design

## Prerequisites

1. Install mkdocs, version 1.4.2 or higher
2. Install all packages listed in the requirements.txt file
3. Use python v 3.9.7 or higher
4. For Mac build, besides enabling all packages in requirements.txt make sure these are installed for meta tags used in social preview of shared links

`brew install cairo freetype libffi libjpeg libpng zlib`

For more details, see: [mkdocs for material dependencies](https://squidfunk.github.io/mkdocs-material/setup/dependencies/image-processing/)

If you see build issues on Mac due to cairo lib path try adding:

`export DYLD_FALLBACK_LIBRARY_PATH=/opt/homebrew/lib`

## Environment Variables

`GOOGLE_ANALYTICS_ID=<Use from Arcana Vault - Contact Ajay>`

`DOCS_SITE_URL='https://docs.arcana.network'`

`MARKER_IO_DESTINATION_ID="Use from Arcana Vault - Contact Ajay>"`

`PYTHON_VERSION="3.9"`

## Build

```sh
mkdocs build
```

## Generate Local Site

```sh
mkdocs serve -a localhost:8100

```
