$(document).ready(function(){


      var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
        menuRight = document.getElementById( 'cbp-spmenu-s2' ),
        // showLeft = document.getElementById( 'showLeft' ),
        // showRight = document.getElementById( 'showRight' ),

        showLeftPush = document.getElementById( 'showLeftPush' ),
        showRightPush = document.getElementById( 'showRightPush' ),
        body = document.body;

      // showLeft.onclick = function() {
      //   classie.toggle( this, 'active' );
      //   classie.toggle( menuLeft, 'cbp-spmenu-open' );
      //   disableOther( 'showLeft' );
      // };
      // showRight.onclick = function() {
      //   classie.toggle( this, 'active' );
      //   classie.toggle( menuRight, 'cbp-spmenu-open' );
      //   disableOther( 'showRight' );
      // };

      showLeftPush.onclick = function() {
        classie.toggle( this, 'active' );
        classie.toggle( body, 'cbp-spmenu-push-toright' );
        classie.toggle( menuLeft, 'cbp-spmenu-open' );
        disableOther( 'showLeftPush' );
      };

      if (showRightPush)
        showRightPush.onclick = function() {
        classie.toggle( this, 'active' );
        classie.toggle( body, 'cbp-spmenu-push-toleft' );
        classie.toggle( menuRight, 'cbp-spmenu-open' );
        disableOther( 'showRightPush' );
      };

var load = $(showRightPush).trigger('click');


      function disableOther( button ) {
        // if( button !== 'showLeft' ) {
        //   classie.toggle( showLeft, 'disabled' );
        // }
        // if( button !== 'showRight' ) {
        //   classie.toggle( showRight, 'disabled' );
        // }

        if( button !== 'showLeftPush' ) {
          classie.toggle( showLeftPush, 'disabled' );
        }
        if( button !== 'showRightPush' ) {
          classie.toggle( showRightPush, 'disabled' );
        }
      }

    });
