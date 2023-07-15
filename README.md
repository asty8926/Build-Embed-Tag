Today I'm presenting you one of the most useful tag I've made:
# **The Best Embed Maker Command**

> Have you ever dreamt of creating an Embed Message with images, a footer, a custom side color... easily with just a command?
> As you may already know, Carl-bot has the `embed` command that limits you to only a title, a description and a side color, and the `cembed` command that requires you to know about what `JSON` even is (which is not the majority, let's face it), and is a pain to use on a regular basis (or even once to be honest).

> This is why out of frustration and as a huge QoL (Quality of Life) improvement for you all, I built this `buildembed` custom command (`be` for short), which is very easy and convenient to use, while being powerful!

**Features**

• Each field name has **Substring Matching**, meaning you can for example type `t` for `title`, `desc` for `description`, `c` or `col` for `color` and it will still recognize it!

• You can specify any field in the **order of your choice**! Unlike other embed commands, if you want to specify a footer, then a thumbnail, then a title, you can!

• For the `color` field, you can specify either a **color name**, a hexadecimal code (like `#eeaaee`), or even `self` for your own color.

• **Custom-made blocks** to use in some fields, such as user `{avatar}` and server `{icon}` in image fields, `{server}` and `{channel}` in text fields, and `{channel(mention)}` in the Description field.

• Even if you don't have Nitro, ability to use **custom emojis** **from other servers**, by using `<emoji` (literally) followed by the **emoji ID** and `>`.
   For example, `<emoji811624815714500658>` would display :carlnap:.

:keyboard: **Usage**
```css
!be fieldName:Content|fieldName:Content|fieldName:Content...
```

📥 **Import link**

**<https://carl.gg/t/1157946>**

🖼️ **Available Fields and Colors**
![image](https://i.imgur.com/uTQ7q0i.png)
![image](https://i.imgur.com/XX5NWSI.png)


## Additional important notes about the `buildembed` command above:

• The `timestamp` field only accepts `now` as a value.

• You can optionally specify a channel mention or channel ID as the first argument, so your embed will be built and redirected to that channel instead!
   Example: `!be 456625369974308866 d:My description|color:red|time:now`

• As a server admin (as long as you have access to the Dashboard in your server), you can edit in the code the default values for any field.
   For example, if you want that the side color defaults to your server's main color or any custom color, or that the footer defaults to the name of your server (it's just an example) if the user didn't specify any, you can!

• The command includes the error messages that are built into the bots already, so if a field is incorrect, it will try to tell you why.

• Of course, since my code is accessible, you can also customize the custom colors names and hex I put to fit your needs; although I tried to include enough of them.

• Ability to restrict the command to be used only in certain channels or by certain roles only (no restriction by default after importing).
   Read the comments in the code if you wish to set up those restrictions, and the rest of the code will do it for you!

• Ensure that the `cembed` command is **enabled** in your server, as it is the command that this tag is using under the hood to build the final embed!
   Use `!enable cembed` to enable it if it wasn't.

__A full real example of how powerful the command can be:__
**Simple Embed**
```yaml
!be t:My title|d:My description|i:https://i.imgur.com/0l0ZBCm.png
```
**Advanced Embed** 
![image](https://i.imgur.com/mQFkraP.png)

```yaml
!be name:{user}|nameicon:{avatar}|t:Carl-bot|titleurl:https://carl.gg|d:Hi <emoji811624815714500658>|color:blurple|f:I am at the bottom|footericon:{icon}|thumb:https://i.imgur.com/0l0ZBCm.png|image:https://i.imgur.com/0l0ZBCm.png|time:now
```
