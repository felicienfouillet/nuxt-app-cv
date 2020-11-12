<template>
  <div id="app">
    <div class="grid">
      <div v-if="screenWidth >= 768">
        <NavBarMenu />
      </div>
      <div v-else>
        <SideBarMenu />
      </div>

      <Nuxt />

      <div class="footer">
        <div class="footer-group">
          <a target="_blank" href="https://www.linkedin.com/in/f%C3%A9licien-fouillet-772591197/"><i class="fab fa-linkedin fa-2x" /></a>
          <i class="fas fa-at fa-2x" />
          <i class="fas fa-phone-square fa-2x" />
        </div>

        <div class="footer-group">
          <p>© Félicien FOUILLET - 2020</p>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
// import { component } from 'vue/types/umd'
import NavBarMenu from '../components/menu/NavBarMenu.vue'
import SideBarMenu from '../components/menu/SideBarMenu.vue'

export default {
  name: 'App',
  components: { NavBarMenu, SideBarMenu },
  computed: {
    screenWidth () {
      return window.innerWidth
    }
  }
}
</script>

<style>
  @import url('../assets/style.css');
  @import url('../assets/ui/fontawesome-5.15.0/css/all.css');

  .grid {
    display: block;
    width: 100vw;
  }

  /**********************************************/
  /*                   FOOTER                   */
  /**********************************************/

  .footer {
    grid-area: footer;
    display: flex;
    flex-direction: column;
    justify-content: space-around;
    align-items: center;
    margin: 0.5em 0;
  }

  .footer i {
    margin: 0 1em;
  }

  .footer a {
    text-decoration: none;
    color: black;
  }

  .footer p {
    font-family: 'Oswald-Light', sans-serif;
    font-size: 1em;
    margin-bottom: 0.5em;
  }

  .footer-group {
    grid-area: footer;
    display: flex;
    justify-content: space-around;
    align-items: center;
    background-color: #3B3B3B;
  }
</style>
