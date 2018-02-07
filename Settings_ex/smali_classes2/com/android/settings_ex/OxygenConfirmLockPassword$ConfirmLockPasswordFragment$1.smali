.class Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$1;
.super Ljava/lang/Object;
.source "OxygenConfirmLockPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->startEnterAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->-set0(Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;Z)Z

    .line 238
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->-wrap2(Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;)V

    .line 236
    return-void
.end method
