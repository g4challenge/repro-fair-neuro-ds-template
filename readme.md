# Project Template

This template sets up a reproducible, aimed at FAIR environment for data science.


## Dataset(s)
Description of data provenance and history goes here.

## (Next) Steps
Description of the next analysis steps


## Dev-Steps

Description of steps during development


- Local Docker build
    
    docker build . -t my_fair_project

- Local Docker run with default user `rstudio` and PASSWORD="1234" - use different password

```
docker run --rm -p 8787:8787 -e PASSWORD="1234" -v $(pwd):/home/rstudio my_fair_project
```
    
## Additional Remarks

Description of data structures, documentation, requirements and publications.

Elements the user should be familiar with:
- Git
- Git(-hub/-lab)
- R(markdown)
- Tidyverse
- [drake](https://books.ropensci.org/drake/)
