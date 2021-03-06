<?php
////////////////////////////////////////////
// Options Framework
////////////////////////////////////////////
// Load main options panel file
if ( !function_exists( 'optionsframework_init' ) ) {
	define('OPTIONS_FRAMEWORK_URL', STYLESHEETPATH . '/admin/');
	define('OPTIONS_FRAMEWORK_DIRECTORY', get_bloginfo('stylesheet_directory') . '/admin/');
	require_once (OPTIONS_FRAMEWORK_URL . 'options-framework.php');
}

// Load Mr MetaBox
if(!class_exists('mrMetaBox')) {
    define('MRMETABOX_URL', TEMPLATEPATH . '/admin/mr-meta-box/');
    require_once(MRMETABOX_URL . 'mr-meta-box.php');
}

//require_once("admin/Tax-meta-class/Tax-meta-class.php");

// Multiple Featured Images
require_once ('admin/multiple_featured_images.php');

// Load Poxy Functions
require_once('poxy-functions.php'); // Get Pfunks

// Load Core
require_once('admin/_CORE/bones.php'); // Clean up code output
require_once('admin/_CORE/admin.php'); // Dashboard admin stuff
require_once('admin/_CORE/menus.php'); // Menus
require_once('admin/_CORE/images.php'); // Images
// require_once('admin/_CORE/header.php'); // Head scripts




////////////////////////////////////////////
// Load Theme Core
////////////////////////////////////////////
// if (of_get_option('poxy_menu_type')) {
// require_once('admin/_CORE/walkers/walker-'.of_get_option('poxy_menu_type').'.php');
// } else {
// require_once('admin/_CORE/walkers/walker.php');
// }
require_once('admin/short-codes.php');
//require_once('admin/custom-post-types.php');
require_once('admin/pagination.php');
// require_once('admin/plugins/breadcrumbs.php');
// require_once('admin/plugins/product_ajax_loader.php');
// require_once('admin/woocommerce_filters.php');



// Load Custom Post Type Custom Meta Classes
require_once('admin/Tax-meta-class/Tax-meta-class.php');


// Load Post Types
if (!class_exists('Woocommerce')) {
require_once('admin/post-types/post-type-products.php');
// require_once('admin/plugins/post-type-products.php');
}

require_once('admin/plugins/post-type-slideshow.php');
// require_once('admin/plugins/projects.php');
// require_once('admin/plugins/post-type-vehicles.php');
// require_once('admin/plugins/post-type-author.php');
require_once('admin/plugins/post-type-vip.php');
require_once('admin/plugins/post-type-faq.php');
require_once('admin/plugins/post-type-events.php');
// require_once('admin/plugins/post-type-staff.php');
require_once('admin/plugins/post-type-testimonials.php');
// require_once('admin/plugins/post-type-locations.php');
require_once('admin/plugins/post-type-dealers.php');


// Common Meta Boxes
require_once('admin/plugins/repeatable_fields.php');
require_once('admin/plugins/page_meta.php');
// require_once('admin/plugins/page_photo_gallery.php');


// Widgets
require_once ('admin/widgets.php');





////////////////////////////////////////////
// Load Scripts
////////////////////////////////////////////
add_action('wp_enqueue_scripts', 'poxy_load_scripts');

function poxy_load_scripts() {
	wp_enqueue_script('jquery');
    // wp_deregister_script('jquery');
    // wp_register_script('jquery', '//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js', false, '1.9.1');
    // wp_register_script('jquery', '//code.jquery.com/jquery-2.0.0.min.js', false, '2.0.0');
    // wp_enqueue_script('poxy_js', get_bloginfo('stylesheet_directory').'/assets/scripts-ck.js', array('jquery'), '1.0', true);
}

// Speed Ring Finder
require_once('admin/ajax/speed-ring-finder.php');


////////////////////////////////////////////
// Load Footer Scripts Scripts
////////////////////////////////////////////

