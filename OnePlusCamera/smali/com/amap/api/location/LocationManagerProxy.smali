.class public Lcom/amap/api/location/LocationManagerProxy;
.super Ljava/lang/Object;
.source "LocationManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/location/LocationManagerProxy$a;,
        Lcom/amap/api/location/LocationManagerProxy$b;
    }
.end annotation


# static fields
.field public static final GPS_PROVIDER:Ljava/lang/String; = "gps"

.field public static final KEY_LOCATION_CHANGED:Ljava/lang/String; = "location"

.field public static final KEY_PROVIDER_ENABLED:Ljava/lang/String; = "providerEnabled"

.field public static final KEY_PROXIMITY_ENTERING:Ljava/lang/String; = "entering"

.field public static final KEY_STATUS_CHANGED:Ljava/lang/String; = "status"

.field public static final NETWORK_PROVIDER:Ljava/lang/String; = "network"

.field public static final WEATHER_TYPE_FORECAST:I = 0x2

.field public static final WEATHER_TYPE_LIVE:I = 0x1

.field static a:Ljava/lang/Object;

.field private static c:Lcom/amap/api/location/LocationManagerProxy;


# instance fields
.field private b:Landroid/location/LocationManager;

.field private d:Lcom/amap/api/location/a;

.field private e:Landroid/content/Context;

.field private f:Lcom/amap/api/location/f;

