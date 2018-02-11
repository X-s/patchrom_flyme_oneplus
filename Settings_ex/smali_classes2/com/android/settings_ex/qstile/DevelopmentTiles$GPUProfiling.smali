.class public Lcom/android/settings_ex/qstile/DevelopmentTiles$GPUProfiling;
.super Landroid/service/quicksettings/TileService;
.source "DevelopmentTiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/qstile/DevelopmentTiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GPUProfiling"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    :try_start_0
    invoke-super {p0, p1}, Landroid/service/quicksettings/TileService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "DevelopmentTiles"

    const-string/jumbo v2, "bind GPUProfiling service failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v1, 0x0

    return-object v1
.end method

.method public onClick()V
    .locals 3

    .prologue
    .line 117
    const-string/jumbo v1, "debug.hwui.profile"

    .line 118
    invoke-virtual {p0}, Lcom/android/settings_ex/qstile/DevelopmentTiles$GPUProfiling;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "visual_bars"

    .line 117
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v0, Lcom/android/settings_ex/DevelopmentSettings$SystemPropPoker;

    invoke-direct {v0}, Lcom/android/settings_ex/DevelopmentSettings$SystemPropPoker;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DevelopmentSettings$SystemPropPoker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 120
    invoke-virtual {p0}, Lcom/android/settings_ex/qstile/DevelopmentTiles$GPUProfiling;->refresh()V

    .line 116
    return-void

    .line 118
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public onStartListening()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings_ex/qstile/DevelopmentTiles$GPUProfiling;->refresh()V

    .line 91
    return-void
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 109
    const-string/jumbo v1, "debug.hwui.profile"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/qstile/DevelopmentTiles$GPUProfiling;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v2

    const-string/jumbo v1, "visual_bars"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const/4 v1, 0x2

    .line 110
    :goto_0
    invoke-virtual {v2, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings_ex/qstile/DevelopmentTiles$GPUProfiling;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/quicksettings/Tile;->updateTile()V

    .line 108
    return-void

    .line 111
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
