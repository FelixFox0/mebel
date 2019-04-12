<?php
class ControllerCommonZone extends Controller {

    public function index() {
        $this->load->language('common/zone');

        $this->load->model('localisation/zone');

        $data['mojor_zones'] = $this->model_localisation_zone->getMajorZones();

        if (count($data['mojor_zones']) > 0) {
            $data['example'] = $data['mojor_zones'][0];
        } else {
            $data['example'] = [];
        }

        if (count($data['mojor_zones'])) {
            $data['mojor_zones'] = array_chunk($data['mojor_zones'], ceil(count($data['mojor_zones']) / 3));
            $data['current_zone'] = $this->model_localisation_zone->getCurrentZone();
        }
        $this->model_localisation_zone->getCurrentZone();

        $this->load->language('common');
        $data['_select_city'] = $this->language->get('_select_city');
        $data['_delivery_ukraine'] = $this->language->get('_delivery_ukraine');
        $data['_enter_other_city'] = $this->language->get('_enter_other_city');
        $data['_enter_city'] = $this->language->get('_enter_city');
        $data['_for_example'] = $this->language->get('_for_example');
        return $this->load->view('common/zone', $data);
    }

	public function change() {
        $this->load->language('common/zone');

        $this->load->model('localisation/zone');

        if (isset($this->request->post['zone_id'])) {
            $zone_id = (int)$this->request->post['zone_id'];
        } else {
            $zone_id = 0;
        }

        $res = $this->model_localisation_zone->getZone($zone_id);

        if ($res) {
            $data['selected_zone'] = $res;
            $this->session->data['selected_zone'] = $data['selected_zone'];
            $json = $res;
            $json['success'] = true;
        } else {
            $json['error'] = $this->language->get('zone_not_found');
        }
        $this->response->addHeader('Content-Type: application/json');
        $this->response->setOutput(json_encode($json));
	}

    public function search() {
        $this->load->language('common/zone');

        $this->load->model('localisation/zone');
        if (isset($this->request->post['search'])) {
            $search = $this->request->post['search'];
            $json['zones'] = $this->model_localisation_zone->getZones($search);
            if ($json['zones']) {
                foreach ($json['zones'] as $zone) {
                    if (utf8_strtolower($zone['name']) == utf8_strtolower($search)) {
                        $json['selected_zone'] = $zone;
                        break;
                    }
                }
            }
        } else {
            $json['zones'] = [];
        }


        $json['success'] = true;

        $this->response->addHeader('Content-Type: application/json');
        $this->response->setOutput(json_encode($json));
    }
}
