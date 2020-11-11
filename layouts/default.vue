<template>
  <div id="app">
    <div class="grid">
      <div v-if="screenWidth >= 768">
        <!-- <NavBar /> -->

        <div class="navbar">
          <div class="nav">
            <div class="nav-group">
              <nav-item title="cv" path="cv" />
              <nav-item title="portfolio" path="portfolio" />
            </div>

            <div style="text-align: center;" class="nav-group name">
              <nav-item class="active" title="Félicien Fouillet" path="" />
            </div>

            <div class="nav-group">
              <nav-item title="blog" path="blog" />
              <nav-item title="contact" path="contact" />
            </div>
          </div>
        </div>
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
import NavItem from '../components/menu/NavItem.vue'
import SideBarMenu from '../components/menu/SideBarMenu.vue'

export default {
  name: 'App',
  components: { NavItem, SideBarMenu },
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
  /*                   NAVBAR                   */
  /**********************************************/

  .active {
    background-color: indianred;
  }

  .nav {
    display: flex;
    justify-content: center;
    width: 75%;
  }

  .navbar {
    grid-area: navbar;
    height: 3.5em;
    background-color: #343434;
    display: flex;
    justify-content: center;
  }

  .nav-group {
    display: flex;
    justify-content: space-around;
    width: 100%;
    height: 100%;
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

  @media (max-width: 768px) {

    /**********************************************/
    /*                   NAVBAR                   */
    /**********************************************/
    .navbar {
      width: 100%;
      height: 100%;
      position: sticky;
      top: 0;
      z-index: 1;
    }
    .name {
      transform: translateX(1.5em);
    }
    .nav-item {
      height: 100%;
      min-height: 2.25em;
    }
  }
</style>
