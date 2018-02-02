.class public Lcom/oneplus/database/CursorUtils;
.super Ljava/lang/Object;
.source "CursorUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDouble(Landroid/database/Cursor;Ljava/lang/String;D)D
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 24
    if-eqz p0, :cond_0

    .line 28
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 29
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 30
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getDouble(I)D
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 33
    .end local v1    # "index":I
    :catch_0
    move-exception v0

    .line 35
    :cond_0
    return-wide p2
.end method

.method public static getInt(Landroid/database/Cursor;Ljava/lang/String;I)I
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 48
    if-eqz p0, :cond_0

    .line 52
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 53
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 54
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 57
    .end local v1    # "index":I
    :catch_0
    move-exception v0

    .line 59
    :cond_0
    return p2
.end method

.method public static getLong(Landroid/database/Cursor;Ljava/lang/String;J)J
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 72
    if-eqz p0, :cond_0

    .line 76
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 77
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 78
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 81
    .end local v1    # "index":I
    :catch_0
    move-exception v0

    .line 83
    :cond_0
    return-wide p2
.end method

.method public static getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 95
    if-eqz p0, :cond_0

    .line 99
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 100
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 101
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 104
    .end local v1    # "index":I
    :catch_0
    move-exception v0

    .line 106
    :cond_0
    return-object v2
.end method
