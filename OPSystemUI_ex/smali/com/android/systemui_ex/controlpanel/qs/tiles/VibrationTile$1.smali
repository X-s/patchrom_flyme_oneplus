.class Lcom/android/systemui_ex/controlpanel/qs/tiles/VibrationTile$1;
.super Ljava/lang/Object;
.source "VibrationTile.java"

# interfaces
.implements Lcom/android/systemui_ex/statusbar/policy/VibrationController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/qs/tiles/VibrationTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/VibrationTile;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/VibrationTile;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/VibrationTile$1;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/VibrationTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVibrationStateChanged()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/VibrationTile$1;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/VibrationTile;

    # invokes: Lcom/android/systemui_ex/controlpanel/qs/tiles/VibrationTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/VibrationTile;->access$000(Lcom/android/systemui_ex/controlpanel/qs/tiles/VibrationTile;)V

    .line 56
    return-void
.end method
