# Apache Tapestry 4 examples in Docker

Run Apache Tapestry 4 examples in Docker image (Java 5, Tomcat 6.0.53) for demo purposes.

## Build & run

```bash
sudo docker build -t tapestry4-examples .
sudo docker run -p8080:8080 tapestry4-examples:latest
```

## URLs

Go to:
- Workbench: [http://localhost:8080/tapestry-Workbench-4.1.6/](http://localhost:8080/tapestry-Workbench-4.1.6/)
- TimeTracker: [http://localhost:8080/tapestry-TimeTracker-4.1.6/](http://localhost:8080/tapestry-TimeTracker-4.1.6/)
