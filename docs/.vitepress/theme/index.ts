import DefaultTheme from 'vitepress/theme'
import './custom.css'

import Callout from './components/Callout.vue'
import PointsTable from './components/PointsTable.vue'
import TroopRatio from './components/TroopRatio.vue'
import DayChecklist from './components/DayChecklist.vue'
import TimelineRow from './components/TimelineRow.vue'
import TierBadge from './components/TierBadge.vue'
import Frequency from './components/Frequency.vue'
import HeroCard from './components/HeroCard.vue'

export default {
  extends: DefaultTheme,
  enhanceApp({ app }) {
    app.component('Callout', Callout)
    app.component('PointsTable', PointsTable)
    app.component('TroopRatio', TroopRatio)
    app.component('DayChecklist', DayChecklist)
    app.component('TimelineRow', TimelineRow)
    app.component('TierBadge', TierBadge)
    app.component('Frequency', Frequency)
    app.component('HeroCard', HeroCard)
  },
}
