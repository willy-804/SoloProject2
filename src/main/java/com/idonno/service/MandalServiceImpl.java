package com.idonno.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idonno.mapper.MandalMapper;
import com.idonno.model.MandalVO;

@Service
public class MandalServiceImpl implements MandalService{

	@Autowired
	MandalMapper mm;
			

	@Override
	public void mandalwrite(MandalVO mandalvo) {
		
		System.out.println("서비스에서는" + mandalvo.getMandal()); 
		System.out.println( mandalvo.getMandal()); // [Ljava.lang.String;@3c200a8f 
		System.out.println( mandalvo.getMandal()); // 이건 또 왜 72야  81 - 17 은 64 인데 잠만 9곱하기8은 72잖아 아 자바스크립트 살리면 더 줄어들겠네? 
		
		// ㅎgetㅡmandal이 어레이리스트 
		// 근데 밑에서 어레이리스트에서 하나씩 꺼내서 
		// vo에 새로 만든 madnalone에 하나ㅏ씩 저장해서 
	//그걸 vo에 또 저장햇느넫 
		//그걸 맵퍼로 보내서 
		// 맵퍼는 어레이리스트 하나씩.... 너흥ㄹ수잇께 맵퍼를 수정해서 뒤에ㅓxml에서도 mandnal_one햇으니각 
		//하나씩 반복문으로 
		
		// id랑 nick은... 와 
		// nullㄱ밧도 들더가게끔 해놧으니까 들어간거 
		 
		
        // for(int i = 0; i < mandal.getMandal().length; i++ ) {
       	// mm.mandalwrite(mandal.getMandal()[i]); // 이렇게 해서 id랑 nick에 다 mandal값이 들어가나봐        	
       	// mm.mandalwrite(mandal);} 이렇게 하면 화면이 안 떠
       	// i <= mandal.getMandal().length; 하면 예외 발생한다  
        
       
		
		// forEach() 메서드는 주어진 함수를 배열 요소 각각에 대해 실행한다 
        //         얘가 배열       각각에 대해  
        mandalvo.getMandal().forEach(mandal->{
        	System.out.println(mandal);
        	mandalvo.setMandal_one(mandal);
        	 mm.mandalwrite(mandalvo);
        });
        
        
	    	
	    // 참고 : 
		// 아까 id값 insert라고 줬잖아 그리고 BoardVO에 있는 AttachFileVO를 가지고 오라고 해야하니까  
		// board.getAttach().forEach(attach->{ 
	    
		// attach 안에 있는 데이터 중의 하나가 null값인가봐 
		// BoardVO에 있는 bno 값을 가지고 와서 AttachFileVO의 bno에 저장시켜라 
		// attach.setBno(board.getBno());
		// bam.insert(attach);
		// });
		
	}      

}	
		
