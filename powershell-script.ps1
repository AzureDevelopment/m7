$url = "https://prod-07.northeurope.logic.azure.com:443/workflows/bf5481d3d1e3423daf737b2f2ef1dc2d/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=h0hAJFFWZ8QrQDJ_bPg7cexpExdyw9yQI4zRDeOgAqs"
$data = @{
    tests = 
        @{
            "failed" = 1
            "total" = 10
        }
}
$body = $data | ConvertTo-Json
Invoke-RestMethod -Method 'Post' -Uri $url -Headers @{
    "Content-Type" = "application/json"
} -Body $body