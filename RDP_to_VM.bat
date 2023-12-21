 @Echo Off
 set /p id="Enter VM Name/IP: "
 cmdkey /generic:%id% /user:%id%\local-username /pass:plaintext-password
start mstsc /v:%id%

:: TODO Read Creds from a file.
:: TODO Read Creds from an encrypted file.
