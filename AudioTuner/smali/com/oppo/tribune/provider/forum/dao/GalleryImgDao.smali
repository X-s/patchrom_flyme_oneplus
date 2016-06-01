.class public Lcom/oppo/tribune/provider/forum/dao/GalleryImgDao;
.super Lcom/oppo/tribune/provider/forum/dao/TableDao;
.source "GalleryImgDao.java"

# interfaces
.implements Lcom/oppo/tribune/provider/forum/Forum2$GalleryImgTable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oppo/tribune/provider/forum/dao/TableDao",
        "<",
        "Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;",
        ">;",
        "Lcom/oppo/tribune/provider/forum/Forum2$GalleryImgTable;"
    }
.end annotation


# instance fields
.field private final mGalleryId:I

.field private final mWhereClause:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "galleryId"    # I

    .prologue
    .line 31
    const-class v0, Lcom/oppo/tribune/provider/forum/dao/GalleryImgDao;

    invoke-direct {p0, p1, v0}, Lcom/oppo/tribune/provider/forum/dao/TableDao;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 33
    iput p2, p0, Lcom/oppo/tribune/provider/forum/dao/GalleryImgDao;->mGalleryId:I

    .line 34
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v1, "galleryid"

    iget v2, p0, Lcom/oppo/tribune/provider/forum/dao/GalleryImgDao;->mGalleryId:I

    invoke-direct {v0, v1, v2}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/provider/forum/dao/GalleryImgDao;->mWhereClause:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public contentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/oppo/tribune/provider/forum/dao/GalleryImgDao;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public deleAll()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oppo/tribune/provider/forum/dao/GalleryImgDao;->mWhereClause:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/provider/forum/dao/GalleryImgDao;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method public insert(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;>;"
    iget-object v0, p0, Lcom/oppo/tribune/provider/forum/dao/GalleryImgDao;->mWhereClause:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/oppo/tribune/provider/forum/dao/GalleryImgDao;->insert(Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected newInsertValues(Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "item"    # Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;

    .prologue
    .line 81
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 83
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "galleryid"

    iget v2, p0, Lcom/oppo/tribune/provider/forum/dao/GalleryImgDao;->mGalleryId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    const-string v1, "imgid"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 85
    const-string v1, "relateid"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;->getRid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 86
    const-string v1, "title"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "url"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "picurl"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;->getPic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v1, "type"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 91
    return-object v0
.end method

.method protected bridge synthetic newInsertValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 24
    check-cast p1, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/GalleryImgDao;->newInsertValues(Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected newRecord(Landroid/database/Cursor;)Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 66
    new-instance v0, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;-><init>()V

    .line 68
    .local v0, "item":Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;
    const-string v1, "galleryid"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;->setGalleryId(I)V

    .line 69
    const-string v1, "imgid"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;->setId(I)V

    .line 70
    const-string v1, "relateid"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;->setRid(J)V

    .line 71
    const-string v1, "title"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;->setTitle(Ljava/lang/String;)V

    .line 72
    const-string v1, "url"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;->setUrl(Ljava/lang/String;)V

    .line 73
    const-string v1, "picurl"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;->setPic(Ljava/lang/String;)V

    .line 74
    const-string v1, "type"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;->setType(I)V

    .line 76
    return-object v0
.end method

.method protected bridge synthetic newRecord(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/GalleryImgDao;->newRecord(Landroid/database/Cursor;)Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onUpdateRecord(Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;)V
    .locals 0
    .param p1, "newRecord"    # Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;
    .param p2, "oldRecord"    # Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;

    .prologue
    .line 98
    return-void
.end method

.method protected bridge synthetic onUpdateRecord(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 24
    check-cast p1, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/provider/forum/dao/GalleryImgDao;->onUpdateRecord(Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;)V

    return-void
.end method

.method protected projection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/oppo/tribune/provider/forum/dao/GalleryImgDao;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public query()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oppo/tribune/provider/forum/dao/GalleryImgDao;->mWhereClause:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/provider/forum/dao/GalleryImgDao;->query(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected queryRecordCondition(Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "newRecord"    # Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;

    .prologue
    .line 102
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v1, "galleryid"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;->getGalleryId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;I)V

    .line 103
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    const-string v1, "imgid"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;I)Lcom/oppo/tribune/provider/Condition;

    .line 104
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic queryRecordCondition(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 24
    check-cast p1, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/GalleryImgDao;->queryRecordCondition(Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected sortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "_id ASC, galleryid ASC"

    return-object v0
.end method
