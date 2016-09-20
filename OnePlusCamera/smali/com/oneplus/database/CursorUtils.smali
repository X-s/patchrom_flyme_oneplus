.class public Lcom/oneplus/database/CursorUtils;
.super Ljava/lang/Object;
.source "CursorUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDouble(Landroid/database/Cursor;Ljava/lang/String;D)D
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 24
    if-eqz p0, :cond_0

    .line 28
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 29
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 30
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 35
    .end local v0    # "index":I
    .end local p2    # "defaultValue":D
    :cond_0
    :goto_0
    return-wide p2

    .line 32
    .restart local p2    # "defaultValue":D
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getInt(Landroid/database/Cursor;Ljava/lang/String;I)I
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 48
    if-eqz p0, :cond_0

    .line 52
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 53
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 54
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 59
    .end local v0    # "index":I
    .end local p2    # "defaultValue":I
    :cond_0
    :goto_0
    return p2

    .line 56
    .restart local p2    # "defaultValue":I
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getLong(Landroid/database/Cursor;Ljava/lang/String;J)J
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 72
    if-eqz p0, :cond_0

    .line 76
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 77
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 78
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 83
    .end local v0    # "index":I
    .end local p2    # "defaultValue":J
    :cond_0
    :goto_0
    return-wide p2

    .line 80
    .restart local p2    # "defaultValue":J
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 95
    if-eqz p0, :cond_0

    .line 99
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 100
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 101
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 106
    .end local v0    # "index":I
    :goto_0
    return-object v1

    .line 103
    :catch_0
    move-exception v1

    .line 106
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
