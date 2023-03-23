// <link href="~/Content/dragula.min.css" rel="stylesheet" />
// <script src="~/Scripts/dragula.min.js"></script>

// Inicia o dragula passando o elemento container onde acontecerá o drag and drop dos elementos dentro do mesmo
dragula([ElementoContainer])

/* 
    Exemplo

<div class="ElementoContaine">
    <div id="Teste" class="col-xl-6">
        <div class="card">
            <div class="card-body">
                <div class="float-right mt-0 mb-0 pt-0 pb-0">
                    <button type="button" class="btn mt-0 mb-0 pt-0 pb-0 text-gray-800"><i class="icon-dots"></i></button>
                </div>
                <div class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input" id="customCheck" name="example1">
                    <label class="custom-control-label text-gray-800" for="customCheck">Produção por Equipamento</label>
                </div>
            </div>
        </div>
        <div class="card" style="cursor: grab;">
            <div class="card-body">
                <div class="float-right">
                    <button type="button" class="btn text-gray-800 mt-0 mb-0 pt-0 pb-0" style="cursor: grab;"><i class="icon-dots"></i></button>
                </div>
                <div class="custom-control custom-checkbox" style="cursor: grab;">
                    <input type="checkbox" class="custom-control-input" id="customCheck2" name="example1" style="cursor: pointer;">
                    <label class="custom-control-label text-gray-800" for="customCheck2" style="cursor: pointer;">Produção por Equi</label>
                </div>
            </div>
        </div>
    </div>
</div>
*/