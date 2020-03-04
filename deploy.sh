rm -r public/
git submodule add -f -b master https://github.com/tsadoq/tsadoq.github.io.git public
git add .
git fetch
git pull -rebase
git commit -m "Initial commit"
git push -u origin master
hugo
cd public
git add .
git commit -m "Build website"
git push origin master
cd ..

echo 'finished'
