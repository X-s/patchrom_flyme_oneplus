.class public Lcom/oneplus/util/WebUtils;
.super Ljava/lang/Object;
.source "WebUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/util/WebUtils$WebResponse;
    }
.end annotation


# static fields
.field public static final HTTP_STATUS_OK:I = 0xc8

.field private static final TAG:Ljava/lang/String;

.field private static final UTF8:Ljava/lang/String; = "UTF-8"


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/util/WebUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/oneplus/util/WebUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/util/WebUtils;->TAG:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static request(Ljava/net/URL;)Lcom/oneplus/util/WebUtils$WebResponse;
    .locals 2
    .param p0, "request"    # Ljava/net/URL;

    .prologue
    .line 169
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/oneplus/util/WebUtils;->request(Ljava/net/URL;ILcom/oneplus/base/Ref;)Lcom/oneplus/util/WebUtils$WebResponse;

    move-result-object v0

    return-object v0
.end method

.method public static request(Ljava/net/URL;I)Lcom/oneplus/util/WebUtils$WebResponse;
    .locals 1
    .param p0, "request"    # Ljava/net/URL;
    .param p1, "retryCount"    # I

    .prologue
    const/4 v0, 0x0

    .line 218
    invoke-static {p0, v0, p1, v0}, Lcom/oneplus/util/WebUtils;->request(Ljava/net/URL;Ljava/io/OutputStream;ILcom/oneplus/base/Ref;)Lcom/oneplus/util/WebUtils$WebResponse;

    move-result-object v0

    return-object v0
.end method

.method public static request(Ljava/net/URL;ILcom/oneplus/base/Ref;)Lcom/oneplus/util/WebUtils$WebResponse;
    .locals 1
    .param p0, "request"    # Ljava/net/URL;
    .param p1, "retryCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "I",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/oneplus/util/WebUtils$WebResponse;"
        }
    .end annotation

    .prologue
    .line 231
    .local p2, "isCanceled":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/oneplus/util/WebUtils;->request(Ljava/net/URL;Ljava/io/OutputStream;ILcom/oneplus/base/Ref;)Lcom/oneplus/util/WebUtils$WebResponse;

    move-result-object v0

    return-object v0
.end method

.method public static request(Ljava/net/URL;Lcom/oneplus/base/Ref;)Lcom/oneplus/util/WebUtils$WebResponse;
    .locals 1
    .param p0, "request"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/oneplus/util/WebUtils$WebResponse;"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "isCanceled":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/oneplus/util/WebUtils;->request(Ljava/net/URL;ILcom/oneplus/base/Ref;)Lcom/oneplus/util/WebUtils$WebResponse;

    move-result-object v0

    return-object v0
.end method

.method public static request(Ljava/net/URL;Ljava/io/OutputStream;)Lcom/oneplus/util/WebUtils$WebResponse;
    .locals 2
    .param p0, "request"    # Ljava/net/URL;
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 193
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/oneplus/util/WebUtils;->request(Ljava/net/URL;Ljava/io/OutputStream;ILcom/oneplus/base/Ref;)Lcom/oneplus/util/WebUtils$WebResponse;

    move-result-object v0

    return-object v0
.end method

