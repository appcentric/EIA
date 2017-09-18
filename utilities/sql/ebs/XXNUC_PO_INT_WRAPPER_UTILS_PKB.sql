CREATE OR REPLACE PACKAGE BODY APPS.XXNUC_PO_INT_WRAPPER_UTILS_PKG
AS

FUNCTION return_all_messages RETURN VARCHAR2 
IS
 l_msg_data VARCHAR2(2000);
BEGIN

      FOR I IN 1..FND_MSG_PUB.Count_Msg LOOP
        l_msg_data := SUBSTR(l_msg_data || FND_MSG_PUB.Get(I, p_encoded => FND_API.G_FALSE)||CHR(10),1,2000);
      END LOOP;

    RETURN l_msg_data;
 END return_all_messages;

PROCEDURE retrieve_po_xface_errors (p_interface_type in varchar2 :=  'PO_DOCS_OPEN_INTERFACE'
                        ,p_interface_header_id   in NUMBER
                        ,x_return_status OUT NOCOPY VARCHAR2
                        ,x_msg_data  OUT NOCOPY VARCHAR2)
IS
 
CURSOR c_get_errors
IS 
SELECT interface_type||' Column Name: '||Column_Name||' Message: '||error_message error_line
FROM po_interface_Errors where interface_type =  p_interface_type
AND interface_header_id  IN p_interface_header_id
AND EXISTS (SELECT 1 FROM po_headers_interface poh WHERE poh.process_code <> 'ACCEPTED' AND poh.interface_header_id = p_interface_header_id)
;
BEGIN 
x_return_status := 'S';
FOR i IN c_get_errors
LOOP
 x_return_status := 'E';
 x_msg_data := SUBSTR(x_msg_data || i.error_line||CHR(10),1,2000);
END LOOP; 
   
END retrieve_po_xface_errors;



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
                     ,x_msg_data OUT NOCOPY VARCHAR2)
IS

BEGIN
 x_return_status := FND_API.G_RET_STS_SUCCESS;
 x_msg_data := 'Calling PO_PDOI_GRP.start_process for Interface Header ID  '||p_interface_header_id;
--mo_global.init('PO');
--mo_global.init('S',354);
--fnd_global.apps_initialize(1496,50824,201);




--po_log.enable_logging(p_level => '6');


PO_PDOI_GRP.start_process
  ( p_api_version => 1.0,
    p_init_msg_list => FND_API.G_TRUE,
    p_validation_level => FND_API.G_VALID_LEVEL_FULL,
    p_commit => FND_API.G_TRUE,
    x_return_status => x_return_status,
    p_gather_intf_tbl_stat => FND_API.G_FALSE,
    p_calling_module => PO_PDOI_CONSTANTS.g_CALL_MOD_UNKNOWN,
    p_selected_batch_id => p_batch_id,
    p_batch_size => PO_PDOI_CONSTANTS.g_DEF_BATCH_SIZE,
    p_buyer_id => p_buyer_id,
    p_document_type => p_document_type,
    p_document_subtype => p_document_subtype,
    p_create_items => p_create_items,
    p_create_sourcing_rules_flag => p_create_sourcing_rules_flag,
    p_rel_gen_method => p_rel_gen_method,
    p_sourcing_level => p_sourcing_level,
    p_sourcing_inv_org_id => p_inv_org_id,
    p_approved_status => p_approved_status,
    p_process_code => PO_PDOI_CONSTANTS.g_process_code_PENDING,
    p_interface_header_id => p_interface_header_id,
    p_org_id => p_org_id_param,
    p_ga_flag => p_ga_flag
  );

 
  retrieve_po_xface_errors (p_interface_header_id => p_interface_header_id, x_return_status => x_return_status,x_msg_data =>x_msg_data);

  IF (NVL(x_return_status,FND_API.G_RET_STS_SUCCESS) = FND_API.G_RET_STS_SUCCESS) 
  THEN
     
     x_msg_data := 'PO Created for the Interface Header Id '||p_interface_header_id;
  END IF;

 

EXCEPTION 
 WHEN OTHERS THEN
   x_msg_data := SQLERRM || x_msg_data;
   x_return_status := 'U';
   x_msg_data := x_msg_data||' '||return_all_messages;
END create_po_wrapper; 






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
    ,x_msg_data OUT NOCOPY VARCHAR2)
