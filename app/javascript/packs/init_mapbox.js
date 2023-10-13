import mapboxgl from 'mapbox-gl';
const initMapbox = () => {
  const mapElement = document.getElementById('map');
  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });
    let markers = JSON.parse(mapElement.dataset.markers);
      if (Array.isArray(markers)) {
        addMarkersToMap(map, markers)
        fitMapToMarkers(map, markers)
      } else {
        addMarkersToMap(map, [markers])
        fitMapToMarkers(map, [markers])
      }
    if (mapElement.dataset.routes) {
      var start = [markers[0].lng, markers[0].lat]
      var end = [markers[1].lng, markers[1].lat]
      map.on('load', function() {
      fetch('https://api.mapbox.com/directions/v5/mapbox/cycling/' + start[0] + ',' + start[1] + ';' + end[0] + ',' + end[1] + '?steps=true&geometries=geojson&access_token=' + mapboxgl.accessToken)
        .then(response => response.json())
        .then((data) => {
          var dataa = data.routes[0];
          var route = dataa.geometry.coordinates;

        map.addSource('route', {
        'type': 'geojson',
        'data': {
        'type': 'Feature',
        'properties': {},
        'geometry': {
        'type': 'LineString',
        'coordinates': route
        }
        }
        });

        map.addLayer({
        'id': 'route',
        'type': 'line',
        'source': 'route',
        'layout': {
        'line-join': 'round',
        'line-cap': 'round'
        },
        'paint': {
        'line-color': '#ffa34d',
        'line-width': 8
        }
        });
        });
      });
    }
  }
};
const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);
    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup)
      .addTo(map);
  });
};
const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

// code for routed map

// const routedMapbox = () => {
//   const mapElement = document.getElementById('routedmap');
//   if (mapElement) { // only build a map if there's a div#map to inject into
//     mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
//     const map = new mapboxgl.Map({
//       container: 'map',
//       style: 'mapbox://styles/mapbox/streets-v10'
//     });
//     let markers = JSON.parse(mapElement.dataset.markers);
//     var start = [markers[0].lng, markers[0].lat]
//     var end = [markers[1].lng, markers[1].lat]
//     if (Array.isArray(markers)) {
//       addMarkersToMap(map, markers)
//       fitMapToMarkers(map, markers)
//     } else {
//       addMarkersToMap(map, [markers])
//       fitMapToMarkers(map, [markers])
//     }

//     map.on('load', function() {
//     fetch('https://api.mapbox.com/directions/v5/mapbox/cycling/' + start[0] + ',' + start[1] + ';' + end[0] + ',' + end[1] + '?steps=true&geometries=geojson&access_token=' + mapboxgl.accessToken)
//       .then(response => response.json())
//       .then((data) => {
//         var dataa = data.routes[0];
//         var route = dataa.geometry.coordinates;

//       map.addSource('route', {
//       'type': 'geojson',
//       'data': {
//       'type': 'Feature',
//       'properties': {},
//       'geometry': {
//       'type': 'LineString',
//       'coordinates': route
//       }
//       }
//       });

//       map.addLayer({
//       'id': 'route',
//       'type': 'line',
//       'source': 'route',
//       'layout': {
//       'line-join': 'round',
//       'line-cap': 'round'
//       },
//       'paint': {
//       'line-color': '#888',
//       'line-width': 8
//       }
//       });
//       });
//     });
//   }
// };

export { initMapbox };
