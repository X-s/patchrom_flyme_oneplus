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

    .line 57
    const/16 v0, 0x9

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

    .line 78
    const/16 v0, -0x71

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

    .line 98
    const-string v0, "00:00:00:00:00:00"

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

    const/4 v5, 0x0

    .line 2065
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 2066
    const/4 v0, 0x0

    .line 2195
    :cond_0
    :goto_0
    return-object v0

    .line 2070
    :cond_1
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

    .line 2092
    :goto_1
    const-string v2, ""

    .line 2095
    iget-object v2, p0, Lcom/aps/a;->s:Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/aps/l;->a(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v2

    .line 2096
    if-eqz v0, :cond_2

    const-string v3, "<saps>"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 2107
    invoke-virtual {v1, v0}, Lcom/aps/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2108
    iget-object v2, p0, Lcom/aps/a;->n:Lcom/aps/b;

    const-string v3, "GBK"

    invoke-virtual {v2, v0, v3}, Lcom/aps/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2120
    :goto_2
    invoke-virtual {v1, v0}, Lcom/aps/m;->b(Ljava/lang/String;)Lcom/aps/c;

    move-result-object v0

    .line 2179
    invoke-static {v0}, Lcom/aps/t;->a(Lcom/aps/c;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2183
    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2080
    :catch_0
    move-exception v0

    .line 2082
    throw v0

    .line 2113
    :cond_2
    aget-object v2, v2, v5

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2114
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "api return pure"

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/aps/t;->a([Ljava/lang/Object;)V

    goto :goto_2

    .line 2116
    :cond_3
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "aps return pure"

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/aps/t;->a([Ljava/lang/Object;)V

    goto :goto_2

    .line 2185
    :cond_4
    invoke-virtual {v0}, Lcom/aps/c;->t()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2192
    :cond_5
    iget-object v1, p0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2193
    iget-object v1, p0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aps/a;->t:Ljava/lang/String;

    goto :goto_0

    .line 2083
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private a(Landroid/telephony/NeighboringCellInfo;)Lcom/aps/e;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2563
    invoke-static {}, Lcom/aps/t;->b()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 2586
    :goto_0
    return-object v0

    .line 2570
    :cond_0
    :try_start_0
    new-instance v1, Lcom/aps/e;

    invoke-direct {v1}, Lcom/aps/e;-><init>()V

    .line 2571
    iget-object v2, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Lcom/aps/t;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v2

    .line 2572
    const/4 v3, 0x0

    aget-object v3, v2, v3

    iput-object v3, v1, Lcom/aps/e;->a:Ljava/lang/String;

    .line 2573
    const/4 v3, 0x1

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/aps/e;->b:Ljava/lang/String;

    .line 2574
    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v2

    iput v2, v1, Lcom/aps/e;->c:I

    .line 2575
    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v2

    iput v2, v1, Lcom/aps/e;->d:I

    .line 2576
    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v2

    .line 2577
    invoke-static {v2}, Lcom/aps/t;->a(I)I

    move-result v2

    iput v2, v1, Lcom/aps/e;->j:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 2578
    goto :goto_0

    .line 2579
    :catch_0
    move-exception v1

    .line 2580
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
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

    .line 3648
    const-string v1, "e"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3649
    const-string v1, "d"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3650
    const-string v1, "u"

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
    .line 997
    const/4 v0, 0x0

    .line 998
    iget-boolean v1, p0, Lcom/aps/a;->w:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 1002
    iget-object v1, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 1006
    :cond_0
    if-nez v0, :cond_3

    .line 1009
    :goto_0
    if-nez p1, :cond_2

    .line 1034
    :cond_1
    :goto_1
    return-void

    .line 1012
    :cond_2
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/aps/t;->a(Landroid/telephony/CellLocation;Landroid/content/Context;)I

    move-result v0

    .line 1013
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1018
    :pswitch_0
    iget-object v0, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 1019
    invoke-direct {p0, p1}, Lcom/aps/a;->c(Landroid/telephony/CellLocation;)V

    goto :goto_1

    .line 1026
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/aps/a;->d(Landroid/telephony/CellLocation;)V

    goto :goto_1

    :cond_3
    move-object p1, v0

    goto :goto_0

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
    if-nez p1, :cond_1

    .line 2243
    :cond_0
    return-void

    .line 2208
    :cond_1
    const/16 v1, 0x17

    new-array v1, v1, [Ljava/lang/String;

    .line 2209
    const-string v2, " phnum=\"\""

    aput-object v2, v1, v0

    .line 2210
    const/4 v2, 0x1

    const-string v3, " nettype=\"\""

    aput-object v3, v1, v2

    .line 2211
    const/4 v2, 0x2

    const-string v3, " nettype=\"UNKNOWN\""

    aput-object v3, v1, v2

    .line 2212
    const/4 v2, 0x3

    const-string v3, " inftype=\"\""

    aput-object v3, v1, v2

    .line 2213
    const/4 v2, 0x4

    const-string v3, "<macs><![CDATA[]]></macs>"

    aput-object v3, v1, v2

    .line 2214
    const/4 v2, 0x5

    const-string v3, "<nb></nb>"

    aput-object v3, v1, v2

    .line 2215
    const/4 v2, 0x6

    const-string v3, "<mmac><![CDATA[]]></mmac>"

    aput-object v3, v1, v2

    .line 2216
    const/4 v2, 0x7

    const-string v3, " gtype=\"0\""

    aput-object v3, v1, v2

    .line 2217
    const/16 v2, 0x8

    const-string v3, " glong=\"0.0\""

    aput-object v3, v1, v2

    .line 2218
    const/16 v2, 0x9

    const-string v3, " glat=\"0.0\""

    aput-object v3, v1, v2

    .line 2219
    const/16 v2, 0xa

    const-string v3, " precision=\"0.0\""

    aput-object v3, v1, v2

    .line 2220
    const/16 v2, 0xb

    const-string v3, " glong=\"0\""

    aput-object v3, v1, v2

    .line 2221
    const/16 v2, 0xc

    const-string v3, " glat=\"0\""

    aput-object v3, v1, v2

    .line 2222
    const/16 v2, 0xd

    const-string v3, " precision=\"0\""

    aput-object v3, v1, v2

    .line 2223
    const/16 v2, 0xe

    const-string v3, "<smac>null</smac>"

    aput-object v3, v1, v2

    .line 2224
    const/16 v2, 0xf

    const-string v3, "<smac>00:00:00:00:00:00</smac>"

    aput-object v3, v1, v2

    .line 2225
    const/16 v2, 0x10

    const-string v3, "<imei>000000000000000</imei>"

    aput-object v3, v1, v2

    .line 2226
    const/16 v2, 0x11

    const-string v3, "<imsi>000000000000000</imsi>"

    aput-object v3, v1, v2

    .line 2227
    const/16 v2, 0x12

    const-string v3, "<mcc>000</mcc>"

    aput-object v3, v1, v2

    .line 2228
    const/16 v2, 0x13

    const-string v3, "<mcc>0</mcc>"

    aput-object v3, v1, v2

    .line 2229
    const/16 v2, 0x14

    const-string v3, "<lac>0</lac>"

    aput-object v3, v1, v2

    .line 2230
    const/16 v2, 0x15

    const-string v3, "<cellid>0</cellid>"

    aput-object v3, v1, v2

    .line 2231
    const/16 v2, 0x16

    const-string v3, "<key></key>"

    aput-object v3, v1, v2

    .line 2232
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 2233
    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_2

    .line 2234
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 2235
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2232
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2239
    :cond_3
    :goto_2
    const-string v0, "*<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_0

    .line 2240
    const-string v0, "*<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2241
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_2
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
    .line 1649
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 1686
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1655
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1656
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1657
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 1658
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_2

    iget v3, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-direct {p0, v3}, Lcom/aps/a;->a(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1656
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1664
    :cond_2
    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1665
    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v4, "*"

    const-string v5, "."

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 1669
    :goto_3
    iget v3, v0, Landroid/net/wifi/ScanResult;->level:I

    mul-int/lit8 v3, v3, 0x1e

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1649
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1667
    :cond_3
    :try_start_2
    const-string v3, "null"

    iput-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_3

    .line 1672
    :cond_4
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

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1676
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1677
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1678
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v4, 0x1d

    if-le v0, v4, :cond_5

    .line 1682
    :cond_6
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1684
    invoke-virtual {v1}, Ljava/util/TreeMap;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private a(I)Z
    .locals 3

    .prologue
    const/16 v1, 0x14

    const/4 v0, 0x1

    .line 1695
    .line 1697
    const/16 v2, 0x14

    :try_start_0
    invoke-static {p1, v2}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1705
    :goto_0
    if-lt v1, v0, :cond_0

    :goto_1
    return v0

    .line 1698
    :catch_0
    move-exception v2

    .line 1703
    invoke-static {v2}, Lcom/aps/t;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1705
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(J)Z
    .locals 9

    .prologue
    .line 1043
    const/4 v0, 0x0

    .line 1044
    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v4

    .line 1045
    sub-long v2, v4, p1

    .line 1049
    const-wide/16 v6, 0x12c

    cmp-long v1, v2, v6

    if-gez v1, :cond_1

    .line 1053
    const-wide/16 v2, 0x0

    .line 1054
    iget-object v1, p0, Lcom/aps/a;->u:Lcom/aps/c;

    if-eqz v1, :cond_0

    .line 1055
    iget-object v1, p0, Lcom/aps/a;->u:Lcom/aps/c;

    invoke-virtual {v1}, Lcom/aps/c;->h()J

    move-result-wide v2

    sub-long v2, v4, v2

    .line 1057
    :cond_0
    const-wide/16 v4, 0x2710

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 1069
    :cond_1
    :goto_0
    return v0

    .line 1062
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/net/wifi/ScanResult;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1206
    const/4 v1, 0x1

    .line 1208
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    move v1, v0

    .line 1216
    :goto_1
    return v1

    .line 1210
    :cond_1
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v3, "00:00:00:00:00:00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1213
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private a(Landroid/net/wifi/WifiInfo;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1187
    const/4 v1, 0x1

    .line 1188
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1197
    :cond_0
    :goto_0
    return v0

    .line 1190
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1192
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "00:00:00:00:00:00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1194
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

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
    .line 1308
    monitor-enter p0

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

    .line 1310
    const-string v7, "0"

    .line 1311
    const-string v10, "0"

    .line 1312
    const-string v11, "0"

    .line 1313
    const-string v12, "0"

    .line 1314
    const-string v13, "0"

    .line 1315
    const-string v2, ""

    .line 1318
    const-string v2, ""

    sput-object v2, Lcom/aps/f;->c:Ljava/lang/String;

    .line 1319
    const-string v6, ""

    .line 1320
    const-string v2, ""

    .line 1321
    const-string v5, ""

    .line 1323
    const-string v14, "V1.3.1"

    .line 1324
    const-string v3, "version"

    invoke-static {v3}, Lcom/aps/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1326
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 1327
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1329
    move-object/from16 v0, p0

    iget v8, v0, Lcom/aps/a;->f:I

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v8, v0, :cond_13

    .line 1330
    const-string v7, "1"

    move-object v8, v7

    .line 1357
    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    if-eqz v7, :cond_3

    .line 1358
    sget-object v7, Lcom/aps/f;->a:Ljava/lang/String;

    if-eqz v7, :cond_0

    const-string v7, "888888888888888"

    sget-object v17, Lcom/aps/f;->a:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_1

    .line 1360
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/aps/f;->a:Ljava/lang/String;

    .line 1361
    sget-object v7, Lcom/aps/f;->a:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 1362
    const-string v7, "888888888888888"

    sput-object v7, Lcom/aps/f;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1372
    :cond_1
    :goto_1
    :try_start_2
    sget-object v7, Lcom/aps/f;->b:Ljava/lang/String;

    if-eqz v7, :cond_2

    const-string v7, "888888888888888"

    sget-object v17, Lcom/aps/f;->b:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    if-eqz v7, :cond_3

    .line 1374
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/aps/f;->b:Ljava/lang/String;

    .line 1375
    sget-object v7, Lcom/aps/f;->b:Ljava/lang/String;

    if-nez v7, :cond_3

    .line 1376
    const-string v7, "888888888888888"

    sput-object v7, Lcom/aps/f;->b:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1399
    :cond_3
    :goto_2
    const/4 v7, 0x0

    .line 1401
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aps/a;->g:Landroid/net/ConnectivityManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v7

    .line 1408
    :goto_3
    :try_start_5
    invoke-static {v7}, Lcom/aps/l;->a(Landroid/net/NetworkInfo;)I

    move-result v7

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_8

    .line 1409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Lcom/aps/l;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v6

    .line 1410
    invoke-direct/range {p0 .. p0}, Lcom/aps/a;->s()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/aps/a;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1411
    const-string v2, "2"

    move-object v7, v6

    move-object v6, v2

    .line 1421
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->s:Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/aps/l;->a(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v2

    .line 1422
    const/16 v17, 0x1

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

    const-string v18, "android"

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

    const-string v18, ","

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
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1444
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->k:Ljava/util/List;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

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

    const-string v14, ""

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/aps/o;->E:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1450
    :cond_4
    :goto_5
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string v14, "<?xml version=\"1.0\" encoding=\""

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string v14, "GBK"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, "\"?>"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string v14, "<Cell_Req ver=\"3.0\"><HDR version=\"3.0\" cdma=\""

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string v8, "\" gtype=\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string v8, "\" glong=\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string v8, "\" glat=\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string v8, "\" precision=\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string v8, "\"><src>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Lcom/aps/f;->d:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string v8, "</src><license>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Lcom/aps/f;->e:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string v8, "</license><key>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string v8, "</key><clientid>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Lcom/aps/f;->f:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string v8, "</clientid><imei>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Lcom/aps/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string v8, "</imei><imsi>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Lcom/aps/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string v8, "</imsi><smac>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/aps/a;->C:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string v8, "</smac></HDR><DRR phnum=\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Lcom/aps/f;->c:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string v8, "\" nettype=\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string v7, "\" inftype=\""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\">"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_12

    .line 1469
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1470
    move-object/from16 v0, p0

    iget v2, v0, Lcom/aps/a;->f:I

    packed-switch v2, :pswitch_data_0

    move-object v2, v5

    .line 1514
    :goto_6
    const/4 v5, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-object v6, v2

    .line 1517
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/aps/a;->s()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/aps/a;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    const-string v5, "*"

    const-string v7, "."

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1523
    :cond_5
    const/4 v2, 0x0

    move v5, v2

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_f

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

    if-eqz v7, :cond_6

    .line 1526
    iget-object v7, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    iget v2, v2, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "*"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1523
    :cond_6
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_8

    .line 1413
    :cond_7
    const-string v2, "1"

    .line 1414
    invoke-direct/range {p0 .. p0}, Lcom/aps/a;->s()Z

    move-result v7

    if-nez v7, :cond_9

    .line 1415
    invoke-direct/range {p0 .. p0}, Lcom/aps/a;->n()V

    move-object v7, v6

    move-object v6, v2

    goto/16 :goto_4

    .line 1419
    :cond_8
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    :cond_9
    move-object v7, v6

    move-object v6, v2

    goto/16 :goto_4

    .line 1447
    :catch_0
    move-exception v2

    .line 1448
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_5

    .line 1308
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1472
    :pswitch_0
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->j:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aps/e;

    .line 1473
    const/4 v5, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1474
    const-string v5, "<mcc>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/aps/e;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</mcc>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1475
    const-string v5, "<mnc>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/aps/e;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</mnc>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1476
    const-string v5, "<lac>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/aps/e;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</lac>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1477
    const-string v5, "<cellid>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/aps/e;->d:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1478
    const-string v5, "</cellid>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1479
    const-string v5, "<signal>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v2, v2, Lcom/aps/e;->j:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1480
    const-string v2, "</signal>"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1481
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1482
    const/4 v2, 0x0

    move v6, v2

    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_c

    .line 1483
    if-nez v6, :cond_b

    .line 1482
    :cond_a
    :goto_a
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_9

    .line 1486
    :cond_b
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

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    iget v8, v2, Lcom/aps/e;->d:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ","

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

    if-eq v6, v2, :cond_a

    .line 1491
    const-string v2, "*"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_c
    move-object v2, v5

    .line 1495
    goto/16 :goto_6

    .line 1497
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->j:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aps/e;

    .line 1498
    const/4 v5, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1499
    const-string v5, "<mcc>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/aps/e;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</mcc>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    const-string v5, "<sid>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/aps/e;->g:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</sid>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1501
    const-string v5, "<nid>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/aps/e;->h:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</nid>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    const-string v5, "<bid>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/aps/e;->i:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</bid>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1503
    iget v5, v2, Lcom/aps/e;->f:I

    if-lez v5, :cond_d

    iget v5, v2, Lcom/aps/e;->e:I

    if-lez v5, :cond_d

    .line 1504
    const-string v5, "<lon>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/aps/e;->f:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</lon>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1505
    const-string v5, "<lat>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/aps/e;->e:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</lat>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1507
    :cond_d
    const-string v5, "<signal>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v2, v2, Lcom/aps/e;->j:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "</signal>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    .line 1532
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/aps/a;->n()V

    .line 1536
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string v5, "<nb>%s</nb>"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v16, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1538
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_10

    .line 1539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string v5, "<macs><![CDATA[%s]]></macs>"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1544
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string v5, "<mmac><![CDATA[%s]]></mmac>"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string v5, "</DRR></Cell_Req>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/aps/a;->a(Ljava/lang/StringBuilder;)V

    .line 1548
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_11

    move-object v2, v3

    .line 1551
    :goto_c
    iput-object v6, v9, Lcom/aps/o;->v:Ljava/lang/String;

    .line 1552
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lcom/aps/o;->w:Ljava/lang/String;

    .line 1553
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lcom/aps/o;->x:Ljava/lang/String;

    .line 1554
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lcom/aps/o;->y:Ljava/lang/String;

    .line 1555
    move-object/from16 v0, p0

    iget v4, v0, Lcom/aps/a;->f:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lcom/aps/o;->u:Ljava/lang/String;

    .line 1633
    const/4 v4, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1635
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1637
    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1639
    invoke-virtual {v9}, Lcom/aps/o;->a()[B
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 1541
    :cond_10
    :try_start_9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string v5, "<macs><![CDATA[%s]]></macs>"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_b

    .line 1402
    :catch_1
    move-exception v17

    goto/16 :goto_3

    .line 1378
    :catch_2
    move-exception v7

    goto/16 :goto_2

    .line 1364
    :catch_3
    move-exception v7

    goto/16 :goto_1

    :cond_11
    move-object v2, v4

    goto :goto_c

    :cond_12
    move-object v6, v5

    goto/16 :goto_7

    :cond_13
    move-object v8, v7

    goto/16 :goto_0

    .line 1470
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

    .line 2544
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/aps/e;->a:Ljava/lang/String;

    .line 2545
    const/4 v2, 0x1

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
    const/16 v0, -0x71

    .line 2295
    if-ne p1, v0, :cond_1

    .line 2296
    iput v0, p0, Lcom/aps/a;->p:I

    .line 2310
    :cond_0
    :goto_0
    return-void

    .line 2299
    :cond_1
    iput p1, p0, Lcom/aps/a;->p:I

    .line 2300
    iget v0, p0, Lcom/aps/a;->f:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2303
    :pswitch_0
    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2304
    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    const/4 v1, 0x0

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
    .line 3413
    :try_start_0
    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/aps/a;->F:J

    sub-long/2addr v0, v2

    .line 3414
    const-wide/32 v2, 0xafc8

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 3469
    :cond_0
    :goto_0
    return-void

    .line 3423
    :cond_1
    invoke-virtual {p0}, Lcom/aps/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3429
    invoke-virtual {p0}, Lcom/aps/a;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    invoke-virtual {v0}, Lcom/aps/y;->f()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 3433
    :cond_2
    invoke-direct {p0}, Lcom/aps/a;->x()V

    .line 3434
    iget-object v0, p0, Lcom/aps/a;->a:Ljava/util/TimerTask;

    if-nez v0, :cond_3

    .line 3435
    new-instance v0, Lcom/aps/a$2;

    invoke-direct {v0, p0, p1}, Lcom/aps/a$2;-><init>(Lcom/aps/a;I)V

    iput-object v0, p0, Lcom/aps/a;->a:Ljava/util/TimerTask;

    .line 3459
    :cond_3
    iget-object v0, p0, Lcom/aps/a;->b:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 3460
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
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3463
    :catch_0
    move-exception v0

    .line 3464
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private c(Landroid/telephony/CellLocation;)V
    .locals 8

    .prologue
    const v7, 0xfffffff

    const v6, 0xffff

    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 2596
    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    .line 2665
    :cond_0
    :goto_0
    return-void

    .line 2599
    :cond_1
    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move-object v0, p1

    .line 2601
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 2602
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    if-ne v1, v5, :cond_2

    move v0, v2

    .line 2615
    :goto_1
    if-nez v0, :cond_7

    .line 2616
    const/16 v0, 0x9

    iput v0, p0, Lcom/aps/a;->f:I

    .line 2617
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "case 2,gsm illegal"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/aps/t;->a([Ljava/lang/Object;)V

    goto :goto_0

    .line 2604
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    if-eq v1, v5, :cond_3

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    if-eq v1, v6, :cond_3

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    if-lt v1, v7, :cond_4

    :cond_3
    move v0, v2

    .line 2606
    goto :goto_1

    .line 2607
    :cond_4
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    if-nez v1, :cond_5

    move v0, v2

    .line 2608
    goto :goto_1

    .line 2609
    :cond_5
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    if-le v1, v6, :cond_6

    move v0, v2

    .line 2610
    goto :goto_1

    .line 2611
    :cond_6
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    if-nez v0, :cond_11

    move v0, v2

    .line 2612
    goto :goto_1

    .line 2620
    :cond_7
    iput v3, p0, Lcom/aps/a;->f:I

    .line 2621
    const/4 v0, 0x0

    .line 2622
    iget-object v1, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/aps/a;->b(Landroid/telephony/CellLocation;)Lcom/aps/e;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2623
    iget-object v1, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_8

    .line 2624
    iget-object v0, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    .line 2625
    :cond_8
    if-eqz v0, :cond_0

    .line 2631
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    .line 2632
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    if-eq v1, v5, :cond_9

    .line 2636
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v1

    if-ne v1, v5, :cond_a

    move v1, v2

    .line 2657
    :goto_3
    if-eqz v1, :cond_9

    .line 2660
    invoke-direct {p0, v0}, Lcom/aps/a;->a(Landroid/telephony/NeighboringCellInfo;)Lcom/aps/e;

    move-result-object v0

    .line 2661
    if-eqz v0, :cond_9

    .line 2662
    iget-object v1, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2638
    :cond_a
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v1

    if-nez v1, :cond_b

    move v1, v2

    .line 2639
    goto :goto_3

    .line 2640
    :cond_b
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v1

    if-le v1, v6, :cond_c

    move v1, v2

    .line 2641
    goto :goto_3

    .line 2642
    :cond_c
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    if-ne v1, v5, :cond_d

    move v1, v2

    .line 2643
    goto :goto_3

    .line 2644
    :cond_d
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    if-nez v1, :cond_e

    move v1, v2

    .line 2645
    goto :goto_3

    .line 2646
    :cond_e
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    if-ne v1, v6, :cond_f

    move v1, v2

    .line 2650
    goto :goto_3

    .line 2651
    :cond_f
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    if-lt v1, v7, :cond_10

    move v1, v2

    .line 2655
    goto :goto_3

    :cond_10
    move v1, v3

    goto :goto_3

    :cond_11
    move v0, v3

    goto/16 :goto_1
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

    if-nez v2, :cond_1

    .line 3597
    :cond_0
    :goto_0
    return-void

    .line 3520
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/aps/a;->w()V

    .line 3522
    packed-switch p1, :pswitch_data_0

    .line 3542
    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/aps/a;->D:Lcom/aps/y;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {p0, v3, v0, v4}, Lcom/aps/a;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/aps/y;->a(Lcom/aps/ag;Ljava/lang/String;)V

    .line 3543
    iget-object v1, p0, Lcom/aps/a;->D:Lcom/aps/y;

    invoke-virtual {v1}, Lcom/aps/y;->d()Lcom/aps/ag;

    move-result-object v1

    iput-object v1, p0, Lcom/aps/a;->c:Lcom/aps/ag;

    .line 3544
    iget-object v1, p0, Lcom/aps/a;->c:Lcom/aps/ag;

    if-eqz v1, :cond_2

    .line 3545
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

    if-eqz v2, :cond_2

    .line 3559
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3560
    iget-object v1, p0, Lcom/aps/a;->D:Lcom/aps/y;

    iget-object v2, p0, Lcom/aps/a;->c:Lcom/aps/ag;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {p0, v3, v0, v4}, Lcom/aps/a;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/aps/y;->a(Lcom/aps/ag;Ljava/lang/String;)V

    .line 3570
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/aps/a;->x()V

    .line 3576
    invoke-virtual {p0}, Lcom/aps/a;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    invoke-virtual {v0}, Lcom/aps/y;->f()I

    move-result v0

    if-nez v0, :cond_5

    .line 3583
    invoke-direct {p0}, Lcom/aps/a;->v()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3593
    :catch_0
    move-exception v0

    .line 3594
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3595
    invoke-static {v0}, Lcom/aps/t;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 3528
    goto :goto_1

    .line 3530
    :pswitch_2
    :try_start_1
    invoke-direct {p0}, Lcom/aps/a;->m()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 3534
    goto :goto_1

    .line 3536
    :cond_3
    const v0, 0x7c2fffff

    .line 3538
    goto :goto_1

    .line 3562
    :cond_4
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

    goto :goto_2

    .line 3584
    :cond_5
    iget v0, p0, Lcom/aps/a;->d:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 3591
    invoke-direct {p0}, Lcom/aps/a;->v()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

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

    if-ge v0, v1, :cond_0

    .line 2719
    :goto_0
    return-void

    .line 2682
    :cond_0
    :try_start_0
    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    .line 2683
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2684
    const/16 v0, 0x9

    iput v0, p0, Lcom/aps/a;->f:I

    .line 2685
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "cdma illegal"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/aps/t;->a([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2713
    :catch_0
    move-exception v0

    .line 2714
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 2687
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v0

    if-gez v0, :cond_2

    .line 2688
    const/16 v0, 0x9

    iput v0, p0, Lcom/aps/a;->f:I

    .line 2689
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "cdma illegal"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/aps/t;->a([Ljava/lang/Object;)V

    goto :goto_0

    .line 2691
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    if-gez v0, :cond_3

    .line 2692
    const/16 v0, 0x9

    iput v0, p0, Lcom/aps/a;->f:I

    .line 2693
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "cdma illegal"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/aps/t;->a([Ljava/lang/Object;)V

    goto :goto_0

    .line 2696
    :cond_3
    const/4 v0, 0x2

    iput v0, p0, Lcom/aps/a;->f:I

    .line 2697
    iget-object v0, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/aps/t;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v0

    .line 2698
    new-instance v1, Lcom/aps/e;

    invoke-direct {v1}, Lcom/aps/e;-><init>()V

    .line 2699
    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/aps/e;->a:Ljava/lang/String;

    .line 2700
    const/4 v2, 0x1

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
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
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

    const-string v1, "wifi"

    invoke-static {v0, v1}, Lcom/aps/t;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    .line 770
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 771
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 772
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 773
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 774
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 775
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 778
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

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

    .line 793
    const-string v0, "connectivity"

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

    const-string v3, "phone"

    invoke-static {v0, v3}, Lcom/aps/t;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    .line 800
    iget-object v0, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    .line 801
    iget-object v0, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

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

    if-ge v0, v2, :cond_1

    move v0, v1

    .line 949
    :goto_2
    if-nez v0, :cond_2

    .line 950
    iget-object v0, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/aps/a;->o:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 962
    :cond_0
    :goto_3
    return-void

    .line 804
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/aps/a;->f:I

    goto :goto_1

    .line 807
    :pswitch_1
    iput v1, p0, Lcom/aps/a;->f:I

    goto :goto_1

    .line 943
    :cond_1
    const/16 v0, 0x100

    goto :goto_2

    .line 955
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 956
    iget-object v1, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/aps/a;->o:Landroid/telephony/PhoneStateListener;

    or-int/2addr v0, v6

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 957
    :catch_0
    move-exception v0

    .line 958
    invoke-static {v0}, Lcom/aps/t;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_0

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
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1088
    invoke-direct {p0}, Lcom/aps/a;->u()V

    .line 1089
    const-string v0, ""

    .line 1090
    const-string v2, ""

    .line 1094
    const-string v2, "network"

    .line 1096
    invoke-direct {p0}, Lcom/aps/a;->s()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1097
    iget-object v3, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    .line 1101
    :goto_0
    const-string v3, ""

    .line 1105
    iget v3, p0, Lcom/aps/a;->f:I

    sparse-switch v3, :sswitch_data_0

    :cond_0
    move-object v1, v0

    .line 1177
    :cond_1
    :goto_1
    return-object v1

    .line 1099
    :cond_2
    invoke-direct {p0}, Lcom/aps/a;->n()V

    goto :goto_0

    .line 1107
    :sswitch_0
    iget-object v1, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/e;

    .line 1109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1110
    iget-object v3, v0, Lcom/aps/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    iget-object v3, v0, Lcom/aps/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    iget v3, v0, Lcom/aps/e;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    iget v0, v0, Lcom/aps/e;->d:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    iget-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1116
    const-string v0, "cellwifi"

    .line 1120
    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1118
    :cond_3
    const-string v0, "cell"

    goto :goto_2

    .line 1127
    :sswitch_1
    iget-object v1, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/e;

    .line 1129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1130
    iget-object v3, v0, Lcom/aps/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    iget-object v3, v0, Lcom/aps/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    iget v3, v0, Lcom/aps/e;->g:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    iget v3, v0, Lcom/aps/e;->h:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    iget v0, v0, Lcom/aps/e;->i:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    iget-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1137
    const-string v0, "cellwifi"

    .line 1141
    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1139
    :cond_4
    const-string v0, "cell"

    goto :goto_3

    .line 1148
    :sswitch_2
    const-string v0, "#%s#"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1149
    iget-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Lcom/aps/a;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1152
    :cond_5
    iget-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1154
    iget-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_6

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
    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, v1

    :goto_4
    move-object v1, v0

    .line 1159
    goto/16 :goto_1

    .line 1160
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_7
    move-object v0, v2

    goto :goto_4

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

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aps/a;->C:Ljava/lang/String;

    const-string v1, "00:00:00:00:00:00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1249
    :cond_1
    iget-object v0, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_7

    .line 1250
    iget-object v0, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_3

    .line 1251
    iget-object v0, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    .line 1252
    iget-object v0, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_3

    .line 1253
    iget-object v0, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/a;->C:Ljava/lang/String;

    .line 1254
    iget-object v0, p0, Lcom/aps/a;->C:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1255
    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/aps/a;->C:Ljava/lang/String;

    .line 1257
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    .line 1267
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/aps/a;->s()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1268
    const-string v0, ""

    .line 1269
    iget-object v1, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v1}, Lcom/aps/a;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1270
    iget-object v0, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    move v3, v2

    move v4, v2

    .line 1274
    :goto_2
    iget-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    .line 1275
    iget-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 1276
    invoke-direct {p0, v0}, Lcom/aps/a;->a(Landroid/net/wifi/ScanResult;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1277
    iget-object v7, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 1278
    const-string v0, "nb"

    .line 1279
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1280
    const-string v0, "access"

    move v4, v5

    .line 1283
    :cond_4
    const-string v8, "#%s,%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v2

    aput-object v0, v9, v5

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :pswitch_0
    move v1, v2

    .line 1234
    :goto_3
    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1235
    if-nez v1, :cond_6

    .line 1234
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 1238
    :cond_6
    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/e;

    .line 1239
    const-string v3, "#"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/aps/e;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    const-string v3, "|"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/aps/e;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1241
    const-string v3, "|"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lcom/aps/e;->d:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1261
    :cond_7
    iget-object v0, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/a;->C:Ljava/lang/String;

    .line 1262
    iget-object v0, p0, Lcom/aps/a;->C:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 1263
    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/aps/a;->C:Ljava/lang/String;

    goto/16 :goto_0

    .line 1286
    :cond_8
    if-nez v4, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 1287
    const-string v0, "#"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1288
    const-string v0, ",access"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    :cond_9
    :goto_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 1294
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1296
    :cond_a
    return-object v6

    .line 1291
    :cond_b
    invoke-direct {p0}, Lcom/aps/a;->n()V

    goto :goto_5

    :cond_c
    move-object v1, v0

    goto/16 :goto_1

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
    .line 1715
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/aps/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1716
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    .line 1717
    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/a;->y:J

    .line 1722
    :cond_0
    invoke-direct {p0}, Lcom/aps/a;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1723
    invoke-direct {p0}, Lcom/aps/a;->o()V

    .line 1725
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/aps/a;->a(Ljava/lang/Object;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1797
    monitor-exit p0

    return-object v0

    .line 1715
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private k()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1813
    const/4 v1, 0x1

    .line 1814
    iget-boolean v2, p0, Lcom/aps/a;->w:Z

    if-eqz v2, :cond_1

    .line 1821
    :cond_0
    :goto_0
    return v0

    .line 1816
    :cond_1
    iget-wide v2, p0, Lcom/aps/a;->y:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1818
    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/aps/a;->y:J

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/aps/f;->j:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private l()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1831
    const/4 v1, 0x1

    .line 1832
    invoke-direct {p0}, Lcom/aps/a;->s()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1839
    :cond_0
    :goto_0
    return v0

    .line 1834
    :cond_1
    iget-wide v2, p0, Lcom/aps/a;->z:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1836
    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/aps/a;->z:J

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/aps/f;->i:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private m()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1974
    iget-object v1, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    .line 1999
    :cond_0
    :goto_0
    return v0

    .line 1978
    :cond_1
    invoke-direct {p0}, Lcom/aps/a;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1979
    const/4 v1, 0x0

    .line 1981
    :try_start_0
    iget-object v2, p0, Lcom/aps/a;->g:Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_2

    .line 1982
    iget-object v1, p0, Lcom/aps/a;->g:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1984
    :cond_2
    invoke-static {v1}, Lcom/aps/l;->a(Landroid/net/NetworkInfo;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1985
    iget-object v1, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/aps/a;->a(Landroid/net/wifi/WifiInfo;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1986
    const/4 v0, 0x1

    goto :goto_0

    .line 1991
    :catch_0
    move-exception v1

    .line 1992
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1989
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private n()V
    .locals 1

    .prologue
    .line 2728
    iget-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2729
    const/4 v0, 0x0

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

    if-eqz v0, :cond_0

    .line 2756
    :try_start_0
    iget-object v0, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 2760
    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/a;->z:J
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2767
    :cond_0
    :goto_0
    return-void

    .line 2761
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private p()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2860
    iget-wide v2, p0, Lcom/aps/a;->x:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 2867
    :cond_0
    :goto_0
    return v0

    .line 2863
    :cond_1
    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/aps/a;->x:J

    sub-long/2addr v2, v4

    .line 2867
    const-wide/16 v4, 0x7d0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private q()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2981
    iget-object v0, p0, Lcom/aps/a;->u:Lcom/aps/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/a;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v0, v11, :cond_1

    .line 3029
    :cond_0
    return-void

    .line 2985
    :cond_1
    iget-object v0, p0, Lcom/aps/a;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2986
    :cond_2
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2988
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2992
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2993
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/j;

    .line 2994
    invoke-virtual {v0}, Lcom/aps/j;->a()J

    move-result-wide v6

    .line 2995
    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    .line 3001
    :cond_4
    const/4 v6, 0x4

    new-array v6, v6, [D

    .line 3002
    iget-wide v8, v0, Lcom/aps/j;->b:D

    aput-wide v8, v6, v10

    .line 3003
    iget-wide v8, v0, Lcom/aps/j;->a:D

    aput-wide v8, v6, v11

    .line 3004
    const/4 v7, 0x2

    iget-object v8, p0, Lcom/aps/a;->u:Lcom/aps/c;

    invoke-virtual {v8}, Lcom/aps/c;->f()D

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 3005
    const/4 v7, 0x3

    iget-object v8, p0, Lcom/aps/a;->u:Lcom/aps/c;

    invoke-virtual {v8}, Lcom/aps/c;->e()D

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 3006
    invoke-static {v6}, Lcom/aps/t;->a([D)F

    move-result v6

    .line 3010
    iget v7, v0, Lcom/aps/j;->c:F

    cmpl-float v7, v6, v7

    if-gez v7, :cond_3

    .line 3013
    const-string v7, "distance"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 3014
    const-string v6, "fence"

    invoke-virtual {v0}, Lcom/aps/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3015
    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3020
    :try_start_0
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3021
    :catch_0
    move-exception v0

    .line 3022
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
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

    if-nez v1, :cond_1

    .line 3265
    :cond_0
    :goto_0
    return v0

    .line 3243
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 3247
    :goto_1
    if-nez v0, :cond_0

    invoke-static {}, Lcom/aps/t;->b()I

    move-result v1

    const/16 v2, 0x11

    if-le v1, v2, :cond_0

    .line 3252
    :try_start_1
    iget-object v1, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    const-string v2, "isScanAlwaysAvailable"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/aps/n;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3253
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    .line 3259
    :catch_0
    move-exception v1

    goto :goto_0

    .line 3244
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private t()Lcom/aps/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3340
    invoke-direct {p0}, Lcom/aps/a;->j()[B

    move-result-object v0

    .line 3341
    iget-object v1, p0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

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

    .line 3359
    :goto_0
    return-object v0

    .line 3358
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/aps/a;->a([BZ)Lcom/aps/c;

    move-result-object v0

    goto :goto_0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 3366
    iget-boolean v0, p0, Lcom/aps/a;->w:Z

    if-eqz v0, :cond_0

    .line 3370
    const/16 v0, 0x9

    iput v0, p0, Lcom/aps/a;->f:I

    .line 3371
    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3375
    :goto_0
    return-void

    .line 3373
    :cond_0
    invoke-direct {p0}, Lcom/aps/a;->r()V

    goto :goto_0
.end method

.method private v()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3477
    iget-object v0, p0, Lcom/aps/a;->b:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 3478
    iget-object v0, p0, Lcom/aps/a;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3479
    iput-object v1, p0, Lcom/aps/a;->b:Ljava/util/Timer;

    .line 3481
    :cond_0
    iget-object v0, p0, Lcom/aps/a;->a:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 3482
    iget-object v0, p0, Lcom/aps/a;->a:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 3483
    iput-object v1, p0, Lcom/aps/a;->a:Ljava/util/TimerTask;

    .line 3485
    :cond_1
    return-void
.end method

.method private w()V
    .locals 2

    .prologue
    .line 3493
    invoke-virtual {p0}, Lcom/aps/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3502
    :goto_0
    return-void

    .line 3497
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    const/16 v1, 0x300

    invoke-virtual {v0, v1}, Lcom/aps/y;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3498
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

    if-nez v0, :cond_1

    .line 3635
    :cond_0
    :goto_0
    return-void

    .line 3616
    :cond_1
    iget-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    invoke-virtual {v0}, Lcom/aps/y;->f()I

    move-result v0

    if-gtz v0, :cond_0

    .line 3620
    :try_start_0
    iget-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    invoke-virtual {v0}, Lcom/aps/y;->e()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3629
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
    if-nez p1, :cond_0

    .line 3397
    invoke-direct {p0}, Lcom/aps/a;->v()V

    .line 3401
    :goto_0
    invoke-virtual {p0}, Lcom/aps/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    invoke-virtual {v0}, Lcom/aps/y;->f()I

    move-result v0

    :goto_1
    return v0

    .line 3399
    :cond_0
    invoke-direct {p0, p2}, Lcom/aps/a;->c(I)V

    goto :goto_0

    .line 3401
    :cond_1
    const/4 v0, -0x1

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
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 284
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_0
    sget-object v0, Lcom/aps/f;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    const-string v1, "key\u9274\u6743\u5931\u8d25"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_1
    sget-object v0, Lcom/aps/f;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    const-string v1, "key\u9274\u6743\u5931\u8d25"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/aps/a;->s:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/aps/l;->a(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v0

    .line 302
    const-string v3, "false"

    aget-object v0, v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 303
    const-string v0, "AuthLocation"

    const-string v1, "key\u9274\u6743\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    const-string v1, "key\u9274\u6743\u5931\u8d25"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_3
    invoke-direct {p0}, Lcom/aps/a;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 318
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    .line 319
    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/aps/a;->y:J

    .line 324
    :cond_4
    invoke-direct {p0}, Lcom/aps/a;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 325
    invoke-direct {p0}, Lcom/aps/a;->o()V

    .line 327
    :cond_5
    iget v0, p0, Lcom/aps/a;->B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aps/a;->B:I

    .line 328
    iget v0, p0, Lcom/aps/a;->B:I

    if-le v0, v1, :cond_6

    .line 329
    invoke-virtual {p0}, Lcom/aps/a;->c()V

    .line 331
    :cond_6
    iget v0, p0, Lcom/aps/a;->B:I

    if-ne v0, v1, :cond_7

    .line 332
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

    if-eqz v0, :cond_7

    .line 335
    iget-object v0, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    .line 338
    :cond_7
    iget-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    if-nez v0, :cond_8

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    .line 341
    :cond_8
    iget v0, p0, Lcom/aps/a;->B:I

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Lcom/aps/a;->s()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-wide v4, p0, Lcom/aps/a;->G:J

    iget-wide v6, p0, Lcom/aps/a;->F:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7d0

    cmp-long v0, v4, v6

    if-gez v0, :cond_9

    .line 342
    const/4 v0, 0x4

    .line 343
    :goto_0
    if-lez v0, :cond_9

    .line 344
    iget-object v3, p0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_9

    .line 345
    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 346
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 355
    :cond_9
    iget-wide v4, p0, Lcom/aps/a;->v:J

    invoke-direct {p0, v4, v5}, Lcom/aps/a;->a(J)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 356
    iget-object v0, p0, Lcom/aps/a;->u:Lcom/aps/c;

    if-eqz v0, :cond_a

    .line 357
    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/a;->v:J

    .line 361
    iget-object v0, p0, Lcom/aps/a;->u:Lcom/aps/c;

    .line 493
    :goto_1
    return-object v0

    .line 366
    :cond_a
    :try_start_0
    iget-object v0, p0, Lcom/aps/a;->H:Landroid/telephony/CellLocation;

    invoke-direct {p0, v0}, Lcom/aps/a;->a(Landroid/telephony/CellLocation;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :goto_2
    iget-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/aps/a;->a(Ljava/util/List;)V

    .line 373
    invoke-direct {p0}, Lcom/aps/a;->h()Ljava/lang/String;

    move-result-object v3

    .line 377
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 381
    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    const-string v1, "\u83b7\u53d6\u57fa\u7ad9/WiFi\u4fe1\u606f\u4e3a\u7a7a\u6216\u5931\u8d25"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :catch_0
    move-exception v0

    .line 368
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 384
    :cond_b
    invoke-direct {p0}, Lcom/aps/a;->i()Ljava/lang/StringBuilder;

    move-result-object v4

    .line 385
    const/4 v0, 0x0

    .line 387
    :try_start_1
    iget-object v5, p0, Lcom/aps/a;->e:Landroid/content/Context;

    invoke-static {v5}, Lcom/aps/d;->a(Landroid/content/Context;)Lcom/aps/d;

    move-result-object v5

    const-string v6, "mem"

    invoke-virtual {v5, v3, v4, v6}, Lcom/aps/d;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/aps/c;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 395
    :goto_3
    if-eqz v0, :cond_f

    .line 396
    invoke-virtual {v0}, Lcom/aps/c;->h()J

    move-result-wide v6

    .line 397
    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v8

    .line 398
    sub-long v6, v8, v6

    const-wide/32 v8, 0x36ee80

    cmp-long v5, v6, v8

    if-lez v5, :cond_f

    .line 402
    :goto_4
    if-eqz v0, :cond_c

    if-eqz v1, :cond_e

    .line 441
    :cond_c
    :try_start_2
    invoke-direct {p0}, Lcom/aps/a;->t()Lcom/aps/c;
    :try_end_2
    .catch Lcom/amap/api/location/core/AMapLocException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 450
    :cond_d
    iput-object v0, p0, Lcom/aps/a;->u:Lcom/aps/c;

    .line 487
    :goto_5
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/aps/d;->a(Landroid/content/Context;)Lcom/aps/d;

    move-result-object v0

    iget-object v1, p0, Lcom/aps/a;->u:Lcom/aps/c;

    invoke-virtual {v0, v3, v1, v4}, Lcom/aps/d;->a(Ljava/lang/String;Lcom/aps/c;Ljava/lang/StringBuilder;)V

    .line 488
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v4, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

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

    goto :goto_1

    .line 442
    :catch_1
    move-exception v1

    .line 443
    if-nez v0, :cond_d

    .line 446
    throw v1

    .line 481
    :cond_e
    iput-object v0, p0, Lcom/aps/a;->u:Lcom/aps/c;

    goto :goto_5

    .line 388
    :catch_2
    move-exception v5

    goto :goto_3

    :cond_f
    move v1, v2

    goto :goto_4
.end method

.method public a(Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 636
    if-nez p1, :cond_0

    .line 643
    :goto_0
    return-void

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/aps/a;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 150
    if-nez p1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    .line 177
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    const-string v1, "in debug mode, only for test"

    invoke-static {v0, v1}, Lcom/aps/t;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0}, Lcom/aps/a;->f()V

    .line 191
    invoke-direct {p0}, Lcom/aps/a;->g()V

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/a;->F:J

    goto :goto_0
.end method

.method public a(Lcom/amap/api/location/AMapLocation;)V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 3098
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/aps/a;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v0, v10, :cond_1

    .line 3156
    :cond_0
    return-void

    .line 3102
    :cond_1
    iget-object v0, p0, Lcom/aps/a;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3103
    :cond_2
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3105
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 3109
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 3110
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/j;

    .line 3111
    invoke-virtual {v0}, Lcom/aps/j;->a()J

    move-result-wide v6

    .line 3112
    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    .line 3118
    :cond_4
    const/4 v6, 0x4

    new-array v6, v6, [D

    .line 3119
    iget-wide v8, v0, Lcom/aps/j;->b:D

    aput-wide v8, v6, v11

    .line 3120
    iget-wide v8, v0, Lcom/aps/j;->a:D

    aput-wide v8, v6, v10

    .line 3121
    const/4 v7, 0x2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 3122
    const/4 v7, 0x3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 3123
    invoke-static {v6}, Lcom/aps/t;->a([D)F

    move-result v6

    .line 3127
    iget v7, v0, Lcom/aps/j;->c:F

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_5

    .line 3128
    iget v7, v0, Lcom/aps/j;->d:I

    if-eqz v7, :cond_3

    .line 3131
    iput v11, v0, Lcom/aps/j;->d:I

    .line 3133
    :cond_5
    iget v7, v0, Lcom/aps/j;->c:F

    cmpg-float v7, v6, v7

    if-gez v7, :cond_6

    .line 3134
    iget v7, v0, Lcom/aps/j;->d:I

    if-eq v7, v10, :cond_3

    .line 3137
    iput v10, v0, Lcom/aps/j;->d:I

    .line 3139
    :cond_6
    const-string v7, "distance"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 3140
    const-string v6, "fence"

    invoke-virtual {v0}, Lcom/aps/j;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3141
    const-string v6, "status"

    iget v0, v0, Lcom/aps/j;->d:I

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3142
    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3147
    :try_start_0
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3148
    :catch_0
    move-exception v0

    .line 3149
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/aps/j;Landroid/app/PendingIntent;)V
    .locals 4

    .prologue
    .line 572
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    invoke-virtual {p1}, Lcom/aps/j;->a()J

    move-result-wide v0

    .line 576
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 585
    :cond_2
    iget-object v0, p0, Lcom/aps/a;->l:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 586
    iget-object v0, p0, Lcom/aps/a;->l:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 587
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    iget-object v1, p0, Lcom/aps/a;->l:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 590
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 591
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    iget-object v1, p0, Lcom/aps/a;->l:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 527
    if-eqz p1, :cond_0

    const-string v0, "##"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    const-string v0, "##"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 534
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 541
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/aps/f;->a(Ljava/lang/String;)V

    .line 542
    sget-object v1, Lcom/aps/f;->e:Ljava/lang/String;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 543
    iget-object v1, p0, Lcom/aps/a;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/aps/d;->a(Landroid/content/Context;)Lcom/aps/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aps/d;->a()V

    .line 546
    :cond_2
    aget-object v1, v0, v3

    invoke-static {v1}, Lcom/aps/f;->b(Ljava/lang/String;)V

    .line 547
    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/aps/f;->c(Ljava/lang/String;)V

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

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    invoke-virtual {v0}, Lcom/aps/y;->c()V

    .line 671
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aps/a;->I:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 703
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/aps/a;->q:Lcom/aps/a$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 710
    :cond_1
    :goto_1
    iput-object v3, p0, Lcom/aps/a;->q:Lcom/aps/a$a;

    .line 712
    invoke-direct {p0}, Lcom/aps/a;->v()V

    .line 717
    :try_start_2
    iget-object v0, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aps/a;->o:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_2

    .line 718
    iget-object v0, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/aps/a;->o:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 724
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 725
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/aps/d;->a(Landroid/content/Context;)Lcom/aps/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aps/d;->a()V

    .line 726
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/aps/d;->a(Landroid/content/Context;)Lcom/aps/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aps/d;->b()V

    .line 728
    :cond_3
    invoke-static {v4}, Lcom/aps/f;->a(Z)V

    .line 730
    const-wide/16 v0, 0x0

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

    .line 734
    const/16 v0, -0x71

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

    .line 673
    :catch_0
    move-exception v0

    .line 674
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 710
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/aps/a;->q:Lcom/aps/a$a;

    throw v0

    .line 720
    :catch_1
    move-exception v0

    .line 721
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 722
    invoke-static {v0}, Lcom/aps/t;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 705
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public b(Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 645
    if-nez p1, :cond_0

    .line 652
    :goto_0
    return-void

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/aps/a;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b(Lcom/aps/j;Landroid/app/PendingIntent;)V
    .locals 4

    .prologue
    .line 601
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    invoke-virtual {p1}, Lcom/aps/j;->a()J

    move-result-wide v0

    .line 605
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 614
    :cond_2
    iget-object v0, p0, Lcom/aps/a;->m:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 615
    iget-object v0, p0, Lcom/aps/a;->m:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 616
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    iget-object v1, p0, Lcom/aps/a;->m:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 619
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 620
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    iget-object v1, p0, Lcom/aps/a;->m:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 2911
    :try_start_0
    iget-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    if-nez v0, :cond_0

    .line 2912
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/aps/y;->a(Landroid/content/Context;)Lcom/aps/y;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    .line 2913
    iget-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/aps/y;->a(I)V

    .line 2916
    :cond_0
    iget-boolean v0, p0, Lcom/aps/a;->I:Z

    if-nez v0, :cond_1

    .line 2917
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aps/a;->I:Z

    .line 2918
    iget-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    invoke-virtual {v0}, Lcom/aps/y;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2928
    :cond_1
    :goto_0
    return-void

    .line 2921
    :catch_0
    move-exception v0

    .line 2922
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public d()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 3037
    iget-object v0, p0, Lcom/aps/a;->u:Lcom/aps/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/a;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v0, v10, :cond_1

    .line 3095
    :cond_0
    return-void

    .line 3041
    :cond_1
    iget-object v0, p0, Lcom/aps/a;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3042
    :cond_2
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3044
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 3048
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 3049
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/j;

    .line 3050
    invoke-virtual {v0}, Lcom/aps/j;->a()J

    move-result-wide v6

    .line 3051
    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    .line 3057
    :cond_4
    const/4 v6, 0x4

    new-array v6, v6, [D

    .line 3058
    iget-wide v8, v0, Lcom/aps/j;->b:D

    aput-wide v8, v6, v11

    .line 3059
    iget-wide v8, v0, Lcom/aps/j;->a:D

    aput-wide v8, v6, v10

    .line 3060
    const/4 v7, 0x2

    iget-object v8, p0, Lcom/aps/a;->u:Lcom/aps/c;

    invoke-virtual {v8}, Lcom/aps/c;->f()D

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 3061
    const/4 v7, 0x3

    iget-object v8, p0, Lcom/aps/a;->u:Lcom/aps/c;

    invoke-virtual {v8}, Lcom/aps/c;->e()D

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 3062
    invoke-static {v6}, Lcom/aps/t;->a([D)F

    move-result v6

    .line 3066
    iget v7, v0, Lcom/aps/j;->c:F

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_5

    .line 3067
    iget v7, v0, Lcom/aps/j;->d:I

    if-eqz v7, :cond_3

    .line 3070
    iput v11, v0, Lcom/aps/j;->d:I

    .line 3072
    :cond_5
    iget v7, v0, Lcom/aps/j;->c:F

    cmpg-float v7, v6, v7

    if-gez v7, :cond_6

    .line 3073
    iget v7, v0, Lcom/aps/j;->d:I

    if-eq v7, v10, :cond_3

    .line 3076
    iput v10, v0, Lcom/aps/j;->d:I

    .line 3078
    :cond_6
    const-string v7, "distance"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 3079
    const-string v6, "fence"

    invoke-virtual {v0}, Lcom/aps/j;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3080
    const-string v6, "status"

    iget v0, v0, Lcom/aps/j;->d:I

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3081
    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3086
    :try_start_0
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3087
    :catch_0
    move-exception v0

    .line 3088
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 3600
    iget-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    if-nez v0, :cond_0

    .line 3601
    const/4 v0, 0x0

    .line 3603
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
