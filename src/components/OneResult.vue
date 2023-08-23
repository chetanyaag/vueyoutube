<template>
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-4">
            <div class="background-img" :style="{ 'background-image': 'url(' + thumbnails + ')' }">

                <button class="btn btn-danger video_thumbnail" v-on:click="playvideo"> {{play_text}}</button>
            </div>
        </div>
        <div class="col-md-4">
            <h3>{{ title }}</h3>
            <p>
                {{ disciption }}
            </p>

        </div>
        <div class="col-md-2"></div>
        <br />
        <div class="video-container">
        <Youtube v-if="show" :video-id="linkVideo"
      :player-vars="playerVars"/></div>
    </div>
</template>

<script>
import { Youtube } from 'vue-youtube';

export default {
    data: function () {
        return { videoId: 'QWswT3WeiEU', 
      playerVars: {
        // autoplay: 1
      },
      show: false,
      play_text:"play"
    }
    },
    methods: {
        playvideo: function () {
            if(this.show) {
                this.show = false;
                this.play_text = ""
        }else{
            this.show = true;
            this.play_text="close X"
        }}
    },
    components:{
        Youtube
    },
    props: {
        linkVideo: String,
        title: String,
        disciption: String,
        thumbnails: String,
    }
}
</script>

<style >
.background-img {
    background-color: #468;
    /* background: url(""); */
    width: 300px;
    height: 200px;

    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
}

.video_thumbnail {
    margin: 30%;
}
.video-container {
  display: flex;
  justify-content: center;
  align-items: center;

}
</style>