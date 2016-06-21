.class Lcom/android/systemui_ex/statusbar/phone/QSTileHost$1;
.super Lcom/android/systemui_ex/settings/CurrentUserTracker;
.source "QSTileHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/phone/QSTileHost;-><init>(Landroid/content/Context;Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Lcom/android/systemui_ex/statusbar/policy/BluetoothController;Lcom/android/systemui_ex/statusbar/policy/LocationController;Lcom/android/systemui_ex/statusbar/policy/VPNController;Lcom/android/systemui_ex/statusbar/policy/RotationLockController;Lcom/android/systemui_ex/statusbar/policy/NetworkController;Lcom/android/systemui_ex/statusbar/policy/ZenModeController;Lcom/android/systemui_ex/volume/VolumeComponent;Lcom/android/systemui_ex/statusbar/policy/HotspotController;Lcom/android/systemui_ex/statusbar/policy/CastController;Lcom/android/systemui_ex/statusbar/policy/FlashlightController;Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;Lcom/android/systemui_ex/statusbar/policy/SecurityController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/QSTileHost;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/QSTileHost;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/QSTileHost;

    invoke-direct {p0, p2}, Lcom/android/systemui_ex/settings/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 3
    .param p1, "newUserId"    # I

    .prologue
    .line 143
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/QSTileHost;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->recreateTiles()V
    invoke-static {v2}, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->access$000(Lcom/android/systemui_ex/statusbar/phone/QSTileHost;)V

    .line 144
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/QSTileHost;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;
    invoke-static {v2}, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->access$100(Lcom/android/systemui_ex/statusbar/phone/QSTileHost;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/qs/QSTile;

    .line 145
    .local v1, "tile":Lcom/android/systemui_ex/qs/QSTile;, "Lcom/android/systemui_ex/qs/QSTile<*>;"
    invoke-virtual {v1, p1}, Lcom/android/systemui_ex/qs/QSTile;->userSwitch(I)V

    goto :goto_0

    .line 147
    .end local v1    # "tile":Lcom/android/systemui_ex/qs/QSTile;, "Lcom/android/systemui_ex/qs/QSTile<*>;"
    :cond_0
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/QSTileHost;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mSecurity:Lcom/android/systemui_ex/statusbar/policy/SecurityController;
    invoke-static {v2}, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->access$200(Lcom/android/systemui_ex/statusbar/phone/QSTileHost;)Lcom/android/systemui_ex/statusbar/policy/SecurityController;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/systemui_ex/statusbar/policy/SecurityController;->onUserSwitched(I)V

    .line 148
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/QSTileHost;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mNetwork:Lcom/android/systemui_ex/statusbar/policy/NetworkController;
    invoke-static {v2}, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->access$300(Lcom/android/systemui_ex/statusbar/phone/QSTileHost;)Lcom/android/systemui_ex/statusbar/policy/NetworkController;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/systemui_ex/statusbar/policy/NetworkController;->onUserSwitched(I)V

    .line 149
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/QSTileHost;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mObserver:Lcom/android/systemui_ex/statusbar/phone/QSTileHost$Observer;
    invoke-static {v2}, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->access$400(Lcom/android/systemui_ex/statusbar/phone/QSTileHost;)Lcom/android/systemui_ex/statusbar/phone/QSTileHost$Observer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/phone/QSTileHost$Observer;->register()V

    .line 150
    return-void
.end method
