.class final Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;
.super Ljava/lang/Object;
.source "WifiTile.java"

# interfaces
.implements Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController$AccessPointCallback;
.implements Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Callback;
.implements Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiDetailAdapter"
.end annotation


# instance fields
.field private mAccessPoints:[Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController$AccessPoint;

.field private mItems:Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems;

.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;
    .param p2, "x1"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$1;

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;-><init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;)V

    return-void
.end method

.method private updateItems()V
    .locals 6

    .prologue
    .line 301
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems;

    if-nez v4, :cond_0

    .line 325
    :goto_0
    return-void

    .line 302
    :cond_0
    const/4 v3, 0x0

    .line 303
    .local v3, "items":[Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController$AccessPoint;

    if-eqz v4, :cond_5

    .line 304
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController$AccessPoint;

    array-length v4, v4

    new-array v3, v4, [Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;

    .line 305
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController$AccessPoint;

    array-length v4, v4

    if-ge v1, v4, :cond_5

    .line 306
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController$AccessPoint;

    aget-object v0, v4, v1

    .line 307
    .local v0, "ap":Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController$AccessPoint;
    new-instance v2, Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;

    invoke-direct {v2}, Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;-><init>()V

    .line 308
    .local v2, "item":Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;
    iput-object v0, v2, Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    .line 309
    iget v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController$AccessPoint;->iconId:I

    iput v4, v2, Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;->icon:I

    .line 310
    iget-object v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController$AccessPoint;->ssid:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;->line1:Ljava/lang/String;

    .line 311
    iget-boolean v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController$AccessPoint;->isConnected:Z

    if-eqz v4, :cond_3

    .line 312
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->access$1400(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v5

    iget-boolean v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController$AccessPoint;->isConfigured:Z

    if-eqz v4, :cond_2

    const v4, 0x7f0c0120

    :goto_2
    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;->line2:Ljava/lang/String;

    .line 318
    :cond_1
    :goto_3
    iget-boolean v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController$AccessPoint;->hasSecurity:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->access$1500(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0201e0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_4
    iput-object v4, v2, Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    .line 321
    aput-object v2, v3, v1

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 312
    :cond_2
    const v4, 0x7f0c0121

    goto :goto_2

    .line 315
    :cond_3
    iget v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController$AccessPoint;->networkId:I

    if-ltz v4, :cond_1

    goto :goto_3

    .line 318
    :cond_4
    const/4 v4, 0x0

    goto :goto_4

    .line 324
    .end local v0    # "ap":Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController$AccessPoint;
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;
    :cond_5
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems;

    invoke-virtual {v4, v3}, Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems;->setItems([Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;)V

    goto :goto_0
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v1, 0x1

    .line 252
    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v2, "WifiTile"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createDetailView convertView="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController$AccessPoint;

    .line 254
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->access$1100(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;)Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController;->scanForAccessPoints()V

    .line 255
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->fireScanStateChanged(Z)V

    .line 256
    invoke-static {p1, p2, p3}, Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems;

    .line 257
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems;

    const-string v1, "Wifi"

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems;

    invoke-virtual {v0, p0}, Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems;->setCallback(Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Callback;)V

    .line 259
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems;

    const v1, 0x7f02011a

    const v2, 0x7f0c0113

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems;->setEmptyState(II)V

    .line 261
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;->updateItems()V

    .line 262
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mState:Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->access$1200(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;)Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->enabled:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;->setItemsVisible(Z)V

    .line 263
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems;

    return-object v0

    .line 252
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 247
    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;
    invoke-static {}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->access$900()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()I
    .locals 1

    .prologue
    .line 243
    const v0, 0x7f0c010f

    return v0
.end method

.method public onAccessPointsChanged([Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController$AccessPoint;)V
    .locals 2
    .param p1, "accessPoints"    # [Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController$AccessPoint;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController$AccessPoint;

    .line 269
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;->updateItems()V

    .line 270
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->fireScanStateChanged(Z)V

    .line 273
    :cond_0
    return-void
.end method

.method public onDetailItemClick(Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;)V
    .locals 3
    .param p1, "item"    # Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;

    .prologue
    .line 282
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController$AccessPoint;

    .line 284
    .local v0, "ap":Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController$AccessPoint;
    iget-boolean v1, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController$AccessPoint;->isConnected:Z

    if-nez v1, :cond_2

    .line 285
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController;
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->access$1100(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;)Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController;->connect(Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController$AccessPoint;)Z

    .line 287
    :cond_2
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->showDetail(Z)V

    goto :goto_0
.end method

.method public onDetailItemDisconnect(Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;)V
    .locals 0
    .param p1, "item"    # Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;

    .prologue
    .line 293
    return-void
.end method

.method public onSettingsActivityTriggered(Landroid/content/Intent;)V
    .locals 1
    .param p1, "settingsIntent"    # Landroid/content/Intent;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mHost:Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->access$1300(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;)Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    .line 278
    return-void
.end method

.method public setItemsVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems;

    if-nez v0, :cond_0

    .line 298
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems;->setItemsVisible(Z)V

    goto :goto_0
.end method
