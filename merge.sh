for repo in intro-curriculum-3001; do
git remote add ${repo} ../${repo}
git fetch ${repo}
git read-tree --prefix=${repo} ${repo}/master
git checkout -- .
git add .
git commit -m "add ${repo}"
git merge -s subtree child_repo1/master --allow-unrelated-histories
done