//add_action('wp_footer','poxy_footer');
function poxy_footer() {
    wp_reset_query();
    global $wp_query;
    global $post;

     if (!is_page('home')) return;
    include(TEMPLATEPATH . '/assets/js/php/slideshow.php');
}




////////////////////////////////////////////
// Show Future Posts
////////////////////////////////////////////
add_filter('the_posts', 'show_all_future_posts');

function show_all_future_posts($posts)
{
   global $wp_query, $wpdb;

   if(is_single() && $wp_query->post_count == 0)
   {
      $posts = $wpdb->get_results($wp_query->request);
   }

   return $posts;
}


////////////////////////////////////////////
// POXY Functions
////////////////////////////////////////////
function poxy_meta($meta_value){
  global $post;
  $meta_value = get_post_meta($post->ID, $meta_value, true);
  if($meta_value != ''){
    return $meta_value;
    }else{
    return false;
  }
}


function get_poxy_thumb() {
	global $post;
	$image_id = get_post_thumbnail_id();
	if ($image_id) {
		$image_url = wp_get_attachment_image_src($image_id, 'poxy_square_thumb_350', false);
		$image_url = $image_url[0];
	} else {
		$image_url = false;
	}
	return $image_url;
}

function get_poxy_thumb_650() {
	global $post;
	$image_id = get_post_thumbnail_id();
	if ($image_id) {
		$image_url = wp_get_attachment_image_src($image_id, 'poxy_thumb_650x650', false);
		$image_url = $image_url[0];
	} else {
		$image_url = false;
	}
	return $image_url;
}


function poxy_slug(){
	global $post;
	$slug = get_post( $post )->post_name;
	return $slug;
}


function poxy_meta_value($meta_value){
  global $post;
  $meta_value = get_post_meta($post->ID, $meta_value, true);
  if($meta_value != ''){
    return $meta_value;
    }else{
    return "X";
  }
}


function poxy_tax_image($id, $x = 350, $y = 350, $size = 'full'){
	$taxonomy = 'product_cat';
	$queried_term = get_query_var($taxonomy);

	if(is_int($id)) {
		$terms = get_terms($taxonomy, 'include='.$id  );
	} else {
		$terms = get_terms($taxonomy, 'slug='.$id  );
	}
	foreach ($terms as $term) {
	  $image = poxy_get_taxonomy_image_src( $term, $size );
	  if ( ! $image ) return poxy_placeholder($x, $y);
	  return poxy_get_taxonomy_image_url($term, 'full');
	}
	  // $image = poxy_get_taxonomy_image_src( $term, $size );
	  // if ( ! $image ) return poxy_placeholder($x, $y);
}

function get_poxy_banner() {
	global $post;
	$image_id = get_post_thumbnail_id();

  if ($image_id) {
    $image_url = wp_get_attachment_image_src($image_id, 'full', false);
    $image_url = $image_url[0];
  } else {
    $image_url = false;
  }
  return $image_url;
}


// Admin Edit menu Button
function poxy_edit() {
    $a = '<div class="rel">';
    $b = '</div>';
    echo $a;
    edit_post_link();
    echo $b;
    echo "\n";
}

function poxy_id(){
	global $post;
	$id = get_post( $post )->ID;
	return $id;
}

function poxy_placeholder($x = 350, $y = 350, $bg = '', $color = '') {

  if ($bg == '') {
    $bg = of_get_option('poxy_placeholder_background_color');
    $bg= ltrim ($bg,'#');
  }

  if ($color == '') {
    $color = of_get_option('poxy_placeholder_text_color');
    $color= ltrim ($color,'#');
  }

  $placeholder_image = "http://placehold.it/". $x ."x".$y."/".$bg."/".$color;
  // $placeholder_image = get_bloginfo( 'template_directory' ) . '/assets/images/core/placeholder.png';
	// $placeholder_image = get_bloginfo('template_url') . '/images/logo-blue.svg';
	$placeholder_image = "";
  return $placeholder_image;

}

