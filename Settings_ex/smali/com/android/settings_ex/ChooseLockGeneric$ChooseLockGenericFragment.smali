.class public Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockGenericFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    }
.end annotation


# static fields
.field private static final CHOOSE_LOCK_REQUEST:I = 0x66

.field private static final CONFIRM_EXISTING_REQUEST:I = 0x64

.field private static final ENABLE_ENCRYPTION_REQUEST:I = 0x65

.field public static final ENCRYPT_REQUESTED_DISABLED:Ljava/lang/String; = "encrypt_requested_disabled"

.field public static final ENCRYPT_REQUESTED_QUALITY:Ljava/lang/String; = "encrypt_requested_quality"

.field public static final HIDE_DISABLED_PREFS:Ljava/lang/String; = "hide_disabled_prefs"

.field private static final KEY_UNLOCK_BACKUP_INFO:Ljava/lang/String; = "unlock_backup_info"

.field private static final KEY_UNLOCK_SET_NONE:Ljava/lang/String; = "unlock_set_none"

.field private static final KEY_UNLOCK_SET_OFF:Ljava/lang/String; = "unlock_set_off"

.field private static final KEY_UNLOCK_SET_PASSWORD:Ljava/lang/String; = "unlock_set_password"

.field private static final KEY_UNLOCK_SET_PATTERN:Ljava/lang/String; = "unlock_set_pattern"

.field private static final KEY_UNLOCK_SET_PIN:Ljava/lang/String; = "unlock_set_pin"

.field public static final MINIMUM_QUALITY_KEY:Ljava/lang/String; = "minimum_quality"

.field private static final MIN_PASSWORD_LENGTH:I = 0x4

.field private static final PASSWORD_CONFIRMED:Ljava/lang/String; = "password_confirmed"

.field private static final TAG:Ljava/lang/String; = "ChooseLockGenericFragment"

.field public static final TAG_FRP_WARNING_DIALOG:Ljava/lang/String; = "frp_warning_dialog"

.field private static final WAITING_FOR_CONFIRMATION:Ljava/lang/String; = "waiting_for_confirmation"


# instance fields
.field private mChallenge:J

.field private mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

.field private mCryptfsChangepwDefaultProgressDialog:Lcom/oneplus/app/OPProgressDialog;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEncryptionRequestDisabled:Z

.field private mEncryptionRequestQuality:I

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mForFingerprint:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasChallenge:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordConfirmed:Z

.field private mProgressDialog:Lcom/oneplus/app/OPProgressDialog;

.field private mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

.field private mRequirePassword:Z

.field private mTipsFOrFirstAddFingerprint:Landroid/widget/TextView;

.field private mUserPassword:Ljava/lang/String;

