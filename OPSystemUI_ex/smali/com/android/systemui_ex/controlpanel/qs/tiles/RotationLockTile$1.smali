.class Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile$1;
.super Ljava/lang/Object;
.source "RotationLockTile.java"

# interfaces
.implements Lcom/android/systemui_ex/statusbar/policy/RotationLockController$RotationLockControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile$1;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationLockStateChanged(ZZ)V
    .locals 1
    .param p1, "rotationLocked"    # Z
    .param p2, "affordanceVisible"    # Z

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile$1;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile;

    # invokes: Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile;->access$000(Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile;)V

    .line 113
    return-void
.end method
