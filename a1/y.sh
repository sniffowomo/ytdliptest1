#!/usr/bin/env bash
set -euo pipefail

### Colors
MG="\e[35;3m"
RE="\e[31;3m"
GR="\e[32;3m"
NC="\e[33;3m"

# Commands

# Get xyizko banner
logo() {
    url="https://snips.sh/f/ZuwtQ3Pk0x?r=1"
    curl $url
}

b1() {
    echo -e "${MG}----------------------------"
    echo -e "Startosphere Introduction to Cybersecurity                               "
    echo -e "Livel class playlist downloader                                           "
    echo -e "                                                                     "
    echo -e "Source Link                                                              "
    echo -e "https://www.youtube.com/playlist?list=PLQL6z4JeTTQk_z3vwSIvn6wIHMeNQFU3d "
    echo -e "                                                                     "
    echo -e "Download being donewwith                                                 "
    echo -e "https://github.com/yt-dlp                                                "
    echo -e "----------------------------${NC}"
    echo -e ""
    echo -e "${RE} WARNING - Each file is ~ 3GB"
    echo -e "${NC}"
}

check_install_ytdlp() {
    echo -e "Checking if yt-dlp is installed..."
    if ! command -v yt-dlp &>/dev/null; then
        echo -e " yt-dlp is not installed. Installing..."
        uv add yt-dlp
    else
        echo "yt-dlp is already installed...."
    fi
}

download_playlist() {
    pl="https://youtube.com/playlist?list=PLQL6z4JeTTQk_z3vwSIvn6wIHMeNQFU3d&si=tyzV89mymAqAdb5Y"
    echo -e "----------------------------"
    echo -e "Downloading playlist..."
    uvx yt-dlp $pl \
        --yes-playlist \
        --format 'bestvideo*+bestaudio' \
        --output "%(playlist_index)s - %(title)s.%(ext)s"
}

# Execution
logo
b1
check_install_ytdlp
download_playlist
