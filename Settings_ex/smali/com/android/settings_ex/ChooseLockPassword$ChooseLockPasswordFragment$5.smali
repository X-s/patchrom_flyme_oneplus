.class Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$5;
.super Ljava/lang/Object;
.source "ChooseLockPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)V
    .locals 0

    .prologue
    .line 684
    iput-object p1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$5;->this$0:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$5;->this$0:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    # getter for: Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordTextViewForPin:Lcom/android/settings_ex/ui/PasswordTextViewForPin;
    invoke-static {v0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->access$100(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->setEnabled(Z)V

    .line 689
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$5;->this$0:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    .line 690
    return-void
.end method
