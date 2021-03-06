function buildTourneyHtml (tournament) {
  return '\
    <li>\
      <a href="/tournaments/' + tournament.id + '">' + tournament.name + '</a>\
    <button class="delete" data-hook="tourney-delete" type="submit" name="tournament" value="'+  tournament.id + '">DELETE</button>\
    </li>\
  '
}

$('.ctrl-tournaments.actn-index').on('click', '[data-hook~=tourney-delete]', deleteTournament )

function deleteTournament (e) {
  console.log(tournamentId)
	var tournamentId = $(e.currentTarget).val();
	e.preventDefault
  $(e.currentTarget).prop("id", "just-clicked")
	var request = $.ajax({
      url: '/api/tournaments',
      type: 'DELETE',
      data: {id: tournamentId},
      success: updateDom
    });

}

function updateDom (response) {
  console.log(response)
  // $('.tourney-list').empty()
  $('#just-clicked').parent().remove()
}