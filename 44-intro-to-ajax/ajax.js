window.addEventListener( 'DOMContentLoaded', function() {

    // --------------------------------------------------
    // GET MONSTERS
    // --------------------------------------------------
    var monsterButton = document.querySelector( '#get_monsters' );

    monsterButton.addEventListener( 'click', function( e ) {
        console.log( 'BEFORE AJAX REQUEST' );

        // Create/dispatch request, capture placeholder in `request` var.
        var request = $.ajax( {
            url: 'https://monsters-api.herokuapp.com/monsters',
            method: 'GET',
            dataType: 'html'
        } );

        // Provide callback to handle case where request succeeds.
        request.done( function( responseData ) {
            document.body.innerHTML += responseData;
        } );

        // Provide callback to handle case where request fails.
        request.fail( function( jqXHR, textStatus, errorThrown ) {
            var errorMsg = document.createElement( 'p' );
            errorMsg.innerHTML = 'Whoops, something went wrong! Try again later.';
            document.body.appendChild( errorMsg );
        } );
    } );


    // --------------------------------------------------
    // POST NEW MONSTER DATA
    // --------------------------------------------------
    var postMonsterButton = document.querySelector( '#post_new_monster' );

    postMonsterButton.addEventListener( 'click', function() {

        // Create/dispatch request, chain `.done()` and `.fail()` method calls to return values.
        jQuery.ajax( {
            url: 'https://monsters-api.herokuapp.com/monsters',
            method: 'POST',
            data: {
                monster: {
                    name: 'The Deep Sea King',
                    home: 'City Z',
                    creepiness: 100
                }
            }
        } ).done( function( responseData ) {

            console.log( 'SUCCESSFULLY POSTEDE MONSTER DATA!' );
            console.log( responseData );

        } ).fail( function( jqXHR, textStatus, errorThrown ) {

            console.log( 'FAILED TO POST MONSTER DATA!' );

        } );
    } );
} );
