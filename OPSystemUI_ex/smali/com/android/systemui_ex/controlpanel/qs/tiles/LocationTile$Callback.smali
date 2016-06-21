.class final Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile$Callback;
.super Ljava/lang/Object;
.source "LocationTile.java"

# interfaces
.implements Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor$Callback;
.implements Lcom/android/systemui_ex/statusbar/policy/LocationController$LocationSettingsChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile$Callback;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;
    .param p2, "x1"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile$1;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile$Callback;-><init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;)V

    return-void
.end method


# virtual methods
.method public onKeyguardChanged()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile$Callback;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;

    # invokes: Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;->access$200(Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;)V

    .line 102
    return-void
.end method

.method public onLocationSettingsChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile$Callback;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;

    # invokes: Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;->access$100(Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;)V

    .line 97
    return-void
.end method
