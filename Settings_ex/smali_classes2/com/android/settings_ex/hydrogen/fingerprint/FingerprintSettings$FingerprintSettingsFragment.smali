.class public Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintSettingsFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment$1;,
        Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;,
        Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;,
        Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;,
        Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;,
        Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;
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

.field private mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 0
    .param p1, "fingerPrint"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->deleteFingerPrint(Landroid/hardware/fingerprint/Fingerprint;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;I)V
    .locals 0
    .param p1, "fpId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->highlightFingerprintItem(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;ILjava/lang/String;)V
    .locals 0
    .param p1, "fingerId"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->renameFingerPrint(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->retryFingerprint()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateAddPreference()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 166
    new-instance v0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment$1;-><init>(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 190
    new-instance v0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;-><init>(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    .line 206
    new-instance v0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;-><init>(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 556
    new-instance v0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;-><init>(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    .line 133
    return-void
.end method

.method private addFingerprintItemPreferences(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 8
    .param p1, "root"    # Landroid/support/v7/preference/PreferenceGroup;

    .prologue
    .line 350
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 351
    iget-object v6, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v7, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v6, v7}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v4

    .line 352
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 353
    .local v1, "fingerprintCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 354
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    .line 355
    .local v3, "item":Landroid/hardware/fingerprint/Fingerprint;
    new-instance v5, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintPreference;-><init>(Landroid/content/Context;)V

    .line 356
    .local v5, "pref":Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintPreference;
    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->genKey(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintPreference;->setKey(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 358
    invoke-virtual {v5, v3}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintPreference;->setFingerprint(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 359
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintPreference;->setPersistent(Z)V

    .line 360
    invoke-virtual {p1, v5}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 361
    invoke-virtual {v5, p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 353
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 363
    .end local v3    # "item":Landroid/hardware/fingerprint/Fingerprint;
    .end local v5    # "pref":Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintPreference;
    :cond_0
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 364
    .local v0, "addPreference":Landroid/support/v7/preference/Preference;
    const-string/jumbo v6, "key_fingerprint_add"

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 365
    const v6, 0x7f0e05dd

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 366
    const v6, 0x7f0200d6

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 367
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 368
    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 369
    invoke-direct {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateAddPreference()V

    .line 349
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 339
    .local v0, "root":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 342
    :cond_0
    const v1, 0x7f080073

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->addPreferencesFromResource(I)V

    .line 343
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 344
    invoke-direct {p0, v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->addFingerprintItemPreferences(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 345
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 346
    return-object v0
.end method

.method private deleteFingerPrint(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 3
    .param p1, "fingerPrint"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    iget-object v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    .line 547
    return-void
.end method

.method private static genKey(I)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "key_fingerprint_item_"

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
    .line 497
    iget-object v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 499
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 500
    const v1, 0x7f02024b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    .line 503
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    return-object v1
.end method

.method private highlightFingerprintItem(I)V
    .locals 10
    .param p1, "fpId"    # I

    .prologue
    .line 507
    invoke-static {p1}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->genKey(I)Ljava/lang/String;

    move-result-object v4

    .line 508
    .local v4, "prefName":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintPreference;

    .line 509
    .local v2, "fpref":Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintPreference;
    invoke-direct {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getHighlightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 510
    .local v3, "highlight":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 511
    invoke-virtual {v2}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintPreference;->getView()Landroid/view/View;

    move-result-object v5

    .line 512
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v0, v6, 0x2

    .line 513
    .local v0, "centerX":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v1, v6, 0x2

    .line 514
    .local v1, "centerY":I
    int-to-float v6, v0

    int-to-float v7, v1

    invoke-virtual {v3, v6, v7}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 515
    invoke-virtual {v5, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 516
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setPressed(Z)V

    .line 517
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setPressed(Z)V

    .line 518
    iget-object v6, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment$5;

    invoke-direct {v7, p0, v5}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment$5;-><init>(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Landroid/view/View;)V

    .line 523
    const-wide/16 v8, 0x1f4

    .line 518
    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 506
    .end local v0    # "centerX":I
    .end local v1    # "centerY":I
    .end local v5    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private launchChooseOrConfirmLock()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 528
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 529
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v6

    .line 530
    .local v6, "challenge":J
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 532
    .local v1, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    const v2, 0x7f0e05da

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 533
    iget v8, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    .line 531
    const/16 v2, 0x65

    move-object v5, v4

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JI)Z

    move-result v2

    if-nez v2, :cond_0

    .line 534
    const-string/jumbo v2, "com.android.settings_ex"

    const-class v3, Lcom/android/settings_ex/ChooseLockGeneric;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    const-string/jumbo v2, "minimum_quality"

    .line 536
    const/high16 v3, 0x10000

    .line 535
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 537
    const-string/jumbo v2, "hide_disabled_prefs"

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 539
    const-string/jumbo v2, "has_challenge"

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 540
    const-string/jumbo v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 541
    const-string/jumbo v2, "challenge"

    invoke-virtual {v0, v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 542
    const-string/jumbo v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 543
    const/16 v2, 0x66

    invoke-virtual {p0, v0, v2}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 527
    :cond_0
    return-void
.end method

.method private renameFingerPrint(ILjava/lang/String;)V
    .locals 2
    .param p1, "fingerId"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v0, p1, v1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->rename(IILjava/lang/String;)V

    .line 553
    invoke-direct {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updatePreferences()V

    .line 551
    return-void
.end method

.method private retryFingerprint()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 269
    iget-boolean v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    .line 271
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    .line 272
    iget-object v4, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    iget v6, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    .line 271
    const/4 v3, 0x0

    move-object v5, v1

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V

    .line 268
    :cond_0
    return-void
.end method

.method private showRenameDeleteDialog(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 4
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 434
    new-instance v1, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;

    invoke-direct {v1}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;-><init>()V

    .line 435
    .local v1, "renameDeleteDialog":Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 436
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "fingerprint"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 437
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->setArguments(Landroid/os/Bundle;)V

    .line 438
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 439
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-class v3, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 433
    return-void
.end method

.method private stopFingerprint()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 235
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    .line 234
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    goto :goto_0
.end method

.method private updateAddPreference()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 374
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 375
    const v7, 0x10e00a1

    .line 374
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 376
    .local v1, "max":I
    iget-object v6, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v7, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v6, v7}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, v1, :cond_0

    move v3, v5

    .line 377
    .local v3, "tooMany":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 378
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const v8, 0x7f0e0609

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, "maxSummary":Ljava/lang/CharSequence;
    :goto_1
    const-string/jumbo v6, "key_fingerprint_add"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 380
    .local v0, "addPreference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 381
    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 372
    return-void

    .end local v0    # "addPreference":Landroid/support/v7/preference/Preference;
    .end local v2    # "maxSummary":Ljava/lang/CharSequence;
    .end local v3    # "tooMany":Z
    :cond_0
    move v3, v4

    .line 376
    goto :goto_0

    .line 378
    .restart local v3    # "tooMany":Z
    :cond_1
    const-string/jumbo v2, ""

    .restart local v2    # "maxSummary":Ljava/lang/CharSequence;
    goto :goto_1

    .restart local v0    # "addPreference":Landroid/support/v7/preference/Preference;
    :cond_2
    move v4, v5

    .line 381
    goto :goto_2
.end method

.method private updatePreferences()V
    .locals 0

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    .line 398
    invoke-direct {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->retryFingerprint()V

    .line 396
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 456
    const v0, 0x7f0e0d87

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 278
    const/16 v0, 0x31

    return v0
.end method

.method protected handleError(ILjava/lang/CharSequence;)V
    .locals 6
    .param p1, "errMsgId"    # I
    .param p2, "msg"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 245
    iput-object v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    .line 246
    packed-switch p1, :pswitch_data_0

    .line 259
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 260
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 261
    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 265
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->retryFingerprint()V

    .line 244
    return-void

    .line 248
    .end local v0    # "activity":Landroid/app/Activity;
    :pswitch_1
    return-void

    .line 250
    :pswitch_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    .line 252
    iget-object v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    .line 254
    const-wide/16 v4, 0x7530

    .line 253
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x3

    .line 461
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 462
    const/16 v1, 0x66

    if-eq p1, v1, :cond_0

    .line 463
    const/16 v1, 0x65

    if-ne p1, v1, :cond_4

    .line 464
    :cond_0
    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 466
    :cond_1
    if-eqz p3, :cond_2

    .line 468
    const-string/jumbo v1, "hw_auth_token"

    .line 467
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    .line 479
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    if-nez v1, :cond_3

    .line 481
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 460
    :cond_3
    return-void

    .line 471
    :cond_4
    const/16 v1, 0xa

    if-ne p1, v1, :cond_2

    .line 472
    if-ne p2, v2, :cond_2

    .line 473
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 474
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 475
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 283
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 284
    if-eqz p1, :cond_0

    .line 286
    const-string/jumbo v1, "hw_auth_token"

    .line 285
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    .line 288
    const-string/jumbo v1, "launched_confirm"

    const/4 v2, 0x0

    .line 287
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 291
    const-string/jumbo v2, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 290
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    .line 293
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 295
    .local v0, "activity":Landroid/app/Activity;
    const-string/jumbo v1, "fingerprint"

    .line 294
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 298
    iget-object v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    if-nez v1, :cond_1

    .line 299
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    .line 300
    invoke-direct {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->launchChooseOrConfirmLock()V

    .line 282
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 487
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 488
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    move-result v0

    .line 490
    .local v0, "result":I
    if-gez v0, :cond_0

    .line 491
    const-string/jumbo v1, "FingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "postEnroll failed: result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    .end local v0    # "result":I
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 403
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 404
    invoke-direct {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->stopFingerprint()V

    .line 402
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 444
    const/4 v1, 0x1

    .line 445
    .local v1, "result":Z
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v2, "fingerprint_enable_keyguard_toggle"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    :goto_0
    return v1

    .line 449
    :cond_0
    const-string/jumbo v2, "FingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 416
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 417
    .local v3, "key":Ljava/lang/String;
    const-string/jumbo v4, "key_fingerprint_add"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 418
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 419
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.settings_ex"

    .line 420
    const-class v5, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 419
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    const-string/jumbo v4, "android.intent.extra.USER_ID"

    iget v5, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 422
    const-string/jumbo v4, "hw_auth_token"

    iget-object v5, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 423
    const/16 v4, 0xa

    invoke-virtual {p0, v2, v4}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 430
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v4, 0x1

    return v4

    .line 424
    :cond_1
    instance-of v4, p1, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintPreference;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 425
    check-cast v1, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintPreference;

    .line 426
    .local v1, "fpref":Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintPreference;
    invoke-virtual {v1}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintPreference;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v0

    .line 427
    .local v0, "fp":Landroid/hardware/fingerprint/Fingerprint;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->showRenameDeleteDialog(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 428
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v4

    return v4
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 390
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 393
    invoke-direct {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updatePreferences()V

    .line 389
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 409
    const-string/jumbo v0, "hw_auth_token"

    .line 410
    iget-object v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    .line 409
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 411
    const-string/jumbo v0, "launched_confirm"

    iget-boolean v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 408
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 306
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 308
    const v3, 0x7f040086

    .line 307
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 310
    .local v1, "v":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    const/16 v4, 0x20

    .line 309
    invoke-static {v2, v4, v3}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 311
    .local v0, "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v0, :cond_0

    .line 312
    const v2, 0x7f0e0607

    .line 311
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 314
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getHelpResource()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 311
    invoke-static {v2, v3, v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$LearnMoreSpan;->linkify(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    new-instance v2, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v2}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 316
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->setFooterView(Landroid/view/View;)V

    .line 305
    return-void

    .line 313
    :cond_0
    const v2, 0x7f0e0606

    goto :goto_0
.end method

.method protected removeFingerprintPreference(I)V
    .locals 5
    .param p1, "fingerprintId"    # I

    .prologue
    .line 320
    invoke-static {p1}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->genKey(I)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 322
    .local v1, "prefToRemove":Landroid/support/v7/preference/Preference;
    if-eqz v1, :cond_1

    .line 323
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 324
    const-string/jumbo v2, "FingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to remove preference with key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    const-string/jumbo v2, "FingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t find preference to remove: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
