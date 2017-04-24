.class public Lcom/android/server/location/GpsXtraDownloader;
.super Ljava/lang/Object;
.source "GpsXtraDownloader.java"


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Android"

.field private static final MAXIMUM_CONTENT_LENGTH_BYTES:J = 0xf4240L

.field private static final TAG:Ljava/lang/String; = "GpsXtraDownloader"


# instance fields
.field private mNextServerIndex:I

.field private final mUserAgent:Ljava/lang/String;

.field private final mXtraServers:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-string v0, "GpsXtraDownloader"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Ljava/util/Properties;)V
    .locals 9
    .param p1, "properties"    # Ljava/util/Properties;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v1, 0x0

    .line 53
    .local v1, "count":I
    const-string v7, "XTRA_SERVER_1"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "server1":Ljava/lang/String;
    const-string v7, "XTRA_SERVER_2"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, "server2":Ljava/lang/String;
    const-string v7, "XTRA_SERVER_3"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, "server3":Ljava/lang/String;
    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 57
    :cond_0
    if-eqz v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 58
    :cond_1
    if-eqz v6, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 61
    :cond_2
    const-string v7, "XTRA_USER_AGENT"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "agent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 63
    const-string v7, "Android"

    iput-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    .line 68
    :goto_0
    if-nez v1, :cond_4

    .line 69
    const-string v7, "GpsXtraDownloader"

    const-string v8, "No XTRA servers were specified in the GPS configuration"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    .line 82
    :goto_1
    return-void

    .line 65
    :cond_3
    iput-object v0, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    goto :goto_0

    .line 72
    :cond_4
    new-array v7, v1, [Ljava/lang/String;

    iput-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    .line 73
    const/4 v1, 0x0

    .line 74
    if-eqz v4, :cond_7

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aput-object v4, v7, v1

    .line 75
    :goto_2
    if-eqz v5, :cond_5

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    aput-object v5, v7, v2

    move v2, v1

    .line 76
    .end local v1    # "count":I
    .restart local v2    # "count":I
    :cond_5
    if-eqz v6, :cond_6

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    aput-object v6, v7, v2

    .line 79
    :goto_3
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 80
    .local v3, "random":Ljava/util/Random;
    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    goto :goto_1

    .end local v1    # "count":I
    .end local v3    # "random":Ljava/util/Random;
    .restart local v2    # "count":I
    :cond_6
    move v1, v2

    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_3

    :cond_7
    move v2, v1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    goto :goto_2
.end method


# virtual methods
.method protected doDownload(Ljava/lang/String;)[B
    .locals 17
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 109
    sget-boolean v10, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "GpsXtraDownloader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Downloading XTRA data from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    const/4 v4, 0x0

    .line 113
    .local v4, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v10, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 114
    const-string v10, "Accept"

    const-string v11, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    invoke-virtual {v4, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v10, "x-wap-profile"

    const-string v11, "http://www.openmobilealliance.org/tech/profiles/UAPROF/ccppschema-20021212#"

    invoke-virtual {v4, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 122
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 123
    .local v8, "statusCode":I
    const/16 v10, 0xc8

    if-eq v8, v10, :cond_3

    .line 124
    sget-boolean v10, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v10, :cond_1

    const-string v10, "GpsXtraDownloader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "HTTP error downloading gps XTRA: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_1
    const/4 v10, 0x0

    .line 144
    if-eqz v4, :cond_2

    .line 145
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 148
    .end local v8    # "statusCode":I
    :cond_2
    :goto_0
    return-object v10

    .line 128
    .restart local v8    # "statusCode":I
    :cond_3
    :try_start_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .local v6, "in":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 129
    :try_start_2
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 130
    .local v3, "bytes":Ljava/io/ByteArrayOutputStream;
    const/16 v10, 0x400

    new-array v2, v10, [B

    .line 132
    .local v2, "buffer":[B
    :cond_4
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "count":I
    const/4 v10, -0x1

    if-eq v5, v10, :cond_b

    .line 133
    const/4 v10, 0x0

    invoke-virtual {v3, v2, v10, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 134
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    int-to-long v12, v10

    const-wide/32 v14, 0xf4240

    cmp-long v10, v12, v14

    if-lez v10, :cond_4

    .line 135
    sget-boolean v10, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v10, :cond_5

    const-string v10, "GpsXtraDownloader"

    const-string v12, "XTRA file too large"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 136
    :cond_5
    const/4 v10, 0x0

    .line 140
    if-eqz v6, :cond_6

    if-eqz v11, :cond_9

    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    :cond_6
    :goto_1
    if-eqz v4, :cond_2

    .line 145
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 140
    :catch_0
    move-exception v9

    .local v9, "x2":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {v11, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 141
    .end local v2    # "buffer":[B
    .end local v3    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "count":I
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v8    # "statusCode":I
    .end local v9    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v7

    .line 142
    .local v7, "ioe":Ljava/io/IOException;
    :try_start_5
    sget-boolean v10, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v10, :cond_7

    const-string v10, "GpsXtraDownloader"

    const-string v11, "Error downloading gps XTRA: "

    invoke-static {v10, v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 144
    :cond_7
    if-eqz v4, :cond_8

    .line 145
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 148
    :cond_8
    const/4 v10, 0x0

    goto :goto_0

    .line 140
    .end local v7    # "ioe":Ljava/io/IOException;
    .restart local v2    # "buffer":[B
    .restart local v3    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "count":I
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v8    # "statusCode":I
    :cond_9
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 144
    .end local v2    # "buffer":[B
    .end local v3    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "count":I
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v8    # "statusCode":I
    :catchall_0
    move-exception v10

    if-eqz v4, :cond_a

    .line 145
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    throw v10

    .line 139
    .restart local v2    # "buffer":[B
    .restart local v3    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "count":I
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v8    # "statusCode":I
    :cond_b
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v10

    .line 140
    if-eqz v6, :cond_c

    if-eqz v11, :cond_d

    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 144
    :cond_c
    :goto_2
    if-eqz v4, :cond_2

    .line 145
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 140
    :catch_2
    move-exception v9

    .restart local v9    # "x2":Ljava/lang/Throwable;
    :try_start_9
    invoke-virtual {v11, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v9    # "x2":Ljava/lang/Throwable;
    :cond_d
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 128
    .end local v2    # "buffer":[B
    .end local v3    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "count":I
    :catch_3
    move-exception v10

    :try_start_a
    throw v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 140
    :catchall_1
    move-exception v11

    move-object/from16 v16, v11

    move-object v11, v10

    move-object/from16 v10, v16

    :goto_3
    if-eqz v6, :cond_e

    if-eqz v11, :cond_f

    :try_start_b
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_e
    :goto_4
    :try_start_c
    throw v10

    :catch_4
    move-exception v9

    .restart local v9    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v11, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v9    # "x2":Ljava/lang/Throwable;
    :cond_f
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_4

    :catchall_2
    move-exception v10

    goto :goto_3
.end method

.method downloadXtraData()[B
    .locals 4

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "result":[B
    iget v1, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 88
    .local v1, "startIndex":I
    iget-object v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 89
    const/4 v2, 0x0

    .line 105
    :goto_0
    return-object v2

    .line 93
    :cond_0
    if-nez v0, :cond_2

    .line 94
    iget-object v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/server/location/GpsXtraDownloader;->doDownload(Ljava/lang/String;)[B

    move-result-object v0

    .line 97
    iget v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 98
    iget v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    iget-object v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    array-length v3, v3

    if-ne v2, v3, :cond_1

    .line 99
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 102
    :cond_1
    iget v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    if-ne v2, v1, :cond_0

    :cond_2
    move-object v2, v0

    .line 105
    goto :goto_0
.end method
