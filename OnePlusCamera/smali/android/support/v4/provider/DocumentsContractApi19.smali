.class Landroid/support/v4/provider/DocumentsContractApi19;
.super Ljava/lang/Object;
.source "DocumentsContractApi19.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DocumentFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canRead(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-static {p0, p1}, Landroid/support/v4/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    return v2

    .line 78
    :cond_0
    return v1

    .line 83
    :cond_1
    return v1
.end method

.method public static canWrite(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x2

    .line 91
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 96
    invoke-static {p0, p1}, Landroid/support/v4/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "flags"

    .line 97
    invoke-static {p0, p1, v1, v3}, Landroid/support/v4/provider/DocumentsContractApi19;->queryForInt(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v1

    .line 100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 105
    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_4

    const-string/jumbo v2, "vnd.android.document/directory"

    .line 109
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 113
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 119
    :cond_1
    return v3

    .line 93
    :cond_2
    return v3

    .line 101
    :cond_3
    return v3

    .line 106
    :cond_4
    return v4

    .line 109
    :cond_5
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_0

    .line 112
    return v4

    .line 113
    :cond_6
    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_1

    .line 116
    return v4
.end method

.method private static closeQuietly(Ljava/lang/AutoCloseable;)V
    .locals 1

    .prologue
    .line 188
    if-nez p0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 190
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 192
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static delete(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static exists(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    .line 131
    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "document_id"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 133
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-gtz v0, :cond_0

    move v0, v6

    .line 138
    :goto_0
    invoke-static {v1}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v0

    :cond_0
    move v0, v7

    .line 133
    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_1
    :try_start_2
    const-string/jumbo v2, "DocumentFile"

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed query: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 138
    invoke-static {v1}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v6

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_2
    invoke-static {v1}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static getName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v0, "_display_name"

    const/4 v1, 0x0

    .line 37
    invoke-static {p0, p1, v0, v1}, Landroid/support/v4/provider/DocumentsContractApi19;->queryForString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v0, "mime_type"

    const/4 v1, 0x0

    .line 41
    invoke-static {p0, p1, v0, v1}, Landroid/support/v4/provider/DocumentsContractApi19;->queryForString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    invoke-static {p0, p1}, Landroid/support/v4/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "vnd.android.document/directory"

    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 47
    return-object v0
.end method

.method public static isDirectory(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 2

    .prologue
    const-string/jumbo v0, "vnd.android.document/directory"

    .line 54
    invoke-static {p0, p1}, Landroid/support/v4/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1

    .prologue
    .line 33
    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static isFile(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-static {p0, p1}, Landroid/support/v4/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "vnd.android.document/directory"

    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    :cond_0
    return v2

    .line 59
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public static lastModified(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 4

    .prologue
    const-string/jumbo v0, "last_modified"

    const-wide/16 v2, 0x0

    .line 67
    invoke-static {p0, p1, v0, v2, v3}, Landroid/support/v4/provider/DocumentsContractApi19;->queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static length(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 4

    .prologue
    const-string/jumbo v0, "_size"

    const-wide/16 v2, 0x0

    .line 71
    invoke-static {p0, p1, v0, v2, v3}, Landroid/support/v4/provider/DocumentsContractApi19;->queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static queryForInt(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 164
    int-to-long v0, p3

    invoke-static {p0, p1, p2, v0, v1}, Landroid/support/v4/provider/DocumentsContractApi19;->queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private static queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    .line 173
    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 174
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_1

    .line 183
    :cond_0
    invoke-static {v1}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-wide p3

    :cond_1
    const/4 v0, 0x0

    .line 174
    :try_start_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 175
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v2

    .line 183
    invoke-static {v1}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-wide v2

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_0
    :try_start_3
    const-string/jumbo v2, "DocumentFile"

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed query: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 183
    invoke-static {v1}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-wide p3

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    invoke-static {v1}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static queryForString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    .line 148
    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 149
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_1

    .line 158
    :cond_0
    invoke-static {v1}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p3

    :cond_1
    const/4 v0, 0x0

    .line 149
    :try_start_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 150
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 158
    invoke-static {v1}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_0
    :try_start_3
    const-string/jumbo v2, "DocumentFile"

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed query: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 158
    invoke-static {v1}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p3

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    invoke-static {v1}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
