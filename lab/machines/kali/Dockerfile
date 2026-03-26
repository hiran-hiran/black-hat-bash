FROM kalilinux/kali-rolling

RUN apt update && apt install -y --no-install-recommends \
    nmap \
    netcat-openbsd \
    curl \
    wget \
    dnsutils \
    arp-scan \
    iputils-ping \
    iproute2 \
    vim-tiny \
    whatweb \
    jq \
    nikto \
    tree \
    dirsearch \
    ffuf \
    wfuzz \
    && rm -rf /var/lib/apt/lists/*

RUN wget -q https://github.com/RustScan/RustScan/releases/download/2.3.0/rustscan_2.3.0_amd64.deb -O /tmp/rustscan.deb \
    && dpkg -i /tmp/rustscan.deb || true \
    && apt update && apt install -f -y \
    && rm /tmp/rustscan.deb && rm -rf /var/lib/apt/lists/*

WORKDIR /root

CMD ["bash"]
