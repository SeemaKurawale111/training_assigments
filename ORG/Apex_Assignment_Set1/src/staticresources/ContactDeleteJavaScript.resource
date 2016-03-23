
        function deleteRemoteContact(contactId) 
        {          
            Visualforce.remoting.Manager.invokeAction(
                    'AccountExtensionClass.deleteContact',
                    contactId,
                    function(result, event)
                    {
                        if (event.status) 
                        {
                         
                        } 
                        else 
                        {
                            document.getElementById("responseErrors").innerHTML = event.message;
                        }
                    },
                    {escape: true}
                );
        }