import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';

import './account/created_lists_model.dart';
import './account_states_model.dart';
import './alternative_titles_model.dart';
import './small/episode_model.dart';
import './small/networks_model.dart';
import './small/rated_model.dart';
import './small/seasons_model.dart';
import './tv/tv_details_model.dart';
import './small/created_by_model.dart';
import './small/production_countries_model.dart';
import './tv/base_tv_model.dart';
import './movie/base_movie_model.dart';
import './movie/movie_details_model.dart';
import './small/genres_model.dart';
import './small/production_companies_model.dart';
import './small/spoken_languages_model.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  BaseTvResults,
  BaseTvModel,
  BaseMovieResults,
  BaseMovieModel,
  GenresModel,
  ProductionCompaniesModel,
  ProductionCountriesModel,
  CreatedByModel,
  SpokenLanguagesModel,
  MovieDetailsModel,
  EpisodeModel,
  SeasonsModel,
  TvDetailsModel,
  AccountStatesModel,
  AlternativeTitlesModel,
  AlternativeTitlesResults,
  RatedModel,
  NetworksModel,
  CreatedListsModel,
  CreatedListsResults,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
