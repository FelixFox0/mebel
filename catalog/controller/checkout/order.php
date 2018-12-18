<?php
class ControllerCheckoutOrder extends Controller {
        public function index() {
//            var_dump($this->cart->getProducts());die();
//            var_dump($this->request->server['REQUEST_METHOD']);
//            die();
            
//            var_dump($this->session->data);die();
            if ($this->request->server['REQUEST_METHOD'] == 'POST') {
            
//            $this->session->data['country_code'] = $this->session->data['selected_zone']['country_id'];
            
//            $this->load->model('startup/url');
//            $country = $this->model_startup_url->checkCountryIso($this->session->data['country_code']);
//            die();
            $data['invoice_prefix'] = $this->config->get('config_invoice_prefix');
            $data['store_id'] = $this->config->get('config_store_id');
            $data['store_name'] = $this->config->get('config_name');
            $data['store_url'] = $this->config->get('config_url');               
            $data['firstname'] = 'default';
            $data['email'] = 'default@default.default';
            $data['telephone'] = $this->request->post['phone'];
            $data['payment_firstname'] = 'default';
            $data['shipping_firstname'] = 'default';
            $data['customer_id'] = '0';
            $data['customer_group_id'] = '1';
            $data['lastname'] = '';
            $data['fax'] = '';
            
            $data['payment_lastname'] = 'default';
            $data['payment_company'] = '';
            $data['payment_address_1'] = '';
            $data['payment_address_2'] = '';
            $data['payment_city'] = 'default';
            $data['payment_postcode'] = '';
            $data['payment_country'] = ''/*$country['name']*/;//
            $data['payment_country_id'] = $this->session->data['selected_zone']['country_id'];//
            $data['payment_zone'] = '';//
            $data['payment_zone_id'] = '';//
            $data['payment_address_format'] = '';
            $data['payment_method'] = 'Покупка в 1 клик';//
            $data['payment_code'] = 'cod';//
            
            $data['shipping_lastname'] = '';
            $data['shipping_company'] = '';
            $data['shipping_address_1'] = '';
            $data['shipping_address_2'] = '';
            $data['shipping_city'] = '';
            $data['shipping_postcode'] = '';
            $data['shipping_country'] = ''/*$country['name']*/;//
            $data['shipping_country_id'] = $this->session->data['selected_zone']['country_id'];//
            $data['shipping_zone'] = '';//
            $data['shipping_zone_id'] = '';//
            $data['shipping_address_format'] = '';
            $data['shipping_method'] = $this->session->data['shipping_method']['title'];
            $data['shipping_code'] = $this->session->data['shipping_method']['code'];//
            $data['comment'] = '';
            
            
            $data['affiliate_id'] = 0;
            $data['commission'] = 0;
            $data['marketing_id'] = 0;
            $data['tracking'] = '';
            $data['language_id'] = $this->config->get('config_language_id');
            $data['currency_id'] = $this->currency->getId($this->session->data['currency']);
            $data['currency_code'] = $this->session->data['currency'];
            $data['currency_value'] = $this->currency->getValue($this->session->data['currency']);
            $data['ip'] = $this->request->server['REMOTE_ADDR'];
            $data['forwarded_ip'] = '';
            if (isset($this->request->server['HTTP_USER_AGENT'])) {
                $data['user_agent'] = $this->request->server['HTTP_USER_AGENT'];
            } else {
                $data['user_agent'] = '';
            }
            if (isset($this->request->server['HTTP_ACCEPT_LANGUAGE'])) {
                $data['accept_language'] = $this->request->server['HTTP_ACCEPT_LANGUAGE'];
            } else {
                $data['accept_language'] = '';
            }
//            $this->load->model('catalog/product');
//            $product_info = $this->model_catalog_product->getProduct($this->request->get['product_id']);
//            if(isset($product_info['special'])){
//                $price = $product_info['special'];
//            }else{
//                $price = $product_info['price'];
//            }
//            $data['products'] = $this->cart->getProducts();
            
            
            /*$data['products'][0] = array(
                'product_id' => $this->request->get['product_id'],
                'name' => $product_info['name'],
                'model' => $product_info['model'],
                'quantity' => 1,
                'subtract' => $product_info['subtract'],
                'tax' => $this->tax->getTax($product_info['price'], $product_info['tax_class_id']),
                'price' => $price,
                'total' => $price,
                'reward' => $product_info['reward'],
                'option' => array(),
                'download' => array(),
   
                
            );*/
            
            $data['products'] = array();

            foreach ($this->cart->getProducts() as $product) {
                    $option_data = array();

                    foreach ($product['option'] as $option) {
                            $option_data[] = array(
                                    'product_option_id'       => $option['product_option_id'],
                                    'product_option_value_id' => $option['product_option_value_id'],
                                    'option_id'               => $option['option_id'],
                                    'option_value_id'         => $option['option_value_id'],
                                    'name'                    => $option['name'],
                                    'value'                   => $option['value'],
                                    'type'                    => $option['type']
                            );
                    }

                    $data['products'][] = array(
                            'product_id' => $product['product_id'],
                            'name'       => $product['name'],
                            'model'      => $product['model'],
                            'option'     => $option_data,
                            'download'   => $product['download'],
                            'quantity'   => $product['quantity'],
                            'subtract'   => $product['subtract'],
                            'price'      => $product['price'],
                            'total'      => $product['total'],
                            'tax'        => $this->tax->getTax($product['price'], $product['tax_class_id']),
                            'reward'     => $product['reward']
                    );
            }
            
            $order_data = array();

            $totals = array();
            $taxes = $this->cart->getTaxes();
            $total = 0;

            // Because __call can not keep var references so we put them into an array. 
            $total_data = array(
                    'totals' => &$totals,
                    'taxes'  => &$taxes,
                    'total'  => &$total
            );

            $this->load->model('extension/extension');

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

            $order_data['totals'] = $totals;

            $data['totals'] = array();
            $data['total'] = 0;
            foreach ($order_data['totals'] as $total) {
                    $data['totals'][] = array(
                            'title' => $total['title'],
                            'text'  => $this->currency->format($total['value'], $this->session->data['currency']),
                            'code'  => $total['code'],
                            'value' => $total['value'],
                            'sort_order' => $total['sort_order'],
                            
                    );
                    $data['total'] += $total['value'];
            }
            
            $this->load->model('checkout/order');
            $order_id = $this->model_checkout_order->addOrder($data);
            $this->model_checkout_order->addOrderHistory($order_id, $this->config->get('cod_order_status_id'));
            $this->session->data['order_id'] = $order_id;
            $this->session->data['guest']['firstname'] = 'default';
            $this->session->data['guest']['lastname'] = '';
            
            $json['success'] = $this->url->link('checkout/success', '', true);
	
//            $json['success'] = $order_id;
            $this->response->addHeader('Content-Type: application/json');
            $this->response->setOutput(json_encode($json));
            }else{
                $json['success'] = $this->url->link('error/not_found', '', true);
            }
            
//         var_dump($json['success']);
        }
}