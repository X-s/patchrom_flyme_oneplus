.class public Lcom/amap/api/mapcore2d/ei;
.super Ljava/lang/Object;
.source "OfflineLocManager.java"


# direct methods
.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-wide/32 v8, 0x32000

    invoke-static {v3, v5, v6, v8, v9}, Lcom/amap/api/mapcore2d/du;->a(Ljava/io/File;IIJ)Lcom/amap/api/mapcore2d/du;

    move-result-object v1

    .line 162
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    if-nez v3, :cond_2

    .line 201
    :cond_0
    if-nez v1, :cond_5

    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 163
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 164
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 165
    array-length v6, v5

    move v3, v2

    :goto_1
    if-ge v3, v6, :cond_0

    aget-object v7, v5, v3

    const-string/jumbo v8, ".0"

    .line 166
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "\\."

    .line 169
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 170
    aget-object v7, v7, v8

    .line 171
    invoke-static {v1, v7}, Lcom/amap/api/mapcore2d/ek;->a(Lcom/amap/api/mapcore2d/du;Ljava/lang/String;)[B

    move-result-object v7

    .line 173
    invoke-static {v7}, Lcom/amap/api/mapcore2d/cv;->a([B)Ljava/lang/String;

    move-result-object v7

    .line 175
    if-nez v0, :cond_4

    const-string/jumbo v8, ","

    .line 178
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string/jumbo v8, "{\"log\":\""

    .line 180
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\"}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    .line 176
    goto :goto_2

    .line 199
    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "StatisticsManager"

    const-string/jumbo v3, "getContent"

    .line 187
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 197
    if-eqz v1, :cond_1

    .line 194
    :try_start_3
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/du;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 197
    :catch_1
    move-exception v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 199
    :catch_2
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "StatisticsManager"

    const-string/jumbo v3, "getContent"

    .line 189
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 197
    if-eqz v1, :cond_1

    .line 194
    :try_start_5
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/du;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 197
    :catch_3
    move-exception v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v0

    .line 197
    if-nez v1, :cond_6

    .line 192
    :goto_3
    throw v0

    .line 194
    :cond_5
    :try_start_6
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/du;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 197
    :catch_4
    move-exception v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 194
    :cond_6
    :try_start_7
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/du;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_3

    .line 197
    :catch_5
    move-exception v1

    .line 196
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 93
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/ei;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore2d/ei;->a(Landroid/content/Context;J)V

    .line 97
    invoke-static {p0}, Lcom/amap/api/mapcore2d/ei;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->c([B)[B

    move-result-object v0

    .line 108
    new-instance v1, Lcom/amap/api/mapcore2d/da;

    const-string/jumbo v2, "6"

    invoke-direct {v1, v0, v2}, Lcom/amap/api/mapcore2d/da;-><init>([BLjava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/amap/api/mapcore2d/dy;->a()Lcom/amap/api/mapcore2d/dy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/dy;->a(Lcom/amap/api/mapcore2d/ee;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 94
    :cond_0
    return-void

    .line 100
    :cond_1
    return-void

    .line 116
    :catch_0
    move-exception v0

    const-string/jumbo v1, "OfflineLocManager"

    const-string/jumbo v2, "updateOfflineLocData"

    .line 115
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;J)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v0, "f.log"

    .line 126
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/cz;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    :goto_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 133
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 150
    if-nez v2, :cond_2

    :cond_0
    :goto_1
    return-void

    .line 129
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    :goto_2
    :try_start_3
    const-string/jumbo v2, "OfflineLocManager"

    const-string/jumbo v3, "updateLogUpdateTime"

    .line 136
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    if-eqz v1, :cond_0

    .line 141
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 145
    :catch_1
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 147
    :catchall_0
    move-exception v0

    .line 145
    :goto_3
    if-nez v1, :cond_3

    .line 139
    :goto_4
    throw v0

    .line 141
    :cond_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 145
    :catch_2
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 141
    :cond_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    .line 145
    :catch_3
    move-exception v1

    .line 143
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 147
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 207
    sget-object v0, Lcom/amap/api/mapcore2d/cz;->f:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/cz;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ei;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    invoke-static {p0}, Lcom/amap/api/mapcore2d/ei;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{\"pinfo\":\""

    .line 213
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\",\"els\":["

    .line 214
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "]}"

    .line 216
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 209
    return-object v0
.end method

.method private static c(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 226
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore2d/cz;->f:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/cz;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return v0

    .line 230
    :cond_0
    return v1

    .line 235
    :catch_0
    move-exception v0

    const-string/jumbo v2, "OfflineLocManager"

    const-string/jumbo v3, "getFileNum"

    .line 234
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)J
    .locals 5

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, "f.log"

    .line 247
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/cz;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 255
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 256
    new-array v0, v0, [B

    .line 257
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 258
    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 283
    if-nez v1, :cond_3

    .line 260
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v0, 0x0

    .line 250
    return-wide v0

    .line 260
    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_2
    const-string/jumbo v2, "OfflineLocManager"

    const-string/jumbo v4, "getUpdateTime"

    .line 264
    invoke-static {v0, v2, v4}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 266
    if-nez v3, :cond_2

    .line 280
    :cond_1
    :goto_2
    if-nez v1, :cond_4

    .line 283
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    .line 266
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 271
    :catch_1
    move-exception v0

    .line 270
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 282
    :catchall_0
    move-exception v0

    .line 280
    :goto_4
    if-nez v1, :cond_5

    .line 273
    :goto_5
    throw v0

    .line 275
    :cond_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 280
    :catch_2
    move-exception v0

    .line 278
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 275
    :cond_4
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .line 280
    :catch_3
    move-exception v0

    .line 278
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 275
    :cond_5
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_5

    .line 280
    :catch_4
    move-exception v1

    .line 278
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 282
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 260
    :catch_5
    move-exception v0

    goto :goto_1
.end method

.method private static e(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 289
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->m(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 307
    :goto_0
    return v2

    .line 292
    :cond_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/ei;->d(Landroid/content/Context;)J

    move-result-wide v4

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 295
    sub-long v4, v6, v4

    const-wide/32 v6, 0x240c8400

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    .line 296
    return v1

    :cond_1
    move v0, v2

    .line 295
    goto :goto_1

    .line 299
    :cond_2
    invoke-static {p0}, Lcom/amap/api/mapcore2d/ei;->c(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/16 v3, 0x64

    if-lt v0, v3, :cond_3

    .line 302
    return v1

    .line 300
    :cond_3
    return v2

    .line 306
    :catch_0
    move-exception v0

    const-string/jumbo v1, "StatisticsManager"

    const-string/jumbo v3, "isUpdate"

    .line 305
    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    invoke-static {p0}, Lcom/amap/api/mapcore2d/ei;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/co;->b(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object v0

    .line 316
    return-object v0
.end method

.method private static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    const-string/jumbo v0, "\"key\":\""

    .line 323
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/mapcore2d/cl;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"platform\":\"android\",\"diu\":\""

    .line 324
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"mac\":\""

    .line 325
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"tid\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"manufacture\":\""

    .line 326
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"device\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"sim\":\""

    .line 327
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"pkg\":\""

    .line 328
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/mapcore2d/cl;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"model\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 329
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"appversion\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/mapcore2d/cl;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\""

    .line 330
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 335
    :catch_0
    move-exception v0

    const-string/jumbo v2, "CInfo"

    const-string/jumbo v3, "getPublicJSONInfo"

    .line 334
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
