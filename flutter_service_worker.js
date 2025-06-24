'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"404.html": "ab4212051e6fd28f09a57cd3f9d5dfe4",
"assets/AssetManifest.bin": "8b575890417e22359c229d8abf79087e",
"assets/AssetManifest.bin.json": "10705426cdb6a718a1675d92d8ee26a6",
"assets/AssetManifest.json": "3821c61ffaa18aa7106b94414afd2238",
"assets/assets/icons/android.svg": "4b7c29c296de52cc2cf36135b622fdae",
"assets/assets/icons/argo.svg": "5e50dc7734574a07f6f10535bfadcafb",
"assets/assets/icons/cmake.svg": "aabc7d90147c67cc5e18267009fe0c99",
"assets/assets/icons/cpp.svg": "478c2d5aef1bb0432bb2f0aa7b09a900",
"assets/assets/icons/csharp.svg": "e7cb84c431b1f069686bdd3a37a79e77",
"assets/assets/icons/email.svg": "1f591ab547ca666a1b5fe2a4ae0748f8",
"assets/assets/icons/flutter.svg": "9a6e81be6ff5b09956f4f85fe1f0a89f",
"assets/assets/icons/git.svg": "614df7b51102882a61c2249905ce1a69",
"assets/assets/icons/github.svg": "47b4cd8887e3391a163ba5966d125274",
"assets/assets/icons/itch.svg": "c2c950ef5cbeb022d0780689cd74c4bd",
"assets/assets/icons/jenkins.svg": "b08ca8051d06efb3df538cf252ee7c37",
"assets/assets/icons/linkedin.svg": "d788109943e550e20c87172bd38feec8",
"assets/assets/icons/oculus.svg": "c223beab0ec2c36043759cb6b70dff54",
"assets/assets/icons/opengl.svg": "d47f8fca3a17fbe2b1e5f797cec7de53",
"assets/assets/icons/python.svg": "da3277ddf2b274575710bfe33941d0a6",
"assets/assets/icons/steam.svg": "28d80270736c4fa6f0c792640b929302",
"assets/assets/icons/ue.svg": "7fe670eadc9e4d8aaa3efe701932faef",
"assets/assets/icons/unity.svg": "6f0b48d5c4767af88d6dde6496fa8e34",
"assets/assets/icons/vr.svg": "a33502899eacef43ddd8a4affc1c5479",
"assets/assets/icons/vs.svg": "22a0489b0b134de02ddb9b11d06772d0",
"assets/assets/icons/windows.svg": "71286404c78a75d5b2f6ecad3d1e8cfa",
"assets/assets/images/CJ.png": "103aa3988c81cd0300a55bd0800080ad",
"assets/assets/images/cmake.png": "598e259e6742b174aee0b190a5ab7c41",
"assets/assets/images/debugengine.png": "4588e536d60350428099a6a418ba61ad",
"assets/assets/images/editor.png": "4de9f63f33092a922946b3f3e2fbda57",
"assets/assets/images/editor2.png": "67f92213c9fdc38b2d74166c484cd8fb",
"assets/assets/images/editorAliens.png": "9594e65b6a99ed9c2478c0ef99670644",
"assets/assets/images/editorEdi.png": "bd1fd6d0228e3fe6d9f266057fa799ea",
"assets/assets/images/editorMenu.png": "a22dfe4e84fa4c787aa2ffa6bb1f67a9",
"assets/assets/images/eolCover.jpg": "ec13e9595e186430b746ba867927b2a4",
"assets/assets/images/eolEditor.png": "3828dfde975c6b441f556f070d8930d0",
"assets/assets/images/eolmenu.png": "daf19e9830a8546cdb992088e70c2f92",
"assets/assets/images/flock.png": "4c4431125d9ed5b2823d393e6c2931f1",
"assets/assets/images/gameshot.png": "addd9f5fab97336b63495c3ea36f6fe5",
"assets/assets/images/git.png": "6c193e2e3560bae1ad41c177fc27a98f",
"assets/assets/images/github.png": "27a38fe0e237037001e9c18a6c37eefa",
"assets/assets/images/img.JPG": "d3ceead0d7afcbd75584dbbfd6330afc",
"assets/assets/images/img2.JPG": "dc092a7aff70ce4d808562da754c8e6a",
"assets/assets/images/itch.png": "b35f723e6e20302580c5177aa23ad94e",
"assets/assets/images/linkedin.webp": "a8b6f7253c046a2c246cde16068e4e7b",
"assets/assets/images/NTR.png": "b250e44063c3cf6751d25bca55966667",
"assets/assets/images/steam.png": "bd5ce2570c2c8de8d0993b2a4abe6cc6",
"assets/assets/images/test.png": "3de78188e7844ad0a4c0b56b85d479c3",
"assets/assets/videos/cofrade.mp4": "05014a4527d995d6e7fdb86d8d969668",
"assets/assets/videos/editor.mp4": "766e396c427bfac6a3717202e8c55053",
"assets/assets/videos/enginegame.mp4": "77199cf142092165d93071cf7af227e8",
"assets/assets/videos/flock.mp4": "17a2596ea0c64dcac4f4eb73e96f31db",
"assets/assets/videos/intro2.mp4": "cdcf36afd7c31bb2a2057c8bbc3b828b",
"assets/assets/videos/intro3.mp4": "9b86474eac8d8230e6221cecfb1b3728",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "1dc11a56738d94957862a4e10301c3fb",
"assets/icons/android.svg": "4b7c29c296de52cc2cf36135b622fdae",
"assets/icons/argo.svg": "5e50dc7734574a07f6f10535bfadcafb",
"assets/icons/cmake.svg": "aabc7d90147c67cc5e18267009fe0c99",
"assets/icons/cpp.svg": "478c2d5aef1bb0432bb2f0aa7b09a900",
"assets/icons/csharp.svg": "e7cb84c431b1f069686bdd3a37a79e77",
"assets/icons/email.svg": "1f591ab547ca666a1b5fe2a4ae0748f8",
"assets/icons/flutter.svg": "9a6e81be6ff5b09956f4f85fe1f0a89f",
"assets/icons/git.svg": "614df7b51102882a61c2249905ce1a69",
"assets/icons/github.svg": "47b4cd8887e3391a163ba5966d125274",
"assets/icons/itch.svg": "c2c950ef5cbeb022d0780689cd74c4bd",
"assets/icons/jenkins.svg": "b08ca8051d06efb3df538cf252ee7c37",
"assets/icons/linkedin.svg": "d788109943e550e20c87172bd38feec8",
"assets/icons/oculus.svg": "c223beab0ec2c36043759cb6b70dff54",
"assets/icons/opengl.svg": "d47f8fca3a17fbe2b1e5f797cec7de53",
"assets/icons/python.svg": "da3277ddf2b274575710bfe33941d0a6",
"assets/icons/steam.svg": "28d80270736c4fa6f0c792640b929302",
"assets/icons/ue.svg": "7fe670eadc9e4d8aaa3efe701932faef",
"assets/icons/unity.svg": "6f0b48d5c4767af88d6dde6496fa8e34",
"assets/icons/vr.svg": "a33502899eacef43ddd8a4affc1c5479",
"assets/icons/vs.svg": "22a0489b0b134de02ddb9b11d06772d0",
"assets/icons/windows.svg": "71286404c78a75d5b2f6ecad3d1e8cfa",
"assets/images/CJ.png": "103aa3988c81cd0300a55bd0800080ad",
"assets/images/cmake.png": "598e259e6742b174aee0b190a5ab7c41",
"assets/images/debugengine.png": "4588e536d60350428099a6a418ba61ad",
"assets/images/editor.png": "4de9f63f33092a922946b3f3e2fbda57",
"assets/images/editor2.png": "67f92213c9fdc38b2d74166c484cd8fb",
"assets/images/editorAliens.png": "9594e65b6a99ed9c2478c0ef99670644",
"assets/images/editorEdi.png": "bd1fd6d0228e3fe6d9f266057fa799ea",
"assets/images/editorMenu.png": "a22dfe4e84fa4c787aa2ffa6bb1f67a9",
"assets/images/eolCover.jpg": "ec13e9595e186430b746ba867927b2a4",
"assets/images/eolEditor.png": "3828dfde975c6b441f556f070d8930d0",
"assets/images/eolmenu.png": "daf19e9830a8546cdb992088e70c2f92",
"assets/images/flock.png": "4c4431125d9ed5b2823d393e6c2931f1",
"assets/images/gameshot.png": "addd9f5fab97336b63495c3ea36f6fe5",
"assets/images/git.png": "6c193e2e3560bae1ad41c177fc27a98f",
"assets/images/github.png": "27a38fe0e237037001e9c18a6c37eefa",
"assets/images/img.JPG": "d3ceead0d7afcbd75584dbbfd6330afc",
"assets/images/img2.JPG": "dc092a7aff70ce4d808562da754c8e6a",
"assets/images/itch.png": "b35f723e6e20302580c5177aa23ad94e",
"assets/images/linkedin.webp": "a8b6f7253c046a2c246cde16068e4e7b",
"assets/images/NTR.png": "b250e44063c3cf6751d25bca55966667",
"assets/images/steam.png": "bd5ce2570c2c8de8d0993b2a4abe6cc6",
"assets/images/test.png": "3de78188e7844ad0a4c0b56b85d479c3",
"assets/NOTICES": "d927491b6d2650389bc12d8cd52cb4e1",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/wakelock_plus/assets/no_sleep.js": "7748a45cd593f33280669b29c2c8919a",
"assets/packages/youtube_player_iframe/assets/player.html": "663ba81294a9f52b1afe96815bb6ecf9",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/videos/cofrade.mp4": "05014a4527d995d6e7fdb86d8d969668",
"assets/videos/editor.mp4": "766e396c427bfac6a3717202e8c55053",
"assets/videos/enginegame.mp4": "77199cf142092165d93071cf7af227e8",
"assets/videos/flock.mp4": "17a2596ea0c64dcac4f4eb73e96f31db",
"assets/videos/intro2.mp4": "cdcf36afd7c31bb2a2057c8bbc3b828b",
"assets/videos/intro3.mp4": "9b86474eac8d8230e6221cecfb1b3728",
"assets/videos/test.mp4": "b8710484c7c383aa2a52796c02bddef8",
"canvaskit/canvaskit.js": "86e461cf471c1640fd2b461ece4589df",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/chromium/canvaskit.js": "34beda9f39eb7d992d46125ca868dc61",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "71645c9b65ede793da866036fd321098",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "b2edd913ce4414f1c2eee9bcb68f5357",
"/": "b2edd913ce4414f1c2eee9bcb68f5357",
"main.dart.js": "58d8f1299d6a68a7dba0282e13b3a60d",
"manifest.json": "320ddf151b881817fe3087f894480917",
"version.json": "6e1cc190bf86a949b27d26751c41f607"};
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
