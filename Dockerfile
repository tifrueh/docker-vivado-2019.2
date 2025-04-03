FROM ubuntu:bionic

RUN apt update -y && DEBIAN_FRONTEND=noninteractive apt install -y xorg dbus-x11 lxappearance ubuntu-gnome-default-settings gtk2-engines ttf-ubuntu-font-family fonts-ubuntu-font-family-console fonts-droid-fallback git

COPY Xilinx_Vivado_2019.2_1106_2127.tar.gz /vivado-installer/
COPY install_config.txt /vivado-installer/install_config.txt

RUN tar -xf /vivado-installer/Xilinx_Vivado_2019.2_1106_2127.tar.gz -C /vivado-installer

RUN /vivado-installer/Xilinx_Vivado_2019.2_1106_2127/xsetup --agree 3rdPartyEULA,WebTalkTerms,XilinxEULA --batch Install --config /vivado-installer/install_config.txt && rm -rf /vivado-installer

CMD [ "/bin/bash", "-l" ]
