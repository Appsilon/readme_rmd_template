Readme.rmd template
===================

This is a template repository for Appsilon Data Science R packages. Within the `templates` directory all raw files are stored.

Using:
```
./(path_to_this_repo)/readme_rmd_template.sh init
```
one can initialize his current directory with all the template files.

You can expect directory structure like this after init:
```
 .
 ├── CHANGELOG.md
 ├── LICENSE
 ├── README.Rmd
 ├── build_readme.R
 └── docs
     └── style.css

     1 directory, 5 files
```

All files need to be **completed** with relevant data for your project!

Use `build_readme.R` script within your project to compile README.Rmd to README.md and github pages (within docs directory). Make sure to set up github pages to use docs directory in github repository settings.
