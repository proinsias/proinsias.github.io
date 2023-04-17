---
layout: single
title: 'Python: Get a notification via knockknock'
excerpt: Add notifications to your scripts or python code
date: 2021-06-08
last_modified_at: 2022-11-02
categories: til
tags:
    - python
    - til
---

> There is a Python library called [**knockknock**](https://github.com/huggingface/knockknock#email)
> that allows you to get a notification when your training is complete or when it crashes during the process.
> All it takes to get a notification is two additional lines of code.
>
> To send an email, simply insert a decorator `@email_sender()` above your ... function:
>
> ```python
> from knockknock import email_sender
>
>
> @email_sender(
>     recipient_emails=["youremail@gmail.com"], sender_email="anotheremail@gmail.com"
> )
> def main():
>     ...
> ```
>
> To send a notification to your Slack:
>
> ```python
> from knockknock import slack_sender
>
>
> @slack_sender(
>     webhook_url="webhook_url_to_your_slack_room",
>     channel="<your_favorite_slack_channel>",
>     user_mentions=["<your_slack_id>"],
> )
> def main():
>     ...
> ```

Via [Khuyen Tran](https://towardsdatascience.com/how-to-get-a-notification-when-your-training-is-complete-with-python-2d39679d5f0f).
