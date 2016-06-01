.class public Lcom/oppo/tribune/provider/forum/dao/CookieDao;
.super Lcom/oppo/tribune/provider/forum/dao/TableDao;
.source "CookieDao.java"

# interfaces
.implements Lcom/oppo/tribune/provider/forum/Forum2$CookieTable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oppo/tribune/provider/forum/dao/TableDao",
        "<",
        "Lorg/apache/http/cookie/Cookie;",
        ">;",
        "Lcom/oppo/tribune/provider/forum/Forum2$CookieTable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const-class v0, Lcom/oppo/tribune/provider/forum/Forum2$CookieTable;

    invoke-direct {p0, p1, v0}, Lcom/oppo/tribune/provider/forum/dao/TableDao;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 34
    return-void
.end method


# virtual methods
.method public contentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/oppo/tribune/provider/forum/dao/CookieDao;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected bridge synthetic newInsertValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lorg/apache/http/cookie/Cookie;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/CookieDao;->newInsertValues(Lorg/apache/http/cookie/Cookie;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected newInsertValues(Lorg/apache/http/cookie/Cookie;)Landroid/content/ContentValues;
    .locals 6
    .param p1, "item"    # Lorg/apache/http/cookie/Cookie;

    .prologue
    .line 70
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 72
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v2, "value"

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v0

    .line 76
    .local v0, "expires":Ljava/util/Date;
    if-eqz v0, :cond_0

    .line 77
    const-string v2, "expires"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 80
    :cond_0
    const-string v2, "path"

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v2, "domain"

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-object v1
.end method

.method protected bridge synthetic newRecord(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/CookieDao;->newRecord(Landroid/database/Cursor;)Lorg/apache/http/cookie/Cookie;

    move-result-object v0

    return-object v0
.end method

.method protected newRecord(Landroid/database/Cursor;)Lorg/apache/http/cookie/Cookie;
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 54
    const-string v5, "name"

    invoke-static {p1, v5}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "name":Ljava/lang/String;
    const-string v5, "value"

    invoke-static {p1, v5}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "value":Ljava/lang/String;
    new-instance v0, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-direct {v0, v1, v4}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .local v0, "item":Lorg/apache/http/impl/cookie/BasicClientCookie;
    const-string v5, "expires"

    invoke-static {p1, v5}, Lcom/oppo/tribune/util/Cursors;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    .line 59
    .local v2, "millis":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_0

    .line 60
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v5}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setExpiryDate(Ljava/util/Date;)V

    .line 62
    :cond_0
    const-string v5, "path"

    invoke-static {p1, v5}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 63
    const-string v5, "domain"

    invoke-static {p1, v5}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 65
    return-object v0
.end method

.method protected bridge synthetic onUpdateRecord(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lorg/apache/http/cookie/Cookie;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/http/cookie/Cookie;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/provider/forum/dao/CookieDao;->onUpdateRecord(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/Cookie;)V

    return-void
.end method

.method protected onUpdateRecord(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/Cookie;)V
    .locals 0
    .param p1, "newRecord"    # Lorg/apache/http/cookie/Cookie;
    .param p2, "oldRecord"    # Lorg/apache/http/cookie/Cookie;

    .prologue
    .line 89
    return-void
.end method

.method protected projection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/oppo/tribune/provider/forum/dao/CookieDao;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic queryRecordCondition(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lorg/apache/http/cookie/Cookie;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/CookieDao;->queryRecordCondition(Lorg/apache/http/cookie/Cookie;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected queryRecordCondition(Lorg/apache/http/cookie/Cookie;)Ljava/lang/String;
    .locals 2
    .param p1, "newRecord"    # Lorg/apache/http/cookie/Cookie;

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected sortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "name ASC, value ASC"

    return-object v0
.end method

.method public update(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    sget-object v0, Lcom/oppo/tribune/provider/forum/dao/CookieDao;->UNREADABLE_CONDITION:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/oppo/tribune/provider/forum/dao/CookieDao;->update(Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
