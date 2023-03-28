`<ng-template #minhaModal>
	<div class="modal-header">
	  <h4 class="modal-title pull-left">Modal</h4>
	  <button type="button" class="close pull-right" aria-label="Close" (click)="modalRef.hide()">
	    <span aria-hidden="true">&times;</span>
	  </button>
	</div>
	<div class="modal-body">
	  This is a modal.
	</div>
</ng-template>`

// Injetando o manipulador da modal pelo construtor
constructor(private modalService: BsModalService) { }

// Obtendo a modal para uso
let modal: TemplateRef<any> = minhaModal;

// Abre a modal
let modalRef: BsModalRef = this.modalService.show(minhaModal);

// Fecha a modal de referência
modalRef.hide();

// Abrindo uma modal larga
template.show();