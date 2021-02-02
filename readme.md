# Reproducible Clinical Research Project Template

[![DOI](https://zenodo.org/badge/284042245.svg)](https://zenodo.org/badge/latestdoi/284042245)
![pkgdown](https://github.com/g4challenge/repro-fair-neuro-ds-template/workflows/pkgdown/badge.svg?branch=master)

Author: Lukas Huber <a href="https://orcid.org/0000-0001-5443-0290
">
<img alt="ORCID logo" src="https://info.orcid.org/wp-content/uploads/2019/11/orcid_16x16.png" width="16" height="16" />
https://orcid.org/0000-0001-5443-0290
</a>

## Context
This template can serve as common starting point for traceable analyses in observational clinical research.



## Documentation


This template sets up a reproducible, aimed at FAIR environment for data science. It is possible to use it in different levels of reproducibility. It uses Docker, R, RMarkdown, Git, drake, mandrake, pkgdown, roxygen, roxytest and Github Actions.

The template is aimed at collaborators with technical and non-technical backgrounds, while the minimum requirement to run it, is having docker installed.

## Process

## (Next) Steps
Description of the next analysis steps. How to use this package:

1. start by cloning/forking the git repository
2. use git+github, git lfs, tidyverse and RMarkdown
3. add Drake Plans to for your Pipeline(s)
4. (optional) start the RStudio IDE within Docker + use renv


## Dataset(s)
Description of data provenance and history goes here.


## Code


## Execution - Dev-Steps Getting Started (technical)

Description of steps during development, starting with Docker + RStudio right away.

1. clone this template

```
git clone https://github.com/g4challenge/repro-fair-neuro-ds-template
```

2. within the git repository, start the docker container:

```
docker run --rm -p 8787:8787 -e PASSWORD="1234" -v $(pwd):/home/rstudio my_fair_project 
```

3. open your browser at http://localhost:8787 

4. login using user=`rstudio` password=`1234`

5. click open on the .rproj file.

6. Start using the project, adapt it to your needs + change the git remote


- Local Docker build
    
    docker build . -t my_fair_project

- Local Docker run with default user `rstudio` and PASSWORD="1234" - use different password

```
docker run --rm -p 8787:8787 -e PASSWORD="1234" -v $(pwd):/home/rstudio my_fair_project
```
    
## Results
    
## Additional Remarks

Description of data structures, documentation, requirements and publications.

Elements the user should be familiar with:
- Git
- Git(-hub/-lab)
- R(markdown)
- Tidyverse
- [drake](https://books.ropensci.org/drake/)
