import 'package:library_book_app/src/core/dto/book_dto.dart';
import 'package:library_book_app/src/core/dto/category_book_dto.dart';

class RawDto {
  static List<BookDto> books() {
    return [
      BookDto(
        id: 1,
        name: 'The Alchemist',
        pages: 11,
        author: 'Paulo Coelho',
        image:
            'https://1.bp.blogspot.com/-BE_JTF0u5A4/XvLwPgWUCzI/AAAAAAAASbw/oREJktA3-AIUQ6J8E-1MwIhs8Tk2gvMLgCLcBGAsYHQ/s400/71aFt4%252BOTOL.jpg',
        pdf: 'https://archive.org/download/OceanofPDF.comTheAlchemist/_OceanofPDF.com_The_Alchemist.pdf',
        description:
            'The Alchemist is a classic novel in which a boy named Santiago embarks on a journey seeking treasure in the Egyptian pyramids after having a recurring dream about it and on the way meets mentors, falls in love, and most importantly, learns the true importance of who he is and how to improve himself and focus on what really matters in life.',
        categoryBookDto: RawDto.categories().elementAt(2),
      ),
      BookDto(
        id: 2,
        name: 'Those Across the River',
        pages: 357,
        author: 'Christopher Buehlman',
        image:
            'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1442798702i/10772903.jpg',
        pdf: 'https://archive.org/download/OceanofPDF.comTheAlchemist/_OceanofPDF.com_The_Alchemist.pdf',
        description:
            'Failed academic Frank Nichols and his wife, Eudora, have arrived in the sleepy Georgia town of Whitbrow,'
            ' where Frank hopes to write a history of his family\'s old estate-the Savoyard Plantation- and the horrors that occurred there. At first, the quaint, rural ways of their new neighbors seem to be everything they wanted. But there is an unspoken dread that the townsfolk have lived with for generations. A presence that demands sacrifice.',
        categoryBookDto: RawDto.categories().elementAt(1),
      ),
      BookDto(
        id: 3,
        name: 'The Exorcist',
        pages: 340,
        author: 'William Peter Blatty',
        image:
            'https://images.cdn3.buscalibre.com/fit-in/520x520/5a/bb/0e64e5d9d6c11bb15b28abf6492920ff.jpg',
        pdf: 'http://www.geocities.ws/thebookstore/the%20exorcist.pdf',
        description:
            'The reason The Exorcist was made into one of the scariest movies of all time is that it was one of the scariest novels of all time. It follows the demonic possession of an 11-year-old girl named Regan. Descriptions of the child’s erratic behavior, which includes spitting and screaming obscenities, build to a crescendo as her mother desperately hunts for an exorcist. If you’ve seen the classic movie adaptation, you have an idea of just how scary this situation gets … but the book is arguably even more terrifying.',
        categoryBookDto: RawDto.categories().elementAt(1),
      ),
    ];
  }

  static List<CategoryBookDto> categories() {
    return [
      CategoryBookDto(
        id: 1,
        name: "Horror",
      ),
      CategoryBookDto(
        id: 2,
        name: "Fantasy",
      ),
      CategoryBookDto(
        id: 3,
        name: "Drama",
      ),
      CategoryBookDto(
        id: 4,
        name: "Action",
      ),
      CategoryBookDto(
        id: 5,
        name: "Comedy",
      ),
    ];
  }
}