function poxy_get_cat_thumb($slug) {

	$args = array(
		'category_name' => $slug,
		'posts_per_page' => 1,
		'post_type' => array('post')
	);

	$query = new WP_Query( $args );

	while ($query->have_posts()) : $query->the_post();
		$image = get_poxy_thumb();
		if ($image) {
			$image = 'background-image: url('. $image. ')';
		}
		elseif (poxy_catch_first_image()) {
			$image_url = poxy_catch_first_image();
			$image = 'background-image: url('. $image_url. ')';
		}
		else {
			// $image = 'background-image: url(http://placehold.it/800x400)';
			$image_ph = get_bloginfo('template_url') . '/images/logo-blue.svg';
			$image = 'background-image: url('.$image_ph.')';
		}
	endwhile;
	wp_reset_query();

	return $image;

}

// Auto Set First Image as Featured
function poxy_catch_first_image() {
	global $post, $posts;
	$first_img = '';
	ob_start();
	ob_end_clean();
	$output = preg_match_all('/<img.+src=[\'"]([^\'"]+)[\'"].*>/i', $post->post_content, $matches);
	if (isset($matches[1][0])){
		$first_img = $matches[1][0];
		if(empty($first_img)) {
			return false;
		} else {
		return $first_img;
		}
	}
}




////////////////////////////////////////////
// Custom Taxonomy Fields
////////////////////////////////////////////
add_action( 'pre_get_posts', 'product_posts_per_page' );
/**
 * Change Posts Per Page for Event Archive
 *
 * @author Bill Erickson
 * @link http://www.billerickson.net/customize-the-wordpress-query/
 * @param object $query data
 *
 */
function product_posts_per_page( $query ) {

	if( $query->is_main_query() && !is_admin() && $query->is_tax('product_cat') ) {
		$query->set( 'posts_per_page', '200' );
	}

}

