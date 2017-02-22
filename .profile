PATH=${HOME}/.local/bin:${PATH}

if [ $TERMINIX_ID ] || [ $VTE_VERSION ]; then
    source /etc/profile.d/vte.sh
fi
