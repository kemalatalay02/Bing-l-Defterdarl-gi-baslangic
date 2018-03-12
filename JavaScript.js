
//birimler............................................
$(function () {
    $('li.birimler').hover(function () {
        //üzderüne gelince tetiklenecek fonksiyon
        $(this).find('ul').removeClass('gizli').addClass('gorunur');
    }, function () {
        //üzerinden ayrıldıgında tetiklenecek fonksiyon

        $(this).find('ul').removeClass('gorunur').addClass('gizli');
    })
});
//hakımızda...............................................
$(function () {
    $('li.hakimizda').hover(function () {
        //üzderüne gelince tetiklenecek fonksiyon
        $(this).find('ul').removeClass('hakimizdagizli').addClass('hakimizdagorunur');
    }, function () {
        //üzerinden ayrıldıgında tetiklenecek fonksiyon

        $(this).find('ul').removeClass('hakimizdagorunur').addClass('hakimizdagizli');
    })
});
//.....................içkontrol
$(function () {
    $('li.kontrol').hover(function () {
        //üzderüne gelince tetiklenecek fonksiyon
        $(this).find('ul').removeClass('kontrolgizli').addClass('kontrolgorunur');
    }, function () {
        //üzerinden ayrıldıgında tetiklenecek fonksiyon

        $(this).find('ul').removeClass('kontrolgorunur').addClass('kontrolgizli');
    })
});
//...................mevzuat...............
$(function () {
    $('li.mevzuat').hover(function () {
        //üzderüne gelince tetiklenecek fonksiyon
        $(this).find('ul').removeClass('mevzuatgizli').addClass('mevzuatgorunur');
    }, function () {
        //üzerinden ayrıldıgında tetiklenecek fonksiyon

        $(this).find('ul').removeClass('mevzuatgorunur').addClass('mevzuatgizli');
    })
});
//.................istatistikler.......................
$(function () {
    $('li.istastik').hover(function () {
        //üzderüne gelince tetiklenecek fonksiyon
        $(this).find('ul').removeClass('istastikgizli').addClass('istastikgorunur');
    }, function () {
        //üzerinden ayrıldıgında tetiklenecek fonksiyon

        $(this).find('ul').removeClass('istastikgorunur').addClass('istastikgizli');
    })
});

//////................................................formlar

$(function () {
    $('li.formlar').hover(function () {
        //üzderüne gelince tetiklenecek fonksiyon
        $(this).find('ul').removeClass('formlargizli').addClass('formlargorunur');
    }, function () {
        //üzerinden ayrıldıgında tetiklenecek fonksiyon

        $(this).find('ul').removeClass('formlargorunur').addClass('formlargizli');
    })
});





