.class final Lcom/android/settings_ex/password/SetNewPasswordController;
.super Ljava/lang/Object;
.source "SetNewPasswordController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/password/SetNewPasswordController$Ui;
    }
.end annotation


# instance fields
.field private final mCurrentUserId:I

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mUi:Lcom/android/settings_ex/password/SetNewPasswordController$Ui;


# direct methods
.method constructor <init>(ILandroid/content/pm/PackageManager;Landroid/hardware/fingerprint/FingerprintManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/settings_ex/password/SetNewPasswordController$Ui;)V
    .locals 1
    .param p1, "currentUserId"    # I
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p3, "fingerprintManager"    # Landroid/hardware/fingerprint/FingerprintManager;
    .param p4, "devicePolicyManager"    # Landroid/app/admin/DevicePolicyManager;
    .param p5, "ui"    # Lcom/android/settings_ex/password/SetNewPasswordController$Ui;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Lcom/android/settings_ex/password/SetNewPasswordController;->mCurrentUserId:I

    .line 70
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager;

    iput-object v0, p0, Lcom/android/settings_ex/password/SetNewPasswordController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 71
    iput-object p3, p0, Lcom/android/settings_ex/password/SetNewPasswordController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 72
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings_ex/password/SetNewPasswordController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 73
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/password/SetNewPasswordController$Ui;

    iput-object v0, p0, Lcom/android/settings_ex/password/SetNewPasswordController;->mUi:Lcom/android/settings_ex/password/SetNewPasswordController$Ui;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/password/SetNewPasswordController$Ui;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ui"    # Lcom/android/settings_ex/password/SetNewPasswordController$Ui;

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 57
    const-string/jumbo v0, "fingerprint"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    .line 58
    const-string/jumbo v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    move-object v0, p0

    move-object v5, p2

    .line 55
    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/password/SetNewPasswordController;-><init>(ILandroid/content/pm/PackageManager;Landroid/hardware/fingerprint/FingerprintManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/settings_ex/password/SetNewPasswordController$Ui;)V

    .line 54
    return-void
.end method

.method private getFingerprintChooseLockExtras()Landroid/os/Bundle;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 92
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 93
    .local v2, "chooseLockExtras":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/settings_ex/password/SetNewPasswordController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_0

    .line 94
    iget-object v3, p0, Lcom/android/settings_ex/password/SetNewPasswordController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v0

    .line 95
    .local v0, "challenge":J
    const-string/jumbo v3, "minimum_quality"

    .line 96
    const/high16 v4, 0x10000

    .line 95
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    const-string/jumbo v3, "hide_disabled_prefs"

    .line 97
    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    const-string/jumbo v3, "has_challenge"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    const-string/jumbo v3, "challenge"

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 101
    const-string/jumbo v3, "for_fingerprint"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    iget v3, p0, Lcom/android/settings_ex/password/SetNewPasswordController;->mCurrentUserId:I

    const/16 v4, -0x2710

    if-eq v3, v4, :cond_0

    .line 103
    const-string/jumbo v3, "android.intent.extra.USER_ID"

    iget v4, p0, Lcom/android/settings_ex/password/SetNewPasswordController;->mCurrentUserId:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    .end local v0    # "challenge":J
    :cond_0
    return-object v2
.end method

.method private isFingerprintDisabledByAdmin()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 110
    iget-object v2, p0, Lcom/android/settings_ex/password/SetNewPasswordController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 111
    iget v3, p0, Lcom/android/settings_ex/password/SetNewPasswordController;->mCurrentUserId:I

    const/4 v4, 0x0

    .line 110
    invoke-virtual {v2, v4, v3}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    .line 112
    .local v0, "disabledFeatures":I
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public dispatchSetNewPasswordIntent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/password/SetNewPasswordController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/password/SetNewPasswordController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/password/SetNewPasswordController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    .line 80
    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/password/SetNewPasswordController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/password/SetNewPasswordController;->mUi:Lcom/android/settings_ex/password/SetNewPasswordController$Ui;

    invoke-interface {v0, v2}, Lcom/android/settings_ex/password/SetNewPasswordController$Ui;->launchChooseLock(Landroid/os/Bundle;)V

    .line 79
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/password/SetNewPasswordController;->isFingerprintDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/settings_ex/password/SetNewPasswordController;->mUi:Lcom/android/settings_ex/password/SetNewPasswordController$Ui;

    invoke-direct {p0}, Lcom/android/settings_ex/password/SetNewPasswordController;->getFingerprintChooseLockExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings_ex/password/SetNewPasswordController$Ui;->launchChooseLock(Landroid/os/Bundle;)V

    goto :goto_0
.end method