.method public static request(Ljava/net/URL;Ljava/io/OutputStream;ILcom/oneplus/base/Ref;)Lcom/oneplus/util/WebUtils$WebResponse;
    .locals 21
    .param p0, "request"    # Ljava/net/URL;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "retryCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/io/OutputStream;",
            "I",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/oneplus/util/WebUtils$WebResponse;"
        }
    .end annotation

    .prologue
    .line 246
    .local p3, "isCanceled":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    const/4 v10, 0x0

    .line 247
    .local v10, "connection":Ljava/net/HttpURLConnection;
    const/16 v17, 0x0

    .line 248
    .local v17, "retry":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, p2

    if-gt v0, v1, :cond_0

    .line 252
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v10, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v10    # "connection":Ljava/net/HttpURLConnection;
    :cond_0
    const/4 v15, 0x0

    .line 264
    .local v15, "isSelfStream":Z
    if-nez p1, :cond_1

    .line 266
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    .end local p1    # "outputStream":Ljava/io/OutputStream;
    invoke-direct/range {p1 .. p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 267
    .restart local p1    # "outputStream":Ljava/io/OutputStream;
    const/4 v15, 0x1

    .line 271
    :cond_1
    const/4 v3, 0x0

    .line 272
    .local v3, "data":[B
    const/4 v4, 0x0

    .line 273
    .local v4, "errorData":[B
    const/4 v6, -0x1

    .line 274
    .local v6, "httpStatus":I
    const/4 v5, 0x0

    .line 275
    .local v5, "contentType":Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 277
    const/16 v17, 0x0

    .line 278
    .end local v3    # "data":[B
    .end local v4    # "errorData":[B
    :cond_2
    :goto_1
    move/from16 v0, v17

    move/from16 v1, p2

    if-gt v0, v1, :cond_3

    .line 281
    if-eqz p3, :cond_6

    invoke-interface/range {p3 .. p3}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 340
    .end local v5    # "contentType":Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 344
    :cond_4
    if-eqz v15, :cond_5

    .line 348
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7

    .line 356
    :cond_5
    :goto_3
    new-instance v2, Lcom/oneplus/util/WebUtils$WebResponse;

    if-eqz p3, :cond_11

    invoke-interface/range {p3 .. p3}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    :goto_4
    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/oneplus/util/WebUtils$WebResponse;-><init>([B[BLjava/lang/String;IZLcom/oneplus/util/WebUtils$WebResponse;)V

    .line 357
    .local v2, "response":Lcom/oneplus/util/WebUtils$WebResponse;
    return-object v2

    .line 256
    .end local v2    # "response":Lcom/oneplus/util/WebUtils$WebResponse;
    .end local v6    # "httpStatus":I
    .end local v15    # "isSelfStream":Z
    .restart local v10    # "connection":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v11

    .line 257
    .local v11, "e":Ljava/lang/Throwable;
    sget-object v7, Lcom/oneplus/util/WebUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "request - Fail to connect to URL: "

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v11}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 258
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 286
    .end local v10    # "connection":Ljava/net/HttpURLConnection;
    .end local v11    # "e":Ljava/lang/Throwable;
    .restart local v5    # "contentType":Ljava/lang/String;
    .restart local v6    # "httpStatus":I
    .restart local v15    # "isSelfStream":Z
    :cond_6
    :try_start_2
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    .line 288
    .local v18, "stream":Ljava/io/InputStream;
    const/16 v7, 0x400

    new-array v9, v7, [B

    .line 289
    .local v9, "buffer":[B
    :goto_5
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/io/InputStream;->read([B)I

    move-result v16

    .local v16, "length":I
    const/4 v7, -0x1

    move/from16 v0, v16

    if-eq v0, v7, :cond_7

    .line 292
    if-eqz p3, :cond_a

    invoke-interface/range {p3 .. p3}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 300
    :cond_7
    if-eqz p3, :cond_8

    invoke-interface/range {p3 .. p3}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_3

    .line 304
    :cond_8
    move-object/from16 v0, p1

    instance-of v7, v0, Ljava/io/ByteArrayOutputStream;

    if-eqz v7, :cond_9

    .line 305
    move-object/from16 v0, p1

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 306
    :cond_9
    const/16 v6, 0xc8

    .line 307
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v5

    .local v5, "contentType":Ljava/lang/String;
    goto :goto_2

    .line 296
    .local v5, "contentType":Ljava/lang/String;
    :cond_a
    const/4 v7, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v9, v7, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 313
    .end local v9    # "buffer":[B
    .end local v16    # "length":I
    .end local v18    # "stream":Ljava/io/InputStream;
    :catch_1
    move-exception v11

    .line 315
    .restart local v11    # "e":Ljava/lang/Throwable;
    if-eqz p3, :cond_b

    invoke-interface/range {p3 .. p3}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_3

    .line 319
    :cond_b
    add-int/lit8 v17, v17, 0x1

    .line 320
    move/from16 v0, v17

    move/from16 v1, p2

    if-le v0, v1, :cond_2

    .line 322
    const/4 v8, 0x0

    const/4 v13, 0x0

    .local v13, "errOut":Ljava/io/ByteArrayOutputStream;
    :try_start_3
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 324
    .end local v13    # "errOut":Ljava/io/ByteArrayOutputStream;
    .local v14, "errOut":Ljava/io/ByteArrayOutputStream;
    :try_start_4
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v18

    .line 326
    .restart local v18    # "stream":Ljava/io/InputStream;
    const/16 v7, 0x400

    new-array v9, v7, [B

    .line 327
    .restart local v9    # "buffer":[B
    :goto_6
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/io/InputStream;->read([B)I

    move-result v16

    .restart local v16    # "length":I
    const/4 v7, -0x1

    move/from16 v0, v16

    if-eq v0, v7, :cond_d

    .line 328
    const/4 v7, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v9, v7, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    .line 336
    .end local v9    # "buffer":[B
    .end local v16    # "length":I
    .end local v18    # "stream":Ljava/io/InputStream;
    :catch_2
    move-exception v7

    move-object v13, v14

    .end local v14    # "errOut":Ljava/io/ByteArrayOutputStream;
    :goto_7
    :try_start_5
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v8

    move-object/from16 v20, v8

    move-object v8, v7

    move-object/from16 v7, v20

    :goto_8
    if-eqz v13, :cond_c

    :try_start_6
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    :cond_c
    :goto_9
    if-eqz v8, :cond_10

    :try_start_7
    throw v8
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    .line 335
    :catch_3
    move-exception v12

    .local v12, "e1":Ljava/lang/Throwable;
    goto/16 :goto_1

    .line 331
    .end local v12    # "e1":Ljava/lang/Throwable;
    .restart local v9    # "buffer":[B
    .restart local v14    # "errOut":Ljava/io/ByteArrayOutputStream;
    .restart local v16    # "length":I
    .restart local v18    # "stream":Ljava/io/InputStream;
    :cond_d
    :try_start_8
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 332
    .local v4, "errorData":[B
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result v6

    .line 336
    if-eqz v14, :cond_e

    :try_start_9
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5

    :cond_e
    :goto_a
    if-eqz v8, :cond_2

    :try_start_a
    throw v8
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    .line 335
    :catch_4
    move-exception v12

    .restart local v12    # "e1":Ljava/lang/Throwable;
    move-object v13, v14

    .end local v14    # "errOut":Ljava/io/ByteArrayOutputStream;
    .local v13, "errOut":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_1

    .line 336
    .end local v12    # "e1":Ljava/lang/Throwable;
    .end local v13    # "errOut":Ljava/io/ByteArrayOutputStream;
    .restart local v14    # "errOut":Ljava/io/ByteArrayOutputStream;
    :catch_5
    move-exception v8

    goto :goto_a

    .end local v4    # "errorData":[B
    .end local v9    # "buffer":[B
    .end local v14    # "errOut":Ljava/io/ByteArrayOutputStream;
    .end local v16    # "length":I
    .end local v18    # "stream":Ljava/io/InputStream;
    :catch_6
    move-exception v19

    if-nez v8, :cond_f

    move-object/from16 v8, v19

    goto :goto_9

    :cond_f
    move-object/from16 v0, v19

    if-eq v8, v0, :cond_c

    :try_start_b
    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_10
    throw v7
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3

    .line 351
    .end local v5    # "contentType":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v11

    .restart local v11    # "e":Ljava/lang/Throwable;
    goto/16 :goto_3

    .line 356
    .end local v11    # "e":Ljava/lang/Throwable;
    :cond_11
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 336
    .restart local v5    # "contentType":Ljava/lang/String;
    .restart local v11    # "e":Ljava/lang/Throwable;
    .local v13, "errOut":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v7

    goto :goto_8

    .end local v13    # "errOut":Ljava/io/ByteArrayOutputStream;
    .restart local v14    # "errOut":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v7

    move-object v13, v14

    .end local v14    # "errOut":Ljava/io/ByteArrayOutputStream;
    .local v13, "errOut":Ljava/io/ByteArrayOutputStream;
    goto :goto_8

    .local v13, "errOut":Ljava/io/ByteArrayOutputStream;
    :catch_8
    move-exception v7

    goto :goto_7
.end method

.method public static request(Ljava/net/URL;Ljava/io/OutputStream;Lcom/oneplus/base/Ref;)Lcom/oneplus/util/WebUtils$WebResponse;
    .locals 1
    .param p0, "request"    # Ljava/net/URL;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/io/OutputStream;",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/oneplus/util/WebUtils$WebResponse;"
        }
    .end annotation

    .prologue
    .line 206
    .local p2, "isCanceled":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/oneplus/util/WebUtils;->request(Ljava/net/URL;Ljava/io/OutputStream;ILcom/oneplus/base/Ref;)Lcom/oneplus/util/WebUtils$WebResponse;

    move-result-object v0

    return-object v0
.end method

.method public static requestContentLength(Ljava/net/URL;)I
    .locals 5
    .param p0, "request"    # Ljava/net/URL;

    .prologue
    .line 371
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 372
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 375
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v1

    .line 376
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/oneplus/util/WebUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "request - Fail to connect to URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 378
    const/4 v2, -0x1

    return v2
.end method
