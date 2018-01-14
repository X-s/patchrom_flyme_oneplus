.class final Lcom/android/server/am/EmbryoManager$UselessManager;
.super Ljava/lang/Object;
.source "EmbryoManager.java"

# interfaces
.implements Lcom/android/server/am/IEmbryoManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/EmbryoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UselessManager"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/EmbryoManager$UselessManager;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$UselessManager;-><init>()V

    return-void
.end method


# virtual methods
.method public activityTransition(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 0
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "next"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 441
    return-void
.end method

.method public attach(Landroid/app/IApplicationThread;I)Z
    .locals 1
    .param p1, "thread"    # Landroid/app/IApplicationThread;
    .param p2, "pid"    # I

    .prologue
    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method public checkBackgroundLevel(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 480
    .local p1, "lruProcesses":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public dumpsys(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 462
    const-string/jumbo v0, "Disabled"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 461
    return-void
.end method

.method public goingToSleep()V
    .locals 0

    .prologue
    .line 445
    return-void
.end method

.method public initiate(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 437
    return-void
.end method

.method public obtain(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Landroid/app/IApplicationThread;
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingType"    # Ljava/lang/String;

    .prologue
    .line 424
    const/4 v0, 0x0

    return-object v0
.end method

.method public packageChanged(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 457
    return-void
.end method

.method public packageInstalled(Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 453
    return-void
.end method

.method public prepare(Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 419
    return-void
.end method

.method public resolveConfig(Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 475
    invoke-static {p0, p1}, Lcom/android/server/am/EmbryoManager;->resolveConfigCommon(Lcom/android/server/am/IEmbryoManager;Lorg/json/JSONArray;)V

    .line 474
    return-void
.end method

.method public scheduleAttach(Landroid/app/IApplicationThread;I)V
    .locals 0
    .param p1, "thread"    # Landroid/app/IApplicationThread;
    .param p2, "pid"    # I

    .prologue
    .line 484
    return-void
.end method

.method public setBlackList(Ljava/util/List;)V
    .locals 0
    .param p1, "list"    # Ljava/util/List;

    .prologue
    .line 466
    return-void
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 433
    return-void
.end method

.method public updateConfig()V
    .locals 0

    .prologue
    .line 470
    return-void
.end method

.method public wakingUp()V
    .locals 0

    .prologue
    .line 449
    return-void
.end method
