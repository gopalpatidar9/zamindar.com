

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
        
    });
    // Custom Button Jquery Steps
    $('.forward').click(function(){
    	$("#wizard").steps('next');
    })
    $('.backward').click(function(){
        $("#wizard").steps('previous');
    })
    
    // Create Steps Image
    $('.steps ul li:first-child').append('<i class="step-arrow"></i>').find('a').append('<i class="fa-solid fa-house ico"></i>').append('<span class="step-order">Step 01</span>');
    $('.steps ul li:nth-child(2').append('<img src="/assets/images/step-arrow.png" alt="" class="step-arrow">').find('a').append('<i class="fa-solid fa-indian-rupee-sign ico"></i>').append('<span class="step-order">Step 02</span>');
    $('.steps ul li:nth-child(3)').append('<img src="/assets/images/step-arrow.png" alt="" class="step-arrow">').find('a').append('<i class="fa-solid fa-inbox ico"></i>').append('<span class="step-order">Step 03</span>');
    $('.steps ul li:last-child a').append('<i class="fa-regular fa-image ico"></i>').append('<span class="step-order">Step 04</span>');
    
})