IS
BEGIN

x_return_status := FND_API.G_RET_STS_SUCCESS;


PO_DOCUMENT_CONTROL_PUB.control_document(p_api_version       => p_api_version
				,p_init_msg_list         =>p_init_msg_list
				,p_commit                => p_commit
				,x_return_status        => x_return_status
				,p_doc_type         =>   p_doc_type
				,p_doc_subtype      =>   p_doc_subtype
				,p_doc_id           =>   p_doc_id
				,p_doc_num          =>   p_doc_num
				,p_release_id       =>   p_release_id
				,p_release_num      =>   p_release_num
				,p_doc_line_id      =>  p_doc_line_id
				,p_doc_line_num     =>  p_doc_line_num
				,p_doc_line_loc_id  =>  p_doc_line_loc_id
				,p_doc_shipment_num  =>  NULL
				,p_action               => p_action
				,p_action_date          => p_action_date
				,p_cancel_reason        =>  p_cancel_reason
				,p_cancel_reqs_flag     => p_cancel_reqs_flag
				,p_print_flag           => p_print_flag
				,p_note_to_vendor        => p_note_to_vendor
				,p_use_gldate            => p_use_gldate
				,p_org_id               => p_org_id);

  IF x_return_status <> FND_API.G_RET_STS_SUCCESS
  THEN
       x_msg_data := return_all_messages;
  END if;

EXCEPTION 
WHEN OTHERS THEN
   x_msg_data := SQLERRM || x_msg_data;
   x_return_status := 'U';
   x_msg_data := x_msg_data ||' '||return_all_messages;
END control_document; 




PROCEDURE Approve_PO   
    (p_doc_num          IN   VARCHAR2 :=  NULL,
     p_user_name        IN   VARCHAR2 :=   NULL,
     p_org_id           IN   NUMBER :=  NULL,
     x_return_status    OUT  NOCOPY VARCHAR2,
     x_msg_data OUT NOCOPY VARCHAR2) IS 

     V_ITEM_KEY    varchar2(200);
     v_po_header_id Number;
     v_preparer_id  Number;

     cursor get_po_curs is
     select po_header_id
       from po_headers
      where segment1 = p_doc_num;
 
     cursor get_user_curs is
     select employee_id
       from fnd_user
      where user_name = p_user_name;
 
Begin

   open get_po_curs;
   fetch get_po_curs into v_po_header_id;
   close get_po_curs;

   open get_user_curs;
   fetch get_user_curs into v_preparer_id;
   close get_user_curs;


  SELECT v_po_header_id || '-'  || to_char(po_wf_itemkey_s.NEXTVAL)  
    INTO v_item_key FROM dual;

  po_reqapproval_init1.start_wf_process(
  ItemType              => 'POAPPRV'
, ItemKey               =>  V_ITEM_KEY
, WorkflowProcess       => 'POAPPRV_TOP'
, ActionOriginatedFrom  => 'PO_FORM'
, DocumentID            =>  v_po_header_id
, DocumentNumber        =>  p_doc_num
, PreparerID            =>  v_preparer_id
, DocumentTypeCode      => 'PO'
, DocumentSubtype       => 'STANDARD'
, SubmitterAction       => 'APPROVE'
, forwardToID           => NULL
, forwardFromID         => NULL
, DefaultApprovalPathID => NULL
, Note                  => NULL
, PrintFlag             => 'N'
, FaxFlag               => 'N'
, FaxNumber             => NULL
, EmailFlag             => 'N'
, EmailAddress          => NULL
, CreateSourcingRule    => 'N'
, ReleaseGenMethod      => 'N'
, UpdateSourcingRule    => 'N'
, MassUpdateReleases    => 'N'
, RetroactivePriceChange=> 'N'
, OrgAssignChange       => 'N'
, CommunicatePriceChange=> 'N'
, p_Background_Flag     => 'N'
, p_Initiator           => NULL
, p_xml_flag            => NULL
, FpdsngFlag            => 'N'
, p_source_type_code    => NULL);

  x_return_status  := 'S';
  
COMMIT;


EXCEPTION 
WHEN OTHERS THEN
   x_msg_data := SQLERRM ;
   x_return_status := 'U';

END Approve_PO;
     
END XXNUC_PO_INT_WRAPPER_UTILS_PKG;
/
