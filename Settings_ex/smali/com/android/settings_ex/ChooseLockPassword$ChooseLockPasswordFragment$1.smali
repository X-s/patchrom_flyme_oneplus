.class Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$1;
.super Ljava/lang/Object;
.source "ChooseLockPassword.java"

# interfaces
.implements Lcom/oneplus/settings/password/OPPasswordInputCountCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;
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
    .line 189
    iput-object p1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$1;->this$0:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkPassword()Z
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public setNumbPadKeyForPinEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 195
    return-void
.end method
