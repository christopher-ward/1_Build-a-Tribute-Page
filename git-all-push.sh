# !/bin/bash
# Show status of git and prompt User for commit message to commit all the new changes to git and push to github
# Also create conditionals to check for lack of message and also if User wishes to cancel commit after seeing status.
echo ""

git status

echo ""
echo "Enter 'n' to cancel"
echo ""
read -p 'commit -m ' varCommit

# Check input
if [ -z "$varCommit" ]; then
	echo ""
	echo "Please put in a commit message."
	exit
elif [ "$varCommit" == "n" ] || [ "$varCommit" == "'n'" ]; then
	echo ""
	echo "You canceled the script."
	exit
else
	echo 'Thanks!'
	echo ""
fi

# Add all unstaged files
git add .

# Commit file changes with stored message
git commit -m "$varCommit"

# Push to github remote repository
git push

# Completion Response to User
echo "------------------------------Script Complete------------------------------"
echo ""
echo "commit -m: $varCommit"
echo ""
echo "Pushed to github"
echo ""
git status
echo ""
exit
