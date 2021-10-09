# Welcome to Flutter Practise contributing guide <!-- omit in toc -->

Thank you for planning to invest time in contributing to our project! 

Read our [Code of Conduct](./CODE_OF_CONDUCT.md) to keep our community approachable and respectable.

In this guide you will get an overview of the contribution workflow from opening an issue, creating a PR, reviewing, and merging the PR.


## Guide to this repo

Widgets of a week is a intiative by Flutter Community that keeps on adding new widget every week. Currently in this repository we have 80 widgets available. Our target will is to bring all widgets that is demonstrated on [Youtube Channel](https://www.youtube.com/playlist?list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG) in this repo as a practise guide.


## Structure guide
* Use ```/images``` directory to keep images for any new widget
* For coding, check ```/lib/widget_of_week``` directory
    - ``main`` file is entry of these widgets - in case required update accordingly
    - ``constants`` file will be used to add display name of output list and route for click on list ***(Must Update)***
    - ``routes`` file will be used to add routes for maintining click behaviour ***(Must Update)***


## TODO's
- [ ] [interactiveViewer](https://www.youtube.com/watch?v=zrn7V3bMJvg&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=88)

- [ ] [gridView](https://www.youtube.com/watch?v=bLOtZDTm4H8&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=89)

- [ ] [switchListTitle](https://www.youtube.com/watch?v=0igIjvtEWNU&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=90)


- [ ] [Location](https://www.youtube.com/watch?v=65qbtJMltVk&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=91)

- [ ] [deviceInfo](https://www.youtube.com/watch?v=8T3g6HU5Odo&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=92)

- [ ] [imageFiltered](https://www.youtube.com/watch?v=7Lftorq4i2o&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=93)

- [ ] [PhysicalModel](https://www.youtube.com/watch?v=XgUOSS30OQk&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=94)

- [ ] [Animations](https://www.youtube.com/watch?v=HHzAJdlEj1c&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=95)

- [ ] [flutterSlidable](https://www.youtube.com/watch?v=QFcFEpFmNJ8&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=96)

- [ ] [rotatedBox](https://www.youtube.com/watch?v=BFE6_UglLfQ&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=97)

- [ ] [expansionPanel](https://www.youtube.com/watch?v=2aJZzRMziJc&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=98)

- [ ] [scrollbar](https://www.youtube.com/watch?v=DbkIQSvwnZc&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=99)

- [ ] [connectivity](https://www.youtube.com/watch?v=P2vaBZDSqzg&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=100)

- [ ] [flutterLogo](https://www.youtube.com/watch?v=aAmP-WcI6dg&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=101)


- [ ] [animatedTextKit](https://www.youtube.com/watch?v=foQTKCQqVWk&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=102)


- [ ] [mouseRegion](https://www.youtube.com/watch?v=1oF3pI5umck&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=103)

- [ ] [sensorsPlus](https://www.youtube.com/watch?v=Fq5zNPJufD0&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=104)

- [ ] [collection](https://www.youtube.com/watch?v=Ymw9xfRucK0&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=105)

- [ ] [heroMode](https://www.youtube.com/watch?v=AaIASk2u1C0&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=106)

- [ ] [refreshIndicator](https://www.youtube.com/watch?v=ORApMlzwMdM&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=108)

- [ ] [flow](https://www.youtube.com/watch?v=NG6pvXpnIso&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=109)

***To start, pick these TODO items and raise merge request for the same.***


### Issues

#### Create a new issue
If you spot a problem with the docs, [search if an issue already exists](https://docs.github.com/en/github/searching-for-information-on-github/searching-on-github/searching-issues-and-pull-requests#search-by-the-title-body-or-comments). If a related issue doesn't exist, you can open a new issue using a relevant [issue form](https://github.com/github/docs/issues/new/choose). 

#### Solve an issue

Scan through our [existing issues](https://github.com/github/docs/issues) to find one that interests you. You can narrow down the search using `labels` as filters. See [Labels](/contributing/how-to-use-labels.md) for more information.

### Make Changes

#### Make changes in the UI

Click **Make a contribution** at the bottom of any docs page to make small changes such as a typo, sentence fix, or a broken link. This takes you to the `.md` file where you can make your changes and [create a pull request](#pull-request) for a review. 

 <img src="./images/contribution_cta.png" width="300" height="150" /> 

#### Make changes locally

1. [Install Git LFS](https://docs.github.com/en/github/managing-large-files/versioning-large-files/installing-git-large-file-storage).

2. Fork the repository.
- Using GitHub Desktop:
  - [Getting started with GitHub Desktop](https://docs.github.com/en/desktop/installing-and-configuring-github-desktop/getting-started-with-github-desktop) will guide you through setting up Desktop.
  - Once Desktop is set up, you can use it to [fork the repo](https://docs.github.com/en/desktop/contributing-and-collaborating-using-github-desktop/cloning-and-forking-repositories-from-github-desktop)!

- Using the command line:
  - [Fork the repo](https://docs.github.com/en/github/getting-started-with-github/fork-a-repo#fork-an-example-repository) so that you can make your changes without affecting the original project until you're ready to merge them.

- GitHub Codespaces:
  - [Fork, edit, and preview](https://docs.github.com/en/free-pro-team@latest/github/developing-online-with-codespaces/creating-a-codespace) using [GitHub Codespaces](https://github.com/features/codespaces) without having to install and run the project locally.

3. Install or update to **Node.js v16**. For more information, see [the development guide](contributing/development.md).

4. Create a working branch and start with your changes!

### Commit your update

Commit the changes once you are happy with them. See [Atom's contributing guide](https://github.com/atom/atom/blob/master/CONTRIBUTING.md#git-commit-messages) to know how to use emoji for commit messages.

Once your changes are ready, don't forget to [self-review](/contributing/self-review.md) to speed up the review process:zap:.

### Pull Request

When you're finished with the changes, create a pull request, also known as a PR.
- Fill the "Ready for review" template so that we can review your PR. This template helps reviewers understand your changes as well as the purpose of your pull request. 
- Don't forget to [link PR to issue](https://docs.github.com/en/issues/tracking-your-work-with-issues/linking-a-pull-request-to-an-issue) if you are solving one.
- Enable the checkbox to [allow maintainer edits](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/allowing-changes-to-a-pull-request-branch-created-from-a-fork) so the branch can be updated for a merge.
Once you submit your PR, a Docs team member will review your proposal. We may ask questions or request for additional information.
- We may ask for changes to be made before a PR can be merged, either using [suggested changes](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/incorporating-feedback-in-your-pull-request) or pull request comments. You can apply suggested changes directly through the UI. You can make any other changes in your fork, then commit them to your branch.
- As you update your PR and apply changes, mark each conversation as [resolved](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/commenting-on-a-pull-request#resolving-conversations).
- If you run into any merge issues, checkout this [git tutorial](https://lab.github.com/githubtraining/managing-merge-conflicts) to help you resolve merge conflicts and other issues.

### Your PR is merged!

Congratulations :tada::tada: The GitHub team thanks you :sparkles:. 

Once your PR is merged, your contributions will be publicly visible on the [GitHubs docs](https://docs.github.com/en). 

Now that you are part of the GitHub docs community, see how else you can [contribute to the docs](/contributing/types-of-contributions.md).