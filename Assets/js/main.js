$(document).ready(function () {
    _loadModal();
});

function _loadModal() {
    $(document).keyup(function (e) {
        if (e.keyCode == 27) { // escape key maps to keycode `27`
            $(".modal-glob").removeClass('active');
        }
    });
}