<template>
    <div class="card profile-card">
        <div class="card-image">
            <figure class="image">
                <img :src="user.cover" class="image" alt="">
            </figure>
        </div>
        <div class="card-content">
            <div class="media">
                <div class="media-left">
                    <figure class="image is-64x64 is-circle">
                        <router-link :to="{ name: 'profile', params: { username: user.username }}">
                            <img :src="user.avatar ? user.avatar : '/techcare.png'" alt="">
                        </router-link>
                    </figure>
                </div>
                <div class="media-content">
                    <p class="title is-5">
                        {{ user.first_name+' '+user.last_name }}
                    </p>
                    <p class="subtitle is-6">
                        <router-link :to="{ name: 'profile', params: { username: user.username }}">
                            @{{ user.username }}
                        </router-link>
                    </p>
                    <p>
                        <span class="icon is-small">
                            <i class="fa fa-calendar"></i>
                        </span>
                        <small class="has-text-grey-light"> Joined {{ dateFormat(user.created_at) }}</small>
                    </p>
                </div>
            </div>

            <nav class="level">
                <div class="level-item has-text-centered">
                    <div>
                        <p class="is-6 text-dark">
                            Tweets <span class="tag is-rounded m-l-1 bg-dark text-white">{{ user.tweets_count || 0 }}</span>
                        </p>
                    </div>
                </div>

                <div class="level-item has-text-centered">
                    <div>
                        
                        <p class="is-6 text-dark">
                            Following <span class="tag is-rounded m-l-1 bg-dark text-white">{{ user.following_count || 0 }}</span>
                        </p>
                    </div>
                </div>

                <div class="level-item has-text-centered">
                    <div>
                        
                        <p class="is-6 text-dark">
                            Followers <span class="tag is-rounded m-l-1 bg-dark text-white">{{ user.followers_count || 0 }}</span>
                        </p>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</template>

<script>
import moment from 'moment';
    export default {
        name: 'ProfileCard',
        props: ['user'],
        created() {
          console.log('ProfileCard Component created.')
        },
        methods: {
            dateFormat(date)
            {
                return moment(this.currentDate).format('MMMM YYYY');
            }
        },
    }
</script>

<style scoped>
.subtitle a{color: #888 !important;}
</style>