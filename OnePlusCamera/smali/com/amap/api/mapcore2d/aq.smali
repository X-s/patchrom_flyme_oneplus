.class public Lcom/amap/api/mapcore2d/aq;
.super Ljava/lang/Object;
.source "MapFragmentDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/z;


# static fields
.field public static volatile a:Landroid/content/Context;


# instance fields
.field private b:Lcom/amap/api/mapcore2d/w;

.field private c:Lcom/amap/api/maps2d/AMapOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->b:Lcom/amap/api/mapcore2d/w;

    if-eqz v0, :cond_1

    .line 88
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/maps2d/AMapOptions;

    if-eqz v0, :cond_5

    .line 98
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/maps2d/AMapOptions;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/aq;->b(Lcom/amap/api/maps2d/AMapOptions;)V

    const-string/jumbo v0, "MapFragmentDelegateImp"

    const-string/jumbo v1, "onCreateView"

    const/16 v2, 0x71

    .line 99
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/ch;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->b:Lcom/amap/api/mapcore2d/w;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->e()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 71
    :cond_1
    sget-object v0, Lcom/amap/api/mapcore2d/aq;->a:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 75
    :cond_2
    :goto_3
    sget-object v0, Lcom/amap/api/mapcore2d/aq;->a:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 79
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/aq;->g()V

    .line 80
    new-instance v0, Lcom/amap/api/mapcore2d/b;

    sget-object v1, Lcom/amap/api/mapcore2d/aq;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/aq;->b:Lcom/amap/api/mapcore2d/w;

    goto :goto_0

    .line 71
    :cond_3
    if-eqz p1, :cond_2

    .line 72
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore2d/aq;->a:Landroid/content/Context;

    goto :goto_3

    .line 76
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Context \u4e3a null \u8bf7\u5728\u5730\u56fe\u8c03\u7528\u4e4b\u524d \u4f7f\u7528 MapsInitializer.initialize(Context paramContext) \u6765\u8bbe\u7f6eContext"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_5
    if-eqz p3, :cond_0

    :try_start_1
    const-string/jumbo v0, "MapOptions"

    .line 89
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    .line 92
    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v0, 0x0

    .line 93
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 94
    sget-object v0, Lcom/amap/api/maps2d/AMapOptions;->CREATOR:Lcom/amap/api/maps2d/AMapOptionsCreator;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/AMapOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/amap/api/maps2d/AMapOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/maps2d/AMapOptions;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 103
    :catch_0
    move-exception v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public a()Lcom/amap/api/mapcore2d/w;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->b:Lcom/amap/api/mapcore2d/w;

    if-eqz v0, :cond_0

    .line 50
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->b:Lcom/amap/api/mapcore2d/w;

    return-object v0

    .line 41
    :cond_0
    sget-object v0, Lcom/amap/api/mapcore2d/aq;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/aq;->g()V

    .line 46
    new-instance v0, Lcom/amap/api/mapcore2d/b;

    sget-object v1, Lcom/amap/api/mapcore2d/aq;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/aq;->b:Lcom/amap/api/mapcore2d/w;

    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Context \u4e3a null \u8bf7\u5728\u5730\u56fe\u8c03\u7528\u4e4b\u524d \u4f7f\u7528 MapsInitializer.initialize(Context paramContext) \u6765\u8bbe\u7f6eContext"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/app/Activity;Lcom/amap/api/maps2d/AMapOptions;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore2d/aq;->a:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/maps2d/AMapOptions;

    .line 58
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    if-nez p1, :cond_0

    .line 26
    :goto_0
    return-void

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore2d/aq;->a:Landroid/content/Context;

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "MapFragmentDelegateImp"

    const-string/jumbo v1, "onCreate"

    const/16 v2, 0x71

    .line 62
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/ch;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMapOptions;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/maps2d/AMapOptions;

    .line 30
    return-void
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->b:Lcom/amap/api/mapcore2d/w;

    if-nez v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->b:Lcom/amap/api/mapcore2d/w;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->y()V

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->b:Lcom/amap/api/mapcore2d/w;

    if-nez v0, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/maps2d/AMapOptions;

    if-eqz v0, :cond_2

    .line 222
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/maps2d/AMapOptions;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/aq;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore2d/w;->g()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/AMapOptions;->camera(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/maps2d/AMapOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/maps2d/AMapOptions;

    .line 223
    if-eqz p1, :cond_0

    .line 225
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/maps2d/AMapOptions;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/amap/api/maps2d/AMapOptions;->writeToParcel(Landroid/os/Parcel;I)V

    const-string/jumbo v1, "MapOptions"

    .line 227
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 229
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 220
    :cond_2
    new-instance v0, Lcom/amap/api/maps2d/AMapOptions;

    invoke-direct {v0}, Lcom/amap/api/maps2d/AMapOptions;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/maps2d/AMapOptions;

    goto :goto_1
.end method

.method b(Lcom/amap/api/maps2d/AMapOptions;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 148
    if-nez p1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->b:Lcom/amap/api/mapcore2d/w;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getCamera()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    .line 151
    if-nez v0, :cond_2

    .line 155
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->b:Lcom/amap/api/mapcore2d/w;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->q()Lcom/amap/api/mapcore2d/ak;

    move-result-object v0

    .line 156
    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getScrollGesturesEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/ak;->e(Z)V

    .line 157
    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getZoomControlsEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/ak;->b(Z)V

    .line 158
    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getZoomGesturesEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/ak;->f(Z)V

    .line 159
    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getCompassEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/ak;->c(Z)V

    .line 160
    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getScaleControlsEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/ak;->a(Z)V

    .line 161
    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getLogoPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/ak;->a(I)V

    .line 162
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->b:Lcom/amap/api/mapcore2d/w;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getMapType()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/w;->a(I)V

    .line 163
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->b:Lcom/amap/api/mapcore2d/w;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getZOrderOnTop()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/w;->a(Z)V

    goto :goto_0

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore2d/aq;->b:Lcom/amap/api/mapcore2d/w;

    iget-object v2, v0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget v3, v0, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    iget v4, v0, Lcom/amap/api/maps2d/model/CameraPosition;->bearing:F

    iget v0, v0, Lcom/amap/api/maps2d/model/CameraPosition;->tilt:F

    invoke-static {v2, v3, v4, v0}, Lcom/amap/api/mapcore2d/l;->a(Lcom/amap/api/maps2d/model/LatLng;FFF)Lcom/amap/api/mapcore2d/l;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/mapcore2d/l;)V

    goto :goto_1
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->b:Lcom/amap/api/mapcore2d/w;

    if-nez v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->b:Lcom/amap/api/mapcore2d/w;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->z()V

    goto :goto_0
.end method

.method public d()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 200
    return-void
.end method

.method public e()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/aq;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    if-nez v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/aq;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->k()V

    .line 206
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/aq;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->v()V

    goto :goto_0
.end method

.method public f()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "onLowMemory"

    const-string/jumbo v1, "onLowMemory run"

    .line 212
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void
.end method

.method g()V
    .locals 4

    .prologue
    const/16 v3, 0x1e0

    const/16 v2, 0x140

    .line 108
    sget-object v0, Lcom/amap/api/mapcore2d/aq;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 110
    sput v0, Lcom/amap/api/mapcore2d/p;->l:I

    .line 112
    if-gt v0, v2, :cond_0

    const/16 v1, 0x100

    .line 121
    sput v1, Lcom/amap/api/mapcore2d/p;->j:I

    :goto_0
    const/16 v1, 0x78

    .line 124
    if-le v0, v1, :cond_2

    const/16 v1, 0xa0

    .line 126
    if-le v0, v1, :cond_3

    const/16 v1, 0xf0

    .line 128
    if-le v0, v1, :cond_4

    .line 130
    if-le v0, v2, :cond_5

    .line 132
    if-le v0, v3, :cond_6

    const v0, 0x3fe66666    # 1.8f

    .line 143
    sput v0, Lcom/amap/api/mapcore2d/p;->a:F

    .line 145
    :goto_1
    return-void

    .line 113
    :cond_0
    if-le v0, v3, :cond_1

    const/16 v1, 0x200

    .line 116
    sput v1, Lcom/amap/api/mapcore2d/p;->j:I

    goto :goto_0

    :cond_1
    const/16 v1, 0x180

    .line 114
    sput v1, Lcom/amap/api/mapcore2d/p;->j:I

    goto :goto_0

    :cond_2
    const/high16 v0, 0x3f000000    # 0.5f

    .line 125
    sput v0, Lcom/amap/api/mapcore2d/p;->a:F

    goto :goto_1

    :cond_3
    const v0, 0x3f19999a    # 0.6f

    .line 127
    sput v0, Lcom/amap/api/mapcore2d/p;->a:F

    goto :goto_1

    :cond_4
    const v0, 0x3f5eb852    # 0.87f

    .line 129
    sput v0, Lcom/amap/api/mapcore2d/p;->a:F

    goto :goto_1

    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 131
    sput v0, Lcom/amap/api/mapcore2d/p;->a:F

    goto :goto_1

    :cond_6
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 134
    sput v0, Lcom/amap/api/mapcore2d/p;->a:F

    goto :goto_1
.end method
