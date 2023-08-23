<template>
    <div><br />
        <h2 class="hC">Search Results</h2>
        <br /><br />
        <OneResult v-for="item in items" :key="item.etag" :thumbnails="item.snippet.thumbnails.high.url" :linkVideo="item.id.videoId" :title="item.snippet.title" :disciption="item.snippet.description" />

    </div>
</template>

<script>
import OneResult from "./OneResult.vue";
export default {

    components:{
        OneResult
    },

    data: function () {

        console.log(this.$props)

        return{
            linkVideo: "https://i1.sndcdn.com/visuals-000182090151-ze7NEX-t1240x260.jpg",
            title: "play video check the videoslist thnask",
            disciption: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...Neque porroquisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..."
        }
    },
    methods: {

    },
    props:{
        items:Array
    }
}

</script>
<style scoped>
.hC {
    margin-top: 30px;
    text-decoration: underline;
}


</style>