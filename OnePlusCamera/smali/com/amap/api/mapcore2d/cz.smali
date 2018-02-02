.class public Lcom/amap/api/mapcore2d/cz;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static final a:Ljava/lang/String;

.field static final b:Ljava/lang/String;

.field static final c:Ljava/lang/String;

.field static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "/a/"

    .line 63
    sput-object v0, Lcom/amap/api/mapcore2d/cz;->a:Ljava/lang/String;

    const-string/jumbo v0, "b"

    .line 64
    sput-object v0, Lcom/amap/api/mapcore2d/cz;->b:Ljava/lang/String;

    const-string/jumbo v0, "c"

    .line 65
    sput-object v0, Lcom/amap/api/mapcore2d/cz;->c:Ljava/lang/String;

    const-string/jumbo v0, "d"

    .line 66
    sput-object v0, Lcom/amap/api/mapcore2d/cz;->d:Ljava/lang/String;

    const-string/jumbo v0, "e"

    .line 67
    sput-object v0, Lcom/amap/api/mapcore2d/cz;->e:Ljava/lang/String;

    const-string/jumbo v0, "f"

    .line 68
    sput-object v0, Lcom/amap/api/mapcore2d/cz;->f:Ljava/lang/String;

    .line 70
    return-void
.end method

.method static a(Landroid/content/Context;I)Lcom/amap/api/mapcore2d/df;
    .locals 1

    .prologue
    .line 136
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    .line 147
    return-object v0

    .line 138
    :pswitch_0
    new-instance v0, Lcom/amap/api/mapcore2d/dd;

    invoke-direct {v0, p1}, Lcom/amap/api/mapcore2d/dd;-><init>(I)V

    .line 149
    :goto_0
    return-object v0

    .line 141
    :pswitch_1
    new-instance v0, Lcom/amap/api/mapcore2d/de;

    invoke-direct {v0, p1}, Lcom/amap/api/mapcore2d/de;-><init>(I)V

    goto :goto_0

    .line 144
    :pswitch_2
    new-instance v0, Lcom/amap/api/mapcore2d/dc;

    invoke-direct {v0, p1}, Lcom/amap/api/mapcore2d/dc;-><init>(I)V

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(I)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class",
            "<+",
            "Lcom/amap/api/mapcore2d/dq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    .line 98
    return-object v0

    :pswitch_0
    const-class v0, Lcom/amap/api/mapcore2d/dl;

    .line 89
    return-object v0

    :pswitch_1
    const-class v0, Lcom/amap/api/mapcore2d/dn;

    .line 92
    return-object v0

    :pswitch_2
    const-class v0, Lcom/amap/api/mapcore2d/dk;

    .line 95
    return-object v0

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    sget-object v1, Lcom/amap/api/mapcore2d/cz;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    return-object v0
.end method

.method static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 229
    :try_start_0
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/cz;->a(Landroid/content/Context;I)Lcom/amap/api/mapcore2d/df;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/df;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 231
    :cond_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 235
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 194
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore2d/db;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    .line 195
    if-nez v6, :cond_1

    .line 199
    :cond_0
    return-void

    .line 195
    :cond_1
    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Lcom/amap/api/mapcore2d/cz$1;

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore2d/cz$1;-><init>(Landroid/content/Context;ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 225
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 221
    return-void

    :catch_1
    move-exception v0

    .line 223
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(I)Lcom/amap/api/mapcore2d/dq;
    .locals 1

    .prologue
    .line 103
    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    .line 114
    return-object v0

    .line 105
    :pswitch_0
    new-instance v0, Lcom/amap/api/mapcore2d/dl;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/dl;-><init>()V

    return-object v0

    .line 108
    :pswitch_1
    new-instance v0, Lcom/amap/api/mapcore2d/dn;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/dn;-><init>()V

    return-object v0

    .line 111
    :pswitch_2
    new-instance v0, Lcom/amap/api/mapcore2d/dk;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/dk;-><init>()V

    return-object v0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 244
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore2d/db;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 245
    if-nez v0, :cond_1

    .line 246
    :cond_0
    return-void

    .line 245
    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    new-instance v1, Lcom/amap/api/mapcore2d/cz$2;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore2d/cz$2;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v0

    const-string/jumbo v1, "Log"

    const-string/jumbo v2, "processLog"

    .line 292
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, ""

    .line 131
    return-object v0

    .line 124
    :pswitch_0
    sget-object v0, Lcom/amap/api/mapcore2d/cz;->d:Ljava/lang/String;

    return-object v0

    .line 126
    :pswitch_1
    sget-object v0, Lcom/amap/api/mapcore2d/cz;->c:Ljava/lang/String;

    return-object v0

    .line 128
    :pswitch_2
    sget-object v0, Lcom/amap/api/mapcore2d/cz;->b:Ljava/lang/String;

    return-object v0

    .line 122
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
