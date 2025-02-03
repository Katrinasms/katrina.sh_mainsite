
echo "$PWD"
cd ./_site
git config user.name auto-gen-from-jeykell 
git config user.email katrinasms@github.com
git add .
git commit -m "generated $(date +%Y%m%d)"
git push
