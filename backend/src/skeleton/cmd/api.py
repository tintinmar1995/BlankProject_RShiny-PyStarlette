import uvicorn

def serve(host=None, port=None, log_level=None):
    "Lancement du web service."
    uvicorn.run(
        'skeleton.api:app',
        host=host or '127.0.0.1',
        port=port or 8000,
        log_level=log_level or 'info',
        #timeout_keep_alive=30,
        #workers=config.Workers.api
        )
