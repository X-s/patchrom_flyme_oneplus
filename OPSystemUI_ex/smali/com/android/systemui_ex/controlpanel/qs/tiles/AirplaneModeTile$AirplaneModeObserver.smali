.class Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile$AirplaneModeObserver;
.super Landroid/database/ContentObserver;
.source "AirplaneModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AirplaneModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile$AirplaneModeObserver;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;

    .line 97
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 98
    return-void
.end method


# virtual methods
.method public isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 115
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile$AirplaneModeObserver;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;->access$100(Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile$AirplaneModeObserver;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;

    # invokes: Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;->access$000(Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;)V

    .line 103
    return-void
.end method

.method public startObserving()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile$AirplaneModeObserver;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;->access$100(Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 108
    return-void
.end method
