<?php
class ControllerCommonContact extends Controller {
    public function index() {
        $this->load->language('common/contact');
        $data['language'] = $this->language->get('language');
//        $this->response->setOutput($this->load->view('common/contact', $data));
        return $this->load->view('common/contact', $data);
    }
}