////////////////////////////////////////////
// Custom Taxonomy Fields
////////////////////////////////////////////
// A callback function to add a custom field to our "presenters" taxonomy
function presenters_taxonomy_custom_fields($tag) {
   // Check for existing taxonomy meta for the term you're editing
    $t_id = $tag->term_id; // Get the ID of the term you're editing
    $term_meta = get_option( "taxonomy_term_$t_id" ); // Do the check
?>

<tr class="form-field">
	<th scope="row" valign="top">
		<label for="copywrite_name"><?php _e('Copywrite Name'); ?></label>
	</th>
	<td>
		<input type="text" name="term_meta[copywrite_name]" id="term_meta[copywrite_name]" size="25" style="width:60%;" value="<?php echo $term_meta['copywrite_name'] ? $term_meta['copywrite_name'] : ''; ?>"><br />
		<span class="description"><?php _e('The Photographers\'s Name'); ?></span>
	</td>
</tr>

<tr class="form-field">
	<th scope="row" valign="top">
		<label for="copywrite_url"><?php _e('Copywrite URL'); ?></label>
	</th>
	<td>
		<input type="text" name="term_meta[copywrite_url]" id="term_meta[copywrite_url]" size="25" style="width:60%;" value="<?php echo $term_meta['copywrite_url'] ? $term_meta['copywrite_url'] : ''; ?>"><br />
		<span class="description"><?php _e('Link to the Photographers\'s page.'); ?></span>
	</td>
</tr>

<tr class="form-field">
	<th scope="row" valign="top">
		<label for="image_position"><?php _e('Child Image Positions'); ?></label>
	</th>
	<td>
		<select name="term_meta[image_position]" id="term_meta[image_position]" >
			<option selected="selected" value="<?php echo $term_meta['image_position'] ? $term_meta['image_position'] : ''; ?>"><?php echo $term_meta['image_position'] ? $term_meta['image_position'] : ''; ?></option>
			<option value="cc">Center</option>
			<option value="rc">Right</option>
			<option value="lc">Left</option>
			<option value="ct">Top</option>
			<option value="cb">Bottm</option>
			<option value="rt">Top Right</option>
			<option value="lt">Top Left</option>
			<option value="rb">Bottom Right</option>
			<option value="lb">Bottom Left</option>
		</select>
		<br />
		<span class="description"><?php _e('Child background position. Example: ct = Center Top'); ?></span>
	</td>
</tr>

<tr class="form-field">
	<th scope="row" valign="top">
		<label for="bgs"><?php _e('Child Image Sizes.'); ?></label>
	</th>
	<td>
		<select name="term_meta[bgs]" id="term_meta[bgs]" >
		  <option selected="selected" value="<?php echo $term_meta['bgs'] ? $term_meta['bgs'] : ''; ?>"><?php echo $term_meta['bgs'] ? $term_meta['bgs'] : ''; ?></option>
		 	<option value="cover">cover</option>
			<option value="contain">contain</option>
			<option value="100">100</option>
			<option value="50">50</option>
		</select>
		<br />
		<span class="description"><?php _e('children background CSS size.'); ?></span>
	</td>
</tr>

<tr class="form-field">
	<th scope="row" valign="top">
		<label for="featured_image_position"><?php _e('Featured Image Position'); ?></label>
	</th>
	<td>
		<select name="term_meta[featured_image_position]" id="term_meta[featured_image_position]" >
			<option selected="selected" value="<?php echo $term_meta['featured_image_position'] ? $term_meta['featured_image_position'] : ''; ?>"><?php echo $term_meta['featured_image_position'] ? $term_meta['featured_image_position'] : ''; ?></option>
			<option value="cc">Center</option>
			<option value="rc">Right</option>
			<option value="lc">Left</option>
			<option value="ct">Top</option>
			<option value="cb">Bottm</option>
			<option value="rt">Top Right</option>
			<option value="lt">Top Left</option>
			<option value="rb">Bottom Right</option>
			<option value="lb">Bottom Left</option>
		</select>
		<br />
		<span class="description"><?php _e('Featured/Banner Image position.'); ?></span>
	</td>
</tr>

<tr class="form-field">
	<th scope="row" valign="top">
		<label for="featured_image_bgs"><?php _e('Featured Image Size'); ?></label>
	</th>
	<td>
		<select name="term_meta[featured_image_bgs]" id="term_meta[featured_image_bgs]" >
			<option selected="selected" value="<?php echo $term_meta['featured_image_bgs'] ? $term_meta['featured_image_bgs'] : ''; ?>"><?php echo $term_meta['featured_image_bgs'] ? $term_meta['featured_image_bgs'] : ''; ?></option>
			<option value="cover">cover</option>
			<option value="contain">contain</option>
			<option value="100">100</option>
			<option value="50">50</option>
		</select>
		<br />
		<span class="description"><?php _e('Banner/Featured image CSS size.'); ?></span>
	</td>
</tr>
<?php
}

// A callback function to save our extra taxonomy field(s)
function save_taxonomy_custom_fields( $term_id ) {
		if ( isset( $_POST['term_meta'] ) ) {
				$t_id = $term_id;
				$term_meta = get_option( "taxonomy_term_$t_id" );
				$cat_keys = array_keys( $_POST['term_meta'] );
						foreach ( $cat_keys as $key ){
						if ( isset( $_POST['term_meta'][$key] ) ){
								$term_meta[$key] = $_POST['term_meta'][$key];
						}
				}
				//save the option array
				update_option( "taxonomy_term_$t_id", $term_meta );
		}
}

// Add the fields to the "presenters" taxonomy, using our callback function
add_action( 'product_cat_edit_form_fields', 'presenters_taxonomy_custom_fields', 10, 2 );

// Save the changes made on the "presenters" taxonomy, using our callback function
add_action( 'edited_product_cat', 'save_taxonomy_custom_fields', 10, 2 );
