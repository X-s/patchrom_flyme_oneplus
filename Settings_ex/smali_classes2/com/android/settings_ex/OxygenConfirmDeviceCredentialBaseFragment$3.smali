.class Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment$3;
.super Ljava/lang/Object;
.source "OxygenConfirmDeviceCredentialBaseFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment;->showDialog(Ljava/lang/String;Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment;

.field final synthetic val$dismiss:Z


# direct methods
.method constructor <init>(Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment;
    .param p2, "val$dismiss"    # Z

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment$3;->this$0:Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment;

    iput-boolean p2, p0, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment$3;->val$dismiss:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment$3;->val$dismiss:Z

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment$3;->this$0:Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 333
    :cond_0
    return-void
.end method
