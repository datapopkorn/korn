# PowerShell script to generate badges

# Load recipient data
 = Import-Csv -Path "recipients.csv"

# Iterate over each recipient and generate assertion files
foreach (\ in \) {
    \ = @{
        uid = \.uid
        recipient = @{
            type = "email"
            identity = \.email
        }
        badge = "https://example.com/badge-class"
        verify = @{
            type = "hosted"
            url = "https://example.com/assertions/\.uid"
        }
        issuedOn = (Get-Date).ToString("yyyy-MM-ddTHH:mm:ssZ")
    }

    \ | ConvertTo-Json -Depth 10 | Out-File -FilePath "assertions/\.uid.json" -Encoding utf8
}
