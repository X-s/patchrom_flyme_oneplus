.class public Lcom/android/settings_ex/users/AppRestrictionsFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AppRestrictionsFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings_exlib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/users/AppRestrictionsFragment$1;,
        Lcom/android/settings_ex/users/AppRestrictionsFragment$2;,
        Lcom/android/settings_ex/users/AppRestrictionsFragment$AppLoadingTask;,
        Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;,
        Lcom/android/settings_ex/users/AppRestrictionsFragment$RestrictionsResultReceiver;
    }
.end annotation


# static fields
.field private static final CUSTOM_REQUEST_CODE_START:I = 0x3e8

.field private static final DEBUG:Z = false

.field private static final DELIMITER:Ljava/lang/String; = ";"

.field public static final EXTRA_NEW_USER:Ljava/lang/String; = "new_user"

.field public static final EXTRA_USER_ID:Ljava/lang/String; = "user_id"

.field private static final MAX_APP_RESTRICTIONS:I = 0x64

.field private static final PKG_PREFIX:Ljava/lang/String; = "pkg_"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppList:Landroid/support/v7/preference/PreferenceGroup;

.field private mAppListChanged:Z

.field private mAppLoadingTask:Landroid/os/AsyncTask;

.field private mCustomRequestCode:I

.field private mCustomRequestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstTime:Z

.field private mHelper:Lcom/android/settings_exlib/users/AppRestrictionsHelper;

.field protected mIPm:Landroid/content/pm/IPackageManager;

.field private mNewUser:Z

.field protected mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageObserver:Landroid/content/BroadcastReceiver;

.field protected mRestrictedProfile:Z

.field private mSysPackageInfo:Landroid/content/pm/PackageInfo;

.field protected mUser:Landroid/os/UserHandle;

.field private mUserBackgrounding:Landroid/content/BroadcastReceiver;

