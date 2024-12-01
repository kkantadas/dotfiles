config.load_autoconfig(False)
config.set('content.cookies.accept', 'all', 'chrome-devtools://*')
config.set('content.cookies.accept', 'all', 'devtools://*')
config.set('content.headers.accept_language', '', 'https://matchmaker.krunker.io/*')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version}', 'https://web.whatsapp.com/')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}; rv:90.0) Gecko/20100101 Firefox/90.0', 'https://accounts.google.com/*')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99 Safari/537.36', 'https://*.slack.com/*')

config.set('content.images', True, 'chrome-devtools://*')
config.set('content.images', True, 'devtools://*')
config.set('content.javascript.enabled', True, 'chrome-devtools://*')
config.set('content.javascript.enabled', True, 'devtools://*')
config.set('content.javascript.enabled', True, 'chrome://*/*')
config.set('content.javascript.enabled', True, 'qute://*/*')

c.spellcheck.languages = ['en-US']
c.content.blocking.method = 'both'
c.content.blocking.adblock.lists = [
        "https://easylist.to/easylist/easylist.txt",
        "https://easylist.to/easylist/easyprivacy.txt",
        "https://easylist.to/easylist/fanboy-social.txt",
        "https://secure.fanboy.co.nz/fanboy-annoyance.txt",
        "https://easylist-downloads.adblockplus.org/abp-filters-anti-cv.txt",
        "https://pgl.yoyo.org/adservers/serverlist.php?showintro=0;hostformat=hosts",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/legacy.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2020.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2021.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/badware.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/privacy.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/badlists.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/annoyances.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/resource-abuse.txt",
        "https://www.i-dont-care-about-cookies.eu/abp/",
        "https://secure.fanboy.co.nz/fanboy-cookiemonster.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/unbreak.txt"
    ]

#--My Config--
c.auto_save.session = True

c.content.autoplay = False

c.content.pdfjs = True
c.fonts.default_size = "11pt"
c.tabs.padding = {'top': 2, 'bottom': 2, 'left': 5, 'right': 5}

c.url.default_page = 'https://google.com/'
c.url.start_pages = 'https://google.com'
c.url.searchengines = {
    'DEFAULT':  'https://google.com/search?hl=en&q={}'
}

config.bind('<Ctrl+Left>', 'back')
config.bind('<Ctrl+Right>', 'forward')
config.bind('<Shift+Left>', 'tab-prev')
config.bind('<Shift+Right>', 'tab-next')
config.bind('<Ctrl+r>', 'reload')
config.bind('<Ctrl+Shift+r>', 'reload -f')
config.bind('<Ctrl+Shift+o>', 'adblock-update')
config.bind('<Ctrl+a>', 'hint links spawn mpv /dev/null {hint-url}')

# Background color of unselected tabs.
c.colors.tabs.even.bg = "#262C36"
c.colors.tabs.odd.bg = "#303030"

# Foreground color of unselected tabs.
c.colors.tabs.even.fg = "#eeeeee"
c.colors.tabs.odd.fg = "#eeeeee"

c.colors.tabs.selected.even.bg = "#6b7782"
c.colors.tabs.selected.odd.bg = "#6b7782"

c.fonts.default_size = "11pt"
c.statusbar.show = "never"

config.bind(',ab', 'adblock-update')

config.bind (',ky', 'open -t https://keybr.com')
config.bind (',mt', 'open -t https://monkeytype.com')
config.bind (',yt', 'open -t https://youtube.com')
config.bind (',gm', 'open -t https://mail.google.com/mail/u/0/#inbox')
config.bind (',ce', 'config-edit')

c.editor.command = ['foot', '-e', 'nvim', '{file}', '-c', 'normal {line}G{column0}l']

config.source('/home/kk/.config/qutebrowser/themes/nitdark.py') 

config.bind ('ee', 'spawn --userscript qute-pass')
config.bind ('eu', 'spawn --userscript qute-pass --username-only')
config.bind ('ep', 'spawn --userscript qute-pass --password-only')

