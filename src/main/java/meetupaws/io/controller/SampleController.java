package meetupaws.io.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/meetupaws")
public class SampleController {

  @RequestMapping(method = RequestMethod.GET, produces = {"application/json"})
  public ResponseEntity<String> hello() {
    return new ResponseEntity<>("Hello!", HttpStatus.OK);
  }
}
