---
layout: single
title: "ICS: Providing a 'subscribe in Google Calendar' link for a feed"
excerpt: Show Google Calendar interface even with a custom feed
date: 2021-04-04
modified: 2022-11-08
categories: til
tags:
    - ics
    - til
---

> If you provide your own custom generated ICS file hosted at a URL,
> it's nice to be able to give Google Calendar users an easy way to subscribe to that feed.
>
> The format is `https://www.google.com/calendar/render?cid=webcal://` followed by your URL. For example:
> `https://www.google.com/calendar/render?cid=webcal://pretalx.com/pycon-au-2020/schedule/export/schedule.ics`.
> This drops the user into the Google Calendar interface with a prompt for them to confirm their subscription.
>
> I believe this only works if you are serving your ICS feed over HTTPS.

Via [til.simonwillison.net](https://github.com/simonw/til/blob/main/ics/google-calendar-ics-subscribe-link.md).
