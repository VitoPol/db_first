import csv

authors = []
addresses = []
ads = []

with open("./datasets/ads.csv", newline='', encoding="utf-8") as f:
    reader = csv.DictReader(f)
    for row in reader:
        authors.append(row["author"])
        addresses.append(row["address"])
        ads.append({"Id": row["Id"], "name": row["name"], "author": row["author"], "price": row["price"],
                    "description": row["description"], "address": row["address"], "is_published": row["is_published"]})

authors = list(set(authors))
addresses = list(set(addresses))

with open("./new_datasets/ads.csv", "w", newline='', encoding="utf-8") as f:
    fieldnames = ads[0].keys()
    writer = csv.DictWriter(f, fieldnames=fieldnames)

    writer.writeheader()
    for row in ads:
        writer.writerow(
            {"Id": row["Id"], "name": row["name"], "author": authors.index(row["author"]) + 1, "price": row["price"],
             "description": row["description"], "address": addresses.index(row["address"]) + 1,
             "is_published": row["is_published"]})

with open("./new_datasets/addresses.csv", "w", newline='', encoding="utf-8") as f:
    fieldnames = ("Id", "address")
    writer = csv.DictWriter(f, fieldnames=fieldnames)

    writer.writeheader()
    for i in range(len(addresses)):
        writer.writerow({"Id": i+1, "address": addresses[i]})

with open("./new_datasets/authors.csv", "w", newline='', encoding="utf-8") as f:
    fieldnames = ("Id", "author")
    writer = csv.DictWriter(f, fieldnames=fieldnames)

    writer.writeheader()
    for i in range(len(addresses)):
        writer.writerow({"Id": i+1, "author": addresses[i]})
