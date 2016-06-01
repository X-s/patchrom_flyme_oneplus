.class public Lcom/oppo/tribune/packshow/post/HttpMultipartRequest;
.super Ljava/lang/Object;
.source "HttpMultipartRequest.java"


# static fields
.field static final BOUNDARY:Ljava/lang/String; = "----------V2ymHFg03ehbqgZCaKO6jy"


# instance fields
.field private mCookie:Ljava/lang/String;

.field private mParams:[Ljava/lang/String;

.field private mStrParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cookie"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/oppo/tribune/packshow/post/HttpMultipartRequest;->mUrl:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/oppo/tribune/packshow/post/HttpMultipartRequest;->mCookie:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public sendFilePost()[B
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v3, 0x0

    .line 59
    .local v3, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v22, 0x0

    .line 60
    .local v22, "is":Ljava/io/InputStream;
    const/16 v25, 0x0

    .line 63
    .local v25, "res":[B
    :try_start_0
    new-instance v27, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/tribune/packshow/post/HttpMultipartRequest;->mUrl:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 64
    .local v27, "url":Ljava/net/URL;
    invoke-virtual/range {v27 .. v27}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v19

    check-cast v19, Ljava/net/HttpURLConnection;

    .line 66
    .local v19, "hc":Ljava/net/HttpURLConnection;
    const-string v29, "Content-Type"

    const-string v30, "multipart/form-data; boundary=----------V2ymHFg03ehbqgZCaKO6jy"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v29, "Charsert"

    const-string v30, "UTF-8"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v29, "Cookie"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/tribune/packshow/post/HttpMultipartRequest;->mCookie:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/16 v29, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 73
    const/16 v29, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 74
    const/16 v29, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 75
    const-string v29, "POST"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    .line 78
    .local v10, "dout":Ljava/io/OutputStream;
    const-string v5, "----------V2ymHFg03ehbqgZCaKO6jy"

    .line 79
    .local v5, "boundary":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuffer;

    const-string v29, "\r\n"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 80
    .local v26, "resSB":Ljava/lang/StringBuffer;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "\r\n--"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "--\r\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 82
    .local v13, "endBoundary":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/tribune/packshow/post/HttpMultipartRequest;->mStrParams:Ljava/util/List;

    move-object/from16 v29, v0

    if-eqz v29, :cond_3

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/tribune/packshow/post/HttpMultipartRequest;->mStrParams:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_2

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [Ljava/lang/String;

    .line 84
    .local v24, "parsm":[Ljava/lang/String;
    const/16 v29, 0x0

    aget-object v23, v24, v29

    .line 85
    .local v23, "key":Ljava/lang/String;
    const/16 v29, 0x1

    aget-object v28, v24, v29

    .line 86
    .local v28, "value":Ljava/lang/String;
    const-string v29, "Content-Disposition: form-data; name=\""

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v29

    const-string v30, "\"\r\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v29

    const-string v30, "\r\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v29

    const-string v30, "\r\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v29

    const-string v30, "--"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v29

    const-string v30, "\r\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 142
    .end local v5    # "boundary":Ljava/lang/String;
    .end local v10    # "dout":Ljava/io/OutputStream;
    .end local v13    # "endBoundary":Ljava/lang/String;
    .end local v19    # "hc":Ljava/net/HttpURLConnection;
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v23    # "key":Ljava/lang/String;
    .end local v24    # "parsm":[Ljava/lang/String;
    .end local v26    # "resSB":Ljava/lang/StringBuffer;
    .end local v27    # "url":Ljava/net/URL;
    .end local v28    # "value":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 143
    .local v11, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    if-eqz v3, :cond_0

    .line 147
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 149
    :cond_0
    if-eqz v22, :cond_1

    .line 150
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 156
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-object v25

    .line 92
    .restart local v5    # "boundary":Ljava/lang/String;
    .restart local v10    # "dout":Ljava/io/OutputStream;
    .restart local v13    # "endBoundary":Ljava/lang/String;
    .restart local v19    # "hc":Ljava/net/HttpURLConnection;
    .restart local v20    # "i$":Ljava/util/Iterator;
    .restart local v26    # "resSB":Ljava/lang/StringBuffer;
    .restart local v27    # "url":Ljava/net/URL;
    :cond_2
    :try_start_3
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 93
    .local v6, "boundaryMessage":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "--"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const-string v30, "utf-8"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/io/OutputStream;->write([B)V

    .line 98
    .end local v6    # "boundaryMessage":Ljava/lang/String;
    .end local v20    # "i$":Ljava/util/Iterator;
    :cond_3
    new-instance v26, Ljava/lang/StringBuffer;

    .end local v26    # "resSB":Ljava/lang/StringBuffer;
    const-string v29, "\r\n"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 99
    .restart local v26    # "resSB":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/tribune/packshow/post/HttpMultipartRequest;->mParams:[Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/tribune/packshow/post/HttpMultipartRequest;->mParams:[Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x4

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_7

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/tribune/packshow/post/HttpMultipartRequest;->mParams:[Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v15, v29, v30

    .line 101
    .local v15, "fileField":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/tribune/packshow/post/HttpMultipartRequest;->mParams:[Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aget-object v16, v29, v30

    .line 102
    .local v16, "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/tribune/packshow/post/HttpMultipartRequest;->mParams:[Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x2

    aget-object v18, v29, v30

    .line 103
    .local v18, "fileType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/tribune/packshow/post/HttpMultipartRequest;->mParams:[Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x3

    aget-object v17, v29, v30

    .line 105
    .local v17, "filePath":Ljava/lang/String;
    const-string v29, "Content-Disposition: form-data; name=\""

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v29

    const-string v30, "\"; filename=\""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v29

    const-string v30, "\"\r\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v29

    const-string v30, "Content-Type: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v29

    const-string v30, "\r\n\r\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "--"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const-string v30, "utf-8"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/io/OutputStream;->write([B)V

    .line 115
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .local v14, "file":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v29

    if-eqz v29, :cond_7

    .line 117
    new-instance v21, Ljava/io/DataInputStream;

    new-instance v29, Ljava/io/FileInputStream;

    move-object/from16 v0, v29

    invoke-direct {v0, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 119
    .local v21, "in":Ljava/io/DataInputStream;
    const/4 v8, 0x0

    .line 120
    .local v8, "bytes":I
    const/16 v29, 0x1400

    move/from16 v0, v29

    new-array v7, v0, [B

    .line 121
    .local v7, "bufferOut":[B
    :goto_3
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/io/DataInputStream;->read([B)I

    move-result v8

    const/16 v29, -0x1

    move/from16 v0, v29

    if-eq v8, v0, :cond_6

    .line 122
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v7, v0, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 145
    .end local v5    # "boundary":Ljava/lang/String;
    .end local v7    # "bufferOut":[B
    .end local v8    # "bytes":I
    .end local v10    # "dout":Ljava/io/OutputStream;
    .end local v13    # "endBoundary":Ljava/lang/String;
    .end local v14    # "file":Ljava/io/File;
    .end local v15    # "fileField":Ljava/lang/String;
    .end local v16    # "fileName":Ljava/lang/String;
    .end local v17    # "filePath":Ljava/lang/String;
    .end local v18    # "fileType":Ljava/lang/String;
    .end local v19    # "hc":Ljava/net/HttpURLConnection;
    .end local v21    # "in":Ljava/io/DataInputStream;
    .end local v26    # "resSB":Ljava/lang/StringBuffer;
    .end local v27    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v29

    .line 146
    :goto_4
    if-eqz v3, :cond_4

    .line 147
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 149
    :cond_4
    if-eqz v22, :cond_5

    .line 150
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 154
    :cond_5
    :goto_5
    throw v29

    .line 124
    .restart local v5    # "boundary":Ljava/lang/String;
    .restart local v7    # "bufferOut":[B
    .restart local v8    # "bytes":I
    .restart local v10    # "dout":Ljava/io/OutputStream;
    .restart local v13    # "endBoundary":Ljava/lang/String;
    .restart local v14    # "file":Ljava/io/File;
    .restart local v15    # "fileField":Ljava/lang/String;
    .restart local v16    # "fileName":Ljava/lang/String;
    .restart local v17    # "filePath":Ljava/lang/String;
    .restart local v18    # "fileType":Ljava/lang/String;
    .restart local v19    # "hc":Ljava/net/HttpURLConnection;
    .restart local v21    # "in":Ljava/io/DataInputStream;
    .restart local v26    # "resSB":Ljava/lang/StringBuffer;
    .restart local v27    # "url":Ljava/net/URL;
    :cond_6
    :try_start_5
    invoke-virtual/range {v21 .. v21}, Ljava/io/DataInputStream;->close()V

    .line 129
    .end local v7    # "bufferOut":[B
    .end local v8    # "bytes":I
    .end local v14    # "file":Ljava/io/File;
    .end local v15    # "fileField":Ljava/lang/String;
    .end local v16    # "fileName":Ljava/lang/String;
    .end local v17    # "filePath":Ljava/lang/String;
    .end local v18    # "fileType":Ljava/lang/String;
    .end local v21    # "in":Ljava/io/DataInputStream;
    :cond_7
    const-string v29, "utf-8"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/io/OutputStream;->write([B)V

    .line 131
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 135
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v22

    .line 137
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 138
    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v4, "bos":Ljava/io/ByteArrayOutputStream;
    :goto_6
    :try_start_6
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->read()I

    move-result v9

    .local v9, "ch":I
    const/16 v29, -0x1

    move/from16 v0, v29

    if-eq v9, v0, :cond_8

    .line 139
    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_6

    .line 142
    .end local v9    # "ch":I
    :catch_1
    move-exception v11

    move-object v3, v4

    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_1

    .line 141
    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "ch":I
    :cond_8
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v25

    .line 146
    if-eqz v4, :cond_9

    .line 147
    :try_start_7
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 149
    :cond_9
    if-eqz v22, :cond_a

    .line 150
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_a
    move-object v3, v4

    .line 154
    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_2

    .line 152
    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v12

    .line 153
    .local v12, "e2":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v4

    .line 155
    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_2

    .line 152
    .end local v5    # "boundary":Ljava/lang/String;
    .end local v9    # "ch":I
    .end local v10    # "dout":Ljava/io/OutputStream;
    .end local v12    # "e2":Ljava/lang/Exception;
    .end local v13    # "endBoundary":Ljava/lang/String;
    .end local v19    # "hc":Ljava/net/HttpURLConnection;
    .end local v26    # "resSB":Ljava/lang/StringBuffer;
    .end local v27    # "url":Ljava/net/URL;
    .restart local v11    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v12

    .line 153
    .restart local v12    # "e2":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 152
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "e2":Ljava/lang/Exception;
    :catch_4
    move-exception v12

    .line 153
    .restart local v12    # "e2":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 145
    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "e2":Ljava/lang/Exception;
    .restart local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "boundary":Ljava/lang/String;
    .restart local v10    # "dout":Ljava/io/OutputStream;
    .restart local v13    # "endBoundary":Ljava/lang/String;
    .restart local v19    # "hc":Ljava/net/HttpURLConnection;
    .restart local v26    # "resSB":Ljava/lang/StringBuffer;
    .restart local v27    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v29

    move-object v3, v4

    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_4
.end method

.method public setParams(Ljava/util/List;[Ljava/lang/String;)V
    .locals 0
    .param p2, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "strparams":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/oppo/tribune/packshow/post/HttpMultipartRequest;->mStrParams:Ljava/util/List;

    .line 48
    iput-object p2, p0, Lcom/oppo/tribune/packshow/post/HttpMultipartRequest;->mParams:[Ljava/lang/String;

    .line 49
    return-void
.end method
