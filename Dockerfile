FROM quay.io/pypa/manylinux2010_x86_64

RUN for PYBIN in /opt/python/*/bin; do "${PYBIN}/pip" install cmake; done

ENV PLAT manylinux2010_x86_64

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
