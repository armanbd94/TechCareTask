<template>
    <article class="media tweet">
        <figure class="media-left">
            <p class="image is-64x64 is-circle">
                <router-link :to="{ name: 'profile', params: { username: tweetData.user.username }}">
                    <img :src="tweetData.user.avatar ? tweetData.user.avatar : '/techcare.png'">
                </router-link>
            </p>
        </figure>

        <div class="media-content">
            <div class="content">
                <p class="tweet-meta">
                    <router-link class="has-text-dark" :to="{ name: 'profile', params: { username: tweetData.user.username }}">
                        <strong>{{ tweetData.user.first_name+' '+tweetData.user.last_name }}</strong>
                    </router-link>

                    <small class="mx-3">@{{ tweetData.user.username }}</small>

                    <small class="has-text-grey-light">{{ dateFormat(tweetData.created_at) }}</small>
                </p>

                <div class="tweet-body has-text-grey" @click="tweetDetail" v-html="tweetData.tweet"></div>
            </div>

            <nav class="level is-mobile">
                <div class="level-left">
                    <a class="level-item has-text-grey-light">
                        <span class="icon is-small"><i class="fa fa-heart" @click="likeTweet(tweetData)" :class="tweetData.liked_by_me_count === 1 ? 'text-danger' : ''"></i></span> <small> {{ tweetData.likes_count }}</small>
                    </a>
                </div>
            </nav>
        </div>
        <div class="media-right" v-if="me.username === tweetData.user.username">
            <button @click="remove(tweetData.id)" class="delete"></button>
        </div>
    </article>
</template>

<script>
import moment from 'moment';
    export default {
        name: 'Tweet',
        props: ['tweet'],
        data() {
            return {
                tweetData: this.tweet
            }
        },
        computed: {
            me() {
                return User.userInfo();
            }
        },
        methods: {
            async likeTweet(tweet)
            {
                let like_status = tweet.liked_by_me_count === 1 ? false : true;
                await axios
                    .post(`api/v1/like-tweet`,{
                        like_status:like_status,tweet_id:tweet.id
                    })
                    .then((response) => {
                        if(response.data.status === true)
                        {
                            if(tweet.liked_by_me_count === 1)
                            {
                                tweet.liked_by_me_count =  0;
                                tweet.likes_count--;
                            }else{
                                tweet.liked_by_me_count = 1;
                                tweet.likes_count++;
                            }
                        }
                    })
                    .catch((error) => {
                        console.log(error);
                    });
            },
            dateFormat(date)
            {
                return moment(this.currentDate).format('MMM-YY,');
            },
            async remove(tweetId) {
                if(window.confirm('Are you sure want to delete this tweet?') ) {
                    await axios
                    .delete(`api/v1/tweet/${tweetId}`)
                    .then((response) => {
                        if(response.data.status === true)
                        {
                            this.$emit('removeTweet',tweetId);
                        }
                    })
                    .catch((error) => {
                        console.log(error);
                    });
                }
            }
        }
    }
</script>