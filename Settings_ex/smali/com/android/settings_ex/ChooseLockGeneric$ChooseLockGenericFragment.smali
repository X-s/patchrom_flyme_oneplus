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

.field private static final KEY_UNLOCK_SET_MANAGED:Ljava/lang/String; = "unlock_set_managed"

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

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEncryptionRequestDisabled:Z

.field private mEncryptionRequestQuality:I

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mForChangeCredRequiredForBoot:Z

.field protected mForFingerprint:Z

.field private mHasChallenge:Z

.field private mHideDrawer:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mManagedPasswordProvider:Lcom/android/settings_ex/ManagedLockPasswordProvider;

.field private mPasswordConfirmed:Z

.field private mRequirePassword:Z

.field private mUserId:I

.field private mUserPassword:Ljava/lang/String;

.field private mWaitingForConfirmation:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)Z
    .locals 1
    .param p1, "unlockMethod"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;I)V
    .locals 0
    .param p1, "parentUserId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->removeManagedProfileFingerprintsAndFinishIfNecessary(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 112
    iput-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    .line 114
    iput-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 115
    iput-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 119
    iput-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    .line 124
    iput-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mHideDrawer:Z

    .line 127
    iput-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 88
    return-void
.end method

.method private getIntentForUnlockMethod(IZ)Landroid/content/Intent;
    .locals 12
    .param p1, "quality"    # I
    .param p2, "disabled"    # Z

    .prologue
    const/4 v5, 0x0

    .line 643
    const/4 v11, 0x0

    .line 644
    .local v11, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 645
    .local v1, "context":Landroid/content/Context;
    const/high16 v0, 0x80000

    if-lt p1, v0, :cond_2

    .line 646
    iget-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getLockManagedPasswordIntent(ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 669
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    if-eqz v11, :cond_1

    .line 670
    const-string/jumbo v0, ":settings:hide_drawer"

    iget-boolean v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mHideDrawer:Z

    invoke-virtual {v11, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 672
    :cond_1
    return-object v11

    .line 647
    .restart local v11    # "intent":Landroid/content/Intent;
    :cond_2
    const/high16 v0, 0x20000

    if-lt p1, v0, :cond_5

    .line 648
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v0, v5, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v3

    .line 649
    .local v3, "minLength":I
    const/4 v0, 0x4

    if-ge v3, v0, :cond_3

    .line 650
    const/4 v3, 0x4

    .line 652
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v4

    .line 653
    .local v4, "maxLength":I
    iget-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz v0, :cond_4

    .line 655
    iget-boolean v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    iget-wide v6, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    iget v8, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move-object v0, p0

    move v2, p1

    .line 654
    invoke-virtual/range {v0 .. v8}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(Landroid/content/Context;IIIZJI)Landroid/content/Intent;

    move-result-object v11

    .local v11, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 658
    .local v11, "intent":Landroid/content/Intent;
    :cond_4
    iget-boolean v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    iget v7, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move-object v0, p0

    move v2, p1

    .line 657
    invoke-virtual/range {v0 .. v7}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(Landroid/content/Context;IIIZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v11

    .local v11, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 660
    .end local v3    # "minLength":I
    .end local v4    # "maxLength":I
    .local v11, "intent":Landroid/content/Intent;
    :cond_5
    const/high16 v0, 0x10000

    if-ne p1, v0, :cond_0

    .line 661
    iget-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz v0, :cond_6

    .line 662
    iget-boolean v7, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    .line 663
    iget-wide v8, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    iget v10, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move-object v5, p0

    move-object v6, v1

    .line 662
    invoke-virtual/range {v5 .. v10}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPatternIntent(Landroid/content/Context;ZJI)Landroid/content/Intent;

    move-result-object v11

    .local v11, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 665
    .local v11, "intent":Landroid/content/Intent;
    :cond_6
    iget-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    .line 666
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    iget v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 665
    invoke-virtual {p0, v1, v0, v2, v5}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPatternIntent(Landroid/content/Context;ZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v11

    .local v11, "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method private getKeyForCurrent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 391
    iget v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 390
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v0

    .line 392
    .local v0, "credentialOwner":I
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    const-string/jumbo v1, "unlock_set_off"

    return-object v1

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 410
    const/4 v1, 0x0

    return-object v1

    .line 397
    :sswitch_0
    const-string/jumbo v1, "unlock_set_pattern"

    return-object v1

    .line 400
    :sswitch_1
    const-string/jumbo v1, "unlock_set_pin"

    return-object v1

    .line 404
    :sswitch_2
    const-string/jumbo v1, "unlock_set_password"

    return-object v1

    .line 406
    :sswitch_3
    const-string/jumbo v1, "unlock_set_managed"

    return-object v1

    .line 408
    :sswitch_4
    const-string/jumbo v1, "unlock_set_none"

    return-object v1

    .line 395
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
        0x80000 -> :sswitch_3
    .end sparse-switch
.end method

.method private getResIdForFactoryResetProtectionWarningMessage()I
    .locals 4

    .prologue
    .line 759
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    .line 760
    .local v0, "hasFingerprints":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2, v3}, Lcom/android/settings_ex/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v1

    .line 761
    .local v1, "isProfile":Z
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 799
    if-eqz v0, :cond_c

    if-eqz v1, :cond_c

    .line 800
    const v2, 0x7f0e065e

    return v2

    .line 763
    :sswitch_0
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 764
    const v2, 0x7f0e0658

    return v2

    .line 766
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_2

    .line 768
    :cond_1
    if-eqz v1, :cond_3

    .line 769
    const v2, 0x7f0e0657

    return v2

    .line 767
    :cond_2
    const v2, 0x7f0e0650

    return v2

    .line 771
    :cond_3
    const v2, 0x7f0e064f

    return v2

    .line 775
    :sswitch_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 776
    const v2, 0x7f0e065a

    return v2

    .line 777
    :cond_4
    if-eqz v0, :cond_5

    if-eqz v1, :cond_6

    .line 779
    :cond_5
    if-eqz v1, :cond_7

    .line 780
    const v2, 0x7f0e0659

    return v2

    .line 778
    :cond_6
    const v2, 0x7f0e0652

    return v2

    .line 782
    :cond_7
    const v2, 0x7f0e0651

    return v2

    .line 788
    :sswitch_2
    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    .line 789
    const v2, 0x7f0e065c

    return v2

    .line 791
    :cond_8
    if-eqz v0, :cond_9

    if-eqz v1, :cond_a

    .line 793
    :cond_9
    if-eqz v1, :cond_b

    .line 794
    const v2, 0x7f0e065b

    return v2

    .line 792
    :cond_a
    const v2, 0x7f0e0654

    return v2

    .line 796
    :cond_b
    const v2, 0x7f0e0653

    return v2

    .line 802
    :cond_c
    if-eqz v0, :cond_d

    if-eqz v1, :cond_e

    .line 804
    :cond_d
    if-eqz v1, :cond_f

    .line 805
    const v2, 0x7f0e065d

    return v2

    .line 803
    :cond_e
    const v2, 0x7f0e0656

    return v2

    .line 807
    :cond_f
    const v2, 0x7f0e0655

    return v2

    .line 761
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
        0x80000 -> :sswitch_2
    .end sparse-switch
.end method

.method private getResIdForFactoryResetProtectionWarningTitle()I
    .locals 3

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/settings_ex/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v0

    .line 754
    .local v0, "isProfile":Z
    if-eqz v0, :cond_0

    const v1, 0x7f0e064e

    :goto_0
    return v1

    .line 755
    :cond_0
    const v1, 0x7f0e064d

    goto :goto_0
.end method

.method private isUnlockMethodSecure(Ljava/lang/String;)Z
    .locals 1
    .param p1, "unlockMethod"    # Ljava/lang/String;

    .prologue
    .line 813
    const-string/jumbo v0, "unlock_set_off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 814
    const-string/jumbo v0, "unlock_set_none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 813
    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private maybeEnableEncryption(IZ)V
    .locals 9
    .param p1, "quality"    # I
    .param p2, "disabled"    # Z

    .prologue
    const/4 v6, 0x0

    .line 251
    const-string/jumbo v7, "device_policy"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 252
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 253
    iget v7, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 254
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v7

    .line 252
    if-eqz v7, :cond_0

    .line 255
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isFileEncryptionEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 278
    :cond_0
    iget-boolean v7, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v7, :cond_3

    .line 280
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 281
    return-void

    .line 256
    :cond_1
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    move-result v7

    if-nez v7, :cond_0

    .line 257
    iput p1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    .line 258
    iput-boolean p2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    .line 261
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getIntentForUnlockMethod(IZ)Landroid/content/Intent;

    move-result-object v5

    .line 263
    .local v5, "unlockMethodIntent":Landroid/content/Intent;
    const-string/jumbo v7, "for_cred_req_boot"

    .line 264
    iget-boolean v8, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    .line 262
    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 265
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 269
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 270
    .local v0, "accEn":Z
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_2

    :goto_0
    invoke-virtual {v7, v6}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v4

    .line 271
    .local v4, "required":Z
    invoke-virtual {p0, v1, p1, v4, v5}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getEncryptionInterstitialIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    .line 273
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "for_fingerprint"

    .line 274
    iget-boolean v7, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 273
    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 275
    const-string/jumbo v6, ":settings:hide_drawer"

    iget-boolean v7, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mHideDrawer:Z

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 276
    const/16 v6, 0x65

    invoke-virtual {p0, v3, v6}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 250
    .end local v0    # "accEn":Z
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "required":Z
    .end local v5    # "unlockMethodIntent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 270
    .restart local v0    # "accEn":Z
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v5    # "unlockMethodIntent":Landroid/content/Intent;
    :cond_2
    const/4 v6, 0x1

    goto :goto_0

    .line 283
    .end local v0    # "accEn":Z
    .end local v1    # "context":Landroid/content/Context;
    .end local v5    # "unlockMethodIntent":Landroid/content/Intent;
    :cond_3
    iput-boolean v6, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    .line 284
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_1
.end method

.method private removeAllFingerprintForUserAndFinish(I)V
    .locals 8
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 676
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 677
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 678
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2, p1}, Landroid/hardware/fingerprint/FingerprintManager;->setActiveUser(I)V

    .line 680
    move v6, p1

    .line 681
    .local v6, "groupId":I
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 682
    .local v0, "finger":Landroid/hardware/fingerprint/Fingerprint;
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 683
    new-instance v2, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$1;

    invoke-direct {v2, p0, p1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$1;-><init>(Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;I)V

    .line 682
    invoke-virtual {v1, v0, p1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    .line 712
    .end local v0    # "finger":Landroid/hardware/fingerprint/Fingerprint;
    .end local v6    # "groupId":I
    :goto_0
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.settings_ex.action.DISMISS_APPLOCKER"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 713
    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "applocker_package_name"

    const-string/jumbo v2, ""

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    const-string/jumbo v1, "applocker_dismiss_all"

    const/4 v2, 0x1

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 715
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v1, v7}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    .line 675
    return-void

    .line 703
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->removeManagedProfileFingerprintsAndFinishIfNecessary(I)V

    goto :goto_0

    .line 710
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0
.end method

.method private removeManagedProfileFingerprintsAndFinishIfNecessary(I)V
    .locals 8
    .param p1, "parentUserId"    # I

    .prologue
    .line 719
    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/hardware/fingerprint/FingerprintManager;->setActiveUser(I)V

    .line 720
    sget-object v6, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    .line 721
    .local v4, "um":Landroid/os/UserManager;
    const/4 v0, 0x0

    .line 722
    .local v0, "hasChildProfile":Z
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-nez v6, :cond_2

    .line 724
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 725
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 726
    .local v3, "profilesSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 727
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 728
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 729
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    .line 728
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 726
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 730
    :cond_1
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->removeAllFingerprintForUserAndFinish(I)V

    .line 731
    const/4 v0, 0x1

    .line 736
    .end local v1    # "i":I
    .end local v2    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3    # "profilesSize":I
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    if-nez v0, :cond_3

    .line 737
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 718
    :cond_3
    return-void
.end method

.method private setUnlockMethod(Ljava/lang/String;)Z
    .locals 4
    .param p1, "unlockMethod"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 818
    const v0, 0x16058

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 820
    const-string/jumbo v0, "unlock_set_off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {p0, v3, v1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    .line 841
    :goto_0
    return v1

    .line 823
    :cond_0
    const-string/jumbo v0, "unlock_set_none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 824
    invoke-virtual {p0, v3, v3}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 826
    :cond_1
    const-string/jumbo v0, "unlock_set_managed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 827
    const/high16 v0, 0x80000

    invoke-direct {p0, v0, v3}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 828
    :cond_2
    const-string/jumbo v0, "unlock_set_pattern"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 830
    const/high16 v0, 0x10000

    .line 829
    invoke-direct {p0, v0, v3}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 831
    :cond_3
    const-string/jumbo v0, "unlock_set_pin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 833
    const/high16 v0, 0x20000

    .line 832
    invoke-direct {p0, v0, v3}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 834
    :cond_4
    const-string/jumbo v0, "unlock_set_password"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 836
    const/high16 v0, 0x40000

    .line 835
    invoke-direct {p0, v0, v3}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 838
    :cond_5
    const-string/jumbo v0, "ChooseLockGenericFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Encountered unknown unlock method to set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    return v3
.end method

.method private showFactoryResetProtectionWarningDialog(Ljava/lang/String;)V
    .locals 5
    .param p1, "unlockMethodToSet"    # Ljava/lang/String;

    .prologue
    .line 845
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getResIdForFactoryResetProtectionWarningTitle()I

    move-result v2

    .line 846
    .local v2, "title":I
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getResIdForFactoryResetProtectionWarningMessage()I

    move-result v1

    .line 848
    .local v1, "message":I
    invoke-static {v2, v1, p1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->newInstance(IILjava/lang/String;)Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    move-result-object v0

    .line 850
    .local v0, "dialog":Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "frp_warning_dialog"

    invoke-virtual {v0, v3, v4}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 844
    return-void
.end method

.method private updateCurrentPreference()V
    .locals 3

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getKeyForCurrent()Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "currentKey":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 384
    .local v1, "preference":Landroid/support/v7/preference/Preference;
    if-eqz v1, :cond_0

    .line 385
    const v2, 0x7f0e063f

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 381
    :cond_0
    return-void
.end method

.method private updatePreferenceSummaryIfNeeded()V
    .locals 7

    .prologue
    .line 517
    invoke-static {}, Landroid/os/storage/StorageManager;->isBlockEncrypted()Z

    move-result v5

    if-nez v5, :cond_0

    .line 518
    return-void

    .line 521
    :cond_0
    invoke-static {}, Landroid/os/storage/StorageManager;->isNonDefaultBlockEncrypted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 522
    return-void

    .line 525
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    .line 526
    const/4 v6, -0x1

    .line 525
    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 527
    return-void

    .line 530
    :cond_2
    const v5, 0x7f0e0b07

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 532
    .local v4, "summary":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    .line 533
    .local v3, "screen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    .line 534
    .local v2, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_6

    .line 535
    invoke-virtual {v3, v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 536
    .local v1, "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "unlock_set_pattern"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 541
    :cond_3
    :goto_1
    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 534
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 536
    :cond_5
    const-string/jumbo v6, "unlock_set_pin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "unlock_set_password"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "unlock_set_managed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    .line 514
    .end local v1    # "preference":Landroid/support/v7/preference/Preference;
    :cond_6
    return-void
.end method

.method private updatePreferenceText()V
    .locals 6

    .prologue
    .line 362
    iget-boolean v4, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v4, :cond_0

    .line 363
    const-string/jumbo v4, "unlock_set_pattern"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 364
    .local v2, "pattern":Landroid/support/v7/preference/Preference;
    const v4, 0x7f0e0640

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 366
    const-string/jumbo v4, "unlock_set_pin"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    .line 367
    .local v3, "pin":Landroid/support/v7/preference/Preference;
    const v4, 0x7f0e0641

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 369
    const-string/jumbo v4, "unlock_set_password"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 370
    .local v1, "password":Landroid/support/v7/preference/Preference;
    const v4, 0x7f0e0642

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 373
    .end local v1    # "password":Landroid/support/v7/preference/Preference;
    .end local v2    # "pattern":Landroid/support/v7/preference/Preference;
    .end local v3    # "pin":Landroid/support/v7/preference/Preference;
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings_ex/ManagedLockPasswordProvider;

    invoke-virtual {v4}, Lcom/android/settings_ex/ManagedLockPasswordProvider;->isSettingManagedPasswordSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 374
    const-string/jumbo v4, "unlock_set_managed"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 375
    .local v0, "managed":Landroid/support/v7/preference/Preference;
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings_ex/ManagedLockPasswordProvider;

    iget-boolean v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/ManagedLockPasswordProvider;->getPickerOptionTitle(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 361
    .end local v0    # "managed":Landroid/support/v7/preference/Preference;
    :goto_0
    return-void

    .line 377
    :cond_1
    const-string/jumbo v4, "unlock_set_managed"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updatePreferencesOrFinish()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 330
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 331
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "lockscreen.password_type"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 332
    .local v3, "quality":I
    if-ne v3, v5, :cond_1

    .line 334
    const-string/jumbo v4, "minimum_quality"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 335
    invoke-direct {p0, v3}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(I)I

    move-result v3

    .line 337
    const-string/jumbo v4, "hide_disabled_prefs"

    .line 336
    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 338
    .local v0, "hideDisabledPrefs":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    .line 339
    .local v2, "prefScreen":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v2, :cond_0

    .line 340
    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 342
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferences()V

    .line 343
    invoke-virtual {p0, v3, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(IZ)V

    .line 344
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferenceText()V

    .line 345
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updateCurrentPreference()V

    .line 346
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferenceSummaryIfNeeded()V

    .line 329
    .end local v0    # "hideDisabledPrefs":Z
    .end local v2    # "prefScreen":Landroid/support/v7/preference/PreferenceScreen;
    :goto_0
    return-void

    .line 348
    :cond_1
    invoke-virtual {p0, v3, v6}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0
.end method

.method private upgradeQuality(I)I
    .locals 0
    .param p1, "quality"    # I

    .prologue
    .line 415
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForDPM(I)I

    move-result p1

    .line 416
    return p1
.end method

.method private upgradeQualityForDPM(I)I
    .locals 4
    .param p1, "quality"    # I

    .prologue
    .line 421
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    .line 422
    .local v0, "minQuality":I
    if-ge p1, v0, :cond_0

    .line 423
    move p1, v0

    .line 425
    :cond_0
    return p1
.end method


# virtual methods
.method protected addHeaderView()V
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v0, :cond_0

    .line 223
    const v0, 0x7f04003d

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->setHeaderView(I)V

    .line 221
    :cond_0
    return-void
.end method

.method protected addPreferences()V
    .locals 2

    .prologue
    .line 353
    const v0, 0x7f08007d

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferencesFromResource(I)V

    .line 356
    const-string/jumbo v0, "unlock_set_none"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const v1, 0x7f110011

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setViewId(I)V

    .line 357
    const-string/jumbo v0, "unlock_set_pin"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const v1, 0x7f110012

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setViewId(I)V

    .line 358
    const-string/jumbo v0, "unlock_set_password"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const v1, 0x7f110013

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setViewId(I)V

    .line 352
    return-void
.end method

.method protected disableUnusablePreferences(IZ)V
    .locals 0
    .param p1, "quality"    # I
    .param p2, "hideDisabledPrefs"    # Z

    .prologue
    .line 437
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferencesImpl(IZ)V

    .line 436
    return-void
.end method

.method protected disableUnusablePreferencesImpl(IZ)V
    .locals 12
    .param p1, "quality"    # I
    .param p2, "hideDisabled"    # Z

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    .line 450
    .local v4, "entries":Landroid/support/v7/preference/PreferenceScreen;
    iget-object v9, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget v10, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    .line 452
    .local v0, "adminEnforcedQuality":I
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget v10, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 451
    invoke-static {v9, v10}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v3

    .line 453
    .local v3, "enforcedAdmin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_19

    .line 454
    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v7

    .line 455
    .local v7, "pref":Landroid/support/v7/preference/Preference;
    instance-of v9, v7, Lcom/android/settings_exlib/RestrictedPreference;

    if-eqz v9, :cond_3

    .line 456
    invoke-virtual {v7}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 457
    .local v6, "key":Ljava/lang/String;
    const/4 v2, 0x1

    .line 458
    .local v2, "enabled":Z
    const/4 v8, 0x1

    .line 459
    .local v8, "visible":Z
    const/4 v1, 0x0

    .line 460
    .local v1, "disabledByAdmin":Z
    const-string/jumbo v9, "unlock_set_off"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 461
    if-gtz p1, :cond_4

    const/4 v2, 0x1

    .line 462
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0016

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 463
    const/4 v2, 0x0

    .line 464
    const/4 v8, 0x0

    .line 466
    :cond_0
    if-lez v0, :cond_5

    const/4 v1, 0x1

    .line 494
    .end local v2    # "enabled":Z
    :cond_1
    :goto_2
    if-eqz p2, :cond_2

    .line 495
    move v8, v2

    .line 497
    .end local v8    # "visible":Z
    :cond_2
    if-nez v8, :cond_16

    .line 498
    invoke-virtual {v4, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 453
    .end local v1    # "disabledByAdmin":Z
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "pref":Landroid/support/v7/preference/Preference;
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 461
    .restart local v1    # "disabledByAdmin":Z
    .restart local v2    # "enabled":Z
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v7    # "pref":Landroid/support/v7/preference/Preference;
    .restart local v8    # "visible":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 466
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 468
    :cond_6
    const-string/jumbo v9, "unlock_set_none"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 469
    iget v9, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    if-eq v9, v10, :cond_7

    .line 471
    const/4 v8, 0x0

    .line 473
    :cond_7
    if-gtz p1, :cond_8

    const/4 v2, 0x1

    .line 474
    :goto_4
    if-lez v0, :cond_9

    const/4 v1, 0x1

    goto :goto_2

    .line 473
    :cond_8
    const/4 v2, 0x0

    goto :goto_4

    .line 474
    :cond_9
    const/4 v1, 0x0

    goto :goto_2

    .line 476
    :cond_a
    const-string/jumbo v9, "unlock_set_pattern"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 477
    const/high16 v9, 0x10000

    if-gt p1, v9, :cond_b

    const/4 v2, 0x1

    .line 479
    :goto_5
    const/high16 v9, 0x10000

    .line 478
    if-le v0, v9, :cond_c

    const/4 v1, 0x1

    goto :goto_2

    .line 477
    :cond_b
    const/4 v2, 0x0

    goto :goto_5

    .line 478
    :cond_c
    const/4 v1, 0x0

    goto :goto_2

    .line 480
    :cond_d
    const-string/jumbo v9, "unlock_set_pin"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 481
    const/high16 v9, 0x30000

    if-gt p1, v9, :cond_e

    const/4 v2, 0x1

    .line 483
    :goto_6
    const/high16 v9, 0x30000

    .line 482
    if-le v0, v9, :cond_f

    const/4 v1, 0x1

    goto :goto_2

    .line 481
    :cond_e
    const/4 v2, 0x0

    goto :goto_6

    .line 482
    :cond_f
    const/4 v1, 0x0

    goto :goto_2

    .line 484
    :cond_10
    const-string/jumbo v9, "unlock_set_password"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 485
    const/high16 v9, 0x60000

    if-gt p1, v9, :cond_11

    const/4 v2, 0x1

    .line 487
    :goto_7
    const/high16 v9, 0x60000

    .line 486
    if-le v0, v9, :cond_12

    const/4 v1, 0x1

    goto :goto_2

    .line 485
    :cond_11
    const/4 v2, 0x0

    goto :goto_7

    .line 486
    :cond_12
    const/4 v1, 0x0

    goto :goto_2

    .line 488
    :cond_13
    const-string/jumbo v9, "unlock_set_managed"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 489
    const/high16 v9, 0x80000

    if-gt p1, v9, :cond_14

    .line 490
    iget-object v9, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings_ex/ManagedLockPasswordProvider;

    invoke-virtual {v9}, Lcom/android/settings_ex/ManagedLockPasswordProvider;->isManagedPasswordChoosable()Z

    move-result v2

    .line 492
    .end local v2    # "enabled":Z
    :goto_8
    const/high16 v9, 0x80000

    .line 491
    if-le v0, v9, :cond_15

    const/4 v1, 0x1

    goto/16 :goto_2

    .line 489
    .restart local v2    # "enabled":Z
    :cond_14
    const/4 v2, 0x0

    goto :goto_8

    .line 491
    .end local v2    # "enabled":Z
    :cond_15
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 499
    .end local v8    # "visible":Z
    :cond_16
    if-eqz v1, :cond_17

    if-eqz v3, :cond_17

    .line 500
    check-cast v7, Lcom/android/settings_exlib/RestrictedPreference;

    .end local v7    # "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v7, v3}, Lcom/android/settings_exlib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    goto/16 :goto_3

    .line 501
    .restart local v7    # "pref":Landroid/support/v7/preference/Preference;
    :cond_17
    if-nez v2, :cond_18

    move-object v9, v7

    .line 504
    check-cast v9, Lcom/android/settings_exlib/RestrictedPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settings_exlib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 505
    const v9, 0x7f0e0645

    invoke-virtual {v7, v9}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 506
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 508
    :cond_18
    check-cast v7, Lcom/android/settings_exlib/RestrictedPreference;

    .end local v7    # "pref":Landroid/support/v7/preference/Preference;
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/android/settings_exlib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    goto/16 :goto_3

    .line 447
    .end local v1    # "disabledByAdmin":Z
    .end local v6    # "key":Ljava/lang/String;
    :cond_19
    return-void
.end method

.method protected getEncryptionInterstitialIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "required"    # Z
    .param p4, "unlockMethodIntent"    # Landroid/content/Intent;

    .prologue
    .line 605
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings_ex/EncryptionInterstitial;->createStartIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 749
    const v0, 0x7f0e0d7e

    return v0
.end method

.method protected getLockManagedPasswordIntent(ZLjava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "requirePassword"    # Z
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings_ex/ManagedLockPasswordProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings_ex/ManagedLockPasswordProvider;->createIntent(ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZJI)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "minLength"    # I
    .param p4, "maxLength"    # I
    .param p5, "requirePasswordToDecrypt"    # Z
    .param p6, "challenge"    # J
    .param p8, "userId"    # I

    .prologue
    .line 566
    invoke-static/range {p1 .. p8}, Lcom/android/settings_ex/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZJI)Landroid/content/Intent;

    move-result-object v0

    .line 572
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZLjava/lang/String;I)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "minLength"    # I
    .param p4, "maxLength"    # I
    .param p5, "requirePasswordToDecrypt"    # Z
    .param p6, "password"    # Ljava/lang/String;
    .param p7, "userId"    # I

    .prologue
    .line 577
    invoke-static/range {p1 .. p7}, Lcom/android/settings_ex/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 583
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZZI)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "minLength"    # I
    .param p4, "maxLength"    # I
    .param p5, "requirePasswordToDecrypt"    # Z
    .param p6, "confirmCredentials"    # Z
    .param p7, "userId"    # I

    .prologue
    .line 554
    invoke-static/range {p1 .. p7}, Lcom/android/settings_ex/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZZI)Landroid/content/Intent;

    move-result-object v0

    .line 560
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZJI)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requirePassword"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I

    .prologue
    .line 595
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/settings_ex/ChooseLockPattern;->createIntent(Landroid/content/Context;ZJI)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZLjava/lang/String;I)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requirePassword"    # Z
    .param p3, "pattern"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 600
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings_ex/ChooseLockPattern;->createIntent(Landroid/content/Context;ZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZZI)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requirePassword"    # Z
    .param p3, "confirmCredentials"    # Z
    .param p4, "userId"    # I

    .prologue
    .line 589
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings_ex/ChooseLockPattern;->createIntent(Landroid/content/Context;ZZI)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 131
    const/16 v0, 0x1b

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 290
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 291
    iput-boolean v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 292
    const/16 v0, 0x64

    if-ne p1, v0, :cond_3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 294
    const-string/jumbo v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    .line 295
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 296
    iget-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 299
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 298
    invoke-direct {p0, v0, v2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    .line 314
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v0, :cond_1

    .line 315
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 289
    :cond_1
    return-void

    .line 301
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 304
    :cond_3
    const/16 v0, 0x66

    if-eq p1, v0, :cond_4

    .line 305
    const/16 v0, 0x65

    if-ne p1, v0, :cond_6

    .line 306
    :cond_4
    if-nez p2, :cond_5

    iget-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v0, :cond_0

    .line 307
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 308
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 311
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 312
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 136
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v8, "fingerprint"

    invoke-virtual {v5, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/FingerprintManager;

    .line 138
    iput-object v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 140
    const-string/jumbo v5, "device_policy"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    iput-object v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 141
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    .line 142
    new-instance v5, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 143
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 144
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->sanitizePassword()V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 148
    const-string/jumbo v8, "confirm_credentials"

    .line 147
    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 149
    .local v1, "confirmCredentials":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    instance-of v5, v5, Lcom/android/settings_ex/ChooseLockGeneric$InternalActivity;

    if-eqz v5, :cond_0

    .line 150
    if-eqz v1, :cond_4

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v8, ":settings:hide_drawer"

    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mHideDrawer:Z

    .line 154
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 155
    const-string/jumbo v8, "has_challenge"

    .line 154
    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    .line 156
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 157
    const-string/jumbo v8, "challenge"

    const-wide/16 v10, 0x0

    .line 156
    invoke-virtual {v5, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    .line 158
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 159
    const-string/jumbo v8, "for_fingerprint"

    .line 158
    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 160
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    .line 161
    const-string/jumbo v8, "for_cred_req_boot"

    .line 160
    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    :goto_1
    iput-boolean v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    .line 163
    if-eqz p1, :cond_1

    .line 164
    const-string/jumbo v5, "password_confirmed"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 165
    const-string/jumbo v5, "waiting_for_confirmation"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 166
    const-string/jumbo v5, "encrypt_requested_quality"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    .line 168
    const-string/jumbo v5, "encrypt_requested_disabled"

    .line 167
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v5

    .line 173
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v8

    .line 175
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 171
    invoke-static {v5, v8, v12, v9}, Lcom/android/settings_ex/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 176
    .local v4, "targetUser":I
    const-string/jumbo v5, "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

    .line 177
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 176
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 178
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 185
    iput v4, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 188
    :goto_2
    const-string/jumbo v5, "android.app.action.SET_NEW_PASSWORD"

    .line 189
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 188
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 190
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    iget v8, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v5, v8}, Lcom/android/settings_ex/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v5

    .line 188
    if-eqz v5, :cond_2

    .line 191
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v8, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v5

    .line 188
    if-eqz v5, :cond_2

    .line 192
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v8, 0x7f0e062a

    invoke-virtual {v5, v8}, Landroid/app/Activity;->setTitle(I)V

    .line 195
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget v8, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v5, v8}, Lcom/android/settings_ex/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/settings_ex/ManagedLockPasswordProvider;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings_ex/ManagedLockPasswordProvider;

    .line 197
    iget-boolean v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v5, :cond_8

    .line 198
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 199
    iget-boolean v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v5, :cond_3

    .line 200
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 201
    iget v7, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 200
    invoke-virtual {v5, v7}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v5

    invoke-direct {p0, v5, v6}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    .line 218
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->addHeaderView()V

    .line 135
    return-void

    .end local v4    # "targetUser":I
    :cond_4
    move v5, v7

    .line 150
    goto/16 :goto_0

    :cond_5
    move v5, v6

    .line 160
    goto/16 :goto_1

    .line 181
    .restart local v4    # "targetUser":I
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 182
    .local v0, "arguments":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v0, :cond_7

    .end local v0    # "arguments":Landroid/os/Bundle;
    :goto_4
    invoke-static {v5, v0}, Lcom/android/settings_ex/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v5

    iput v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    goto :goto_2

    .line 183
    .restart local v0    # "arguments":Landroid/os/Bundle;
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_4

    .line 203
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_8
    iget-boolean v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    if-nez v5, :cond_3

    .line 205
    new-instance v2, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 207
    .local v2, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    iget v8, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 206
    invoke-static {v5, v8}, Lcom/android/settings_ex/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 208
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v8, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_9

    move v3, v6

    .line 209
    .local v3, "managedProfileWithUnifiedLock":Z
    :goto_5
    if-nez v3, :cond_b

    .line 211
    const v5, 0x7f0e062f

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 210
    const/16 v8, 0x64

    invoke-virtual {v2, v8, v5, v7, v6}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 215
    iput-boolean v7, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    goto :goto_3

    .end local v3    # "managedProfileWithUnifiedLock":Z
    :cond_9
    move v3, v7

    .line 208
    goto :goto_5

    :cond_a
    move v3, v6

    .line 206
    goto :goto_5

    .line 212
    .restart local v3    # "managedProfileWithUnifiedLock":Z
    :cond_b
    iput-boolean v7, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 213
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 743
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 744
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->sanitizePassword()V

    .line 742
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 229
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "key":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->isUnlockMethodSecure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    invoke-direct {p0, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->showFactoryResetProtectionWarningDialog(Ljava/lang/String;)V

    .line 235
    const/4 v1, 0x1

    return v1

    .line 237
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 321
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 323
    const-string/jumbo v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 324
    const-string/jumbo v0, "waiting_for_confirmation"

    iget-boolean v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 325
    const-string/jumbo v0, "encrypt_requested_quality"

    iget v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 326
    const-string/jumbo v0, "encrypt_requested_disabled"

    iget-boolean v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 320
    return-void
.end method

.method updateUnlockMethodAndFinish(IZ)V
    .locals 5
    .param p1, "quality"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 620
    iget-boolean v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-nez v1, :cond_0

    .line 621
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Tried to update password without confirming it"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 624
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(I)I

    move-result p1

    .line 625
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getIntentForUnlockMethod(IZ)Landroid/content/Intent;

    move-result-object v0

    .line 626
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 627
    const/16 v1, 0x66

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 628
    return-void

    .line 631
    :cond_1
    if-nez p1, :cond_2

    .line 632
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    .line 633
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    .line 634
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, p2, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 635
    iget v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, v1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->removeAllFingerprintForUserAndFinish(I)V

    .line 636
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 618
    :goto_0
    return-void

    .line 638
    :cond_2
    iget v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, v1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->removeAllFingerprintForUserAndFinish(I)V

    goto :goto_0
.end method
