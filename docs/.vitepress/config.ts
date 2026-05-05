import { defineConfig } from 'vitepress'

export default defineConfig({
  title: 'Ice Kings Battle Book',
  description: 'Whiteout Survival reference for State 4104 and beyond — events, heroes, combat, and strategy.',
  base: '/battle-book/',
  lastUpdated: true,
  cleanUrls: true,
  appearance: 'dark',

  head: [
    ['link', { rel: 'icon', type: 'image/svg+xml', href: '/battle-book/icons/favicon.svg' }],
    ['link', { rel: 'manifest', href: '/battle-book/manifest.webmanifest' }],
    ['link', { rel: 'apple-touch-icon', sizes: '180x180', href: '/battle-book/icons/apple-touch-icon.png' }],
    ['meta', { name: 'theme-color', content: '#0d0f14' }],
    ['meta', { name: 'robots', content: 'index,follow' }],
    ['meta', { property: 'og:type', content: 'website' }],
    ['meta', { property: 'og:title', content: 'Ice Kings Battle Book' }],
    ['meta', { property: 'og:description', content: 'Whiteout Survival reference — events, heroes, combat, and strategy.' }],
    ['meta', { property: 'og:url', content: 'https://greenwh.github.io/battle-book/' }],
    ['meta', { property: 'og:image', content: 'https://greenwh.github.io/battle-book/og-image.png' }],
    ['meta', { property: 'og:image:type', content: 'image/png' }],
    ['meta', { property: 'og:image:width', content: '1200' }],
    ['meta', { property: 'og:image:height', content: '630' }],
    ['meta', { property: 'og:image:alt', content: 'Ice Kings Battle Book — Whiteout Survival reference for State 4104' }],
    ['meta', { name: 'twitter:card', content: 'summary_large_image' }],
    ['meta', { name: 'twitter:title', content: 'Ice Kings Battle Book' }],
    ['meta', { name: 'twitter:description', content: 'Whiteout Survival reference — events, heroes, combat, and strategy.' }],
    ['meta', { name: 'twitter:image', content: 'https://greenwh.github.io/battle-book/og-image.png' }],
  ],

  themeConfig: {
    logo: { src: '/icons/logo.svg', alt: 'Battle Book' },
    siteTitle: 'Battle Book',

    nav: [
      { text: 'Home', link: '/' },
      { text: 'Events', link: '/events/' },
      { text: 'Strategy', link: '/strategy/' },
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
            { text: 'Alliance Championship', link: '/events/alliance-championship' },
            { text: 'Bear Trap', link: '/events/bear-trap' },
            { text: 'Canyon Clash', link: '/events/canyon-clash' },
            { text: 'Crazy Joe', link: '/events/crazy-joe' },
            { text: 'Fishing Tournament', link: '/events/fishing-tournament' },
            { text: 'Foundry Battle', link: '/events/foundry-battle' },
            { text: 'Frostfire Mine', link: '/events/frostfire-mine' },
            { text: 'Hall of Chiefs', link: '/events/hall-of-chiefs' },
            { text: 'King of Icefield', link: '/events/king-of-icefield' },
            { text: 'Mercenary Prestige', link: '/events/mercenary-prestige' },
            { text: 'Snowbusters', link: '/events/snowbusters' },
            { text: 'Sunfire Castle Battle', link: '/events/sunfire-castle' },
          ],
        },
      ],
      '/strategy/': [
        {
          text: 'Strategy',
          items: [
            { text: 'Strategy Hub', link: '/strategy/' },
            { text: 'Furnace 20→30', link: '/strategy/furnace' },
            {
              text: 'Daybreak Island',
              collapsed: false,
              items: [
                { text: 'Overview', link: '/strategy/island/' },
                { text: 'Building Priorities', link: '/strategy/island/buildings' },
                { text: 'Decoration Strategy', link: '/strategy/island/decorations' },
                { text: 'Progression Guide', link: '/strategy/island/progression' },
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
