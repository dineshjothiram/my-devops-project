import pytest
from app import app

def test_healthz():
    client = app.test_client()
    response = client.get("/healthz")
    assert response.status_code == 200
    assert response.json["status"] == "ok"