.field protected mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/users/AppRestrictionsFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppListChanged:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/users/AppRestrictionsFragment;)Lcom/android/settings_exlib/users/AppRestrictionsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mHelper:Lcom/android/settings_exlib/users/AppRestrictionsHelper;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/users/AppRestrictionsFragment;Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)I
    .locals 1
    .param p1, "preference"    # Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->generateCustomActivityRequestCode(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/users/AppRestrictionsFragment;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->onPackageChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/users/AppRestrictionsFragment;Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "preference"    # Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    .param p2, "restrictions"    # Ljava/util/ArrayList;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->onRestrictionsReceived(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings_ex/users/AppRestrictionsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->populateApps()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-class v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mFirstTime:Z

    .line 105
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mCustomRequestCode:I

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    .line 111
    new-instance v0, Lcom/android/settings_ex/users/AppRestrictionsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$1;-><init>(Lcom/android/settings_ex/users/AppRestrictionsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserBackgrounding:Landroid/content/BroadcastReceiver;

    .line 125
    new-instance v0, Lcom/android/settings_ex/users/AppRestrictionsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$2;-><init>(Lcom/android/settings_ex/users/AppRestrictionsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mPackageObserver:Landroid/content/BroadcastReceiver;

    .line 69
    return-void
.end method

.method private addLocationAppRestrictionsPreference(Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)V
    .locals 6
    .param p1, "app"    # Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;
    .param p2, "p"    # Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .prologue
    const/4 v5, 0x0

    .line 451
    iget-object v1, p1, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    .line 452
    .local v1, "packageName":Ljava/lang/String;
    const v3, 0x7f020151

    invoke-virtual {p2, v3}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setIcon(I)V

    .line 453
    invoke-direct {p0, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setKey(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    .line 454
    invoke-static {v3, v4}, Lcom/android/settings_ex/users/RestrictionUtils;->getRestrictions(Landroid/content/Context;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v2

    .line 456
    .local v2, "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/RestrictionEntry;

    .line 457
    .local v0, "locationRestriction":Landroid/content/RestrictionEntry;
    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 458
    invoke-virtual {p2, v2}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setRestrictions(Ljava/util/ArrayList;)V

    .line 459
    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 460
    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v3

    invoke-virtual {p2, v3}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 461
    invoke-virtual {p2, v5}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setPersistent(Z)V

    .line 462
    invoke-virtual {p2, p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 463
    const/16 v3, 0x64

    invoke-virtual {p2, v3}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOrder(I)V

    .line 464
    iget-object v3, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v3, p2}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 450
    return-void
.end method

.method private findInArray([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "choiceEntries"    # [Ljava/lang/String;
    .param p2, "choiceValues"    # [Ljava/lang/String;
    .param p3, "selectedString"    # Ljava/lang/String;

    .prologue
    .line 772
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 773
    aget-object v1, p2, v0

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 774
    aget-object v1, p1, v0

    return-object v1

    .line 772
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 777
    :cond_1
    return-object p3
.end method

.method private generateCustomActivityRequestCode(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)I
    .locals 2
    .param p1, "preference"    # Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .prologue
    .line 736
    iget v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mCustomRequestCode:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mCustomRequestCode:I

    .line 737
    iget-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mCustomRequestCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    iget v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mCustomRequestCode:I

    return v0
.end method

.method private getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pkg_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPackageSummary(Landroid/content/pm/PackageInfo;Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;
    .param p2, "app"    # Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 432
    iget-object v0, p2, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->masterEntry:Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;

    if-eqz v0, :cond_1

    .line 433
    iget-boolean v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 434
    new-array v0, v3, [Ljava/lang/Object;

    .line 435
    iget-object v1, p2, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->masterEntry:Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;

    iget-object v1, v1, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    aput-object v1, v0, v2

    .line 434
    const v1, 0x7f0e0dd3

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 437
    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    .line 438
    iget-object v1, p2, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->masterEntry:Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;

    iget-object v1, v1, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    aput-object v1, v0, v2

    .line 437
    const v1, 0x7f0e0dd1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 439
    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 440
    const v0, 0x7f0e0dd2

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 442
    :cond_2
    return-object v1
.end method

.method private isAppEnabledForUser(Landroid/content/pm/PackageInfo;)Z
    .locals 4
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v2, 0x0

    .line 337
    if-nez p1, :cond_0

    return v2

    .line 338
    :cond_0
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 339
    .local v0, "flags":I
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 341
    .local v1, "privateFlags":I
    const/high16 v3, 0x800000

    and-int/2addr v3, v0

    if-eqz v3, :cond_1

    .line 342
    and-int/lit8 v3, v1, 0x1

    if-nez v3, :cond_1

    const/4 v2, 0x1

    .line 341
    :cond_1
    return v2
.end method

.method private static isAppUnsupportedInRestrictedProfile(Landroid/content/pm/PackageInfo;)Z
    .locals 2
    .param p0, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v0, 0x0

    .line 446
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isPlatformSigned(Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v0, 0x0

    .line 332
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mSysPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v1, v1, v0

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 332
    :cond_0
    return v0
.end method

.method private onAppSettingsIconClicked(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)V
    .locals 4
    .param p1, "preference"    # Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .prologue
    const/4 v1, 0x1

    .line 576
    invoke-virtual {p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "pkg_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 577
    invoke-virtual {p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isPanelOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 578
    invoke-direct {p0, p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->removeRestrictionsForApp(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    .line 583
    :goto_0
    invoke-virtual {p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isPanelOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setPanelOpen(Z)V

    .line 575
    :cond_1
    return-void

    .line 580
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "pkg_"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v0, p1, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    goto :goto_0
.end method

.method private onPackageChanged(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 291
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, "packageName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 294
    check-cast v2, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 296
    .local v2, "pref":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    if-nez v2, :cond_0

    return-void

    .line 298
    :cond_0
    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    .line 299
    :cond_1
    const-string/jumbo v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 290
    :cond_2
    :goto_0
    return-void

    .line 300
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private onRestrictionsReceived(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "preference"    # Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 669
    .local p2, "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    invoke-direct {p0, p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->removeRestrictionsForApp(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    .line 671
    const/4 v0, 0x1

    .line 672
    .local v0, "count":I
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/RestrictionEntry;

    .line 673
    .local v1, "entry":Landroid/content/RestrictionEntry;
    const/4 v3, 0x0

    .line 674
    .local v3, "p":Landroid/support/v7/preference/Preference;
    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 709
    .end local v3    # "p":Landroid/support/v7/preference/Preference;
    :goto_1
    if-eqz v3, :cond_0

    .line 710
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/Preference;->setPersistent(Z)V

    .line 711
    invoke-virtual {p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->getOrder()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 713
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "pkg_"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 714
    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 713
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 715
    iget-object v6, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v6, v3}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 716
    invoke-virtual {v3, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 717
    const v6, 0x7f0200c0

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 718
    invoke-static {p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->-get2(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 676
    .restart local v3    # "p":Landroid/support/v7/preference/Preference;
    :pswitch_0
    new-instance v3, Landroid/support/v14/preference/SwitchPreference;

    .end local v3    # "p":Landroid/support/v7/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 677
    .local v3, "p":Landroid/support/v7/preference/Preference;
    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 678
    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object v6, v3

    .line 679
    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 683
    .local v3, "p":Landroid/support/v7/preference/Preference;
    :pswitch_1
    new-instance v3, Landroid/support/v7/preference/ListPreference;

    .end local v3    # "p":Landroid/support/v7/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 684
    .local v3, "p":Landroid/support/v7/preference/Preference;
    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 685
    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getSelectedString()Ljava/lang/String;

    move-result-object v5

    .line 686
    .local v5, "value":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 687
    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getDescription()Ljava/lang/String;

    move-result-object v5

    .line 689
    :cond_1
    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, v5}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->findInArray([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object v6, v3

    .line 691
    check-cast v6, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    move-object v6, v3

    .line 692
    check-cast v6, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object v6, v3

    .line 693
    check-cast v6, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v6, v5}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    move-object v6, v3

    .line 694
    check-cast v6, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 697
    .end local v5    # "value":Ljava/lang/String;
    .local v3, "p":Landroid/support/v7/preference/Preference;
    :pswitch_2
    new-instance v3, Landroid/support/v14/preference/MultiSelectListPreference;

    .end local v3    # "p":Landroid/support/v7/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/support/v14/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;)V

    .line 698
    .local v3, "p":Landroid/support/v7/preference/Preference;
    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    move-object v6, v3

    .line 699
    check-cast v6, Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    move-object v6, v3

    .line 700
    check-cast v6, Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 701
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 702
    .local v4, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getAllSelectedStrings()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-object v6, v3

    .line 703
    check-cast v6, Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v6, v4}, Landroid/support/v14/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    move-object v6, v3

    .line 704
    check-cast v6, Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/MultiSelectListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 722
    .end local v1    # "entry":Landroid/content/RestrictionEntry;
    .end local v3    # "p":Landroid/support/v7/preference/Preference;
    .end local v4    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {p1, p2}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setRestrictions(Ljava/util/ArrayList;)V

    .line 723
    const/4 v6, 0x1

    if-ne v0, v6, :cond_3

    .line 724
    invoke-virtual {p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v6

    .line 723
    if-eqz v6, :cond_3

    .line 725
    invoke-virtual {p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v6

    .line 723
    if-eqz v6, :cond_3

    .line 727
    iget-object v6, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v6, p1}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 667
    :cond_3
    return-void

    .line 674
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private populateApps()V
    .locals 17

    .prologue
    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 347
    .local v3, "context":Landroid/content/Context;
    if-nez v3, :cond_0

    return-void

    .line 348
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 349
    .local v11, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    .line 350
    .local v6, "ipm":Landroid/content/pm/IPackageManager;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v15}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    .line 353
    .local v14, "userId":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/android/settings_ex/Utils;->getExistingUser(Landroid/os/UserManager;Landroid/os/UserHandle;)Landroid/content/pm/UserInfo;

    move-result-object v15

    if-nez v15, :cond_1

    .line 354
    return-void

    .line 356
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v15}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 357
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v15, "android.intent.action.GET_RESTRICTION_ENTRIES"

    invoke-direct {v13, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    .local v13, "restrictionsIntent":Landroid/content/Intent;
    const/4 v15, 0x0

    invoke-virtual {v11, v13, v15}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v12

    .line 359
    .local v12, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mHelper:Lcom/android/settings_exlib/users/AppRestrictionsHelper;

    invoke-virtual {v15}, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->getVisibleApps()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "app$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;

    .line 360
    .local v1, "app":Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;
    iget-object v9, v1, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    .line 361
    .local v9, "packageName":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 362
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 363
    .local v7, "isSettingsApp":Z
    new-instance v8, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v8, v15, v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    .line 364
    .local v8, "p":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v9}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->resolveInfoListHasPackage(Ljava/util/List;Ljava/lang/String;)Z

    move-result v5

    .line 365
    .local v5, "hasSettings":Z
    if-eqz v7, :cond_3

    .line 366
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v8}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->addLocationAppRestrictionsPreference(Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mHelper:Lcom/android/settings_exlib/users/AppRestrictionsHelper;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v9, v0}, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->setPackageSelected(Ljava/lang/String;Z)V

    goto :goto_0

    .line 371
    :cond_3
    const/4 v10, 0x0

    .line 374
    .local v10, "pi":Landroid/content/pm/PackageInfo;
    const/16 v15, 0x2040

    .line 373
    :try_start_0
    invoke-interface {v6, v9, v15, v14}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 379
    .end local v10    # "pi":Landroid/content/pm/PackageInfo;
    :goto_1
    if-eqz v10, :cond_2

    .line 382
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    if-eqz v15, :cond_4

    invoke-static {v10}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->isAppUnsupportedInRestrictedProfile(Landroid/content/pm/PackageInfo;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 385
    :cond_4
    iget-object v15, v1, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_8

    iget-object v15, v1, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    :goto_2
    invoke-virtual {v8, v15}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 386
    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 387
    iget-object v15, v1, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    invoke-virtual {v8, v15}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 388
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setKey(Ljava/lang/String;)V

    .line 389
    if-eqz v5, :cond_9

    iget-object v15, v1, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->masterEntry:Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;

    if-nez v15, :cond_9

    const/4 v15, 0x1

    :goto_3
    invoke-static {v8, v15}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->-wrap0(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    .line 390
    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setPersistent(Z)V

    .line 391
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 392
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 393
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getPackageSummary(Landroid/content/pm/PackageInfo;Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 394
    iget-boolean v15, v10, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    if-nez v15, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->isPlatformSigned(Landroid/content/pm/PackageInfo;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 395
    :cond_5
    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 396
    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setImmutable(Z)V

    .line 398
    if-eqz v5, :cond_2

    .line 403
    iget-object v15, v1, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->masterEntry:Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;

    if-nez v15, :cond_6

    .line 404
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8, v15}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    .line 409
    :cond_6
    :goto_4
    iget-object v15, v1, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->masterEntry:Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;

    if-eqz v15, :cond_7

    .line 410
    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setImmutable(Z)V

    .line 411
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mHelper:Lcom/android/settings_exlib/users/AppRestrictionsHelper;

    invoke-virtual {v15, v9}, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->isPackageSelected(Ljava/lang/String;)Z

    move-result v15

    invoke-virtual {v8, v15}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 413
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v15}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v15

    add-int/lit8 v15, v15, 0x2

    mul-int/lit8 v15, v15, 0x64

    invoke-virtual {v8, v15}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOrder(I)V

    .line 414
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mHelper:Lcom/android/settings_exlib/users/AppRestrictionsHelper;

    invoke-virtual {v8}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v15, v9, v0}, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->setPackageSelected(Ljava/lang/String;Z)V

    .line 415
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v15, v8}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_0

    .line 376
    .restart local v10    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v4

    .local v4, "e":Landroid/os/RemoteException;
    goto/16 :goto_1

    .line 385
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v10    # "pi":Landroid/content/pm/PackageInfo;
    :cond_8
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 389
    :cond_9
    const/4 v15, 0x0

    goto :goto_3

    .line 406
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mNewUser:Z

    if-nez v15, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->isAppEnabledForUser(Landroid/content/pm/PackageInfo;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 407
    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    goto :goto_4

    .line 417
    .end local v1    # "app":Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;
    .end local v5    # "hasSettings":Z
    .end local v7    # "isSettingsApp":Z
    .end local v8    # "p":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_b
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppListChanged:Z

    .line 420
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mNewUser:Z

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mFirstTime:Z

    if-eqz v15, :cond_c

    .line 421
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mFirstTime:Z

    .line 422
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mHelper:Lcom/android/settings_exlib/users/AppRestrictionsHelper;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->applyUserAppsStates(Lcom/android/settings_exlib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;)V

    .line 345
    :cond_c
    return-void
.end method

.method private removeRestrictionsForApp(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)V
    .locals 3
    .param p1, "preference"    # Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .prologue
    .line 569
    invoke-static {p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->-get2(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    .line 570
    .local v0, "p":Landroid/support/v7/preference/Preference;
    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 572
    .end local v0    # "p":Landroid/support/v7/preference/Preference;
    :cond_0
    invoke-static {p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->-get2(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 568
    return-void
.end method

.method private requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "preference"    # Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    .param p3, "invokeIfCustom"    # Z

    .prologue
    const/4 v2, 0x0

    .line 597
    iget-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v3}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v8

    .line 598
    .local v8, "oldEntries":Landroid/os/Bundle;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.GET_RESTRICTION_ENTRIES"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 599
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    const-string/jumbo v0, "android.intent.extra.restrictions_bundle"

    invoke-virtual {v1, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 601
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 602
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 603
    new-instance v3, Lcom/android/settings_ex/users/AppRestrictionsFragment$RestrictionsResultReceiver;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/settings_ex/users/AppRestrictionsFragment$RestrictionsResultReceiver;-><init>(Lcom/android/settings_ex/users/AppRestrictionsFragment;Ljava/lang/String;Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    .line 604
    const/4 v5, -0x1

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    .line 602
    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 595
    return-void
.end method

.method private resolveInfoListHasPackage(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 472
    .local p1, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 473
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 474
    const/4 v2, 0x1

    return v2

    .line 477
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private updateAllEntries(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "checked"    # Z

    .prologue
    .line 481
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 482
    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 483
    .local v1, "pref":Landroid/support/v7/preference/Preference;
    instance-of v2, v1, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    if-eqz v2, :cond_0

    .line 484
    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 485
    check-cast v1, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .end local v1    # "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v1, p2}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 481
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 480
    :cond_1
    return-void
.end method


# virtual methods
.method protected getAppPreferenceGroup()Landroid/support/v7/preference/PreferenceGroup;
    .locals 1

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 246
    const/16 v0, 0x61

    return v0
.end method

.method protected init(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 212
    if-eqz p1, :cond_2

    .line 213
    new-instance v2, Landroid/os/UserHandle;

    const-string/jumbo v3, "user_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    .line 224
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    if-nez v2, :cond_1

    .line 225
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    .line 228
    :cond_1
    new-instance v2, Lcom/android/settings_exlib/users/AppRestrictionsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-direct {v2, v3, v4}, Lcom/android/settings_exlib/users/AppRestrictionsHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    iput-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mHelper:Lcom/android/settings_exlib/users/AppRestrictionsHelper;

    .line 229
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 230
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    .line 231
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    .line 232
    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    .line 234
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v3, "android"

    .line 235
    const/16 v4, 0x40

    .line 234
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mSysPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_1
    const v2, 0x7f08000f

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->addPreferencesFromResource(I)V

    .line 240
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getAppPreferenceGroup()Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    .line 241
    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 211
    return-void

    .line 215
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 216
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 217
    const-string/jumbo v2, "user_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 218
    new-instance v2, Landroid/os/UserHandle;

    const-string/jumbo v3, "user_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    .line 220
    :cond_3
    const-string/jumbo v2, "new_user"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mNewUser:Z

    goto/16 :goto_0

    .line 236
    .end local v0    # "args":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 743
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 745
    iget-object v4, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 746
    .local v3, "pref":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    if-nez v3, :cond_0

    .line 747
    sget-object v4, Lcom/android/settings_ex/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown requestCode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    return-void

    .line 751
    :cond_0
    const/4 v4, -0x1

    if-ne p2, v4, :cond_1

    .line 752
    invoke-virtual {v3}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "pkg_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 754
    .local v2, "packageName":Ljava/lang/String;
    const-string/jumbo v4, "android.intent.extra.restrictions_list"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 755
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    const-string/jumbo v4, "android.intent.extra.restrictions_bundle"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 756
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 758
    invoke-virtual {v3, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setRestrictions(Ljava/util/ArrayList;)V

    .line 759
    iget-object v4, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    .line 760
    invoke-static {v1}, Landroid/content/RestrictionsManager;->convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    .line 759
    invoke-virtual {v4, v2, v5, v6}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 767
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    return-void

    .line 761
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_1

    .line 763
    iget-object v4, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v5, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v0, v5}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 493
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    if-eqz v2, :cond_0

    .line 494
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 495
    .local v1, "pref":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v5, 0x7f110262

    if-ne v2, v5, :cond_1

    .line 496
    invoke-direct {p0, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->onAppSettingsIconClicked(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    .line 492
    .end local v1    # "pref":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    :cond_0
    :goto_0
    return-void

    .line 497
    .restart local v1    # "pref":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    :cond_1
    invoke-virtual {v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 498
    invoke-virtual {v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 499
    invoke-virtual {v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "pkg_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 502
    invoke-static {v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->-get3(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/RestrictionEntry;

    invoke-virtual {v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/RestrictionEntry;->setSelectedState(Z)V

    .line 503
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->-get3(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-static {v2, v3, v4}, Lcom/android/settings_ex/users/RestrictionUtils;->setRestrictions(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/UserHandle;)V

    .line 504
    return-void

    .end local v0    # "packageName":Ljava/lang/String;
    :cond_2
    move v2, v4

    .line 498
    goto :goto_1

    .line 506
    .restart local v0    # "packageName":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mHelper:Lcom/android/settings_exlib/users/AppRestrictionsHelper;

    invoke-virtual {v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v2, v0, v5}, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->setPackageSelected(Ljava/lang/String;Z)V

    .line 507
    invoke-virtual {v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->-get0(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 508
    invoke-static {v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->-get3(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_4

    .line 510
    invoke-direct {p0, v0, v1, v3}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    .line 512
    :cond_4
    iput-boolean v4, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppListChanged:Z

    .line 514
    iget-boolean v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    if-nez v2, :cond_5

    .line 515
    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mHelper:Lcom/android/settings_exlib/users/AppRestrictionsHelper;

    invoke-virtual {v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v0, v3, p0}, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->applyUserAppState(Ljava/lang/String;ZLcom/android/settings_exlib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;)V

    .line 517
    :cond_5
    invoke-virtual {v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->updateAllEntries(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public onDisableUiForPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 312
    .local v0, "pref":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    if-eqz v0, :cond_0

    .line 313
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setEnabled(Z)V

    .line 309
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 275
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 276
    iput-boolean v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mNewUser:Z

    .line 277
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserBackgrounding:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 278
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mPackageObserver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 279
    iget-boolean v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppListChanged:Z

    if-eqz v0, :cond_0

    .line 280
    new-instance v0, Lcom/android/settings_ex/users/AppRestrictionsFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$3;-><init>(Lcom/android/settings_ex/users/AppRestrictionsFragment;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 274
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 17
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 524
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 525
    .local v5, "key":Ljava/lang/String;
    if-eqz v5, :cond_2

    const-string/jumbo v14, ";"

    invoke-virtual {v5, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 526
    new-instance v13, Ljava/util/StringTokenizer;

    const-string/jumbo v14, ";"

    invoke-direct {v13, v5, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    .local v13, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 528
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 530
    .local v9, "restrictionKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "pkg_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 529
    check-cast v2, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 531
    .local v2, "appPref":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    invoke-virtual {v2}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->getRestrictions()Ljava/util/ArrayList;

    move-result-object v10

    .line 532
    .local v10, "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    if-eqz v10, :cond_1

    .line 533
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/RestrictionEntry;

    .line 534
    .local v3, "entry":Landroid/content/RestrictionEntry;
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 535
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getType()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    goto :goto_0

    .line 537
    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-virtual {v3, v14}, Landroid/content/RestrictionEntry;->setSelectedState(Z)V

    .line 556
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    .line 557
    invoke-static {v10}, Landroid/content/RestrictionsManager;->convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v15

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    move-object/from16 v16, v0

    .line 556
    move-object/from16 v0, v16

    invoke-virtual {v14, v7, v15, v0}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 563
    .end local v3    # "entry":Landroid/content/RestrictionEntry;
    .end local v4    # "entry$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v14, 0x1

    return v14

    .restart local v3    # "entry":Landroid/content/RestrictionEntry;
    .restart local v4    # "entry$iterator":Ljava/util/Iterator;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :pswitch_1
    move-object/from16 v6, p1

    .line 541
    check-cast v6, Landroid/support/v7/preference/ListPreference;

    .local v6, "listPref":Landroid/support/v7/preference/ListPreference;
    move-object/from16 v14, p2

    .line 542
    check-cast v14, Ljava/lang/String;

    invoke-virtual {v3, v14}, Landroid/content/RestrictionEntry;->setSelectedString(Ljava/lang/String;)V

    .line 543
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v14

    .line 544
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v15

    check-cast p2, Ljava/lang/String;

    .line 543
    .end local p2    # "newValue":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v15, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->findInArray([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 545
    .local v8, "readable":Ljava/lang/String;
    invoke-virtual {v6, v8}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .end local v6    # "listPref":Landroid/support/v7/preference/ListPreference;
    .end local v8    # "readable":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :pswitch_2
    move-object/from16 v12, p2

    .line 548
    check-cast v12, Ljava/util/Set;

    .line 549
    .local v12, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v14

    new-array v11, v14, [Ljava/lang/String;

    .line 550
    .local v11, "selectedValues":[Ljava/lang/String;
    invoke-interface {v12, v11}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 551
    invoke-virtual {v3, v11}, Landroid/content/RestrictionEntry;->setAllSelectedStrings([Ljava/lang/String;)V

    goto :goto_1

    .line 565
    .end local v2    # "appPref":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    .end local v3    # "entry":Landroid/content/RestrictionEntry;
    .end local v4    # "entry$iterator":Ljava/util/Iterator;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v9    # "restrictionKey":Ljava/lang/String;
    .end local v10    # "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    .end local v11    # "selectedValues":[Ljava/lang/String;
    .end local v12    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "st":Ljava/util/StringTokenizer;
    :cond_2
    const/4 v14, 0x0

    return v14

    .line 535
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 782
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "pkg_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, p1

    .line 783
    check-cast v0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 784
    .local v0, "arp":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    invoke-virtual {v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 785
    invoke-virtual {v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "pkg_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 786
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 787
    .local v1, "newEnabledState":Z
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 788
    iget-object v4, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mHelper:Lcom/android/settings_exlib/users/AppRestrictionsHelper;

    invoke-virtual {v4, v2, v1}, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->setPackageSelected(Ljava/lang/String;Z)V

    .line 789
    invoke-virtual {v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->updateAllEntries(Ljava/lang/String;Z)V

    .line 790
    iput-boolean v3, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppListChanged:Z

    .line 791
    iget-object v4, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mHelper:Lcom/android/settings_exlib/users/AppRestrictionsHelper;

    invoke-virtual {v4, v2, v1, p0}, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->applyUserAppState(Ljava/lang/String;ZLcom/android/settings_exlib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;)V

    .line 793
    .end local v1    # "newEnabledState":Z
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_0
    return v3

    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_1
    move v1, v3

    .line 786
    goto :goto_0

    .line 795
    .end local v0    # "arp":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_2
    return v1
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 257
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 259
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserBackgrounding:Landroid/content/BroadcastReceiver;

    .line 260
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.USER_BACKGROUND"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 261
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 262
    .local v0, "packageFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mPackageObserver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 267
    iput-boolean v5, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppListChanged:Z

    .line 268
    iget-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppLoadingTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppLoadingTask:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_1

    .line 269
    :cond_0
    new-instance v1, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppLoadingTask;

    invoke-direct {v1, p0, v6}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppLoadingTask;-><init>(Lcom/android/settings_ex/users/AppRestrictionsFragment;Lcom/android/settings_ex/users/AppRestrictionsFragment$AppLoadingTask;)V

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppLoadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppLoadingTask:Landroid/os/AsyncTask;

    .line 256
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 251
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 252
    const-string/jumbo v0, "user_id"

    iget-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 250
    return-void
.end method
