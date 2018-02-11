.class Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$2;
.super Ljava/lang/Object;
.source "ChooseLockComplexPassword.java"

# interfaces
.implements Lcom/oneplus/settings/password/OPPasswordInputCountCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$2;->this$1:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkPassword()Z
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public setNumbPadKeyForPinEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 217
    return-void
.end method
