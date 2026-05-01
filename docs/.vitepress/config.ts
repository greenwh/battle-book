import { defineConfig } from 'vitepress'

export default defineConfig({
  title: 'Ice Kings Battle Book',
  description: 'Whiteout Survival reference for State 4104 and beyond — events, heroes, combat, and strategy.',
  base: '/battle-book/',
  lastUpdated: true,
  cleanUrls: true,

  head: [
    ['link', { rel: 'icon', href: '/battle-book/icons/favicon.ico' }],
    ['meta', { name: 'theme-color', content: '#0d0f14' }],
    ['meta', { property: 'og:type', content: 'website' }],
    ['meta', { property: 'og:title', content: 'Ice Kings Battle Book' }],
    ['meta', { property: 'og:description', content: 'Whiteout Survival reference — events, heroes, combat, and strategy.' }],
  ],

  themeConfig: {
    logo: { src: '/icons/logo.svg', alt: 'Battle Book' },
    siteTitle: 'Battle Book',

    nav: [
      { text: 'Home', link: '/' },
      { text: 'Events', link: '/events/' },
      { text: 'Troops', link: '/troops/' },
      { text: 'Reference', link: '/reference/glossary' },
    ],

    sidebar: {
      '/events/': [
        {
          text: 'Events',
          items: [
            { text: 'Event Hub', link: '/events/' },
            {
              text: 'SvS (State of Power)',
              collapsed: false,
              items: [
                { text: 'Overview & Strategy', link: '/events/svs/overview' },
                { text: 'Prep Checklist', link: '/events/svs/prep-checklist' },
              ],
            },
          ],
        },
      ],
      '/troops/': [
        {
          text: 'Troops',
          items: [
            { text: 'Troops Hub', link: '/troops/' },
            { text: 'Troop Ratios', link: '/troops/ratios' },
          ],
        },
      ],
      '/reference/': [
        {
          text: 'Reference',
          items: [
            { text: 'Glossary', link: '/reference/glossary' },
            { text: 'Changelog', link: '/reference/changelog' },
          ],
        },
      ],
      '/orientation/': [
        {
          text: 'Orientation',
          items: [
            { text: 'New Member', link: '/orientation/new-member' },
          ],
        },
      ],
    },

    socialLinks: [
      { icon: 'github', link: 'https://github.com/greenwh/battle-book' },
    ],

    search: {
      provider: 'local',
      options: {
        detailedView: true,
      },
    },

    editLink: {
      pattern: 'https://github.com/greenwh/battle-book/edit/main/docs/:path',
      text: 'Suggest an edit on GitHub',
    },

    footer: {
      message: 'Ice Kings Battle Book · Whiteout Survival reference · Best information available — verify against in-game changes.',
      copyright: 'Built with VitePress · Hosted on GitHub Pages',
    },

    outline: {
      level: [2, 3],
      label: 'On this page',
    },

    lastUpdatedText: 'Last updated',
  },
})
