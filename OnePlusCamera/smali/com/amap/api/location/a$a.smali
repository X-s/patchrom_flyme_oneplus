.class Lcom/amap/api/location/a$a;
.super Landroid/os/Handler;
.source "AMapLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/location/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/location/a;


# direct methods
.method public constructor <init>(Lcom/amap/api/location/a;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    .line 238
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 240
    return-void
.end method

.method public constructor <init>(Lcom/amap/api/location/a;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    .line 234
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 235
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 236
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 246
    if-eqz p1, :cond_1

    .line 249
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    return-void

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v0}, Lcom/amap/api/location/a;->a(Lcom/amap/api/location/a;)Ljava/util/Vector;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocation;

    invoke-static {v1, v0}, Lcom/amap/api/location/a;->a(Lcom/amap/api/location/a;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;

    .line 253
    iget-object v0, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v0}, Lcom/amap/api/location/a;->b(Lcom/amap/api/location/a;)Lcom/amap/api/location/AMapLocation;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    if-nez v0, :cond_6

    .line 260
    :cond_3
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v0}, Lcom/amap/api/location/a;->a(Lcom/amap/api/location/a;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 278
    iget-object v0, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v0}, Lcom/amap/api/location/a;->c(Lcom/amap/api/location/a;)Ljava/util/Vector;

    move-result-object v0

    if-nez v0, :cond_9

    .line 286
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v0}, Lcom/amap/api/location/a;->b(Lcom/amap/api/location/a;)Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v0}, Lcom/amap/api/location/a;->d(Lcom/amap/api/location/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v1}, Lcom/amap/api/location/a;->b(Lcom/amap/api/location/a;)Lcom/amap/api/location/AMapLocation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/location/core/d;->a(Landroid/content/Context;Lcom/amap/api/location/AMapLocation;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    goto :goto_0

    .line 253
    :cond_6
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v0}, Lcom/amap/api/location/a;->b(Lcom/amap/api/location/a;)Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v0}, Lcom/amap/api/location/a;->b(Lcom/amap/api/location/a;)Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 254
    iget-object v0, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    iget-object v1, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v1}, Lcom/amap/api/location/a;->b(Lcom/amap/api/location/a;)Lcom/amap/api/location/AMapLocation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/location/a;->b(Lcom/amap/api/location/a;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 258
    :catch_1
    move-exception v0

    .line 257
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 260
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/g;

    .line 261
    iget-object v1, v0, Lcom/amap/api/location/g;->b:Lcom/amap/api/location/AMapLocationListener;

    if-eqz v1, :cond_4

    .line 262
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/location/AMapLocation;

    .line 263
    iget-object v4, v0, Lcom/amap/api/location/g;->c:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 268
    :goto_4
    iget-object v4, v0, Lcom/amap/api/location/g;->b:Lcom/amap/api/location/AMapLocationListener;

    invoke-interface {v4, v1}, Lcom/amap/api/location/AMapLocationListener;->onLocationChanged(Lcom/amap/api/location/AMapLocation;)V

    .line 271
    iget-object v1, v0, Lcom/amap/api/location/g;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-wide v4, v0, Lcom/amap/api/location/g;->a:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v1}, Lcom/amap/api/location/a;->c(Lcom/amap/api/location/a;)Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 272
    iget-object v1, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v1}, Lcom/amap/api/location/a;->c(Lcom/amap/api/location/a;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 264
    :cond_8
    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getAMapException()Lcom/amap/api/location/core/AMapLocException;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amap/api/location/core/AMapLocException;->getErrorCode()I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_4

    .line 278
    :cond_9
    iget-object v0, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v0}, Lcom/amap/api/location/a;->c(Lcom/amap/api/location/a;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_5

    move v1, v2

    .line 279
    :goto_5
    iget-object v0, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v0}, Lcom/amap/api/location/a;->c(Lcom/amap/api/location/a;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_a

    .line 282
    iget-object v0, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v0}, Lcom/amap/api/location/a;->c(Lcom/amap/api/location/a;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    goto/16 :goto_3

    .line 280
    :cond_a
    iget-object v2, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    iget-object v0, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v0}, Lcom/amap/api/location/a;->c(Lcom/amap/api/location/a;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/g;

    iget-object v0, v0, Lcom/amap/api/location/g;->b:Lcom/amap/api/location/AMapLocationListener;

    invoke-virtual {v2, v0}, Lcom/amap/api/location/a;->a(Lcom/amap/api/location/AMapLocationListener;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 279
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5
.end method
