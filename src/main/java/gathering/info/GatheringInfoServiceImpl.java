package gathering.info;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class GatheringInfoServiceImpl implements GatheringInfoService {
	@Autowired
	@Qualifier("GatheringInfoDAO")
	GatheringInfoDAO dao;
	@Override
	public GatheringInfoVO read(String gath_no) {
		System.out.println(2);
		return dao.read(gath_no);
	}

}
