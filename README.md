# Test iOS App — ProductLab

Тестовое задание для ProductLab: разработка двух экранов на SwiftUI с архитектурой MVVM и использованием Alamofire для сетевого слоя. Приложение получает и отображает список коротких видео (рилсов) из публичного API «Интересно и точка». 
Основная цель — продемонстрировать структуру проекта, работу с API, асинхронную загрузку данных и интерфейс на SwiftUI.

Стек: SwiftUI, MVVM, Alamofire

## Swagger:
### GET

Get List Video Recommendations

/videos/recommendations
```
https://interesnoitochka.ru/api/v1/docs#/Videos/get_list_video_recommendations_videos_recommendations_get
```

### GET

Get Hls Playlist

/videos/video/{video_id}/hls/playlist.m3u8

```
https://interesnoitochka.ru/api/v1/docs#/Videos/get_hls_playlist_videos_video__video_id__hls_playlist_m3u8_get
```


API endpoint:
```
https://interesnoitochka.ru/api/v1/videos/recommendations?offset=0&limit=10&category=shorts&date_filter_type=created&sort_by=date_created&sort_order=desc
```

<img width="530" height="524" alt="image" src="https://github.com/user-attachments/assets/aebfb5de-a7d6-4cc8-9c77-4379802dd217" />

### <a href="https://www.figma.com/design/oX1x6RDDM3Fd6DYxQq76Rf/test-ios-from-productlab.pro--Copy-?node-id=0-1&t=d7s9NurTcc0DL9xl-1" target="_blank">Figma (same tab)</a>