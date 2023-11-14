class Token{
    isValid(token)
    {
        const payload = this.payload(token);
        if(payload)
        {
            return payload.iss = "http://127.0.0.1:8000/api/v1/login" ? true : false;
        }
        return false;
    }

    payload(token)
    {
        const payload = token.split('.')[1];
        return this.decode(payload);
    }

    decode(payload)
    {
        console.log(JSON.parse(atob(payload)),new Date(JSON.parse(atob(payload)).exp * 1000));
        return JSON.parse(atob(payload))
    }
}

export default Token = new Token();