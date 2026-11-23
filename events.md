---
layout: article
title: Events
excerpt: Upcoming and past events in one place
facebook_events: https://www.facebook.com/profile.php?id=61588121637369&sk=events
---

<div class="event-banner" markdown="1">

## Our next Open Event will be 13th June 2027

Please see our [dedicated Open Event website<span class="visually-hidden"> (opens in a new window)</span>](https://event.ryedaleaquaristsociety.org.uk/){:target="_blank" rel="noopener"} for all the details about what's to come on this fantastic day

</div>

Here's what's coming up at the club. You'll also find our events on our
[Facebook events page<span class="visually-hidden"> (opens in a new window)</span>]({{ page.facebook_events }}){:target="_blank" rel="noopener"}.

{% assign today = site.time | date: "%Y-%m-%d" %}
{% assign all_events = site.data.events | sort: "date" %}
{% assign upcoming_events = all_events | where_exp: "event", "event.date >= today" %}
{% assign past_events = all_events | where_exp: "event", "event.date < today" | reverse %}

## Upcoming events

{% if upcoming_events.size > 0 %}
<ul class="event-list">
{%- for event in upcoming_events %}
{% include event-item.html event=event %}
{%- endfor %}
</ul>
{% else %}
There are no upcoming events at the moment. Keep an eye on our
[Facebook events page<span class="visually-hidden"> (opens in a new window)</span>]({{ page.facebook_events }}){:target="_blank" rel="noopener"}.
{% endif %}

{% if past_events.size > 0 %}
## Past events

<ul class="event-list event-list--past">
{%- for event in past_events %}
{% include event-item.html event=event %}
{%- endfor %}
</ul>
{% endif %}
