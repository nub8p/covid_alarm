import 'package:flutter/material.dart';

List<Map> infoList = [
  {'title': '식당/카페', 'iconURL': Icons.restaurant, 'time': 9.0, 'color': 0xff5C7AEA,
    'info': '방역패스 의무적용 시설\n'
        '운영시간 → 06시 ~ 21시\n'
        '이용 가능 → 접종 완료자 등\n'
        '취식 가능 여부 → 가능\n'
        '21시 ~ 다음날 05시까지 포장/배달만 허용'},

  {'title': '마트/백화점', 'iconURL': Icons.shopping_cart, 'time': 12.0, 'color': 0xff5C7AEA,
    'info': '방역패스 의무적용 시설\n'
        '운영시간 → 제한 없음\n'
        '이용 가능 → 접종 완료자 등\n'
        '취식 가능 여부 → 가능\n'
        '방역패스 1.10부터 적용'},

  {'title': '영화관', 'iconURL': Icons.movie, 'time': 9.0, 'color': 0xff5C7AEA,
    'info': '방역패스 의무적용 시설\n'
        '운영시간 → 시작 21시까지 허용, 종료 24시 초과 금지\n'
        '이용 가능 → 접종 완료자 등\n'
        '별도 부대시설 마련된 경우 취식 제한적 허용'},

  {'title': 'PC방', 'iconURL': Icons.devices, 'time': 10.0, 'color': 0xff5C7AEA,
    'info': '방역패스 의무적용 시설\n'
        '운영시간 → 06시 ~ 22시\n'
        '이용 가능 → 접종 완료자 등\n'
        '취식 가능 여부 → 불가능\n'
        '22시 ~ 다음날 05시까지 포장/배달만 허용'},

  {'title': '도서관', 'iconURL': Icons.local_library, 'time': 12.0, 'color': 0xff5C7AEA,
    'info': '방역패스 의무적용 시설\n'
        '운영시간 → 제한 없음\n'
        '이용 가능 → 접종 완료자 등\n'
        '취식 가능 여부 → 불가능\n'
        '별도 섭취 공간이 마련된 경우 제한적 허용'},

  {'title': '유흥시설', 'iconURL': Icons.sports_bar, 'time': 9.0, 'color': 0xff5C7AEA,
    'info': '방역패스 의무적용 시설\n'
        '운영시간 → 06시 ~ 21시\n'
        '이용 가능 → 접종 완료자, 완치자'},

  {'title': '실내체육시설', 'iconURL': Icons.sports_volleyball, 'time': 12.0, 'color': 0xff5C7AEA,
    'info': '방역패스 의무적용 시설\n'
        '운영시간 → 제한 없음\n'
        '이용 가능 → 접종 완료자 등\n'
        '취식 가능 여부 → 불가능'},

  {'title': '숙박시설', 'iconURL': Icons.hotel, 'time': 12.0, 'color': 0xff5C7AEA,
    'info': '방역패스 미적용 시설'},

  {'title': '노래연습장', 'iconURL': Icons.mic, 'time': 9.0, 'color': 0xff5C7AEA,
    'info': '방역패스 의무적용 시설\n'
        '운영시간 → 06시 ~21시\n'
        '이용 가능 → 접종 완료자 등\n'
        '취식 가능 여부 → 불가능'},

  {'title': '스포츠경기장', 'iconURL': Icons.sports_tennis, 'time': 9.0, 'color': 0xff5C7AEA,
    'info': '방역패스 의무적용 시설\n'
        '운영시간 → 06시 ~21시\n'
        '이용 가능 → 접종 완료자 등\n'
        '취식 가능 여부 → 불가능'},

  {'title': '파티룸', 'iconURL': Icons.cake, 'time': 10.0, 'color': 0xff5C7AEA,
    'info': '방역패스 의무적용 시설\n'
        '운영시간 → 06시 ~22시\n'
        '이용 가능 → 접종 완료자 등\n'
        '취식 가능 여부 → 불가능'},

  {'title': '전시회', 'iconURL': Icons.auto_awesome_mosaic, 'time': 12.0, 'color': 0xff5C7AEA,
    'info': '방역패스 미적용 시설\n'
        '운영시간 → 제한 없음\n'
        '이용 가능 및 밀집도 →\n'
        '접종 구분 없이 50명 미만, 4㎡당 1명\n'
        '접종 완료자 등으로 구성 시 인원 제한 없음\n'
        '취식 가능 여부 → 불가능'},

  {'title': '독서실', 'iconURL': Icons.edit, 'time': 12.0, 'color': 0xff5C7AEA,
    'info': '방역패스 미적용 시설\n'
        '운영시간 → 제한 없음\n'
        '이용 가능 → 제한 없음\n'
        '취식 가능 여부 → 불가능\n'
        '별도 취식 섭취 공간이 마련된 경우 제한적 허용'},

  {'title': '학원', 'iconURL': Icons.menu_book, 'time': 12.0, 'color': 0xff5C7AEA,
    'info': '방역패스 미적용 시설\n'
        '운영시간 → 제한 없음\n'
        '이용 가능 → 제한 없음\n'
        '취식 가능 여부 → 불가능\n'
        '평생직업교육학원은 운영시간 제한(22시 ~ 다음날 05시)'},

  {'title': '박물관', 'iconURL': Icons.account_balance, 'time': 12.0, 'color': 0xff5C7AEA,
    'info': '방역패스 의무적용 시설\n'
        '운영시간 → 제한 없음\n'
        '이용 가능 → 접종 완료자 등\n'
        '취식 가능 여부 → 불가능'},

  {'title': '놀이공원', 'iconURL': Icons.shopping_cart, 'time': 12.0, 'color': 0xff5C7AEA,
    'info': '방역패스 미적용 시설\n'
        '운영시간 → 제한 없음\n'
        '이용 가능 → 제한 없음\n'
        '밀집도 → 수용인원의  50%\n'
        '취식 가능 여부 → 불가능'},

  {'title': '워터파크', 'iconURL': Icons.attractions, 'time': 12.0, 'color': 0xff5C7AEA,
    'info': '방역패스 미적용 시설\n'
        '운영시간 → 제한 없음\n'
        '이용 가능 → 제한 없음\n'
        '밀집도 → 수용인원의  50%\n'
        '취식 가능 여부 → 불가능'},

  {'title': '실외체육시설', 'iconURL': Icons.sports_basketball, 'time': 12.0, 'color': 0xff5C7AEA,
    'info': '방역패스 미적용 시설\n'
        '운영시간 → 제한 없음\n'
        '이용 가능 → 제한 없음\n'
        '밀집도 → 제한 없음\n'
        '취식 가능 여부 → 불가능'},

  {'title': '카지노', 'iconURL': Icons.casino, 'time': 10.0, 'color': 0xff5C7AEA,
    'info': '방역패스 의무적용 시설\n'
        '운영시간 → 06시 ~ 22시\n'
        '이용 가능 → 제한 없음\n'
        '취식 가능 여부 → 불가능'},

  {'title': '경마장', 'iconURL': Icons.sports_score, 'time': 10.0, 'color': 0xff5C7AEA,
    'info': '방역패스 의무적용 시설\n'
        '운영시간 → 06시 ~ 22시\n'
        '이용 가능 → 제한 없음\n'
        '취식 가능 여부 → 불가능'},

  {'title': '목욕장업', 'iconURL': Icons.bathtub, 'time': 9.0, 'color': 0xff5C7AEA,
    'info': '방역패스 의무적용 시설\n'
        '운영시간 → 06시 ~ 21시\n'
        '이용 가능 → 접종 완료자 등\n'
        '취식 가능 여부 → 불가능'},

  {'title': '키즈카페', 'iconURL': Icons.child_friendly, 'time': 12.0, 'color': 0xff5C7AEA,
    'info': '방역패스 미적용 시설'},

  {'title': '마사지업소', 'iconURL': Icons.pan_tool, 'time': 10.0, 'color': 0xff5C7AEA,
    'info': '방역패스 의무적용 시설\n'
        '운영시간 → 06시 ~ 22시\n'
        '이용 가능 → 접종 완료자 등\n'
        '취식 가능 여부 → 불가능'},

  {'title': '4인 이상', 'iconURL': Icons.groups, 'time': 12.0, 'color': 0xff14279b,
    'info': '4인까지 가능\n'
        '방역패스 시설 → 접종 완료자 등만 출입가능\n'
        '식당▪카페 → 미접종자 1인 단독 이용만 허용\n'
        '\n(예) 예방접종 3명 + 미접종 1명 ← 미허용'},

  {'title': '행사/집회', 'iconURL': Icons.record_voice_over, 'time': 12.0, 'color': 0xff14279b,
    'info': '접종 여부와 상관없이 49명까지\n'
        '(방역패스 적용 시) 299명까지'},
];