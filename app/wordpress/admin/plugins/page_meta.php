<?php



/////////////////////////////////////////////////////////////
// Event options
/////////////////////////////////////////////////////////////
$prefix = "_poxy_";

$section_layout = array(
  "1" => "one",
  "2" => "Two",
  "3" => "Three",
  "4" => "Four",
  "5" => "Five",
  "6" => "Six",
  "7" => "Seven",
  "8" => "Eight",
  "9" => "Nine",
  "10" => "Ten"
);

$config = array(
    'id' => 'page_options',
    'title' => 'Page Options',
    'prefix' => $prefix."page_",
    'postType' => array('page'),
    'context' => 'side',
    'priority' => 'default',
    'usage' => 'theme',
    'showInColumns' => false
);

$page_options_meta_box = new mrMetaBox($config);

$page_options_meta_box->addField(array(
  'type' => 'Checkbox',
  'id' => 'featured',
  'label' => __('Featured: ','poxy')
));

// $page_options_meta_box->addField(array(
//   'type' => 'Select',
//   'id' => "section_layout",
//   'label' => __('Section Layout: ','poxy'),
//   'default' => '',
//   'options' => $section_layout
// ));

$page_options_meta_box->addField(array(
  'type' => 'Textarea',
  'id' => 'sub_head',
  'label' => __('Sub Heading: ','poxy')
));

$page_options_meta_box->addField(array(
  'type' => 'Textarea',
  'id' => 'description',
  'label' => __('Description: ','poxy')
));



// $page_options_meta_box->addField(array(
//   'type' => 'Text',
//   'id' => 'background_color',
//   'label' => __('Background Color(#hex): ','poxy')
// ));
//
// $page_options_meta_box->addField(array(
//   'type' => 'Text',
//   'id' => 'font_color',
//   'label' => __('Font Color(#hex): ','poxy')
// ));

$page_options_meta_box->addField(array(
  'type' => 'Text',
  'id' => "image_copywrite_name",
  'label' => __('Image Copywrite Name: ','poxy'),
  'default' => ''
));

$page_options_meta_box->addField(array(
  'type' => 'Text',
  'id' => "image_copywrite_link",
  'label' => __('Image Copywrite Link: ','poxy'),
  'default' => ''
));

?>
