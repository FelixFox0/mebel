<?php
class ControllerCommonContact extends Controller {
    public function index() {
        $this->load->language('common/contact');
        $data['language'] = $this->language->get('language');
//        $this->response->setOutput($this->load->view('common/contact', $data));

        $this->load->language('common');
        $data['do_you_have_question'] = $this->language->get('do_you_have_question');
        $data['do_you_want_call'] = $this->language->get('do_you_want_call');
        $data['call_me'] = $this->language->get('call_me');
        $data['write_to_us'] = $this->language->get('write_to_us');
        $data['online_chat'] = $this->language->get('online_chat');
        $data['come_to_us'] = $this->language->get('come_to_us');
        $data['odessa_number_one'] = $this->language->get('odessa_number_one');
        $data['press_to_watch'] = $this->language->get('press_to_watch');
        $data['full_address'] = $this->language->get('full_address');
        $data['time_work'] = $this->language->get('time_work');
        $data['time_call'] = $this->language->get('time_call');


        return $this->load->view('common/contact', $data);
    }
}