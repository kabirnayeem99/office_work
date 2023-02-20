// import 'package:ihadis/domain/entities/hadith_book_entity.dart';
// import 'package:ihadis/presentation/common/base_ui_state.dart';

// class GoToUiState extends BaseUiState {
//   final List<HadithBookEntity> hadithBooks;
//   final Set<HadithBookEntity> selectedBooks;

//   const GoToUiState({
//     required super.isLoading,
//     required super.errorMessage,
//     required this.hadithBooks,
//     required this.selectedBooks,
//   });

//   factory GoToUiState.empty() => const GoToUiState(
//         isLoading: false,
//         errorMessage: null,
//         hadithBooks: [],
//         selectedBooks: <HadithBookEntity>{},
//       );

//   @override
//   List<Object?> get props =>
//       [hadithBooks, isLoading, errorMessage, selectedBooks];

//   GoToUiState copyWith(
//       {List<HadithBookEntity>? hadithBooks,
//       Set<HadithBookEntity>? selectedBooks,
//       bool? isLoading,
//       String? errorMessage}) {
//     return GoToUiState(
//       hadithBooks: hadithBooks ?? this.hadithBooks,
//       selectedBooks: selectedBooks ?? this.selectedBooks,
//       isLoading: isLoading ?? this.isLoading,
//       errorMessage: errorMessage ?? this.errorMessage,
//     );
//   }
// }
