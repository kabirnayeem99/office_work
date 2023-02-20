
// import 'package:get/get.dart';
// import 'package:office_work/presentation/hadith_list_item/go_to_ui_state.dart';



// class GoToPresenter extends GetxController {
//   final GetAllHadithBooksUseCase _getAllHadithBooks;
//   final GetHadithIdByHadithNumber _getHadithIdByHadithNumber;

//   final Rx<GoToUiState> uiState = Rx(GoToUiState.empty());

//   GoToPresenter(
//     this._getAllHadithBooks,
//     this._getHadithIdByHadithNumber,
//   );

//   Future<void> _fetchHadithBooks() async {
//     final Either<String, List<HadithBookEntity>> result =
//         await _getAllHadithBooks.execute();
//     result.fold((error) => _addErrorMessage(error), (books) {
//       uiState.value = uiState.value.copyWith(hadithBooks: books);
//     });
//   }

//   Future<int?> getHadithIdByHadithNumber({required String hadithNumber}) async {
//     int? id;
//     final List<HadithBookEntity> selectedBooks =
//         uiState.value.selectedBooks.isNotEmpty
//             ? uiState.value.selectedBooks.toList()
//             : uiState.value.hadithBooks;
//     final Either<String, int> result = await _getHadithIdByHadithNumber.execute(
//         hadithNumber: hadithNumber, hadithBooks: selectedBooks);
//     result.fold((error) => _addErrorMessage(error), (idd) => id = idd);
//     return id;
//   }

//   Future<void> _addErrorMessage(String message) async {
//     uiState.value = uiState.value.copyWith(errorMessage: message);
//     await Future.delayed(112.milliseconds);
//     uiState.value = uiState.value.copyWith(errorMessage: null);
//   }

//   void selectAllBooks() async {
//     uiState.value = uiState.value
//         .copyWith(selectedBooks: uiState.value.hadithBooks.toSet());
//   }

//   void selectNoBooks() =>
//       uiState.value = uiState.value.copyWith(selectedBooks: {});

//   bool isBookSelected(HadithBookEntity book) =>
//       uiState.value.selectedBooks.contains(book);

//   void toggleHadithSelection({
//     bool? isSelected,
//     required HadithBookEntity book,
//   }) async {
//     final Set<HadithBookEntity> selectedBooks =
//         uiState.value.selectedBooks.toSet();
//     (isSelected ?? false)
//         ? selectedBooks.add(book)
//         : selectedBooks.remove(book);
//     uiState.value = uiState.value.copyWith(selectedBooks: selectedBooks);
//   }

//   @override
//   void onReady() async {
//     super.onReady();
//     await _fetchHadithBooks();
//   }
// }
