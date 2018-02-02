.class public Lcom/aps/l;
.super Ljava/lang/Object;
.source "NetManager.java"


# static fields
.field private static a:Lcom/aps/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    sput-object v0, Lcom/aps/l;->a:Lcom/aps/l;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static a(Landroid/net/NetworkInfo;)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 770
    if-eqz p0, :cond_0

    .line 772
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 774
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 777
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 779
    :cond_0
    return v0
.end method

.method public static a()Lcom/aps/l;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/aps/l;->a:Lcom/aps/l;

    if-eqz v0, :cond_0

    .line 65
    :goto_0
    sget-object v0, Lcom/aps/l;->a:Lcom/aps/l;

    return-object v0

    .line 63
    :cond_0
    new-instance v0, Lcom/aps/l;

    invoke-direct {v0}, Lcom/aps/l;-><init>()V

    sput-object v0, Lcom/aps/l;->a:Lcom/aps/l;

    goto :goto_0
.end method

.method public static a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 790
    if-nez p0, :cond_0

    .line 793
    :goto_0
    sget-object v1, Lcom/aps/f;->l:Landroid/util/SparseArray;

    const-string/jumbo v2, "UNKNOWN"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 791
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/net/NetworkInfo;)Lorg/apache/http/client/HttpClient;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/16 v7, 0x50

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 643
    new-instance v11, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v11}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 646
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_1

    .line 733
    :cond_0
    :goto_0
    invoke-static {v8, v6}, Lcom/aps/l;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_18

    :goto_1
    const/16 v0, 0x7530

    .line 738
    invoke-static {v11, v0}, Lcom/aps/t;->a(Lorg/apache/http/params/HttpParams;I)V

    .line 739
    invoke-static {v11, v9}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 740
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 742
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v1

    .line 743
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v3, "http"

    invoke-direct {v2, v3, v1, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 744
    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 746
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v11, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 747
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1, v11}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 748
    return-object v0

    :cond_1
    const-string/jumbo v0, "content://telephony/carriers/preferapn"

    .line 647
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 648
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 651
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 652
    if-nez v2, :cond_3

    :cond_2
    move v0, v6

    move-object v1, v8

    .line 748
    :goto_2
    if-nez v2, :cond_19

    :goto_3
    move v6, v0

    move-object v8, v1

    .line 728
    goto :goto_0

    .line 652
    :cond_3
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "apn"

    .line 653
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 654
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 655
    if-nez v0, :cond_6

    .line 659
    :goto_4
    if-nez v0, :cond_8

    .line 672
    :cond_4
    if-nez v0, :cond_c

    :cond_5
    move v0, v6

    move-object v1, v8

    goto :goto_2

    .line 656
    :cond_6
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 657
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "nm|found apn:"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aput-object v0, v1, v3

    invoke-static {v1}, Lcom/aps/t;->a([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    .line 728
    :catch_0
    move-exception v0

    move-object v0, v8

    move-object v8, v2

    .line 691
    :goto_5
    :try_start_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    if-nez v1, :cond_10

    .line 726
    :cond_7
    :goto_6
    if-nez v8, :cond_1a

    :goto_7
    move-object v8, v0

    .line 728
    goto/16 :goto_0

    :cond_8
    :try_start_3
    const-string/jumbo v1, "ctwap"

    .line 659
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 660
    invoke-static {}, Lcom/aps/l;->b()Ljava/lang/String;

    move-result-object v0

    .line 662
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v9

    move-object v0, v8

    .line 668
    :goto_8
    if-eqz v1, :cond_b

    :goto_9
    move-object v1, v0

    move v0, v7

    .line 672
    goto :goto_2

    :cond_9
    const-string/jumbo v1, "null"

    .line 663
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v1

    if-eqz v1, :cond_a

    move v1, v9

    move-object v0, v8

    goto :goto_8

    :cond_a
    move v1, v10

    .line 665
    goto :goto_8

    :cond_b
    :try_start_4
    const-string/jumbo v0, "10.0.0.200"
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_9

    :cond_c
    :try_start_5
    const-string/jumbo v1, "wap"

    .line 672
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 673
    invoke-static {}, Lcom/aps/l;->b()Ljava/lang/String;

    move-result-object v0

    .line 675
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v1, v9

    move-object v0, v8

    .line 681
    :goto_a
    if-eqz v1, :cond_f

    :goto_b
    move-object v1, v0

    move v0, v7

    .line 684
    goto/16 :goto_2

    :cond_d
    const-string/jumbo v1, "null"

    .line 676
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v1

    if-eqz v1, :cond_e

    move v1, v9

    move-object v0, v8

    goto :goto_a

    :cond_e
    move v1, v10

    .line 678
    goto :goto_a

    :cond_f
    :try_start_6
    const-string/jumbo v0, "10.0.0.172"
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_b

    .line 692
    :cond_10
    :try_start_7
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 697
    invoke-static {}, Lcom/aps/l;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "ctwap"

    .line 698
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_11

    const-string/jumbo v3, "wap"

    .line 709
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v6, :cond_7

    .line 710
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v1, v9

    .line 716
    :goto_c
    if-eqz v1, :cond_17

    :goto_d
    move v6, v7

    .line 719
    goto/16 :goto_6

    .line 699
    :cond_11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    move v10, v9

    .line 705
    :goto_e
    if-eqz v10, :cond_14

    :goto_f
    move v6, v7

    .line 708
    goto/16 :goto_6

    :cond_12
    const-string/jumbo v2, "null"

    .line 700
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move v10, v9

    goto :goto_e

    :cond_13
    move-object v0, v1

    .line 702
    goto :goto_e

    :cond_14
    const-string/jumbo v0, "10.0.0.200"

    goto :goto_f

    :cond_15
    const-string/jumbo v2, "null"

    .line 711
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    move v1, v9

    goto :goto_c

    :cond_16
    move-object v0, v1

    move v1, v10

    .line 713
    goto :goto_c

    :cond_17
    const-string/jumbo v0, "10.0.0.200"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_d

    .line 728
    :catch_1
    move-exception v0

    move-object v2, v8

    .line 723
    :goto_10
    :try_start_8
    invoke-static {v0}, Lcom/aps/t;->a(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 726
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 728
    :catchall_0
    move-exception v0

    move-object v2, v8

    .line 726
    :goto_11
    if-nez v2, :cond_1b

    .line 725
    :goto_12
    throw v0

    :cond_18
    const-string/jumbo v0, "http"

    .line 735
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-direct {v1, v8, v6, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v0, "http.route.default-proxy"

    .line 736
    invoke-interface {v11, v0, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    goto/16 :goto_1

    .line 726
    :cond_19
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    :cond_1a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_7

    :cond_1b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_12

    .line 728
    :catchall_1
    move-exception v0

    goto :goto_11

    :catchall_2
    move-exception v0

    move-object v2, v8

    goto :goto_11

    :catch_2
    move-exception v0

    goto :goto_10

    :catch_3
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_10

    :catch_4
    move-exception v0

    move-object v0, v8

    goto/16 :goto_5

    :catch_5
    move-exception v1

    move-object v8, v2

    goto/16 :goto_5
.end method

.method private static a(Ljava/lang/String;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 759
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

.method private static a(Lorg/apache/http/HttpResponse;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, "Content-Encoding"

    .line 803
    invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 804
    if-nez v0, :cond_1

    .line 807
    :cond_0
    return v2

    .line 804
    :cond_1
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "gzip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    const/4 v0, 0x1

    return v0
.end method

.method public static a(Lorg/json/JSONObject;)[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x5

    .line 882
    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v7

    aput-object v2, v0, v1

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    const/4 v1, 0x4

    aput-object v2, v0, v1

    .line 883
    if-nez p0, :cond_1

    :cond_0
    const-string/jumbo v1, "false"

    .line 884
    aput-object v1, v0, v7

    .line 916
    :goto_0
    return-object v0

    .line 883
    :cond_1
    invoke-static {}, Lcom/amap/api/location/core/c;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string/jumbo v1, "key"

    .line 887
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "X-INFO"

    .line 888
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "X-BIZ"

    .line 889
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "User-Agent"

    .line 890
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 897
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_4

    .line 912
    :cond_2
    :goto_1
    aget-object v1, v0, v7

    if-nez v1, :cond_5

    :cond_3
    const-string/jumbo v1, "true"

    .line 913
    aput-object v1, v0, v7

    goto :goto_0

    .line 897
    :cond_4
    :try_start_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x0

    const-string/jumbo v6, "true"

    .line 901
    aput-object v6, v0, v5

    const/4 v5, 0x1

    .line 902
    aput-object v1, v0, v5

    const/4 v1, 0x2

    .line 903
    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 904
    aput-object v3, v0, v1

    const/4 v1, 0x4

    .line 905
    aput-object v4, v0, v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 911
    :catch_0
    move-exception v1

    goto :goto_1

    .line 912
    :cond_5
    aget-object v1, v0, v7

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0
.end method

.method private static b()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 928
    :try_start_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 936
    :goto_0
    if-eqz v0, :cond_0

    .line 939
    :goto_1
    return-object v0

    .line 935
    :catch_0
    move-exception v1

    .line 930
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "null"

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/location/core/AMapLocException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 81
    return-object v1

    .line 77
    :cond_1
    if-eqz p3, :cond_0

    .line 83
    invoke-static {p1}, Lcom/aps/t;->b(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 84
    invoke-static {v8}, Lcom/aps/l;->a(Landroid/net/NetworkInfo;)I

    move-result v1

    const/4 v2, -0x1

    .line 85
    if-eq v1, v2, :cond_2

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 96
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, ""

    .line 99
    :try_start_0
    invoke-static {p1, v8}, Lcom/aps/l;->a(Landroid/content/Context;Landroid/net/NetworkInfo;)Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_28
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v8

    .line 100
    :try_start_1
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_29
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_22
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1c
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_10
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 105
    :try_start_2
    new-instance v6, Lorg/apache/http/entity/ByteArrayEntity;

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const-string/jumbo v10, "Content-Type"

    const-string/jumbo v11, "application/x-www-form-urlencoded"

    .line 106
    invoke-virtual {v7, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "User-Agent"

    const-string/jumbo v11, "AMAP Location SDK Android 1.3.1"

    .line 107
    invoke-virtual {v7, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "Accept-Encoding"

    const-string/jumbo v11, "gzip"

    .line 108
    invoke-virtual {v7, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "Connection"

    const-string/jumbo v11, "Keep-Alive"

    .line 109
    invoke-virtual {v7, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "X-INFO"

    const/4 v11, 0x0

    .line 110
    invoke-static {v11}, Lcom/amap/api/location/core/c;->a(Landroid/content/Context;)Lcom/amap/api/location/core/c;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Lcom/amap/api/location/core/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "ia"

    const-string/jumbo v11, "1"

    .line 112
    invoke-virtual {v7, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "key"

    .line 113
    invoke-static {}, Lcom/amap/api/location/core/c;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    .line 114
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 115
    invoke-virtual {v7, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 119
    invoke-interface {v8, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 120
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_23
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1d
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_17
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_11
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v6

    const/16 v11, 0xc8

    .line 124
    if-eq v6, v11, :cond_3

    const/16 v9, 0x194

    .line 158
    if-eq v6, v9, :cond_9

    .line 245
    :goto_0
    if-nez v7, :cond_b

    .line 195
    :goto_1
    if-nez v8, :cond_c

    .line 200
    :goto_2
    if-nez v4, :cond_d

    .line 208
    :goto_3
    if-nez v5, :cond_e

    .line 220
    :goto_4
    if-nez v3, :cond_f

    .line 232
    :goto_5
    if-nez v2, :cond_10

    .line 245
    :goto_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    :goto_7
    return-object v1

    :cond_2
    const/4 v1, 0x0

    .line 86
    return-object v1

    .line 125
    :cond_3
    :try_start_3
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_23
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1d
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_17
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_11
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v6

    .line 126
    :try_start_4
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v1

    .line 127
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v1, ""

    const-string/jumbo v11, "charset="

    .line 129
    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    .line 130
    if-ne v11, v12, :cond_4

    .line 133
    :goto_8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 139
    :goto_9
    invoke-static {v10}, Lcom/aps/l;->a(Lorg/apache/http/HttpResponse;)Z
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_24
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_1e
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_18
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_12
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-result v5

    if-nez v5, :cond_6

    move-object v5, v4

    .line 145
    :goto_a
    if-nez v5, :cond_7

    .line 148
    :try_start_5
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v6, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_25
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_1f
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_19
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_13
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 150
    :goto_b
    :try_start_6
    new-instance v3, Ljava/io/BufferedReader;

    const/16 v1, 0x800

    invoke-direct {v3, v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_2a
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_26
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_20
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_1a
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_14
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :try_start_7
    const-string/jumbo v1, ""

    .line 152
    :goto_c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    .line 155
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 156
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    invoke-virtual {v9, v2, v10}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_27
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_21
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7 .. :try_end_7} :catch_1b
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_15
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    .line 158
    goto :goto_0

    .line 131
    :cond_4
    add-int/lit8 v1, v11, 0x8

    :try_start_8
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_5
    const-string/jumbo v1, "UTF-8"

    goto :goto_9

    .line 143
    :cond_6
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v5, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_24
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_1e
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_8 .. :try_end_8} :catch_18
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_12
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_a

    .line 244
    :catch_0
    move-exception v1

    move-object v5, v6

    move-object v1, v7

    move-object v6, v8

    .line 168
    :goto_d
    :try_start_9
    new-instance v7, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v8, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {v7, v8}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 189
    :catchall_0
    move-exception v7

    move-object v8, v6

    move-object v13, v1

    move-object v1, v7

    move-object v7, v13

    .line 242
    :goto_e
    if-nez v7, :cond_11

    .line 195
    :goto_f
    if-nez v8, :cond_12

    .line 200
    :goto_10
    if-nez v4, :cond_13

    .line 208
    :goto_11
    if-nez v5, :cond_14

    .line 220
    :goto_12
    if-nez v3, :cond_15

    .line 232
    :goto_13
    if-nez v2, :cond_16

    .line 191
    :goto_14
    throw v1

    .line 146
    :cond_7
    :try_start_a
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_25
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_1f
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_a .. :try_end_a} :catch_19
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_13
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_b

    .line 244
    :catch_1
    move-exception v1

    move-object v4, v5

    move-object v1, v7

    move-object v5, v6

    move-object v6, v8

    goto :goto_d

    .line 153
    :cond_8
    :try_start_b
    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_b
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_27
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_21
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_b .. :try_end_b} :catch_1b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_15
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_c

    .line 244
    :catch_2
    move-exception v1

    move-object v2, v3

    move-object v1, v7

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v8

    goto :goto_d

    .line 162
    :cond_9
    :try_start_c
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v6, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

    invoke-direct {v1, v6}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_c
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_23
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_1d
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_c .. :try_end_c} :catch_17
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_11
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 244
    :catch_3
    move-exception v1

    move-object v1, v7

    move-object v6, v8

    goto :goto_d

    .line 168
    :catch_4
    move-exception v1

    move-object v8, v7

    move-object v7, v6

    .line 173
    :goto_15
    :try_start_d
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v6, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-direct {v1, v6}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :catchall_1
    move-exception v1

    goto :goto_e

    .line 173
    :catch_5
    move-exception v1

    move-object v8, v7

    move-object v7, v6

    .line 178
    :goto_16
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v6, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-direct {v1, v6}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_6
    move-exception v1

    move-object v8, v7

    move-object v7, v6

    .line 183
    :goto_17
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v6, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v1, v6}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_7
    move-exception v1

    move-object v8, v7

    move-object v7, v6

    .line 185
    :goto_18
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 189
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v6, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v1, v6}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_a
    const/4 v1, 0x0

    .line 245
    goto/16 :goto_7

    .line 192
    :cond_b
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    goto/16 :goto_1

    .line 196
    :cond_c
    invoke-interface {v8}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_2

    .line 202
    :cond_d
    :try_start_e
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_8

    goto/16 :goto_3

    .line 205
    :catch_8
    move-exception v4

    goto/16 :goto_3

    .line 210
    :cond_e
    :try_start_f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_9

    goto/16 :goto_4

    .line 217
    :catch_9
    move-exception v4

    .line 213
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    .line 222
    :cond_f
    :try_start_10
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_a

    goto/16 :goto_5

    .line 229
    :catch_a
    move-exception v3

    .line 225
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5

    .line 234
    :cond_10
    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_b

    goto/16 :goto_6

    .line 241
    :catch_b
    move-exception v2

    .line 237
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_6

    .line 192
    :cond_11
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    goto/16 :goto_f

    .line 196
    :cond_12
    invoke-interface {v8}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_10

    .line 202
    :cond_13
    :try_start_12
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_c

    goto/16 :goto_11

    .line 205
    :catch_c
    move-exception v4

    goto/16 :goto_11

    .line 210
    :cond_14
    :try_start_13
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_d

    goto/16 :goto_12

    .line 217
    :catch_d
    move-exception v4

    .line 213
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_12

    .line 222
    :cond_15
    :try_start_14
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_e

    goto/16 :goto_13

    .line 229
    :catch_e
    move-exception v3

    .line 225
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_13

    .line 234
    :cond_16
    :try_start_15
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_f

    goto/16 :goto_14

    .line 241
    :catch_f
    move-exception v2

    .line 237
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_14

    .line 189
    :catchall_2
    move-exception v1

    move-object v8, v7

    move-object v7, v6

    goto/16 :goto_e

    :catchall_3
    move-exception v1

    move-object v7, v6

    goto/16 :goto_e

    :catchall_4
    move-exception v1

    move-object v5, v6

    goto/16 :goto_e

    :catchall_5
    move-exception v1

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_e

    :catchall_6
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_e

    :catchall_7
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_e

    .line 183
    :catch_10
    move-exception v1

    move-object v7, v6

    goto/16 :goto_18

    :catch_11
    move-exception v1

    goto/16 :goto_18

    :catch_12
    move-exception v1

    move-object v5, v6

    goto/16 :goto_18

    :catch_13
    move-exception v1

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_18

    :catch_14
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_18

    :catch_15
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_18

    .line 178
    :catch_16
    move-exception v1

    move-object v7, v6

    goto/16 :goto_17

    :catch_17
    move-exception v1

    goto/16 :goto_17

    :catch_18
    move-exception v1

    move-object v5, v6

    goto/16 :goto_17

    :catch_19
    move-exception v1

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_17

    :catch_1a
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_17

    :catch_1b
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_17

    .line 173
    :catch_1c
    move-exception v1

    move-object v7, v6

    goto/16 :goto_16

    :catch_1d
    move-exception v1

    goto/16 :goto_16

    :catch_1e
    move-exception v1

    move-object v5, v6

    goto/16 :goto_16

    :catch_1f
    move-exception v1

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_16

    :catch_20
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_16

    :catch_21
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_16

    .line 168
    :catch_22
    move-exception v1

    move-object v7, v6

    goto/16 :goto_15

    :catch_23
    move-exception v1

    goto/16 :goto_15

    :catch_24
    move-exception v1

    move-object v5, v6

    goto/16 :goto_15

    :catch_25
    move-exception v1

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_15

    :catch_26
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_15

    :catch_27
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_15

    .line 244
    :catch_28
    move-exception v1

    move-object v1, v6

    move-object v6, v7

    goto/16 :goto_d

    :catch_29
    move-exception v1

    move-object v1, v6

    move-object v6, v8

    goto/16 :goto_d

    :catch_2a
    move-exception v1

    move-object v3, v4

    move-object v1, v7

    move-object v4, v5

    move-object v5, v6

    move-object v6, v8

    goto/16 :goto_d
.end method

.method public a([BLandroid/content/Context;)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string/jumbo v9, ""

    .line 952
    invoke-static/range {p2 .. p2}, Lcom/aps/t;->b(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v11

    .line 953
    invoke-static {v11}, Lcom/aps/l;->a(Landroid/net/NetworkInfo;)I

    move-result v1

    const/4 v2, -0x1

    .line 966
    if-eq v1, v2, :cond_1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 978
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 979
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "http://cgicol.amap.com/collection/writedata?ver=v1.0_ali&"

    .line 980
    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "zei="

    .line 981
    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/aps/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "&zsi="

    .line 982
    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/aps/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v10, v1

    move v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    :goto_0
    const/4 v9, 0x1

    .line 984
    if-lt v10, v9, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 1069
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const-string/jumbo v1, ""

    .line 1071
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :goto_1
    return-object v7

    :cond_1
    const/4 v1, 0x0

    .line 970
    return-object v1

    .line 985
    :cond_2
    if-nez v1, :cond_0

    .line 993
    :try_start_0
    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/aps/l;->a(Landroid/content/Context;Landroid/net/NetworkInfo;)Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_16
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 994
    :try_start_1
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_17
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, 0x0

    .line 999
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    invoke-virtual {v2, v6, v13}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const-string/jumbo v6, "application/soap+xml;charset="

    .line 1000
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v6, "UTF-8"

    .line 1001
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    .line 1002
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    invoke-virtual {v2, v6, v13}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const-string/jumbo v6, "gzipped"

    const-string/jumbo v13, "1"

    .line 1003
    invoke-virtual {v8, v6, v13}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    invoke-static/range {p1 .. p1}, Lcom/aps/t;->a([B)[B

    move-result-object v6

    .line 1008
    new-instance v13, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v13, v6}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const-string/jumbo v6, "application/octet-stream"

    .line 1009
    invoke-virtual {v13, v6}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 1010
    invoke-virtual {v8, v13}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1011
    invoke-interface {v9, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 1012
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    const/16 v14, 0xc8

    .line 1016
    if-eq v13, v14, :cond_4

    move-object v6, v7

    .line 1071
    :goto_2
    if-nez v8, :cond_8

    move-object v7, v8

    .line 1050
    :goto_3
    if-nez v9, :cond_9

    move-object v8, v9

    .line 1055
    :goto_4
    if-nez v5, :cond_a

    .line 1059
    :goto_5
    if-nez v4, :cond_b

    .line 1063
    :goto_6
    if-nez v3, :cond_c

    :goto_7
    move-object v15, v7

    move-object v7, v8

    move-object v8, v6

    move-object v6, v15

    .line 984
    :cond_3
    :goto_8
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    move-object v15, v7

    move-object v7, v8

    move-object v8, v15

    goto/16 :goto_0

    .line 1017
    :cond_4
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_18
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v6

    .line 1018
    :try_start_3
    new-instance v5, Ljava/io/InputStreamReader;

    const-string/jumbo v13, "UTF-8"

    invoke-direct {v5, v6, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_19
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1019
    :try_start_4
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v13, 0x800

    invoke-direct {v4, v5, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_1a
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_13
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    const-string/jumbo v3, ""

    .line 1021
    :goto_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    .line 1024
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_14
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-result-object v3

    const/4 v7, 0x0

    .line 1025
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    invoke-virtual {v2, v7, v13}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_1b
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_15
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const/4 v2, 0x0

    const/4 v1, 0x1

    move-object v15, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v3

    move-object v3, v15

    .line 1027
    goto :goto_2

    .line 1022
    :cond_5
    :try_start_7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_14
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_9

    .line 1067
    :catch_0
    move-exception v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v8

    move-object v8, v7

    move-object v7, v9

    .line 1065
    :goto_a
    if-nez v6, :cond_d

    .line 1050
    :goto_b
    if-nez v7, :cond_e

    .line 1055
    :goto_c
    if-nez v5, :cond_f

    .line 1059
    :goto_d
    if-nez v4, :cond_10

    .line 1063
    :goto_e
    if-eqz v3, :cond_3

    .line 1064
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    const/4 v3, 0x0

    .line 1065
    goto :goto_8

    .line 1067
    :catch_1
    move-exception v9

    move-object v9, v8

    move-object v8, v6

    .line 1065
    :goto_f
    if-nez v8, :cond_11

    move-object v6, v8

    .line 1050
    :goto_10
    if-nez v9, :cond_12

    move-object v8, v9

    .line 1055
    :goto_11
    if-nez v5, :cond_13

    .line 1059
    :goto_12
    if-nez v4, :cond_14

    .line 1063
    :goto_13
    if-nez v3, :cond_15

    :cond_6
    :goto_14
    move-object v15, v8

    move-object v8, v7

    move-object v7, v15

    .line 1067
    goto :goto_8

    :catchall_0
    move-exception v1

    move-object v9, v8

    move-object v8, v6

    .line 1065
    :goto_15
    if-nez v8, :cond_1e

    .line 1050
    :goto_16
    if-nez v9, :cond_1f

    .line 1055
    :goto_17
    if-nez v5, :cond_20

    .line 1059
    :goto_18
    if-nez v4, :cond_21

    .line 1063
    :goto_19
    if-nez v3, :cond_22

    .line 1046
    :goto_1a
    throw v1

    :cond_7
    const/4 v7, 0x0

    .line 1071
    goto/16 :goto_1

    .line 1047
    :cond_8
    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    const/4 v7, 0x0

    .line 1048
    goto/16 :goto_3

    .line 1051
    :cond_9
    invoke-interface {v9}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v8, 0x0

    .line 1052
    goto/16 :goto_4

    .line 1056
    :cond_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    const/4 v5, 0x0

    .line 1057
    goto/16 :goto_5

    .line 1060
    :cond_b
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    const/4 v4, 0x0

    .line 1061
    goto/16 :goto_6

    .line 1064
    :cond_c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    const/4 v3, 0x0

    .line 1065
    goto/16 :goto_7

    .line 1047
    :cond_d
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    const/4 v6, 0x0

    .line 1048
    goto :goto_b

    .line 1051
    :cond_e
    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v7, 0x0

    .line 1052
    goto :goto_c

    .line 1056
    :cond_f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    const/4 v5, 0x0

    .line 1057
    goto :goto_d

    .line 1060
    :cond_10
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    const/4 v4, 0x0

    .line 1061
    goto :goto_e

    .line 1047
    :cond_11
    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    const/4 v6, 0x0

    .line 1048
    goto :goto_10

    .line 1051
    :cond_12
    invoke-interface {v9}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v8, 0x0

    .line 1052
    goto :goto_11

    .line 1056
    :cond_13
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    const/4 v5, 0x0

    .line 1057
    goto :goto_12

    .line 1060
    :cond_14
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    const/4 v4, 0x0

    .line 1061
    goto :goto_13

    .line 1064
    :cond_15
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    const/4 v3, 0x0

    .line 1065
    goto :goto_14

    .line 1067
    :catch_2
    move-exception v9

    move-object v9, v8

    move-object v8, v6

    .line 1065
    :goto_1b
    if-nez v8, :cond_16

    move-object v6, v8

    .line 1050
    :goto_1c
    if-nez v9, :cond_17

    move-object v8, v9

    .line 1055
    :goto_1d
    if-nez v5, :cond_18

    .line 1059
    :goto_1e
    if-nez v4, :cond_19

    .line 1063
    :goto_1f
    if-eqz v3, :cond_6

    .line 1064
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    const/4 v3, 0x0

    .line 1065
    goto :goto_14

    .line 1047
    :cond_16
    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    const/4 v6, 0x0

    .line 1048
    goto :goto_1c

    .line 1051
    :cond_17
    invoke-interface {v9}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v8, 0x0

    .line 1052
    goto :goto_1d

    .line 1056
    :cond_18
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    const/4 v5, 0x0

    .line 1057
    goto :goto_1e

    .line 1060
    :cond_19
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    const/4 v4, 0x0

    .line 1061
    goto :goto_1f

    .line 1067
    :catch_3
    move-exception v9

    move-object v9, v8

    move-object v8, v6

    .line 1065
    :goto_20
    if-nez v8, :cond_1a

    move-object v6, v8

    .line 1050
    :goto_21
    if-nez v9, :cond_1b

    move-object v8, v9

    .line 1055
    :goto_22
    if-nez v5, :cond_1c

    .line 1059
    :goto_23
    if-nez v4, :cond_1d

    .line 1063
    :goto_24
    if-eqz v3, :cond_6

    .line 1064
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    const/4 v3, 0x0

    .line 1065
    goto/16 :goto_14

    .line 1047
    :cond_1a
    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    const/4 v6, 0x0

    .line 1048
    goto :goto_21

    .line 1051
    :cond_1b
    invoke-interface {v9}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v8, 0x0

    .line 1052
    goto :goto_22

    .line 1056
    :cond_1c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    const/4 v5, 0x0

    .line 1057
    goto :goto_23

    .line 1060
    :cond_1d
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    const/4 v4, 0x0

    .line 1061
    goto :goto_24

    .line 1047
    :cond_1e
    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    goto/16 :goto_16

    .line 1051
    :cond_1f
    invoke-interface {v9}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_17

    .line 1056
    :cond_20
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto/16 :goto_18

    .line 1060
    :cond_21
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    goto/16 :goto_19

    .line 1064
    :cond_22
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto/16 :goto_1a

    .line 1067
    :catchall_1
    move-exception v1

    move-object v8, v6

    goto/16 :goto_15

    :catchall_2
    move-exception v1

    goto/16 :goto_15

    :catchall_3
    move-exception v1

    move-object v5, v6

    goto/16 :goto_15

    :catchall_4
    move-exception v1

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_15

    :catchall_5
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_15

    :catch_4
    move-exception v8

    move-object v8, v6

    goto :goto_20

    :catch_5
    move-exception v6

    goto :goto_20

    :catch_6
    move-exception v5

    move-object v5, v6

    goto :goto_20

    :catch_7
    move-exception v4

    move-object v4, v5

    move-object v5, v6

    goto :goto_20

    :catch_8
    move-exception v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto :goto_20

    :catch_9
    move-exception v7

    move-object v7, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto :goto_20

    :catch_a
    move-exception v8

    move-object v8, v6

    goto/16 :goto_1b

    :catch_b
    move-exception v6

    goto/16 :goto_1b

    :catch_c
    move-exception v5

    move-object v5, v6

    goto/16 :goto_1b

    :catch_d
    move-exception v4

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_1b

    :catch_e
    move-exception v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_1b

    :catch_f
    move-exception v7

    move-object v7, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_1b

    :catch_10
    move-exception v8

    move-object v8, v6

    goto/16 :goto_f

    :catch_11
    move-exception v6

    goto/16 :goto_f

    :catch_12
    move-exception v5

    move-object v5, v6

    goto/16 :goto_f

    :catch_13
    move-exception v4

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_f

    :catch_14
    move-exception v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_f

    :catch_15
    move-exception v7

    move-object v7, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_f

    :catch_16
    move-exception v9

    move-object v15, v8

    move-object v8, v7

    move-object v7, v15

    goto/16 :goto_a

    :catch_17
    move-exception v8

    move-object v8, v7

    move-object v7, v9

    goto/16 :goto_a

    :catch_18
    move-exception v6

    move-object v6, v8

    move-object v8, v7

    move-object v7, v9

    goto/16 :goto_a

    :catch_19
    move-exception v5

    move-object v5, v6

    move-object v6, v8

    move-object v8, v7

    move-object v7, v9

    goto/16 :goto_a

    :catch_1a
    move-exception v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v8

    move-object v8, v7

    move-object v7, v9

    goto/16 :goto_a

    :catch_1b
    move-exception v7

    move-object v7, v9

    move-object v15, v5

    move-object v5, v6

    move-object v6, v8

    move-object v8, v3

    move-object v3, v4

    move-object v4, v15

    goto/16 :goto_a
.end method

.method public a([BLandroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 405
    invoke-static/range {p2 .. p2}, Lcom/aps/t;->b(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v13

    .line 406
    invoke-static {v13}, Lcom/aps/l;->a(Landroid/net/NetworkInfo;)I

    move-result v1

    const/4 v2, -0x1

    .line 407
    if-eq v1, v2, :cond_1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 419
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, ""

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v12, v1

    move v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    :goto_0
    const/4 v10, 0x1

    .line 422
    if-lt v12, v10, :cond_2

    .line 628
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    :goto_1
    return-object v2

    .line 408
    :cond_1
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v2, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v1, v2}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 423
    :cond_2
    if-nez v1, :cond_0

    .line 430
    :try_start_0
    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/aps/l;->a(Landroid/content/Context;Landroid/net/NetworkInfo;)Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_24
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1e
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v10

    .line 431
    :try_start_1
    invoke-static/range {p3 .. p3}, Lcom/aps/l;->a(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v14

    .line 439
    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {}, Lcom/amap/api/location/core/c;->j()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_25
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1f
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_18
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    const-string/jumbo v11, "UTF-8"

    .line 470
    invoke-static/range {p1 .. p1}, Lcom/aps/t;->a([B)[B

    move-result-object v8

    .line 481
    new-instance v15, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v15, v8}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const-string/jumbo v8, "application/octet-stream"

    .line 482
    invoke-virtual {v15, v8}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    const-string/jumbo v8, "Accept-Encoding"

    const-string/jumbo v16, "gzip"

    .line 490
    move-object/from16 v0, v16

    invoke-virtual {v9, v8, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "gzipped"

    const-string/jumbo v16, "1"

    .line 492
    move-object/from16 v0, v16

    invoke-virtual {v9, v8, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "X-INFO"

    const/16 v16, 0x2

    .line 494
    aget-object v16, v14, v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v8, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "X-BIZ"

    const/16 v16, 0x3

    .line 495
    aget-object v16, v14, v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v8, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "KEY"

    const/16 v16, 0x1

    .line 496
    aget-object v16, v14, v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v8, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "ec"

    const-string/jumbo v16, "1"

    .line 497
    move-object/from16 v0, v16

    invoke-virtual {v9, v8, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "enginever"

    const-string/jumbo v16, "4.2"

    .line 498
    move-object/from16 v0, v16

    invoke-virtual {v9, v8, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x4

    .line 499
    aget-object v8, v14, v8

    if-nez v8, :cond_4

    .line 502
    :cond_3
    :goto_2
    invoke-static {}, Lcom/amap/api/location/core/d;->a()Ljava/lang/String;

    move-result-object v8

    .line 503
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "key="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x1

    aget-object v14, v14, v17

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Lcom/amap/api/location/core/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v16, "ts"

    .line 505
    move-object/from16 v0, v16

    invoke-virtual {v9, v0, v8}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "scode"

    .line 506
    invoke-virtual {v9, v8, v14}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    .line 507
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    invoke-virtual {v3, v8, v14}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 508
    invoke-virtual {v9, v15}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 512
    invoke-interface {v10, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 513
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v15, 0xc8

    .line 517
    if-eq v8, v15, :cond_5

    const/16 v11, 0x194

    .line 552
    if-eq v8, v11, :cond_b

    .line 628
    :goto_3
    if-nez v9, :cond_d

    .line 588
    :goto_4
    if-nez v10, :cond_e

    .line 594
    :goto_5
    if-nez v6, :cond_f

    .line 606
    :goto_6
    if-nez v7, :cond_10

    .line 618
    :goto_7
    if-nez v5, :cond_11

    .line 622
    :goto_8
    if-nez v4, :cond_12

    .line 422
    :goto_9
    add-int/lit8 v8, v12, 0x1

    move v12, v8

    move-object v8, v9

    move-object v9, v10

    goto/16 :goto_0

    :cond_4
    const/4 v8, 0x4

    .line 499
    aget-object v8, v14, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    const-string/jumbo v8, "User-Agent"

    const/16 v16, 0x4

    .line 500
    aget-object v16, v14, v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v8, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_19
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 626
    :catch_0
    move-exception v1

    move-object v1, v9

    move-object v2, v10

    .line 562
    :goto_a
    :try_start_3
    new-instance v3, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v8, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {v3, v8}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 582
    :catchall_0
    move-exception v3

    move-object v9, v1

    move-object v10, v2

    move-object v1, v3

    .line 624
    :goto_b
    if-nez v9, :cond_13

    .line 588
    :goto_c
    if-nez v10, :cond_14

    .line 594
    :goto_d
    if-nez v6, :cond_15

    .line 606
    :goto_e
    if-nez v7, :cond_16

    .line 618
    :goto_f
    if-nez v5, :cond_17

    .line 622
    :goto_10
    if-nez v4, :cond_18

    .line 584
    :goto_11
    throw v1

    .line 518
    :cond_5
    :try_start_4
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_19
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_13
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v8

    .line 519
    :try_start_5
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v1

    .line 520
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, ""

    const-string/jumbo v7, "charset="

    .line 522
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v15, -0x1

    .line 523
    if-ne v7, v15, :cond_6

    .line 526
    :goto_12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 532
    :goto_13
    invoke-static {v14}, Lcom/aps/l;->a(Lorg/apache/http/HttpResponse;)Z
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_20
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_1a
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_14
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_e
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-result v2

    if-nez v2, :cond_8

    move-object v7, v6

    .line 538
    :goto_14
    if-nez v7, :cond_9

    .line 541
    :try_start_6
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v8, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_21
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_1b
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_15
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_f
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 543
    :goto_15
    :try_start_7
    new-instance v5, Ljava/io/BufferedReader;

    const/16 v1, 0x800

    invoke-direct {v5, v6, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_26
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_22
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_1c
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7 .. :try_end_7} :catch_16
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_10
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :try_start_8
    const-string/jumbo v1, ""

    .line 545
    :goto_16
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    .line 548
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    .line 549
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_23
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_1d
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_8 .. :try_end_8} :catch_17
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_11
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    const/4 v3, 0x0

    const/4 v1, 0x1

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    .line 552
    goto/16 :goto_3

    .line 524
    :cond_6
    add-int/lit8 v1, v7, 0x8

    :try_start_9
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    :cond_7
    move-object v1, v11

    .line 527
    goto :goto_13

    .line 536
    :cond_8
    new-instance v7, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v7, v8}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_20
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_1a
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_9 .. :try_end_9} :catch_14
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_e
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_14

    .line 626
    :catch_1
    move-exception v1

    move-object v7, v8

    move-object v1, v9

    move-object v2, v10

    goto/16 :goto_a

    .line 539
    :cond_9
    :try_start_a
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v7, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_21
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_1b
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_a .. :try_end_a} :catch_15
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_f
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_15

    .line 626
    :catch_2
    move-exception v1

    move-object v6, v7

    move-object v1, v9

    move-object v2, v10

    move-object v7, v8

    goto/16 :goto_a

    .line 546
    :cond_a
    :try_start_b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_b
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_23
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_1d
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_b .. :try_end_b} :catch_17
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_11
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_16

    .line 626
    :catch_3
    move-exception v1

    move-object v4, v5

    move-object v1, v9

    move-object v2, v10

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_a

    .line 556
    :cond_b
    :try_start_c
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v2, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

    invoke-direct {v1, v2}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_c
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_19
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_c .. :try_end_c} :catch_13
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_d
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 562
    :catch_4
    move-exception v1

    .line 567
    :goto_17
    :try_start_d
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v2, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-direct {v1, v2}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 582
    :catchall_1
    move-exception v1

    goto/16 :goto_b

    .line 567
    :catch_5
    move-exception v1

    move-object v10, v9

    move-object v9, v8

    .line 572
    :goto_18
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v2, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-direct {v1, v2}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_6
    move-exception v1

    move-object v10, v9

    move-object v9, v8

    .line 577
    :goto_19
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v2, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v1, v2}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_7
    move-exception v1

    move-object v10, v9

    move-object v9, v8

    .line 582
    :goto_1a
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v2, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v1, v2}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_c
    const/4 v2, 0x0

    .line 628
    goto/16 :goto_1

    .line 585
    :cond_d
    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    const/4 v9, 0x0

    .line 586
    goto/16 :goto_4

    .line 589
    :cond_e
    invoke-interface {v10}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v10, 0x0

    .line 590
    goto/16 :goto_5

    .line 596
    :cond_f
    :try_start_e
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_8

    :goto_1b
    const/4 v6, 0x0

    .line 604
    goto/16 :goto_6

    .line 603
    :catch_8
    move-exception v6

    .line 599
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1b

    .line 608
    :cond_10
    :try_start_f
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_9

    :goto_1c
    const/4 v7, 0x0

    .line 616
    goto/16 :goto_7

    .line 615
    :catch_9
    move-exception v7

    .line 611
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1c

    .line 619
    :cond_11
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    const/4 v5, 0x0

    .line 620
    goto/16 :goto_8

    .line 623
    :cond_12
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    const/4 v4, 0x0

    .line 624
    goto/16 :goto_9

    .line 585
    :cond_13
    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    goto/16 :goto_c

    .line 589
    :cond_14
    invoke-interface {v10}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_d

    .line 596
    :cond_15
    :try_start_10
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_a

    goto/16 :goto_e

    .line 603
    :catch_a
    move-exception v2

    .line 599
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_e

    .line 608
    :cond_16
    :try_start_11
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_b

    goto/16 :goto_f

    .line 615
    :catch_b
    move-exception v2

    .line 611
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_f

    .line 619
    :cond_17
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    goto/16 :goto_10

    .line 623
    :cond_18
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    goto/16 :goto_11

    .line 582
    :catchall_2
    move-exception v1

    move-object v10, v9

    move-object v9, v8

    goto/16 :goto_b

    :catchall_3
    move-exception v1

    move-object v9, v8

    goto/16 :goto_b

    :catchall_4
    move-exception v1

    move-object v7, v8

    goto/16 :goto_b

    :catchall_5
    move-exception v1

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_b

    :catchall_6
    move-exception v1

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_b

    :catchall_7
    move-exception v1

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_b

    .line 577
    :catch_c
    move-exception v1

    move-object v9, v8

    goto/16 :goto_1a

    :catch_d
    move-exception v1

    goto/16 :goto_1a

    :catch_e
    move-exception v1

    move-object v7, v8

    goto/16 :goto_1a

    :catch_f
    move-exception v1

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_1a

    :catch_10
    move-exception v1

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_1a

    :catch_11
    move-exception v1

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_1a

    .line 572
    :catch_12
    move-exception v1

    move-object v9, v8

    goto/16 :goto_19

    :catch_13
    move-exception v1

    goto/16 :goto_19

    :catch_14
    move-exception v1

    move-object v7, v8

    goto/16 :goto_19

    :catch_15
    move-exception v1

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_19

    :catch_16
    move-exception v1

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_19

    :catch_17
    move-exception v1

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_19

    .line 567
    :catch_18
    move-exception v1

    move-object v9, v8

    goto/16 :goto_18

    :catch_19
    move-exception v1

    goto/16 :goto_18

    :catch_1a
    move-exception v1

    move-object v7, v8

    goto/16 :goto_18

    :catch_1b
    move-exception v1

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_18

    :catch_1c
    move-exception v1

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_18

    :catch_1d
    move-exception v1

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_18

    .line 562
    :catch_1e
    move-exception v1

    move-object v10, v9

    move-object v9, v8

    goto/16 :goto_17

    :catch_1f
    move-exception v1

    move-object v9, v8

    goto/16 :goto_17

    :catch_20
    move-exception v1

    move-object v7, v8

    goto/16 :goto_17

    :catch_21
    move-exception v1

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_17

    :catch_22
    move-exception v1

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_17

    :catch_23
    move-exception v1

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_17

    .line 626
    :catch_24
    move-exception v1

    move-object v1, v8

    move-object v2, v9

    goto/16 :goto_a

    :catch_25
    move-exception v1

    move-object v1, v8

    move-object v2, v10

    goto/16 :goto_a

    :catch_26
    move-exception v1

    move-object v5, v6

    move-object v1, v9

    move-object v2, v10

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_a
.end method
