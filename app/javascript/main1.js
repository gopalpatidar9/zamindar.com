function myFunction() {
    alert("Hello! I am an alert box!");
  }

$(function(){
	$("#wizard").steps({
        headerTag: "h4",
        bodyTag: "section",
        transitionEffect: "fade",
        enableAllSteps: true,
        transitionEffectSpeed: 300,
        labels: {
            next: "Continue",
            previous: "Back"
        },
        onStepChanging: function (event, currentIndex, newIndex) { 
            if ( newIndex >= 1 ) {
                $('.steps ul li:first-child a i').attr('<i class="fa-solid fa-house"></i>');
            } else {
                $('.steps ul li:first-child a i').attr('<i class="fa-solid fa-house" style="color:green;"></i>');
            }

            if ( newIndex === 1 ) {
                $('.steps ul li:nth-child(2) a img').attr('src','/assets/images/step-2-active.png');
            } else {
                $('.steps ul li:nth-child(2) a img').attr('src','/assets/images/step-2.png');
            }

            if ( newIndex === 2 ) {
                $('.steps ul li:nth-child(3) a img').attr('src','/assets/images/step-3-active.png');
            } else {
                $('.steps ul li:nth-child(3) a img').attr('src','/assets/images/step-3.png');
            }

            if ( newIndex === 3 ) {
                $('.steps ul li:nth-child(4) a img').attr('src','/assets/images/step-4-active.png');
                $('.actions ul').addClass('step-4');
            } else {
                $('.steps ul li:nth-child(4) a img').attr('src','/assets/images/step-4.png');
                $('.actions ul').removeClass('step-4');
            }
            return true; 
        }
    });
    // Custom Button Jquery Steps
    $('.forward').click(function(){
    	$("#wizard").steps('next');
    })
    $('.backward').click(function(){
        $("#wizard").steps('previous');
    })
    // Click to see password 
    $('.password i').click(function(){
        if ( $('.password input').attr('type') === 'password' ) {
            $(this).next().attr('type', 'text');
        } else {
            $('.password input').attr('type', 'password');
        }
    }) 
    // Create Steps Image
    $('.steps ul li:first-child').append('<i class="step-arrow"></i>').find('a').append('<i class="fa-solid fa-house ico"></i>').append('<span class="step-order">Step 01</span>');
    $('.steps ul li:nth-child(2').append('<img src="/assets/images/step-arrow.png" alt="" class="step-arrow">').find('a').append('<i class="fa-solid fa-indian-rupee-sign ico"></i>').append('<span class="step-order">Step 02</span>');
    $('.steps ul li:nth-child(3)').append('<img src="/assets/images/step-arrow.png" alt="" class="step-arrow">').find('a').append('<i class="fa-solid fa-inbox ico"></i>').append('<span class="step-order">Step 03</span>');
    $('.steps ul li:last-child a').append('<i class="fa-regular fa-image ico"></i>').append('<span class="step-order">Step 04</span>');
    // Count input 
    $(".quantity span").on("click", function() {

        var $button = $(this);
        var oldValue = $button.parent().find("input").val();

        if ($button.hasClass('plus')) {
          var newVal = parseFloat(oldValue) + 1;
        } else {
           // Don't allow decrementing below zero
          if (oldValue > 0) {
            var newVal = parseFloat(oldValue) - 1;
            } else {
            newVal = 0;
          }
        }
        $button.parent().find("input").val(newVal);
    });
})
