cd /sdcard/web/push/
for i in {0..500}
do
vim -E -s test.txt <<EOF
%s/Hello/Hello0/g
:update
:q
EOF
git add .
git commit -m "Initial commit"
git push origin main
done