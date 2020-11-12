<template>
  <div class="navbar">
    <div class="nav-group name">
      <nav-item id="name" class="active" title="Félicien Fouillet" path="" />
    </div>

    <div class="menu">
      <Burger />
    </div>

    <Sidebar>
      <h3 style="margin-bottom: 3.5em" @click="toggle">
        <NuxtLink to="/">
          Félcien Fouillet
        </NuxtLink>
      </h3>
      <ul class="sidebar-panel-nav">
        <li>
          <div @click="toggle">
            <NuxtLink to="/cv">
              Cv
            </NuxtLink>
          </div>
        </li>
        <li>
          <div @click="toggle">
            <NuxtLink to="/portfolio">
              Portfolio
            </NuxtLink>
          </div>
        </li>
        <li>
          <div @click="toggle">
            <NuxtLink to="/blog">
              Blog
            </NuxtLink>
          </div>
        </li>
        <li>
          <div @click="toggle">
            <NuxtLink to="/contact">
              Contact
            </NuxtLink>
          </div>
        </li>
      </ul>
    </Sidebar>
  </div>
</template>

<script>
import { mutations } from '../../plugins/store'
import Burger from './Burger.vue'
import Sidebar from './Sidebar.vue'

export default {
  name: 'SideBarMenu',
  components: {
    Burger,
    Sidebar
  },
  methods: {
    toggle () {
      mutations.toggleNav()
    }
  }
}
</script>

<style scoped>
  .navbar {
    width: 100vw;
    position: sticky;
    top: 0;
    z-index: 1;
  }

  .name {
    display: flex;
    justify-content: center;
    text-align: center;
  }

  .menu {
    position: absolute;
    top: .05em;
    right: 0;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: flex-end;
    height: 100%;
    padding: 0 1rem;
  }

  #name {
    width: 65%;
    height: 100%;
    min-height: 2.25em;
  }

  ul.sidebar-panel-nav {
    list-style-type: none;
  }

  ul.sidebar-panel-nav > li > div {
    color: #fff;
    text-decoration: none;
    font-size: 1.5rem;
    display: block;
    padding-bottom: 0.5em;
  }

  .active {
    background-color: indianred;
  }

  @media (max-width: 420px) {
    #name {
      width: 100%;
    }
  }
</style>
