.class Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment$2;
.super Ljava/lang/Object;
.source "OxygenConfirmDeviceCredentialBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment$2;->this$0:Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment$2;->this$0:Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 112
    return-void
.end method
