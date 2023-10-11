// app/javascript/chat.js
// ...

App.chat = App.cable.subscriptions.create('ChatChannel', {
    // ...

    speak: function(mmessageContent) {
        return this.perform('speak', { content: mmessageContent });
    },
});

mmessageForm.addEventListener('submit', function(e) {
    e.preventDefault();
    const content = mmessageContent.value;
    App.chat.speak(content);
    mmessageContent.value = '';
});