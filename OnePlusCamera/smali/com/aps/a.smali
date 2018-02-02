.class public Lcom/aps/a;
.super Ljava/lang/Object;
.source "APS.java"

# interfaces
.implements Lcom/aps/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aps/a$a;
    }
.end annotation


# instance fields
.field private A:Lcom/aps/l;

.field private B:I

.field private C:Ljava/lang/String;

.field private D:Lcom/aps/y;

.field private E:Ljava/lang/StringBuilder;

.field private F:J

.field private G:J

.field private H:Landroid/telephony/CellLocation;

.field private I:Z

.field a:Ljava/util/TimerTask;

.field b:Ljava/util/Timer;

.field c:Lcom/aps/ag;

.field d:I

.field private e:Landroid/content/Context;

.field private f:I

.field private g:Landroid/net/ConnectivityManager;

.field private h:Landroid/net/wifi/WifiManager;

.field private i:Landroid/telephony/TelephonyManager;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aps/e;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/PendingIntent;",
            "Ljava/util/List",
            "<",
            "Lcom/aps/j;",
            ">;>;"
        }
    .end annotation
.end field

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/PendingIntent;",
            "Ljava/util/List",
            "<",
            "Lcom/aps/j;",
            ">;>;"
        }
    .end annotation
.end field

.field private n:Lcom/aps/b;

.field private o:Landroid/telephony/PhoneStateListener;

.field private p:I

.field private q:Lcom/aps/a$a;

.field private r:Landroid/net/wifi/WifiInfo;

.field private s:Lorg/json/JSONObject;

.field private t:Ljava/lang/String;

.field private u:Lcom/aps/c;

.field private v:J

.field private w:Z

.field private x:J

.field private y:J

.field private z:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v1, p0, Lcom/aps/a;->e:Landroid/content/Context;

    const/16 v0, 0x9

    .line 57
    iput v0, p0, Lcom/aps/a;->f:I

    .line 58
    iput-object v1, p0, Lcom/aps/a;->g:Landroid/net/ConnectivityManager;

    .line 59
    iput-object v1, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    .line 60
    iput-object v1, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aps/a;->l:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aps/a;->m:Ljava/util/Map;

    .line 76
    new-instance v0, Lcom/aps/b;

    invoke-direct {v0}, Lcom/aps/b;-><init>()V

    iput-object v0, p0, Lcom/aps/a;->n:Lcom/aps/b;

    .line 77
    iput-object v1, p0, Lcom/aps/a;->o:Landroid/telephony/PhoneStateListener;

    const/16 v0, -0x71

    .line 78
    iput v0, p0, Lcom/aps/a;->p:I

    .line 79
    new-instance v0, Lcom/aps/a$a;

    invoke-direct {v0, p0, v1}, Lcom/aps/a$a;-><init>(Lcom/aps/a;Lcom/aps/a$1;)V

    iput-object v0, p0, Lcom/aps/a;->q:Lcom/aps/a$a;

    .line 80
    iput-object v1, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    .line 81
    iput-object v1, p0, Lcom/aps/a;->s:Lorg/json/JSONObject;

    .line 82
    iput-object v1, p0, Lcom/aps/a;->t:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/aps/a;->u:Lcom/aps/c;

    .line 84
    iput-wide v2, p0, Lcom/aps/a;->v:J

    .line 87
    iput-boolean v4, p0, Lcom/aps/a;->w:Z

    .line 89
    iput-wide v2, p0, Lcom/aps/a;->x:J

    .line 90
    iput-wide v2, p0, Lcom/aps/a;->y:J

    .line 92
    iput-wide v2, p0, Lcom/aps/a;->z:J

    .line 95
    invoke-static {}, Lcom/aps/l;->a()Lcom/aps/l;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/a;->A:Lcom/aps/l;

    .line 96
    iput v4, p0, Lcom/aps/a;->B:I

    const-string/jumbo v0, "00:00:00:00:00:00"

    .line 98
    iput-object v0, p0, Lcom/aps/a;->C:Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lcom/aps/a;->D:Lcom/aps/y;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    .line 148
    iput-wide v2, p0, Lcom/aps/a;->F:J

    .line 280
    iput-wide v2, p0, Lcom/aps/a;->G:J

    .line 790
    iput-object v1, p0, Lcom/aps/a;->H:Landroid/telephony/CellLocation;

    .line 2903
    iput-boolean v4, p0, Lcom/aps/a;->I:Z

    .line 3511
    iput v4, p0, Lcom/aps/a;->d:I

    return-void
.end method

.method static synthetic a(Lcom/aps/a;J)J
    .locals 1

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/aps/a;->y:J

    return-wide p1
.end method

