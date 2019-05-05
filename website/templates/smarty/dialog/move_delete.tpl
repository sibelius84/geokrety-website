{include file='macros/converters.tpl'}
{include file='macros/icons.tpl'}
{include file='macros/links_user.tpl'}
{include file='macros/move.tpl'}

<div class="modal-header alert-danger">
  <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  <h4 class="modal-title" id="modalLabel">{t}Do you really want to delete this move?{/t}</h4>
</div>
<form name="comment" action="edit.php?delete={$move.id}&confirmed=1" method="post">
  <div class="modal-body">
    {call move move=$move geokret=$geokret_details showActions=false}
    <em>{t}Deleting the move will also delete associated comments and pictures.{/t}</em>
  </div>
  <div class="modal-footer">
    <button type="button" class="btn btn-default" data-dismiss="modal">{t}Dismiss{/t}</button>
    <button type="submit" class="btn btn-danger">{t}Delete{/t}</button>
  </div>
</form>