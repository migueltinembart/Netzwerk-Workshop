FROM python
COPY ./ /docs
WORKDIR /docs/
RUN python -m pip install --upgrade pip
RUN pip install mkdocs
RUN pip install mkdocs-material
RUN pip install mkdocs-callouts
EXPOSE 8080
CMD ["mkdocs", "serve"]