<template>
    <div id="wrapper" class="container-fluid">
        <div class="sidebar-left">
            <ul>
                <li class="text-left">
                    <img src="/techcare.png" alt="TechCare" style="height:50px;">
                </li>
                <li>
                    <router-link exact tag="li" class="f20" :to="{ name: 'home'}">
                        <i class="fa fa-home f30" aria-hidden="true"></i> <span class="ml5">Home</span>
                    </router-link>
                </li>
                <li>
                    <router-link exact tag="li" class="f20" :to="{ name: 'profile', params: { username: user.username }}">
                        <i class="fa fa-user f30" aria-hidden="true"></i> <span class="ml10">Profile</span>
                    </router-link>
                </li>
                <li>
                    <button @click="logout" class="button is-outlined is-dark w-100 d-flex justify-content-center" style="border-radius: 20px;align-items: center;"><i class="fa fa-sign-out"></i> Logout</button>
                </li>
            </ul>
            
            
        </div>
        <div class="main-content py-0">
            <div class="col-md-12 sticky-head">
                <div class="row">
                    <div class="col-md-8 borderx bg-white"></div>
                    <div class="col-md-4 search-box-section">
                        <div class="form-group has-search">
                            <span class="fa fa-search form-control-feedback"></span>
                            <input type="search" class="form-control border-dark search-input" v-model.trim="search" autofocus placeholder="Search" />
                            <!--<span class="fa fa-times form-control-clear"></span>-->
                        </div>
                        <div class="col-md-12 search-list" v-if="search_users.length">
                           
                                
                            <div class="row" v-for="(user,i) in search_users" :key="i" @click="search=''">
                                <router-link exact tag="li" :to="{ name: 'profile', params: { username: user.username }}">
                                    <div class="col-md-12 d-flex pt-2">
                                        <div class="col-md-3 text-center">
                                            <img :src="user.avatar ? user.avatar : '/techcare.png'" :alt="user.username" class="img-fluid rounded-circle" width="50">
                                        </div>
                                        <div class="col-md-9">
                                            <h6 class="m-0 text-black">{{ user.first_name+' '+user.last_name }}</h6>
                                            <p class="text-muted">@{{ user.username }}</p>
                                        </div>
                                    </div>
                                </router-link>
                            </div>
                                
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <router-view></router-view>
            </div>
           
            
        </div>

    </div>
</template>

<script>
// import Sidebar from '../Components/Sidebar.vue';
// import Topbar from '../Components/Topbar.vue';
export default {
    name: "Index",
    components: {
    //   Sidebar,Topbar
    },
    data(){
        return {
            user:{},
            tweets:[],
            search:'',
            search_users:[],
            delayTimeout:null
        }
    },
    watch:{
        search:function()
        {
            clearTimeout(this.delayTimeout);
                this.delayTimeout = setTimeout(() => {
                    this.searchUser();
                }, 500);
        }
    },
    created() {
        this.user = User.userInfo();
    },
    methods: {
      logout()
      {
         User.logout();
          this.$router.push({name:'login'});
      },
      searchUser()
      {
        if(this.search.length)
        {
            axios
                .get(`api/v1/search-user/${this.search}`)
                .then((response) => {
                    this.search_users = response.data.status === true ? response.data.data : [];
                })
                .catch((error) => {
                    console.log(error);
                });
        }else{
            this.search_users = [];
        }
      }
    }
};

</script>

<style scoped>
.has-search {
    margin-bottom: -5px !important;
}

.has-search .form-control-feedback {
    position: absolute;
    width: 25px;
    height: 25px;
    pointer-events: none;
    color: #aaa;
    background: white;
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 7px;
    margin-left: 5px;
    border-radius: 50%;
}

.has-search .form-control-clear {
    position: relative;
    /*z-index: 2;*/
    display: block;
    width: 27.375rem;
    height: 0;
    text-align: center;
    pointer-events: none;
    color: #aaa;
}
.search-input {
    border-radius: 20px !important;
    padding-left: 30px !important;
}
.search-list {
    height: 400px;
    overflow-y: scroll;
    overflow-x: hidden;
    background: white;
    padding: 10px;
    margin-top: 5px;
    box-shadow: 0 1px 5px 0 rgba(0, 0, 0, 0.5);
    border-radius: 5px;
}
.search-list .row a {
    text-decoration: none !important;
}
.sidebar-left ul li{
    padding: 10px;
}
.sidebar-left a{text-decoration: none;color: black;}
.sidebar-left a:hover{background: none;font-weight: bold;}
.f20{font-size: 20px;}
.f25{font-size: 25px;}
.f30{font-size: 30px;}
.ml5{margin-left: 5px;}
.ml10{margin-left: 10px;}
</style>