.field private g:Lcom/amap/api/location/LocationManagerProxy$b;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/amap/api/location/LocationProviderProxy;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/amap/api/location/g;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/amap/api/location/g;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/amap/api/location/LocationManagerProxy$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    sput-object v0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/LocationManagerProxy;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amap/api/location/LocationManagerProxy;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    .line 41
    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->i:Ljava/util/Hashtable;

    .line 47
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->j:Ljava/util/Vector;

    .line 48
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->k:Ljava/util/Vector;

    .line 49
    new-instance v0, Lcom/amap/api/location/LocationManagerProxy$a;

    invoke-direct {v0, p0}, Lcom/amap/api/location/LocationManagerProxy$a;-><init>(Lcom/amap/api/location/LocationManagerProxy;)V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->l:Lcom/amap/api/location/LocationManagerProxy$a;

    .line 73
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/location/LocationManagerProxy;->a(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    .line 41
    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->i:Ljava/util/Hashtable;

    .line 47
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->j:Ljava/util/Vector;

    .line 48
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->k:Ljava/util/Vector;

    .line 49
    new-instance v0, Lcom/amap/api/location/LocationManagerProxy$a;

    invoke-direct {v0, p0}, Lcom/amap/api/location/LocationManagerProxy$a;-><init>(Lcom/amap/api/location/LocationManagerProxy;)V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->l:Lcom/amap/api/location/LocationManagerProxy$a;

    .line 68
    invoke-direct {p0, p1}, Lcom/amap/api/location/LocationManagerProxy;->a(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    sput-object v0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/LocationManagerProxy;

    .line 65
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 106
    :try_start_0
    iput-object p1, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Landroid/content/Context;

    const-string/jumbo v0, "location"

    .line 107
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-static {v0, v1}, Lcom/amap/api/location/a;->a(Landroid/content/Context;Landroid/location/LocationManager;)Lcom/amap/api/location/a;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized a(Ljava/lang/String;JFLcom/amap/api/location/AMapLocationListener;Z)V
    .locals 12

    .prologue
    monitor-enter p0

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    if-eqz v0, :cond_1

    .line 218
    :goto_0
    if-eqz p1, :cond_2

    move-object v6, p1

    :goto_1
    const-string/jumbo v0, "lbs"

    .line 225
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "gps"

    .line 230
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 239
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    .line 240
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 243
    :goto_2
    new-instance v1, Lcom/amap/api/location/g;

    const/4 v7, 0x0

    move-wide v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v7}, Lcom/amap/api/location/g;-><init>(JFLcom/amap/api/location/AMapLocationListener;Ljava/lang/String;Z)V

    .line 245
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->j:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v5, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    iget-object v10, p0, Lcom/amap/api/location/LocationManagerProxy;->l:Lcom/amap/api/location/LocationManagerProxy$a;

    move-wide v7, p2

    move/from16 v9, p4

    invoke-virtual/range {v5 .. v11}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_3
    monitor-exit p0

    .line 253
    return-void

    .line 215
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-static {v0, v1}, Lcom/amap/api/location/a;->a(Landroid/content/Context;Landroid/location/LocationManager;)Lcom/amap/api/location/a;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 251
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_3
    const-string/jumbo v6, "lbs"

    goto :goto_1

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    if-eqz v0, :cond_0

    .line 227
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    const-string/jumbo v6, "lbs"

    move-wide v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/amap/api/location/a;->a(JFLcom/amap/api/location/AMapLocationListener;Ljava/lang/String;Z)V

    goto :goto_3

    .line 232
    :cond_4
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    if-eqz v0, :cond_0

    .line 233
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    const-string/jumbo v6, "gps"

    move-wide v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/amap/api/location/a;->a(JFLcom/amap/api/location/AMapLocationListener;Ljava/lang/String;Z)V

    goto :goto_3

    .line 241
    :cond_5
    invoke-static {}, Landroid/os/Looper;->prepare()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method static synthetic b(Lcom/amap/api/location/LocationManagerProxy;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->j:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->k:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic e(Lcom/amap/api/location/LocationManagerProxy;)Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic f(Lcom/amap/api/location/LocationManagerProxy;)Lcom/amap/api/location/LocationManagerProxy$a;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->l:Lcom/amap/api/location/LocationManagerProxy$a;

    return-object v0
.end method

.method public static getInstance(Landroid/app/Activity;)Lcom/amap/api/location/LocationManagerProxy;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    :try_start_0
    sget-object v1, Lcom/amap/api/location/LocationManagerProxy;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :try_start_1
    sget-object v0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/LocationManagerProxy;

    if-eqz v0, :cond_0

    .line 82
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :try_start_2
    sget-object v0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/LocationManagerProxy;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    .line 80
    :cond_0
    :try_start_3
    new-instance v0, Lcom/amap/api/location/LocationManagerProxy;

    invoke-direct {v0, p0}, Lcom/amap/api/location/LocationManagerProxy;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/LocationManagerProxy;

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 83
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    return-object v2
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/amap/api/location/LocationManagerProxy;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-class v1, Lcom/amap/api/location/LocationManagerProxy;

    monitor-enter v1

    .line 93
    :try_start_0
    sget-object v0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/LocationManagerProxy;

    if-eqz v0, :cond_0

    .line 96
    :goto_0
    sget-object v0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/LocationManagerProxy;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 94
    :cond_0
    :try_start_1
    new-instance v0, Lcom/amap/api/location/LocationManagerProxy;

    invoke-direct {v0, p0}, Lcom/amap/api/location/LocationManagerProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/LocationManagerProxy;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 98
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    .line 99
    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    :try_start_0
    const-string/jumbo v0, "V1.3.1"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    return-object v0

    :catch_0
    move-exception v0

    .line 814
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v0, ""

    .line 816
    return-object v0
.end method


# virtual methods
.method public addGeoFenceAlert(DDFJLandroid/app/PendingIntent;)V
    .locals 11

    .prologue
    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    if-nez v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/amap/api/location/a;->b(DDFJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z
    .locals 1

    .prologue
    .line 480
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 486
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 485
    :catch_0
    move-exception v0

    .line 484
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public addProximityAlert(DDFJLandroid/app/PendingIntent;)V
    .locals 11

    .prologue
    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->f:Z

    if-nez v0, :cond_0

    .line 130
    :goto_0
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/amap/api/location/a;->a(DDFJLandroid/app/PendingIntent;)V

    .line 134
    :goto_1
    return-void

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/location/LocationManager;->addProximityAlert(DDFJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public addTestProvider(Ljava/lang/String;ZZZZZZZII)V
    .locals 11

    .prologue
    .line 496
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 505
    :goto_0
    return-void

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Landroid/location/LocationManager;->addTestProvider(Ljava/lang/String;ZZZZZZZII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 504
    :catch_0
    move-exception v0

    .line 503
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public clearTestProviderEnabled(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 539
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 545
    :goto_0
    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->clearTestProviderEnabled(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 544
    :catch_0
    move-exception v0

    .line 543
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public clearTestProviderLocation(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 556
    :goto_0
    return-void

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->clearTestProviderLocation(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 555
    :catch_0
    move-exception v0

    .line 554
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public clearTestProviderStatus(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 561
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 567
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->clearTestProviderStatus(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 566
    :catch_0
    move-exception v0

    .line 565
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public destory()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 624
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/location/LocationManagerProxy;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    :goto_0
    return-void

    .line 627
    :catch_0
    move-exception v0

    .line 626
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public destroy()V
    .locals 4

    .prologue
    .line 632
    :try_start_0
    sget-object v2, Lcom/amap/api/location/LocationManagerProxy;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :try_start_1
    invoke-static {}, Lcom/amap/api/location/a;->c()V

    .line 634
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->i:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    .line 640
    :goto_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->j:Ljava/util/Vector;

    if-nez v0, :cond_2

    .line 643
    :goto_1
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    if-nez v0, :cond_3

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    :goto_2
    const/4 v0, 0x0

    .line 662
    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    .line 663
    invoke-static {}, Lcom/amap/api/location/LocationManagerProxy;->a()V

    const/4 v0, 0x0

    .line 665
    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->l:Lcom/amap/api/location/LocationManagerProxy$a;

    .line 666
    monitor-exit v2

    .line 670
    :goto_3
    return-void

    .line 635
    :cond_1
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->i:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    goto :goto_0

    .line 666
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 669
    :catch_0
    move-exception v0

    .line 668
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 641
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    goto :goto_1

    .line 644
    :cond_3
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->l:Lcom/amap/api/location/LocationManagerProxy$a;

    if-nez v0, :cond_4

    .line 647
    :goto_4
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 648
    :goto_5
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 650
    if-nez v0, :cond_5

    .line 648
    :goto_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 645
    :cond_4
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->l:Lcom/amap/api/location/LocationManagerProxy$a;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_4

    .line 651
    :cond_5
    iget-object v3, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    goto :goto_6

    .line 657
    :cond_6
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    .line 338
    if-nez v0, :cond_1

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "lbs"

    .line 344
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 347
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v1, "lbs"

    .line 339
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "lbs"

    .line 340
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 347
    :catch_0
    move-exception v0

    .line 349
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 350
    return-object v2
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .locals 2

    .prologue
    :try_start_0
    const-string/jumbo v0, "lbs"

    .line 398
    if-eqz p1, :cond_1

    const-string/jumbo v1, "lbs"

    .line 401
    invoke-virtual {p0, v1}, Lcom/amap/api/location/LocationManagerProxy;->getProvider(Ljava/lang/String;)Lcom/amap/api/location/LocationProviderProxy;

    move-result-object v1

    .line 402
    invoke-virtual {v1, p1}, Lcom/amap/api/location/LocationProviderProxy;->meetsCriteria(Landroid/location/Criteria;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 406
    :goto_0
    if-nez p2, :cond_3

    .line 412
    :cond_0
    :goto_1
    return-object v0

    .line 399
    :cond_1
    return-object v0

    .line 403
    :cond_2
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1, p2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 407
    :cond_3
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/location/core/d;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 408
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1, p2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 412
    :catch_0
    move-exception v0

    .line 414
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v0, "gps"

    .line 415
    return-object v0
.end method

.method public getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 459
    return-object v1

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 459
    :catch_0
    move-exception v0

    .line 461
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 462
    return-object v1
.end method

.method public getLastKnownLocation(Ljava/lang/String;)Lcom/amap/api/location/AMapLocation;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "lbs"

    .line 180
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    if-nez v0, :cond_2

    .line 194
    return-object v2

    .line 178
    :cond_0
    return-object v2

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    invoke-virtual {v0}, Lcom/amap/api/location/a;->a()Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    return-object v0

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 187
    if-nez v0, :cond_3

    .line 190
    return-object v2

    .line 188
    :cond_3
    new-instance v1, Lcom/amap/api/location/AMapLocation;

    invoke-direct {v1, v0}, Lcom/amap/api/location/AMapLocation;-><init>(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 194
    :catch_0
    move-exception v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 197
    return-object v2
.end method

.method public getProvider(Ljava/lang/String;)Lcom/amap/api/location/LocationProviderProxy;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 435
    if-eqz p1, :cond_0

    .line 439
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->i:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-static {v0, p1}, Lcom/amap/api/location/LocationProviderProxy;->a(Landroid/location/LocationManager;Ljava/lang/String;)Lcom/amap/api/location/LocationProviderProxy;

    move-result-object v0

    .line 444
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->i:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    :goto_0
    return-object v0

    .line 436
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :catch_0
    move-exception v0

    .line 448
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 449
    return-object v2

    .line 440
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->i:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/LocationProviderProxy;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1, p2}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    .line 376
    if-nez v0, :cond_1

    .line 381
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const-string/jumbo v1, "lbs"

    .line 383
    invoke-virtual {p0, p1, p2}, Lcom/amap/api/location/LocationManagerProxy;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 387
    :goto_1
    return-object v0

    .line 376
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "lbs"

    .line 385
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 387
    :catch_0
    move-exception v0

    .line 389
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 390
    return-object v3
.end method

.method public getProviders(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "lbs"

    .line 358
    invoke-virtual {p0, v1}, Lcom/amap/api/location/LocationManagerProxy;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 364
    :goto_0
    return-object v0

    .line 359
    :cond_0
    if-nez v0, :cond_2

    .line 360
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    const-string/jumbo v1, "lbs"

    .line 362
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    .line 366
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 367
    return-object v2

    .line 359
    :cond_2
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v0, "lbs"

    .line 422
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/d;->a(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 425
    :catch_0
    move-exception v0

    .line 427
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 428
    return v1
.end method

.method public removeGeoFenceAlert(Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    if-nez v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    invoke-virtual {v0, p1}, Lcom/amap/api/location/a;->b(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
    .locals 1

    .prologue
    .line 469
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 475
    :goto_0
    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 474
    :catch_0
    move-exception v0

    .line 473
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public removeProximityAlert(Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    if-nez v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    if-nez v0, :cond_2

    .line 173
    :goto_1
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->f:Z

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeProximityAlert(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 165
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    invoke-virtual {v0, p1}, Lcom/amap/api/location/a;->a(Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public removeUpdates(Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->f:Lcom/amap/api/location/f;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 327
    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->f:Lcom/amap/api/location/f;

    .line 328
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    .line 332
    :goto_1
    return-void

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 324
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->f:Lcom/amap/api/location/f;

    invoke-virtual {v0}, Lcom/amap/api/location/f;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 331
    :catch_0
    move-exception v0

    .line 330
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public declared-synchronized removeUpdates(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    .line 269
    if-nez p1, :cond_1

    .line 276
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->j:Ljava/util/Vector;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    :cond_0
    :goto_1
    monitor-exit p0

    .line 295
    return-void

    .line 270
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    if-nez v0, :cond_2

    .line 273
    :goto_2
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 293
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 271
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    invoke-virtual {v0, p1}, Lcom/amap/api/location/a;->a(Lcom/amap/api/location/AMapLocationListener;)V

    goto :goto_2

    .line 276
    :cond_3
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    .line 279
    :goto_3
    if-lt v1, v2, :cond_4

    .line 288
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->l:Lcom/amap/api/location/LocationManagerProxy$a;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->l:Lcom/amap/api/location/LocationManagerProxy$a;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_1

    .line 280
    :cond_4
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->j:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/g;

    .line 281
    iget-object v3, v0, Lcom/amap/api/location/g;->b:Lcom/amap/api/location/AMapLocationListener;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v0, v1

    move v1, v2

    .line 279
    :goto_4
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move v1, v0

    goto :goto_3

    .line 282
    :cond_5
    iget-object v3, p0, Lcom/amap/api/location/LocationManagerProxy;->j:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 283
    add-int/lit8 v2, v2, -0x1

    .line 284
    add-int/lit8 v0, v1, -0x1

    move v1, v2

    goto :goto_4
.end method

.method public declared-synchronized requestLocationData(Ljava/lang/String;JFLcom/amap/api/location/AMapLocationListener;)V
    .locals 8

    .prologue
    monitor-enter p0

    .line 264
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/amap/api/location/LocationManagerProxy;->a(Ljava/lang/String;JFLcom/amap/api/location/AMapLocationListener;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 265
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V
    .locals 6

    .prologue
    :try_start_0
    const-string/jumbo v0, "lbs"

    .line 300
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    .line 318
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->f:Lcom/amap/api/location/f;

    if-eqz v0, :cond_1

    .line 304
    :goto_1
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->g:Lcom/amap/api/location/LocationManagerProxy$b;

    if-eqz v0, :cond_2

    .line 307
    :goto_2
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->f:Lcom/amap/api/location/f;

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->g:Lcom/amap/api/location/LocationManagerProxy$b;

    move-wide v2, p2

    move v4, p4

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/location/f;->a(Lcom/amap/api/location/AMapLocationListener;JFLjava/lang/String;)Z

    .line 309
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 317
    :catch_0
    move-exception v0

    .line 316
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 302
    :cond_1
    :try_start_1
    new-instance v0, Lcom/amap/api/location/f;

    invoke-direct {v0, p0}, Lcom/amap/api/location/f;-><init>(Lcom/amap/api/location/LocationManagerProxy;)V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->f:Lcom/amap/api/location/f;

    goto :goto_1

    .line 305
    :cond_2
    new-instance v0, Lcom/amap/api/location/LocationManagerProxy$b;

    invoke-direct {v0, p0}, Lcom/amap/api/location/LocationManagerProxy$b;-><init>(Lcom/amap/api/location/LocationManagerProxy;)V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->g:Lcom/amap/api/location/LocationManagerProxy$b;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public declared-synchronized requestLocationUpdates(Ljava/lang/String;JFLcom/amap/api/location/AMapLocationListener;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    monitor-enter p0

    .line 258
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/amap/api/location/LocationManagerProxy;->a(Ljava/lang/String;JFLcom/amap/api/location/AMapLocationListener;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 259
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requestWeatherUpdates(ILcom/amap/api/location/AMapLocalWeatherListener;)V
    .locals 1

    .prologue
    .line 579
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/location/a;->a(ILcom/amap/api/location/AMapLocalWeatherListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :goto_0
    return-void

    .line 582
    :catch_0
    move-exception v0

    .line 581
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setGpsEnable(Z)V
    .locals 1

    .prologue
    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    invoke-virtual {v0, p1}, Lcom/amap/api/location/a;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 207
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setTestProviderEnabled(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 509
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 515
    :goto_0
    return-void

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1, p2}, Landroid/location/LocationManager;->setTestProviderEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 514
    :catch_0
    move-exception v0

    .line 513
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 518
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 524
    :goto_0
    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1, p2}, Landroid/location/LocationManager;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 523
    :catch_0
    move-exception v0

    .line 522
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;J)V
    .locals 6

    .prologue
    .line 528
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 534
    :goto_0
    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 533
    :catch_0
    move-exception v0

    .line 532
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
