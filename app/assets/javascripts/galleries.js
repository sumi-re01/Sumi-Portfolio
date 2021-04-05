function initMap() {
  /* global google */
  new google.maps.Map(document.getElementById("map"), {
    center: { lat: Number(window.lat), lng: Number(window.lng) },
    zoom: 8,
  });
}