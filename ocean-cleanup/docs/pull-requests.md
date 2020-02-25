# Pull Requests
## What are "Pull Requests" and Why?
A Pull Request is a system set so that peers can check your changes and your work before it's pushed into the master branch.

They're important because they make sure that changes in the local won't break anything within the master branch, of course there are methods set in place so that you can fix these changes, but pull requests help so that you don't have to use git rebase.

## How do you make a "Pull Request"?

1. Create a new branch and make your changes on that new branch.
```
git checkout -b yourbranchname
```
> Hopefully you haven't commited changes while on the master branch... If you haven't, you can still do this step!
2. Make sure that your main branch is up to date with master and all your changes that you mean to commit and add are done so.
```
git add . // This adds all changes to your commit keep in mind
git commit -m "your desired message" // Commit your changes with a message
git merge master // Merge changes from master
git push // Push your changes to the origin of your local branch
```
> Sometimes when you create a new branch and its your first time pushing, you have to follow a certain command that looks like: git push -u origin yourbranchname, just follow what git tells you to do in that case
3. Navigate to our GitHub project page and you should see an indication that you've pushed changes recently to your local branch, and it is asking you to compare and make a pull request.
4. Make sure those changes are correct, add a description and make the pull request!
