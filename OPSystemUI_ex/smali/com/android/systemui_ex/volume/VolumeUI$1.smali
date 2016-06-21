.class Lcom/android/systemui_ex/volume/VolumeUI$1;
.super Ljava/lang/Object;
.source "VolumeUI.java"

# interfaces
.implements Lcom/android/systemui_ex/volume/VolumePanel$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/volume/VolumeUI;->initPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/volume/VolumeUI;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/volume/VolumeUI;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/systemui_ex/volume/VolumeUI$1;->this$0:Lcom/android/systemui_ex/volume/VolumeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInteraction()V
    .locals 3

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumeUI$1;->this$0:Lcom/android/systemui_ex/volume/VolumeUI;

    const-class v2, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/volume/VolumeUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    .line 119
    .local v0, "kvm":Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->userActivity()V

    .line 122
    :cond_0
    return-void
.end method

.method public onVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumeUI$1;->this$0:Lcom/android/systemui_ex/volume/VolumeUI;

    # getter for: Lcom/android/systemui_ex/volume/VolumeUI;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/systemui_ex/volume/VolumeUI;->access$400(Lcom/android/systemui_ex/volume/VolumeUI;)Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumeUI$1;->this$0:Lcom/android/systemui_ex/volume/VolumeUI;

    # getter for: Lcom/android/systemui_ex/volume/VolumeUI;->mVolumeController:Lcom/android/systemui_ex/volume/VolumeUI$VolumeController;
    invoke-static {v0}, Lcom/android/systemui_ex/volume/VolumeUI;->access$500(Lcom/android/systemui_ex/volume/VolumeUI;)Lcom/android/systemui_ex/volume/VolumeUI$VolumeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumeUI$1;->this$0:Lcom/android/systemui_ex/volume/VolumeUI;

    # getter for: Lcom/android/systemui_ex/volume/VolumeUI;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/systemui_ex/volume/VolumeUI;->access$400(Lcom/android/systemui_ex/volume/VolumeUI;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumeUI$1;->this$0:Lcom/android/systemui_ex/volume/VolumeUI;

    # getter for: Lcom/android/systemui_ex/volume/VolumeUI;->mVolumeController:Lcom/android/systemui_ex/volume/VolumeUI$VolumeController;
    invoke-static {v1}, Lcom/android/systemui_ex/volume/VolumeUI;->access$500(Lcom/android/systemui_ex/volume/VolumeUI;)Lcom/android/systemui_ex/volume/VolumeUI$VolumeController;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/media/AudioManager;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V

    .line 129
    :cond_0
    return-void
.end method

.method public onZenSettings()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumeUI$1;->this$0:Lcom/android/systemui_ex/volume/VolumeUI;

    # getter for: Lcom/android/systemui_ex/volume/VolumeUI;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui_ex/volume/VolumeUI;->access$300(Lcom/android/systemui_ex/volume/VolumeUI;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumeUI$1;->this$0:Lcom/android/systemui_ex/volume/VolumeUI;

    # getter for: Lcom/android/systemui_ex/volume/VolumeUI;->mStartZenSettings:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui_ex/volume/VolumeUI;->access$200(Lcom/android/systemui_ex/volume/VolumeUI;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 113
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumeUI$1;->this$0:Lcom/android/systemui_ex/volume/VolumeUI;

    # getter for: Lcom/android/systemui_ex/volume/VolumeUI;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui_ex/volume/VolumeUI;->access$300(Lcom/android/systemui_ex/volume/VolumeUI;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumeUI$1;->this$0:Lcom/android/systemui_ex/volume/VolumeUI;

    # getter for: Lcom/android/systemui_ex/volume/VolumeUI;->mStartZenSettings:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui_ex/volume/VolumeUI;->access$200(Lcom/android/systemui_ex/volume/VolumeUI;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 114
    return-void
.end method
