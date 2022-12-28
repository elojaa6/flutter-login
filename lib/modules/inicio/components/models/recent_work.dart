// ignore_for_file: file_names

class RecentWork {
  final String image, category, title;
  final int id;

  RecentWork(
      {required this.id,
      required this.image,
      required this.category,
      required this.title});
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title: "Miguel Samaniego",
    category: "GITAES",
    image: "../../../images/miembros/Miguel.jpg",
  ),
  RecentWork(
    id: 2,
    title: "Geminis Ruiz",
    category: "GITAES",
    image: "../../../images/miembros/Genesis.jpg",
  ),
  RecentWork(
    id: 3,
    title: "Gabriela Orellana",
    category: "GITAES",
    image: "../../../images/miembros/Gabriela.jpeg",
  ),
  RecentWork(
    id: 4,
    title: "Fernando Crespo",
    category: "GITAES",
    image: "../../../images/miembros/Ferna.png",
  ),
  RecentWork(
    id: 5,
    title: "Matias Cuenca",
    category: "GITAES",
    image: "../../../images/miembros/Matias.jpg",
  ),
  RecentWork(
    id: 6,
    title: "John Enriquez",
    category: "GITAES",
    image: "../../../images/miembros/John.jpg",
  ),
];
