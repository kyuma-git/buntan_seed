<template>
  <div id="dash-sidebar">
    <div class="dash-sidebar-main" v-bind:class='{toggle_sidebar:sideOpne}' >
      <div class="dash-sidebar-top">
        <p class="middle-title"> {{sideTitle}} </p>
      </div>

      <ul class="dash-sidebar-lists">
        <li  v-for="(link, key, index) in links" :key="index"
          :class="[link.name == '基本情報' ?'dash-sidebar-active': '','dash-sidebar-list']">
          <a :href="link.path" class="link-fix">{{link.name}}</a>
        </li>
      </ul>
    </div>
    <div id="side-open">
      <button type="button" class="btn btn-secondary sidebar-open-button" v-on:click='sideOpne=!sideOpne'>＜＜メニュー</button>
    </div>
  </div>
</template>

<script>
export default {
  data: function() {
    return {
      links:[
        {
          name: "基本情報",
          path: "#",
        },
        {
          name: "お支払い情報",
          path: "#",
        },
        {
          name: "アカウント",
          path: "#",
        },
        {
          name: "設定",
          path: "#",
        },
      ],
      sideTitle: "アカウント設定",
      sideOpne: true
    };
  },

  methods:{
    openSidebar: function(){

    }
  }
};
</script>
<style scoped lang="scss">

</style>