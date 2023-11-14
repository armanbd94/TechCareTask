<template>
    <div class="card follow-suggestions">

        <header class="card-header">
            <p class="card-header-title">
                Who to follow
                    &nbsp; -
                    <a :disabled="loading"
                       style="font-weight: normal"
                       class="button is-small is-link"
                       @click.prevent="refresh"> refresh</a>
            </p>
        </header>

        <div class="card-content is-transparent px-0" :class="{'is-loading': loading}">
            <article class="media" id="follow-suggest" v-for="user in suggestions" :key="user.id">
                    <router-link exact tag="li" class="route_tag" :to="{ name: 'profile', params: { username: user.username }}">
                        <div class="col-md-12 d-flex pt-2">
                            <div class="col-md-3 text-center">
                                <img :src="user.avatar ? user.avatar : '/techcare.png'" :alt="user.username" class="img-fluid rounded-circle" width="80">
                            </div>
                            <div class="col-md-9" style="padding-left: 10px;">
                                <h6 class="m-0 text-black">{{ user.first_name+' '+user.last_name }}</h6>
                                <p class="text-muted" style="margin-bottom: 5px;;">@{{ user.username }}</p>
                                <FollowButton :user="user" :following="user.is_following_count === 1 ? true : false" @followUser="handleFollowed" class="is-small" />
                            </div>
                        </div>
                    </router-link>

            </article>

            <div v-if="!suggestions.length && !loading" class="has-text-centered">
                <span class="has-text-grey">Currently no suggestions to follow user</span>
            </div>
        </div>
    </div>
</template>

<script>
    import FollowButton from "./FollowButton.vue";
    export default {
        components: {FollowButton},
        name: 'FollowSuggestions',
        props: {
            limit: {
                default: 3, type: Number
            }
        },
        data() {
            return {
                loading: false,
                suggestionList:[]
            }
        },
        computed: {
          suggestions() {
              return this.suggestionList;
          }
        },
        mounted() {
          this.getFollowSuggestion();
        },
        methods: {
            async getFollowSuggestion() {
                this.loading = true
                await axios
                    .get(`api/v1/follow-suggestion-list`)
                    .then((response) => {
                        this.suggestionList = response.data.status === true ? response.data.data : [];
                        this.loading = false;
                    })
                    .catch((error) => {
                        console.log(error);
                    });
            },
            handleFollowed(user) {
                console.log(user);
            },
            refresh() {
                this.getFollowSuggestion()
            }
        },
        watch: {
            // 'suggestions' (to) {
            //     if(to.length === 0) {
            //         this.refresh();
            //     }
            // }
        }
    }
</script>
<style scoped>
#follow-suggest .route_tag{width:100%;padding: 5px;}
</style>