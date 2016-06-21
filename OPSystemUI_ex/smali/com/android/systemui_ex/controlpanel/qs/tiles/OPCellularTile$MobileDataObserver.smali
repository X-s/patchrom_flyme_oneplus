.class Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MobileDataObserver;
.super Landroid/database/ContentObserver;
.source "OPCellularTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobileDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MobileDataObserver;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    .line 229
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 230
    return-void
.end method


# virtual methods
.method public endObserving()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MobileDataObserver;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$900(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 284
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 235
    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$400()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OPCellularTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MobileDataObserver:onChange:uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MobileDataObserver;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    # invokes: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->isMSim()Z
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$800(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 238
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mobile_data0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 239
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MobileDataObserver;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MobileDataObserver;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$900(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data0"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    # setter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mIsCurrentEnabled:Z
    invoke-static {v2, v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$502(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;Z)Z

    .line 240
    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OPCellularTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange:mIsCurrentEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MobileDataObserver;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mIsCurrentEnabled:Z
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$500(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MobileDataObserver;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    # invokes: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$1000(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)V

    .line 266
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 239
    goto :goto_0

    .line 244
    :cond_3
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mobile_data1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 245
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MobileDataObserver;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MobileDataObserver;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$900(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data1"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    :goto_2
    # setter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mIsCurrentEnabled:Z
    invoke-static {v2, v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$502(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;Z)Z

    .line 246
    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$400()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "OPCellularTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange:mIsCurrentEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MobileDataObserver;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mIsCurrentEnabled:Z
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$500(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_4
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MobileDataObserver;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    # invokes: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$1100(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)V

    goto :goto_1

    :cond_5
    move v0, v1

    .line 245
    goto :goto_2

    .line 252
    :cond_6
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mobile_data0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 253
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MobileDataObserver;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MobileDataObserver;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$900(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data0"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_8

    :goto_3
    # setter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mIsCurrentEnabled:Z
    invoke-static {v2, v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$502(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;Z)Z

    .line 254
    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$400()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "OPCellularTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange:mIsCurrentEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MobileDataObserver;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mIsCurrentEnabled:Z
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$500(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_7
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MobileDataObserver;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    # invokes: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$1200(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)V

    goto/16 :goto_1

    :cond_8
    move v0, v1

    .line 253
    goto :goto_3

    .line 260
    :cond_9
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MobileDataObserver;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    # invokes: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->isAirplaneModeOn()Z
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$1300(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 261
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MobileDataObserver;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MobileDataObserver;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mIsCurrentEnabled:Z
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$500(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)Z

    move-result v1

    # setter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mStateBeforeAirplaneMode:Z
    invoke-static {v0, v1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$1402(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;Z)Z

    .line 262
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MobileDataObserver;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    # invokes: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$1500(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)V

    goto/16 :goto_1

    .line 264
    :cond_a
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MobileDataObserver;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    # invokes: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->onMobileDataStateChanged(Z)V
    invoke-static {v1, v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$1600(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;Z)V

    goto/16 :goto_1
.end method

.method public startObserving()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 269
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MobileDataObserver;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$900(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 272
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MobileDataObserver;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    # invokes: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->isMSim()Z
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$800(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MobileDataObserver;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$300(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 274
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MobileDataObserver;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$900(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mobile_data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MobileDataObserver;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$900(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data0"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 280
    :cond_1
    return-void
.end method
