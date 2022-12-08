 return ListView(

      padding: const EdgeInsets.all(8),
      children: <Widget>[

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('images/gambar.jpg'),
                      ],
                    ),


                 

                      const Text(
                  "Banyuwangi, Jawa Timur, Indonesia",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.purple,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        padding: const EdgeInsets.all(5),
                        width: 100,
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.route,
                              color: Colors.white,
                            ),
                            Text(
                              "Rute",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        padding: const EdgeInsets.all(5),
                        width: 100,
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.telegram,
                              color: Colors.purple,
                            ),
                            Text(
                              "Mulai",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        padding: const EdgeInsets.all(5),
                        width: 100,
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.call,
                              color: Colors.purple,
                            ),
                            Text(
                              "Telepon",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        padding: const EdgeInsets.all(5),
                        width: 100,
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.bookmark,
                              color: Colors.purple,
                            ),
                            Text(
                              "Simpan",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        padding: const EdgeInsets.all(5),
                        width: 100,
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.share,
                              color: Colors.purple,
                            ),
                            Text(
                              "Bagikan",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),


              


                      const Text(
                  " Pantai banyuwangi adalah pantai yang sangat indah namun juga sangat angker, Pantai banyuwangi adalah pantai yang sangat indah namun juga sangat angker,Pantai banyuwangi adalah pantai yang sangat indah namun juga sangat angker,Pantai banyuwangi adalah pantai yang sangat indah namun juga sangat angker,Pantai banyuwangi adalah pantai yang sangat indah namun juga sangat angker,Pantai banyuwangi adalah pantai yang sangat indah namun juga sangat angker,Pantai banyuwangi adalah pantai yang sangat indah namun juga sangat angker,Pantai banyuwangi adalah pantai yang sangat indah namun juga sangat angker,Pantai banyuwangi adalah pantai yang sangat indah namun juga sangat angker,Pantai banyuwangi adalah pantai yang sangat indah namun juga sangat angker,Pantai banyuwangi adalah pantai yang sangat indah namun juga sangat angker,Pantai banyuwangi adalah pantai yang sangat indah namun juga sangat angker,Pantai banyuwangi adalah pantai yang sangat indah namun juga sangat angker,",
                  textAlign: TextAlign.justify,
                ),


      ],
    );
