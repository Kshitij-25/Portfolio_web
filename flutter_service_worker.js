'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/index.html": "5239f11841f537b08f0bcb76847be4b0",
"/main.dart.js": "9ef34b1ccf8b0423cdb001aa05666dd4",
"/icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"/icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"/manifest.json": "d7b3c623297c6eb0fbaee01e4482f3e9",
"/assets/LICENSE": "1a80be6c5724a31e6f9c9e06dba53b63",
"/assets/AssetManifest.json": "4ebd82768ea56c074c0f287163979f88",
"/assets/FontManifest.json": "baee72db05504bb38a7d341555632c42",
"/assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"/assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"/assets/assets/images/port.jpg": "f2e9244a7a5d0425ba4934f0bd5a6c58",
"/assets/assets/images/instagram.png": "8e33b96af9b3d09368b15b55b5bf0c60",
"/assets/assets/images/kg.JPG": "5e21211d3af60888f3e34685075467db",
"/assets/assets/images/jss.jpg": "8df1c4fdef6f39924ce7e5bf0022a0f1",
"/assets/assets/images/github.png": "e6095ddf2ecf3a1725cecd1080e1bb1e",
"/assets/assets/images/ttt.jpg": "9740828c01c30f5a1d52670f0e111ab4",
"/assets/assets/images/akshar.jpg": "162388c9fba5ced05e997bfb4b1a80ca",
"/assets/assets/images/stadia.jpg": "445871a6f169aabeaa1fe4578baf7d8c",
"/assets/assets/images/insta.jpg": "52859d55d2050e65f6a8d369c4ff4790",
"/assets/assets/images/twitter.png": "03ce514ddf4aa4ef652408b91043bdd2",
"/assets/assets/images/linkedin.png": "4ec01a3a44c2c30bd4b01a50bbc7d867",
"/assets/assets/images/facebook.png": "696e4e03b448861c3cc065f4d678f01f",
"/assets/assets/fonts/Evolve.otf": "11ea6b4ff0e6b93c9894b4173f9703b0"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request, {
          credentials: 'include'
        });
      })
  );
});
