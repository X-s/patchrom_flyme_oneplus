.class public Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OxygenChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/OxygenChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockGenericFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    }
.end annotation


# static fields
.field private static final CHOOSE_LOCK_BEFORE_FINGERPRINT_REQUEST:I = 0x67

.field private static final CHOOSE_LOCK_REQUEST:I = 0x66

.field private static final CONFIRM_EXISTING_REQUEST:I = 0x64

.field private static final ENABLE_ENCRYPTION_REQUEST:I = 0x65

.field public static final ENCRYPT_REQUESTED_DISABLED:Ljava/lang/String; = "encrypt_requested_disabled"

.field public static final ENCRYPT_REQUESTED_QUALITY:Ljava/lang/String; = "encrypt_requested_quality"

.field public static final HIDE_DISABLED_PREFS:Ljava/lang/String; = "hide_disabled_prefs"

.field private static final KEY_SKIP_FINGERPRINT:Ljava/lang/String; = "unlock_skip_fingerprint"

.field private static final KEY_UNLOCK_SET_MANAGED:Ljava/lang/String; = "unlock_set_managed"

.field private static final KEY_UNLOCK_SET_NONE:Ljava/lang/String; = "unlock_set_none"

.field private static final KEY_UNLOCK_SET_OFF:Ljava/lang/String; = "unlock_set_off"

.field private static final KEY_UNLOCK_SET_PASSWORD:Ljava/lang/String; = "unlock_set_password"

.field private static final KEY_UNLOCK_SET_PATTERN:Ljava/lang/String; = "unlock_set_pattern"

.field private static final KEY_UNLOCK_SET_PIN:Ljava/lang/String; = "unlock_set_pin"

.field public static final MINIMUM_QUALITY_KEY:Ljava/lang/String; = "minimum_quality"

.field private static final MIN_PASSWORD_LENGTH:I = 0x4

.field private static final PASSWORD_CONFIRMED:Ljava/lang/String; = "password_confirmed"

.field private static final SKIP_FINGERPRINT_REQUEST:I = 0x68

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

.field private mIsSetNewPassword:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mManagedPasswordProvider:Lcom/android/settings_ex/ManagedLockPasswordProvider;

.field private mPasswordConfirmed:Z

.field private mRequirePassword:Z

.field private mUserId:I

.field private mUserPassword:Ljava/lang/String;

.field private mWaitingForConfirmation:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)Z
    .locals 1
    .param p1, "unlockMethod"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;I)V
    .locals 0
    .param p1, "parentUserId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->removeManagedProfileFingerprintsAndFinishIfNecessary(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 117
    iput-boolean v0, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    .line 119
    iput-boolean v0, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 120
    iput-boolean v0, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 124
    iput-boolean v0, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    .line 129
    iput-boolean v0, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mHideDrawer:Z

    .line 131
    iput-boolean v0, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    .line 133
    iput-boolean v0, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 90
    return-void
.end method