.field private mWaitingForConfirmation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 103
    iput-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    .line 105
    iput-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 106
    iput-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 110
    iput-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 117
    new-instance v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$1;-><init>(Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    .line 597
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mHandler:Landroid/os/Handler;

    .line 716
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/oneplus/app/OPProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mProgressDialog:Lcom/oneplus/app/OPProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->showResetPasswordDefaultDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/oneplus/app/OPProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mCryptfsChangepwDefaultProgressDialog:Lcom/oneplus/app/OPProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private allowedForFallback(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 457
    const-string v0, "unlock_backup_info"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_pattern"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_pin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getKeyForCurrent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    const-string v0, "unlock_set_off"

    .line 370
    :goto_0
    return-object v0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 370
    const/4 v0, 0x0

    goto :goto_0

    .line 360
    :sswitch_0
    const-string v0, "unlock_set_pattern"

    goto :goto_0

    .line 363
    :sswitch_1
    const-string v0, "unlock_set_pin"

    goto :goto_0

    .line 366
    :sswitch_2
    const-string v0, "unlock_set_password"

    goto :goto_0

    .line 368
    :sswitch_3
    const-string v0, "unlock_set_none"

    goto :goto_0

    .line 358
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
    .end sparse-switch
.end method

.method private getResIdForFactoryResetProtectionWarningMessage()I
    .locals 3

    .prologue
    .line 655
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    .line 656
    .local v0, "hasFingerprints":Z
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 673
    if-eqz v0, :cond_3

    const v1, 0x7f0c0449

    :goto_0
    return v1

    .line 658
    :sswitch_0
    if-eqz v0, :cond_0

    const v1, 0x7f0c0443

    goto :goto_0

    :cond_0
    const v1, 0x7f0c0442

    goto :goto_0

    .line 663
    :sswitch_1
    if-eqz v0, :cond_1

    const v1, 0x7f0c0445

    goto :goto_0

    :cond_1
    const v1, 0x7f0c0444

    goto :goto_0

    .line 669
    :sswitch_2
    if-eqz v0, :cond_2

    const v1, 0x7f0c0447

    goto :goto_0

    :cond_2
    const v1, 0x7f0c0446

    goto :goto_0

    .line 673
    :cond_3
    const v1, 0x7f0c0448

    goto :goto_0

    .line 656
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private getResIdForFactoryResetProtectionWarningTitle()I
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 650
    const v0, 0x7f0c011c

    :goto_0
    return v0

    .line 641
    :sswitch_0
    const v0, 0x7f0c0119

    goto :goto_0

    .line 644
    :sswitch_1
    const v0, 0x7f0c011a

    goto :goto_0

    .line 648
    :sswitch_2
    const v0, 0x7f0c011b

    goto :goto_0

    .line 639
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private isUnlockMethodSecure(Ljava/lang/String;)Z
    .locals 1
    .param p1, "unlockMethod"    # Ljava/lang/String;

    .prologue
    .line 680
    const-string v0, "unlock_set_off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeEnableEncryption(IZ)V
    .locals 1
    .param p1, "quality"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    .line 284
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    .line 285
    return-void
.end method

.method private removeAllFingerprintTemplates()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 583
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mProgressDialog:Lcom/oneplus/app/OPProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c00fc

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/app/OPProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 588
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mProgressDialog:Lcom/oneplus/app/OPProgressDialog;

    invoke-virtual {v0}, Lcom/oneplus/app/OPProgressDialog;->show()V

    .line 590
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    invoke-virtual {v6, v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    .line 595
    :goto_0
    return-void

    .line 592
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->showResetPasswordDefaultDialog()V

    goto :goto_0
.end method

.method private setUnlockMethod(Ljava/lang/String;)Z
    .locals 4
    .param p1, "unlockMethod"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 685
    const v2, 0x16058

    invoke-static {v2, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 687
    const-string v2, "unlock_set_off"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 688
    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    :goto_0
    move v0, v1

    .line 706
    :goto_1
    return v0

    .line 690
    :cond_0
    const-string v2, "unlock_set_none"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 691
    invoke-virtual {p0, v0, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 693
    :cond_1
    const-string v2, "unlock_set_pattern"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 694
    const/high16 v2, 0x10000

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 696
    :cond_2
    const-string v2, "unlock_set_pin"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 697
    const/high16 v2, 0x20000

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 699
    :cond_3
    const-string v2, "unlock_set_password"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 700
    const/high16 v2, 0x40000

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 703
    :cond_4
    const-string v1, "ChooseLockGenericFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered unknown unlock method to set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private showFactoryResetProtectionWarningDialog(Ljava/lang/String;)V
    .locals 4
    .param p1, "unlockMethodToSet"    # Ljava/lang/String;

    .prologue
    .line 710
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getResIdForFactoryResetProtectionWarningTitle()I

    move-result v1

    .line 711
    .local v1, "title":I
    invoke-static {v1, p1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->newInstance(ILjava/lang/String;)Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    move-result-object v0

    .line 713
    .local v0, "dialog":Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "frp_warning_dialog"

    invoke-virtual {v0, v2, v3}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 714
    return-void
.end method

.method private showResetPasswordDefaultDialog()V
    .locals 6

    .prologue
    .line 599
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mCryptfsChangepwDefaultProgressDialog:Lcom/oneplus/app/OPProgressDialog;

    if-eqz v1, :cond_1

    .line 600
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mCryptfsChangepwDefaultProgressDialog:Lcom/oneplus/app/OPProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/app/OPProgressDialog;->setCancelable(Z)V

    .line 601
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mCryptfsChangepwDefaultProgressDialog:Lcom/oneplus/app/OPProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/app/OPProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 603
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 604
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 605
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mCryptfsChangepwDefaultProgressDialog:Lcom/oneplus/app/OPProgressDialog;

    invoke-virtual {v1}, Lcom/oneplus/app/OPProgressDialog;->show()V

    .line 607
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$2;-><init>(Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;Landroid/app/Activity;)V

    const-wide/16 v4, 0x9c4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 621
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    return-void
.end method

.method private showTipsForFirstAddFingerprint(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 212
    const v2, 0x7f12010e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mTipsFOrFirstAddFingerprint:Landroid/widget/TextView;

    .line 213
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 214
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "hide_disabled_prefs"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 216
    .local v0, "hideDisabledPrefs":Z
    if-eqz v0, :cond_0

    .line 217
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mTipsFOrFirstAddFingerprint:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mTipsFOrFirstAddFingerprint:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateCurrentPreference()V
    .locals 3

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getKeyForCurrent()Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "currentKey":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 349
    .local v1, "preference":Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 350
    const v2, 0x7f0c0438

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 352
    :cond_0
    return-void
.end method

.method private updatePreferenceSummaryIfNeeded()V
    .locals 8

    .prologue
    const/4 v6, -0x1

    .line 462
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncrypted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 485
    :cond_0
    return-void

    .line 466
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 471
    const v5, 0x7f0c08f4

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 473
    .local v4, "summary":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 474
    .local v3, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    .line 475
    .local v2, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 476
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 477
    .local v1, "preference":Landroid/preference/Preference;
    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_2
    move v5, v6

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 475
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 477
    :sswitch_0
    const-string v7, "unlock_set_pattern"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_1
    const-string v7, "unlock_set_pin"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_2
    const-string v7, "unlock_set_password"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    goto :goto_1

    .line 481
    :pswitch_0
    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 477
    :sswitch_data_0
    .sparse-switch
        -0x75461c3 -> :sswitch_1
        0x27e176f3 -> :sswitch_2
        0x53ec4438 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updatePreferencesOrFinish()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 320
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 321
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "lockscreen.password_type"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 322
    .local v3, "quality":I
    if-ne v3, v5, :cond_2

    .line 324
    const-string v4, "minimum_quality"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 325
    invoke-direct {p0, v3}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(I)I

    move-result v3

    .line 326
    const-string v4, "hide_disabled_prefs"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 329
    .local v0, "hideDisabledPrefs":Z
    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const v5, 0x7f0c0298

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 333
    .local v2, "prefScreen":Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_1

    .line 334
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 336
    :cond_1
    const v4, 0x7f08006b

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferencesFromResource(I)V

    .line 337
    invoke-virtual {p0, v3, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(IZ)V

    .line 340
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferenceSummaryIfNeeded()V

    .line 344
    .end local v0    # "hideDisabledPrefs":Z
    .end local v2    # "prefScreen":Landroid/preference/PreferenceScreen;
    :goto_0
    return-void

    .line 342
    :cond_2
    invoke-virtual {p0, v3, v6}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0
.end method

.method private upgradeQuality(I)I
    .locals 0
    .param p1, "quality"    # I

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForDPM(I)I

    move-result p1

    .line 376
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForKeyStore(I)I

    move-result p1

    .line 377
    return p1
.end method

.method private upgradeQualityForDPM(I)I
    .locals 3
    .param p1, "quality"    # I

    .prologue
    .line 382
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    .line 383
    .local v0, "minQuality":I
    if-ge p1, v0, :cond_0

    .line 384
    move p1, v0

    .line 386
    :cond_0
    return p1
.end method

.method private upgradeQualityForKeyStore(I)I
    .locals 1
    .param p1, "quality"    # I

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_0

    .line 392
    const/high16 p1, 0x10000

    .line 395
    :cond_0
    return p1
.end method


# virtual methods
.method protected disableUnusablePreferences(IZ)V
    .locals 0
    .param p1, "quality"    # I
    .param p2, "hideDisabledPrefs"    # Z

    .prologue
    .line 407
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferencesImpl(IZ)V

    .line 408
    return-void
.end method

.method protected disableUnusablePreferencesImpl(IZ)V
    .locals 9
    .param p1, "quality"    # I
    .param p2, "hideDisabled"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 418
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 419
    .local v1, "entries":Landroid/preference/PreferenceScreen;
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_d

    .line 420
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .line 421
    .local v4, "pref":Landroid/preference/Preference;
    instance-of v8, v4, Landroid/preference/PreferenceScreen;

    if-eqz v8, :cond_2

    .line 422
    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 423
    .local v3, "key":Ljava/lang/String;
    const/4 v0, 0x1

    .line 424
    .local v0, "enabled":Z
    const/4 v5, 0x1

    .line 425
    .local v5, "visible":Z
    const-string v8, "unlock_set_off"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 426
    if-gtz p1, :cond_3

    move v0, v6

    .line 436
    :cond_0
    :goto_1
    if-eqz p2, :cond_1

    .line 437
    move v5, v0

    .line 439
    :cond_1
    if-nez v5, :cond_c

    .line 440
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 419
    .end local v0    # "enabled":Z
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "visible":Z
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .restart local v0    # "enabled":Z
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v5    # "visible":Z
    :cond_3
    move v0, v7

    .line 426
    goto :goto_1

    .line 427
    :cond_4
    const-string v8, "unlock_set_none"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 428
    if-gtz p1, :cond_5

    move v0, v6

    :goto_3
    goto :goto_1

    :cond_5
    move v0, v7

    goto :goto_3

    .line 429
    :cond_6
    const-string v8, "unlock_set_pattern"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 430
    const/high16 v8, 0x10000

    if-gt p1, v8, :cond_7

    move v0, v6

    :goto_4
    goto :goto_1

    :cond_7
    move v0, v7

    goto :goto_4

    .line 431
    :cond_8
    const-string v8, "unlock_set_pin"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 432
    const/high16 v8, 0x30000

    if-gt p1, v8, :cond_9

    move v0, v6

    :goto_5
    goto :goto_1

    :cond_9
    move v0, v7

    goto :goto_5

    .line 433
    :cond_a
    const-string v8, "unlock_set_password"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 434
    const/high16 v8, 0x60000

    if-gt p1, v8, :cond_b

    move v0, v6

    :goto_6
    goto :goto_1

    :cond_b
    move v0, v7

    goto :goto_6

    .line 441
    :cond_c
    if-nez v0, :cond_2

    .line 442
    const v8, 0x7f0c0439

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setSummary(I)V

    .line 443
    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 447
    .end local v0    # "enabled":Z
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "pref":Landroid/preference/Preference;
    .end local v5    # "visible":Z
    :cond_d
    return-void
.end method

.method protected getEncryptionInterstitialIntent(Landroid/content/Context;IZ)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "required"    # Z

    .prologue
    .line 525
    invoke-static {p1, p2, p3}, Lcom/android/settings_ex/EncryptionInterstitial;->createStartIntent(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 631
    const v0, 0x7f0c0bce

    return v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZJ)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "minLength"    # I
    .param p4, "maxLength"    # I
    .param p5, "requirePasswordToDecrypt"    # Z
    .param p6, "challenge"    # J

    .prologue
    .line 497
    invoke-static/range {p1 .. p7}, Lcom/android/settings_ex/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZJ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZLjava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "minLength"    # I
    .param p4, "maxLength"    # I
    .param p5, "requirePasswordToDecrypt"    # Z
    .param p6, "password"    # Ljava/lang/String;

    .prologue
    .line 503
    invoke-static/range {p1 .. p6}, Lcom/android/settings_ex/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZZ)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "minLength"    # I
    .param p4, "maxLength"    # I
    .param p5, "requirePasswordToDecrypt"    # Z
    .param p6, "confirmCredentials"    # Z

    .prologue
    .line 490
    invoke-static/range {p1 .. p6}, Lcom/android/settings_ex/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZJ)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requirePassword"    # Z
    .param p3, "challenge"    # J

    .prologue
    .line 515
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings_ex/ChooseLockPattern;->createIntent(Landroid/content/Context;ZJ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZLjava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requirePassword"    # Z
    .param p3, "pattern"    # Ljava/lang/String;

    .prologue
    .line 520
    invoke-static {p1, p2, p3}, Lcom/android/settings_ex/ChooseLockPattern;->createIntent(Landroid/content/Context;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZZ)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requirePassword"    # Z
    .param p3, "confirmCredentials"    # Z

    .prologue
    .line 509
    invoke-static {p1, p2, p3}, Lcom/android/settings_ex/ChooseLockPattern;->createIntent(Landroid/content/Context;ZZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 139
    const/16 v0, 0x1b

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 289
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 290
    iput-boolean v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 291
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 292
    iput-boolean v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 293
    const-string v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    .line 294
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 307
    :goto_0
    return-void

    .line 295
    :cond_0
    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 297
    const-string v0, "extra_require_password"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    .line 299
    iget v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    iget-boolean v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 300
    :cond_1
    const/16 v0, 0x66

    if-ne p1, v0, :cond_2

    .line 301
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 302
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 304
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 305
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 144
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v6, "fingerprint"

    invoke-virtual {v3, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 148
    const-string v3, "device_policy"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    iput-object v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 149
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    .line 150
    new-instance v3, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 151
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 152
    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->sanitizePassword()V

    .line 153
    new-instance v3, Lcom/oneplus/app/OPProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/oneplus/app/OPProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mProgressDialog:Lcom/oneplus/app/OPProgressDialog;

    .line 154
    new-instance v3, Lcom/oneplus/app/OPProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/oneplus/app/OPProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mCryptfsChangepwDefaultProgressDialog:Lcom/oneplus/app/OPProgressDialog;

    .line 156
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "confirm_credentials"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 158
    .local v0, "confirmCredentials":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings_ex/ChooseLockGeneric$InternalActivity;

    if-eqz v3, :cond_0

    .line 159
    if-nez v0, :cond_3

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "has_challenge"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    .line 164
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "challenge"

    const-wide/16 v8, 0x0

    invoke-virtual {v3, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    .line 166
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "for_fingerprint"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 169
    if-eqz p1, :cond_1

    .line 170
    const-string v3, "password_confirmed"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 171
    const-string v3, "waiting_for_confirmation"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 172
    const-string v3, "encrypt_requested_quality"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    .line 173
    const-string v3, "encrypt_requested_disabled"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    .line 177
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v3, :cond_4

    .line 178
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 198
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v3, v5

    .line 159
    goto :goto_0

    .line 179
    :cond_4
    iget-boolean v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    if-nez v3, :cond_2

    .line 180
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 182
    .local v1, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    const v3, 0x7f0c042a

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->lockMode()I

    move-result v3

    if-ne v3, v4, :cond_6

    .line 185
    const v3, 0x7f0c0269

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 190
    :cond_5
    :goto_2
    const/16 v3, 0x64

    invoke-virtual {v1, v3, v2, v4}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result v3

    if-nez v3, :cond_7

    .line 192
    iput-boolean v4, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 193
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto :goto_1

    .line 186
    :cond_6
    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->lockMode()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_5

    .line 188
    const v3, 0x7f0c0268

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 195
    :cond_7
    iput-boolean v4, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 204
    const v1, 0x7f04008d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 206
    .local v0, "mContentView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->showTipsForFirstAddFingerprint(Landroid/view/View;)V

    .line 207
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 625
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 626
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->sanitizePassword()V

    .line 627
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 238
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "key":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->isUnlockMethodSecure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    invoke-direct {p0, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->showFactoryResetProtectionWarningDialog(Ljava/lang/String;)V

    .line 244
    const/4 v1, 0x1

    .line 246
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 311
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 313
    const-string v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 314
    const-string v0, "waiting_for_confirmation"

    iget-boolean v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 315
    const-string v0, "encrypt_requested_quality"

    iget v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 316
    const-string v0, "encrypt_requested_disabled"

    iget-boolean v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 317
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 225
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 226
    iget-boolean v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v3, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 228
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 229
    .local v2, "listView":Landroid/widget/ListView;
    const v3, 0x7f040020

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 231
    .local v0, "fingerprintHeader":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 233
    .end local v0    # "fingerprintHeader":Landroid/view/View;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "listView":Landroid/widget/ListView;
    :cond_0
    return-void
.end method

.method updateUnlockMethodAndFinish(IZ)V
    .locals 10
    .param p1, "quality"    # I
    .param p2, "disabled"    # Z

    .prologue
    const/16 v9, 0x66

    .line 539
    iget-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-nez v0, :cond_0

    .line 540
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Tried to update password without confirming it"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(I)I

    move-result p1

    .line 545
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 546
    .local v1, "context":Landroid/content/Context;
    const/high16 v0, 0x20000

    if-lt p1, v0, :cond_3

    .line 547
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v3

    .line 548
    .local v3, "minLength":I
    const/4 v0, 0x4

    if-ge v3, v0, :cond_1

    .line 549
    const/4 v3, 0x4

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v4

    .line 553
    .local v4, "maxLength":I
    iget-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz v0, :cond_2

    .line 554
    iget-boolean v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    iget-wide v6, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(Landroid/content/Context;IIIZJ)Landroid/content/Intent;

    move-result-object v8

    .line 560
    .local v8, "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0, v8, v9}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 580
    .end local v3    # "minLength":I
    .end local v4    # "maxLength":I
    .end local v8    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 557
    .restart local v3    # "minLength":I
    .restart local v4    # "maxLength":I
    :cond_2
    iget-boolean v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(Landroid/content/Context;IIIZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .restart local v8    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 561
    .end local v3    # "minLength":I
    .end local v4    # "maxLength":I
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_3
    const/high16 v0, 0x10000

    if-ne p1, v0, :cond_5

    .line 563
    iget-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz v0, :cond_4

    .line 564
    iget-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    iget-wide v6, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    invoke-virtual {p0, v1, v0, v6, v7}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPatternIntent(Landroid/content/Context;ZJ)Landroid/content/Intent;

    move-result-object v8

    .line 570
    .restart local v8    # "intent":Landroid/content/Intent;
    :goto_2
    invoke-virtual {p0, v8, v9}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 567
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPatternIntent(Landroid/content/Context;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .restart local v8    # "intent":Landroid/content/Intent;
    goto :goto_2

    .line 571
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_5
    if-nez p1, :cond_6

    .line 572
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    .line 573
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, p2, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 575
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->removeAllFingerprintTemplates()V

    .line 576
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    goto :goto_1

    .line 578
    :cond_6
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->removeAllFingerprintTemplates()V

    goto :goto_1
.end method
