import 'package:flutter/material.dart';

class SongDatasSet {
  String artist;
  String song;
  String youtube;
  String spotify;
  String applemusic;
  SongDatasSet({
    @required String artist,
    @required String song,
    @required String youtube,
    @required String spotify,
    @required String applemusic,
  }) {
    this.artist = artist;
    this.song = song;
    this.youtube = youtube;
    this.spotify = spotify;
    this.applemusic = applemusic;
  }
}

class WebtoonDataSet {
  String epname;
  String title;
  String link;
  WebtoonDataSet({
    @required String epname,
    @required String title,
    @required String link,
  }) {
    this.epname = epname;
    this.title = title;
    this.link = link;
  }
}

List<SongDatasSet> happySongs = [
  SongDatasSet(
    artist: "옥상달빛",
    song: "칵테일 사랑",
    youtube: "https://www.youtube.com/watch?v=3z1KFSdP084",
    spotify:
        "https://open.spotify.com/track/0QAaVOBCuf5p8OjYxmRfgr?si=526cf2bd1a124236",
    applemusic:
        "https://music.apple.com/us/album/%EC%B9%B5%ED%85%8C%EC%9D%BC-%EC%82%AC%EB%9E%91-feat-%EC%8B%A0%EC%9E%AC/914790458?i=914790500",
  ),
  SongDatasSet(
    artist: "Ann-Marie",
    song: "2002",
    youtube: "https://www.youtube.com/watch?v=kxqn8FAVbpU",
    spotify:
        "https://open.spotify.com/track/2BgEsaKNfHUdlh97KmvFyo?si=ca47ded82bb045b3",
    applemusic: "https://music.apple.com/us/album/2002/1418704441?i=1418704730",
  ),
  SongDatasSet(
    artist: "볼빨간사춘기",
    song: "여행",
    youtube: "https://youtube.com/watch?v=DMcRIihAq9Q&list=RDAMVMDMcRIihAq9Q",
    spotify:
        "https://open.spotify.com/track/4dMGKGfaWMZNLQEjkd8lme?si=10fa0ac784134064",
    applemusic:
        "https://music.apple.com/us/album/travel/1550539050?i=1550539052",
  ),
  SongDatasSet(
    artist: "태연",
    song: "제주도의 푸른 밤",
    youtube: "https://youtube.com/watch?v=IePq5KpiI5A&list=RDAMVMIePq5KpiI5A",
    spotify:
        "https://open.spotify.com/track/1bkVIRImvamFobcgE8aVW0?si=1f673d5c8cb54555",
    applemusic:
        "https://music.apple.com/us/album/the-blue-night-of-jeju-island/1280311380?i=1280311518",
  ),
  SongDatasSet(
    artist: "코요태",
    song: "바다",
    youtube: "https://youtube.com/watch?v=CED2_DTUhok&list=RDAMVMCED2_DTUhok",
    spotify:
        "https://open.spotify.com/track/5QzVt5AIkZ4UNOAGVhXFJS?si=9e40ea3506c54812",
    applemusic:
        "https://music.apple.com/us/album/the-sea/1523978086?i=1523978087",
  ),
];

List<SongDatasSet> notBadSongs = [
  SongDatasSet(
    artist: "숀",
    song: "way back home",
    youtube: "https://www.youtube.com/watch?v=3z1KFSdP084",
    spotify:
        "https://open.spotify.com/track/0QAaVOBCuf5p8OjYxmRfgr?si=526cf2bd1a124236",
    applemusic: "applemusic",
  ),
  SongDatasSet(
    artist: "카더가든",
    song: "2002",
    youtube: "https://www.youtube.com/watch?v=kxqn8FAVbpU",
    spotify:
        "https://open.spotify.com/track/2BgEsaKNfHUdlh97KmvFyo?si=ca47ded82bb045b3",
    applemusic: "https://music.apple.com/us/album/2002/1418704441?i=1418704730",
  ),
  SongDatasSet(
    artist: "짙은",
    song: "잘지내자 우리",
    youtube: "https://youtube.com/watch?v=DMcRIihAq9Q&list=RDAMVMDMcRIihAq9Q",
    spotify:
        "https://open.spotify.com/track/4dMGKGfaWMZNLQEjkd8lme?si=10fa0ac784134064",
    applemusic:
        "https://music.apple.com/us/album/travel/1550539050?i=1550539052",
  ),
  SongDatasSet(
    artist: "앤씨아",
    song: "너의 하루는 어때?",
    youtube: "https://youtube.com/watch?v=IePq5KpiI5A&list=RDAMVMIePq5KpiI5A",
    spotify:
        "https://open.spotify.com/track/1bkVIRImvamFobcgE8aVW0?si=1f673d5c8cb54555",
    applemusic:
        "https://music.apple.com/us/album/the-blue-night-of-jeju-island/1280311380?i=1280311518",
  ),
  SongDatasSet(
    artist: "우연수",
    song: "바다",
    youtube: "https://youtube.com/watch?v=CED2_DTUhok&list=RDAMVMCED2_DTUhok",
    spotify:
        "https://open.spotify.com/track/5QzVt5AIkZ4UNOAGVhXFJS?si=9e40ea3506c54812",
    applemusic:
        "https://music.apple.com/us/album/the-sea/1523978086?i=1523978087",
  ),
];

