// genre_select_controller.dart
import '../models/genre_select_model.dart';

class GenreSelectController {
  final GenreSelectModel model;

  GenreSelectController(this.model);

  void onPressed(String genre) {
    switch (genre) {
      case 'Romance':
        model.isRomanceSelected = !model.isRomanceSelected;
        break;
      case 'Fantasy':
        model.isFantasySelected = !model.isFantasySelected;
        break;
      case 'Horror':
        model.isHorrorSelected = !model.isHorrorSelected;
        break;
      case 'Mystery':
        model.isMysterySelected = !model.isMysterySelected;
        break;
      case 'Comedy':
        model.isComedySelected = !model.isComedySelected;
        break;
      case 'Action':
        model.isActionSelected = !model.isActionSelected;
        break;
      case 'Adventure':
        model.isAdventureSelected = !model.isAdventureSelected;
        break;
      case 'Psychological':
        model.isPsychologicalSelected = !model.isPsychologicalSelected;
        break;
      case 'Drama':
        model.isDramaSelected = !model.isDramaSelected;
        break;
      case 'Science':
        model.isScienceSelected = !model.isScienceSelected;
        break;
      case 'Biography':
        model.isBiographySelected = !model.isBiographySelected;
        break;
      case 'Art':
        model.isArtSelected = !model.isArtSelected;
        break;

    }
  }
}
