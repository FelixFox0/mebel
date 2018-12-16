<?php
class ControllerCheckoutCart extends Controller {
	public function index() {

		$this->load->language('checkout/cart');

		$this->document->setTitle($this->language->get('heading_title'));

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'href' => $this->url->link('common/home'),
			'text' => $this->language->get('text_home')
		);

		$data['breadcrumbs'][] = array(
			'href' => $this->url->link('checkout/cart'),
			'text' => $this->language->get('heading_title')
		);

        $this->load->model('localisation/zone');
        $data['selected_zone'] = $this->model_localisation_zone->getCurrentZoneName();

		if ($this->cart->hasProducts() || !empty($this->session->data['vouchers'])) {
			$data['heading_title'] = $this->language->get('heading_title');

			$data['text_recurring_item'] = $this->language->get('text_recurring_item');
			$data['text_next'] = $this->language->get('text_next');
			$data['text_next_choice'] = $this->language->get('text_next_choice');

			$data['column_image'] = $this->language->get('column_image');
			$data['column_name'] = $this->language->get('column_name');
			$data['column_model'] = $this->language->get('column_model');
			$data['column_quantity'] = $this->language->get('column_quantity');
			$data['column_price'] = $this->language->get('column_price');
			$data['column_total'] = $this->language->get('column_total');

			$data['button_update'] = $this->language->get('button_update');
			$data['button_remove'] = $this->language->get('button_remove');
			$data['button_shopping'] = $this->language->get('button_shopping');
			$data['button_checkout'] = $this->language->get('button_checkout');

			if (!$this->cart->hasStock() && (!$this->config->get('config_stock_checkout') || $this->config->get('config_stock_warning'))) {
				$data['error_warning'] = $this->language->get('error_stock');
			} elseif (isset($this->session->data['error'])) {
				$data['error_warning'] = $this->session->data['error'];

				unset($this->session->data['error']);
			} else {
				$data['error_warning'] = '';
			}

			if ($this->config->get('config_customer_price') && !$this->customer->isLogged()) {
				$data['attention'] = sprintf($this->language->get('text_login'), $this->url->link('account/login'), $this->url->link('account/register'));
			} else {
				$data['attention'] = '';
			}

			if (isset($this->session->data['success'])) {
				$data['success'] = $this->session->data['success'];

				unset($this->session->data['success']);
			} else {
				$data['success'] = '';
			}

			$data['action'] = $this->url->link('checkout/cart/edit', '', true);

			if ($this->config->get('config_cart_weight')) {
				$data['weight'] = $this->weight->format($this->cart->getWeight(), $this->config->get('config_weight_class_id'), $this->language->get('decimal_point'), $this->language->get('thousand_point'));
			} else {
				$data['weight'] = '';
			}

			$this->load->model('tool/image');
			$this->load->model('tool/upload');

			$data['products'] = array();

			$products = $this->cart->getProducts();
//print_r($products);die;
            $cart_options_total = [];
			foreach ($products as $product) {
				$product_total = 0;

                $data['cart_options'] = $this->getCartOptions($product['product_id']);
                //print_r($data['cart_options']);die;

				foreach ($products as $product_2) {
					if ($product_2['product_id'] == $product['product_id']) {
						$product_total += $product_2['quantity'];
					}
				}

				if ($product['minimum'] > $product_total) {
					$data['error_warning'] = sprintf($this->language->get('error_minimum'), $product['name'], $product['minimum']);
				}

				if ($product['image']) {
					$image = $this->model_tool_image->resize($product['image'], $this->config->get($this->config->get('config_theme') . '_image_cart_width'), $this->config->get($this->config->get('config_theme') . '_image_cart_height'));
				} else {
					$image = '';
				}

				$option_data = array();

                $optionsGroup = [];
                $show_in_cart_options = [];


				foreach ($product['option'] as $option) {
				    if (!empty($option['show_in_cart'])) {
				        //print_r($option);die;
                        if (isset($cart_options_total[$option['option_id']])) {
                            $cart_options_total[$option['option_id']]['text'] += $option['price'];
                        } else {
                            $cart_options_total[$option['option_id']]['text'] = $option['price'];
                            $cart_options_total[$option['option_id']]['title'] = $option['name'];
                        }
                        $show_in_cart_options[$option['product_option_id']] = (int)$option['product_option_id'];
				        continue;
                    }
					if ($option['type'] != 'file') {
						$value = $option['value'];
					} else {
						$upload_info = $this->model_tool_upload->getUploadByCode($option['value']);

						if ($upload_info) {
							$value = $upload_info['name'];
						} else {
							$value = '';
						}
					}

					/*$option_data[] = array(
						'name'  => $option['name'],
						'value' => (utf8_strlen($value) > 20 ? utf8_substr($value, 0, 20) . '..' : $value)
					);*/
                    $tempOptionData = array(
                        'name'  => $option['name'],
                        'value' => (utf8_strlen($value) > 20 ? utf8_substr($value, 0, 20) . '..' : $value),
                        'image' => !empty($option['image']) ? $this->model_tool_image->resize($option['image'], 20, 20) : null,
                    );
                    if (!empty($option['group_by']) && $option['type'] == 'text') {
                        if (!isset($optionsGroup[$option['group_by']])) {
                            $optionsGroup[$option['group_by']]['group_name'] = $option['group_name'];
                            $optionsGroup[$option['group_by']]['type'] = 'group';
                        }
                        $optionsGroup[$option['group_by']]['options'][] = $tempOptionData;
                    } else {
                        $option_data[] = $tempOptionData;
                    }
				}

                /*if (!empty($optionsGroup)) {
                    $option_data = array_merge($option_data, $optionsGroup);
                }*/
                //print_r($option_data);die;
				// Display prices
				if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($product['price'], $this->session->data['currency']);
				} else {
					$price = false;
				}

				// Display prices
				if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
					$total = $this->currency->format($product['price'] * $product['quantity'], $this->session->data['currency']);
				} else {
					$total = false;
				}

