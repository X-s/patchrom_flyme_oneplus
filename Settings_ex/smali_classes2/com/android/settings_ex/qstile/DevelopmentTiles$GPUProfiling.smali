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
    .line 73
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .prologue
    .line 89
    const-string/jumbo v1, "debug.hwui.profile"

    .line 90
    invoke-virtual {p0}, Lcom/android/settings_ex/qstile/DevelopmentTiles$GPUProfiling;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "visual_bars"

    .line 89
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v0, Lcom/android/settings_ex/DevelopmentSettings$SystemPropPoker;

    invoke-direct {v0}, Lcom/android/settings_ex/DevelopmentSettings$SystemPropPoker;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DevelopmentSettings$SystemPropPoker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 92
    invoke-virtual {p0}, Lcom/android/settings_ex/qstile/DevelopmentTiles$GPUProfiling;->refresh()V

    .line 88
    return-void

    .line 90
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public onStartListening()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings_ex/qstile/DevelopmentTiles$GPUProfiling;->refresh()V

    .line 75
    return-void
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 81
    const-string/jumbo v1, "debug.hwui.profile"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/qstile/DevelopmentTiles$GPUProfiling;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v2

    const-string/jumbo v1, "visual_bars"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    const/4 v1, 0x2

    .line 82
    :goto_0
    invoke-virtual {v2, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings_ex/qstile/DevelopmentTiles$GPUProfiling;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/quicksettings/Tile;->updateTile()V

    .line 80
    return-void

    .line 83
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
