.class public Lcom/amap/api/mapcore2d/dp;
.super Ljava/lang/Object;
.source "LogDBOperation.java"


# instance fields
.field private a:Lcom/amap/api/mapcore2d/dh;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore2d/dh;

    const-class v1, Lcom/amap/api/mapcore2d/do;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/dh;->a(Ljava/lang/Class;)Lcom/amap/api/mapcore2d/dg;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/amap/api/mapcore2d/dh;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/dg;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/dp;->a:Lcom/amap/api/mapcore2d/dh;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :goto_0
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/amap/api/mapcore2d/dq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p1}, Lcom/amap/api/mapcore2d/dq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/amap/api/mapcore2d/dp;->a:Lcom/amap/api/mapcore2d/dh;

    invoke-virtual {v1, v0, p2}, Lcom/amap/api/mapcore2d/dh;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 45
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lcom/amap/api/mapcore2d/dq;",
            ">;)",
            "Ljava/util/List",
            "<+",
            "Lcom/amap/api/mapcore2d/dq;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 55
    :try_start_0
    invoke-static {p1}, Lcom/amap/api/mapcore2d/dq;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-object v2, p0, Lcom/amap/api/mapcore2d/dp;->a:Lcom/amap/api/mapcore2d/dh;

    invoke-virtual {v2, v0, p2}, Lcom/amap/api/mapcore2d/dh;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    .line 61
    :catch_0
    move-exception v0

    const-string/jumbo v2, "LogDB"

    const-string/jumbo v3, "ByState"

    .line 59
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lcom/amap/api/mapcore2d/dq;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    if-eqz p1, :cond_1

    .line 92
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/dq;->b()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/amap/api/mapcore2d/dq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dp;->a:Lcom/amap/api/mapcore2d/dh;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/amap/api/mapcore2d/dh;->a(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    .line 95
    if-nez v0, :cond_2

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dp;->a:Lcom/amap/api/mapcore2d/dh;

    invoke-virtual {v0, p1, v4}, Lcom/amap/api/mapcore2d/dh;->a(Ljava/lang/Object;Z)V

    .line 109
    :goto_0
    return-void

    .line 89
    :cond_1
    return-void

    .line 95
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/dq;

    .line 100
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/dq;->a()I

    move-result v2

    if-eqz v2, :cond_3

    .line 105
    invoke-virtual {v0, v3}, Lcom/amap/api/mapcore2d/dq;->b(I)V

    .line 107
    :goto_1
    iget-object v2, p0, Lcom/amap/api/mapcore2d/dp;->a:Lcom/amap/api/mapcore2d/dh;

    invoke-virtual {v2, v1, v0, v4}, Lcom/amap/api/mapcore2d/dh;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 101
    :cond_3
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/dq;->c()I

    move-result v2

    .line 102
    add-int/lit8 v2, v2, 0x1

    .line 103
    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/dq;->b(I)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/amap/api/mapcore2d/dq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/dp;->c(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    const-string/jumbo v1, "LogDB"

    const-string/jumbo v2, "delLog"

    .line 26
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/amap/api/mapcore2d/dq;)V
    .locals 3

    .prologue
    .line 119
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/dq;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/dq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/amap/api/mapcore2d/dp;->a:Lcom/amap/api/mapcore2d/dh;

    invoke-virtual {v1, v0, p1}, Lcom/amap/api/mapcore2d/dh;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    const-string/jumbo v1, "LogDB"

    const-string/jumbo v2, "updateLogInfo"

    .line 124
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/amap/api/mapcore2d/dq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/dp;->c(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
