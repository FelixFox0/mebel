<?php
class ModelLocalisationZone extends Model {
	public function getZone($zone_id) {
		$query = $this->db->query("SELECT z.*, zd.name as name FROM " . DB_PREFIX . "zone as z JOIN `" . DB_PREFIX . "zone_description` `zd` ON `zd`.`zone_id` = `z`.`zone_id` WHERE z.zone_id = '" . (int)$zone_id . "' AND `zd`.`language_id` = " . (int)$this->config->get('config_language_id') . " AND z.status = '1'");

		return $query->row;
	}

	public function getZonesByCountryId($country_id) {
		$zone_data = $this->cache->get('zone.' . (int)$country_id);

		if (!$zone_data) {
			$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "zone WHERE country_id = '" . (int)$country_id . "' AND status = '1' ORDER BY name");

			$zone_data = $query->rows;

			$this->cache->set('zone.' . (int)$country_id, $zone_data);
		}

		return $zone_data;
	}

    public function getMajorZones() {
        return $this->db->query("SELECT z.*, zd.name as name FROM `" . DB_PREFIX . "zone` `z` JOIN `" . DB_PREFIX . "zone_description` `zd` ON `zd`.`zone_id` = `z`.`zone_id` AND `zd`.`language_id` = " . (int)$this->config->get('config_language_id') . " AND `z`.`major` = 1 AND z.status = '1' ")->rows;
    }

    public function getZones($search, $limit = 10) {
        $query = $this->db->query("SELECT z.*, zd.name as name FROM " . DB_PREFIX . "zone as z JOIN `" . DB_PREFIX . "zone_description` `zd` ON `zd`.`zone_id` = `z`.`zone_id` WHERE zd.name LIKE '" . $this->db->escape(utf8_strtolower($search)) . "%' AND `zd`.`language_id` = " . (int)$this->config->get('config_language_id') . " AND z.status = '1' LIMIT " . $limit . "");

        return $query->rows;
    }

    public function getCurrentZone() {
        if (empty($this->session->data['selected_zone'])) {
            $zone_id = $this->config->get('config_zone_id');
            $zone = $this->addZone($zone_id);
            $this->session->data['selected_zone'] = $zone;
        } else {
            $zone = $this->session->data['selected_zone'];
        }
        return $zone;
    }

    public function getCurrentZoneName() {
        $currentZone = $this->getCurrentZone();

        return $currentZone['name'];
    }

}