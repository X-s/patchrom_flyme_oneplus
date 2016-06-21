.class final Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;
.super Ljava/lang/Object;
.source "BluetoothTile.java"

# interfaces
.implements Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Callback;
.implements Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BluetoothDetailAdapter"
.end annotation


# instance fields
.field private mItems:Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems;

.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;
    .param p2, "x1"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$1;

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;-><init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->updateItems()V

    return-void
.end method

.method private updateItems()V
    .locals 9

    .prologue
    .line 228
    iget-object v7, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems;

    if-nez v7, :cond_0

    .line 251
    :goto_0
    return-void

    .line 229
    :cond_0
    const/4 v6, 0x0

    .line 230
    .local v6, "items":[Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;
    iget-object v7, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui_ex/statusbar/policy/BluetoothController;
    invoke-static {v7}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->access$100(Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;)Lcom/android/systemui_ex/statusbar/policy/BluetoothController;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/systemui_ex/statusbar/policy/BluetoothController;->getPairedDevices()Ljava/util/Set;

    move-result-object v1

    .line 231
    .local v1, "devices":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/systemui_ex/statusbar/policy/BluetoothController$PairedDevice;>;"
    if-eqz v1, :cond_3

    .line 232
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v7

    new-array v6, v7, [Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;

    .line 233
    const/4 v2, 0x0

    .line 234
    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/policy/BluetoothController$PairedDevice;

    .line 235
    .local v0, "device":Lcom/android/systemui_ex/statusbar/policy/BluetoothController$PairedDevice;
    new-instance v5, Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;

    invoke-direct {v5}, Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;-><init>()V

    .line 236
    .local v5, "item":Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;
    const v7, 0x7f0200d8

    iput v7, v5, Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;->icon:I

    .line 237
    iget-object v7, v0, Lcom/android/systemui_ex/statusbar/policy/BluetoothController$PairedDevice;->name:Ljava/lang/String;

    iput-object v7, v5, Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;->line1:Ljava/lang/String;

    .line 238
    iget v7, v0, Lcom/android/systemui_ex/statusbar/policy/BluetoothController$PairedDevice;->state:I

    sget v8, Lcom/android/systemui_ex/statusbar/policy/BluetoothController$PairedDevice;->STATE_CONNECTED:I

    if-ne v7, v8, :cond_2

    .line 239
    const v7, 0x7f0200d4

    iput v7, v5, Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;->icon:I

    .line 240
    iget-object v7, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->access$900(Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0c0120

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;->line2:Ljava/lang/String;

    .line 241
    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;->canDisconnect:Z

    .line 246
    :cond_1
    :goto_2
    iput-object v0, v5, Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    .line 247
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aput-object v5, v6, v2

    move v2, v3

    .line 248
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 242
    :cond_2
    iget v7, v0, Lcom/android/systemui_ex/statusbar/policy/BluetoothController$PairedDevice;->state:I

    sget v8, Lcom/android/systemui_ex/statusbar/policy/BluetoothController$PairedDevice;->STATE_CONNECTING:I

    if-ne v7, v8, :cond_1

    .line 243
    const v7, 0x7f0200d5

    iput v7, v5, Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;->icon:I

    .line 244
    iget-object v7, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->access$1000(Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0c0122

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;->line2:Ljava/lang/String;

    goto :goto_2

    .line 250
    .end local v0    # "device":Lcom/android/systemui_ex/statusbar/policy/BluetoothController$PairedDevice;
    .end local v2    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "item":Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;
    :cond_3
    iget-object v7, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems;

    invoke-virtual {v7, v6}, Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems;->setItems([Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;)V

    goto :goto_0
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 212
    invoke-static {p1, p2, p3}, Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems;

    .line 213
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems;

    const-string v1, "Bluetooth"

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems;

    const v1, 0x7f0200d6

    const v2, 0x7f0c00fd

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems;->setEmptyState(II)V

    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems;

    invoke-virtual {v0, p0}, Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems;->setCallback(Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Callback;)V

    .line 217
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->updateItems()V

    .line 218
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->access$800(Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;)Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->setItemsVisible(Z)V

    .line 219
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems;

    return-object v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;

    # invokes: Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->getSettingsIntent()Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->access$700(Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()I
    .locals 1

    .prologue
    .line 202
    const v0, 0x7f0c00fa

    return v0
.end method

.method public onDetailItemClick(Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;)V
    .locals 3
    .param p1, "item"    # Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;

    .prologue
    .line 255
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget-object v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui_ex/statusbar/policy/BluetoothController$PairedDevice;

    .line 257
    .local v0, "device":Lcom/android/systemui_ex/statusbar/policy/BluetoothController$PairedDevice;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/systemui_ex/statusbar/policy/BluetoothController$PairedDevice;->state:I

    sget v2, Lcom/android/systemui_ex/statusbar/policy/BluetoothController$PairedDevice;->STATE_DISCONNECTED:I

    if-ne v1, v2, :cond_0

    .line 258
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui_ex/statusbar/policy/BluetoothController;
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->access$100(Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;)Lcom/android/systemui_ex/statusbar/policy/BluetoothController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui_ex/statusbar/policy/BluetoothController;->connect(Lcom/android/systemui_ex/statusbar/policy/BluetoothController$PairedDevice;)V

    goto :goto_0
.end method

.method public onDetailItemDisconnect(Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;)V
    .locals 2
    .param p1, "item"    # Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;

    .prologue
    .line 264
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui_ex/statusbar/policy/BluetoothController$PairedDevice;

    .line 266
    .local v0, "device":Lcom/android/systemui_ex/statusbar/policy/BluetoothController$PairedDevice;
    if-eqz v0, :cond_0

    .line 267
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui_ex/statusbar/policy/BluetoothController;
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->access$100(Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;)Lcom/android/systemui_ex/statusbar/policy/BluetoothController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui_ex/statusbar/policy/BluetoothController;->disconnect(Lcom/android/systemui_ex/statusbar/policy/BluetoothController$PairedDevice;)V

    goto :goto_0
.end method

.method public setItemsVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems;

    if-nez v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSDetailItems;->setItemsVisible(Z)V

    goto :goto_0
.end method
