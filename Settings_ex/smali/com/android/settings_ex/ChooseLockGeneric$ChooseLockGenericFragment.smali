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
.field private static final ALWAY_SHOW_TUTORIAL:Z = true

.field private static final CONFIRM_EXISTING_REQUEST:I = 0x64

.field private static final ENABLE_ENCRYPTION_REQUEST:I = 0x66

.field public static final ENCRYPT_REQUESTED_DISABLED:Ljava/lang/String; = "encrypt_requested_disabled"

.field public static final ENCRYPT_REQUESTED_QUALITY:Ljava/lang/String; = "encrypt_requested_quality"

.field private static final FALLBACK_REQUEST:I = 0x65

.field private static final FINISH_PENDING:Ljava/lang/String; = "finish_pending"

.field private static final KEY_UNLOCK_BACKUP_INFO:Ljava/lang/String; = "unlock_backup_info"

.field private static final KEY_UNLOCK_SET_BIOMETRIC_WEAK:Ljava/lang/String; = "unlock_set_biometric_weak"

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
.field private mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEncryptionRequestDisabled:Z

.field private mEncryptionRequestQuality:I

.field private mFinishPending:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordConfirmed:Z

.field private mRequirePassword:Z

.field private mWaitingForConfirmation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 101
    iput-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 102
    iput-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 103
    iput-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 580
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private allowedForFallback(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 416
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

.method private getBiometricSensorIntent()Landroid/content/Intent;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 421
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/android/settings_ex/ChooseLockGeneric$InternalActivity;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 423
    .local v0, "fallBackIntent":Landroid/content/Intent;
    const-string v4, "lockscreen.biometric_weak_fallback"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 424
    const-string v4, "confirm_credentials"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 425
    const-string v4, ":settings:show_fragment_title"

    const v5, 0x7f09027d

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 428
    const/4 v3, 0x1

    .line 430
    .local v3, "showTutorial":Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 431
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.android.facelock"

    const-string v5, "com.android.facelock.SetupIntro"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    const-string v4, "showTutorial"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 433
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 434
    .local v2, "pending":Landroid/app/PendingIntent;
    const-string v4, "PendingIntent"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 435
    return-object v1
.end method

.method private getResIdForFactoryResetProtectionWarningTitle()I
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 536
    const v0, 0x7f09029b

    :goto_0
    return v0

    .line 527
    :sswitch_0
    const v0, 0x7f090298

    goto :goto_0

    .line 530
    :sswitch_1
    const v0, 0x7f090299

    goto :goto_0

    .line 534
    :sswitch_2
    const v0, 0x7f09029a

    goto :goto_0

    .line 525
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
    .line 541
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
    .locals 6
    .param p1, "quality"    # I
    .param p2, "disabled"    # Z

    .prologue
    const/4 v4, 0x0

    .line 182
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->isOwner()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 183
    iput p1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    .line 184
    iput-boolean p2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    .line 185
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 189
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 190
    .local v0, "accEn":Z
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-virtual {v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v3

    .line 191
    .local v3, "required":Z
    invoke-virtual {p0, v1, p1, v3}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getEncryptionInterstitialIntent(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object v2

    .line 192
    .local v2, "intent":Landroid/content/Intent;
    const/16 v4, 0x66

    invoke-virtual {p0, v2, v4}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 197
    .end local v0    # "accEn":Z
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "required":Z
    :goto_0
    return-void

    .line 194
    :cond_1
    iput-boolean v4, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    .line 195
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0
.end method

.method private setUnlockMethod(Ljava/lang/String;)Z
    .locals 4
    .param p1, "unlockMethod"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 546
    const v2, 0x16058

    invoke-static {v2, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 548
    const-string v2, "unlock_set_off"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 549
    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    :goto_0
    move v0, v1

    .line 570
    :goto_1
    return v0

    .line 551
    :cond_0
    const-string v2, "unlock_set_none"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 552
    invoke-virtual {p0, v0, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 554
    :cond_1
    const-string v2, "unlock_set_biometric_weak"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 555
    const v2, 0x8000

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 557
    :cond_2
    const-string v2, "unlock_set_pattern"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 558
    const/high16 v2, 0x10000

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 560
    :cond_3
    const-string v2, "unlock_set_pin"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 561
    const/high16 v2, 0x20000

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 563
    :cond_4
    const-string v2, "unlock_set_password"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 564
    const/high16 v2, 0x40000

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 567
    :cond_5
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
    .line 574
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getResIdForFactoryResetProtectionWarningTitle()I

    move-result v1

    .line 575
    .local v1, "title":I
    invoke-static {v1, p1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->newInstance(ILjava/lang/String;)Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    move-result-object v0

    .line 577
    .local v0, "dialog":Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "frp_warning_dialog"

    invoke-virtual {v0, v2, v3}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 578
    return-void
.end method

.method private updatePreferenceSummaryIfNeeded()V
    .locals 8

    .prologue
    const/4 v6, -0x1

    .line 383
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncrypted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 406
    :cond_0
    return-void

    .line 387
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

    .line 392
    const v5, 0x7f09075b

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 394
    .local v4, "summary":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 395
    .local v3, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    .line 396
    .local v2, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 397
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 398
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

    .line 396
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
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

    .line 402
    :pswitch_0
    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 398
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
    .locals 11

    .prologue
    const v10, 0x7f06005c

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 248
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 249
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "lockscreen.password_type"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 250
    .local v4, "quality":I
    const-string v2, ""

    .line 251
    .local v2, "mFromName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "from_opfinger"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "from_opfinger"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .end local v2    # "mFromName":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 255
    .restart local v2    # "mFromName":Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_1

    const-string v5, ""

    if-ne v2, v5, :cond_2

    .line 256
    :cond_1
    const-string v5, "from_opfinger"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 259
    :cond_2
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updatePreferencesOrFinish-*-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 260
    if-eqz v2, :cond_4

    const-string v5, "from_opfinger"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 261
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "updatePreferencesOrFinish------1"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 263
    .local v3, "prefScreen":Landroid/preference/PreferenceScreen;
    if-eqz v3, :cond_3

    .line 264
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 266
    :cond_3
    invoke-virtual {p0, v10}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferencesFromResource(I)V

    .line 267
    const-string v5, "unlock_set_off"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->removePreference(Ljava/lang/String;)V

    .line 268
    const-string v5, "unlock_set_none"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->removePreference(Ljava/lang/String;)V

    .line 269
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferenceSummaryIfNeeded()V

    .line 287
    .end local v3    # "prefScreen":Landroid/preference/PreferenceScreen;
    :goto_0
    return-void

    .line 270
    :cond_4
    if-ne v4, v8, :cond_6

    .line 271
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "updatePreferencesOrFinish------2"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 273
    const-string v5, "minimum_quality"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 274
    new-instance v0, Landroid/util/MutableBoolean;

    invoke-direct {v0, v9}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 275
    .local v0, "allowBiometric":Landroid/util/MutableBoolean;
    invoke-direct {p0, v4, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(ILandroid/util/MutableBoolean;)I

    move-result v4

    .line 276
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 277
    .restart local v3    # "prefScreen":Landroid/preference/PreferenceScreen;
    if-eqz v3, :cond_5

    .line 278
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 280
    :cond_5
    invoke-virtual {p0, v10}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferencesFromResource(I)V

    .line 281
    invoke-virtual {p0, v4, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(ILandroid/util/MutableBoolean;)V

    .line 282
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferenceSummaryIfNeeded()V

    goto :goto_0

    .line 284
    .end local v0    # "allowBiometric":Landroid/util/MutableBoolean;
    .end local v3    # "prefScreen":Landroid/preference/PreferenceScreen;
    :cond_6
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "updatePreferencesOrFinish------3"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0, v4, v9}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0
.end method

.method private upgradeQuality(ILandroid/util/MutableBoolean;)I
    .locals 0
    .param p1, "quality"    # I
    .param p2, "allowBiometric"    # Landroid/util/MutableBoolean;

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForDPM(I)I

    move-result p1

    .line 292
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForKeyStore(I)I

    move-result p1

    .line 293
    return p1
.end method

.method private upgradeQualityForDPM(I)I
    .locals 3
    .param p1, "quality"    # I

    .prologue
    .line 298
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    .line 299
    .local v0, "minQuality":I
    if-ge p1, v0, :cond_0

    .line 300
    move p1, v0

    .line 302
    :cond_0
    return p1
.end method

.method private upgradeQualityForKeyStore(I)I
    .locals 1
    .param p1, "quality"    # I

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_0

    .line 308
    const/high16 p1, 0x10000

    .line 311
    :cond_0
    return p1
.end method


# virtual methods
.method protected disableUnusablePreferences(ILandroid/util/MutableBoolean;)V
    .locals 1
    .param p1, "quality"    # I
    .param p2, "allowBiometric"    # Landroid/util/MutableBoolean;

    .prologue
    .line 323
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferencesImpl(ILandroid/util/MutableBoolean;Z)V

    .line 324
    return-void
.end method

.method protected disableUnusablePreferencesImpl(ILandroid/util/MutableBoolean;Z)V
    .locals 15
    .param p1, "quality"    # I
    .param p2, "allowBiometric"    # Landroid/util/MutableBoolean;
    .param p3, "hideDisabled"    # Z

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 336
    .local v2, "entries":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 337
    .local v4, "intent":Landroid/content/Intent;
    const-string v13, "lockscreen.biometric_weak_fallback"

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 339
    .local v7, "onlyShowFallback":Z
    iget-object v13, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v13}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v12

    .line 343
    .local v12, "weakBiometricAvailable":Z
    const-string v13, "user"

    invoke-virtual {p0, v13}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 344
    .local v6, "mUm":Landroid/os/UserManager;
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v10

    .line 345
    .local v10, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    const/4 v9, 0x1

    .line 347
    .local v9, "singleUser":Z
    :goto_0
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v13

    add-int/lit8 v3, v13, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_13

    .line 348
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    .line 349
    .local v8, "pref":Landroid/preference/Preference;
    instance-of v13, v8, Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_3

    move-object v13, v8

    .line 350
    check-cast v13, Landroid/preference/PreferenceScreen;

    invoke-virtual {v13}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 351
    .local v5, "key":Ljava/lang/String;
    const/4 v1, 0x1

    .line 352
    .local v1, "enabled":Z
    const/4 v11, 0x1

    .line 353
    .local v11, "visible":Z
    const-string v13, "unlock_set_off"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 354
    if-gtz p1, :cond_5

    const/4 v1, 0x1

    .line 355
    :goto_2
    move v11, v9

    .line 369
    :cond_0
    :goto_3
    if-eqz p3, :cond_1

    .line 370
    if-eqz v11, :cond_11

    if-eqz v1, :cond_11

    const/4 v11, 0x1

    .line 372
    :cond_1
    :goto_4
    if-eqz v11, :cond_2

    if-eqz v7, :cond_12

    invoke-direct {p0, v5}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->allowedForFallback(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_12

    .line 373
    :cond_2
    invoke-virtual {v2, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 347
    .end local v1    # "enabled":Z
    .end local v5    # "key":Ljava/lang/String;
    .end local v11    # "visible":Z
    :cond_3
    :goto_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 345
    .end local v3    # "i":I
    .end local v8    # "pref":Landroid/preference/Preference;
    .end local v9    # "singleUser":Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    .line 354
    .restart local v1    # "enabled":Z
    .restart local v3    # "i":I
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v8    # "pref":Landroid/preference/Preference;
    .restart local v9    # "singleUser":Z
    .restart local v11    # "visible":Z
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 356
    :cond_6
    const-string v13, "unlock_set_none"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 357
    if-gtz p1, :cond_7

    const/4 v1, 0x1

    :goto_6
    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    goto :goto_6

    .line 358
    :cond_8
    const-string v13, "unlock_set_biometric_weak"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 359
    const v13, 0x8000

    move/from16 v0, p1

    if-le v0, v13, :cond_9

    move-object/from16 v0, p2

    iget-boolean v13, v0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v13, :cond_a

    :cond_9
    const/4 v1, 0x1

    .line 361
    :goto_7
    move v11, v12

    goto :goto_3

    .line 359
    :cond_a
    const/4 v1, 0x0

    goto :goto_7

    .line 362
    :cond_b
    const-string v13, "unlock_set_pattern"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 363
    const/high16 v13, 0x10000

    move/from16 v0, p1

    if-gt v0, v13, :cond_c

    const/4 v1, 0x1

    :goto_8
    goto :goto_3

    :cond_c
    const/4 v1, 0x0

    goto :goto_8

    .line 364
    :cond_d
    const-string v13, "unlock_set_pin"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 365
    const/high16 v13, 0x30000

    move/from16 v0, p1

    if-gt v0, v13, :cond_e

    const/4 v1, 0x1

    :goto_9
    goto :goto_3

    :cond_e
    const/4 v1, 0x0

    goto :goto_9

    .line 366
    :cond_f
    const-string v13, "unlock_set_password"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 367
    const/high16 v13, 0x60000

    move/from16 v0, p1

    if-gt v0, v13, :cond_10

    const/4 v1, 0x1

    :goto_a
    goto :goto_3

    :cond_10
    const/4 v1, 0x0

    goto :goto_a

    .line 370
    :cond_11
    const/4 v11, 0x0

    goto :goto_4

    .line 374
    :cond_12
    if-nez v1, :cond_3

    .line 375
    const v13, 0x7f090290

    invoke-virtual {v8, v13}, Landroid/preference/Preference;->setSummary(I)V

    .line 376
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_5

    .line 380
    .end local v1    # "enabled":Z
    .end local v5    # "key":Ljava/lang/String;
    .end local v8    # "pref":Landroid/preference/Preference;
    .end local v11    # "visible":Z
    :cond_13
    return-void
.end method

.method protected getEncryptionInterstitialIntent(Landroid/content/Context;IZ)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "required"    # Z

    .prologue
    .line 453
    invoke-static {p1, p2, p3}, Lcom/android/settings_ex/EncryptionInterstitial;->createStartIntent(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 521
    const v0, 0x7f090a21

    return v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IZIIZZ)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "isFallback"    # Z
    .param p4, "minLength"    # I
    .param p5, "maxLength"    # I
    .param p6, "requirePasswordToDecrypt"    # Z
    .param p7, "confirmCredentials"    # Z

    .prologue
    .line 441
    invoke-static/range {p1 .. p7}, Lcom/android/settings_ex/ChooseLockPassword;->createIntent(Landroid/content/Context;IZIIZZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZZZ)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isFallback"    # Z
    .param p3, "requirePassword"    # Z
    .param p4, "confirmCredentials"    # Z

    .prologue
    .line 447
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings_ex/ChooseLockPattern;->createIntent(Landroid/content/Context;ZZZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
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

    .line 216
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 217
    iput-boolean v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 218
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 219
    iput-boolean v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 220
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 234
    :goto_0
    return-void

    .line 221
    :cond_0
    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->deleteTempGallery()V

    .line 223
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 224
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 225
    :cond_1
    const/16 v0, 0x66

    if-ne p1, v0, :cond_2

    if-ne p2, v1, :cond_2

    .line 227
    const-string v0, "extra_require_password"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    .line 229
    iget v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    iget-boolean v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 231
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 232
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 111
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 114
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    .line 115
    new-instance v2, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 116
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 119
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "confirm_credentials"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 121
    .local v0, "confirmCredentials":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings_ex/ChooseLockGeneric$InternalActivity;

    if-eqz v2, :cond_0

    .line 122
    if-nez v0, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 125
    :cond_0
    if-eqz p1, :cond_1

    .line 126
    const-string v2, "password_confirmed"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 127
    const-string v2, "waiting_for_confirmation"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 128
    const-string v2, "finish_pending"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 129
    const-string v2, "encrypt_requested_quality"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    .line 130
    const-string v2, "encrypt_requested_disabled"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    .line 134
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v2, :cond_4

    .line 135
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "updatePreferencesOrFinish---1"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 136
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 148
    :cond_2
    :goto_1
    return-void

    .line 122
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 137
    :cond_4
    iget-boolean v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    if-nez v2, :cond_2

    .line 138
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 140
    .local v1, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    const/16 v2, 0x64

    invoke-virtual {v1, v2, v5, v5}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 141
    iput-boolean v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 142
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "updatePreferencesOrFinish---2"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto :goto_1

    .line 145
    :cond_5
    iput-boolean v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 202
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 203
    .local v2, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 205
    .local v1, "onlyShowFallback":Z
    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0400e8

    invoke-static {v3, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 208
    .local v0, "header":Landroid/view/View;
    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    invoke-virtual {v3, v0, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 211
    .end local v0    # "header":Landroid/view/View;
    :cond_0
    return-object v2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 162
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "key":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->isUnlockMethodSecure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    invoke-direct {p0, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->showFactoryResetProtectionWarningDialog(Ljava/lang/String;)V

    .line 168
    const/4 v1, 0x1

    .line 170
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 153
    iget-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 155
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 157
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 238
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 240
    const-string v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 241
    const-string v0, "waiting_for_confirmation"

    iget-boolean v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 242
    const-string v0, "finish_pending"

    iget-boolean v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 243
    const-string v0, "encrypt_requested_quality"

    iget v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 244
    const-string v0, "encrypt_requested_disabled"

    iget-boolean v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 245
    return-void
.end method

.method updateUnlockMethodAndFinish(IZ)V
    .locals 12
    .param p1, "quality"    # I
    .param p2, "disabled"    # Z

    .prologue
    const/4 v6, 0x0

    const/high16 v11, 0x2000000

    const/16 v10, 0x65

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 467
    iget-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-nez v0, :cond_0

    .line 468
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Tried to update password without confirming it"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 474
    .local v3, "isFallback":Z
    invoke-direct {p0, p1, v6}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(ILandroid/util/MutableBoolean;)I

    move-result p1

    .line 476
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 477
    .local v1, "context":Landroid/content/Context;
    const/high16 v0, 0x20000

    if-lt p1, v0, :cond_3

    .line 478
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v4

    .line 479
    .local v4, "minLength":I
    const/4 v0, 0x4

    if-ge v4, v0, :cond_1

    .line 480
    const/4 v4, 0x4

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v5

    .line 483
    .local v5, "maxLength":I
    iget-boolean v6, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(Landroid/content/Context;IZIIZZ)Landroid/content/Intent;

    move-result-object v8

    .line 485
    .local v8, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_2

    .line 486
    invoke-virtual {p0, v8, v10}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 517
    .end local v4    # "minLength":I
    .end local v5    # "maxLength":I
    .end local v8    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 489
    .restart local v4    # "minLength":I
    .restart local v5    # "maxLength":I
    .restart local v8    # "intent":Landroid/content/Intent;
    :cond_2
    iput-boolean v9, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 490
    invoke-virtual {v8, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 491
    invoke-virtual {p0, v8}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 493
    .end local v4    # "minLength":I
    .end local v5    # "maxLength":I
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_3
    const/high16 v0, 0x10000

    if-ne p1, v0, :cond_5

    .line 494
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateUnlockMethodAndFinish---getLockPatternIntent:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 495
    iget-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    invoke-virtual {p0, v1, v3, v0, v7}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPatternIntent(Landroid/content/Context;ZZZ)Landroid/content/Intent;

    move-result-object v8

    .line 497
    .restart local v8    # "intent":Landroid/content/Intent;
    if-eqz v3, :cond_4

    .line 498
    invoke-virtual {p0, v8, v10}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 501
    :cond_4
    iput-boolean v9, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 502
    invoke-virtual {v8, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 503
    invoke-virtual {p0, v8}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 505
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_5
    const v0, 0x8000

    if-ne p1, v0, :cond_6

    .line 506
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getBiometricSensorIntent()Landroid/content/Intent;

    move-result-object v8

    .line 507
    .restart local v8    # "intent":Landroid/content/Intent;
    iput-boolean v9, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 508
    invoke-virtual {p0, v8}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 509
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_6
    if-nez p1, :cond_7

    .line 510
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 511
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 512
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 513
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 515
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0
.end method
