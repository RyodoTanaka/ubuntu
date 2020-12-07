((el-get status "required")
 (git-complete status "installed" recipe
               (:name git-complete :type github :pkgname "zk-phi/git-complete" :branch "master" :after nil)))
