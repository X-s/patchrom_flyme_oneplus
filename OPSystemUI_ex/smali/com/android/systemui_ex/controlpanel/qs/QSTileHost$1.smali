.class Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$1;
.super Lcom/android/systemui_ex/controlpanel/settings/CurrentUserTracker;
.source "QSTileHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;-><init>(Landroid/content/Context;Lcom/android/systemui_ex/statusbar/policy/BluetoothController;Lcom/android/systemui_ex/statusbar/policy/LocationController;Lcom/android/systemui_ex/controlpanel/policy/VPNController;Lcom/android/systemui_ex/statusbar/policy/RotationLockController;Lcom/android/systemui_ex/controlpanel/policy/NetworkController;Lcom/android/systemui_ex/statusbar/policy/FlashlightController;Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;Lcom/android/systemui_ex/statusbar/policy/SecurityController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$1;->this$0:Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;

    invoke-direct {p0, p2}, Lcom/android/systemui_ex/controlpanel/settings/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 3
    .param p1, "newUserId"    # I

    .prologue
    .line 113
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$1;->this$0:Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;

    # invokes: Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->recreateTiles()V
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->access$000(Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;)V

    .line 114
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$1;->this$0:Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->access$100(Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;)Ljava/util/LinkedHashMap;

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

    check-cast v1, Lcom/android/systemui_ex/controlpanel/qs/QSTile;

    .line 115
    .local v1, "tile":Lcom/android/systemui_ex/controlpanel/qs/QSTile;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<*>;"
    invoke-virtual {v1, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->userSwitch(I)V

    goto :goto_0

    .line 117
    .end local v1    # "tile":Lcom/android/systemui_ex/controlpanel/qs/QSTile;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<*>;"
    :cond_0
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$1;->this$0:Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mSecurity:Lcom/android/systemui_ex/statusbar/policy/SecurityController;
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->access$200(Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;)Lcom/android/systemui_ex/statusbar/policy/SecurityController;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/systemui_ex/statusbar/policy/SecurityController;->onUserSwitched(I)V

    .line 118
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$1;->this$0:Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mObserver:Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$Observer;
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->access$300(Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;)Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$Observer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$Observer;->register()V

    .line 119
    return-void
.end method
