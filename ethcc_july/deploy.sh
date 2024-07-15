PROGRAM_ID="ethcc_july"

snarkos developer deploy \
--private-key APrivateKey1zkpAbBncdKSNtcAsDogfvFTgjSx9jrFVmJN6Sfeecen7CFt \
--query https://api.explorer.aleo.org/v1 \
--priority-fee 0 \
"${PROGRAM_ID}.aleo" \
--path ./build/ \
--broadcast https://api.explorer.aleo.org/v1/testnet/transaction/broadcast
--network 1