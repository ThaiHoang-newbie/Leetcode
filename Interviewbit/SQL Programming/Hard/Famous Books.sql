select b.Id from Books b join BoughtBooks bb on b.id = bb.BooksId
group by bb.BooksId
having count(bb.BooksId) >= 3