CREATE OR REPLACE PACKAGE APPS.XXNUC_PO_INT_WRAPPER_UTILS_PKG AUTHID current_user
AS


procedure create_po_wrapper (p_interface_header_id IN number
                             ,p_batch_id in number :=  NULL
                     ,p_buyer_id  in number :=  null
                     ,p_document_type in varchar2 :=  NULL
                     ,p_document_subtype in varchar2 :=  null
                     ,p_create_items in varchar2 :=  NULL
                     ,p_create_sourcing_rules_flag in varchar2 :=  null
                     ,p_rel_gen_method in varchar2 :=  null
                     ,p_approved_status in varchar2 :=  NULL
                     ,p_commit_interval in number :=  NULL
                     ,p_process_code in varchar2 :=  NULL
         ,p_org_id_param in varchar2 :=  null
         ,p_ga_flag in varchar2 :=   NULL
         ,p_sourcing_level in varchar2 :=  NULL
         ,p_inv_org_id            IN NUMBER :=  NULL
                     ,x_return_status        OUT NOCOPY    VARCHAR2
                     ,x_msg_data OUT NOCOPY VARCHAR2);




PROCEDURE control_document    (p_api_version      IN   NUMBER :=  NULL,
    p_init_msg_list    IN   VARCHAR2 :=  NULL,
    p_commit           IN   VARCHAR2 :=  NULL,
    x_return_status    OUT  NOCOPY VARCHAR2,
    p_doc_type         IN   VARCHAR2 :=  NULL,
    p_doc_subtype      IN   VARCHAR2 :=  NULL,
    p_doc_id           IN   NUMBER :=  NULL,
    p_doc_num          IN   VARCHAR2 :=  NULL,
    p_release_id       IN   NUMBER :=  NULL,
    p_release_num      IN   NUMBER :=  NULL,
    p_doc_line_id      IN   NUMBER :=  NULL,
    p_doc_line_num     IN   NUMBER :=  NULL,
    p_doc_line_loc_id  IN   NUMBER :=  NULL,
    p_doc_shipment_num IN   NUMBER :=  NULL,
    p_action           IN   VARCHAR2,
    p_action_date      IN   DATE,
    p_cancel_reason    IN   VARCHAR2 :=  NULL,
    p_cancel_reqs_flag IN   VARCHAR2 :=  NULL,
    p_print_flag       IN   VARCHAR2 :=  NULL,
    p_note_to_vendor   IN   VARCHAR2 :=  NULL,
    p_use_gldate       IN   VARCHAR2 :=  NULL,
    p_org_id           IN   NUMBER :=  NULL --<Bug#4581621>
    ,x_msg_data OUT NOCOPY VARCHAR2) ;
    

PROCEDURE Approve_PO   
    (p_doc_num          IN   VARCHAR2 :=  NULL,
     p_user_name        IN   VARCHAR2 :=   NULL,
     p_org_id           IN   NUMBER :=  NULL,
     x_return_status    OUT  NOCOPY VARCHAR2,
     x_msg_data OUT NOCOPY VARCHAR2) ;
        
    
END XXNUC_PO_INT_WRAPPER_UTILS_PKG;
/
