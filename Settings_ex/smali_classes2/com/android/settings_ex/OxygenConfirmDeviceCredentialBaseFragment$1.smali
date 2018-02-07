.class Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment$1;
.super Ljava/lang/Object;
.source "OxygenConfirmDeviceCredentialBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment;
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
    .line 305
    iput-object p1, p0, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment$1;->this$0:Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment$1;->this$0:Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment;

    iget-object v0, v0, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment;->mErrorTextView:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    return-void
.end method
