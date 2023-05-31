TOKEN_BOT_TELEGRAM="1322538934:AAGf6p-NvdOCXqowaX5aFfhuQPKTo4pni78"
ID_CHAT_TELEGRAM="-1001387923273"

# Kirim flashable rom ke channel
cd ~/work/out/target/product/"$DEVICE
function kirim() {
    ARSIP=$(echo $OUTPUT)
    curl -F document=@$ARSIP "https://api.telegram.org/bot$TOKEN_BOT_TELEGRAM/sendDocument" \
        -F chat_id="$ID_CHAT_TELEGRAM" \
        -F "disable_web_page_preview=true" \
        -F "parse_mode=html"
}

kirim