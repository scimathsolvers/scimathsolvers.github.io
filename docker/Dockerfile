FROM alpine:latest
LABEL Name=scimathsolversgithub Version=0.0.1
RUN apk add --no-cache fortune
ENTRYPOINT ["sh", "-c", "fortune -a | cat"]
ARG commit_number = $(git rev-list --count HEAD) + 1
RUN git add branch -M origin main
RUN git add -A 
RUN git commit -m "Auto-Commit ${commit_number}" 
RUN git push -u origin main
RUN echo "Deployed commit number ${commit_number}"