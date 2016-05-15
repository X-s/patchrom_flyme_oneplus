.class Lcom/android/internal/policy/impl/UcGlobalActions$SilentModeToggleAction;
.super Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;
.source "UcGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/UcGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SilentModeToggleAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/UcGlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/UcGlobalActions;)V
    .locals 6

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$SilentModeToggleAction;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    .line 1047
    const v1, 0x1080329

    const v2, 0x1080328

    const v3, 0x1040148

    const v4, 0x1040149

    const v5, 0x104014a

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;-><init>(IIIII)V

    .line 1052
    return-void
.end method


# virtual methods
.method onToggle(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 1055
    if-eqz p1, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$SilentModeToggleAction;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$1500(Lcom/android/internal/policy/impl/UcGlobalActions;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1060
    :goto_0
    return-void

    .line 1058
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$SilentModeToggleAction;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$1500(Lcom/android/internal/policy/impl/UcGlobalActions;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1067
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1063
    const/4 v0, 0x1

    return v0
.end method
