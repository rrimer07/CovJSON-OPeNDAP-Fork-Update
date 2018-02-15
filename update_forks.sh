# Assumes that the git repository has upstream and remote urls set
# Assumes that you've committed your work on your current branch

update_fork_from_upstream(){
	
	cd $1
	current_branch=$(git rev-parse --abbrev-ref HEAD)
	git fetch upstream
	git pull
	git merge upstream/master
	git push origin master
	git checkout $current_branch	
}

update_fork_from_upstream ~/Capstone/olfs
update_fork_from_upstream ~/Capstone/bes