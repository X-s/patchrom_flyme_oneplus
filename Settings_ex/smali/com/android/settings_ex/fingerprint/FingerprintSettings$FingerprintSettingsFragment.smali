.class public Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintSettingsFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;,
        Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;
    }
.end annotation


# static fields
.field private static final ADD_FINGERPRINT_REQUEST:I = 0xa

.field private static final CHOOSE_LOCK_GENERIC_REQUEST:I = 0x66

.field private static final CONFIRM_REQUEST:I = 0x65

.field protected static final DEBUG:Z = true

.field private static final KEY_FINGERPRINT_ADD:Ljava/lang/String; = "key_fingerprint_add"

.field private static final KEY_FINGERPRINT_ENABLE_KEYGUARD_TOGGLE:Ljava/lang/String; = "fingerprint_enable_keyguard_toggle"

.field private static final KEY_FINGERPRINT_ITEM_PREFIX:Ljava/lang/String; = "key_fingerprint_item"

.field private static final KEY_LAUNCHED_CONFIRM:Ljava/lang/String; = "launched_confirm"

.field private static final MAX_RETRY_ATTEMPTS:I = 0x14

.field private static final MSG_FINGER_AUTH_ERROR:I = 0x3eb

.field private static final MSG_FINGER_AUTH_FAIL:I = 0x3ea

.field private static final MSG_FINGER_AUTH_HELP:I = 0x3ec

.field private static final MSG_FINGER_AUTH_SUCCESS:I = 0x3e9

.field private static final MSG_REFRESH_FINGERPRINT_TEMPLATES:I = 0x3e8

.field private static final RESET_HIGHLIGHT_DELAY_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "FingerprintSettings"


# instance fields
.field private mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private mFingerprintCancel:Landroid/os/CancellationSignal;

.field private final mFingerprintLockoutReset:Ljava/lang/Runnable;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private final mHandler:Landroid/os/Handler;

.field private mHighlightDrawable:Landroid/graphics/drawable/Drawable;

.field private mInFingerprintLockout:Z

.field private mLaunchedConfirm:Z

.field private mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

