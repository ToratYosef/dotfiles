# Firebase
alias fd='firebase deploy'
alias fdh='firebase deploy --only hosting'
alias fdf='firebase deploy --only functions'

# Git
alias gs='git status'

# GCA: push → rebase → final commit → push
alias gca='
  echo "📤 Pushing current changes...";
  git add . &&
  git commit -m "Temp pre-rebase commit" ||
  echo "No files to commit";

  echo "🔄 Rebasing from remote...";
  git pull --rebase;

  echo "📝 Finalizing auto-commit...";
  git add . &&
  git commit -m "Auto-commit on $(date +'"'"'%A, %b %d @ %H:%M'"'"')" ||
  echo "No new changes after rebase";

  echo "🚀 Pushing final result...";
  git push
'

# Fix hidden unicode spaces
alias fix='read -p "Enter file path: " file && sed -i "s/\xc2\xa0/ /g" "$file"'
