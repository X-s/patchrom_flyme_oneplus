.class public Lcom/amap/api/location/d;
.super Ljava/lang/Object;
.source "IGPSManager.java"


# instance fields
.field public a:Landroid/location/LocationManager;

.field b:Landroid/location/LocationListener;

.field private c:Lcom/amap/api/location/a$a;

.field private d:Lcom/amap/api/location/a;

.field private e:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;Lcom/amap/api/location/a$a;Lcom/amap/api/location/a;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/amap/api/location/d;->a:Landroid/location/LocationManager;

    .line 188
    new-instance v0, Lcom/amap/api/location/e;

    invoke-direct {v0, p0}, Lcom/amap/api/location/e;-><init>(Lcom/amap/api/location/d;)V

    iput-object v0, p0, Lcom/amap/api/location/d;->b:Landroid/location/LocationListener;

    .line 29
    iput-object p1, p0, Lcom/amap/api/location/d;->e:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/amap/api/location/d;->a:Landroid/location/LocationManager;

    .line 31
    iput-object p4, p0, Lcom/amap/api/location/d;->d:Lcom/amap/api/location/a;

    .line 32
    iput-object p3, p0, Lcom/amap/api/location/d;->c:Lcom/amap/api/location/a$a;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/amap/api/location/d;->d:Lcom/amap/api/location/a;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/location/d;)Lcom/amap/api/location/a$a;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/amap/api/location/d;->c:Lcom/amap/api/location/a$a;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method a(JF)V
    .locals 7

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/d;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    .line 81
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/amap/api/location/d;->a:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    iget-object v5, p0, Lcom/amap/api/location/d;->b:Landroid/location/LocationListener;

    move-wide v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 100
    :goto_1
    return-void

    .line 82
    :cond_0
    invoke-static {}, Landroid/os/Looper;->prepare()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method b()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/amap/api/location/d;->b:Landroid/location/LocationListener;

    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/d;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/amap/api/location/d;->b:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0
.end method
