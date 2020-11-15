Journal
=======

Why?
----

I want to share more of my life online. Publishing text online appeals to me.

Problem: I can't seem to find the time or motivation to write blog posts.

I've been keeping journals for over a decade. These journals are written in ink
on physical paper. I spend ~30 minutes each day writing in these journals.

I have decided to switch to a digital journal.

Pros:

- I can use the energy I put into journaling into blogging online.
- I no longer need to travel with a notebook and pen.
- My notes are easy to search with grep.
- Journal content is backed up in multiple places.

Cons:

- I can't doodle, highlight or use chunky orange marker pens.
- I am easily distracted when on an internet-connected device.
- My private thoughts are now stored as bytes in the cloud.

Requirements
------------

1. Must support the following devices
  - a Linux laptop
  - an iOS phone
2. Content can be edited offline on any device.
3. Content can be synced between all devices.
4. Content can be easily and quickly published from any device.
5. Content can be either public or private.
6. Public and private contain must be able to be kept together.
7. Private content must not be accessible by anyone but me.
8. Public content must be available online.
9. Content must be able to link to other content.
10. Web content must have an RSS feed.

Implementation
--------------

Create two git repos.
One repo will be the "source" and contain all notes (public and private).
The other repo will be a read-only copy that will contain only public notes.
The public repo is the one that will be visible on the internet and power the blog.

I can edit notes in a git repo on my laptop and phone.
Sync/edit on iOS with Working Copy and iA Writer.

Private notes will be marked with a special character, let's say `{{ ... }}`
There will be software that removes these lines from the commits in source repo
and publishes them to the public repo.

I could make a custom vim syntax that highlights these lines so it is obvious
they are marked private.

Syntax: https://github.com/stayradiated/vim-journal
Color Scheme: https://github.com/stayradiated/vim-termorrow

I can use git-filter-repo (https://github.com/newren/git-filter-repo/) to
remove all the private notes.

    » echo 'regex:(?s){{.*?}}==>' > ./git-replace.txt
    » git-filter-repo --replace-text ./git-replace.txt

I am using Github Actions to automatically filter and push new commits to the
public repo. The action will only do a regular "git push" by default. This
means if I accidentally delete or edit the git-replace.txt file the action will
fail as the history would have changed.

https://github.com/stayradiated/git-filter-repo-docker-action

...


To make it quick and easy to edit the file for the current day, I have created
a tiny shell script that does for me.

    » journal

If no file exists for the current day, the script will create one using a
template.

Todo
----

Investigate journal.txt format. (https://journaltxt.github.io)
