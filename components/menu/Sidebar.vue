<template>
  <div class="sidebar">
    <div v-if="isPanelOpen" class="sidebar-backdrop" @click="closeSidebarPanel" />
    <transition name="slide">
      <div
        v-if="isPanelOpen"
        class="sidebar-panel"
      >
        <slot />
      </div>
    </transition>
  </div>
</template>
<script>
import { store, mutations } from '../../plugins/store.js'

export default {
  computed: {
    isPanelOpen () {
      return store.isNavOpen
    }
  },
  methods: {
    closeSidebarPanel: mutations.toggleNav
  }
}
</script>

<style>
    .slide-enter-active,
    .slide-leave-active
    {
        transition: transform 0.2s ease;
    }

    .slide-enter,
    .slide-leave-to {
        transform: translateX(-100%);
        transition: all 150ms ease-in 0s
    }

    .sidebar-backdrop {
        background-color: rgba(26,26,26,.8);
        width: 100%;
        height: 100%;
        position: fixed;
        top: 0;
        left: 0;
        cursor: pointer;
    }

    .sidebar-panel {
        overflow-y: auto;
        background-color: rgba(52, 52, 52, .8);
        position: fixed;
        left: 0;
        top: 0;
        height: 100%;
        min-width: 45%;
        padding-right: 15em;
        z-index: 999;
        padding: 3rem 20px 2rem 20px;
    }

  @media (max-width: 551px) {
    .sidebar-panel {
      min-width: 50%;
    }
  }

  @media (max-width: 420px) {
    .sidebar-panel {
      min-width: 60%;
    }
  }

  @media (max-width: 376px) {
    .sidebar-panel {
      min-width: 60%;
    }
  }

  @media (max-width: 281px) {
    .sidebar-panel {
      min-width: 70%;
    }
  }
</style>
