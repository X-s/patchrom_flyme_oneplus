.class public Lcom/amap/api/mapcore2d/ek;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method static a(Lcom/amap/api/mapcore2d/du;Ljava/lang/String;)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 16
    new-array v1, v0, [B

    .line 18
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/du;->a(Ljava/lang/String;)Lcom/amap/api/mapcore2d/du$b;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 19
    if-eqz v3, :cond_0

    const/4 v0, 0x0

    .line 20
    :try_start_1
    invoke-virtual {v3, v0}, Lcom/amap/api/mapcore2d/du$b;->a(I)Ljava/io/InputStream;

    move-result-object v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v1, v0, [B

    .line 23
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    .line 26
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/du;->c(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    if-nez v2, :cond_5

    .line 40
    :goto_0
    if-nez v3, :cond_6

    .line 28
    :goto_1
    return-object v1

    .line 40
    :cond_0
    if-nez v3, :cond_2

    .line 19
    :goto_2
    return-object v1

    .line 33
    :cond_1
    if-nez v2, :cond_3

    .line 40
    :goto_3
    if-nez v3, :cond_4

    .line 21
    :goto_4
    return-object v1

    .line 28
    :catch_0
    move-exception v0

    move-object v3, v2

    :goto_5
    :try_start_2
    const-string/jumbo v4, "Utils"

    const-string/jumbo v5, "readSingleLog"

    .line 30
    invoke-static {v0, v4, v5}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 33
    if-nez v2, :cond_7

    .line 40
    :goto_6
    if-nez v3, :cond_8

    .line 47
    :goto_7
    return-object v1

    .line 46
    :catchall_0
    move-exception v0

    move-object v3, v2

    .line 33
    :goto_8
    if-nez v2, :cond_9

    .line 40
    :goto_9
    if-nez v3, :cond_a

    .line 32
    :goto_a
    throw v0

    .line 41
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/du$b;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 45
    :catch_1
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 34
    :cond_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 38
    :catch_2
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 41
    :cond_4
    :try_start_5
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/du$b;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    .line 45
    :catch_3
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 34
    :cond_5
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 38
    :catch_4
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 41
    :cond_6
    :try_start_7
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/du$b;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_1

    .line 45
    :catch_5
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 34
    :cond_7
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_6

    .line 38
    :catch_6
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 41
    :cond_8
    :try_start_9
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/du$b;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_7

    .line 45
    :catch_7
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 34
    :cond_9
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_9

    .line 38
    :catch_8
    move-exception v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 41
    :cond_a
    :try_start_b
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/du$b;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_a

    .line 45
    :catch_9
    move-exception v1

    .line 44
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a

    .line 46
    :catchall_1
    move-exception v0

    goto :goto_8

    .line 28
    :catch_a
    move-exception v0

    goto :goto_5
.end method
