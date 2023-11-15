<template>
    <div class="row">
        <div class="col-md-8 borderx px-0">
            <div class="col-md-12">
                <div class="card border-0" :class="{'is-loading': loading}">
                    <div class="card-header">
                        <div class="d-flex flex-wrap" style="width: 70%;text-align: left;">
                            <img class="is-circle profile-pic image" :src="profileData.avatar ? profileData.avatar : '/techcare.png'" alt="">
                            <ProfileInfo :user="profileData" /> 
                        </div>
                        <div style="width: 30%;text-align: right;">
                            <FollowButton v-if="profileData.username !== loggedInUser.username" :user="profileData" :following="profileData.is_following_count === 1 ? true : false" @followUser="handleFollowed" class="is-small" />
                        </div>
                    </div>
                    <div class="card-body p-0">
                        
                        <ul class="nav nav-tabs" id="myTabs">
                            <li class="nav-item">
                                <a class="nav-link" :class="tweetTab ? 'active' : ''" id="tweets-tab" data-toggle="tab" @click="showTab(1)">
                                    <strong>Tweets</strong>
                                    <span :class="tweetTab ? 'bg-dark text-white' : ''" class="tag is-rounded m-l-1">{{ profileData.tweets_count }}</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" :class="followerTab ? 'active' : ''" id="followers-tab" data-toggle="tab" @click="showTab(2)">
                                    <strong>Followers</strong>
                                    <span :class="tweetTab ? 'bg-dark text-white' : ''" class="tag is-rounded bg-dark text-white m-l-1">{{ profileData.followers_count }}</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" :class="followingTab ? 'active' : ''" id="following-tab" data-toggle="tab" @click="showTab(3)">
                                    <strong>Following</strong>
                                    <span :class="tweetTab ? 'bg-dark text-white' : ''" class="tag is-rounded bg-dark text-white m-l-1">{{ profileData.following_count }}</span>
                                </a>
                            </li>
                            
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane" :class="tweetTab ? 'fade show active' : ''" id="tweets" v-if="tweetTab">
                                <TweetList :tweet_list="tweets" /> 
                                
                            </div>
                            <div class="tab-pane" :class="followerTab ? 'fade show active' : ''" id="followers"  v-if="followerTab">
                                <FollowerList v-if="followerTab" :users="followers" />
                            </div>
                            <div class="tab-pane" :class="followingTab ? 'fade show active' : ''" id="following" v-if="followingTab">
                                <FollowerList  v-if="followingTab" :users="following" />
                            </div>
                            <!-- Add more tab content as needed -->
                        </div>
                    </div>
                </div>
            </div>  
        </div>
        <div class="col-md-4">
            <FollowSuggestions />
        </div>

    </div>

</template>

<script>

    import ProfileInfo from "../components/ProfileInfo.vue";
    import FollowSuggestions from "../components/FollowSuggestions.vue";
    import TweetList from "../components/TweetList.vue";
    import FollowerList from "../components/FollowerList.vue";
    import FollowButton from "../components/FollowButton.vue";
    export default {
        components: {
            ProfileInfo,
            FollowSuggestions,
            TweetList,
            FollowerList,
            FollowButton
        },
        name: 'Profile',
        props: ['username'],
        data() {
            return {
                loading: false,
                tweetTab: true,
                followerTab: false,
                followingTab: false,
                tweets:[],
                followers:[],
                following:[],
                profileData:{},
                loggedInUser:{}
            }
        },
        watch: {
            username:function() {
                this.groupAllMethod();
            }
        },
        created() {
            this.groupAllMethod();
        },

        methods: {
            getProfileData() {
                this.loading = true;
                axios
                    .get(`api/v1/user/${this.username}`)
                    .then((response) => {
                        this.profileData = response.data.status === true ? response.data.data : {};
                        this.loading = false;
                    })
                    .catch((error) => {
                        console.log(error);
                    });
            },
            getTweetList() {
                axios
                    .get(`api/v1/tweets?username=${this.username}`)
                    .then((response) => {
                        this.tweets = response.data.status === true ? response.data.data : [];
                    })
                    .catch((error) => {
                        console.log(error);
                    });
            },
            getFollowerList() {
                axios
                    .get(`api/v1/${this.username}/follower`)
                    .then((response) => {
                        this.followers = response.data.status === true ? response.data.data : [];
                    })
                    .catch((error) => {
                        console.log(error);
                    });
            },
            getFollowingList() {
                axios
                    .get(`api/v1/${this.username}/following`)
                    .then((response) => {
                        this.following = response.data.status === true ? response.data.data : [];
                    })
                    .catch((error) => {
                        console.log(error);
                    });
            },
            showTab(type)
            {
                switch (type) {
                    case 1:
                        this.tweetTab= true;
                        this.followerTab= false;
                        this.followingTab= false;
                        break;
                    case 2:
                        this.tweetTab= false;
                        this.followerTab= true;
                        this.followingTab= false;
                        break;
                    case 3:
                        this.tweetTab= false;
                        this.followerTab= false;
                        this.followingTab= true;
                        break;
                }
            },
            handleFollowed(user) {
                console.log(user);
            },
            groupAllMethod()
            {
                this.tweetTab = true,
                this.followerTab= false;
                this.followingTab= false;
                this.getProfileData();
                this.getTweetList();
                this.getFollowerList();
                this.getFollowingList();
                this.loggedInUser = User.userInfo();
            }

        },

    }
</script>

<style scoped>
#myTabs{
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
}
#myTabs .nav-link{
    border:none !important;
}

#myTabs .nav-link.active,
#myTabs .nav-link:hover{
    border-bottom: 5px solid black !important;
    background: white !important;
}
</style>