List<SongDatasSet> stressSongs = [
  SongDatasSet(
    artist: "장미여관",
    song: "퇴근하겠습니다",
    youtube:
        "https://music.youtube.com/watch?v=ebueotpvQfQ&list=RDAMVMebueotpvQfQ",
    spotify:
        "https://open.spotify.com/track/0QAaVOBCuf5p8OjYxmRfgr?si=526cf2bd1a124236",
    applemusic:
        "https://music.apple.com/us/album/%EC%B9%B5%ED%85%8C%EC%9D%BC-%EC%82%AC%EB%9E%91-feat-%EC%8B%A0%EC%9E%AC/914790458?i=914790500",
  ),
  SongDatasSet(
    artist: "YB",
    song: "잊을께",
    youtube: "https://www.youtube.com/watch?v=kxqn8FAVbpU",
    spotify:
        "https://open.spotify.com/track/2BgEsaKNfHUdlh97KmvFyo?si=ca47ded82bb045b3",
    applemusic: "https://music.apple.com/us/album/2002/1418704441?i=1418704730",
  ),
  SongDatasSet(
    artist: "김윤아",
    song: "봄날은 간다",
    youtube: "https://youtube.com/watch?v=DMcRIihAq9Q&list=RDAMVMDMcRIihAq9Q",
    spotify:
        "https://open.spotify.com/track/4dMGKGfaWMZNLQEjkd8lme?si=10fa0ac784134064",
    applemusic:
        "https://music.apple.com/us/album/travel/1550539050?i=1550539052",
  ),
  SongDatasSet(
    artist: "김태우",
    song: "나는 바보다",
    youtube: "https://youtube.com/watch?v=IePq5KpiI5A&list=RDAMVMIePq5KpiI5A",
    spotify:
        "https://open.spotify.com/track/1bkVIRImvamFobcgE8aVW0?si=1f673d5c8cb54555",
    applemusic:
        "https://music.apple.com/us/album/the-blue-night-of-jeju-island/1280311380?i=1280311518",
  ),
  SongDatasSet(
    artist: "다비치",
    song: "8282",
    youtube: "https://youtube.com/watch?v=CED2_DTUhok&list=RDAMVMCED2_DTUhok",
    spotify:
        "https://open.spotify.com/track/5QzVt5AIkZ4UNOAGVhXFJS?si=9e40ea3506c54812",
    applemusic:
        "https://music.apple.com/us/album/the-sea/1523978086?i=1523978087",
  ),
];

