#!/usr/bin/env python
import os
import sys
import webbrowser
import threading
from time import sleep

def open_browser():
    """Open a browser after waiting for the server to start."""
    sleep(3)  # 等待3秒确保服务器已启动
    webbrowser.open('http://127.0.0.1:8080/djangoqrs54/admin/dist/index.html')
    webbrowser.open('http://127.0.0.1:8080/djangoqrs54/front/dist/index.html')
if __name__ == "__main__":
    os.environ.setdefault("DJANGO_SETTINGS_MODULE", "dj2.settings")
    try:
        from django.core.management import execute_from_command_line
    except ImportError as exc:
        raise ImportError(
            "Couldn't import Django. Are you sure it's installed and "
            "available on your PYTHONPATH environment variable? Did you "
            "forget to activate a virtual environment?"
        ) from exc
    if len(sys.argv) > 1 and sys.argv[1] == 'runserver':
        if os.environ.get('RUN_MAIN') != 'true':
            threading.Thread(target=open_browser).start()
    execute_from_command_line(sys.argv)
