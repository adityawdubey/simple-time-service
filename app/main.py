from fastapi import FastAPI, Request
from datetime import datetime
import uvicorn

app = FastAPI()

@app.get("/")
async def read_root(request: Request):
    client_ip = request.client.host
    return {
        "timestamp": datetime.utcnow().isoformat() + "Z",
        "ip": client_ip
    }

if __name__ == "__main__":
    uvicorn.run("main:app", host="0.0.0.0", port=80, reload=False)