.field private mToken:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 137
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$1;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 161
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    .line 177
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 520
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$5;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    .line 629
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateAddPreference()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
    .param p1, "x1"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->deleteFingerPrint(Landroid/hardware/fingerprint/Fingerprint;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
    .param p1, "x1"    # Landroid/os/CancellationSignal;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->highlightFingerprintItem(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->retryFingerprint()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->renameFingerPrint(ILjava/lang/String;)V

    return-void
.end method

.method private addFingerprintItemPreferences(Landroid/preference/PreferenceGroup;)V
    .locals 7
    .param p1, "root"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 323
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 324
    iget-object v6, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v6}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v4

    .line 325
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 326
    .local v1, "fingerprintCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 327
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    .line 328
    .local v3, "item":Landroid/hardware/fingerprint/Fingerprint;
    new-instance v5, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;-><init>(Landroid/content/Context;)V

    .line 329
    .local v5, "pref":Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;
    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->genKey(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;->setKey(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 331
    invoke-virtual {v5, v3}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;->setFingerprint(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 332
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;->setPersistent(Z)V

    .line 333
    invoke-virtual {p1, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 334
    invoke-virtual {v5, p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 326
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 336
    .end local v3    # "item":Landroid/hardware/fingerprint/Fingerprint;
    .end local v5    # "pref":Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;
    :cond_0
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 337
    .local v0, "addPreference":Landroid/preference/Preference;
    const-string v6, "key_fingerprint_add"

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 338
    const v6, 0x7f0c03ea

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 339
    const v6, 0x7f020033

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setIcon(I)V

    .line 340
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 341
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 342
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateAddPreference()V

    .line 343
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 313
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 316
    :cond_0
    const v1, 0x7f080066

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->addPreferencesFromResource(I)V

    .line 317
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 318
    invoke-direct {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->addFingerprintItemPreferences(Landroid/preference/PreferenceGroup;)V

    .line 319
    return-object v0
.end method

.method private deleteFingerPrint(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 2
    .param p1, "fingerPrint"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    invoke-virtual {v0, p1, v1}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    .line 513
    return-void
.end method

.method private static genKey(I)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_fingerprint_item_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHighlightDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 463
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 465
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 466
    const v1, 0x7f020153

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    .line 469
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    return-object v1
.end method

.method private highlightFingerprintItem(I)V
    .locals 10
    .param p1, "fpId"    # I

    .prologue
    .line 473
    invoke-static {p1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->genKey(I)Ljava/lang/String;

    move-result-object v4

    .line 474
    .local v4, "prefName":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;

    .line 475
    .local v2, "fpref":Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getHighlightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 476
    .local v3, "highlight":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 477
    invoke-virtual {v2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;->getView()Landroid/view/View;

    move-result-object v5

    .line 478
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v0, v6, 0x2

    .line 479
    .local v0, "centerX":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v1, v6, 0x2

    .line 480
    .local v1, "centerY":I
    int-to-float v6, v0

    int-to-float v7, v1

    invoke-virtual {v3, v6, v7}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 481
    invoke-virtual {v5, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 482
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setPressed(Z)V

    .line 483
    iget-object v6, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;

    invoke-direct {v7, p0, v5}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Landroid/view/View;)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 491
    .end local v0    # "centerX":I
    .end local v1    # "centerY":I
    .end local v5    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private isFingerprintDisabled()Z
    .locals 2

    .prologue
    .line 287
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 289
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private launchChooseOrConfirmLock()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 494
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 495
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v6

    .line 496
    .local v6, "challenge":J
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 497
    .local v1, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    const/16 v2, 0x65

    const v3, 0x7f0c03e7

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 500
    const-string v2, "com.android.settings"

    const-class v3, Lcom/android/settings_ex/ChooseLockGeneric;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 501
    const-string v2, "minimum_quality"

    const/high16 v3, 0x10000

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 503
    const-string v2, "hide_disabled_prefs"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 505
    const-string v2, "has_challenge"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 506
    const-string v2, "challenge"

    invoke-virtual {v0, v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 507
    const/16 v2, 0x66

    invoke-virtual {p0, v0, v2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 509
    :cond_0
    return-void
.end method

.method private renameFingerPrint(ILjava/lang/String;)V
    .locals 1
    .param p1, "fingerId"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->rename(ILjava/lang/String;)V

    .line 517
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updatePreferences()V

    .line 518
    return-void
.end method

.method private retryFingerprint()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 239
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    .line 241
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    .line 244
    :cond_0
    return-void
.end method

.method private showRenameDeleteDialog(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 4
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 406
    new-instance v1, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;

    invoke-direct {v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;-><init>()V

    .line 407
    .local v1, "renameDeleteDialog":Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 408
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "fingerprint"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 409
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->setArguments(Landroid/os/Bundle;)V

    .line 410
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 411
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-class v3, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method private stopFingerprint()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 208
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    .line 209
    return-void
.end method

.method private updateAddPreference()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 347
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e00a2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 349
    .local v1, "max":I
    iget-object v6, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v6}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, v1, :cond_0

    move v3, v4

    .line 350
    .local v3, "tooMany":Z
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c040d

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, "maxSummary":Ljava/lang/CharSequence;
    :goto_1
    const-string v6, "key_fingerprint_add"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 353
    .local v0, "addPreference":Landroid/preference/Preference;
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 354
    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 355
    return-void

    .end local v0    # "addPreference":Landroid/preference/Preference;
    .end local v2    # "maxSummary":Ljava/lang/CharSequence;
    .end local v3    # "tooMany":Z
    :cond_0
    move v3, v5

    .line 349
    goto :goto_0

    .line 350
    .restart local v3    # "tooMany":Z
    :cond_1
    const-string v2, ""

    goto :goto_1

    .restart local v0    # "addPreference":Landroid/preference/Preference;
    .restart local v2    # "maxSummary":Ljava/lang/CharSequence;
    :cond_2
    move v4, v5

    .line 354
    goto :goto_2
.end method

.method private updatePreferences()V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 371
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->retryFingerprint()V

    .line 372
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 428
    const v0, 0x7f0c0bd7

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 248
    const/16 v0, 0x31

    return v0
.end method

.method protected handleError(ILjava/lang/CharSequence;)V
    .locals 6
    .param p1, "errMsgId"    # I
    .param p2, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 215
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    .line 216
    packed-switch p1, :pswitch_data_0

    .line 229
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 230
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 231
    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 235
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->retryFingerprint()V

    .line 236
    .end local v0    # "activity":Landroid/app/Activity;
    :pswitch_1
    return-void

    .line 220
    :pswitch_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    .line 222
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7530

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 433
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 434
    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    const/16 v0, 0x65

    if-ne p1, v0, :cond_2

    .line 436
    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 438
    :cond_1
    if-eqz p3, :cond_2

    .line 439
    const-string v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    .line 445
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    if-nez v0, :cond_3

    .line 447
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 449
    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 253
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 254
    if-eqz p1, :cond_0

    .line 255
    const-string v1, "hw_auth_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    .line 257
    const-string v1, "launched_confirm"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 262
    .local v0, "activity":Landroid/app/Activity;
    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 266
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    if-nez v1, :cond_1

    .line 267
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    .line 268
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->launchChooseOrConfirmLock()V

    .line 270
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 453
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 454
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    move-result v0

    .line 456
    .local v0, "result":I
    if-gez v0, :cond_0

    .line 457
    const-string v1, "FingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postEnroll failed: result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    .end local v0    # "result":I
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 376
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 377
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->stopFingerprint()V

    .line 378
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 416
    const/4 v1, 0x1

    .line 417
    .local v1, "result":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "key":Ljava/lang/String;
    const-string v2, "fingerprint_enable_keyguard_toggle"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 423
    :goto_0
    return v1

    .line 421
    :cond_0
    const-string v2, "FingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 389
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 390
    .local v3, "key":Ljava/lang/String;
    const-string v4, "key_fingerprint_add"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 391
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 392
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "com.android.settings"

    const-class v5, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    const-string v4, "hw_auth_token"

    iget-object v5, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 395
    const/16 v4, 0xa

    invoke-virtual {p0, v2, v4}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 402
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    .line 396
    :cond_1
    instance-of v4, p2, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;

    if-eqz v4, :cond_0

    move-object v1, p2

    .line 397
    check-cast v1, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;

    .line 398
    .local v1, "fpref":Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;
    invoke-virtual {v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v0

    .line 399
    .local v0, "fp":Landroid/hardware/fingerprint/Fingerprint;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->showRenameDeleteDialog(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 400
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 363
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 366
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updatePreferences()V

    .line 367
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 382
    const-string v0, "hw_auth_token"

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 384
    const-string v0, "launched_confirm"

    iget-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 385
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 274
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040067

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 277
    .local v0, "v":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->isFingerprintDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0c040b

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getHelpResource()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$LearnMoreSpan;->linkify(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    new-instance v1, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v1}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 282
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 283
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 284
    return-void

    .line 277
    :cond_0
    const v1, 0x7f0c040a

    goto :goto_0
.end method

.method protected removeFingerprintPreference(I)V
    .locals 5
    .param p1, "fingerprintId"    # I

    .prologue
    .line 294
    invoke-static {p1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->genKey(I)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 296
    .local v1, "prefToRemove":Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 297
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 298
    const-string v2, "FingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove preference with key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    const-string v2, "FingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find preference to remove: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
