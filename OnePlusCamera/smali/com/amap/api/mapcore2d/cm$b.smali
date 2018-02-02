.class Lcom/amap/api/mapcore2d/cm$b;
.super Lcom/amap/api/mapcore2d/dz;
.source "AuthConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/cm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/cu;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amap/api/mapcore2d/cu;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 565
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/dz;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/cu;)V

    .line 566
    iput-object p3, p0, Lcom/amap/api/mapcore2d/cm$b;->f:Ljava/lang/String;

    .line 567
    iput-object p4, p0, Lcom/amap/api/mapcore2d/cm$b;->g:Ljava/util/Map;

    .line 568
    return-void
.end method

.method private l()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 597
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cm$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cp;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 598
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 603
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "authkey"

    .line 607
    iget-object v4, p0, Lcom/amap/api/mapcore2d/cm$b;->f:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "plattype"

    const-string/jumbo v4, "android"

    .line 608
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "product"

    .line 609
    iget-object v4, p0, Lcom/amap/api/mapcore2d/cm$b;->b:Lcom/amap/api/mapcore2d/cu;

    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/cu;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "version"

    .line 610
    iget-object v4, p0, Lcom/amap/api/mapcore2d/cm$b;->b:Lcom/amap/api/mapcore2d/cu;

    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/cu;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "output"

    const-string/jumbo v4, "json"

    .line 611
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "androidversion"

    .line 612
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "deviceId"

    .line 613
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cm$b;->g:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 620
    :cond_0
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v0, v3, :cond_3

    move-object v0, v1

    .line 635
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_3
    const-string/jumbo v1, "abitype"

    .line 639
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "ext"

    .line 644
    iget-object v1, p0, Lcom/amap/api/mapcore2d/cm$b;->b:Lcom/amap/api/mapcore2d/cu;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/cu;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    return-object v2

    .line 599
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 600
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 601
    invoke-static {v0}, Lcom/amap/api/mapcore2d/cr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 614
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cm$b;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cm$b;->g:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .line 623
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cm$b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const-class v3, Landroid/content/pm/ApplicationInfo;

    .line 624
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "primaryCpuAbi"

    .line 625
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 626
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 627
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 631
    :catch_0
    move-exception v0

    const-string/jumbo v3, "ConfigManager"

    const-string/jumbo v4, "getcpu"

    .line 629
    invoke-static {v0, v3, v4}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2

    .line 636
    :cond_4
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    goto :goto_3
.end method


# virtual methods
.method public a()[B
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 582
    return-object v0
.end method

.method public b()[B
    .locals 1

    .prologue
    .line 587
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/cm$b;->l()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "3.0"

    .line 592
    return-object v0
.end method

.method public e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 572
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "https://restapi.amap.com/v3/iasdkauth"

    .line 577
    return-object v0
.end method
