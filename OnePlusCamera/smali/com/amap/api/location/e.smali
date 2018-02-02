.class Lcom/amap/api/location/e;
.super Ljava/lang/Object;
.source "IGPSManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/location/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/location/d;


# direct methods
.method constructor <init>(Lcom/amap/api/location/d;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v0}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/amap/api/location/a;->b(Z)V

    .line 194
    iget-object v0, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v0}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/api/location/a;->d:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 197
    if-eqz p1, :cond_1

    .line 200
    :try_start_1
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/location/core/c;->a(DD)Z

    move-result v0

    if-nez v0, :cond_3

    .line 207
    new-instance v0, Lcom/amap/api/location/AMapLocation;

    invoke-direct {v0, p1}, Lcom/amap/api/location/AMapLocation;-><init>(Landroid/location/Location;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    :goto_0
    :try_start_2
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 216
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v2, 0x64

    .line 217
    iput v2, v1, Landroid/os/Message;->what:I

    .line 218
    iget-object v2, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v2}, Lcom/amap/api/location/d;->b(Lcom/amap/api/location/d;)Lcom/amap/api/location/a$a;

    move-result-object v2

    if-nez v2, :cond_7

    .line 221
    :goto_1
    iget-object v1, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v1}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/amap/api/location/a;->c:Z

    .line 222
    iget-object v1, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v1}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/amap/api/location/a;->d:J

    .line 224
    iget-object v1, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v1}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;

    if-nez v1, :cond_8

    .line 235
    :cond_0
    :goto_2
    return-void

    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    .line 216
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0x64

    .line 217
    iput v1, v0, Landroid/os/Message;->what:I

    .line 218
    iget-object v1, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v1}, Lcom/amap/api/location/d;->b(Lcom/amap/api/location/d;)Lcom/amap/api/location/a$a;

    move-result-object v1

    if-nez v1, :cond_5

    .line 221
    :goto_3
    iget-object v0, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v0}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/location/a;->c:Z

    .line 222
    iget-object v0, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v0}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/api/location/a;->d:J

    .line 224
    iget-object v0, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v0}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v0, :cond_6

    .line 198
    :cond_2
    :goto_4
    return-void

    .line 201
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/aps/u;->a(DD)[D

    move-result-object v2

    .line 203
    new-instance v0, Lcom/amap/api/location/AMapLocation;

    invoke-direct {v0, p1}, Lcom/amap/api/location/AMapLocation;-><init>(Landroid/location/Location;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v1, 0x1

    .line 204
    :try_start_4
    aget-wide v4, v2, v1

    invoke-virtual {v0, v4, v5}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    const/4 v1, 0x0

    .line 205
    aget-wide v2, v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    .line 227
    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 213
    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 227
    :try_start_6
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 216
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v2, 0x64

    .line 217
    iput v2, v0, Landroid/os/Message;->what:I

    .line 218
    iget-object v2, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v2}, Lcom/amap/api/location/d;->b(Lcom/amap/api/location/d;)Lcom/amap/api/location/a$a;

    move-result-object v2

    if-nez v2, :cond_9

    .line 221
    :goto_6
    iget-object v0, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v0}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/amap/api/location/a;->c:Z

    .line 222
    iget-object v0, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v0}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/api/location/a;->d:J

    .line 224
    iget-object v0, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v0}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v0}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;

    iget-object v0, v0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v0}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;

    iget-object v0, v0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    invoke-interface {v0, v1}, Lcom/aps/k;->a(Lcom/amap/api/location/AMapLocation;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    .line 233
    :catch_1
    move-exception v0

    .line 232
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 227
    :catchall_0
    move-exception v0

    :goto_7
    :try_start_7
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 216
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v3, 0x64

    .line 217
    iput v3, v2, Landroid/os/Message;->what:I

    .line 218
    iget-object v3, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v3}, Lcom/amap/api/location/d;->b(Lcom/amap/api/location/d;)Lcom/amap/api/location/a$a;

    move-result-object v3

    if-nez v3, :cond_a

    .line 221
    :goto_8
    iget-object v2, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v2}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/amap/api/location/a;->c:Z

    .line 222
    iget-object v2, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v2}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/amap/api/location/a;->d:J

    .line 224
    iget-object v2, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v2}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;

    if-nez v2, :cond_b

    .line 215
    :cond_4
    :goto_9
    throw v0

    .line 219
    :cond_5
    iget-object v1, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v1}, Lcom/amap/api/location/d;->b(Lcom/amap/api/location/d;)Lcom/amap/api/location/a$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3

    .line 224
    :cond_6
    iget-object v0, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v0}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;

    iget-object v0, v0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v0}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;

    iget-object v0, v0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/aps/k;->a(Lcom/amap/api/location/AMapLocation;)V

    goto/16 :goto_4

    .line 219
    :cond_7
    iget-object v2, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v2}, Lcom/amap/api/location/d;->b(Lcom/amap/api/location/d;)Lcom/amap/api/location/a$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 224
    :cond_8
    iget-object v1, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v1}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;

    iget-object v1, v1, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v1}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;

    iget-object v1, v1, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    invoke-interface {v1, v0}, Lcom/aps/k;->a(Lcom/amap/api/location/AMapLocation;)V

    goto/16 :goto_2

    .line 219
    :cond_9
    iget-object v2, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v2}, Lcom/amap/api/location/d;->b(Lcom/amap/api/location/d;)Lcom/amap/api/location/a$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_6

    :cond_a
    iget-object v3, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v3}, Lcom/amap/api/location/d;->b(Lcom/amap/api/location/d;)Lcom/amap/api/location/a$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_8

    .line 224
    :cond_b
    iget-object v2, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v2}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;

    iget-object v2, v2, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    if-eqz v2, :cond_4

    .line 225
    iget-object v2, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v2}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;

    iget-object v2, v2, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    invoke-interface {v2, v1}, Lcom/aps/k;->a(Lcom/amap/api/location/AMapLocation;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_9

    .line 227
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_7

    :catch_2
    move-exception v0

    goto/16 :goto_5
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 247
    return-void
.end method
