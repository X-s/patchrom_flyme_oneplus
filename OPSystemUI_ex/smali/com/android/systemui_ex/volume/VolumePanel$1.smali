.class Lcom/android/systemui_ex/volume/VolumePanel$1;
.super Landroid/app/Dialog;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/volume/VolumePanel;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui_ex/statusbar/policy/ZenModeController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/volume/VolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/volume/VolumePanel;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/systemui_ex/volume/VolumePanel$1;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/android/systemui_ex/volume/VolumePanel$1;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    # getter for: Lcom/android/systemui_ex/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/android/systemui_ex/volume/VolumePanel;->access$200()Landroid/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel$1;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    const-wide/16 v2, 0x0

    # invokes: Lcom/android/systemui_ex/volume/VolumePanel;->forceTimeout(J)V
    invoke-static {v0, v2, v3}, Lcom/android/systemui_ex/volume/VolumePanel;->access$300(Lcom/android/systemui_ex/volume/VolumePanel;J)V

    .line 431
    const/4 v0, 0x1

    .line 433
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
