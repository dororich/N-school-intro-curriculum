branch=master
repo=intro-curriculum-30xx
git remote add ${repo} ../${repo}
git fetch ${repo}
git read-tree --prefix=${repo} ${repo}/${branch}
git checkout -- .
git add .
git commit -m "add ${repo}"
git merge -s subtree ${repo}/${branch} --allow-unrelated-histories