List<SongDatasSet> stressfulSongs = [
  SongDatasSet(
    artist: "장기하와 얼굴들",
    song: "그건 니 생각이고",
    youtube:
        "https://music.youtube.com/watch?v=scP-SJXBsTs&list=RDAMVMscP-SJXBsTs",
    spotify:
        "https://open.spotify.com/track/71Pw11gVhEfwBc0n9L6Awj?si=b6d24062bc334f4f",
    applemusic:
        "https://music.apple.com/kr/album/%EA%B7%B8%EA%B1%B4-%EB%8B%88-%EC%83%9D%EA%B0%81%EC%9D%B4%EA%B3%A0/1440582921?i=1440582922",
  ),
  SongDatasSet(
    artist: "블락비 바스타즈",
    song: "품행제로",
    youtube:
        "https://music.youtube.com/watch?v=m9y-1ruGB4Q&list=RDAMVMm9y-1ruGB4Q",
    spotify:
        "https://open.spotify.com/track/2BgEsaKNfHUdlh97KmvFyo?si=ca47ded82bb045b3",
    applemusic:
        "https://music.apple.com/kr/album/%ED%92%88%ED%96%89%EC%A0%9C%EB%A1%9C/985462680?i=985462956",
  ),
  SongDatasSet(
    artist: "R.F. Children",
    song: "똑바로 살아라",
    youtube:
        "https://music.youtube.com/watch?v=ovGYdksK7qc&list=RDAMVMovGYdksK7qc",
    spotify:
        "https://open.spotify.com/track/4MjLiZKFlkA6iMNjJqK1Mb?si=0c718b464ad64b62",
    applemusic:
        "https://music.apple.com/kr/album/%ED%87%B4%EC%82%AC-art-minseok/1559692632?i=1559692633",
  ),
  SongDatasSet(
    artist: "Anonymoust Artists",
    song: "퇴사",
    youtube:
        "https://music.youtube.com/watch?v=8p1XBBQ_cK0&list=RDAMVM8p1XBBQ_cK0",
    spotify:
        "https://open.spotify.com/track/1bkVIRImvamFobcgE8aVW0?si=1f673d5c8cb54555",
    applemusic:
        "https://music.apple.com/us/album/the-blue-night-of-jeju-island/1280311380?i=1280311518",
  ),
  SongDatasSet(
    artist: "콜드플레이",
    song: "viva la vida",
    youtube: "https://www.youtube.com/watch?v=HosW0gulISQ",
    spotify:
        "https://open.spotify.com/track/1mea3bSkSGXuIRvnydlB5b?si=8219ecd4f9d34600Q",
    applemusic:
        "https://music.apple.com/us/album/the-sea/1523978086?i=1523978087",
  ),
];

List<WebtoonDataSet> happyToon = [
  WebtoonDataSet(
      epname: "회사에서 딴짓하기",
      title: "우직툰",
      link: "https://www.instagram.com/p/CDAkvEFnFQ4/"),
  WebtoonDataSet(
      epname: "신입사원의 불타는 의지",
      title: "신입일기",
      link:
          "https://comic.naver.com/webtoon/detail.nhn?titleId=773419&no=1&weekday=mon"),
  WebtoonDataSet(
      epname: "직장생활",
      title: "놓지마 정신줄",
      link: "https://comic.naver.com/webtoon/detail.nhn?titleId=81482&no=94"),
  WebtoonDataSet(
      epname: "회사로",
      title: "생활의 참견",
      link: "https://comic.naver.com/webtoon/detail.nhn?titleId=25613&no=265"),
];
List<WebtoonDataSet> notBadToon = [
  WebtoonDataSet(
      epname: "감기",
      title: "가족같은 회사",
      link:
          "https://comic.naver.com/bestChallenge/detail.nhn?titleId=676323&no=60"),
  WebtoonDataSet(
      epname: "같은회사 다른부서",
      title: "생산직툰",
      link:
          "https://comic.naver.com/bestChallenge/detail.nhn?titleId=144179&no=345"),
  WebtoonDataSet(
      epname: "외국계회사",
      title: "가우스전자",
      link: "https://comic.naver.com/webtoon/detail.nhn?titleId=335885&no=225"),
  WebtoonDataSet(
      epname: "화장실",
      title: "생산직툰",
      link:
          "https://comic.naver.com/bestChallenge/detail.nhn?titleId=144179&no=398"),
];
List<WebtoonDataSet> stressToon = [
  WebtoonDataSet(
      epname: "쓰레기 편",
      title: "우직툰",
      link: "https://www.instagram.com/p/CLWHi-cBJxR/"),
  WebtoonDataSet(
      epname: "회의에 대한 참사",
      title: "멘탈갑 회사원",
      link: "https://comic.naver.com/challenge/detail.nhn?titleId=701870&no=8"),
  WebtoonDataSet(
      epname: "알레르기",
      title: "삼우실",
      link: "https://www.nocutnews.co.kr/news/5547583"),
  WebtoonDataSet(
      epname: "지각",
      title: "보통회사 이야기",
      link:
          "https://comic.naver.com/bestChallenge/detail.nhn?titleId=609042&no=6"),
];
List<WebtoonDataSet> stressfullToon = [
  WebtoonDataSet(
      epname: "퇴사",
      title: "가족같은 회사",
      link:
          'https://comic.naver.com/bestChallenge/detail.nhn?titleId=676323&no=76'),
  WebtoonDataSet(
      epname: "버그메이커",
      title: "게임회사 곰세마리",
      link:
          'https://comic.naver.com/challenge/detail.nhn?titleId=677526&no=29'),
  WebtoonDataSet(
      epname: "휴가",
      title: "우직툰",
      link: "https://www.instagram.com/p/CD-YHX6nZO8/"),
  WebtoonDataSet(
      epname: "보고",
      title: "삼우실",
      link: 'https://www.nocutnews.co.kr/news/5567886'),
];
