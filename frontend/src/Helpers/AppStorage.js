class AppStorage {
    storeToken(token){
        localStorage.setItem('token',token);
        window.axios.defaults.headers.common['Authorization'] = `Bearer ${localStorage.getItem('token')}`;
    }

    storeUser(user)
    {
        localStorage.setItem('user',JSON.stringify(user));
    }

    store(token,user)
    {
        this.storeToken(token);
        this.storeUser(user);
    }

    clear()
    {
        localStorage.removeItem('token');
        localStorage.removeItem('user');
    }

    getToken()
    {
        return localStorage.getItem('token');
    }

    getUser()
    {
        return localStorage.getItem('user');
    }
}

export default AppStorage = new AppStorage();