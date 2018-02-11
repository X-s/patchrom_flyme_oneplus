.class Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$2$1;
.super Ljava/lang/Object;
.source "ConfirmLockComplexPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$2;->onTextChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$2;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$2;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$2$1;->this$2:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$2$1;->this$2:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$2;

    iget-object v0, v0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$2;->this$1:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->-get5(Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;)Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    move-result-object v0

    .line 219
    const/4 v1, 0x1

    .line 218
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->setEnabled(Z)V

    .line 220
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$2$1;->this$2:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$2;

    iget-object v0, v0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$2;->this$1:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->-wrap2(Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;)V

    .line 217
    return-void
.end method
