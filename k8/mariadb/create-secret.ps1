kubectl create secret generic mariadb-secret `
  --from-literal=MYSQL_ROOT_PASSWORD=$(-join ((48..57 + 65..90 + 97..122) | Get-Random -Count 20 | % {[char]$_})) `
  --from-literal=MYSQL_PASSWORD=$(-join ((48..57 + 65..90 + 97..122) | Get-Random -Count 20 | % {[char]$_})) `
  --dry-run=client -o yaml | kubectl apply -f -