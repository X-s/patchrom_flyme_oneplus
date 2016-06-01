.class public Lcom/oppo/tribune/util/Cursors;
.super Ljava/lang/Object;
.source "Cursors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/util/Cursors$CursorIterator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static close(Landroid/database/Cursor;)V
    .locals 0
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 32
    if-eqz p0, :cond_0

    .line 33
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 35
    :cond_0
    return-void
.end method

.method public static getFloat(Landroid/database/Cursor;Ljava/lang/String;)F
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public static getInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public static getLong(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isNullOrEmpty(Landroid/database/Cursor;)Z
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x1

    .line 28
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newCursorIterable(Landroid/database/Cursor;)Ljava/lang/Iterable;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lcom/oppo/tribune/util/Cursors$1;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/util/Cursors$1;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method public static size(Landroid/database/Cursor;)I
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 38
    invoke-static {p0}, Lcom/oppo/tribune/util/Cursors;->isNullOrEmpty(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 41
    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method
