<<<<<<< HEAD
AJAX-Tabs-Optimization
======================
=======
# Ajax Tabs Challenge

##Learning Competencies
- Identify performance issues.
- Use ajax to your advantage to fetch data on demand.
- Understand and use window.location object and onhashchange event.

##Summary
This is a challenge from the real world. A while ago, the challenges page on socrates 
(DBC's old challenge site) used to take several minutes to load. There are a lot of challenges and the views took too long to render.

All of the data was front-loaded to the client is so we can have a "quick" tab navigation (after the initial load, everything happens client side). Was the cost worth it? Will the user ever look at all the challenges at once?

We thought, can we fake it? Can we render one view at a time without the user noticing much difference? Yes, and we did. The challenges page on socrates went down from few minutes to fraction of a second to load...nice job team!

This app has a series of challenges that are categorized by phase and each phase has a number of units, similar to socrates. The index page currently takes several minutes to render. Your job is to make it load in a fraction of a second.

### Setting Up the Application

Create the `database.yml` file:

```text
cp config/database.yml.example config/database.yml
```

Get the application running as follows:

```text
$ bundle
$ rake db:setup
$ rake db:test:prepare
```

The `rake db:setup` command could take a few minutes.  Once it's done run `rails server` and visit [http://localhost:3000](http://localhost:3000).

It should take 2-4 mins to load.  If you look at the last line of your server logs, you'll see it telling you how much time was spent rendering the views versus how much time was executing `ActiveRecord` methods.  Where's the bottleneck?

### Make it fast!

Your goal is to get the index page to load in under **200ms**.  Yes, that's milliseconds. You are NOT allowed to use any caching techniques.

##Releases

###Release 0
Identify why the app is so slow. Find the offending area(s) responsible for the
performance hit.

###Release 1
Use ajax to fetch the data from each tab dynamically instead of front loading everything.

Do not use `remote: true`.  Write jQuery AJAX as you did in Phase 2.

###Release 2
Make each tab linkable using hashtags and window.location
>>>>>>> 04f69d8448a668ee75e81bfe010c0d012a55f07a