.method private getIntentForUnlockMethod(IZ)Landroid/content/Intent;
    .locals 12
    .param p1, "quality"    # I
    .param p2, "disabled"    # Z

    .prologue
    const/4 v5, 0x0

    .line 676
    const/4 v11, 0x0

    .line 677
    .local v11, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 678
    .local v1, "context":Landroid/content/Context;
    const/high16 v0, 0x80000

    if-lt p1, v0, :cond_2

    .line 679
    iget-boolean v0, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getLockManagedPasswordIntent(ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 702
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    if-eqz v11, :cond_1

    .line 703
    const-string/jumbo v0, ":settings:hide_drawer"

    iget-boolean v2, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mHideDrawer:Z

    invoke-virtual {v11, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 705
    :cond_1
    return-object v11

    .line 680
    .restart local v11    # "intent":Landroid/content/Intent;
    :cond_2
    const/high16 v0, 0x20000

    if-lt p1, v0, :cond_5

    .line 681
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget v2, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v0, v5, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v3

    .line 682
    .local v3, "minLength":I
    const/4 v0, 0x4

    if-ge v3, v0, :cond_3

    .line 683
    const/4 v3, 0x4

    .line 685
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v4

    .line 686
    .local v4, "maxLength":I
    iget-boolean v0, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz v0, :cond_4

    .line 688
    iget-boolean v5, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    iget-wide v6, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    iget v8, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move-object v0, p0

    move v2, p1

    .line 687
    invoke-virtual/range {v0 .. v8}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(Landroid/content/Context;IIIZJI)Landroid/content/Intent;

    move-result-object v11

    .local v11, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 691
    .local v11, "intent":Landroid/content/Intent;
    :cond_4
    iget-boolean v5, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    iget-object v6, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    iget v7, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move-object v0, p0

    move v2, p1

    .line 690
    invoke-virtual/range {v0 .. v7}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(Landroid/content/Context;IIIZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v11

    .local v11, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 693
    .end local v3    # "minLength":I
    .end local v4    # "maxLength":I
    .local v11, "intent":Landroid/content/Intent;
    :cond_5
    const/high16 v0, 0x10000

    if-ne p1, v0, :cond_0

    .line 694
    iget-boolean v0, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz v0, :cond_6

    .line 695
    iget-boolean v7, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    .line 696
    iget-wide v8, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    iget v10, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move-object v5, p0

    move-object v6, v1

    .line 695
    invoke-virtual/range {v5 .. v10}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getLockPatternIntent(Landroid/content/Context;ZJI)Landroid/content/Intent;

    move-result-object v11

    .local v11, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 698
    .local v11, "intent":Landroid/content/Intent;
    :cond_6
    iget-boolean v0, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    .line 699
    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    iget v5, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 698
    invoke-virtual {p0, v1, v0, v2, v5}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getLockPatternIntent(Landroid/content/Context;ZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v11

    .local v11, "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method private getKeyForCurrent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 437
    iget v2, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 436
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v0

    .line 438
    .local v0, "credentialOwner":I
    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    const-string/jumbo v1, "unlock_set_off"

    return-object v1

    .line 441
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 456
    const/4 v1, 0x0

    return-object v1

    .line 443
    :sswitch_0
    const-string/jumbo v1, "unlock_set_pattern"

    return-object v1

    .line 446
    :sswitch_1
    const-string/jumbo v1, "unlock_set_pin"

    return-object v1

    .line 450
    :sswitch_2
    const-string/jumbo v1, "unlock_set_password"

    return-object v1

    .line 452
    :sswitch_3
    const-string/jumbo v1, "unlock_set_managed"

    return-object v1

    .line 454
    :sswitch_4
    const-string/jumbo v1, "unlock_set_none"

    return-object v1

    .line 441
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
    .line 788
    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v3, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    .line 789
    .local v0, "hasFingerprints":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2, v3}, Lcom/android/settings_ex/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v1

    .line 790
    .local v1, "isProfile":Z
    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 828
    if-eqz v0, :cond_c

    if-eqz v1, :cond_c

    .line 829
    const v2, 0x7f0e065e

    return v2

    .line 792
    :sswitch_0
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 793
    const v2, 0x7f0e0658

    return v2

    .line 795
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_2

    .line 797
    :cond_1
    if-eqz v1, :cond_3

    .line 798
    const v2, 0x7f0e0657

    return v2

    .line 796
    :cond_2
    const v2, 0x7f0e0650

    return v2

    .line 800
    :cond_3
    const v2, 0x7f0e064f

    return v2

    .line 804
    :sswitch_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 805
    const v2, 0x7f0e065a

    return v2

    .line 806
    :cond_4
    if-eqz v0, :cond_5

    if-eqz v1, :cond_6

    .line 808
    :cond_5
    if-eqz v1, :cond_7

    .line 809
    const v2, 0x7f0e0659

    return v2

    .line 807
    :cond_6
    const v2, 0x7f0e0652

    return v2

    .line 811
    :cond_7
    const v2, 0x7f0e0651

    return v2

    .line 817
    :sswitch_2
    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    .line 818
    const v2, 0x7f0e065c

    return v2

    .line 820
    :cond_8
    if-eqz v0, :cond_9

    if-eqz v1, :cond_a

    .line 822
    :cond_9
    if-eqz v1, :cond_b

    .line 823
    const v2, 0x7f0e065b

    return v2

    .line 821
    :cond_a
    const v2, 0x7f0e0654

    return v2

    .line 825
    :cond_b
    const v2, 0x7f0e0653

    return v2

    .line 831
    :cond_c
    if-eqz v0, :cond_d

    if-eqz v1, :cond_e

    .line 833
    :cond_d
    if-eqz v1, :cond_f

    .line 834
    const v2, 0x7f0e065d

    return v2

    .line 832
    :cond_e
    const v2, 0x7f0e0656

    return v2

    .line 836
    :cond_f
    const v2, 0x7f0e0655

    return v2

    .line 790
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
    .line 782
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/settings_ex/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v0

    .line 783
    .local v0, "isProfile":Z
    if-eqz v0, :cond_0

    const v1, 0x7f0e064e

    :goto_0
    return v1

    .line 784
    :cond_0
    const v1, 0x7f0e064d

    goto :goto_0
.end method

.method private isUnlockMethodSecure(Ljava/lang/String;)Z
    .locals 1
    .param p1, "unlockMethod"    # Ljava/lang/String;

    .prologue
    .line 842
    const-string/jumbo v0, "unlock_set_off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 843
    const-string/jumbo v0, "unlock_set_none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 842
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

    .line 270
    const-string/jumbo v7, "device_policy"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 271
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 272
    iget v7, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 273
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v7

    .line 271
    if-eqz v7, :cond_0

    .line 274
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isFileEncryptionEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 301
    :cond_0
    iget-boolean v7, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v7, :cond_4

    .line 303
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 304
    return-void

    .line 275
    :cond_1
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    move-result v7

    if-nez v7, :cond_0

    .line 276
    iput p1, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    .line 277
    iput-boolean p2, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    .line 280
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getIntentForUnlockMethod(IZ)Landroid/content/Intent;

    move-result-object v5

    .line 282
    .local v5, "unlockMethodIntent":Landroid/content/Intent;
    const-string/jumbo v7, "for_cred_req_boot"

    .line 283
    iget-boolean v8, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    .line 281
    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 284
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 288
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 289
    .local v0, "accEn":Z
    iget-object v7, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_2

    :goto_0
    invoke-virtual {v7, v6}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v4

    .line 290
    .local v4, "required":Z
    invoke-virtual {p0, v1, p1, v4, v5}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getEncryptionInterstitialIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    .line 292
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "for_fingerprint"

    .line 293
    iget-boolean v7, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 292
    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 294
    const-string/jumbo v6, ":settings:hide_drawer"

    iget-boolean v7, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mHideDrawer:Z

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 297
    iget-boolean v6, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz v6, :cond_3

    .line 298
    const/16 v6, 0x67

    .line 295
    :goto_1
    invoke-virtual {p0, v3, v6}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 269
    .end local v0    # "accEn":Z
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "required":Z
    .end local v5    # "unlockMethodIntent":Landroid/content/Intent;
    :goto_2
    return-void

    .line 289
    .restart local v0    # "accEn":Z
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v5    # "unlockMethodIntent":Landroid/content/Intent;
    :cond_2
    const/4 v6, 0x1

    goto :goto_0

    .line 299
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "required":Z
    :cond_3
    const/16 v6, 0x65

    goto :goto_1

    .line 306
    .end local v0    # "accEn":Z
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "required":Z
    .end local v5    # "unlockMethodIntent":Landroid/content/Intent;
    :cond_4
    iput-boolean v6, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    .line 307
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_2
.end method

.method private removeAllFingerprintForUserAndFinish(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 709
    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 710
    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 711
    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2, p1}, Landroid/hardware/fingerprint/FingerprintManager;->setActiveUser(I)V

    .line 713
    move v6, p1

    .line 714
    .local v6, "groupId":I
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 715
    .local v0, "finger":Landroid/hardware/fingerprint/Fingerprint;
    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 716
    new-instance v2, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment$1;

    invoke-direct {v2, p0, p1}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment$1;-><init>(Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;I)V

    .line 715
    invoke-virtual {v1, v0, p1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    .line 708
    .end local v0    # "finger":Landroid/hardware/fingerprint/Fingerprint;
    .end local v6    # "groupId":I
    :goto_0
    return-void

    .line 736
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->removeManagedProfileFingerprintsAndFinishIfNecessary(I)V

    goto :goto_0

    .line 743
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0
.end method

.method private removeManagedProfileFingerprintsAndFinishIfNecessary(I)V
    .locals 8
    .param p1, "parentUserId"    # I

    .prologue
    .line 748
    iget-object v6, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/hardware/fingerprint/FingerprintManager;->setActiveUser(I)V

    .line 749
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    .line 750
    .local v4, "um":Landroid/os/UserManager;
    const/4 v0, 0x0

    .line 751
    .local v0, "hasChildProfile":Z
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-nez v6, :cond_2

    .line 753
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 754
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 755
    .local v3, "profilesSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 756
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 757
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 758
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    .line 757
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 755
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 759
    :cond_1
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->removeAllFingerprintForUserAndFinish(I)V

    .line 760
    const/4 v0, 0x1

    .line 765
    .end local v1    # "i":I
    .end local v2    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3    # "profilesSize":I
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    if-nez v0, :cond_3

    .line 766
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 747
    :cond_3
    return-void
.end method

.method private setUnlockMethod(Ljava/lang/String;)Z
    .locals 4
    .param p1, "unlockMethod"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 847
    const v0, 0x16058

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 849
    const-string/jumbo v0, "unlock_set_off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    invoke-virtual {p0, v3, v1}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    .line 870
    :goto_0
    return v1

    .line 852
    :cond_0
    const-string/jumbo v0, "unlock_set_none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 853
    invoke-virtual {p0, v3, v3}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 855
    :cond_1
    const-string/jumbo v0, "unlock_set_managed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 856
    const/high16 v0, 0x80000

    invoke-direct {p0, v0, v3}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 857
    :cond_2
    const-string/jumbo v0, "unlock_set_pattern"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 859
    const/high16 v0, 0x10000

    .line 858
    invoke-direct {p0, v0, v3}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 860
    :cond_3
    const-string/jumbo v0, "unlock_set_pin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 862
    const/high16 v0, 0x20000

    .line 861
    invoke-direct {p0, v0, v3}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 863
    :cond_4
    const-string/jumbo v0, "unlock_set_password"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 865
    const/high16 v0, 0x40000

    .line 864
    invoke-direct {p0, v0, v3}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 867
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

    .line 868
    return v3
.end method

.method private showFactoryResetProtectionWarningDialog(Ljava/lang/String;)V
    .locals 5
    .param p1, "unlockMethodToSet"    # Ljava/lang/String;

    .prologue
    .line 874
    invoke-direct {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getResIdForFactoryResetProtectionWarningTitle()I

    move-result v2

    .line 875
    .local v2, "title":I
    invoke-direct {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getResIdForFactoryResetProtectionWarningMessage()I

    move-result v1

    .line 877
    .local v1, "message":I
    invoke-static {v2, v1, p1}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->newInstance(IILjava/lang/String;)Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    move-result-object v0

    .line 879
    .local v0, "dialog":Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "frp_warning_dialog"

    invoke-virtual {v0, v3, v4}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 873
    return-void
.end method

.method private updateCurrentPreference()V
    .locals 3

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getKeyForCurrent()Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "currentKey":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 430
    .local v1, "preference":Landroid/support/v7/preference/Preference;
    if-eqz v1, :cond_0

    .line 431
    const v2, 0x7f0e063f

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 427
    :cond_0
    return-void
.end method

.method private updatePreferenceSummaryIfNeeded()V
    .locals 7

    .prologue
    .line 563
    invoke-static {}, Landroid/os/storage/StorageManager;->isBlockEncrypted()Z

    move-result v5

    if-nez v5, :cond_0

    .line 564
    return-void

    .line 567
    :cond_0
    invoke-static {}, Landroid/os/storage/StorageManager;->isNonDefaultBlockEncrypted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 568
    return-void

    .line 571
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    .line 572
    const/4 v6, -0x1

    .line 571
    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 573
    return-void

    .line 576
    :cond_2
    const v5, 0x7f0e0b07

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 578
    .local v4, "summary":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    .line 579
    .local v3, "screen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    .line 580
    .local v2, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_6

    .line 581
    invoke-virtual {v3, v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 582
    .local v1, "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "unlock_set_pattern"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 587
    :cond_3
    :goto_1
    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 580
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 582
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

    .line 560
    .end local v1    # "preference":Landroid/support/v7/preference/Preference;
    :cond_6
    return-void
.end method

.method private updatePreferenceText()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 400
    iget-boolean v6, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v6, :cond_1

    .line 401
    const/4 v6, 0x3

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v6, "unlock_set_pattern"

    aput-object v6, v1, v5

    .line 402
    const-string/jumbo v6, "unlock_set_pin"

    const/4 v7, 0x1

    aput-object v6, v1, v7

    .line 403
    const-string/jumbo v6, "unlock_set_password"

    const/4 v7, 0x2

    aput-object v6, v1, v7

    .line 404
    .local v1, "key":[Ljava/lang/String;
    const v6, 0x7f0e0640

    .line 405
    const v7, 0x7f0e0641

    .line 406
    const v8, 0x7f0e0642

    .line 404
    filled-new-array {v6, v7, v8}, [I

    move-result-object v4

    .line 407
    .local v4, "res":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v1

    if-ge v0, v6, :cond_1

    .line 408
    aget-object v6, v1, v0

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    .line 409
    .local v3, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v3, :cond_0

    .line 410
    aget v6, v4, v0

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 407
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 415
    .end local v0    # "i":I
    .end local v1    # "key":[Ljava/lang/String;
    .end local v3    # "pref":Landroid/support/v7/preference/Preference;
    .end local v4    # "res":[I
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings_ex/ManagedLockPasswordProvider;

    invoke-virtual {v6}, Lcom/android/settings_ex/ManagedLockPasswordProvider;->isSettingManagedPasswordSupported()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 416
    const-string/jumbo v6, "unlock_set_managed"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 417
    .local v2, "managed":Landroid/support/v7/preference/Preference;
    iget-object v6, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings_ex/ManagedLockPasswordProvider;

    iget-boolean v7, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/ManagedLockPasswordProvider;->getPickerOptionTitle(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 422
    .end local v2    # "managed":Landroid/support/v7/preference/Preference;
    :goto_1
    iget-boolean v6, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v6, :cond_2

    iget-boolean v5, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    :cond_2
    if-nez v5, :cond_3

    .line 423
    const-string/jumbo v5, "unlock_skip_fingerprint"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->removePreference(Ljava/lang/String;)V

    .line 399
    :cond_3
    return-void

    .line 419
    :cond_4
    const-string/jumbo v6, "unlock_set_managed"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->removePreference(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updatePreferencesOrFinish()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 367
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 368
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "lockscreen.password_type"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 369
    .local v3, "quality":I
    if-ne v3, v5, :cond_1

    .line 371
    const-string/jumbo v4, "minimum_quality"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 372
    invoke-direct {p0, v3}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(I)I

    move-result v3

    .line 374
    const-string/jumbo v4, "hide_disabled_prefs"

    .line 373
    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 375
    .local v0, "hideDisabledPrefs":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    .line 376
    .local v2, "prefScreen":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v2, :cond_0

    .line 377
    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 379
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->addPreferences()V

    .line 380
    invoke-virtual {p0, v3, v0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(IZ)V

    .line 381
    invoke-direct {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->updatePreferenceText()V

    .line 382
    invoke-direct {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->updateCurrentPreference()V

    .line 383
    invoke-direct {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->updatePreferenceSummaryIfNeeded()V

    .line 366
    .end local v0    # "hideDisabledPrefs":Z
    .end local v2    # "prefScreen":Landroid/support/v7/preference/PreferenceScreen;
    :goto_0
    return-void

    .line 385
    :cond_1
    invoke-virtual {p0, v3, v6}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0
.end method

.method private upgradeQuality(I)I
    .locals 0
    .param p1, "quality"    # I

    .prologue
    .line 461
    invoke-direct {p0, p1}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForDPM(I)I

    move-result p1

    .line 462
    return p1
.end method

.method private upgradeQualityForDPM(I)I
    .locals 4
    .param p1, "quality"    # I

    .prologue
    .line 467
    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget v2, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    .line 468
    .local v0, "minQuality":I
    if-ge p1, v0, :cond_0

    .line 469
    move p1, v0

    .line 471
    :cond_0
    return p1
.end method


# virtual methods
.method protected addHeaderView()V
    .locals 2

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v0, :cond_0

    .line 231
    const v0, 0x7f04011e

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->setHeaderView(I)V

    .line 232
    iget-boolean v0, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getHeaderView()Lcom/android/settings_ex/applications/LayoutPreference;

    move-result-object v0

    const v1, 0x7f110244

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 234
    const v1, 0x7f0e0644

    .line 233
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 229
    :cond_0
    return-void
.end method

.method protected addPreferences()V
    .locals 2

    .prologue
    const v1, 0x7f110011

    .line 390
    const v0, 0x7f080063

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->addPreferencesFromResource(I)V

    .line 393
    const-string/jumbo v0, "unlock_set_none"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setViewId(I)V

    .line 394
    const-string/jumbo v0, "unlock_skip_fingerprint"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setViewId(I)V

    .line 395
    const-string/jumbo v0, "unlock_set_pin"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const v1, 0x7f110012

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setViewId(I)V

    .line 396
    const-string/jumbo v0, "unlock_set_password"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const v1, 0x7f110013

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setViewId(I)V

    .line 389
    return-void
.end method

.method protected disableUnusablePreferences(IZ)V
    .locals 0
    .param p1, "quality"    # I
    .param p2, "hideDisabledPrefs"    # Z

    .prologue
    .line 483
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferencesImpl(IZ)V

    .line 482
    return-void
.end method

.method protected disableUnusablePreferencesImpl(IZ)V
    .locals 12
    .param p1, "quality"    # I
    .param p2, "hideDisabled"    # Z

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    .line 496
    .local v4, "entries":Landroid/support/v7/preference/PreferenceScreen;
    iget-object v9, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget v10, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    .line 498
    .local v0, "adminEnforcedQuality":I
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget v10, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 497
    invoke-static {v9, v10}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v3

    .line 499
    .local v3, "enforcedAdmin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_19

    .line 500
    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v7

    .line 501
    .local v7, "pref":Landroid/support/v7/preference/Preference;
    instance-of v9, v7, Lcom/android/settings_exlib/RestrictedPreference;

    if-eqz v9, :cond_3

    .line 502
    invoke-virtual {v7}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 503
    .local v6, "key":Ljava/lang/String;
    const/4 v2, 0x1

    .line 504
    .local v2, "enabled":Z
    const/4 v8, 0x1

    .line 505
    .local v8, "visible":Z
    const/4 v1, 0x0

    .line 506
    .local v1, "disabledByAdmin":Z
    const-string/jumbo v9, "unlock_set_off"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 507
    if-gtz p1, :cond_4

    const/4 v2, 0x1

    .line 508
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0016

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 509
    const/4 v2, 0x0

    .line 510
    const/4 v8, 0x0

    .line 512
    :cond_0
    if-lez v0, :cond_5

    const/4 v1, 0x1

    .line 540
    .end local v2    # "enabled":Z
    :cond_1
    :goto_2
    if-eqz p2, :cond_2

    .line 541
    move v8, v2

    .line 543
    .end local v8    # "visible":Z
    :cond_2
    if-nez v8, :cond_16

    .line 544
    invoke-virtual {v4, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 499
    .end local v1    # "disabledByAdmin":Z
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "pref":Landroid/support/v7/preference/Preference;
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 507
    .restart local v1    # "disabledByAdmin":Z
    .restart local v2    # "enabled":Z
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v7    # "pref":Landroid/support/v7/preference/Preference;
    .restart local v8    # "visible":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 512
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 514
    :cond_6
    const-string/jumbo v9, "unlock_set_none"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 515
    iget v9, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    if-eq v9, v10, :cond_7

    .line 517
    const/4 v8, 0x0

    .line 519
    :cond_7
    if-gtz p1, :cond_8

    const/4 v2, 0x1

    .line 520
    :goto_4
    if-lez v0, :cond_9

    const/4 v1, 0x1

    goto :goto_2

    .line 519
    :cond_8
    const/4 v2, 0x0

    goto :goto_4

    .line 520
    :cond_9
    const/4 v1, 0x0

    goto :goto_2

    .line 522
    :cond_a
    const-string/jumbo v9, "unlock_set_pattern"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 523
    const/high16 v9, 0x10000

    if-gt p1, v9, :cond_b

    const/4 v2, 0x1

    .line 525
    :goto_5
    const/high16 v9, 0x10000

    .line 524
    if-le v0, v9, :cond_c

    const/4 v1, 0x1

    goto :goto_2

    .line 523
    :cond_b
    const/4 v2, 0x0

    goto :goto_5

    .line 524
    :cond_c
    const/4 v1, 0x0

    goto :goto_2

    .line 526
    :cond_d
    const-string/jumbo v9, "unlock_set_pin"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 527
    const/high16 v9, 0x30000

    if-gt p1, v9, :cond_e

    const/4 v2, 0x1

    .line 529
    :goto_6
    const/high16 v9, 0x30000

    .line 528
    if-le v0, v9, :cond_f

    const/4 v1, 0x1

    goto :goto_2

    .line 527
    :cond_e
    const/4 v2, 0x0

    goto :goto_6

    .line 528
    :cond_f
    const/4 v1, 0x0

    goto :goto_2

    .line 530
    :cond_10
    const-string/jumbo v9, "unlock_set_password"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 531
    const/high16 v9, 0x60000

    if-gt p1, v9, :cond_11

    const/4 v2, 0x1

    .line 533
    :goto_7
    const/high16 v9, 0x60000

    .line 532
    if-le v0, v9, :cond_12

    const/4 v1, 0x1

    goto :goto_2

    .line 531
    :cond_11
    const/4 v2, 0x0

    goto :goto_7

    .line 532
    :cond_12
    const/4 v1, 0x0

    goto :goto_2

    .line 534
    :cond_13
    const-string/jumbo v9, "unlock_set_managed"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 535
    const/high16 v9, 0x80000

    if-gt p1, v9, :cond_14

    .line 536
    iget-object v9, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings_ex/ManagedLockPasswordProvider;

    invoke-virtual {v9}, Lcom/android/settings_ex/ManagedLockPasswordProvider;->isManagedPasswordChoosable()Z

    move-result v2

    .line 538
    .end local v2    # "enabled":Z
    :goto_8
    const/high16 v9, 0x80000

    .line 537
    if-le v0, v9, :cond_15

    const/4 v1, 0x1

    goto/16 :goto_2

    .line 535
    .restart local v2    # "enabled":Z
    :cond_14
    const/4 v2, 0x0

    goto :goto_8

    .line 537
    .end local v2    # "enabled":Z
    :cond_15
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 545
    .end local v8    # "visible":Z
    :cond_16
    if-eqz v1, :cond_17

    if-eqz v3, :cond_17

    .line 546
    check-cast v7, Lcom/android/settings_exlib/RestrictedPreference;

    .end local v7    # "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v7, v3}, Lcom/android/settings_exlib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    goto/16 :goto_3

    .line 547
    .restart local v7    # "pref":Landroid/support/v7/preference/Preference;
    :cond_17
    if-nez v2, :cond_18

    move-object v9, v7

    .line 550
    check-cast v9, Lcom/android/settings_exlib/RestrictedPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settings_exlib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 551
    const v9, 0x7f0e0645

    invoke-virtual {v7, v9}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 552
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 554
    :cond_18
    check-cast v7, Lcom/android/settings_exlib/RestrictedPreference;

    .end local v7    # "pref":Landroid/support/v7/preference/Preference;
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/android/settings_exlib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    goto/16 :goto_3

    .line 493
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
    .line 635
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings_ex/EncryptionInterstitial;->createStartIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 778
    const v0, 0x7f0e0d7e

    return v0
.end method

.method protected getLockManagedPasswordIntent(ZLjava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "requirePassword"    # Z
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings_ex/ManagedLockPasswordProvider;

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
    .line 607
    invoke-static/range {p1 .. p8}, Lcom/android/settings_ex/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZJI)Landroid/content/Intent;

    move-result-object v0

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
    .line 613
    invoke-static/range {p1 .. p7}, Lcom/android/settings_ex/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

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
    .line 600
    invoke-static/range {p1 .. p7}, Lcom/android/settings_ex/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZZI)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZJI)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requirePassword"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I

    .prologue
    .line 625
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/settings_ex/OxygenChooseLockPattern;->createIntent(Landroid/content/Context;ZJI)Landroid/content/Intent;

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
    .line 630
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings_ex/OxygenChooseLockPattern;->createIntent(Landroid/content/Context;ZLjava/lang/String;I)Landroid/content/Intent;

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
    .line 619
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings_ex/OxygenChooseLockPattern;->createIntent(Landroid/content/Context;ZZI)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 137
    const/16 v0, 0x1b

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 313
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 314
    iput-boolean v3, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 315
    const/16 v2, 0x64

    if-ne p1, v2, :cond_3

    if-ne p2, v1, :cond_3

    .line 316
    iput-boolean v4, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 317
    const-string/jumbo v1, "password"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    .line 318
    invoke-direct {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 319
    iget-boolean v1, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 322
    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    .line 321
    invoke-direct {p0, v1, v3}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    .line 351
    .end local p2    # "resultCode":I
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v1, :cond_1

    .line 352
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 312
    :cond_1
    return-void

    .line 324
    .restart local p2    # "resultCode":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 327
    :cond_3
    const/16 v2, 0x66

    if-eq p1, v2, :cond_4

    .line 328
    const/16 v2, 0x65

    if-ne p1, v2, :cond_6

    .line 329
    :cond_4
    if-nez p2, :cond_5

    iget-boolean v1, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v1, :cond_0

    .line 330
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 331
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 333
    :cond_6
    const/16 v2, 0x67

    if-ne p1, v2, :cond_8

    .line 334
    if-ne p2, v4, :cond_8

    .line 335
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 336
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_7

    .line 337
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 339
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    .line 340
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 341
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_8
    const/16 v2, 0x68

    if-ne p1, v2, :cond_a

    .line 342
    if-eqz p2, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 344
    if-ne p2, v4, :cond_9

    move p2, v1

    .line 343
    .end local p2    # "resultCode":I
    :cond_9
    invoke-virtual {v2, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 345
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 348
    .restart local p2    # "resultCode":I
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setResult(I)V

    .line 349
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 142
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "chooseLockAction":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v9, "fingerprint"

    invoke-virtual {v6, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/fingerprint/FingerprintManager;

    .line 145
    iput-object v6, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 147
    const-string/jumbo v6, "device_policy"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DevicePolicyManager;

    iput-object v6, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 148
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    .line 149
    new-instance v6, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v6, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 150
    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 152
    iget-object v6, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->sanitizePassword()V

    .line 153
    const-string/jumbo v6, "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 154
    const-string/jumbo v6, "android.app.action.SET_NEW_PASSWORD"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 153
    :goto_0
    iput-boolean v6, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    .line 157
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 158
    const-string/jumbo v9, "confirm_credentials"

    .line 157
    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 159
    .local v2, "confirmCredentials":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    instance-of v6, v6, Lcom/android/settings_ex/OxygenChooseLockGeneric$InternalActivity;

    if-eqz v6, :cond_0

    .line 160
    if-eqz v2, :cond_5

    move v6, v8

    :goto_1
    iput-boolean v6, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v9, ":settings:hide_drawer"

    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mHideDrawer:Z

    .line 164
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 165
    const-string/jumbo v9, "has_challenge"

    .line 164
    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    .line 166
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 167
    const-string/jumbo v9, "challenge"

    const-wide/16 v10, 0x0

    .line 166
    invoke-virtual {v6, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    .line 168
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 169
    const-string/jumbo v9, "for_fingerprint"

    .line 168
    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 170
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    .line 171
    const-string/jumbo v9, "for_cred_req_boot"

    .line 170
    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    :goto_2
    iput-boolean v6, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    .line 173
    if-eqz p1, :cond_1

    .line 174
    const-string/jumbo v6, "password_confirmed"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 175
    const-string/jumbo v6, "waiting_for_confirmation"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 176
    const-string/jumbo v6, "encrypt_requested_quality"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    .line 178
    const-string/jumbo v6, "encrypt_requested_disabled"

    .line 177
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v6

    .line 183
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v9

    .line 185
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 181
    invoke-static {v6, v9, v12, v10}, Lcom/android/settings_ex/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 186
    .local v5, "targetUser":I
    const-string/jumbo v6, "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 187
    iget-object v6, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 194
    iput v5, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 197
    :goto_3
    const-string/jumbo v6, "android.app.action.SET_NEW_PASSWORD"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 198
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    iget v9, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v6, v9}, Lcom/android/settings_ex/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v6

    .line 197
    if-eqz v6, :cond_2

    .line 199
    iget-object v6, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v9, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v6, v9}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v6

    .line 197
    if-eqz v6, :cond_2

    .line 200
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v9, 0x7f0e062a

    invoke-virtual {v6, v9}, Landroid/app/Activity;->setTitle(I)V

    .line 203
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget v9, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v6, v9}, Lcom/android/settings_ex/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/settings_ex/ManagedLockPasswordProvider;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings_ex/ManagedLockPasswordProvider;

    .line 205
    iget-boolean v6, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v6, :cond_9

    .line 206
    invoke-direct {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 207
    iget-boolean v6, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v6, :cond_3

    .line 208
    iget-object v6, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 209
    iget v7, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 208
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v6

    invoke-direct {p0, v6, v8}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    .line 226
    :cond_3
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->addHeaderView()V

    .line 141
    return-void

    .end local v2    # "confirmCredentials":Z
    .end local v5    # "targetUser":I
    :cond_4
    move v6, v7

    .line 153
    goto/16 :goto_0

    .restart local v2    # "confirmCredentials":Z
    :cond_5
    move v6, v7

    .line 160
    goto/16 :goto_1

    :cond_6
    move v6, v8

    .line 170
    goto/16 :goto_2

    .line 190
    .restart local v5    # "targetUser":I
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 191
    .local v0, "arguments":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v0, :cond_8

    .end local v0    # "arguments":Landroid/os/Bundle;
    :goto_5
    invoke-static {v6, v0}, Lcom/android/settings_ex/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v6

    iput v6, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    goto :goto_3

    .line 192
    .restart local v0    # "arguments":Landroid/os/Bundle;
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_5

    .line 211
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_9
    iget-boolean v6, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    if-nez v6, :cond_3

    .line 213
    new-instance v3, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v3, v6, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 215
    .local v3, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    iget v9, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 214
    invoke-static {v6, v9}, Lcom/android/settings_ex/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 216
    iget-object v6, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v9, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v6, v9}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_a

    move v4, v8

    .line 217
    .local v4, "managedProfileWithUnifiedLock":Z
    :goto_6
    if-nez v4, :cond_c

    .line 219
    const v6, 0x7f0e062f

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v8, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 218
    const/16 v9, 0x64

    invoke-virtual {v3, v9, v6, v7, v8}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 223
    iput-boolean v7, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    goto :goto_4

    .end local v4    # "managedProfileWithUnifiedLock":Z
    :cond_a
    move v4, v7

    .line 216
    goto :goto_6

    :cond_b
    move v4, v8

    .line 214
    goto :goto_6

    .line 220
    .restart local v4    # "managedProfileWithUnifiedLock":Z
    :cond_c
    iput-boolean v7, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 221
    invoke-direct {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto :goto_4
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 772
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 773
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->sanitizePassword()V

    .line 771
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 241
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "key":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->isUnlockMethodSecure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    invoke-direct {p0, v1}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->showFactoryResetProtectionWarningDialog(Ljava/lang/String;)V

    .line 247
    return v3

    .line 248
    :cond_0
    const-string/jumbo v2, "unlock_skip_fingerprint"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 249
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 250
    const-class v4, Lcom/android/settings_ex/OxygenChooseLockGeneric$InternalActivity;

    .line 249
    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    .local v0, "chooseLockGenericIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const-string/jumbo v4, "confirm_credentials"

    iget-boolean v2, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 253
    const/16 v2, 0x68

    invoke-virtual {p0, v0, v2}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 254
    return v3

    :cond_1
    move v2, v3

    .line 252
    goto :goto_0

    .line 256
    .end local v0    # "chooseLockGenericIntent":Landroid/content/Intent;
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 358
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 360
    const-string/jumbo v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 361
    const-string/jumbo v0, "waiting_for_confirmation"

    iget-boolean v1, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 362
    const-string/jumbo v0, "encrypt_requested_quality"

    iget v1, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 363
    const-string/jumbo v0, "encrypt_requested_disabled"

    iget-boolean v1, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 357
    return-void
.end method

.method updateUnlockMethodAndFinish(IZ)V
    .locals 5
    .param p1, "quality"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 650
    iget-boolean v1, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-nez v1, :cond_0

    .line 651
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Tried to update password without confirming it"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 654
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(I)I

    move-result p1

    .line 655
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getIntentForUnlockMethod(IZ)Landroid/content/Intent;

    move-result-object v0

    .line 656
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 658
    iget-boolean v1, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz v1, :cond_1

    .line 659
    const/16 v1, 0x67

    .line 657
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 661
    return-void

    .line 660
    :cond_1
    const/16 v1, 0x66

    goto :goto_0

    .line 664
    :cond_2
    if-nez p1, :cond_3

    .line 665
    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    iget-object v3, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    .line 666
    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    .line 667
    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, p2, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 668
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 669
    iget v1, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, v1}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->removeAllFingerprintForUserAndFinish(I)V

    .line 648
    :goto_1
    return-void

    .line 671
    :cond_3
    iget v1, p0, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, v1}, Lcom/android/settings_ex/OxygenChooseLockGeneric$ChooseLockGenericFragment;->removeAllFingerprintForUserAndFinish(I)V

    goto :goto_1
.end method
