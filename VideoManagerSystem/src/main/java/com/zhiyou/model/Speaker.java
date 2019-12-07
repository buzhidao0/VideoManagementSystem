package com.zhiyou.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Speaker {
	private Integer id;
	private String speaker_name;
	private String speaker_desc;
	private String speaker_job;
	private String pic_url;

}
