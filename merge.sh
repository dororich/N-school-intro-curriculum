for repo in intro-curriculum-30xx; do
git remote add ${repo} ../${repo}
git fetch ${repo}
git read-tree --prefix=${repo} ${repo}/master
git checkout -- .
git add .
git commit -m "add ${repo}"
git merge -s subtree ${repo}/master --allow-unrelated-histories
done