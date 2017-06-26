.class Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$2$1;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->onTextChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$2;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$2;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$2$1;->this$1:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$2$1;->this$1:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$2;

    iget-object v0, v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$0:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # getter for: Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;
    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$100(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->setEnabled(Z)V

    .line 201
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$2$1;->this$1:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$2;

    iget-object v0, v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$0:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # invokes: Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V
    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$200(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    .line 202
    return-void
.end method
