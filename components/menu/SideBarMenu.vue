<template>
  <div class="navbar">
    <div style="text-align: center;" class="nav-group name">
      <nav-item class="" title="Félicien Fouillet" path="" />
    </div>
    <div id="menu">
      <nav class="main-nav">
        <Burger />
      </nav>
      <Sidebar>
        <h3 style="margin-bottom: 3.5em">
          Félcien Fouillet
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
.main-nav {
    height: 100%;
    display: flex;
    flex-direction: column;
    justify-content: center;
    padding: 0 0.8rem;
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
</style>
