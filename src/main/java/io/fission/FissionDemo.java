package io.fission;

import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;

public class FissionDemo implements Function {

	@Override
	public ResponseEntity<?> call(RequestEntity req, Context context) {
		return ResponseEntity.ok("Request received!");
	}

}