				$recurring = '';

				if ($product['recurring']) {
					$frequencies = array(
						'day'        => $this->language->get('text_day'),
						'week'       => $this->language->get('text_week'),
						'semi_month' => $this->language->get('text_semi_month'),
						'month'      => $this->language->get('text_month'),
						'year'       => $this->language->get('text_year'),
					);

					if ($product['recurring']['trial']) {
						$recurring = sprintf($this->language->get('text_trial_description'), $this->currency->format($this->tax->calculate($product['recurring']['trial_price'] * $product['quantity'], $product['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']), $product['recurring']['trial_cycle'], $frequencies[$product['recurring']['trial_frequency']], $product['recurring']['trial_duration']) . ' ';
					}

					if ($product['recurring']['duration']) {
						$recurring .= sprintf($this->language->get('text_payment_description'), $this->currency->format($this->tax->calculate($product['recurring']['price'] * $product['quantity'], $product['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']), $product['recurring']['cycle'], $frequencies[$product['recurring']['frequency']], $product['recurring']['duration']);
					} else {
						$recurring .= sprintf($this->language->get('text_payment_cancel'), $this->currency->format($this->tax->calculate($product['recurring']['price'] * $product['quantity'], $product['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']), $product['recurring']['cycle'], $frequencies[$product['recurring']['frequency']], $product['recurring']['duration']);
					}
				}

				$data['products'][] = array(
					'cart_id'   => $product['cart_id'],
					'thumb'     => $image,
					'name'      => $product['name'],
					'model'     => $product['model'],
					'option'    => $option_data,
					'option_group'    => $optionsGroup,
					'recurring' => $recurring,
					'quantity'  => $product['quantity'],
					'stock'     => $product['stock'] ? true : !(!$this->config->get('config_stock_checkout') || $this->config->get('config_stock_warning')),
					'reward'    => ($product['reward'] ? sprintf($this->language->get('text_points'), $product['reward']) : ''),
					'price'     => $price,
					'total'     => $total,
					'href'      => $this->url->link('product/product', 'product_id=' . $product['product_id']),
                    'show_in_cart_options' => $show_in_cart_options
				);

				//var_dump($show_in_cart_options);die;
			}

			// Gift Voucher
			$data['vouchers'] = array();

			if (!empty($this->session->data['vouchers'])) {
				foreach ($this->session->data['vouchers'] as $key => $voucher) {
					$data['vouchers'][] = array(
						'key'         => $key,
						'description' => $voucher['description'],
						'amount'      => $this->currency->format($voucher['amount'], $this->session->data['currency']),
						'remove'      => $this->url->link('checkout/cart', 'remove=' . $key)
					);
				}
			}

			// Totals
			$this->load->model('extension/extension');

			$totals = array();
			$taxes = $this->cart->getTaxes();
			$total = 0;
			
			// Because __call can not keep var references so we put them into an array. 			
			$total_data = array(
				'totals' => &$totals,
				'taxes'  => &$taxes,
				'total'  => &$total
			);
			
			// Display prices
			if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
				$sort_order = array();

				$results = $this->model_extension_extension->getExtensions('total');

				foreach ($results as $key => $value) {
					$sort_order[$key] = $this->config->get($value['code'] . '_sort_order');
				}

				array_multisort($sort_order, SORT_ASC, $results);

				foreach ($results as $result) {
					if ($this->config->get($result['code'] . '_status')) {
						$this->load->model('total/' . $result['code']);
						
						// We have to put the totals in an array so that they pass by reference.
						$this->{'model_total_' . $result['code']}->getTotal($total_data);
					}
				}

				$sort_order = array();

				foreach ($totals as $key => $value) {
					$sort_order[$key] = $value['sort_order'];
				}

				array_multisort($sort_order, SORT_ASC, $totals);
			}

			$data['totals'] = array();

            foreach ($totals as $total) {
                if ($total['code'] == 'total') {
                    $data['totals'] += $cart_options_total;
                }
                $data['totals'][] = array(
                    'title' => $total['title'],
                    'text'  => $total['value']
                );
            }

			$data['continue'] = $this->url->link('common/home');

			$data['checkout'] = $this->url->link('checkout/checkout', '', true);

			$this->load->model('extension/extension');

			$data['modules'] = array();
			
			$files = glob(DIR_APPLICATION . '/controller/total/*.php');

			if ($files) {
				foreach ($files as $file) {
					$result = $this->load->controller('total/' . basename($file, '.php'));
					
					if ($result) {
						$data['modules'][] = $result;
					}
				}
			}

            $data['cart_total_block'] = $this->load->view('checkout/cart_total', $data);;

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			$this->response->setOutput($this->load->view('checkout/cart', $data));
		} else {
			$data['heading_title'] = $this->language->get('heading_title');

			$data['text_error'] = $this->language->get('text_empty');

			$data['button_continue'] = $this->language->get('button_continue');

			$data['continue'] = $this->url->link('common/home');

			unset($this->session->data['success']);

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			$this->response->setOutput($this->load->view('error/not_found', $data));
		}
	}

	public function add() {
		$this->load->language('checkout/cart');

		$json = array();

		if (isset($this->request->post['product_id'])) {
			$product_id = (int)$this->request->post['product_id'];
		} else {
			$product_id = 0;
		}

		$this->load->model('catalog/product');

		$product_info = $this->model_catalog_product->getProduct($product_id);

		if ($product_info) {
			if (isset($this->request->post['quantity']) && ((int)$this->request->post['quantity'] >= $product_info['minimum'])) {
				$quantity = (int)$this->request->post['quantity'];
			} else {
				$quantity = $product_info['minimum'] ? $product_info['minimum'] : 1;
			}

			if (isset($this->request->post['option'])) {
				$option = array_filter($this->request->post['option']);
			} else {
				$option = array();
			}

			$product_options = $this->model_catalog_product->getProductOptions($this->request->post['product_id']);

			foreach ($product_options as $product_option) {
				if ($product_option['required'] && empty($option[$product_option['product_option_id']])) {
					$json['error']['option'][$product_option['product_option_id']] = sprintf($this->language->get('error_required'), $product_option['name']);
				}
			}

			if (isset($this->request->post['recurring_id'])) {
				$recurring_id = $this->request->post['recurring_id'];
			} else {
				$recurring_id = 0;
			}

			$recurrings = $this->model_catalog_product->getProfiles($product_info['product_id']);

			if ($recurrings) {
				$recurring_ids = array();

				foreach ($recurrings as $recurring) {
					$recurring_ids[] = $recurring['recurring_id'];
				}

				if (!in_array($recurring_id, $recurring_ids)) {
					$json['error']['recurring'] = $this->language->get('error_recurring_required');
				}
			}

			if (!$json) {
				$this->cart->add($this->request->post['product_id'], $quantity, $option, $recurring_id);

				$json['success'] = sprintf($this->language->get('text_success'), $this->url->link('product/product', 'product_id=' . $this->request->post['product_id']), $product_info['name'], $this->url->link('checkout/cart'));

				// Unset all shipping and payment methods
				unset($this->session->data['shipping_method']);
				unset($this->session->data['shipping_methods']);
				unset($this->session->data['payment_method']);
				unset($this->session->data['payment_methods']);

				// Totals
				$this->load->model('extension/extension');

				$totals = array();
				$taxes = $this->cart->getTaxes();
				$total = 0;
		
				// Because __call can not keep var references so we put them into an array. 			
				$total_data = array(
					'totals' => &$totals,
					'taxes'  => &$taxes,
					'total'  => &$total
				);

				// Display prices
				if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
					$sort_order = array();

					$results = $this->model_extension_extension->getExtensions('total');

					foreach ($results as $key => $value) {
						$sort_order[$key] = $this->config->get($value['code'] . '_sort_order');
					}

					array_multisort($sort_order, SORT_ASC, $results);

					foreach ($results as $result) {
						if ($this->config->get($result['code'] . '_status')) {
							$this->load->model('total/' . $result['code']);

							// We have to put the totals in an array so that they pass by reference.
							$this->{'model_total_' . $result['code']}->getTotal($total_data);
						}
					}

					$sort_order = array();

					foreach ($totals as $key => $value) {
						$sort_order[$key] = $value['sort_order'];
					}

					array_multisort($sort_order, SORT_ASC, $totals);
				}

				//$json['total'] = sprintf($this->language->get('text_items'), $this->cart->countProducts() + (isset($this->session->data['vouchers']) ? count($this->session->data['vouchers']) : 0), $this->currency->format($total, $this->session->data['currency']));
				$json['total'] = $this->cart->getTotal();
				$json['count'] = $this->cart->countProducts();
			} else {
				$json['redirect'] = str_replace('&amp;', '&', $this->url->link('product/product', 'product_id=' . $this->request->post['product_id']));
			}
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}

	public function edit() {
		$this->load->language('checkout/cart');

		$json = array();

		// Update
		if (!empty($this->request->post['quantity'])) {
            $quantity = (int)$this->request->post['quantity'];
            if ($quantity < 1) {
                $quantity = 1;
            }
		    $this->cart->update($this->request->post['key'], $quantity);

			unset($this->session->data['shipping_method']);
			unset($this->session->data['shipping_methods']);
			unset($this->session->data['payment_method']);
			unset($this->session->data['payment_methods']);
			unset($this->session->data['reward']);

            $json['total'] = $this->cart->getTotal();
            $json['count'] = $this->cart->countProducts();

            $productsInfo = [];
            $json['cart_total_info'] = $this->getCartTotalInfo($productsInfo);

            $json['sub_total'] = $productsInfo[$this->request->post['key']]['total'];
            $json['sub_quantity'] = (int)$productsInfo[$this->request->post['key']]['quantity'];
            $this->response->addHeader('Content-Type: application/json');
            $this->response->setOutput(json_encode($json));
		}
	}

	public function remove() {
		$this->load->language('checkout/cart');

        $json = array();

		// Remove
		if (isset($this->request->post['key'])) {
			$this->cart->remove($this->request->post['key']);

			unset($this->session->data['vouchers'][$this->request->post['key']]);

			$this->session->data['success'] = $this->language->get('text_remove');

			unset($this->session->data['shipping_method']);
			unset($this->session->data['shipping_methods']);
			unset($this->session->data['payment_method']);
			unset($this->session->data['payment_methods']);
			unset($this->session->data['reward']);

            $json['total'] = $this->cart->getTotal();
            $json['count'] = $this->cart->countProducts();

            $json['cart_total_info'] = $this->getCartTotalInfo();

            $this->response->addHeader('Content-Type: application/json');
            $this->response->setOutput(json_encode($json));
		}
	}

	private function getCartOptions($product_id) {
        $cart_options = [];
        $this->load->model('catalog/product');
        foreach ($this->model_catalog_product->getProductOptions($product_id, true) as $option) {
            $product_option_value_data = array();
            if ($option['type'] != 'checkbox') {
                continue;
            }
            foreach ($option['product_option_value'] as $option_value) {
                if (!$option_value['subtract'] || ($option_value['quantity'] > 0)) {
                    if ((($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) && (float)$option_value['price']) {
                        $price = $option_value['price'];
                    } else {
                        $price = false;
                    }

                    $product_option_value_data[] = array(
                        'product_option_value_id' => $option_value['product_option_value_id'],
                        'option_value_id'         => $option_value['option_value_id'],
                        'name'                    => $option_value['name'],
                        'price'                   => $price,
                        'price_prefix'            => $option_value['price_prefix']
                    );
                }
            }

            $cart_options[] = array(
                'product_option_id'    => $option['product_option_id'],
                'product_option_value' => $product_option_value_data,
                'option_id'            => $option['option_id'],
                'name'                 => $option['name'],
                'type'                 => $option['type'],
                'value'                => $option['value'],
                'required'             => $option['required']
            );
        }

        return $cart_options;
    }

    public function updateOption()
    {
        if (isset($this->request->post['option'])) {
            $option = array_filter($this->request->post['option']);
        } else {
            $option = array();
        }

        $action = $this->request->post['action'] == 'add' ? true : false;
        $this->cart->updateOption($this->request->post['cart_id'], $option, $action);

        $json['total'] = $this->cart->getTotal();
        $json['count'] = $this->cart->countProducts();

        $productsInfo = [];
        $json['cart_total_info'] = $this->getCartTotalInfo($productsInfo);

        $json['sub_total'] = $productsInfo[$this->request->post['cart_id']]['total'];
        $json['sub_price'] = $productsInfo[$this->request->post['cart_id']]['price'];
        $json['sub_quantity'] = (int)$productsInfo[$this->request->post['cart_id']]['quantity'];

        $this->response->addHeader('Content-Type: application/json');
        $this->response->setOutput(json_encode($json));
    }

    private function getCartTotalInfo(&$productsInfo = [])
    {
        $data = [];
        $products = $this->cart->getProducts();
        $cart_options_total = [];
        foreach ($products as $product) {
            $productsInfo[$product['cart_id']] = $product;
            foreach ($product['option'] as $option) {
                if (!empty($option['show_in_cart'])) {
                    if (isset($cart_options_total[$option['option_id']])) {
                        $cart_options_total[$option['option_id']]['text'] += $option['price'];
                    } else {
                        $cart_options_total[$option['option_id']]['text'] = $option['price'];
                        $cart_options_total[$option['option_id']]['title'] = $option['name'];
                    }
                    continue;
                }
            }
        }

        $this->load->model('extension/extension');

        $totals = array();
        $taxes = $this->cart->getTaxes();
        $total = 0;

        // Because __call can not keep var references so we put them into an array.
        $total_data = array(

            'totals' => &$totals,
            'taxes'  => &$taxes,
            'total'  => &$total
        );

        // Display prices
        if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
            $sort_order = array();

            $results = $this->model_extension_extension->getExtensions('total');

            foreach ($results as $key => $value) {
                $sort_order[$key] = $this->config->get($value['code'] . '_sort_order');
            }

            array_multisort($sort_order, SORT_ASC, $results);
            //print_r($results);die;
            foreach ($results as $result) {
                if ($this->config->get($result['code'] . '_status')) {
                    $this->load->model('total/' . $result['code']);

                    // We have to put the totals in an array so that they pass by reference.
                    $this->{'model_total_' . $result['code']}->getTotal($total_data);
                }
            }

            $sort_order = array();

            foreach ($totals as $key => $value) {
                $sort_order[$key] = $value['sort_order'];
            }

            array_multisort($sort_order, SORT_ASC, $totals);
        }

        $data['totals'] = array();

        foreach ($totals as $total) {
            if ($total['code'] == 'total') {
                $data['totals'] += $cart_options_total;
            }
            $data['totals'][] = array(
                'title' => $total['title'],
                'text'  => $total['value']
            );
        }



        return $this->load->view('checkout/cart_total', $data);
    }
}
