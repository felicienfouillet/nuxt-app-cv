<template>
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
</template>

<script>
import NavItem from './NavItem.vue'

export default {
  name: 'NavBarMenu',
  components: {
    NavItem
  }
}
</script>

<style scoped>
  /**********************************************/
  /*                   NAVBAR                   */
  /**********************************************/

  .active {
    background-color: indianred;
  }

  .nav {
    display: flex;
    flex-direction: row;
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
    flex-direction: row;
    justify-content: space-around;
    width: 100%;
    height: 100%;
  }

</style>
