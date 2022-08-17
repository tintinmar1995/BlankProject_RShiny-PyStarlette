from starlette.applications import Starlette
from starlette.responses import JSONResponse, PlainTextResponse
from starlette.middleware.cors import CORSMiddleware
from starlette.routing import Route

from .. import cmd

def root(request):
    return PlainTextResponse('Squellette Python / R Shiny')

def version(request):
    return JSONResponse(cmd.status.version())

app = Starlette(routes=[
    Route('/', root, methods=['GET'], include_in_schema=False),
    Route('/version', version, methods=['GET']),
])

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # Allows all origins
    allow_credentials=True,
    allow_methods=["*"],  # Allows all methods
    allow_headers=["*"],  # Allows all headers
)
