.class public Lcom/amap/api/mapcore2d/cp;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/cp$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, ""

    .line 50
    sput-object v0, Lcom/amap/api/mapcore2d/cp;->a:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/api/mapcore2d/cp;->b:Z

    const-string/jumbo v0, ""

    .line 275
    sput-object v0, Lcom/amap/api/mapcore2d/cp;->c:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 421
    sput-object v0, Lcom/amap/api/mapcore2d/cp;->d:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 477
    sput-object v0, Lcom/amap/api/mapcore2d/cp;->e:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 529
    sput-object v0, Lcom/amap/api/mapcore2d/cp;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->u(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v0, ""

    .line 63
    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 43
    sput-object p0, Lcom/amap/api/mapcore2d/cp;->a:Ljava/lang/String;

    return-object p0
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 651
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    .line 652
    :goto_0
    add-int/lit8 v0, v3, -0x1

    if-lt v2, v0, :cond_0

    .line 662
    return-object p0

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    .line 653
    :goto_1
    sub-int v0, v3, v2

    if-lt v1, v0, :cond_1

    .line 652
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 655
    :cond_1
    add-int/lit8 v0, v1, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v4, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    if-gt v4, v0, :cond_2

    .line 653
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 656
    :cond_2
    add-int/lit8 v0, v1, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 657
    add-int/lit8 v4, v1, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p0, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 658
    invoke-interface {p0, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public static a()V
    .locals 5

    .prologue
    .line 123
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-gt v0, v1, :cond_0

    .line 133
    :goto_0
    return-void

    :cond_0
    const-class v0, Landroid/net/TrafficStats;

    const-string/jumbo v1, "setThreadStatsTag"

    const/4 v2, 0x1

    .line 124
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 126
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0xa004

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "setTraficTag"

    .line 129
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 214
    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 43
    sput-boolean p0, Lcom/amap/api/mapcore2d/cp;->b:Z

    return p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v0, ""

    .line 69
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->x(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    .line 72
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    return-object v0
.end method

.method static synthetic b()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/amap/api/mapcore2d/cp;->b:Z

    return v0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 80
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->y(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, -0x1

    .line 86
    return v0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 91
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->v(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, -0x1

    .line 96
    return v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->t(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v0, ""

    .line 115
    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 164
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore2d/cp;->a:Ljava/lang/String;

    if-nez v0, :cond_3

    :cond_0
    const-string/jumbo v0, "android.permission.WRITE_SETTINGS"

    .line 168
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/cp;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 173
    :goto_0
    sget-object v0, Lcom/amap/api/mapcore2d/cp;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_5

    :cond_1
    :goto_1
    :try_start_1
    const-string/jumbo v0, "mounted"

    .line 186
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    if-nez v0, :cond_6

    .line 204
    :cond_2
    :goto_2
    sget-object v0, Lcom/amap/api/mapcore2d/cp;->a:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/amap/api/mapcore2d/cp;->a:Ljava/lang/String;

    :goto_3
    return-object v0

    :cond_3
    :try_start_2
    const-string/jumbo v0, ""

    .line 164
    sget-object v1, Lcom/amap/api/mapcore2d/cp;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    sget-object v0, Lcom/amap/api/mapcore2d/cp;->a:Ljava/lang/String;

    return-object v0

    .line 171
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mqBRboGZkQPcAkyk"

    .line 170
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore2d/cp;->a:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getUTDID"

    .line 177
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    :try_start_3
    const-string/jumbo v0, ""

    .line 173
    sget-object v1, Lcom/amap/api/mapcore2d/cp;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    sget-object v0, Lcom/amap/api/mapcore2d/cp;->a:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    return-object v0

    .line 188
    :cond_6
    :try_start_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/.UTSystemConfig/Global/Alvin2.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 195
    new-instance v2, Lcom/amap/api/mapcore2d/cp$a;

    invoke-direct {v2}, Lcom/amap/api/mapcore2d/cp$a;-><init>()V

    .line 196
    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 203
    :catch_1
    move-exception v0

    .line 200
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 203
    :catch_2
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getUTDID"

    .line 202
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v0, ""

    goto/16 :goto_3
.end method

.method static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const-string/jumbo v1, ""

    .line 220
    if-nez p0, :cond_1

    .line 223
    :cond_0
    return-object v1

    :cond_1
    :try_start_0
    const-string/jumbo v0, "android.permission.ACCESS_WIFI_STATE"

    .line 221
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/cp;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "wifi"

    .line 227
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 228
    if-eqz v0, :cond_2

    .line 229
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    move-object v0, v1

    .line 237
    :goto_0
    return-object v0

    .line 228
    :cond_2
    return-object v1

    .line 230
    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    const-string/jumbo v2, "DeviceInfo"

    const-string/jumbo v3, "getWifiMacs"

    .line 235
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 241
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    if-nez p0, :cond_1

    .line 246
    :cond_0
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, "android.permission.ACCESS_WIFI_STATE"

    .line 244
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/cp;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "wifi"

    .line 250
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 251
    if-eqz v0, :cond_3

    .line 252
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_4

    .line 272
    :cond_2
    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :try_start_1
    const-string/jumbo v0, ""

    .line 251
    return-object v0

    .line 253
    :cond_4
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 254
    if-nez v0, :cond_6

    .line 255
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 254
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_5

    .line 257
    invoke-static {v0}, Lcom/amap/api/mapcore2d/cp;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    const/4 v1, 0x1

    move v3, v2

    .line 259
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    const/4 v0, 0x7

    if-ge v3, v0, :cond_2

    .line 260
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 261
    if-nez v1, :cond_7

    const-string/jumbo v6, ";"

    .line 264
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :goto_2
    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 259
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_7
    move v1, v2

    .line 262
    goto :goto_2

    .line 271
    :catch_0
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getWifiMacs"

    .line 270
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 280
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore2d/cp;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "android.permission.ACCESS_WIFI_STATE"

    .line 283
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/cp;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "wifi"

    .line 287
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 288
    if-eqz v0, :cond_3

    .line 289
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore2d/cp;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_0
    sget-object v0, Lcom/amap/api/mapcore2d/cp;->c:Ljava/lang/String;

    return-object v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, ""

    .line 280
    sget-object v1, Lcom/amap/api/mapcore2d/cp;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    sget-object v0, Lcom/amap/api/mapcore2d/cp;->c:Ljava/lang/String;

    return-object v0

    .line 284
    :cond_2
    sget-object v0, Lcom/amap/api/mapcore2d/cp;->c:Ljava/lang/String;

    return-object v0

    :cond_3
    const-string/jumbo v0, ""
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 288
    return-object v0

    .line 292
    :catch_0
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getDeviceMac"

    .line 291
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static j(Landroid/content/Context;)[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_0
    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    .line 299
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/cp;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    .line 302
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    return-object v0

    :cond_1
    const-string/jumbo v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 300
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/cp;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "phone"

    .line 305
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 306
    if-eqz v0, :cond_2

    .line 307
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 308
    instance-of v1, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-nez v1, :cond_3

    .line 315
    instance-of v1, v0, Landroid/telephony/cdma/CdmaCellLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_4

    .line 334
    :goto_0
    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v6

    const-string/jumbo v1, ""

    aput-object v1, v0, v7

    return-object v0

    :cond_2
    const/4 v0, 0x2

    .line 306
    :try_start_1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    return-object v0

    .line 309
    :cond_3
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 310
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 311
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    const/4 v2, 0x2

    .line 312
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "||"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const-string/jumbo v1, "gsm"

    aput-object v1, v2, v0

    return-object v2

    .line 316
    :cond_4
    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 317
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v1

    .line 318
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    .line 319
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .line 320
    if-gez v1, :cond_6

    :cond_5
    :goto_1
    const/4 v3, 0x2

    .line 324
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "||"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "||"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    const-string/jumbo v1, "cdma"

    aput-object v1, v3, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    .line 320
    :cond_6
    if-ltz v2, :cond_5

    if-ltz v0, :cond_5

    goto :goto_1

    .line 333
    :catch_0
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "cellInfo"

    .line 332
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x3

    const-string/jumbo v1, ""

    :try_start_0
    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    .line 343
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/cp;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->z(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_2

    .line 348
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 351
    :cond_0
    return-object v1

    .line 344
    :cond_1
    return-object v1

    :cond_2
    const-string/jumbo v0, ""

    .line 347
    return-object v0

    .line 350
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_0

    const/4 v2, 0x3

    .line 353
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 357
    :goto_0
    return-object v0

    .line 356
    :catch_0
    move-exception v0

    const-string/jumbo v2, "DeviceInfo"

    const-string/jumbo v3, "getMNC"

    .line 355
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static l(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 366
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->y(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getNetWorkType"

    .line 370
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 372
    return v0
.end method

.method public static m(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 379
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->v(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getActiveNetWorkType"

    .line 382
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 385
    return v0
.end method

.method public static n(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 393
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/cp;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->w(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 398
    if-eqz v0, :cond_1

    .line 401
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 402
    return-object v0

    .line 395
    :cond_0
    return-object v1

    .line 399
    :cond_1
    return-object v1
.end method

.method static o(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 407
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->n(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 408
    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 418
    :goto_0
    return-object v0

    .line 409
    :cond_0
    return-object v1

    .line 417
    :catch_0
    move-exception v0

    const-string/jumbo v2, "DeviceInfo"

    const-string/jumbo v3, "getNetworkExtraInfo"

    .line 415
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static p(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 425
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore2d/cp;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 428
    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v0, "window"

    .line 430
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 431
    if-eqz v0, :cond_2

    .line 432
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 433
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 434
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 435
    if-gt v1, v0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/amap/api/mapcore2d/cp;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :goto_1
    sget-object v0, Lcom/amap/api/mapcore2d/cp;->d:Ljava/lang/String;

    return-object v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, ""

    .line 425
    sget-object v1, Lcom/amap/api/mapcore2d/cp;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    sget-object v0, Lcom/amap/api/mapcore2d/cp;->d:Ljava/lang/String;

    return-object v0

    :cond_2
    const-string/jumbo v0, ""

    .line 431
    return-object v0

    .line 435
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 440
    :catch_0
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getReslution"

    .line 439
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static q(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 486
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore2d/cp;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    .line 489
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/cp;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 492
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->z(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 493
    if-eqz v0, :cond_3

    .line 494
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore2d/cp;->e:Ljava/lang/String;

    .line 495
    sget-object v0, Lcom/amap/api/mapcore2d/cp;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_4

    .line 501
    :goto_0
    sget-object v0, Lcom/amap/api/mapcore2d/cp;->e:Ljava/lang/String;

    return-object v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, ""

    .line 486
    sget-object v1, Lcom/amap/api/mapcore2d/cp;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    sget-object v0, Lcom/amap/api/mapcore2d/cp;->e:Ljava/lang/String;

    return-object v0

    .line 490
    :cond_2
    sget-object v0, Lcom/amap/api/mapcore2d/cp;->e:Ljava/lang/String;

    return-object v0

    :cond_3
    const-string/jumbo v0, ""

    .line 493
    return-object v0

    :cond_4
    const-string/jumbo v0, ""

    .line 496
    sput-object v0, Lcom/amap/api/mapcore2d/cp;->e:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getDeviceID"

    .line 499
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static r(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const-string/jumbo v0, ""

    .line 507
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->t(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "DeviceInfo"

    const-string/jumbo v3, "getSubscriberId"

    .line 510
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    return-object v0
.end method

.method static s(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 517
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->u(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getNetworkOperatorName"

    .line 519
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    .line 522
    return-object v0
.end method

.method private static t(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 532
    sget-object v0, Lcom/amap/api/mapcore2d/cp;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    .line 536
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/cp;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 540
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->z(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 541
    if-eqz v0, :cond_3

    .line 542
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore2d/cp;->f:Ljava/lang/String;

    .line 543
    sget-object v0, Lcom/amap/api/mapcore2d/cp;->f:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 546
    :goto_0
    sget-object v0, Lcom/amap/api/mapcore2d/cp;->f:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    .line 532
    sget-object v1, Lcom/amap/api/mapcore2d/cp;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    sget-object v0, Lcom/amap/api/mapcore2d/cp;->f:Ljava/lang/String;

    return-object v0

    .line 538
    :cond_2
    sget-object v0, Lcom/amap/api/mapcore2d/cp;->f:Ljava/lang/String;

    return-object v0

    :cond_3
    const-string/jumbo v0, ""

    .line 541
    return-object v0

    :cond_4
    const-string/jumbo v0, ""

    .line 544
    sput-object v0, Lcom/amap/api/mapcore2d/cp;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method private static u(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    .line 552
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/cp;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->z(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 557
    if-eqz v1, :cond_1

    .line 558
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 559
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 563
    :goto_0
    return-object v0

    .line 554
    :cond_0
    return-object v1

    :cond_1
    const-string/jumbo v0, ""

    .line 557
    return-object v0

    .line 560
    :cond_2
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static v(Landroid/content/Context;)I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 588
    if-nez p0, :cond_1

    .line 591
    :cond_0
    return v1

    :cond_1
    const-string/jumbo v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 589
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/cp;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->w(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 594
    if-eqz v0, :cond_2

    .line 598
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 599
    if-eqz v0, :cond_3

    .line 603
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 605
    return v0

    .line 595
    :cond_2
    return v1

    .line 600
    :cond_3
    return v1
.end method

.method private static w(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1

    .prologue
    const-string/jumbo v0, "connectivity"

    .line 610
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 611
    return-object v0
.end method

.method private static x(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x5

    const-string/jumbo v0, ""

    .line 617
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 618
    if-nez v1, :cond_1

    .line 619
    :cond_0
    return-object v0

    .line 618
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_0

    const/4 v0, 0x3

    .line 621
    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 623
    return-object v0
.end method

.method private static y(Landroid/content/Context;)I
    .locals 2

    .prologue
    const/4 v1, -0x1

    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    .line 628
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/cp;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->z(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 634
    if-eqz v0, :cond_1

    .line 635
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 637
    return v0

    .line 631
    :cond_0
    return v1

    .line 634
    :cond_1
    return v1
.end method

.method private static z(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    const-string/jumbo v0, "phone"

    .line 643
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 644
    return-object v0
.end method
