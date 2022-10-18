# Skeleton R Shiny / Python

## R Package with a R Shiny web app

### Deployment

```Rscript
library(Squelette)
Squelette::runApp(backend="http://localhost:8000")
```

## Python Pacakge with a Starlette web app

### Deployment

```python
from skeleton import cmd
cmd.api.serve()
```
