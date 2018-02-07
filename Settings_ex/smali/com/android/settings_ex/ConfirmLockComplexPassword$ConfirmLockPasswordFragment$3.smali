.class Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$3;
.super Ljava/lang/Object;
.source "ConfirmLockComplexPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->startEnterAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$3;->this$1:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$3;->this$1:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->-set0(Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;Z)Z

    .line 339
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$3;->this$1:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->-wrap3(Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;)V

    .line 337
    return-void
.end method
