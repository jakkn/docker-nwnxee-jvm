FROM jakkn/nwnxee
# Install plugin run dependencies
RUN mkdir -p /usr/share/man/man1
RUN runDeps="openjdk-8-jdk-headless" \
    && apt-get update \
    && apt-get -y install --no-install-recommends $runDeps \
    && rm -r /var/cache/apt /var/lib/apt/lists
# Configure JVM
ENV NWNX_JVM_CLASSPATH=/nwn/nwnx/org.nwnx.nwnx2.jvm.jar \
    NWNX_JVM_SKIP=n
