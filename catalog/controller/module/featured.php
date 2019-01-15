<?php
class ControllerModuleFeatured extends Controller {
	public function index($setting) {
//                var_dump($setting);
		$this->load->language('module/featured');

//		$data['heading_title'] = $this->language->get('heading_title');
                $data['heading_title'] = $this->language->get($setting['name']);

		$data['text_tax'] = $this->language->get('text_tax');

		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');

		$this->load->model('catalog/product');

		$this->load->model('tool/image');

		$data['products'] = array();

		if (!$setting['limit']) {
			$setting['limit'] = 4;
		}

		if (!empty($setting['product'])) {
			$products = array_slice($setting['product'], 0, (int)$setting['limit']);

			foreach ($products as $product_id) {
				$product_info = $this->model_catalog_product->getProduct($product_id);

				if ($product_info) {
					if ($product_info['image']) {
						$image = $this->model_tool_image->resize($product_info['image'], $setting['width'], $setting['height']);
					} else {
						$image = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
					}
                                        
                                        $images = $this->model_catalog_product->getProductImages($product_id);
                                        if(isset($images[0]['image']) && !empty($images[0]['image'])){
                                            $images =$images[0]['image'];
                                        } else {
                                            $images = false;
                                        }

					if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
						$price = $this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
					} else {
						$price = false;
					}

					if ((float)$product_info['special']) {
						$special = $this->currency->format($this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
					} else {
						$special = false;
					}

					if ($this->config->get('config_tax')) {
						$tax = $this->currency->format((float)$product_info['special'] ? $product_info['special'] : $product_info['price'], $this->session->data['currency']);
					} else {
						$tax = false;
					}

					if ($this->config->get('config_review_status')) {
						$rating = $product_info['rating'];
					} else {
						$rating = false;
					}
                                        
                                         $options = array();
                                    foreach ($this->model_catalog_product->getProductOptions($product_id) as $option) {
                                        if ($option['view']){
                                        $product_option_value_data = array();

                                        foreach ($option['product_option_value'] as $option_value) {
                                                if (!$option_value['subtract'] || ($option_value['quantity'] > 0)) {
                                                        if ((($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) && (float)$option_value['price']) {
                                                                $price = $this->currency->format($this->tax->calculate($option_value['price'], $result['tax_class_id'], $this->config->get('config_tax') ? 'P' : false), $this->session->data['currency']);
                                                        } else {
                                                                $price = false;
                                                        }

                                                        $product_option_value_data[] = array(
                                                                'product_option_value_id' => $option_value['product_option_value_id'],
                                                                'option_value_id'         => $option_value['option_value_id'],
                                                                'name'                    => $option_value['name'],
                                                                'image'                   => $this->model_tool_image->resize($option_value['image'], 20, 20),
//                                                                'image_popup'             => $this->model_tool_image->resize($option_value['image'], 264, 284),
                                                                'price'                   => $price,
                                                                'price_prefix'            => $option_value['price_prefix']
                                                        );
                                                }
                                        }

                                        $options[] = array(
                                                'product_option_id'    => $option['product_option_id'],
                                                'product_option_value' => $product_option_value_data,
                                                'option_id'            => $option['option_id'],
                                                'name'                 => $option['name'],
                                                'type'                 => $option['type'],
                                                'value'                => $option['value'],
                                                'required'             => $option['required'],
                                                'large_samples'        => $option['large_samples'],
                                                'full_list'            => $option['full_list'],
                                                'view'                 => $option['view']
                                        );
                                }
                                }

					$data['products'][] = array(
						'product_id'  => $product_info['product_id'],
						'thumb'       => $image,
                                                'thumb_hover' => $this->model_tool_image->resize($images, $this->config->get('theme_default_image_product_width'), $this->config->get('theme_default_image_product_height')),
						'name'        => $product_info['name'],
						'description' => utf8_substr(strip_tags(html_entity_decode($product_info['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..',
						'price'       => $price,
						'special'     => $special,
						'tax'         => $tax,
						'rating'      => $rating,
                                                'options'     => $options,
						'href'        => $this->url->link('product/product', 'product_id=' . $product_info['product_id'])
					);
				}
			}
		}

		if ($data['products']) {
			return $this->load->view('module/featured', $data);
		}
	}
}