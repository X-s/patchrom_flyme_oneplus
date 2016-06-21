.class final Lcom/android/systemui_ex/volume/VolumeUI$VolumeController;
.super Landroid/media/IVolumeController$Stub;
.source "VolumeUI.java"

# interfaces
.implements Lcom/android/systemui_ex/volume/VolumeComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/volume/VolumeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumeController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/volume/VolumeUI;


# direct methods
.method private constructor <init>(Lcom/android/systemui_ex/volume/VolumeUI;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/systemui_ex/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui_ex/volume/VolumeUI;

    invoke-direct {p0}, Landroid/media/IVolumeController$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui_ex/volume/VolumeUI;Lcom/android/systemui_ex/volume/VolumeUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/volume/VolumeUI;
    .param p2, "x1"    # Lcom/android/systemui_ex/volume/VolumeUI$1;

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/volume/VolumeUI$VolumeController;-><init>(Lcom/android/systemui_ex/volume/VolumeUI;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/systemui_ex/volume/VolumeUI$VolumeController;->dismissNow()V

    .line 184
    return-void
.end method

.method public dismissNow()V
    .locals 4

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui_ex/volume/VolumeUI;

    # getter for: Lcom/android/systemui_ex/volume/VolumeUI;->mPanel:Lcom/android/systemui_ex/volume/VolumePanel;
    invoke-static {v0}, Lcom/android/systemui_ex/volume/VolumeUI;->access$1000(Lcom/android/systemui_ex/volume/VolumeUI;)Lcom/android/systemui_ex/volume/VolumePanel;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui_ex/volume/VolumePanel;->postDismiss(J)V

    .line 204
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui_ex/volume/VolumeUI;

    # getter for: Lcom/android/systemui_ex/volume/VolumeUI;->mPanel:Lcom/android/systemui_ex/volume/VolumePanel;
    invoke-static {v0}, Lcom/android/systemui_ex/volume/VolumeUI;->access$1000(Lcom/android/systemui_ex/volume/VolumeUI;)Lcom/android/systemui_ex/volume/VolumePanel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui_ex/volume/VolumePanel;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 199
    return-void
.end method

.method public displaySafeVolumeWarning(I)V
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui_ex/volume/VolumeUI;

    # getter for: Lcom/android/systemui_ex/volume/VolumeUI;->mPanel:Lcom/android/systemui_ex/volume/VolumePanel;
    invoke-static {v0}, Lcom/android/systemui_ex/volume/VolumeUI;->access$1000(Lcom/android/systemui_ex/volume/VolumeUI;)Lcom/android/systemui_ex/volume/VolumePanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/volume/VolumePanel;->postDisplaySafeVolumeWarning(I)V

    .line 157
    return-void
.end method

.method public getZenController()Lcom/android/systemui_ex/statusbar/policy/ZenModeController;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui_ex/volume/VolumeUI;

    # getter for: Lcom/android/systemui_ex/volume/VolumeUI;->mDialogPanel:Lcom/android/systemui_ex/volume/VolumePanel;
    invoke-static {v0}, Lcom/android/systemui_ex/volume/VolumeUI;->access$900(Lcom/android/systemui_ex/volume/VolumeUI;)Lcom/android/systemui_ex/volume/VolumePanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui_ex/volume/VolumePanel;->getZenController()Lcom/android/systemui_ex/statusbar/policy/ZenModeController;

    move-result-object v0

    return-object v0
.end method

.method public masterMuteChanged(I)V
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui_ex/volume/VolumeUI;

    # getter for: Lcom/android/systemui_ex/volume/VolumeUI;->mPanel:Lcom/android/systemui_ex/volume/VolumePanel;
    invoke-static {v0}, Lcom/android/systemui_ex/volume/VolumeUI;->access$1000(Lcom/android/systemui_ex/volume/VolumeUI;)Lcom/android/systemui_ex/volume/VolumePanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/volume/VolumePanel;->postMasterMuteChanged(I)V

    .line 173
    return-void
.end method

.method public masterVolumeChanged(I)V
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui_ex/volume/VolumeUI;

    # getter for: Lcom/android/systemui_ex/volume/VolumeUI;->mPanel:Lcom/android/systemui_ex/volume/VolumePanel;
    invoke-static {v0}, Lcom/android/systemui_ex/volume/VolumeUI;->access$1000(Lcom/android/systemui_ex/volume/VolumeUI;)Lcom/android/systemui_ex/volume/VolumePanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/volume/VolumePanel;->postMasterVolumeChanged(I)V

    .line 168
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 1
    .param p1, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui_ex/volume/VolumeUI;

    # getter for: Lcom/android/systemui_ex/volume/VolumeUI;->mPanel:Lcom/android/systemui_ex/volume/VolumePanel;
    invoke-static {v0}, Lcom/android/systemui_ex/volume/VolumeUI;->access$1000(Lcom/android/systemui_ex/volume/VolumeUI;)Lcom/android/systemui_ex/volume/VolumePanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/volume/VolumePanel;->postLayoutDirection(I)V

    .line 179
    return-void
.end method

.method public volumeChanged(II)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui_ex/volume/VolumeUI;

    # getter for: Lcom/android/systemui_ex/volume/VolumeUI;->mPanel:Lcom/android/systemui_ex/volume/VolumePanel;
    invoke-static {v0}, Lcom/android/systemui_ex/volume/VolumeUI;->access$1000(Lcom/android/systemui_ex/volume/VolumeUI;)Lcom/android/systemui_ex/volume/VolumePanel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui_ex/volume/VolumePanel;->postVolumeChanged(II)V

    .line 163
    return-void
.end method
