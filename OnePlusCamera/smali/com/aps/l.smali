.class public Lcom/aps/l;
.super Ljava/lang/Object;
.source "NetManager.java"


# static fields
.field private static a:Lcom/aps/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

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

    .line 769
    .line 770
    if-nez p0, :cond_1

    .line 779
    :cond_0
    :goto_0
    return v0

    .line 772
    :cond_1
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

    goto :goto_0
.end method

.method public static a()Lcom/aps/l;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/aps/l;->a:Lcom/aps/l;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/aps/l;

    invoke-direct {v0}, Lcom/aps/l;-><init>()V

    sput-object v0, Lcom/aps/l;->a:Lcom/aps/l;

    .line 65
    :cond_0
    sget-object v0, Lcom/aps/l;->a:Lcom/aps/l;

    return-object v0
.end method

.method public static a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 789
    const/4 v0, 0x0

    .line 790
    if-eqz p0, :cond_0

    .line 791
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 793
    :cond_0
    sget-object v1, Lcom/aps/f;->l:Landroid/util/SparseArray;

    const-string v2, "UNKNOWN"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
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

    const/16 v8, 0x50

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 643
    new-instance v11, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v11}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 646
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_11

    .line 647
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 648
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 651
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 652
    if-eqz v2, :cond_f

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 653
    const-string v0, "apn"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 654
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 655
    if-eqz v0, :cond_0

    .line 656
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 657
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "nm|found apn:"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aput-object v0, v1, v3

    invoke-static {v1}, Lcom/aps/t;->a([Ljava/lang/Object;)V

    .line 659
    :cond_0
    if-eqz v0, :cond_4

    const-string v1, "ctwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 660
    invoke-static {}, Lcom/aps/l;->b()Ljava/lang/String;

    move-result-object v0

    .line 662
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 663
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-nez v1, :cond_10

    move v1, v9

    .line 668
    :goto_0
    if-nez v1, :cond_1

    .line 669
    :try_start_2
    const-string v0, "10.0.0.200"
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    move-object v1, v0

    move v0, v8

    .line 725
    :goto_1
    if-eqz v2, :cond_2

    .line 726
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 733
    :cond_2
    :goto_2
    invoke-static {v1, v0}, Lcom/aps/l;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 734
    const-string v2, "http"

    .line 735
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-direct {v3, v1, v0, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 736
    const-string v0, "http.route.default-proxy"

    invoke-interface {v11, v0, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 738
    :cond_3
    const/16 v0, 0x7530

    invoke-static {v11, v0}, Lcom/aps/t;->a(Lorg/apache/http/params/HttpParams;I)V

    .line 739
    invoke-static {v11, v10}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 740
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 742
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v1

    .line 743
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-direct {v2, v3, v1, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

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

    .line 672
    :cond_4
    if-eqz v0, :cond_f

    :try_start_3
    const-string v1, "wap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 673
    invoke-static {}, Lcom/aps/l;->b()Ljava/lang/String;

    move-result-object v0

    .line 675
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 676
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v1

    if-nez v1, :cond_e

    move v1, v9

    .line 681
    :goto_3
    if-nez v1, :cond_5

    .line 682
    :try_start_4
    const-string v0, "10.0.0.172"
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_5
    move-object v1, v0

    move v0, v8

    .line 684
    goto :goto_1

    .line 687
    :catch_0
    move-exception v0

    move-object v0, v7

    .line 691
    :goto_4
    :try_start_5
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 692
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 697
    invoke-static {}, Lcom/aps/l;->b()Ljava/lang/String;

    move-result-object v1

    .line 698
    const-string v3, "ctwap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_7

    .line 699
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 700
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move-object v0, v1

    .line 705
    :goto_5
    if-nez v9, :cond_6

    .line 706
    const-string v0, "10.0.0.200"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_6
    move-object v1, v0

    move v0, v8

    .line 725
    :goto_6
    if-eqz v7, :cond_2

    .line 726
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 709
    :cond_7
    :try_start_6
    const-string v3, "wap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v6, :cond_c

    .line 710
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 711
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move-object v0, v1

    move v1, v9

    .line 716
    :goto_7
    if-nez v1, :cond_8

    .line 717
    const-string v0, "10.0.0.200"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_8
    move-object v1, v0

    move v0, v8

    .line 719
    goto :goto_6

    .line 722
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v2, v7

    move-object v0, v7

    .line 723
    :goto_8
    :try_start_7
    invoke-static {v1}, Lcom/aps/t;->a(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 725
    if-eqz v2, :cond_9

    .line 726
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_9
    move-object v1, v0

    move v0, v6

    .line 728
    goto/16 :goto_2

    .line 725
    :catchall_0
    move-exception v0

    move-object v2, v7

    :goto_9
    if-eqz v2, :cond_a

    .line 726
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 725
    :cond_a
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v2, v7

    goto :goto_9

    .line 722
    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_8

    .line 687
    :catch_4
    move-exception v0

    move-object v0, v7

    move-object v7, v2

    goto :goto_4

    :catch_5
    move-exception v1

    move-object v7, v2

    goto :goto_4

    :cond_b
    move v1, v10

    goto :goto_7

    :cond_c
    move-object v1, v0

    move v0, v6

    goto :goto_6

    :cond_d
    move v9, v10

    goto :goto_5

    :cond_e
    move v1, v10

    move-object v0, v7

    goto/16 :goto_3

    :cond_f
    move v0, v6

    move-object v1, v7

    goto/16 :goto_1

    :cond_10
    move v1, v10

    move-object v0, v7

    goto/16 :goto_0

    :cond_11
    move v0, v6

    move-object v1, v7

    goto/16 :goto_2
.end method

.method private static a(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 759
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lorg/apache/http/HttpResponse;)Z
    .locals 2

    .prologue
    .line 803
    const-string v0, "Content-Encoding"

    invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 804
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gzip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    const/4 v0, 0x1

    .line 807
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;)[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 882
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v7

    aput-object v2, v0, v1

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    const/4 v1, 0x4

    aput-object v2, v0, v1

    .line 883
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/amap/api/location/core/c;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 884
    :cond_0
    const-string v1, "false"

    aput-object v1, v0, v7

    .line 916
    :cond_1
    :goto_0
    return-object v0

    .line 887
    :cond_2
    :try_start_0
    const-string v1, "key"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 888
    const-string v2, "X-INFO"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 889
    const-string v3, "X-BIZ"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 890
    const-string v4, "User-Agent"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 897
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 901
    const/4 v5, 0x0

    const-string v6, "true"

    aput-object v6, v0, v5

    .line 902
    const/4 v5, 0x1

    aput-object v1, v0, v5

    .line 903
    const/4 v1, 0x2

    aput-object v2, v0, v1

    .line 904
    const/4 v1, 0x3

    aput-object v3, v0, v1

    .line 905
    const/4 v1, 0x4

    aput-object v4, v0, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    :cond_3
    :goto_1
    aget-object v1, v0, v7

    if-eqz v1, :cond_4

    aget-object v1, v0, v7

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 913
    :cond_4
    const-string v1, "true"

    aput-object v1, v0, v7

    goto :goto_0

    .line 907
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 928
    :try_start_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 936
    :goto_0
    if-nez v0, :cond_0

    .line 937
    const-string v0, "null"

    .line 939
    :cond_0
    return-object v0

    .line 929
    :catch_0
    move-exception v0

    .line 930
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 934
    const/4 v0, 0x0

    goto :goto_0
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

    if-nez v1, :cond_0

    if-nez p3, :cond_2

    .line 81
    :cond_0
    const/4 v1, 0x0

    .line 245
    :cond_1
    :goto_0
    return-object v1

    .line 83
    :cond_2
    invoke-static {p1}, Lcom/aps/t;->b(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v7

    .line 84
    invoke-static {v7}, Lcom/aps/l;->a(Landroid/net/NetworkInfo;)I

    move-result v1

    .line 85
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 86
    const/4 v1, 0x0

    goto :goto_0

    .line 88
    :cond_3
    const/4 v6, 0x0

    .line 89
    const/4 v5, 0x0

    .line 92
    const/4 v4, 0x0

    .line 93
    const/4 v3, 0x0

    .line 94
    const/4 v2, 0x0

    .line 95
    const/4 v1, 0x0

    .line 96
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 97
    const-string v8, ""

    .line 99
    :try_start_0
    invoke-static {p1, v7}, Lcom/aps/l;->a(Landroid/content/Context;Landroid/net/NetworkInfo;)Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_27
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v7

    .line 100
    :try_start_1
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_28
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_21
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1b
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 105
    :try_start_2
    new-instance v5, Lorg/apache/http/entity/ByteArrayEntity;

    move-object/from16 v0, p3

    invoke-direct {v5, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 106
    const-string v10, "Content-Type"

    const-string v11, "application/x-www-form-urlencoded"

    invoke-virtual {v6, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v10, "User-Agent"

    const-string v11, "AMAP Location SDK Android 1.3.1"

    invoke-virtual {v6, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v10, "Accept-Encoding"

    const-string v11, "gzip"

    invoke-virtual {v6, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v10, "Connection"

    const-string v11, "Keep-Alive"

    invoke-virtual {v6, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v10, "X-INFO"

    const/4 v11, 0x0

    invoke-static {v11}, Lcom/amap/api/location/core/c;->a(Landroid/content/Context;)Lcom/amap/api/location/core/c;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Lcom/amap/api/location/core/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v10, "ia"

    const-string v11, "1"

    invoke-virtual {v6, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v10, "key"

    invoke-static {}, Lcom/amap/api/location/core/c;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const/4 v10, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 115
    invoke-virtual {v6, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 119
    invoke-interface {v7, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 120
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 124
    const/16 v11, 0xc8

    if-ne v5, v11, :cond_13

    .line 125
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_22
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1c
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_16
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_10
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-result-object v5

    .line 126
    :try_start_3
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v4

    .line 127
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 128
    const-string v4, ""

    .line 129
    const-string v11, "charset="

    invoke-virtual {v8, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 130
    const/4 v12, -0x1

    if-eq v11, v12, :cond_4

    .line 131
    add-int/lit8 v4, v11, 0x8

    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 133
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 134
    const-string v4, "UTF-8"

    move-object v8, v4

    .line 139
    :goto_1
    invoke-static {v10}, Lcom/aps/l;->a(Lorg/apache/http/HttpResponse;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 143
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_29
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_23
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1d
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_17
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_11
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 145
    :goto_2
    if-eqz v4, :cond_b

    .line 146
    :try_start_4
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v4, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_24
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_1e
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_18
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_12
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 150
    :goto_3
    :try_start_5
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v8, 0x800

    invoke-direct {v2, v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_2a
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_25
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_1f
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_19
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_13
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    .line 151
    :try_start_6
    const-string v1, ""

    .line 152
    :goto_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 153
    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_26
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_20
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_1a
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_14
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    .line 164
    :catch_0
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    .line 168
    :goto_5
    :try_start_7
    new-instance v7, Lcom/amap/api/location/core/AMapLocException;

    const-string v8, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {v7, v8}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 191
    :catchall_0
    move-exception v7

    move-object v13, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v13

    :goto_6
    if-eqz v6, :cond_5

    .line 192
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 195
    :cond_5
    if-eqz v7, :cond_6

    .line 196
    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 200
    :cond_6
    if-eqz v4, :cond_7

    .line 202
    :try_start_8
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7

    .line 208
    :cond_7
    :goto_7
    if-eqz v5, :cond_8

    .line 210
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_8

    .line 220
    :cond_8
    :goto_8
    if-eqz v3, :cond_9

    .line 222
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_9

    .line 232
    :cond_9
    :goto_9
    if-eqz v2, :cond_a

    .line 234
    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_a

    .line 191
    :cond_a
    :goto_a
    throw v1

    .line 148
    :cond_b
    :try_start_c
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v5, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_24
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_1e
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_c .. :try_end_c} :catch_18
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_12
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto :goto_3

    .line 164
    :catch_1
    move-exception v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    goto :goto_5

    .line 155
    :cond_c
    :try_start_d
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    const/4 v8, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    invoke-virtual {v9, v8, v10}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_d
    .catch Ljava/net/UnknownHostException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_d} :catch_26
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_d} :catch_20
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_d .. :try_end_d} :catch_1a
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_14
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 191
    :goto_b
    if-eqz v6, :cond_d

    .line 192
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 195
    :cond_d
    if-eqz v7, :cond_e

    .line 196
    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 200
    :cond_e
    if-eqz v4, :cond_f

    .line 202
    :try_start_e
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_b

    .line 208
    :cond_f
    :goto_c
    if-eqz v5, :cond_10

    .line 210
    :try_start_f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_c

    .line 220
    :cond_10
    :goto_d
    if-eqz v3, :cond_11

    .line 222
    :try_start_10
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_d

    .line 232
    :cond_11
    :goto_e
    if-eqz v2, :cond_12

    .line 234
    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_e

    .line 245
    :cond_12
    :goto_f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 158
    :cond_13
    const/16 v9, 0x194

    if-ne v5, v9, :cond_14

    .line 162
    :try_start_12
    new-instance v5, Lcom/amap/api/location/core/AMapLocException;

    const-string v8, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

    invoke-direct {v5, v8}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_12
    .catch Ljava/net/UnknownHostException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/net/SocketException; {:try_start_12 .. :try_end_12} :catch_22
    .catch Ljava/net/SocketTimeoutException; {:try_start_12 .. :try_end_12} :catch_1c
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_12 .. :try_end_12} :catch_16
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_10
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 164
    :catch_2
    move-exception v5

    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_5

    .line 169
    :catch_3
    move-exception v7

    move-object v7, v6

    move-object v6, v5

    .line 173
    :goto_10
    :try_start_13
    new-instance v5, Lcom/amap/api/location/core/AMapLocException;

    const-string v8, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-direct {v5, v8}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 191
    :catchall_1
    move-exception v5

    move-object v13, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v13

    goto/16 :goto_6

    .line 174
    :catch_4
    move-exception v7

    move-object v7, v6

    move-object v6, v5

    .line 178
    :goto_11
    new-instance v5, Lcom/amap/api/location/core/AMapLocException;

    const-string v8, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-direct {v5, v8}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 179
    :catch_5
    move-exception v7

    move-object v7, v6

    move-object v6, v5

    .line 183
    :goto_12
    new-instance v5, Lcom/amap/api/location/core/AMapLocException;

    const-string v8, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v5, v8}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 184
    :catch_6
    move-exception v7

    move-object v13, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v13

    .line 185
    :goto_13
    :try_start_14
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 189
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string v8, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v1, v8}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 191
    :catchall_2
    move-exception v1

    goto/16 :goto_6

    .line 203
    :catch_7
    move-exception v4

    goto/16 :goto_7

    .line 211
    :catch_8
    move-exception v4

    .line 213
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_8

    .line 223
    :catch_9
    move-exception v3

    .line 225
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_9

    .line 235
    :catch_a
    move-exception v2

    .line 237
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_a

    .line 203
    :catch_b
    move-exception v4

    goto :goto_c

    .line 211
    :catch_c
    move-exception v4

    .line 213
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d

    .line 223
    :catch_d
    move-exception v3

    .line 225
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e

    .line 235
    :catch_e
    move-exception v2

    .line 237
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_f

    .line 191
    :catchall_3
    move-exception v7

    move-object v13, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v13

    goto/16 :goto_6

    :catchall_4
    move-exception v6

    move-object v13, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v13

    goto/16 :goto_6

    :catchall_5
    move-exception v5

    move-object v13, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v13

    goto/16 :goto_6

    :catchall_6
    move-exception v4

    move-object v13, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v13

    goto/16 :goto_6

    :catchall_7
    move-exception v3

    move-object v13, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v13

    goto/16 :goto_6

    :catchall_8
    move-exception v2

    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    goto/16 :goto_6

    .line 184
    :catch_f
    move-exception v6

    move-object v13, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v13

    goto :goto_13

    :catch_10
    move-exception v5

    move-object v13, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v13

    goto :goto_13

    :catch_11
    move-exception v4

    move-object v13, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v13

    goto :goto_13

    :catch_12
    move-exception v3

    move-object v13, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v13

    goto/16 :goto_13

    :catch_13
    move-exception v2

    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    goto/16 :goto_13

    :catch_14
    move-exception v1

    goto/16 :goto_13

    .line 179
    :catch_15
    move-exception v6

    move-object v6, v5

    goto/16 :goto_12

    :catch_16
    move-exception v5

    goto/16 :goto_12

    :catch_17
    move-exception v4

    move-object v4, v5

    goto/16 :goto_12

    :catch_18
    move-exception v3

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_12

    :catch_19
    move-exception v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_12

    :catch_1a
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_12

    .line 174
    :catch_1b
    move-exception v6

    move-object v6, v5

    goto/16 :goto_11

    :catch_1c
    move-exception v5

    goto/16 :goto_11

    :catch_1d
    move-exception v4

    move-object v4, v5

    goto/16 :goto_11

    :catch_1e
    move-exception v3

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_11

    :catch_1f
    move-exception v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_11

    :catch_20
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_11

    .line 169
    :catch_21
    move-exception v6

    move-object v6, v5

    goto/16 :goto_10

    :catch_22
    move-exception v5

    goto/16 :goto_10

    :catch_23
    move-exception v4

    move-object v4, v5

    goto/16 :goto_10

    :catch_24
    move-exception v3

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_10

    :catch_25
    move-exception v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_10

    :catch_26
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_10

    .line 164
    :catch_27
    move-exception v7

    goto/16 :goto_5

    :catch_28
    move-exception v6

    move-object v6, v7

    goto/16 :goto_5

    :catch_29
    move-exception v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_5

    :catch_2a
    move-exception v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_5

    :cond_14
    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_b

    :cond_15
    move-object v4, v3

    goto/16 :goto_2

    :cond_16
    move-object v8, v4

    goto/16 :goto_1
.end method

.method public a([BLandroid/content/Context;)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 951
    const-string v9, ""

    .line 952
    invoke-static/range {p2 .. p2}, Lcom/aps/t;->b(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v12

    .line 953
    invoke-static {v12}, Lcom/aps/l;->a(Landroid/net/NetworkInfo;)I

    move-result v1

    .line 966
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 970
    const/4 v1, 0x0

    .line 1071
    :goto_0
    return-object v1

    .line 972
    :cond_0
    const/4 v8, 0x0

    .line 973
    const/4 v7, 0x0

    .line 975
    const/4 v6, 0x0

    .line 976
    const/4 v4, 0x0

    .line 977
    const/4 v5, 0x0

    .line 978
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 979
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 980
    const-string v1, "http://cgicol.amap.com/collection/writedata?ver=v1.0_ali&"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 981
    const-string v1, "zei="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/aps/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 982
    const-string v1, "&zsi="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/aps/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 983
    const/4 v2, 0x0

    .line 984
    const/4 v1, 0x0

    move v11, v1

    move v1, v2

    move-object v2, v3

    move-object v3, v9

    :goto_1
    const/4 v9, 0x1

    if-ge v11, v9, :cond_1

    .line 985
    if-eqz v1, :cond_2

    .line 1069
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1071
    const-string v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    goto :goto_0

    .line 993
    :cond_2
    :try_start_0
    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/aps/l;->a(Landroid/content/Context;Landroid/net/NetworkInfo;)Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v10

    .line 994
    :try_start_1
    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 999
    const/4 v7, 0x0

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1000
    const-string v7, "application/soap+xml;charset="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1001
    const-string v7, "UTF-8"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1002
    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1003
    const-string v7, "gzipped"

    const-string v8, "1"

    invoke-virtual {v9, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    invoke-static/range {p1 .. p1}, Lcom/aps/t;->a([B)[B

    move-result-object v7

    .line 1008
    new-instance v8, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v8, v7}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 1009
    const-string v7, "application/octet-stream"

    invoke-virtual {v8, v7}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 1010
    invoke-virtual {v9, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1011
    invoke-interface {v10, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 1012
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .line 1016
    const/16 v14, 0xc8

    if-ne v8, v14, :cond_1f

    .line 1017
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v7

    .line 1018
    :try_start_3
    new-instance v6, Ljava/io/InputStreamReader;

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_16
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 1019
    :try_start_4
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v8, 0x800

    invoke-direct {v4, v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_17
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_12
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 1020
    :try_start_5
    const-string v5, ""

    .line 1021
    :goto_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 1022
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 1029
    :catch_0
    move-exception v5

    move-object v5, v7

    move-object v8, v3

    move-object v3, v4

    move-object v7, v10

    move-object v4, v6

    move-object v6, v9

    .line 1046
    :goto_3
    if-eqz v6, :cond_3

    .line 1047
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 1048
    const/4 v6, 0x0

    .line 1050
    :cond_3
    if-eqz v7, :cond_4

    .line 1051
    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 1052
    const/4 v7, 0x0

    .line 1055
    :cond_4
    if-eqz v5, :cond_5

    .line 1056
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 1057
    const/4 v5, 0x0

    .line 1059
    :cond_5
    if-eqz v4, :cond_6

    .line 1060
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 1061
    const/4 v4, 0x0

    .line 1063
    :cond_6
    if-eqz v3, :cond_7

    .line 1064
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 1065
    :goto_4
    const/4 v3, 0x0

    .line 984
    :cond_7
    add-int/lit8 v9, v11, 0x1

    move v11, v9

    move-object v15, v3

    move-object v3, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v15

    goto/16 :goto_1

    .line 1024
    :cond_8
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1025
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v2, v5, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1026
    const/4 v2, 0x0

    .line 1027
    const/4 v1, 0x1

    move-object v5, v7

    move-object v8, v3

    move-object v3, v4

    move-object v4, v6

    .line 1046
    :goto_5
    if-eqz v9, :cond_18

    .line 1047
    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 1048
    const/4 v6, 0x0

    .line 1050
    :goto_6
    if-eqz v10, :cond_17

    .line 1051
    invoke-interface {v10}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 1052
    const/4 v7, 0x0

    .line 1055
    :goto_7
    if-eqz v5, :cond_9

    .line 1056
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 1057
    const/4 v5, 0x0

    .line 1059
    :cond_9
    if-eqz v4, :cond_a

    .line 1060
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 1061
    const/4 v4, 0x0

    .line 1063
    :cond_a
    if-eqz v3, :cond_7

    .line 1064
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_4

    .line 1046
    :catchall_0
    move-exception v1

    move-object v5, v4

    move-object v4, v6

    move-object v6, v7

    :goto_8
    if-eqz v9, :cond_b

    .line 1047
    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 1050
    :cond_b
    if-eqz v10, :cond_c

    .line 1051
    invoke-interface {v10}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 1055
    :cond_c
    if-eqz v6, :cond_d

    .line 1056
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 1059
    :cond_d
    if-eqz v4, :cond_e

    .line 1060
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 1063
    :cond_e
    if-eqz v5, :cond_f

    .line 1064
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 1046
    :cond_f
    throw v1

    :cond_10
    move-object v1, v3

    .line 1071
    goto/16 :goto_0

    .line 1033
    :catch_1
    move-exception v5

    move-object v5, v7

    move-object v8, v3

    move-object v3, v4

    move-object v4, v6

    .line 1046
    :goto_9
    if-eqz v9, :cond_1e

    .line 1047
    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 1048
    const/4 v6, 0x0

    .line 1050
    :goto_a
    if-eqz v10, :cond_1d

    .line 1051
    invoke-interface {v10}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 1052
    const/4 v7, 0x0

    .line 1055
    :goto_b
    if-eqz v5, :cond_11

    .line 1056
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 1057
    const/4 v5, 0x0

    .line 1059
    :cond_11
    if-eqz v4, :cond_12

    .line 1060
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 1061
    const/4 v4, 0x0

    .line 1063
    :cond_12
    if-eqz v3, :cond_7

    .line 1064
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto/16 :goto_4

    .line 1037
    :catch_2
    move-exception v5

    move-object v5, v7

    move-object v8, v3

    move-object v3, v4

    move-object v4, v6

    .line 1046
    :goto_c
    if-eqz v9, :cond_1c

    .line 1047
    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 1048
    const/4 v6, 0x0

    .line 1050
    :goto_d
    if-eqz v10, :cond_1b

    .line 1051
    invoke-interface {v10}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 1052
    const/4 v7, 0x0

    .line 1055
    :goto_e
    if-eqz v5, :cond_13

    .line 1056
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 1057
    const/4 v5, 0x0

    .line 1059
    :cond_13
    if-eqz v4, :cond_14

    .line 1060
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 1061
    const/4 v4, 0x0

    .line 1063
    :cond_14
    if-eqz v3, :cond_7

    .line 1064
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto/16 :goto_4

    .line 1041
    :catch_3
    move-exception v5

    move-object v5, v7

    move-object v8, v3

    move-object v3, v4

    move-object v4, v6

    .line 1046
    :goto_f
    if-eqz v9, :cond_1a

    .line 1047
    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 1048
    const/4 v6, 0x0

    .line 1050
    :goto_10
    if-eqz v10, :cond_19

    .line 1051
    invoke-interface {v10}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 1052
    const/4 v7, 0x0

    .line 1055
    :goto_11
    if-eqz v5, :cond_15

    .line 1056
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 1057
    const/4 v5, 0x0

    .line 1059
    :cond_15
    if-eqz v4, :cond_16

    .line 1060
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 1061
    const/4 v4, 0x0

    .line 1063
    :cond_16
    if-eqz v3, :cond_7

    .line 1064
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto/16 :goto_4

    .line 1046
    :catchall_1
    move-exception v1

    move-object v9, v7

    move-object v10, v8

    goto/16 :goto_8

    :catchall_2
    move-exception v1

    move-object v9, v7

    goto/16 :goto_8

    :catchall_3
    move-exception v1

    goto/16 :goto_8

    :catchall_4
    move-exception v1

    move-object v6, v7

    goto/16 :goto_8

    :catchall_5
    move-exception v1

    move-object v4, v6

    move-object v6, v7

    goto/16 :goto_8

    .line 1041
    :catch_4
    move-exception v9

    move-object v9, v7

    move-object v10, v8

    move-object v8, v3

    move-object v3, v5

    move-object v5, v6

    goto :goto_f

    :catch_5
    move-exception v8

    move-object v9, v7

    move-object v8, v3

    move-object v3, v5

    move-object v5, v6

    goto :goto_f

    :catch_6
    move-exception v7

    move-object v8, v3

    move-object v3, v5

    move-object v5, v6

    goto :goto_f

    :catch_7
    move-exception v6

    move-object v8, v3

    move-object v3, v5

    move-object v5, v7

    goto :goto_f

    :catch_8
    move-exception v4

    move-object v4, v6

    move-object v8, v3

    move-object v3, v5

    move-object v5, v7

    goto :goto_f

    .line 1037
    :catch_9
    move-exception v9

    move-object v9, v7

    move-object v10, v8

    move-object v8, v3

    move-object v3, v5

    move-object v5, v6

    goto/16 :goto_c

    :catch_a
    move-exception v8

    move-object v9, v7

    move-object v8, v3

    move-object v3, v5

    move-object v5, v6

    goto/16 :goto_c

    :catch_b
    move-exception v7

    move-object v8, v3

    move-object v3, v5

    move-object v5, v6

    goto/16 :goto_c

    :catch_c
    move-exception v6

    move-object v8, v3

    move-object v3, v5

    move-object v5, v7

    goto/16 :goto_c

    :catch_d
    move-exception v4

    move-object v4, v6

    move-object v8, v3

    move-object v3, v5

    move-object v5, v7

    goto/16 :goto_c

    .line 1033
    :catch_e
    move-exception v9

    move-object v9, v7

    move-object v10, v8

    move-object v8, v3

    move-object v3, v5

    move-object v5, v6

    goto/16 :goto_9

    :catch_f
    move-exception v8

    move-object v9, v7

    move-object v8, v3

    move-object v3, v5

    move-object v5, v6

    goto/16 :goto_9

    :catch_10
    move-exception v7

    move-object v8, v3

    move-object v3, v5

    move-object v5, v6

    goto/16 :goto_9

    :catch_11
    move-exception v6

    move-object v8, v3

    move-object v3, v5

    move-object v5, v7

    goto/16 :goto_9

    :catch_12
    move-exception v4

    move-object v4, v6

    move-object v8, v3

    move-object v3, v5

    move-object v5, v7

    goto/16 :goto_9

    .line 1029
    :catch_13
    move-exception v9

    move-object v15, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v3

    move-object v3, v15

    goto/16 :goto_3

    :catch_14
    move-exception v8

    move-object v8, v3

    move-object v3, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v10

    goto/16 :goto_3

    :catch_15
    move-exception v7

    move-object v7, v10

    move-object v8, v3

    move-object v3, v5

    move-object v5, v6

    move-object v6, v9

    goto/16 :goto_3

    :catch_16
    move-exception v6

    move-object v6, v9

    move-object v8, v3

    move-object v3, v5

    move-object v5, v7

    move-object v7, v10

    goto/16 :goto_3

    :catch_17
    move-exception v4

    move-object v4, v6

    move-object v8, v3

    move-object v6, v9

    move-object v3, v5

    move-object v5, v7

    move-object v7, v10

    goto/16 :goto_3

    :cond_17
    move-object v7, v10

    goto/16 :goto_7

    :cond_18
    move-object v6, v9

    goto/16 :goto_6

    :cond_19
    move-object v7, v10

    goto/16 :goto_11

    :cond_1a
    move-object v6, v9

    goto/16 :goto_10

    :cond_1b
    move-object v7, v10

    goto/16 :goto_e

    :cond_1c
    move-object v6, v9

    goto/16 :goto_d

    :cond_1d
    move-object v7, v10

    goto/16 :goto_b

    :cond_1e
    move-object v6, v9

    goto/16 :goto_a

    :cond_1f
    move-object v8, v3

    move-object v3, v5

    move-object v5, v6

    goto/16 :goto_5
.end method

.method public a([BLandroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 405
    invoke-static/range {p2 .. p2}, Lcom/aps/t;->b(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v12

    .line 406
    invoke-static {v12}, Lcom/aps/l;->a(Landroid/net/NetworkInfo;)I

    move-result v1

    .line 407
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 408
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string v2, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v1, v2}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 410
    :cond_0
    const/4 v8, 0x0

    .line 411
    const/4 v7, 0x0

    .line 415
    const/4 v6, 0x0

    .line 416
    const/4 v4, 0x0

    .line 417
    const/4 v5, 0x0

    .line 418
    const/4 v2, 0x0

    .line 419
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 420
    const-string v3, ""

    .line 421
    const/4 v9, 0x0

    .line 422
    const/4 v1, 0x0

    move v11, v1

    move-object v1, v3

    move-object v3, v5

    move-object v5, v6

    move-object v6, v8

    :goto_0
    const/4 v8, 0x1

    if-ge v11, v8, :cond_1

    .line 423
    if-eqz v9, :cond_3

    .line 628
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    :cond_2
    return-object v1

    .line 430
    :cond_3
    :try_start_0
    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/aps/l;->a(Landroid/content/Context;Landroid/net/NetworkInfo;)Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_16
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v8

    .line 431
    :try_start_1
    invoke-static/range {p3 .. p3}, Lcom/aps/l;->a(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v13

    .line 439
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {}, Lcom/amap/api/location/core/c;->j()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v14}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_17
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 446
    :try_start_2
    const-string v7, "UTF-8"

    .line 470
    invoke-static/range {p1 .. p1}, Lcom/aps/t;->a([B)[B

    move-result-object v14

    .line 481
    new-instance v15, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v15, v14}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 482
    const-string v14, "application/octet-stream"

    invoke-virtual {v15, v14}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 490
    const-string v14, "Accept-Encoding"

    const-string v16, "gzip"

    move-object/from16 v0, v16

    invoke-virtual {v6, v14, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string v14, "gzipped"

    const-string v16, "1"

    move-object/from16 v0, v16

    invoke-virtual {v6, v14, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v14, "X-INFO"

    const/16 v16, 0x2

    aget-object v16, v13, v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v14, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v14, "X-BIZ"

    const/16 v16, 0x3

    aget-object v16, v13, v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v14, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v14, "KEY"

    const/16 v16, 0x1

    aget-object v16, v13, v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v14, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v14, "ec"

    const-string v16, "1"

    move-object/from16 v0, v16

    invoke-virtual {v6, v14, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v14, "enginever"

    const-string v16, "4.2"

    move-object/from16 v0, v16

    invoke-virtual {v6, v14, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const/4 v14, 0x4

    aget-object v14, v13, v14

    if-eqz v14, :cond_4

    const/4 v14, 0x4

    aget-object v14, v13, v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_4

    .line 500
    const-string v14, "User-Agent"

    const/16 v16, 0x4

    aget-object v16, v13, v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v14, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :cond_4
    invoke-static {}, Lcom/amap/api/location/core/d;->a()Ljava/lang/String;

    move-result-object v14

    .line 503
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "key="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x1

    aget-object v13, v13, v17

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lcom/amap/api/location/core/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 505
    const-string v16, "ts"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v14}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v14, "scode"

    invoke-virtual {v6, v14, v13}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const/4 v13, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 508
    invoke-virtual {v6, v15}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 512
    invoke-interface {v8, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 513
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    .line 517
    const/16 v15, 0xc8

    if-ne v14, v15, :cond_15

    .line 518
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 519
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v1

    .line 520
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 521
    const-string v1, ""

    .line 522
    const-string v14, "charset="

    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 523
    const/4 v15, -0x1

    if-eq v14, v15, :cond_5

    .line 524
    add-int/lit8 v1, v14, 0x8

    invoke-virtual {v9, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 526
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 532
    :goto_1
    invoke-static {v13}, Lcom/aps/l;->a(Lorg/apache/http/HttpResponse;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 536
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v1

    .line 538
    :cond_6
    if-eqz v4, :cond_d

    .line 539
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v4, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v3, v1

    .line 543
    :goto_2
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v7, 0x800

    invoke-direct {v1, v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 544
    :try_start_3
    const-string v2, ""

    .line 545
    :goto_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 546
    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    .line 558
    :catch_0
    move-exception v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v8

    .line 562
    :goto_4
    :try_start_4
    new-instance v7, Lcom/amap/api/location/core/AMapLocException;

    const-string v8, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {v7, v8}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 584
    :catchall_0
    move-exception v7

    move-object v8, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v7

    :goto_5
    if-eqz v6, :cond_7

    .line 585
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 588
    :cond_7
    if-eqz v8, :cond_8

    .line 589
    invoke-interface {v8}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 594
    :cond_8
    if-eqz v4, :cond_9

    .line 596
    :try_start_5
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    .line 606
    :cond_9
    :goto_6
    if-eqz v5, :cond_a

    .line 608
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_7

    .line 618
    :cond_a
    :goto_7
    if-eqz v3, :cond_b

    .line 619
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 622
    :cond_b
    if-eqz v2, :cond_c

    .line 623
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 584
    :cond_c
    throw v1

    .line 541
    :cond_d
    :try_start_7
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v5, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_15
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_12
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v3, v1

    goto :goto_2

    .line 548
    :cond_e
    :try_start_8
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 549
    const/4 v2, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    invoke-virtual {v10, v2, v9}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 550
    const/4 v9, 0x0

    .line 551
    const/4 v2, 0x1

    move-object/from16 v18, v7

    move-object v7, v4

    move-object v4, v9

    move-object v9, v5

    move-object v5, v3

    move-object/from16 v3, v18

    .line 584
    :goto_8
    if-eqz v6, :cond_f

    .line 585
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 586
    const/4 v6, 0x0

    .line 588
    :cond_f
    if-eqz v8, :cond_10

    .line 589
    invoke-interface {v8}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 590
    const/4 v8, 0x0

    .line 594
    :cond_10
    if-eqz v7, :cond_11

    .line 596
    :try_start_9
    invoke-virtual {v7}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_8

    .line 604
    :goto_9
    const/4 v7, 0x0

    .line 606
    :cond_11
    if-eqz v9, :cond_12

    .line 608
    :try_start_a
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_9

    .line 616
    :goto_a
    const/4 v9, 0x0

    .line 618
    :cond_12
    if-eqz v5, :cond_13

    .line 619
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 620
    const/4 v5, 0x0

    .line 622
    :cond_13
    if-eqz v1, :cond_14

    .line 623
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 624
    const/4 v1, 0x0

    .line 422
    :cond_14
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    move-object v10, v4

    move-object v4, v7

    move-object v7, v6

    move-object v6, v8

    move-object/from16 v18, v5

    move-object v5, v9

    move v9, v2

    move-object v2, v1

    move-object v1, v3

    move-object/from16 v3, v18

    goto/16 :goto_0

    .line 552
    :cond_15
    const/16 v7, 0x194

    if-ne v14, v7, :cond_16

    .line 556
    :try_start_b
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string v7, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

    invoke-direct {v1, v7}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_b
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_15
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_12
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_c
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 558
    :catch_1
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v8

    goto/16 :goto_4

    .line 563
    :catch_2
    move-exception v2

    move-object v2, v1

    .line 567
    :goto_b
    :try_start_c
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string v7, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-direct {v1, v7}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 584
    :catchall_1
    move-exception v1

    goto/16 :goto_5

    .line 568
    :catch_3
    move-exception v2

    move-object v2, v1

    .line 572
    :goto_c
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string v7, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-direct {v1, v7}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 573
    :catch_4
    move-exception v2

    move-object v2, v1

    .line 577
    :goto_d
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string v7, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v1, v7}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 578
    :catch_5
    move-exception v2

    move-object v2, v1

    .line 582
    :goto_e
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string v7, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v1, v7}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 597
    :catch_6
    move-exception v4

    .line 599
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_6

    .line 609
    :catch_7
    move-exception v4

    .line 611
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_7

    .line 597
    :catch_8
    move-exception v7

    .line 599
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 609
    :catch_9
    move-exception v9

    .line 611
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a

    .line 584
    :catchall_2
    move-exception v2

    move-object/from16 v18, v2

    move-object v2, v1

    move-object/from16 v1, v18

    goto/16 :goto_5

    :catchall_3
    move-exception v1

    move-object v8, v6

    move-object v6, v7

    goto/16 :goto_5

    :catchall_4
    move-exception v1

    move-object v6, v7

    goto/16 :goto_5

    .line 578
    :catch_a
    move-exception v1

    move-object v8, v6

    move-object v6, v7

    goto :goto_e

    :catch_b
    move-exception v1

    move-object v6, v7

    goto :goto_e

    :catch_c
    move-exception v1

    goto :goto_e

    .line 573
    :catch_d
    move-exception v1

    move-object v8, v6

    move-object v6, v7

    goto :goto_d

    :catch_e
    move-exception v1

    move-object v6, v7

    goto :goto_d

    :catch_f
    move-exception v1

    goto :goto_d

    .line 568
    :catch_10
    move-exception v1

    move-object v8, v6

    move-object v6, v7

    goto :goto_c

    :catch_11
    move-exception v1

    move-object v6, v7

    goto :goto_c

    :catch_12
    move-exception v1

    goto :goto_c

    .line 563
    :catch_13
    move-exception v1

    move-object v8, v6

    move-object v6, v7

    goto :goto_b

    :catch_14
    move-exception v1

    move-object v6, v7

    goto :goto_b

    :catch_15
    move-exception v1

    goto :goto_b

    .line 558
    :catch_16
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    goto/16 :goto_4

    :catch_17
    move-exception v1

    move-object v1, v2

    move-object v6, v8

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    goto/16 :goto_4

    :cond_16
    move-object v7, v4

    move-object v4, v10

    move-object/from16 v18, v1

    move-object v1, v2

    move v2, v9

    move-object v9, v5

    move-object v5, v3

    move-object/from16 v3, v18

    goto/16 :goto_8

    :cond_17
    move-object v7, v1

    goto/16 :goto_1
.end method
