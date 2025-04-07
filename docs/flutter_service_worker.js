'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "4eeb9fcbc509370cfc51cd4928b05ce6",
"assets/AssetManifest.bin.json": "1e043bbbb7b929899c363e437259ed59",
"assets/AssetManifest.json": "de4555f2b32ab61e2f6863d93a242506",
"assets/assets/fonts/Inter-Regular.ttf": "e48c1217adab2a0e44f8df400d33c325",
"assets/assets/gif/hi.gif": "cad5918d86b6a7e83f1fb4acead70e4c",
"assets/assets/icons/android.svg": "a5edf188314ff37a4f513eaccb8d546b",
"assets/assets/icons/apple.svg": "6be40eb4dcaeafda971f070ef687ac8e",
"assets/assets/icons/graphic.svg": "630269cfd18d3d8cf578673a89b377d7",
"assets/assets/icons/website.svg": "eb7f68d101ed55ef94b1a819515a4781",
"assets/assets/imgs/5424482.jpg": "11a43b6c92858f82bcff3c24a784b158",
"assets/assets/imgs/amazon-clone.png": "9d6b40a530a0a4e1aadc6fede298be6e",
"assets/assets/imgs/AS.png": "f38629d6c565daa9eacc4d19336cb6dc",
"assets/assets/imgs/BG01.png": "292fe68441561eae14b077f8f112acf9",
"assets/assets/imgs/Budgeit.png": "bda56b7eb0e6606c42d1868bef531f91",
"assets/assets/imgs/Canyfix-Customer.png": "36369f6ce6aa2c44524c6f1eacce04e9",
"assets/assets/imgs/Canyfix-Partner.png": "985b13aa52a405f9a012043c0a6aa2cc",
"assets/assets/imgs/canyfix.png": "b3749b57219ce0bee17b00e3c10c9f28",
"assets/assets/imgs/chegg.png": "a57df75970cb829f8c34b1ddbf114e52",
"assets/assets/imgs/clanguage.png": "fda56f4e75cfb7e4d945d0bd29144d1f",
"assets/assets/imgs/cpp.png": "0b849c72f38362fe12072a4916660013",
"assets/assets/imgs/css.png": "71837401e9bf10020708e4716d4585fd",
"assets/assets/imgs/dart.png": "8f02796f951586da84fae11416227789",
"assets/assets/imgs/desktop.png": "3c19063e964f2d5a7bc472f0eba9b6f1",
"assets/assets/imgs/firebase.png": "c24b6b9c0fcd84c7b258879880472660",
"assets/assets/imgs/flutter.png": "0b5a2f8d3f4d173805affaf9f84f6c87",
"assets/assets/imgs/foodpe.jpg": "c500c4a372b45f25a8562eb95ab01661",
"assets/assets/imgs/FoodPe.png": "495803058ea3042cfcab17cdfb5c17a0",
"assets/assets/imgs/git.png": "ca1ed85aaefc4f251082645b111057bc",
"assets/assets/imgs/github.png": "7a864f07681f187fb572468bfc949977",
"assets/assets/imgs/html.png": "c2d6e9861f5bb81ecd0231e80adbfbe3",
"assets/assets/imgs/Inner-Bhakti.png": "92772df42b1d785c543e8db254079e6c",
"assets/assets/imgs/java.png": "3ff7e404dd176e03ced3bbe188e2c75c",
"assets/assets/imgs/mobile.png": "025ccf549babd45aad6a8a7fc69869fa",
"assets/assets/imgs/mysql.png": "6d54e73fd22304388a185239c639d714",
"assets/assets/imgs/Nijaat.png": "c916e66b3da97abdb798656ad6319790",
"assets/assets/imgs/profile.jpg": "507ff0f33430c3e4d7ff86bfe9c8a9da",
"assets/assets/imgs/python.png": "64ba3fcbc4568a4599c56de77234d266",
"assets/assets/imgs/springboot.png": "813a874883b6fc4bb7867eee69f0c4a1",
"assets/FontManifest.json": "f95c0bc1b91c4bbee0af0fe0dc7461f4",
"assets/fonts/MaterialIcons-Regular.otf": "385849bfc994fb78b04697ac3bfcf466",
"assets/NOTICES": "65e67008ac64628a22b28e6ec0b209a3",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "32cc31c7f950543ad75e035fcaeb2892",
"canvaskit/canvaskit.js.symbols": "bb7854ddbcaa2e58e5bdef66b58d4b47",
"canvaskit/canvaskit.wasm": "6134e7617dab3bf54500b0a2d94fe17a",
"canvaskit/chromium/canvaskit.js": "6a5bd08897043608cb8858ce71bcdd8a",
"canvaskit/chromium/canvaskit.js.symbols": "f23279209989f44e047062055effde63",
"canvaskit/chromium/canvaskit.wasm": "ad6f889daae572b3fd08afc483572ecd",
"canvaskit/skwasm.js": "e95d3c5713624a52bf0509ccb24a6124",
"canvaskit/skwasm.js.symbols": "dc16cade950cfed532b8c29e0044fe42",
"canvaskit/skwasm.wasm": "aff2178f40209a9841d8d1b47a6e6ec7",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "1907d9ad6044011f2ffde449f363c2aa",
"flutter.js": "5de281a37b2308e43846d3a0b545c921",
"flutter_bootstrap.js": "fb726cce87f647e91793f8bf8aff496e",
"icons/Icon-192.png": "ef59a8d0dd7facae00dfb88585ac94c0",
"icons/Icon-512.png": "367b1b082441c78f6d308595ca3f0bb7",
"icons/Icon-maskable-192.png": "ef59a8d0dd7facae00dfb88585ac94c0",
"icons/Icon-maskable-512.png": "367b1b082441c78f6d308595ca3f0bb7",
"index.html": "e3ed6c575eb1249fb4d95e907306a80a",
"/": "e3ed6c575eb1249fb4d95e907306a80a",
"main.dart.js": "21910b789ad22492b5a6302a282a9360",
"manifest.json": "7432e395a16883c359a0ecfb7f1a477b",
"version.json": "f124181e58b12572810925130e6735b8"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
