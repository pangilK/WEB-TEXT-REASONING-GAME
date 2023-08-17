<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/proviso.css" />
<section>
	<div id="provisoBox">
		<div id="provisoIntro">단서들을 사용해보자</div>
		<div id="itemUseFailed">이게 맞을까 ? 다시해보자</div>
		<div id="p_itemBox">
			<div id="p_item1" ondragover="handleDragOver(event)" ondrop="handleDrop(event, 'p_item1')">
				<img src="" alt="" id="p_item1_img" />
			</div>
			<div id="p_item2" ondragover="handleDragOver(event)" ondrop="handleDrop(event, 'p_item2')">
				<img src="" alt="" id="p_item2_img" />
			</div>
			<div id="keyAndBox" onclick='p_click("keyAndBox");'>
				상자를 열었더니 무슨 서류가 나왔다.
			</div>
			<div id="lampAndPaper" onclick='flashlightStart();'>
				램프로 종이를 비춰보니 무슨 글자들이 보인다.
			</div>
		</div>
		<div id="p_btnBox">
			<div id="useBtn" onclick="itemUse();">USE</div>
		</div>
	</div>
	<div id="flashLightBox">
		<div class="close" onclick="closeFlashlight();"></div>
		<div id="flashlight"></div>
		<div id="closeText_flash" class="closeText">
            다 읽었으면 돌아갈까 ... ? <br/>
            <div id="yes" onclick="flashLightEnd();">예</div>
            /
            <div id="no" onclick="closeFlashlight();">아니오</div>
        </div>
		<p id="emilyText">
			<br/><br/>
			사랑하는 모든 이에게,
			<br/><br/>
			나는 이 편지를 남기고 떠날 것이라는 것을 미리 알려드립니다. 
			<br/><br/>
			내가 하는 말은 나를 이해해줄 수 있는 사람들에게만 들려주고 싶은 말입니다.
			<br/><br/>
			나는 보석 컬렉션 관리자로서 박물관에서의 시간을 보냈고, 보석이 사라진 사건에 연루되어 있다는 소문을 들었습니다. 
			<br/><br/>
			나는 자신의 위치와 보석 컬렉션을 지키는 역할을 강조해왔습니다. 
			<br/><br/>
			그런데 이번 사건은 나의 역할을 의미 없게 만들었습니다. 보석이 사라진 것은 나의 책임입니다.
			<br/><br/>
			최근 저를 해고 하겠다는 소문이 들렸습니다. 그로 인해 많은 스트레스를 받았습니다.
			<br/><br/>
			그리고 그 소문이 사실이란걸 알게 된 순간, 저는 이 사건에 대한 엄청난 불안을 느꼈습니다. 
			<br/><br/>
			이 모든 것은 욕심과 자만에 뿌리를 두고 있었고, 이제 그 후회와 책임을 지기 위해 이 편지를 남깁니다.
			<br/><br/>
			이 사건으로 인해 박물관의 소중한 유물을 훔치는 범죄자로까지 추락했습니다. 하지만 이 행동이 옳은 것은 아닙니다.
			<br/><br/>
			나는 이 편지를 통해 나의 행동에 대한 사과와 후회의 말을 전하고 싶습니다. 
			<br/><br/>
			이제는 모든 것이 이미 늦었지만, 적어도 솔직한 마음으로 사과하며 떠나고자 합니다.
			<br/><br/>
		</p>
		<p id="p_fname">에밀리 루이스</p>
	</div>
	<div id="p_letterBox">
			<div class="close" onclick="closeLetter();"></div>
			<div id="closeText_letter" class="closeText">
            	다 읽었으면 돌아갈까 ... ? <br/>
            	<div id="yes" onclick="letterEnd();">예</div>
            	/
            	<div id="no" onclick="closeLetter();">아니오</div>
        	</div>
        <p id="carenText">
        	<br/><br/>
        	카렌에게, 당신이 지난 날 빛나는 별을 훔친 것을 압니다.
        	<br/><br/>
			카렌, 너의 가족에 안전을 생각한다면, 빛나는 별을 어디에 숨겨놓았는지 밝혀야할겁니다.
        	<br/><br/>
         	이 보석은 그 자체로 큰 가치가 있지만, 그 이상의 비밀이 있습니다.
        	<br/><br/>
			그러나 만약 당신이 협력하지 않는다면, 가족들은 큰 위험에 빠질 것같군요.
        	<br/><br/>
			내가 당신에게 요구하는 것은 단순하지만, 당신의 미래와 가족의 안전을 위해서는 중요한 일입니다. 
        	<br/><br/>
        	너의 결정이 가족에게 어떤 영향을 끼칠지 상상해보십시오.
			<br/><br/>
			보석을 내게로 가져오지 않는다면, 네 가족은 위험에 처하게 될 것입니다.		
			<br/><br/>
			진지하게 너와 가족을 지키는 것이 내 목표라는 것을 잊지 마십시오.
			<br/><br/>
			계속해서 나를 의심하고 무시한다면, 이 일이 실제로 어떤 근원에서 비롯된 것인지 알아낼 것입니다.
			<br/><br/>
			너의 결정은 네 가족의 운명을 결정할 것입니다. 			
			<br/><br/>
			내게 보석을 가져오면 가족은 안전하게 보호될 것이며, 그렇지 않다면 그 결과를 직접 느끼게 될 것입니다.
			<br/><br/>
			조심스럽게 생각하십시오.
        </p>
		<p id="p_lname">익명</p>
	</div>
</section>