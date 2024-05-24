# But make sure to use the correct version of Java
FROM adoptopenjdk/openjdk17:alpine-jre

# Define the command to run when the container starts
CMD ["echo", "Hello-World"]
