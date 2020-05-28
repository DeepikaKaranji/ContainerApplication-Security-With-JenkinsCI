FROM node:7-alpine

RUN apk add -U subversion


ADD https://get.aquasec.com/microscanner .
RUN chmod +x microscanner
RUN ./microscanner MDQyZDBkMDdmNTAx
