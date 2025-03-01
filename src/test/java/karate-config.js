function fn() {
    var env = karate.env || 'qa';
    karate.log('Current environment:', env);

    return {
        baseUrl: 'https://conduit-api.bondaracademy.com/api',
        userEmail: 'karate.com',
        userPassword: 'karate@123',
        headers: { 'Content-Type': 'application/json' }
    };
}