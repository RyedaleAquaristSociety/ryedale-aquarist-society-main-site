---
layout: article
title: Ryedale Aquarist Society
show_title: true
excerpt: The little club with a big heart
description: We are a group of fishkeeping enthusiasts based in the Ryedale area of North Yorkshire.
header_logo: /assets/images/final ryedale logo indigo adjusted.png
---

<div class="event-banner" markdown="1">

## Our 2027 Open Event is confirmed for 13th June 2027

Please see our [dedicated Open Event website<span class="visually-hidden"> (opens in a new window)</span>](https://ryedaleaquaristsociety2027.carrd.co/){:target="_blank" rel="noopener"} for all the details about what's to come on this fantastic day

</div>

## Welcome

Welcome to the Ryedale Aquarist Society website! We're a group of fishkeepers based in the Ryedale district in North Yorkshire.
On our website you will find details about the club, in-person meetings/events, news, blog posts and articles relating to fishkeeping.

## Latest News

{%- comment -%} The three newest posts with category: news. Change 3 to show more or fewer. {%- endcomment -%}
{% assign latest_news = site.categories.news | slice: 0, 3 %}
{% if latest_news.size > 0 %}
{% include article-list.html articles=latest_news type='item' show_info=true show_excerpt=true show_readmore=true heading_level=3 %}

[All news &rarr;]({{ '/news.html' | relative_url }})
{% else %}
No news yet.
{% endif %}
