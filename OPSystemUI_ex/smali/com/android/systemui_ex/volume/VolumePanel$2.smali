.class Lcom/android/systemui_ex/volume/VolumePanel$2;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
.method constructor <init>(Lcom/android/systemui_ex/volume/VolumePanel;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/systemui_ex/volume/VolumePanel$2;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x0

    .line 445
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel$2;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    const/4 v1, -0x1

    # setter for: Lcom/android/systemui_ex/volume/VolumePanel;->mActiveStreamType:I
    invoke-static {v0, v1}, Lcom/android/systemui_ex/volume/VolumePanel;->access$602(Lcom/android/systemui_ex/volume/VolumePanel;I)I

    .line 446
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel$2;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    # getter for: Lcom/android/systemui_ex/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/systemui_ex/volume/VolumePanel;->access$700(Lcom/android/systemui_ex/volume/VolumePanel;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumePanel$2;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    # getter for: Lcom/android/systemui_ex/volume/VolumePanel;->mActiveStreamType:I
    invoke-static {v1}, Lcom/android/systemui_ex/volume/VolumePanel;->access$600(Lcom/android/systemui_ex/volume/VolumePanel;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 447
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel$2;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    # invokes: Lcom/android/systemui_ex/volume/VolumePanel;->setZenPanelVisible(Z)V
    invoke-static {v0, v2}, Lcom/android/systemui_ex/volume/VolumePanel;->access$800(Lcom/android/systemui_ex/volume/VolumePanel;Z)V

    .line 448
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel$2;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    # setter for: Lcom/android/systemui_ex/volume/VolumePanel;->mDemoIcon:I
    invoke-static {v0, v2}, Lcom/android/systemui_ex/volume/VolumePanel;->access$902(Lcom/android/systemui_ex/volume/VolumePanel;I)I

    .line 449
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel$2;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    # getter for: Lcom/android/systemui_ex/volume/VolumePanel;->mSecondaryIconTransition:Lcom/android/systemui_ex/volume/VolumePanel$SecondaryIconTransition;
    invoke-static {v0}, Lcom/android/systemui_ex/volume/VolumePanel;->access$1000(Lcom/android/systemui_ex/volume/VolumePanel;)Lcom/android/systemui_ex/volume/VolumePanel$SecondaryIconTransition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui_ex/volume/VolumePanel$SecondaryIconTransition;->cancel()V

    .line 450
    return-void
.end method
