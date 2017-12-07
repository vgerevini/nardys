$(document).ready(function () {

    if ($(".rblMod1Perg2 input:checked").val() == 1) {
        $(".divMod1Perg2_1").show();
    }

    if ($('#.rblMod5Perg1 input:checked').val() == 1) {
        if ($(".txtNomeColab1").val() != '') {
            $(".divColaborador1").show();

            if ($(".txtNomeColab2").val() != '') {
                $(".divColaborador2").show();
            }
            if ($(".txtNomeColab3").val() != '') {
                $(".divColaborador3").show();
            }
            if ($(".txtNomeColab4").val() != '') {
                $(".divColaborador4").show();
            }
            if ($(".txtNomeColab5").val() != '') {
                $(".divColaborador5").show();
            }
        }
    }

    $('#.rblMod1Perg2 input').change(function () {
        if ($(this).val() == 1) {
            $(".divMod1Perg2_1").show();
        } else {
            $(".divMod1Perg2_1").hide();
        }
    });

    $('#.rblMod5Perg1 input').change(function () {
        if ($(this).val() == 1) {
            $(".divColaborador1").show();
        } else {
            $(".divColaborador1").hide();
            $(".divColaborador2").hide();
            $(".divColaborador3").hide();
            $(".divColaborador4").hide();
            $(".divColaborador5").hide();

            $(".txtNomeColab1").val('');
            $(".txtCpfColab1").val('');
            $("#btnAddColab1").attr('disabled', false);

            $(".txtNomeColab2").val('');
            $(".txtCpfColab2").val('');
            $("#btnAddColab2").attr('disabled', false);
            $("#btnRemoveColab2").attr('disabled', false);

            $(".txtNomeColab3").val('');
            $(".txtCpfColab3").val('');
            $("#btnAddColab3").attr('disabled', false);
            $("#btnRemoveColab3").attr('disabled', false);

            $(".txtNomeColab4").val('');
            $(".txtCpfColab4").val('');
            $("#btnAddColab4").attr('disabled', false);
            $("#btnRemoveColab4").attr('disabled', false);

            $(".txtNomeColab5").val('');
            $(".txtCpfColab5").val('');
            $("#btnAddColab5").attr('disabled', false);
            $("#btnRemoveColab5").attr('disabled', false);
        }
    });
});

function adicionarColab(i) {
    $(".divColaborador" + i).show();
    $("#btnAddColab" + (i - 1)).attr('disabled', true);

    if ($("#btnRemoveColab" + (i - 1))) {
        $("#btnRemoveColab" + (i - 1)).attr('disabled', true);
    }

    return false;
}

function removerColab(i) {
    $(".divColaborador" + i).hide();
    $("#btnAddColab" + (i - 1)).attr('disabled', false);
    $("#btnRemoveColab" + (i - 1)).attr('disabled', false);

    $(".txtNomeColab" + i).val('');
    $(".txtCpfColab" + i).val('');
}

function ValidaCamposObrigatorios(e) {
    var perguntasRespondidas = $(".radioList2").find('input:radio:checked').length;

    if ($('.txtDate').val() == '') {
        alert('Favor preencher a Data da Visita!');
        return false;
    }

    if ($('#content_contentInterna_ddlPACB').val() == 0) {
        alert('Favor selecionar o PACB!');
        return false;
    }

    if ($('.txtGerente').val() == '') {
        alert('Favor preencher o Gerente responsável pela visita!');
        return false;
    }

    if ($('.txtCodigoFuncional').val() == '') {
        alert('Favor preencher o Código funcional!');
        return false;
    }

    if (perguntasRespondidas != 23) {
        alert('Favor responder todas as perguntas! ' + pad(23 - perguntasRespondidas,2) + ' não respondidas.');
        return false;
    } 
}

function pad(str, max) {
    str = str.toString();
    return str.length < max ? pad("0" + str, max) : str;
}