.method static synthetic a(Lcom/aps/a;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/aps/a;->H:Landroid/telephony/CellLocation;

    return-object p1
.end method

.method private a([BZ)Lcom/aps/c;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 2065
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 2070
    new-instance v1, Lcom/aps/m;

    invoke-direct {v1}, Lcom/aps/m;-><init>()V

    .line 2074
    iget-object v0, p0, Lcom/aps/a;->A:Lcom/aps/l;

    iget-object v2, p0, Lcom/aps/a;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/aps/a;->s:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v2, v3}, Lcom/aps/l;->a([BLandroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 2079
    :try_start_0
    invoke-static {v0}, Lcom/amap/api/location/core/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amap/api/location/core/AMapLocException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const-string/jumbo v2, ""

    .line 2095
    iget-object v2, p0, Lcom/aps/a;->s:Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/aps/l;->a(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v2

    .line 2096
    if-nez v0, :cond_4

    .line 2113
    :cond_0
    aget-object v2, v2, v5

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2116
    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "aps return pure"

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/aps/t;->a([Ljava/lang/Object;)V

    .line 2120
    :goto_1
    invoke-virtual {v1, v0}, Lcom/aps/m;->b(Ljava/lang/String;)Lcom/aps/c;

    move-result-object v0

    .line 2179
    invoke-static {v0}, Lcom/aps/t;->a(Lcom/aps/c;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2185
    invoke-virtual {v0}, Lcom/aps/c;->t()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2192
    :cond_1
    iget-object v1, p0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    if-nez v1, :cond_7

    .line 2195
    :cond_2
    :goto_2
    return-object v0

    .line 2066
    :cond_3
    return-object v1

    .line 2085
    :catch_0
    move-exception v0

    .line 2082
    throw v0

    :catch_1
    move-exception v2

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "<saps>"

    .line 2096
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 2107
    invoke-virtual {v1, v0}, Lcom/aps/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2108
    iget-object v2, p0, Lcom/aps/a;->n:Lcom/aps/b;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v2, v0, v3}, Lcom/aps/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2114
    :cond_5
    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "api return pure"

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/aps/t;->a([Ljava/lang/Object;)V

    goto :goto_1

    .line 2183
    :cond_6
    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2192
    :cond_7
    iget-object v1, p0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 2193
    iget-object v1, p0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aps/a;->t:Ljava/lang/String;

    goto :goto_2
.end method

.method private a(Landroid/telephony/NeighboringCellInfo;)Lcom/aps/e;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2563
    invoke-static {}, Lcom/aps/t;->b()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 2570
    :try_start_0
    new-instance v0, Lcom/aps/e;

    invoke-direct {v0}, Lcom/aps/e;-><init>()V

    .line 2571
    iget-object v1, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Lcom/aps/t;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 2572
    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/aps/e;->a:Ljava/lang/String;

    const/4 v2, 0x1

    .line 2573
    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/aps/e;->b:Ljava/lang/String;

    .line 2574
    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v1

    iput v1, v0, Lcom/aps/e;->c:I

    .line 2575
    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    iput v1, v0, Lcom/aps/e;->d:I

    .line 2576
    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v1

    .line 2577
    invoke-static {v1}, Lcom/aps/t;->a(I)I

    move-result v1

    iput v1, v0, Lcom/aps/e;->j:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2578
    return-object v0

    .line 2567
    :cond_0
    return-object v3

    .line 2578
    :catch_0
    move-exception v0

    .line 2580
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2586
    return-object v3
.end method

.method private a(III)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3647
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "e"

    .line 3648
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "d"

    .line 3649
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "u"

    .line 3650
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3651
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/aps/a;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/aps/a;->k:Ljava/util/List;

    return-object p1
.end method

.method private a(Landroid/telephony/CellLocation;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 998
    iget-boolean v1, p0, Lcom/aps/a;->w:Z

    if-eqz v1, :cond_3

    .line 1006
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    move-object p1, v0

    .line 1009
    :cond_1
    if-eqz p1, :cond_4

    .line 1012
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/aps/t;->a(Landroid/telephony/CellLocation;Landroid/content/Context;)I

    move-result v0

    .line 1013
    packed-switch v0, :pswitch_data_0

    .line 1034
    :cond_2
    :goto_1
    return-void

    .line 998
    :cond_3
    iget-object v1, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 1002
    iget-object v1, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    goto :goto_0

    .line 1010
    :cond_4
    return-void

    .line 1018
    :pswitch_0
    iget-object v0, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    .line 1019
    invoke-direct {p0, p1}, Lcom/aps/a;->c(Landroid/telephony/CellLocation;)V

    goto :goto_1

    .line 1026
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/aps/a;->d(Landroid/telephony/CellLocation;)V

    goto :goto_1

    .line 1013
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/aps/a;I)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/aps/a;->b(I)V

    return-void
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, -0x1

    .line 2205
    if-eqz p1, :cond_0

    const/16 v1, 0x17

    .line 2208
    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, " phnum=\"\""

    .line 2209
    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string/jumbo v3, " nettype=\"\""

    .line 2210
    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " nettype=\"UNKNOWN\""

    .line 2211
    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, " inftype=\"\""

    .line 2212
    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "<macs><![CDATA[]]></macs>"

    .line 2213
    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "<nb></nb>"

    .line 2214
    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "<mmac><![CDATA[]]></mmac>"

    .line 2215
    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, " gtype=\"0\""

    .line 2216
    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, " glong=\"0.0\""

    .line 2217
    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, " glat=\"0.0\""

    .line 2218
    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, " precision=\"0.0\""

    .line 2219
    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v3, " glong=\"0\""

    .line 2220
    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string/jumbo v3, " glat=\"0\""

    .line 2221
    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string/jumbo v3, " precision=\"0\""

    .line 2222
    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string/jumbo v3, "<smac>null</smac>"

    .line 2223
    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string/jumbo v3, "<smac>00:00:00:00:00:00</smac>"

    .line 2224
    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string/jumbo v3, "<imei>000000000000000</imei>"

    .line 2225
    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string/jumbo v3, "<imsi>000000000000000</imsi>"

    .line 2226
    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string/jumbo v3, "<mcc>000</mcc>"

    .line 2227
    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string/jumbo v3, "<mcc>0</mcc>"

    .line 2228
    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string/jumbo v3, "<lac>0</lac>"

    .line 2229
    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string/jumbo v3, "<cellid>0</cellid>"

    .line 2230
    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string/jumbo v3, "<key></key>"

    .line 2231
    aput-object v3, v1, v2

    .line 2232
    array-length v2, v1

    :goto_0
    if-lt v0, v2, :cond_1

    :goto_1
    const-string/jumbo v0, "*<"

    .line 2239
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_3

    .line 2243
    return-void

    .line 2206
    :cond_0
    return-void

    .line 2232
    :cond_1
    aget-object v3, v1, v0

    .line 2233
    :goto_2
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 2232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2234
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 2235
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string/jumbo v0, "*<"

    .line 2240
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2241
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private declared-synchronized a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    .line 1649
    if-nez p1, :cond_1

    :cond_0
    monitor-exit p0

    .line 1650
    return-void

    .line 1649
    :cond_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 1655
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move v1, v0

    .line 1656
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    .line 1672
    new-instance v1, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 1673
    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 1674
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1675
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1682
    :cond_2
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1684
    invoke-virtual {v1}, Ljava/util/TreeMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1686
    return-void

    .line 1657
    :cond_3
    :try_start_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 1658
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x14

    if-gt v3, v4, :cond_5

    .line 1664
    :goto_2
    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v3, :cond_6

    const-string/jumbo v3, "null"

    .line 1667
    iput-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 1669
    :goto_3
    iget v3, v0, Landroid/net/wifi/ScanResult;->level:I

    mul-int/lit8 v3, v3, 0x1e

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1656
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1658
    :cond_5
    iget v3, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-direct {p0, v3}, Lcom/aps/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    .line 1665
    :cond_6
    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string/jumbo v4, "*"

    const-string/jumbo v5, "."

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1676
    :cond_7
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1677
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1678
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    const/16 v4, 0x1d

    if-gt v0, v4, :cond_2

    goto :goto_1
.end method

.method private a(I)Z
    .locals 3

    .prologue
    const/16 v1, 0x14

    const/4 v0, 0x1

    const/16 v2, 0x14

    .line 1697
    :try_start_0
    invoke-static {p1, v2}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1705
    :goto_0
    if-ge v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0

    .line 1704
    :catch_0
    move-exception v2

    .line 1703
    invoke-static {v2}, Lcom/aps/t;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(J)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1044
    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v4

    .line 1045
    sub-long v2, v4, p1

    const-wide/16 v6, 0x12c

    .line 1049
    cmp-long v2, v2, v6

    if-ltz v2, :cond_1

    move v2, v1

    :goto_0
    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    .line 1054
    iget-object v6, p0, Lcom/aps/a;->u:Lcom/aps/c;

    if-nez v6, :cond_2

    :goto_1
    const-wide/16 v4, 0x2710

    .line 1057
    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    move v2, v1

    :goto_2
    if-nez v2, :cond_4

    .line 1069
    :cond_0
    :goto_3
    return v0

    :cond_1
    move v2, v0

    .line 1049
    goto :goto_0

    .line 1055
    :cond_2
    iget-object v2, p0, Lcom/aps/a;->u:Lcom/aps/c;

    invoke-virtual {v2}, Lcom/aps/c;->h()J

    move-result-wide v2

    sub-long v2, v4, v2

    goto :goto_1

    :cond_3
    move v2, v0

    .line 1057
    goto :goto_2

    :cond_4
    move v0, v1

    .line 1062
    goto :goto_3
.end method

.method private a(Landroid/net/wifi/ScanResult;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1208
    if-nez p1, :cond_2

    :cond_0
    move v0, v1

    .line 1216
    :cond_1
    :goto_0
    return v0

    .line 1208
    :cond_2
    :try_start_0
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1210
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string/jumbo v3, "00:00:00:00:00:00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 1211
    goto :goto_0

    .line 1215
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Landroid/net/wifi/WifiInfo;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1188
    if-nez p1, :cond_2

    :cond_0
    move v0, v1

    .line 1197
    :cond_1
    :goto_0
    return v0

    .line 1188
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1190
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1192
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "00:00:00:00:00:00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1194
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 1195
    goto :goto_0

    :cond_3
    move v0, v1

    .line 1191
    goto :goto_0

    :cond_4
    move v0, v1

    .line 1193
    goto :goto_0
.end method

.method static synthetic a(Lcom/aps/a;)Z
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/aps/a;->p()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/aps/a;Z)Z
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/aps/a;->w:Z

    return p1
.end method

.method private declared-synchronized a(Ljava/lang/Object;)[B
    .locals 20

    .prologue
    monitor-enter p0

    .line 1308
    :try_start_0
    new-instance v9, Lcom/aps/o;

    invoke-direct {v9}, Lcom/aps/o;-><init>()V

    .line 1309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "0"

    const-string/jumbo v10, "0"

    const-string/jumbo v11, "0"

    const-string/jumbo v12, "0"

    const-string/jumbo v13, "0"

    const-string/jumbo v2, ""

    const-string/jumbo v2, ""

    .line 1318
    sput-object v2, Lcom/aps/f;->c:Ljava/lang/String;

    const-string/jumbo v6, ""

    const-string/jumbo v2, ""

    const-string/jumbo v5, ""

    const-string/jumbo v14, "V1.3.1"

    const-string/jumbo v3, "version"

    .line 1324
    invoke-static {v3}, Lcom/aps/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1326
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 1327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1328
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1329
    move-object/from16 v0, p0

    iget v8, v0, Lcom/aps/a;->f:I

    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v8, v0, :cond_3

    move-object v8, v7

    .line 1357
    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_4

    :cond_0
    :goto_1
    const/4 v7, 0x0

    .line 1401
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aps/a;->g:Landroid/net/ConnectivityManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 1408
    :goto_2
    :try_start_2
    invoke-static {v7}, Lcom/aps/l;->a(Landroid/net/NetworkInfo;)I

    move-result v7

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_a

    const/4 v7, 0x0

    .line 1419
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    move-object v7, v6

    move-object v6, v2

    .line 1421
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->s:Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/aps/l;->a(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v2

    const/16 v17, 0x1

    .line 1422
    aget-object v17, v2, v17

    .line 1423
    iput-object v8, v9, Lcom/aps/o;->i:Ljava/lang/String;

    .line 1424
    iput-object v10, v9, Lcom/aps/o;->j:Ljava/lang/String;

    .line 1425
    iput-object v11, v9, Lcom/aps/o;->k:Ljava/lang/String;

    .line 1426
    iput-object v12, v9, Lcom/aps/o;->l:Ljava/lang/String;

    .line 1427
    iput-object v13, v9, Lcom/aps/o;->m:Ljava/lang/String;

    .line 1428
    sget-object v2, Lcom/aps/f;->d:Ljava/lang/String;

    iput-object v2, v9, Lcom/aps/o;->c:Ljava/lang/String;

    .line 1429
    sget-object v2, Lcom/aps/f;->e:Ljava/lang/String;

    iput-object v2, v9, Lcom/aps/o;->d:Ljava/lang/String;

    .line 1430
    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/aps/o;->n:Ljava/lang/String;

    .line 1431
    sget-object v2, Lcom/aps/f;->a:Ljava/lang/String;

    iput-object v2, v9, Lcom/aps/o;->o:Ljava/lang/String;

    .line 1432
    sget-object v2, Lcom/aps/f;->c:Ljava/lang/String;

    iput-object v2, v9, Lcom/aps/o;->r:Ljava/lang/String;

    .line 1433
    sget-object v2, Lcom/aps/f;->b:Ljava/lang/String;

    iput-object v2, v9, Lcom/aps/o;->p:Ljava/lang/String;

    .line 1434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->C:Ljava/lang/String;

    iput-object v2, v9, Lcom/aps/o;->q:Ljava/lang/String;

    .line 1435
    iput-object v7, v9, Lcom/aps/o;->s:Ljava/lang/String;

    .line 1436
    iput-object v6, v9, Lcom/aps/o;->t:Ljava/lang/String;

    .line 1437
    invoke-static {}, Lcom/amap/api/location/core/c;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/aps/o;->f:Ljava/lang/String;

    .line 1438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "android"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/amap/api/location/core/c;->d()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/aps/o;->g:Ljava/lang/String;

    .line 1439
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/api/location/core/c;->g()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/amap/api/location/core/c;->h()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/aps/o;->h:Ljava/lang/String;

    .line 1441
    iput-object v14, v9, Lcom/aps/o;->B:Ljava/lang/String;

    .line 1442
    iput-object v15, v9, Lcom/aps/o;->C:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1444
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->k:Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_e

    .line 1450
    :cond_1
    :goto_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v14, "<?xml version=\"1.0\" encoding=\""

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v14, "GBK"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v14, "\"?>"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v14, "<Cell_Req ver=\"3.0\"><HDR version=\"3.0\" cdma=\""

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\" gtype=\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\" glong=\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\" glat=\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\" precision=\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\"><src>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Lcom/aps/f;->d:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v8, "</src><license>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Lcom/aps/f;->e:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v8, "</license><key>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v8, "</key><clientid>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Lcom/aps/f;->f:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v8, "</clientid><imei>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Lcom/aps/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v8, "</imei><imsi>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Lcom/aps/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v8, "</imsi><smac>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/aps/a;->C:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v8, "</smac></HDR><DRR phnum=\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Lcom/aps/f;->c:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\" nettype=\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\" inftype=\""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "\">"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_f

    move-object v6, v5

    .line 1517
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/aps/a;->s()Z

    move-result v2

    if-nez v2, :cond_15

    .line 1532
    invoke-direct/range {p0 .. p0}, Lcom/aps/a;->n()V

    .line 1536
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v5, "<nb>%s</nb>"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v16, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1538
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_18

    .line 1541
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v5, "<macs><![CDATA[%s]]></macs>"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1544
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v5, "<mmac><![CDATA[%s]]></mmac>"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v5, "</DRR></Cell_Req>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/aps/a;->a(Ljava/lang/StringBuilder;)V

    .line 1548
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_19

    move-object v2, v3

    .line 1551
    :goto_7
    iput-object v6, v9, Lcom/aps/o;->v:Ljava/lang/String;

    .line 1552
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lcom/aps/o;->w:Ljava/lang/String;

    .line 1553
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lcom/aps/o;->x:Ljava/lang/String;

    .line 1554
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lcom/aps/o;->y:Ljava/lang/String;

    .line 1555
    move-object/from16 v0, p0

    iget v3, v0, Lcom/aps/a;->f:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lcom/aps/o;->u:Ljava/lang/String;

    const/4 v3, 0x0

    .line 1633
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    .line 1635
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 1637
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1639
    invoke-virtual {v9}, Lcom/aps/o;->a()[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    :cond_3
    :try_start_5
    const-string/jumbo v7, "1"

    move-object v8, v7

    .line 1330
    goto/16 :goto_0

    .line 1358
    :cond_4
    sget-object v7, Lcom/aps/f;->a:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v7, :cond_7

    .line 1360
    :cond_5
    :try_start_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/aps/f;->a:Ljava/lang/String;

    .line 1361
    sget-object v7, Lcom/aps/f;->a:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v7, :cond_8

    .line 1372
    :goto_8
    :try_start_7
    sget-object v7, Lcom/aps/f;->b:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v7, :cond_9

    .line 1374
    :cond_6
    :try_start_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/aps/f;->b:Ljava/lang/String;

    .line 1375
    sget-object v7, Lcom/aps/f;->b:Ljava/lang/String;

    if-nez v7, :cond_0

    const-string/jumbo v7, "888888888888888"

    .line 1376
    sput-object v7, Lcom/aps/f;->b:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 1383
    :catch_0
    move-exception v7

    goto/16 :goto_1

    :cond_7
    :try_start_9
    const-string/jumbo v7, "888888888888888"

    .line 1358
    sget-object v17, Lcom/aps/f;->a:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v7

    if-nez v7, :cond_5

    goto :goto_8

    :cond_8
    :try_start_a
    const-string/jumbo v7, "888888888888888"

    .line 1362
    sput-object v7, Lcom/aps/f;->a:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_8

    .line 1369
    :catch_1
    move-exception v7

    goto :goto_8

    :cond_9
    :try_start_b
    const-string/jumbo v7, "888888888888888"

    .line 1372
    sget-object v17, Lcom/aps/f;->b:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto/16 :goto_1

    .line 1409
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Lcom/aps/l;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v6

    .line 1410
    invoke-direct/range {p0 .. p0}, Lcom/aps/a;->s()Z

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    const-string/jumbo v2, "1"

    .line 1414
    invoke-direct/range {p0 .. p0}, Lcom/aps/a;->s()Z

    move-result v7

    if-eqz v7, :cond_d

    move-object v7, v6

    move-object v6, v2

    goto/16 :goto_3

    .line 1410
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/aps/a;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string/jumbo v2, "2"

    move-object v7, v6

    move-object v6, v2

    .line 1411
    goto/16 :goto_3

    .line 1415
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/aps/a;->n()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object v7, v6

    move-object v6, v2

    goto/16 :goto_3

    .line 1444
    :cond_e
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1445
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/aps/a;->z:J

    move-wide/from16 v18, v0

    sub-long v14, v14, v18

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v14, ""

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/aps/o;->E:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_4

    .line 1449
    :catch_2
    move-exception v2

    .line 1448
    :try_start_d
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1469
    :cond_f
    :try_start_e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1470
    move-object/from16 v0, p0

    iget v2, v0, Lcom/aps/a;->f:I

    packed-switch v2, :pswitch_data_0

    move-object v2, v5

    :goto_9
    const/4 v5, 0x0

    .line 1514
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-object v6, v2

    goto/16 :goto_5

    .line 1472
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->j:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aps/e;

    const/4 v5, 0x0

    .line 1473
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "<mcc>"

    .line 1474
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/aps/e;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "</mcc>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "<mnc>"

    .line 1475
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/aps/e;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "</mnc>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "<lac>"

    .line 1476
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/aps/e;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "</lac>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "<cellid>"

    .line 1477
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/aps/e;->d:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "</cellid>"

    .line 1478
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "<signal>"

    .line 1479
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v2, v2, Lcom/aps/e;->j:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</signal>"

    .line 1480
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1481
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    move v6, v2

    .line 1482
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v6, v2, :cond_10

    move-object v2, v5

    .line 1495
    goto/16 :goto_9

    .line 1483
    :cond_10
    if-eqz v6, :cond_11

    .line 1486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aps/e;

    .line 1487
    iget v8, v2, Lcom/aps/e;->c:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    iget v8, v2, Lcom/aps/e;->d:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1489
    iget v2, v2, Lcom/aps/e;->j:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v6, v2, :cond_12

    .line 1482
    :cond_11
    :goto_b
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_a

    :cond_12
    const-string/jumbo v2, "*"

    .line 1491
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 1497
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->j:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aps/e;

    const/4 v5, 0x0

    .line 1498
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "<mcc>"

    .line 1499
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/aps/e;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "</mcc>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "<sid>"

    .line 1500
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/aps/e;->g:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "</sid>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "<nid>"

    .line 1501
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/aps/e;->h:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "</nid>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "<bid>"

    .line 1502
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/aps/e;->i:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "</bid>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1503
    iget v5, v2, Lcom/aps/e;->f:I

    if-gtz v5, :cond_14

    :cond_13
    :goto_c
    const-string/jumbo v5, "<signal>"

    .line 1507
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v2, v2, Lcom/aps/e;->j:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "</signal>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_9

    .line 1503
    :cond_14
    iget v5, v2, Lcom/aps/e;->e:I

    if-lez v5, :cond_13

    const-string/jumbo v5, "<lon>"

    .line 1504
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/aps/e;->f:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "</lon>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "<lat>"

    .line 1505
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/aps/e;->e:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "</lat>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 1518
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/aps/a;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v2

    if-nez v2, :cond_16

    :goto_d
    const/4 v2, 0x0

    move v5, v2

    .line 1523
    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_2

    .line 1524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 1525
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/aps/a;->a(Landroid/net/wifi/ScanResult;)Z

    move-result v7

    if-nez v7, :cond_17

    .line 1523
    :goto_f
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_e

    .line 1519
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "*"

    const-string/jumbo v7, "."

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 1526
    :cond_17
    iget-object v7, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    iget v2, v2, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, "*"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 1539
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v5, "<macs><![CDATA[%s]]></macs>"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_6

    :cond_19
    move-object v2, v4

    .line 1549
    goto/16 :goto_7

    .line 1407
    :catch_3
    move-exception v17

    goto/16 :goto_2

    .line 1470
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/aps/a;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/aps/a;->f:I

    return v0
.end method

.method static synthetic b(Lcom/aps/a;I)I
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/aps/a;->p:I

    return p1
.end method

.method static synthetic b(Lcom/aps/a;J)J
    .locals 1

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/aps/a;->x:J

    return-wide p1
.end method

.method private b(Landroid/telephony/CellLocation;)Lcom/aps/e;
    .locals 3

    .prologue
    .line 2541
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    .line 2542
    new-instance v0, Lcom/aps/e;

    invoke-direct {v0}, Lcom/aps/e;-><init>()V

    .line 2543
    iget-object v1, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Lcom/aps/t;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 2544
    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/aps/e;->a:Ljava/lang/String;

    const/4 v2, 0x1

    .line 2545
    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/aps/e;->b:Ljava/lang/String;

    .line 2546
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    iput v1, v0, Lcom/aps/e;->c:I

    .line 2547
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    iput v1, v0, Lcom/aps/e;->d:I

    .line 2548
    iget v1, p0, Lcom/aps/a;->p:I

    iput v1, v0, Lcom/aps/e;->j:I

    .line 2553
    return-object v0
.end method

.method private b(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/16 v0, -0x71

    .line 2295
    if-eq p1, v0, :cond_1

    .line 2299
    iput p1, p0, Lcom/aps/a;->p:I

    .line 2300
    iget v0, p0, Lcom/aps/a;->f:I

    packed-switch v0, :pswitch_data_0

    .line 2310
    :cond_0
    :goto_0
    return-void

    .line 2296
    :cond_1
    iput v0, p0, Lcom/aps/a;->p:I

    .line 2297
    return-void

    .line 2303
    :pswitch_0
    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2304
    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/e;

    iget v1, p0, Lcom/aps/a;->p:I

    iput v1, v0, Lcom/aps/e;->j:I

    goto :goto_0

    .line 2300
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Lcom/aps/a;J)J
    .locals 1

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/aps/a;->z:J

    return-wide p1
.end method

.method static synthetic c(Lcom/aps/a;)Ljava/util/List;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    return-object v0
.end method

.method private c(I)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 3413
    :try_start_0
    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/aps/a;->F:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xafc8

    .line 3414
    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    .line 3418
    return-void

    .line 3423
    :cond_1
    invoke-virtual {p0}, Lcom/aps/a;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3429
    invoke-virtual {p0}, Lcom/aps/a;->e()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3433
    :cond_2
    invoke-direct {p0}, Lcom/aps/a;->x()V

    .line 3434
    iget-object v0, p0, Lcom/aps/a;->a:Ljava/util/TimerTask;

    if-eqz v0, :cond_5

    .line 3459
    :goto_0
    iget-object v0, p0, Lcom/aps/a;->b:Ljava/util/Timer;

    if-eqz v0, :cond_6

    .line 3469
    :goto_1
    return-void

    .line 3424
    :cond_3
    return-void

    .line 3429
    :cond_4
    iget-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    invoke-virtual {v0}, Lcom/aps/y;->f()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_2

    .line 3430
    return-void

    .line 3435
    :cond_5
    new-instance v0, Lcom/aps/a$2;

    invoke-direct {v0, p0, p1}, Lcom/aps/a$2;-><init>(Lcom/aps/a;I)V

    iput-object v0, p0, Lcom/aps/a;->a:Ljava/util/TimerTask;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3468
    :catch_0
    move-exception v0

    .line 3464
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 3460
    :cond_6
    :try_start_1
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/aps/a;->b:Ljava/util/Timer;

    .line 3461
    iget-object v0, p0, Lcom/aps/a;->b:Ljava/util/Timer;

    iget-object v1, p0, Lcom/aps/a;->a:Ljava/util/TimerTask;

    const-wide/16 v2, 0xbb8

    const-wide/16 v4, 0xbb8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private c(Landroid/telephony/CellLocation;)V
    .locals 8

    .prologue
    const v7, 0xffff

    const/4 v2, 0x1

    const/4 v6, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2596
    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2597
    :cond_0
    return-void

    .line 2596
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2599
    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move-object v0, p1

    .line 2601
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 2602
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    if-eq v4, v6, :cond_4

    .line 2604
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v4

    if-ne v4, v6, :cond_5

    :cond_2
    move v0, v3

    .line 2615
    :goto_0
    if-eqz v0, :cond_9

    .line 2620
    iput v2, p0, Lcom/aps/a;->f:I

    .line 2622
    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/aps/a;->b(Landroid/telephony/CellLocation;)Lcom/aps/e;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2623
    iget-object v0, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_a

    move-object v0, v1

    .line 2625
    :goto_1
    if-eqz v0, :cond_b

    .line 2631
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2665
    return-void

    :cond_4
    move v0, v3

    .line 2603
    goto :goto_0

    .line 2604
    :cond_5
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v4

    if-eq v4, v7, :cond_2

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v4

    const v5, 0xfffffff

    if-ge v4, v5, :cond_2

    .line 2607
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    if-eqz v4, :cond_6

    .line 2609
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    if-gt v4, v7, :cond_7

    .line 2611
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v3

    .line 2608
    goto :goto_0

    :cond_7
    move v0, v3

    .line 2610
    goto :goto_0

    :cond_8
    move v0, v3

    .line 2612
    goto :goto_0

    :cond_9
    const/16 v0, 0x9

    .line 2616
    iput v0, p0, Lcom/aps/a;->f:I

    .line 2617
    new-array v0, v2, [Ljava/lang/Object;

    const-string/jumbo v1, "case 2,gsm illegal"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/aps/t;->a([Ljava/lang/Object;)V

    .line 2618
    return-void

    .line 2624
    :cond_a
    iget-object v0, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 2629
    :cond_b
    return-void

    .line 2631
    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    .line 2632
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    if-eq v1, v6, :cond_3

    .line 2636
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v1

    if-eq v1, v6, :cond_d

    .line 2638
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v1

    if-eqz v1, :cond_e

    .line 2640
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v1

    if-gt v1, v7, :cond_f

    .line 2642
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    if-eq v1, v6, :cond_10

    .line 2644
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    if-eqz v1, :cond_11

    .line 2646
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    if-eq v1, v7, :cond_12

    .line 2651
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    const v5, 0xfffffff

    if-ge v1, v5, :cond_13

    move v1, v2

    .line 2657
    :goto_3
    if-eqz v1, :cond_3

    .line 2660
    invoke-direct {p0, v0}, Lcom/aps/a;->a(Landroid/telephony/NeighboringCellInfo;)Lcom/aps/e;

    move-result-object v0

    .line 2661
    if-eqz v0, :cond_3

    .line 2662
    iget-object v1, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_d
    move v1, v3

    .line 2637
    goto :goto_3

    :cond_e
    move v1, v3

    .line 2639
    goto :goto_3

    :cond_f
    move v1, v3

    .line 2641
    goto :goto_3

    :cond_10
    move v1, v3

    .line 2643
    goto :goto_3

    :cond_11
    move v1, v3

    .line 2645
    goto :goto_3

    :cond_12
    move v1, v3

    .line 2650
    goto :goto_3

    :cond_13
    move v1, v3

    .line 2655
    goto :goto_3
.end method

.method static synthetic c(Lcom/aps/a;I)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/aps/a;->d(I)V

    return-void
.end method

.method static synthetic d(Lcom/aps/a;)Landroid/net/wifi/WifiManager;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private d(I)V
    .locals 5

    .prologue
    const v1, 0x282fffff

    const v0, 0x42fffff

    .line 3513
    invoke-virtual {p0}, Lcom/aps/a;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3520
    :try_start_0
    invoke-direct {p0}, Lcom/aps/a;->w()V

    .line 3522
    packed-switch p1, :pswitch_data_0

    .line 3542
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/aps/a;->D:Lcom/aps/y;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, v2, v0, v3}, Lcom/aps/a;->a(III)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/aps/y;->a(Lcom/aps/ag;Ljava/lang/String;)V

    .line 3543
    iget-object v1, p0, Lcom/aps/a;->D:Lcom/aps/y;

    invoke-virtual {v1}, Lcom/aps/y;->d()Lcom/aps/ag;

    move-result-object v1

    iput-object v1, p0, Lcom/aps/a;->c:Lcom/aps/ag;

    .line 3544
    iget-object v1, p0, Lcom/aps/a;->c:Lcom/aps/ag;

    if-nez v1, :cond_4

    .line 3570
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/aps/a;->x()V

    .line 3576
    invoke-virtual {p0}, Lcom/aps/a;->e()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3584
    :cond_1
    iget v0, p0, Lcom/aps/a;->d:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_8

    .line 3597
    :goto_2
    return-void

    .line 3514
    :cond_2
    return-void

    :pswitch_1
    move v0, v1

    .line 3528
    goto :goto_0

    .line 3530
    :pswitch_2
    invoke-direct {p0}, Lcom/aps/a;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7c2fffff

    .line 3536
    goto :goto_0

    :cond_3
    move v0, v1

    .line 3534
    goto :goto_0

    .line 3545
    :cond_4
    iget-object v1, p0, Lcom/aps/a;->c:Lcom/aps/ag;

    invoke-virtual {v1}, Lcom/aps/ag;->a()[B

    move-result-object v1

    .line 3549
    iget-object v2, p0, Lcom/aps/a;->A:Lcom/aps/l;

    iget-object v3, p0, Lcom/aps/a;->e:Landroid/content/Context;

    invoke-virtual {v2, v1, v3}, Lcom/aps/l;->a([BLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 3558
    invoke-virtual {p0}, Lcom/aps/a;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3559
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3562
    :cond_5
    iget v1, p0, Lcom/aps/a;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/aps/a;->d:I

    .line 3563
    iget-object v1, p0, Lcom/aps/a;->D:Lcom/aps/y;

    iget-object v2, p0, Lcom/aps/a;->c:Lcom/aps/ag;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v3, v0, v4}, Lcom/aps/a;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/aps/y;->a(Lcom/aps/ag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3596
    :catch_0
    move-exception v0

    .line 3594
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3595
    invoke-static {v0}, Lcom/aps/t;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    :try_start_1
    const-string/jumbo v2, "true"

    .line 3559
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3560
    iget-object v1, p0, Lcom/aps/a;->D:Lcom/aps/y;

    iget-object v2, p0, Lcom/aps/a;->c:Lcom/aps/ag;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {p0, v3, v0, v4}, Lcom/aps/a;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/aps/y;->a(Lcom/aps/ag;Ljava/lang/String;)V

    goto :goto_1

    .line 3576
    :cond_7
    iget-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    invoke-virtual {v0}, Lcom/aps/y;->f()I

    move-result v0

    if-nez v0, :cond_1

    .line 3583
    invoke-direct {p0}, Lcom/aps/a;->v()V

    goto :goto_2

    .line 3591
    :cond_8
    invoke-direct {p0}, Lcom/aps/a;->v()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 3522
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private d(Landroid/telephony/CellLocation;)V
    .locals 3

    .prologue
    .line 2674
    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2675
    invoke-static {}, Lcom/aps/t;->b()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 2682
    :try_start_0
    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    .line 2683
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v0

    if-lez v0, :cond_1

    .line 2687
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v0

    if-ltz v0, :cond_2

    .line 2691
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    if-ltz v0, :cond_3

    const/4 v0, 0x2

    .line 2696
    iput v0, p0, Lcom/aps/a;->f:I

    .line 2697
    iget-object v0, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/aps/t;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v0

    .line 2698
    new-instance v1, Lcom/aps/e;

    invoke-direct {v1}, Lcom/aps/e;-><init>()V

    const/4 v2, 0x0

    .line 2699
    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/aps/e;->a:Ljava/lang/String;

    const/4 v2, 0x1

    .line 2700
    aget-object v0, v0, v2

    iput-object v0, v1, Lcom/aps/e;->b:Ljava/lang/String;

    .line 2701
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v0

    iput v0, v1, Lcom/aps/e;->g:I

    .line 2702
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v0

    iput v0, v1, Lcom/aps/e;->h:I

    .line 2703
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    iput v0, v1, Lcom/aps/e;->i:I

    .line 2704
    iget v0, p0, Lcom/aps/a;->p:I

    iput v0, v1, Lcom/aps/e;->j:I

    .line 2705
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v0

    iput v0, v1, Lcom/aps/e;->e:I

    .line 2706
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v0

    iput v0, v1, Lcom/aps/e;->f:I

    .line 2707
    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2719
    :goto_0
    return-void

    .line 2679
    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x9

    .line 2684
    iput v0, p0, Lcom/aps/a;->f:I

    const/4 v0, 0x1

    .line 2685
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "cdma illegal"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/aps/t;->a([Ljava/lang/Object;)V

    .line 2686
    return-void

    :cond_2
    const/16 v0, 0x9

    .line 2688
    iput v0, p0, Lcom/aps/a;->f:I

    const/4 v0, 0x1

    .line 2689
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "cdma illegal"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/aps/t;->a([Ljava/lang/Object;)V

    .line 2690
    return-void

    :cond_3
    const/16 v0, 0x9

    .line 2692
    iput v0, p0, Lcom/aps/a;->f:I

    const/4 v0, 0x1

    .line 2693
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "cdma illegal"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/aps/t;->a([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2694
    return-void

    .line 2718
    :catch_0
    move-exception v0

    .line 2714
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/aps/a;)Ljava/util/List;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 769
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-static {v0, v1}, Lcom/aps/t;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    .line 770
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 771
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    .line 772
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    .line 773
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    .line 774
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    .line 775
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 778
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 780
    iget-object v1, p0, Lcom/aps/a;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/aps/a;->q:Lcom/aps/a$a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 781
    invoke-direct {p0}, Lcom/aps/a;->o()V

    .line 782
    return-void
.end method

.method static synthetic f(Lcom/aps/a;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/aps/a;->n()V

    return-void
.end method

.method private g()V
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/16 v2, 0x9

    const/4 v1, 0x2

    const-string/jumbo v0, "connectivity"

    .line 794
    iget-object v3, p0, Lcom/aps/a;->e:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/aps/t;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/aps/a;->g:Landroid/net/ConnectivityManager;

    .line 795
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    .line 796
    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/aps/a;->y:J

    .line 797
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-static {v0, v3}, Lcom/aps/t;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    .line 800
    iget-object v0, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    move v0, v2

    .line 802
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 810
    iput v2, p0, Lcom/aps/a;->f:I

    .line 814
    :goto_1
    new-instance v0, Lcom/aps/a$1;

    invoke-direct {v0, p0}, Lcom/aps/a$1;-><init>(Lcom/aps/a;)V

    iput-object v0, p0, Lcom/aps/a;->o:Landroid/telephony/PhoneStateListener;

    .line 934
    invoke-static {}, Lcom/aps/t;->b()I

    move-result v0

    const/4 v2, 0x7

    if-lt v0, v2, :cond_2

    const/16 v0, 0x100

    .line 949
    :goto_2
    if-eqz v0, :cond_3

    .line 955
    :try_start_0
    iget-object v1, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_4

    .line 962
    :cond_0
    :goto_3
    return-void

    .line 801
    :cond_1
    iget-object v0, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    .line 804
    iput v0, p0, Lcom/aps/a;->f:I

    goto :goto_1

    .line 807
    :pswitch_1
    iput v1, p0, Lcom/aps/a;->f:I

    goto :goto_1

    :cond_2
    move v0, v1

    .line 940
    goto :goto_2

    .line 950
    :cond_3
    iget-object v0, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/aps/a;->o:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_3

    .line 956
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/aps/a;->o:Landroid/telephony/PhoneStateListener;

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 960
    :catch_0
    move-exception v0

    .line 958
    invoke-static {v0}, Lcom/aps/t;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 802
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic g(Lcom/aps/a;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/aps/a;->o()V

    return-void
.end method

.method static synthetic h(Lcom/aps/a;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/aps/a;->B:I

    return v0
.end method

.method private h()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1088
    invoke-direct {p0}, Lcom/aps/a;->u()V

    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    const-string/jumbo v1, "network"

    .line 1096
    invoke-direct {p0}, Lcom/aps/a;->s()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1099
    invoke-direct {p0}, Lcom/aps/a;->n()V

    :goto_0
    const-string/jumbo v3, ""

    .line 1105
    iget v3, p0, Lcom/aps/a;->f:I

    sparse-switch v3, :sswitch_data_0

    move-object v2, v0

    .line 1177
    :cond_0
    :goto_1
    return-object v2

    .line 1097
    :cond_1
    iget-object v3, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    goto :goto_0

    .line 1107
    :sswitch_0
    iget-object v2, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_2

    move-object v2, v0

    goto :goto_1

    .line 1108
    :cond_2
    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/e;

    .line 1109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1110
    iget-object v3, v0, Lcom/aps/e;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    iget-object v3, v0, Lcom/aps/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    iget v3, v0, Lcom/aps/e;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    iget v0, v0, Lcom/aps/e;->d:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    iget-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    const-string/jumbo v0, "cell"

    .line 1120
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "cellwifi"

    goto :goto_2

    .line 1127
    :sswitch_1
    iget-object v2, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_4

    move-object v2, v0

    goto :goto_1

    .line 1128
    :cond_4
    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/e;

    .line 1129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1130
    iget-object v3, v0, Lcom/aps/e;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    iget-object v3, v0, Lcom/aps/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    iget v3, v0, Lcom/aps/e;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    iget v3, v0, Lcom/aps/e;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    iget v0, v0, Lcom/aps/e;->i:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    iget-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_5

    const-string/jumbo v0, "cell"

    .line 1141
    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v0, "cellwifi"

    goto :goto_3

    :sswitch_2
    const-string/jumbo v0, "#%s#"

    .line 1148
    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1149
    iget-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v5, :cond_7

    .line 1152
    :goto_4
    iget-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v5, :cond_8

    .line 1160
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 1149
    :cond_7
    iget-object v0, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Lcom/aps/a;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    .line 1154
    :cond_8
    iget-object v0, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Lcom/aps/a;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1155
    iget-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 1156
    if-nez v0, :cond_a

    :cond_9
    move-object v0, v1

    :goto_5
    move-object v2, v0

    .line 1159
    goto/16 :goto_1

    .line 1156
    :cond_a
    iget-object v3, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v2

    .line 1157
    goto :goto_5

    .line 1105
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method private i()Ljava/lang/StringBuilder;
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 1230
    invoke-direct {p0}, Lcom/aps/a;->u()V

    .line 1231
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v0, 0x2bc

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1232
    iget v0, p0, Lcom/aps/a;->f:I

    packed-switch v0, :pswitch_data_0

    .line 1248
    :cond_0
    iget-object v0, p0, Lcom/aps/a;->C:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 1249
    :cond_1
    iget-object v0, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_6

    .line 1261
    iget-object v0, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/a;->C:Ljava/lang/String;

    .line 1262
    iget-object v0, p0, Lcom/aps/a;->C:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1267
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/aps/a;->s()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1291
    invoke-direct {p0}, Lcom/aps/a;->n()V

    .line 1293
    :cond_3
    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gtz v0, :cond_e

    .line 1296
    :goto_2
    return-object v6

    :pswitch_0
    move v1, v2

    .line 1234
    :goto_3
    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1235
    if-eqz v1, :cond_4

    .line 1238
    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/e;

    const-string/jumbo v3, "#"

    .line 1239
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/aps/e;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    .line 1240
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/aps/e;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    .line 1241
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lcom/aps/e;->d:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1234
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 1248
    :cond_5
    iget-object v0, p0, Lcom/aps/a;->C:Ljava/lang/String;

    const-string/jumbo v1, "00:00:00:00:00:00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1250
    :cond_6
    iget-object v0, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_2

    .line 1251
    iget-object v0, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    .line 1252
    iget-object v0, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_2

    .line 1253
    iget-object v0, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/a;->C:Ljava/lang/String;

    .line 1254
    iget-object v0, p0, Lcom/aps/a;->C:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1257
    :goto_4
    iput-object v7, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    goto :goto_0

    :cond_7
    const-string/jumbo v0, "00:00:00:00:00:00"

    .line 1255
    iput-object v0, p0, Lcom/aps/a;->C:Ljava/lang/String;

    goto :goto_4

    :cond_8
    const-string/jumbo v0, "00:00:00:00:00:00"

    .line 1263
    iput-object v0, p0, Lcom/aps/a;->C:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v0, ""

    .line 1269
    iget-object v1, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v1}, Lcom/aps/a;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v1

    if-nez v1, :cond_a

    move-object v1, v0

    :goto_5
    move v3, v2

    move v4, v2

    .line 1274
    :goto_6
    iget-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_b

    .line 1286
    if-nez v4, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string/jumbo v0, "#"

    .line 1287
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ",access"

    .line 1288
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1270
    :cond_a
    iget-object v0, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_5

    .line 1275
    :cond_b
    iget-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 1276
    invoke-direct {p0, v0}, Lcom/aps/a;->a(Landroid/net/wifi/ScanResult;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 1274
    :goto_7
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6

    .line 1277
    :cond_c
    iget-object v7, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string/jumbo v0, "nb"

    .line 1279
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    :goto_8
    const-string/jumbo v8, "#%s,%s"

    const/4 v9, 0x2

    .line 1283
    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v2

    aput-object v0, v9, v5

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_d
    const-string/jumbo v0, "access"

    move v4, v5

    .line 1281
    goto :goto_8

    .line 1294
    :cond_e
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1232
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic i(Lcom/aps/a;)Z
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/aps/a;->m()Z

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/aps/a;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/aps/a;->v()V

    return-void
.end method

.method private declared-synchronized j()[B
    .locals 2

    .prologue
    monitor-enter p0

    .line 1715
    :try_start_0
    invoke-direct {p0}, Lcom/aps/a;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1722
    :goto_0
    invoke-direct {p0}, Lcom/aps/a;->l()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    const/4 v0, 0x0

    .line 1725
    invoke-direct {p0, v0}, Lcom/aps/a;->a(Ljava/lang/Object;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    .line 1797
    return-object v0

    .line 1716
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    .line 1717
    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/a;->y:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1723
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/aps/a;->o()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private k()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1814
    iget-boolean v2, p0, Lcom/aps/a;->w:Z

    if-nez v2, :cond_0

    .line 1816
    iget-wide v2, p0, Lcom/aps/a;->y:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1821
    :cond_0
    :goto_0
    return v0

    .line 1818
    :cond_1
    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/aps/a;->y:J

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/aps/f;->j:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    move v2, v1

    :goto_1
    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1
.end method

.method private l()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1832
    invoke-direct {p0}, Lcom/aps/a;->s()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1834
    iget-wide v2, p0, Lcom/aps/a;->z:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1839
    :cond_0
    :goto_0
    return v0

    .line 1836
    :cond_1
    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/aps/a;->z:J

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/aps/f;->i:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    move v2, v1

    :goto_1
    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1
.end method

.method private m()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1974
    iget-object v2, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_0

    .line 1978
    invoke-direct {p0}, Lcom/aps/a;->s()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1999
    :goto_0
    return v1

    .line 1975
    :cond_0
    return v1

    .line 1981
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/aps/a;->g:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_2

    .line 1984
    :goto_1
    invoke-static {v0}, Lcom/aps/l;->a(Landroid/net/NetworkInfo;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    move v0, v1

    :goto_2
    move v1, v0

    .line 1997
    goto :goto_0

    .line 1982
    :cond_2
    iget-object v0, p0, Lcom/aps/a;->g:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_1

    .line 1985
    :cond_3
    iget-object v0, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aps/a;->a(Landroid/net/wifi/WifiInfo;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    .line 1986
    goto :goto_2

    .line 1997
    :catch_0
    move-exception v0

    .line 1992
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1997
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private n()V
    .locals 1

    .prologue
    .line 2728
    iget-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 2729
    iput-object v0, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    .line 2730
    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    .line 2754
    invoke-direct {p0}, Lcom/aps/a;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2767
    :goto_0
    return-void

    .line 2756
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 2760
    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/a;->z:J
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2765
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private p()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2860
    iget-wide v2, p0, Lcom/aps/a;->x:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 2861
    return v1

    .line 2863
    :cond_0
    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/aps/a;->x:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    .line 2867
    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    move v2, v0

    :goto_0
    if-nez v2, :cond_2

    :goto_1
    return v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private q()V
    .locals 14

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2981
    iget-object v0, p0, Lcom/aps/a;->u:Lcom/aps/c;

    if-nez v0, :cond_1

    .line 2982
    :cond_0
    return-void

    .line 2981
    :cond_1
    iget-object v0, p0, Lcom/aps/a;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lt v0, v3, :cond_0

    .line 2985
    iget-object v0, p0, Lcom/aps/a;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2986
    :cond_2
    if-nez v5, :cond_4

    .line 3029
    :cond_3
    return-void

    .line 2986
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2988
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2989
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 2990
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2991
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 2992
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2993
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/j;

    .line 2994
    invoke-virtual {v0}, Lcom/aps/j;->a()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    .line 2995
    cmp-long v2, v10, v12

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v12

    cmp-long v2, v10, v12

    if-ltz v2, :cond_7

    move v2, v3

    :goto_1
    if-eqz v2, :cond_5

    :cond_6
    const/4 v2, 0x4

    .line 3001
    new-array v2, v2, [D

    .line 3002
    iget-wide v10, v0, Lcom/aps/j;->b:D

    aput-wide v10, v2, v4

    .line 3003
    iget-wide v10, v0, Lcom/aps/j;->a:D

    aput-wide v10, v2, v3

    const/4 v9, 0x2

    .line 3004
    iget-object v10, p0, Lcom/aps/a;->u:Lcom/aps/c;

    invoke-virtual {v10}, Lcom/aps/c;->f()D

    move-result-wide v10

    aput-wide v10, v2, v9

    const/4 v9, 0x3

    .line 3005
    iget-object v10, p0, Lcom/aps/a;->u:Lcom/aps/c;

    invoke-virtual {v10}, Lcom/aps/c;->e()D

    move-result-wide v10

    aput-wide v10, v2, v9

    .line 3006
    invoke-static {v2}, Lcom/aps/t;->a([D)F

    move-result v2

    .line 3010
    iget v9, v0, Lcom/aps/j;->c:F

    cmpl-float v9, v2, v9

    if-gez v9, :cond_5

    const-string/jumbo v9, "distance"

    .line 3013
    invoke-virtual {v7, v9, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v2, "fence"

    .line 3014
    invoke-virtual {v0}, Lcom/aps/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3015
    invoke-virtual {v6, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3020
    :try_start_0
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3026
    :catch_0
    move-exception v0

    .line 3022
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_7
    move v2, v4

    .line 2995
    goto :goto_1
.end method

.method private r()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 3166
    iget v0, p0, Lcom/aps/a;->f:I

    packed-switch v0, :pswitch_data_0

    .line 3186
    :cond_0
    :goto_0
    return-void

    .line 3168
    :pswitch_0
    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 3172
    iput v1, p0, Lcom/aps/a;->f:I

    goto :goto_0

    .line 3176
    :pswitch_1
    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 3180
    iput v1, p0, Lcom/aps/a;->f:I

    goto :goto_0

    .line 3166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private s()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3238
    iget-object v1, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1

    .line 3243
    :try_start_0
    iget-object v1, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 3247
    :goto_0
    if-eqz v0, :cond_2

    .line 3265
    :cond_0
    :goto_1
    return v0

    .line 3239
    :cond_1
    return v0

    .line 3247
    :cond_2
    invoke-static {}, Lcom/aps/t;->b()I

    move-result v1

    const/16 v2, 0x11

    if-le v1, v2, :cond_0

    .line 3252
    :try_start_1
    iget-object v1, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    const-string/jumbo v2, "isScanAlwaysAvailable"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/aps/n;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3253
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_1

    .line 3263
    :catch_0
    move-exception v1

    goto :goto_1

    .line 3246
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private t()Lcom/aps/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3340
    invoke-direct {p0}, Lcom/aps/a;->j()[B

    move-result-object v0

    .line 3341
    iget-object v1, p0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    .line 3358
    :cond_0
    invoke-direct {p0, v0, v3}, Lcom/aps/a;->a([BZ)Lcom/aps/c;

    move-result-object v0

    .line 3359
    return-object v0

    .line 3341
    :cond_1
    iget-object v1, p0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aps/a;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3342
    iget-object v1, p0, Lcom/aps/a;->u:Lcom/aps/c;

    if-eqz v1, :cond_0

    .line 3347
    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/a;->v:J

    .line 3348
    iget-object v0, p0, Lcom/aps/a;->u:Lcom/aps/c;

    return-object v0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 3366
    iget-boolean v0, p0, Lcom/aps/a;->w:Z

    if-nez v0, :cond_0

    .line 3373
    invoke-direct {p0}, Lcom/aps/a;->r()V

    .line 3375
    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x9

    .line 3370
    iput v0, p0, Lcom/aps/a;->f:I

    .line 3371
    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method private v()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3477
    iget-object v0, p0, Lcom/aps/a;->b:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 3481
    :goto_0
    iget-object v0, p0, Lcom/aps/a;->a:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    .line 3485
    :goto_1
    return-void

    .line 3478
    :cond_0
    iget-object v0, p0, Lcom/aps/a;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3479
    iput-object v1, p0, Lcom/aps/a;->b:Ljava/util/Timer;

    goto :goto_0

    .line 3482
    :cond_1
    iget-object v0, p0, Lcom/aps/a;->a:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 3483
    iput-object v1, p0, Lcom/aps/a;->a:Ljava/util/TimerTask;

    goto :goto_1
.end method

.method private w()V
    .locals 2

    .prologue
    .line 3493
    invoke-virtual {p0}, Lcom/aps/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3497
    :try_start_0
    iget-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    const/16 v1, 0x300

    invoke-virtual {v0, v1}, Lcom/aps/y;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3502
    :goto_0
    return-void

    .line 3494
    :cond_0
    return-void

    .line 3501
    :catch_0
    move-exception v0

    .line 3499
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3500
    invoke-static {v0}, Lcom/aps/t;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private x()V
    .locals 1

    .prologue
    .line 3613
    invoke-virtual {p0}, Lcom/aps/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3616
    iget-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    invoke-virtual {v0}, Lcom/aps/y;->f()I

    move-result v0

    if-gtz v0, :cond_2

    .line 3620
    :try_start_0
    iget-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    invoke-virtual {v0}, Lcom/aps/y;->e()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 3635
    :cond_0
    :goto_0
    return-void

    .line 3614
    :cond_1
    return-void

    .line 3617
    :cond_2
    return-void

    .line 3634
    :catch_0
    move-exception v0

    .line 3630
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(ZI)I
    .locals 1

    .prologue
    .line 3396
    if-eqz p1, :cond_0

    .line 3399
    invoke-direct {p0, p2}, Lcom/aps/a;->c(I)V

    .line 3401
    :goto_0
    invoke-virtual {p0}, Lcom/aps/a;->e()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    return v0

    .line 3397
    :cond_0
    invoke-direct {p0}, Lcom/aps/a;->v()V

    goto :goto_0

    .line 3401
    :cond_1
    iget-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    invoke-virtual {v0}, Lcom/aps/y;->f()I

    move-result v0

    goto :goto_1
.end method

.method public a()Lcom/aps/c;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 284
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    if-eqz v0, :cond_5

    .line 290
    sget-object v0, Lcom/aps/f;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 295
    sget-object v0, Lcom/aps/f;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 301
    iget-object v0, p0, Lcom/aps/a;->s:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/aps/l;->a(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "false"

    .line 302
    aget-object v0, v0, v2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 317
    invoke-direct {p0}, Lcom/aps/a;->k()Z

    move-result v0

    if-nez v0, :cond_9

    .line 324
    :goto_0
    invoke-direct {p0}, Lcom/aps/a;->l()Z

    move-result v0

    if-nez v0, :cond_a

    .line 327
    :goto_1
    iget v0, p0, Lcom/aps/a;->B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aps/a;->B:I

    .line 328
    iget v0, p0, Lcom/aps/a;->B:I

    if-gt v0, v3, :cond_b

    .line 331
    :goto_2
    iget v0, p0, Lcom/aps/a;->B:I

    if-eq v0, v3, :cond_c

    .line 338
    :cond_0
    :goto_3
    iget-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    if-eqz v0, :cond_d

    .line 341
    :goto_4
    iget v0, p0, Lcom/aps/a;->B:I

    if-eq v0, v3, :cond_e

    .line 355
    :cond_1
    iget-wide v4, p0, Lcom/aps/a;->v:J

    invoke-direct {p0, v4, v5}, Lcom/aps/a;->a(J)Z

    move-result v0

    if-nez v0, :cond_10

    .line 366
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/aps/a;->H:Landroid/telephony/CellLocation;

    invoke-direct {p0, v0}, Lcom/aps/a;->a(Landroid/telephony/CellLocation;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :goto_5
    iget-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/aps/a;->a(Ljava/util/List;)V

    .line 373
    invoke-direct {p0}, Lcom/aps/a;->h()Ljava/lang/String;

    move-result-object v4

    .line 377
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 384
    invoke-direct {p0}, Lcom/aps/a;->i()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 387
    :try_start_1
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/aps/d;->a(Landroid/content/Context;)Lcom/aps/d;

    move-result-object v0

    const-string/jumbo v6, "mem"

    invoke-virtual {v0, v4, v5, v6}, Lcom/aps/d;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/aps/c;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 395
    :goto_6
    if-nez v0, :cond_12

    move v1, v2

    .line 402
    :goto_7
    if-nez v0, :cond_15

    .line 441
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/aps/a;->t()Lcom/aps/c;
    :try_end_2
    .catch Lcom/amap/api/location/core/AMapLocException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 450
    :cond_4
    iput-object v0, p0, Lcom/aps/a;->u:Lcom/aps/c;

    .line 487
    :goto_8
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/aps/d;->a(Landroid/content/Context;)Lcom/aps/d;

    move-result-object v0

    iget-object v1, p0, Lcom/aps/a;->u:Lcom/aps/c;

    invoke-virtual {v0, v4, v1, v5}, Lcom/aps/d;->a(Ljava/lang/String;Lcom/aps/c;Ljava/lang/StringBuilder;)V

    .line 488
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v5, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 490
    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/a;->v:J

    .line 491
    invoke-direct {p0}, Lcom/aps/a;->q()V

    .line 492
    invoke-virtual {p0}, Lcom/aps/a;->d()V

    .line 493
    iget-object v0, p0, Lcom/aps/a;->u:Lcom/aps/c;

    return-object v0

    .line 288
    :cond_5
    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_6
    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v1, "key\u9274\u6743\u5931\u8d25"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_7
    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v1, "key\u9274\u6743\u5931\u8d25"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const-string/jumbo v0, "AuthLocation"

    const-string/jumbo v1, "key\u9274\u6743\u5931\u8d25"

    .line 303
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v1, "key\u9274\u6743\u5931\u8d25"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_9
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    .line 319
    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/aps/a;->y:J

    goto/16 :goto_0

    .line 325
    :cond_a
    invoke-direct {p0}, Lcom/aps/a;->o()V

    goto/16 :goto_1

    .line 329
    :cond_b
    invoke-virtual {p0}, Lcom/aps/a;->c()V

    goto/16 :goto_2

    .line 332
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/aps/a;->G:J

    .line 333
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/aps/t;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/aps/a;->w:Z

    .line 334
    iget-object v0, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    goto/16 :goto_3

    .line 339
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    goto/16 :goto_4

    .line 341
    :cond_e
    invoke-direct {p0}, Lcom/aps/a;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v4, p0, Lcom/aps/a;->G:J

    iget-wide v6, p0, Lcom/aps/a;->F:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7d0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_f

    move v0, v3

    :goto_9
    if-nez v0, :cond_1

    const/4 v0, 0x4

    .line 343
    :goto_a
    if-lez v0, :cond_1

    .line 344
    iget-object v4, p0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    const-wide/16 v4, 0x1f4

    .line 345
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 346
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_f
    move v0, v2

    .line 341
    goto :goto_9

    .line 356
    :cond_10
    iget-object v0, p0, Lcom/aps/a;->u:Lcom/aps/c;

    if-eqz v0, :cond_2

    .line 357
    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/a;->v:J

    .line 361
    iget-object v0, p0, Lcom/aps/a;->u:Lcom/aps/c;

    return-object v0

    .line 369
    :catch_0
    move-exception v0

    .line 368
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5

    .line 381
    :cond_11
    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v1, "\u83b7\u53d6\u57fa\u7ad9/WiFi\u4fe1\u606f\u4e3a\u7a7a\u6216\u5931\u8d25"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :catch_1
    move-exception v0

    move-object v0, v1

    goto/16 :goto_6

    .line 396
    :cond_12
    invoke-virtual {v0}, Lcom/aps/c;->h()J

    move-result-wide v6

    .line 397
    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v8

    .line 398
    sub-long v6, v8, v6

    const-wide/32 v8, 0x36ee80

    cmp-long v1, v6, v8

    if-gtz v1, :cond_13

    move v1, v3

    :goto_b
    if-nez v1, :cond_14

    move v1, v3

    .line 399
    goto/16 :goto_7

    :cond_13
    move v1, v2

    .line 398
    goto :goto_b

    :cond_14
    move v1, v2

    goto/16 :goto_7

    .line 402
    :cond_15
    if-nez v1, :cond_3

    .line 481
    iput-object v0, p0, Lcom/aps/a;->u:Lcom/aps/c;

    goto/16 :goto_8

    .line 448
    :catch_2
    move-exception v1

    .line 443
    if-nez v0, :cond_4

    .line 446
    throw v1
.end method

.method public a(Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 636
    if-eqz p1, :cond_0

    .line 642
    iget-object v0, p0, Lcom/aps/a;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    return-void

    .line 637
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 150
    if-eqz p1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    .line 177
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    const-string/jumbo v1, "in debug mode, only for test"

    invoke-static {v0, v1}, Lcom/aps/t;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0}, Lcom/aps/a;->f()V

    .line 191
    invoke-direct {p0}, Lcom/aps/a;->g()V

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/a;->F:J

    .line 196
    return-void

    .line 154
    :cond_0
    return-void

    .line 165
    :cond_1
    return-void
.end method

.method public a(Lcom/amap/api/location/AMapLocation;)V
    .locals 14

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3098
    if-nez p1, :cond_1

    .line 3099
    :cond_0
    return-void

    .line 3098
    :cond_1
    iget-object v0, p0, Lcom/aps/a;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lt v0, v3, :cond_0

    .line 3102
    iget-object v0, p0, Lcom/aps/a;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 3103
    :cond_2
    if-nez v5, :cond_4

    .line 3156
    :cond_3
    return-void

    .line 3103
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3105
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3106
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 3107
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3108
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 3109
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 3110
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/j;

    .line 3111
    invoke-virtual {v0}, Lcom/aps/j;->a()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    .line 3112
    cmp-long v2, v10, v12

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v12

    cmp-long v2, v10, v12

    if-ltz v2, :cond_9

    move v2, v3

    :goto_1
    if-eqz v2, :cond_5

    :cond_6
    const/4 v2, 0x4

    .line 3118
    new-array v2, v2, [D

    .line 3119
    iget-wide v10, v0, Lcom/aps/j;->b:D

    aput-wide v10, v2, v4

    .line 3120
    iget-wide v10, v0, Lcom/aps/j;->a:D

    aput-wide v10, v2, v3

    const/4 v9, 0x2

    .line 3121
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v10

    aput-wide v10, v2, v9

    const/4 v9, 0x3

    .line 3122
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v10

    aput-wide v10, v2, v9

    .line 3123
    invoke-static {v2}, Lcom/aps/t;->a([D)F

    move-result v2

    .line 3127
    iget v9, v0, Lcom/aps/j;->c:F

    cmpl-float v9, v2, v9

    if-ltz v9, :cond_7

    .line 3128
    iget v9, v0, Lcom/aps/j;->d:I

    if-eqz v9, :cond_5

    .line 3131
    iput v4, v0, Lcom/aps/j;->d:I

    .line 3133
    :cond_7
    iget v9, v0, Lcom/aps/j;->c:F

    cmpg-float v9, v2, v9

    if-gez v9, :cond_8

    .line 3134
    iget v9, v0, Lcom/aps/j;->d:I

    if-eq v9, v3, :cond_5

    .line 3137
    iput v3, v0, Lcom/aps/j;->d:I

    :cond_8
    const-string/jumbo v9, "distance"

    .line 3139
    invoke-virtual {v7, v9, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v2, "fence"

    .line 3140
    invoke-virtual {v0}, Lcom/aps/j;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v2, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "status"

    .line 3141
    iget v0, v0, Lcom/aps/j;->d:I

    invoke-virtual {v7, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3142
    invoke-virtual {v6, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3147
    :try_start_0
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3153
    :catch_0
    move-exception v0

    .line 3149
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_9
    move v2, v4

    .line 3112
    goto :goto_1
.end method

.method public a(Lcom/aps/j;Landroid/app/PendingIntent;)V
    .locals 4

    .prologue
    .line 572
    if-nez p2, :cond_1

    .line 573
    :cond_0
    return-void

    .line 572
    :cond_1
    if-eqz p1, :cond_0

    .line 575
    invoke-virtual {p1}, Lcom/aps/j;->a()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    .line 576
    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_3

    .line 580
    return-void

    .line 576
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 585
    :cond_3
    iget-object v0, p0, Lcom/aps/a;->l:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 590
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 591
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    iget-object v1, p0, Lcom/aps/a;->l:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    :goto_1
    return-void

    .line 586
    :cond_4
    iget-object v0, p0, Lcom/aps/a;->l:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 587
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    iget-object v1, p0, Lcom/aps/a;->l:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 527
    if-nez p1, :cond_1

    .line 531
    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "##"

    .line 527
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "##"

    .line 533
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 534
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 541
    aget-object v1, v0, v3

    invoke-static {v1}, Lcom/aps/f;->a(Ljava/lang/String;)V

    .line 542
    sget-object v1, Lcom/aps/f;->e:Ljava/lang/String;

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 546
    :goto_0
    aget-object v1, v0, v4

    invoke-static {v1}, Lcom/aps/f;->b(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 547
    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/aps/f;->c(Ljava/lang/String;)V

    .line 548
    return-void

    .line 538
    :cond_2
    return-void

    .line 543
    :cond_3
    iget-object v1, p0, Lcom/aps/a;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/aps/d;->a(Landroid/content/Context;)Lcom/aps/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aps/d;->a()V

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/aps/a;->s:Lorg/json/JSONObject;

    .line 562
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 669
    :try_start_0
    iget-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    .line 702
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    .line 749
    :goto_1
    iput-object v3, p0, Lcom/aps/a;->q:Lcom/aps/a$a;

    .line 712
    invoke-direct {p0}, Lcom/aps/a;->v()V

    .line 717
    :try_start_2
    iget-object v0, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v0, :cond_3

    .line 724
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    if-nez v0, :cond_4

    .line 728
    :goto_3
    invoke-static {v4}, Lcom/aps/f;->a(Z)V

    const-wide/16 v0, 0x0

    .line 730
    iput-wide v0, p0, Lcom/aps/a;->v:J

    .line 731
    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 732
    iget-object v0, p0, Lcom/aps/a;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 733
    iget-object v0, p0, Lcom/aps/a;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/16 v0, -0x71

    .line 734
    iput v0, p0, Lcom/aps/a;->p:I

    .line 735
    invoke-direct {p0}, Lcom/aps/a;->n()V

    .line 736
    iput-object v3, p0, Lcom/aps/a;->t:Ljava/lang/String;

    .line 737
    iput-object v3, p0, Lcom/aps/a;->u:Lcom/aps/c;

    .line 740
    iput-object v3, p0, Lcom/aps/a;->e:Landroid/content/Context;

    .line 741
    iput-object v3, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    .line 749
    return-void

    .line 670
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    invoke-virtual {v0}, Lcom/aps/y;->c()V

    .line 671
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aps/a;->I:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 679
    :catch_0
    move-exception v0

    .line 674
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 703
    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v1, p0, Lcom/aps/a;->q:Lcom/aps/a$a;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 711
    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 749
    iput-object v3, p0, Lcom/aps/a;->q:Lcom/aps/a$a;

    .line 710
    throw v0

    .line 717
    :cond_3
    :try_start_7
    iget-object v0, p0, Lcom/aps/a;->o:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/aps/a;->o:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    .line 723
    :catch_2
    move-exception v0

    .line 721
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 722
    invoke-static {v0}, Lcom/aps/t;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 725
    :cond_4
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/aps/d;->a(Landroid/content/Context;)Lcom/aps/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aps/d;->a()V

    .line 726
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/aps/d;->a(Landroid/content/Context;)Lcom/aps/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aps/d;->b()V

    goto :goto_3

    .line 711
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_1
.end method

.method public b(Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 645
    if-eqz p1, :cond_0

    .line 651
    iget-object v0, p0, Lcom/aps/a;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    return-void

    .line 646
    :cond_0
    return-void
.end method

.method public b(Lcom/aps/j;Landroid/app/PendingIntent;)V
    .locals 4

    .prologue
    .line 601
    if-nez p2, :cond_1

    .line 602
    :cond_0
    return-void

    .line 601
    :cond_1
    if-eqz p1, :cond_0

    .line 604
    invoke-virtual {p1}, Lcom/aps/j;->a()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    .line 605
    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_3

    .line 609
    return-void

    .line 605
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 614
    :cond_3
    iget-object v0, p0, Lcom/aps/a;->m:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 619
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 620
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    iget-object v1, p0, Lcom/aps/a;->m:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    :goto_1
    return-void

    .line 615
    :cond_4
    iget-object v0, p0, Lcom/aps/a;->m:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 616
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    iget-object v1, p0, Lcom/aps/a;->m:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public c()V
    .locals 2

    .prologue
    .line 2911
    :try_start_0
    iget-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    if-eqz v0, :cond_0

    .line 2916
    :goto_0
    iget-boolean v0, p0, Lcom/aps/a;->I:Z

    if-eqz v0, :cond_1

    .line 2928
    :goto_1
    return-void

    .line 2912
    :cond_0
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/aps/y;->a(Landroid/content/Context;)Lcom/aps/y;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    .line 2913
    iget-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/aps/y;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2926
    :catch_0
    move-exception v0

    .line 2922
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 2917
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/aps/a;->I:Z

    .line 2918
    iget-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    invoke-virtual {v0}, Lcom/aps/y;->a()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public d()V
    .locals 14

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3037
    iget-object v0, p0, Lcom/aps/a;->u:Lcom/aps/c;

    if-nez v0, :cond_1

    .line 3038
    :cond_0
    return-void

    .line 3037
    :cond_1
    iget-object v0, p0, Lcom/aps/a;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lt v0, v3, :cond_0

    .line 3041
    iget-object v0, p0, Lcom/aps/a;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 3042
    :cond_2
    if-nez v5, :cond_4

    .line 3095
    :cond_3
    return-void

    .line 3042
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3044
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3045
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 3046
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3047
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 3048
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 3049
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/j;

    .line 3050
    invoke-virtual {v0}, Lcom/aps/j;->a()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    .line 3051
    cmp-long v2, v10, v12

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v12

    cmp-long v2, v10, v12

    if-ltz v2, :cond_9

    move v2, v3

    :goto_1
    if-eqz v2, :cond_5

    :cond_6
    const/4 v2, 0x4

    .line 3057
    new-array v2, v2, [D

    .line 3058
    iget-wide v10, v0, Lcom/aps/j;->b:D

    aput-wide v10, v2, v4

    .line 3059
    iget-wide v10, v0, Lcom/aps/j;->a:D

    aput-wide v10, v2, v3

    const/4 v9, 0x2

    .line 3060
    iget-object v10, p0, Lcom/aps/a;->u:Lcom/aps/c;

    invoke-virtual {v10}, Lcom/aps/c;->f()D

    move-result-wide v10

    aput-wide v10, v2, v9

    const/4 v9, 0x3

    .line 3061
    iget-object v10, p0, Lcom/aps/a;->u:Lcom/aps/c;

    invoke-virtual {v10}, Lcom/aps/c;->e()D

    move-result-wide v10

    aput-wide v10, v2, v9

    .line 3062
    invoke-static {v2}, Lcom/aps/t;->a([D)F

    move-result v2

    .line 3066
    iget v9, v0, Lcom/aps/j;->c:F

    cmpl-float v9, v2, v9

    if-ltz v9, :cond_7

    .line 3067
    iget v9, v0, Lcom/aps/j;->d:I

    if-eqz v9, :cond_5

    .line 3070
    iput v4, v0, Lcom/aps/j;->d:I

    .line 3072
    :cond_7
    iget v9, v0, Lcom/aps/j;->c:F

    cmpg-float v9, v2, v9

    if-gez v9, :cond_8

    .line 3073
    iget v9, v0, Lcom/aps/j;->d:I

    if-eq v9, v3, :cond_5

    .line 3076
    iput v3, v0, Lcom/aps/j;->d:I

    :cond_8
    const-string/jumbo v9, "distance"

    .line 3078
    invoke-virtual {v7, v9, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v2, "fence"

    .line 3079
    invoke-virtual {v0}, Lcom/aps/j;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v2, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "status"

    .line 3080
    iget v0, v0, Lcom/aps/j;->d:I

    invoke-virtual {v7, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3081
    invoke-virtual {v6, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3086
    :try_start_0
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3092
    :catch_0
    move-exception v0

    .line 3088
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_9
    move v2, v4

    .line 3051
    goto :goto_1
.end method

.method e()Z
    .locals 1

    .prologue
    .line 3600
    iget-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    if-eqz v0, :cond_0

    .line 3603
    const/4 v0, 0x1

    return v0

    .line 3601
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
