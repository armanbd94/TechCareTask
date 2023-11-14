<template>
    <div class="tweets card-content p-x-1">
        <Tweet v-for="tweet in tweets" :key="tweet.id" :tweet="tweet" @removeTweet="tweetRemove" />

        <p v-if="!tweets.length" class="has-text-centered has-text-grey-light">
           <i class="fa fa-notification"></i> No tweets found...
        </p>
    </div>
</template>

<script>
    import Tweet from "./Tweet.vue";

    export default {
        components: {Tweet},
        name: 'TweetList',
        props: ['tweet_list'],
        computed: {
            tweets() {
                return this.tweet_list;
            }
        },
        methods: {
            tweetRemove(tweetId)
            {
                let index = this.tweet_list.findIndex(item => parseInt(item.id) === parseInt(tweetId));
                this.tweet_list.splice(index,1);
            }
        },
    }
</script>