
# COMPARE_HISTORY=`git log origin/main..main`
COMPARE_HISTORY=`git log main..origin/main`

RED='\033[0;31m'
NC='\033[0m' # No Color

if [ -n "$COMPARE_HISTORY" ]; then
	echo "${RED}The history of the repository has changed. Please rebase your local branch before pushing.${NC}";
	echo "- git pull --rebase # Run from your default branch or a feature branch that is on the remote.";
	echo "- git rebase main # Run from your feature branch if it isn't on the remote.";
	exit 1
else
	exit 0
fi