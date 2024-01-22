FROM python as builder
COPY mkdocs /mkdocs/
WORKDIR /mkdocs/
RUN python -m pip install --upgrade pip
RUN pip install mkdocs
RUN pip install mkdocs-material
RUN pip install mkdocs-callouts
CMD ["mkdocs", "build"]

FROM nginx:alpine
COPY --from=builder /mkdocs/site /usr/share/nginx/html
