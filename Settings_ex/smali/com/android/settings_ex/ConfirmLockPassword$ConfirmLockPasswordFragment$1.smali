.class Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$1;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Lcom/oneplus/settings/password/OPPasswordInputCountCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkPassword()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public setNumbPadKeyForPinEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 124
    return-void
.end method
