# docker-baseimage-alpine

Nordstrom's Alpine Linux-derived Docker baseimage. Basically upstream Alpine with a few additions.

The images produced from this repo are published to `quay.io/nordstrom/baseimage-alpine`. We intend to publish a tag for each major release of Alpine[1]. We will probably only actively maintain images for one major release at a time (currently, `3.6` is actively maintained).

[1] Yes, this means that we overwrite the tag value when updating. Maintaining fine-grained versioning in the `FROM` of a Dockerfile is a significant hassle (which would be necessary if we used immutable tags), so mutating the tag value is a compromise.
