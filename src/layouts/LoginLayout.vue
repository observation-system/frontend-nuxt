LoginLayout.vueJavaScript
<template>
  <v-app dark>
    <span class="bg"></span>
    <v-main>
      <v-container fill-height>
        <Nuxt />
      </v-container>
    </v-main>
  </v-app>
</template>
 
<style scoped>
.bg {
  width: 100%;
  height: 100%;
  position: absolute;
  top: 0;
  left: 0;
  background-size: cover;
  background-color: rgb(255, 255, 255);
}
</style>