.class public Lcom/amap/api/mapcore2d/cs;
.super Ljava/lang/Object;
.source "ProxyUtil.java"


# direct methods
.method private static a()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 188
    :try_start_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 193
    :goto_0
    if-eqz v0, :cond_0

    .line 196
    :goto_1
    return-object v0

    .line 192
    :catch_0
    move-exception v1

    const-string/jumbo v2, "ProxyUtil"

    const-string/jumbo v3, "getDefHost"

    .line 190
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "null"

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/net/Proxy;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 32
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    .line 36
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cs;->b(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    .line 33
    :cond_0
    new-instance v0, Ljava/net/URI;

    const-string/jumbo v2, "http://restapi.amap.com"

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/cs;->a(Landroid/content/Context;Ljava/net/URI;)Ljava/net/Proxy;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    const-string/jumbo v2, "ProxyUtil"

    const-string/jumbo v3, "getProxy"

    .line 41
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/net/URI;)Ljava/net/Proxy;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 206
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cs;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    :goto_0
    return-object v1

    .line 208
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    .line 211
    invoke-virtual {v0, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    .line 212
    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    .line 220
    :goto_1
    return-object v0

    .line 212
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 213
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    .line 214
    if-nez v0, :cond_4

    :cond_3
    move-object v0, v1

    .line 216
    goto :goto_1

    .line 215
    :cond_4
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v2, v3, :cond_3

    goto :goto_1

    .line 220
    :catch_0
    move-exception v0

    const-string/jumbo v2, "ProxyUtil"

    const-string/jumbo v3, "getProxySelectorCfg"

    .line 222
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 177
    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 236
    :try_start_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 240
    :goto_0
    return v0

    .line 239
    :catch_0
    move-exception v1

    const-string/jumbo v2, "ProxyUtil"

    const-string/jumbo v3, "getDefPort"

    .line 238
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Ljava/net/Proxy;
    .locals 12

    .prologue
    const/16 v6, 0x50

    const/4 v10, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 51
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cs;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-object v7

    :cond_1
    const-string/jumbo v0, "content://telephony/carriers/preferapn"

    .line 52
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 56
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 57
    if-nez v2, :cond_5

    :cond_2
    move v6, v8

    move-object v3, v7

    .line 138
    :cond_3
    :goto_1
    if-nez v2, :cond_12

    .line 150
    :cond_4
    :goto_2
    :try_start_1
    invoke-static {v3, v6}, Lcom/amap/api/mapcore2d/cs;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 152
    invoke-static {v3, v6}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6

    .line 153
    return-object v0

    .line 57
    :cond_5
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "apn"

    .line 58
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 59
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    if-nez v0, :cond_8

    .line 63
    :goto_3
    if-nez v0, :cond_9

    .line 79
    :cond_6
    if-nez v0, :cond_e

    :cond_7
    move v6, v8

    move-object v3, v7

    goto :goto_1

    .line 61
    :cond_8
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_9
    const-string/jumbo v1, "ctwap"

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 64
    invoke-static {}, Lcom/amap/api/mapcore2d/cs;->a()Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-static {}, Lcom/amap/api/mapcore2d/cs;->b()I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    .line 67
    :try_start_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v9

    move-object v3, v7

    .line 73
    :goto_4
    if-eqz v1, :cond_c

    .line 76
    :goto_5
    if-eq v0, v8, :cond_d

    :goto_6
    move v6, v0

    .line 79
    goto :goto_1

    :cond_a
    const-string/jumbo v1, "null"

    .line 68
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v1

    if-eqz v1, :cond_b

    move v1, v9

    move-object v3, v7

    goto :goto_4

    :cond_b
    move v1, v10

    .line 70
    goto :goto_4

    :cond_c
    :try_start_4
    const-string/jumbo v1, "QMTAuMC4wLjIwMA=="

    .line 74
    invoke-static {v1}, Lcom/amap/api/mapcore2d/cs;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v3

    goto :goto_5

    :cond_d
    move v0, v6

    .line 77
    goto :goto_6

    :cond_e
    :try_start_5
    const-string/jumbo v1, "wap"

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 80
    invoke-static {}, Lcom/amap/api/mapcore2d/cs;->a()Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-static {}, Lcom/amap/api/mapcore2d/cs;->b()I
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v1

    .line 84
    :try_start_6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v9

    move-object v3, v7

    .line 90
    :goto_7
    if-eqz v0, :cond_11

    .line 93
    :goto_8
    if-eq v1, v8, :cond_3

    move v6, v1

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v0, "null"

    .line 85
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v0

    if-eqz v0, :cond_10

    move v0, v9

    move-object v3, v7

    goto :goto_7

    :cond_10
    move v0, v10

    .line 87
    goto :goto_7

    :cond_11
    :try_start_7
    const-string/jumbo v0, "QMTAuMC4wLjE3Mg=="

    .line 91
    invoke-static {v0}, Lcom/amap/api/mapcore2d/cs;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v3

    goto :goto_8

    .line 140
    :cond_12
    :try_start_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_2

    .line 146
    :catch_0
    move-exception v0

    const-string/jumbo v1, "ProxyUtil"

    const-string/jumbo v2, "getHostProxy2"

    .line 143
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 146
    :catch_1
    move-exception v0

    move-object v1, v7

    move v2, v8

    move-object v3, v7

    :goto_9
    :try_start_9
    const-string/jumbo v4, "ProxyUtil"

    const-string/jumbo v5, "getHostProxy"

    .line 99
    invoke-static {v0, v4, v5}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->o(Landroid/content/Context;)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result-object v0

    .line 101
    if-nez v0, :cond_14

    move v6, v2

    .line 138
    :cond_13
    :goto_a
    if-eqz v1, :cond_4

    .line 140
    :try_start_a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_2

    .line 146
    :catch_2
    move-exception v0

    const-string/jumbo v1, "ProxyUtil"

    const-string/jumbo v2, "getHostProxy2"

    .line 143
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 102
    :cond_14
    :try_start_b
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 105
    invoke-static {}, Lcom/amap/api/mapcore2d/cs;->a()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {}, Lcom/amap/api/mapcore2d/cs;->b()I

    move-result v2

    const-string/jumbo v5, "ctwap"

    .line 107
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v8, :cond_15

    const-string/jumbo v5, "wap"

    .line 120
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v8, :cond_19

    move v6, v2

    goto :goto_a

    .line 108
    :cond_15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 114
    :cond_16
    :goto_b
    if-eqz v9, :cond_18

    .line 117
    :goto_c
    if-eq v2, v8, :cond_13

    move v6, v2

    goto :goto_a

    :cond_17
    const-string/jumbo v4, "null"

    .line 109
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    move v9, v10

    move-object v3, v0

    .line 111
    goto :goto_b

    :cond_18
    const-string/jumbo v0, "QMTAuMC4wLjIwMA=="

    .line 115
    invoke-static {v0}, Lcom/amap/api/mapcore2d/cs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_c

    .line 121
    :cond_19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    move v2, v9

    move-object v0, v3

    .line 127
    :goto_d
    if-eqz v2, :cond_1c

    :goto_e
    move-object v3, v0

    .line 130
    goto :goto_a

    :cond_1a
    const-string/jumbo v2, "null"

    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    move v2, v9

    move-object v0, v3

    goto :goto_d

    :cond_1b
    move v2, v10

    .line 124
    goto :goto_d

    :cond_1c
    const-string/jumbo v0, "QMTAuMC4wLjE3Mg=="

    .line 128
    invoke-static {v0}, Lcom/amap/api/mapcore2d/cs;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-result-object v0

    goto :goto_e

    .line 146
    :catch_3
    move-exception v0

    move-object v2, v7

    move-object v3, v7

    :goto_f
    :try_start_c
    const-string/jumbo v1, "ProxyUtil"

    const-string/jumbo v4, "getHostProxy1"

    .line 135
    invoke-static {v0, v1, v4}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 138
    if-nez v2, :cond_1d

    move v6, v8

    goto/16 :goto_2

    .line 140
    :cond_1d
    :try_start_d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4

    :goto_10
    move v6, v8

    .line 146
    goto/16 :goto_2

    :catch_4
    move-exception v0

    const-string/jumbo v1, "ProxyUtil"

    const-string/jumbo v2, "getHostProxy2"

    .line 143
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_10

    .line 146
    :catchall_0
    move-exception v0

    move-object v2, v7

    .line 138
    :goto_11
    if-nez v2, :cond_1e

    .line 146
    :goto_12
    throw v0

    .line 140
    :cond_1e
    :try_start_e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_12

    .line 146
    :catch_5
    move-exception v1

    const-string/jumbo v2, "ProxyUtil"

    const-string/jumbo v3, "getHostProxy2"

    .line 143
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_12

    .line 159
    :catch_6
    move-exception v0

    const-string/jumbo v1, "ProxyUtil"

    const-string/jumbo v2, "getHostProxy2"

    .line 157
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 146
    :catchall_1
    move-exception v0

    goto :goto_11

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_11

    :catch_7
    move-exception v0

    move-object v3, v7

    goto :goto_f

    :catch_8
    move-exception v1

    move v8, v0

    move-object v3, v7

    move-object v0, v1

    goto :goto_f

    :catch_9
    move-exception v1

    move v8, v0

    move-object v0, v1

    goto :goto_f

    :catch_a
    move-exception v0

    move v8, v1

    move-object v3, v7

    goto :goto_f

    :catch_b
    move-exception v0

    move v8, v1

    goto :goto_f

    :catch_c
    move-exception v0

    move-object v1, v2

    move-object v3, v7

    move v2, v8

    goto/16 :goto_9

    :catch_d
    move-exception v1

    move-object v3, v7

    move-object v11, v2

    move v2, v0

    move-object v0, v1

    move-object v1, v11

    goto/16 :goto_9

    :catch_e
    move-exception v1

    move-object v11, v1

    move-object v1, v2

    move v2, v0

    move-object v0, v11

    goto/16 :goto_9

    :catch_f
    move-exception v0

    move-object v3, v7

    move v11, v1

    move-object v1, v2

    move v2, v11

    goto/16 :goto_9

    :catch_10
    move-exception v0

    move-object v11, v2

    move v2, v1

    move-object v1, v11

    goto/16 :goto_9
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 230
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->m(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
