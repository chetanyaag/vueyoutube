<template>
    <div>
        <div class="container">
            <h2>Enter the Search keyword</h2>
            <br>
            <!-- <form action=""> -->
                <div class="form-group">
                    <input type="text" class="form-control form-control-lg" placeholder="Hey! you type here"
                        v-model="keyword" name="keyword">
                </div>
                <!-- <button type="submit" class="btn btn-danger newclass">dummy</button> -->
                <button class="btn btn-warning btn-lg" v-on:click="doStuff">Search</button>
            <!-- </form> -->
        </div>
        <SearchResult v-if="show" :items="videos" />
    </div>
</template>

<script>
import SearchResult from "./SearchResult.vue";
// import axios from 'axios';
export default {
    components: {
        SearchResult
    },
    data: function () {

        var list_of_videos = [
            {
                "kind": "youtube#searchResult",
                "etag": "TWZan8-DnhTfHtVnUUHMeG4MLgY",
                "id": {
                    "kind": "youtube#video",
                    "videoId": "nhBVL41-_Cw"
                },
                "snippet": {
                    "publishedAt": "2020-04-03T16:50:03Z",
                    "channelId": "UCsBjURrPoezykLs9EqgamOA",
                    "title": "Vue.js Explained in 100 Seconds",
                    "description": "What is Vue.js? Learn the basics of Vue and build your first reactive UI component in just 100 seconds ...",
                    "thumbnails": {
                        "default": {
                            "url": "https://i.ytimg.com/vi/nhBVL41-_Cw/default.jpg",
                            "width": 120,
                            "height": 90
                        },
                        "medium": {
                            "url": "https://i.ytimg.com/vi/nhBVL41-_Cw/mqdefault.jpg",
                            "width": 320,
                            "height": 180
                        },
                        "high": {
                            "url": "https://i.ytimg.com/vi/nhBVL41-_Cw/hqdefault.jpg",
                            "width": 480,
                            "height": 360
                        }
                    },
                    "channelTitle": "Fireship",
                    "liveBroadcastContent": "none",
                    "publishTime": "2020-04-03T16:50:03Z"
                }
            },
            {
                "kind": "youtube#searchResult",
                "etag": "zxPvICG_Mbli20iLOrwQEt9UN90",
                "id": {
                    "kind": "youtube#video",
                    "videoId": "Jk0smQXxd9k"
                },
                "snippet": {
                    "publishedAt": "2023-06-23T23:59:21Z",
                    "channelId": "UCyUBW72KU30dfAYWLVNZO8Q",
                    "title": "React vs Vue in 2023 - which is Best?",
                    "description": "React vs Vue in 2023 ... which is the best choice for developers. Article: ...",
                    "thumbnails": {
                        "default": {
                            "url": "https://i.ytimg.com/vi/Jk0smQXxd9k/default.jpg",
                            "width": 120,
                            "height": 90
                        },
                        "medium": {
                            "url": "https://i.ytimg.com/vi/Jk0smQXxd9k/mqdefault.jpg",
                            "width": 320,
                            "height": 180
                        },
                        "high": {
                            "url": "https://i.ytimg.com/vi/Jk0smQXxd9k/hqdefault.jpg",
                            "width": 480,
                            "height": 360
                        }
                    },
                    "channelTitle": "Stefan Mischook",
                    "liveBroadcastContent": "none",
                    "publishTime": "2023-06-23T23:59:21Z"
                }
            },
            {
                "kind": "youtube#searchResult",
                "etag": "u1JflQUGo6kgSy0ojJR_OuCpaH4",
                "id": {
                    "kind": "youtube#video",
                    "videoId": "FXpIoQ_rT_c"
                },
                "snippet": {
                    "publishedAt": "2021-09-07T12:58:33Z",
                    "channelId": "UC8butISFwT-Wl7EV0hUK0BQ",
                    "title": "Vue.js Course for Beginners [2021 Tutorial]",
                    "description": "Learn Vue 3 by in this full course. Vue.js is an open-source model–view–view model front end JavaScript framework for building ...",
                    "thumbnails": {
                        "default": {
                            "url": "https://i.ytimg.com/vi/FXpIoQ_rT_c/default.jpg",
                            "width": 120,
                            "height": 90
                        },
                        "medium": {
                            "url": "https://i.ytimg.com/vi/FXpIoQ_rT_c/mqdefault.jpg",
                            "width": 320,
                            "height": 180
                        },
                        "high": {
                            "url": "https://i.ytimg.com/vi/FXpIoQ_rT_c/hqdefault.jpg",
                            "width": 480,
                            "height": 360
                        }
                    },
                    "channelTitle": "freeCodeCamp.org",
                    "liveBroadcastContent": "none",
                    "publishTime": "2021-09-07T12:58:33Z"
                }
            },
            {
                "kind": "youtube#searchResult",
                "etag": "Herl2o2mk2jNTsuBSkD_kaxL12Y",
                "id": {
                    "kind": "youtube#video",
                    "videoId": "NmC5pV7iLZ8"
                },
                "snippet": {
                    "publishedAt": "2023-07-17T11:30:10Z",
                    "channelId": "UCshZ3rdoCLjDYuTR_RBubzw",
                    "title": "Is It Impossible to Get Hired as a Vue Developer?",
                    "description": "vuejs #webdevelopment The job market for developers is tough right now. People are getting laid off, developers can't find jobs.",
                    "thumbnails": {
                        "default": {
                            "url": "https://i.ytimg.com/vi/NmC5pV7iLZ8/default.jpg",
                            "width": 120,
                            "height": 90
                        },
                        "medium": {
                            "url": "https://i.ytimg.com/vi/NmC5pV7iLZ8/mqdefault.jpg",
                            "width": 320,
                            "height": 180
                        },
                        "high": {
                            "url": "https://i.ytimg.com/vi/NmC5pV7iLZ8/hqdefault.jpg",
                            "width": 480,
                            "height": 360
                        }
                    },
                    "channelTitle": "Program With Erik",
                    "liveBroadcastContent": "none",
                    "publishTime": "2023-07-17T11:30:10Z"
                }
            },
            {
                "kind": "youtube#searchResult",
                "etag": "EnXWbQKcX0RbPFvvye9yvW-dXqw",
                "id": {
                    "kind": "youtube#video",
                    "videoId": "qZXt1Aom3Cs"
                },
                "snippet": {
                    "publishedAt": "2021-02-24T16:36:53Z",
                    "channelId": "UC29ju8bIPH5as8OGnQzwJyA",
                    "title": "Vue JS Crash Course",
                    "description": "Learn the fundamentals of Vue JS (v3) in this project-based crash course Task Tracker: ...",
                    "thumbnails": {
                        "default": {
                            "url": "https://i.ytimg.com/vi/qZXt1Aom3Cs/default.jpg",
                            "width": 120,
                            "height": 90
                        },
                        "medium": {
                            "url": "https://i.ytimg.com/vi/qZXt1Aom3Cs/mqdefault.jpg",
                            "width": 320,
                            "height": 180
                        },
                        "high": {
                            "url": "https://i.ytimg.com/vi/qZXt1Aom3Cs/hqdefault.jpg",
                            "width": 480,
                            "height": 360
                        }
                    },
                    "channelTitle": "Traversy Media",
                    "liveBroadcastContent": "none",
                    "publishTime": "2021-02-24T16:36:53Z"
                }
            }
        ]


        return {
            keyword: "",
            videos: list_of_videos,
            show:false

        }
    }, methods: {
        async doStuff() {
            let searchKeyword = encodeURIComponent(this.keyword);

            let link = 'https://www.googleapis.com/youtube/v3/search?key=AIzaSyD5bZRMzYLh8JoMp2wjDN2ODftSl_SFhB8&part=snippet&q='+searchKeyword+'&type=video'

            try {
                console.log("\nhere is \n");
                fetch(link).then(res => res.json()).then((data) => {
                        this.videos = data.items;
                        this.show = true;
                });

            } catch (error) {
                console.error(error);
            }

        },
        fetchData() {

            // .catch(error => {
            //   console.error('Error fetching data:', error);
            // });
        }
    }

}
</script>

<style scoped>
.newclass {
    margin: 10px;
}

.form-control {
    width: 80%;
    margin-left: 80px;
}
</style>