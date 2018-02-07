.class public Lcom/android/settings_ex/ManagedLockPasswordProvider;
.super Ljava/lang/Object;
.source "ManagedLockPasswordProvider.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get(Landroid/content/Context;I)Lcom/android/settings_ex/ManagedLockPasswordProvider;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 32
    new-instance v0, Lcom/android/settings_ex/ManagedLockPasswordProvider;

    invoke-direct {v0}, Lcom/android/settings_ex/ManagedLockPasswordProvider;-><init>()V

    return-object v0
.end method


# virtual methods
.method createIntent(ZLjava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "requirePasswordToDecrypt"    # Z
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method getPickerOptionTitle(Z)Ljava/lang/String;
    .locals 1
    .param p1, "forFingerprint"    # Z

    .prologue
    .line 53
    const-string/jumbo v0, ""

    return-object v0
.end method

.method getResIdForLockUnlockScreen(Z)I
    .locals 1
    .param p1, "forProfile"    # Z

    .prologue
    .line 62
    if-eqz p1, :cond_0

    const v0, 0x7f080078

    :goto_0
    return v0

    .line 63
    :cond_0
    const v0, 0x7f080077

    goto :goto_0
.end method

.method getResIdForLockUnlockSubScreen()I
    .locals 1

    .prologue
    .line 72
    const v0, 0x7f080079

    return v0
.end method

.method isManagedPasswordChoosable()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method isSettingManagedPasswordSupported()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method
