
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
    $('li.hakımizda').hover(function () {
        //üzderüne gelince tetiklenecek fonksiyon
        $(this).find('ul').removeClass('hakımizdagizli').addClass('hakımizdagorunur');
    }, function () {
        //üzerinden ayrıldıgında tetiklenecek fonksiyon

        $(this).find('ul').removeClass('hakımizdagorunur').addClass('hakımizdagizli');
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
