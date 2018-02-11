.class public Lcom/android/settings_ex/qstile/DevelopmentTiles$ShowLayout;
.super Landroid/service/quicksettings/TileService;
.source "DevelopmentTiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/qstile/DevelopmentTiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShowLayout"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    :try_start_0
    invoke-super {p0, p1}, Landroid/service/quicksettings/TileService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "DevelopmentTiles"

    const-string/jumbo v2, "bind GPUProfiling service failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v1, 0x0

    return-object v1
.end method

.method public onClick()V
    .locals 3

    .prologue
    .line 79
    const-string/jumbo v1, "debug.layout"

    .line 80
    invoke-virtual {p0}, Lcom/android/settings_ex/qstile/DevelopmentTiles$ShowLayout;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "true"

    .line 79
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v0, Lcom/android/settings_ex/DevelopmentSettings$SystemPropPoker;

    invoke-direct {v0}, Lcom/android/settings_ex/DevelopmentSettings$SystemPropPoker;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DevelopmentSettings$SystemPropPoker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 82
    invoke-virtual {p0}, Lcom/android/settings_ex/qstile/DevelopmentTiles$ShowLayout;->refresh()V

    .line 78
    return-void

    .line 80
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method public onStartListening()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings_ex/qstile/DevelopmentTiles$ShowLayout;->refresh()V

    .line 54
    return-void
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 72
    const-string/jumbo v1, "debug.layout"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 73
    .local v0, "enabled":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/qstile/DevelopmentTiles$ShowLayout;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v2

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v2, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings_ex/qstile/DevelopmentTiles$ShowLayout;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/quicksettings/Tile;->updateTile()V

    .line 71
    return-void

    .line 73
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
