.class public Lcom/android/settings_ex/users/AppRestrictionsFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AppRestrictionsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/users/AppRestrictionsFragment$RestrictionsResultReceiver;,
        Lcom/android/settings_ex/users/AppRestrictionsFragment$AppLabelComparator;,
        Lcom/android/settings_ex/users/AppRestrictionsFragment$AppLoadingTask;,
        Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;,
        Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;
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
.field private mAppList:Landroid/preference/PreferenceGroup;

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

.field protected mIPm:Landroid/content/pm/IPackageManager;

.field private mNewUser:Z

.field protected mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageObserver:Landroid/content/BroadcastReceiver;

.field protected mRestrictedProfile:Z

.field mSelectedPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSysPackageInfo:Landroid/content/pm/PackageInfo;

.field protected mUser:Landroid/os/UserHandle;

.field private mUserApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUserBackgrounding:Landroid/content/BroadcastReceiver;

.field protected mUserManager:Landroid/os/UserManager;

.field private mVisibleApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-class v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mFirstTime:Z

    .line 108
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mCustomRequestCode:I

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    .line 117
    new-instance v0, Lcom/android/settings_ex/users/AppRestrictionsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$1;-><init>(Lcom/android/settings_ex/users/AppRestrictionsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserBackgrounding:Landroid/content/BroadcastReceiver;

    .line 131
    new-instance v0, Lcom/android/settings_ex/users/AppRestrictionsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$2;-><init>(Lcom/android/settings_ex/users/AppRestrictionsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mPackageObserver:Landroid/content/BroadcastReceiver;

    .line 894
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/users/AppRestrictionsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/users/AppRestrictionsFragment;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppListChanged:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/users/AppRestrictionsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/users/AppRestrictionsFragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->applyUserAppsStates()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/users/AppRestrictionsFragment;Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/users/AppRestrictionsFragment;
    .param p1, "x1"    # Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/ArrayList;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->onRestrictionsReceived(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/users/AppRestrictionsFragment;Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/users/AppRestrictionsFragment;
    .param p1, "x1"    # Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->generateCustomActivityRequestCode(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/users/AppRestrictionsFragment;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/users/AppRestrictionsFragment;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->onPackageChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/users/AppRestrictionsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/users/AppRestrictionsFragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->fetchAndMergeApps()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/users/AppRestrictionsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/users/AppRestrictionsFragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->populateApps()V

    return-void
.end method

.method private addLocationAppRestrictionsPreference(Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)V
    .locals 6
    .param p1, "app"    # Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;
    .param p2, "p"    # Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .prologue
    const/4 v5, 0x0

    .line 729
    iget-object v1, p1, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    .line 730
    .local v1, "packageName":Ljava/lang/String;
    const v3, 0x7f0200b3

    invoke-virtual {p2, v3}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setIcon(I)V

    .line 731
    invoke-direct {p0, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setKey(Ljava/lang/String;)V

    .line 732
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-static {v3, v4}, Lcom/android/settings_ex/users/RestrictionUtils;->getRestrictions(Landroid/content/Context;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v2

    .line 734
    .local v2, "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/RestrictionEntry;

    .line 735
    .local v0, "locationRestriction":Landroid/content/RestrictionEntry;
    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 736
    invoke-virtual {p2, v2}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setRestrictions(Ljava/util/ArrayList;)V

    .line 737
    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 738
    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v3

    invoke-virtual {p2, v3}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 739
    invoke-virtual {p2, v5}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setPersistent(Z)V

    .line 740
    invoke-virtual {p2, p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 741
    const/16 v3, 0x64

    invoke-virtual {p2, v3}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOrder(I)V

    .line 742
    iget-object v3, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, p2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 743
    return-void
.end method

.method private addSystemApps(Ljava/util/List;Landroid/content/Intent;Ljava/util/Set;)V
    .locals 11
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 441
    .local p1, "visibleApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;>;"
    .local p3, "excludePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    if-nez v9, :cond_1

    .line 476
    :cond_0
    return-void

    .line 442
    :cond_1
    iget-object v7, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 443
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/16 v9, 0x2200

    invoke-virtual {v7, p2, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 445
    .local v5, "launchableApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 446
    .local v0, "app":Landroid/content/pm/ResolveInfo;
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_2

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_2

    .line 447
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 448
    .local v6, "packageName":Ljava/lang/String;
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 449
    .local v2, "flags":I
    and-int/lit8 v9, v2, 0x1

    if-nez v9, :cond_3

    and-int/lit16 v9, v2, 0x80

    if-eqz v9, :cond_2

    .line 453
    :cond_3
    invoke-interface {p3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 454
    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    .line 455
    .local v1, "enabled":I
    const/4 v9, 0x4

    if-eq v1, v9, :cond_4

    const/4 v9, 0x2

    if-ne v1, v9, :cond_5

    .line 458
    :cond_4
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-direct {p0, v6, v9, v10}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getAppInfoForUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 460
    .local v8, "targetUserAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v8, :cond_2

    iget v9, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x800000

    and-int/2addr v9, v10

    if-eqz v9, :cond_2

    .line 465
    .end local v8    # "targetUserAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_5
    new-instance v4, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;

    invoke-direct {v4}, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;-><init>()V

    .line 466
    .local v4, "info":Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v9, v4, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    .line 467
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v4, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    .line 468
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v9, v7}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v4, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 469
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v9, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v4, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    .line 470
    iget-object v9, v4, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    if-nez v9, :cond_6

    iget-object v9, v4, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    iput-object v9, v4, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    .line 472
    :cond_6
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addSystemImes(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 417
    .local p1, "excludePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 418
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 431
    :cond_0
    return-void

    .line 419
    :cond_1
    const-string v5, "input_method"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    .line 421
    .local v4, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v3

    .line 422
    .local v3, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 424
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->isSystemPackage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 425
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 427
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private applyUserAppState(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/high16 v4, 0x800000

    .line 338
    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 339
    .local v1, "userId":I
    if-eqz p2, :cond_3

    .line 342
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    const/16 v3, 0x2000

    invoke-interface {v2, p1, v3, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 344
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v4

    if-nez v2, :cond_1

    .line 346
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-interface {v2, p1, v3}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I

    .line 351
    :cond_1
    if-eqz v0, :cond_2

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_2

    .line 353
    invoke-direct {p0, p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->disableUiForPackage(Ljava/lang/String;)V

    .line 354
    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, v1}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 383
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :goto_0
    return-void

    .line 364
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 365
    .restart local v0    # "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    .line 366
    iget-boolean v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    if-eqz v2, :cond_4

    .line 367
    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v5, 0x4

    invoke-interface {v2, p1, v3, v4, v5}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    goto :goto_0

    .line 380
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 373
    .restart local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->disableUiForPackage(Ljava/lang/String;)V

    .line 374
    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3, v1}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 359
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private applyUserAppsStates()V
    .locals 7

    .prologue
    .line 325
    iget-object v5, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 326
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 327
    sget-object v5, Lcom/android/settings_ex/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    const-string v6, "Cannot apply application restrictions on another user!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    return-void

    .line 330
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 331
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 332
    .local v3, "packageName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 333
    .local v0, "enabled":Z
    invoke-direct {p0, v3, v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->applyUserAppState(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private disableUiForPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 388
    .local v0, "pref":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    if-eqz v0, :cond_0

    .line 389
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setEnabled(Z)V

    .line 391
    :cond_0
    return-void
.end method

.method private fetchAndMergeApps()V
    .locals 21

    .prologue
    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 508
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    .line 509
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 510
    .local v5, "context":Landroid/content/Context;
    if-nez v5, :cond_1

    .line 608
    :cond_0
    return-void

    .line 511
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v16, v0

    .line 512
    .local v16, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    .line 514
    .local v12, "ipm":Landroid/content/pm/IPackageManager;
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 515
    .local v7, "excludePackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->addSystemImes(Ljava/util/Set;)V

    .line 518
    new-instance v13, Landroid/content/Intent;

    const-string v18, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 519
    .local v13, "launcherIntent":Landroid/content/Intent;
    const-string v18, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v13, v7}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->addSystemApps(Ljava/util/List;Landroid/content/Intent;Ljava/util/Set;)V

    .line 523
    new-instance v17, Landroid/content/Intent;

    const-string v18, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 524
    .local v17, "widgetIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v7}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->addSystemApps(Ljava/util/List;Landroid/content/Intent;Ljava/util/Set;)V

    .line 526
    const/16 v18, 0x2000

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v11

    .line 528
    .local v11, "installedApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 530
    .local v3, "app":Landroid/content/pm/ApplicationInfo;
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    const/high16 v19, 0x800000

    and-int v18, v18, v19

    if-eqz v18, :cond_2

    .line 532
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x1

    if-nez v18, :cond_3

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    if-nez v18, :cond_3

    .line 535
    new-instance v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;

    invoke-direct {v10}, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;-><init>()V

    .line 536
    .local v10, "info":Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    .line 537
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    .line 538
    iget-object v0, v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    .line 539
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 543
    .end local v10    # "info":Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;
    :cond_3
    :try_start_0
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    .line 547
    .local v15, "pi":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    move-object/from16 v18, v0

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 551
    .end local v15    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v18

    goto/16 :goto_0

    .line 557
    .end local v3    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_4
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserApps:Ljava/util/List;

    .line 559
    const/16 v18, 0x2000

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v12, v0, v1}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserApps:Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 564
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserApps:Ljava/util/List;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserApps:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 566
    .restart local v3    # "app":Landroid/content/pm/ApplicationInfo;
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    const/high16 v19, 0x800000

    and-int v18, v18, v19

    if-eqz v18, :cond_5

    .line 568
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x1

    if-nez v18, :cond_5

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    if-nez v18, :cond_5

    .line 571
    new-instance v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;

    invoke-direct {v10}, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;-><init>()V

    .line 572
    .restart local v10    # "info":Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    .line 573
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    .line 574
    iget-object v0, v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    .line 575
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 582
    .end local v3    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "info":Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppLabelComparator;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppLabelComparator;-><init>(Lcom/android/settings_ex/users/AppRestrictionsFragment;Lcom/android/settings_ex/users/AppRestrictionsFragment$1;)V

    invoke-static/range {v18 .. v19}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 585
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 586
    .local v6, "dedupPackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v8, v18, -0x1

    .local v8, "i":I
    :goto_3
    if-ltz v8, :cond_8

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;

    .line 589
    .restart local v10    # "info":Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "+"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 590
    .local v4, "both":Ljava/lang/String;
    iget-object v0, v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_7

    iget-object v0, v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_7

    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 586
    :goto_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 595
    :cond_7
    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 600
    .end local v4    # "both":Ljava/lang/String;
    .end local v10    # "info":Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;
    :cond_8
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 601
    .local v14, "packageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;

    .line 602
    .restart local v10    # "info":Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;
    iget-object v0, v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 603
    iget-object v0, v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->masterEntry:Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;

    goto :goto_5

    .line 605
    :cond_9
    iget-object v0, v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 561
    .end local v6    # "dedupPackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "i":I
    .end local v10    # "info":Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;
    .end local v14    # "packageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;>;"
    :catch_1
    move-exception v18

    goto/16 :goto_1
.end method

.method private findInArray([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "choiceEntries"    # [Ljava/lang/String;
    .param p2, "choiceValues"    # [Ljava/lang/String;
    .param p3, "selectedString"    # Ljava/lang/String;

    .prologue
    .line 1062
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 1063
    aget-object v1, p2, v0

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1064
    aget-object p3, p1, v0

    .line 1067
    .end local p3    # "selectedString":Ljava/lang/String;
    :cond_0
    return-object p3

    .line 1062
    .restart local p3    # "selectedString":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private generateCustomActivityRequestCode(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)I
    .locals 2
    .param p1, "preference"    # Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .prologue
    .line 1026
    iget v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mCustomRequestCode:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mCustomRequestCode:I

    .line 1027
    iget-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mCustomRequestCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    iget v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mCustomRequestCode:I

    return v0
.end method

.method private getAppInfoForUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 480
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 484
    :goto_0
    return-object v1

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pkg_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPackageSummary(Landroid/content/pm/PackageInfo;Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;
    .param p2, "app"    # Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 710
    iget-object v0, p2, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->masterEntry:Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;

    if-eqz v0, :cond_1

    .line 711
    iget-boolean v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 712
    const v0, 0x7f0c0bf2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p2, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->masterEntry:Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;

    iget-object v2, v2, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 720
    :goto_0
    return-object v0

    .line 715
    :cond_0
    const v0, 0x7f0c0bf0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p2, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->masterEntry:Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;

    iget-object v2, v2, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 717
    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 718
    const v0, 0x7f0c0bf1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 720
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAppEnabledForUser(Landroid/content/pm/PackageInfo;)Z
    .locals 4
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v2, 0x0

    .line 616
    if-nez p1, :cond_1

    .line 620
    :cond_0
    :goto_0
    return v2

    .line 617
    :cond_1
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 618
    .local v0, "flags":I
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 620
    .local v1, "privateFlags":I
    const/high16 v3, 0x800000

    and-int/2addr v3, v0

    if-eqz v3, :cond_0

    and-int/lit8 v3, v1, 0x1

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static isAppUnsupportedInRestrictedProfile(Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .param p0, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 724
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPlatformSigned(Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v0, 0x0

    .line 611
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mSysPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v1, v1, v0

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isSystemPackage(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 395
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 396
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_1

    .line 405
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v2

    .line 397
    .restart local v1    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .local v0, "flags":I
    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_2

    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_0

    .line 400
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 402
    .end local v0    # "flags":I
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private onAppSettingsIconClicked(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)V
    .locals 4
    .param p1, "preference"    # Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .prologue
    const/4 v1, 0x1

    .line 863
    invoke-virtual {p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pkg_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 864
    invoke-virtual {p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isPanelOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 865
    invoke-direct {p0, p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->removeRestrictionsForApp(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    .line 870
    :goto_0
    invoke-virtual {p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isPanelOpen()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setPanelOpen(Z)V

    .line 872
    :cond_0
    return-void

    .line 867
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pkg_"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 868
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v0, p1, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    goto :goto_0

    .line 870
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private onPackageChanged(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 307
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "packageName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 312
    .local v2, "pref":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    if-nez v2, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 316
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private onRestrictionsReceived(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "preference"    # Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 956
    .local p3, "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    invoke-direct {p0, p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->removeRestrictionsForApp(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    .line 958
    invoke-virtual {p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 959
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x1

    .line 960
    .local v1, "count":I
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/RestrictionEntry;

    .line 961
    .local v2, "entry":Landroid/content/RestrictionEntry;
    const/4 v4, 0x0

    .line 962
    .local v4, "p":Landroid/preference/Preference;
    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getType()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 997
    :goto_1
    if-eqz v4, :cond_0

    .line 998
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 999
    invoke-virtual {p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->getOrder()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setOrder(I)V

    .line 1001
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v8

    const-string v9, "pkg_"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1003
    iget-object v7, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1004
    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1005
    const v7, 0x7f020026

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setIcon(I)V

    .line 1006
    # getter for: Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->mChildren:Ljava/util/List;
    invoke-static {p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$1100(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1007
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 964
    :pswitch_0
    new-instance v4, Landroid/preference/SwitchPreference;

    .end local v4    # "p":Landroid/preference/Preference;
    invoke-direct {v4, v0}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 965
    .restart local v4    # "p":Landroid/preference/Preference;
    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 966
    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object v7, v4

    .line 967
    check-cast v7, Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 971
    :pswitch_1
    new-instance v4, Landroid/preference/ListPreference;

    .end local v4    # "p":Landroid/preference/Preference;
    invoke-direct {v4, v0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 972
    .restart local v4    # "p":Landroid/preference/Preference;
    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 973
    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getSelectedString()Ljava/lang/String;

    move-result-object v6

    .line 974
    .local v6, "value":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 975
    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getDescription()Ljava/lang/String;

    move-result-object v6

    .line 977
    :cond_1
    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8, v6}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->findInArray([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object v7, v4

    .line 979
    check-cast v7, Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    move-object v7, v4

    .line 980
    check-cast v7, Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object v7, v4

    .line 981
    check-cast v7, Landroid/preference/ListPreference;

    invoke-virtual {v7, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    move-object v7, v4

    .line 982
    check-cast v7, Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 985
    .end local v6    # "value":Ljava/lang/String;
    :pswitch_2
    new-instance v4, Landroid/preference/MultiSelectListPreference;

    .end local v4    # "p":Landroid/preference/Preference;
    invoke-direct {v4, v0}, Landroid/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;)V

    .line 986
    .restart local v4    # "p":Landroid/preference/Preference;
    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    move-object v7, v4

    .line 987
    check-cast v7, Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    move-object v7, v4

    .line 988
    check-cast v7, Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 989
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 990
    .local v5, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getAllSelectedStrings()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-object v7, v4

    .line 991
    check-cast v7, Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    move-object v7, v4

    .line 992
    check-cast v7, Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/MultiSelectListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1010
    .end local v2    # "entry":Landroid/content/RestrictionEntry;
    .end local v4    # "p":Landroid/preference/Preference;
    .end local v5    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {p1, p3}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setRestrictions(Ljava/util/ArrayList;)V

    .line 1011
    const/4 v7, 0x1

    if-ne v1, v7, :cond_3

    invoke-virtual {p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1015
    iget-object v7, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1017
    :cond_3
    return-void

    .line 962
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
    .locals 15

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 626
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_1

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    iget-object v9, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 628
    .local v9, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    .line 629
    .local v4, "ipm":Landroid/content/pm/IPackageManager;
    iget-object v13, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v13}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    .line 632
    .local v12, "userId":I
    iget-object v13, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v14, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-static {v13, v14}, Lcom/android/settings_ex/Utils;->getExistingUser(Landroid/os/UserManager;Landroid/os/UserHandle;)Landroid/content/pm/UserInfo;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 635
    iget-object v13, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v13}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 636
    new-instance v11, Landroid/content/Intent;

    const-string v13, "android.intent.action.GET_RESTRICTION_ENTRIES"

    invoke-direct {v11, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 637
    .local v11, "restrictionsIntent":Landroid/content/Intent;
    const/4 v13, 0x0

    invoke-virtual {v9, v11, v13}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 638
    .local v10, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v13, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;

    .line 639
    .local v0, "app":Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;
    iget-object v7, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    .line 640
    .local v7, "packageName":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 641
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 642
    .local v5, "isSettingsApp":Z
    new-instance v6, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-direct {v6, v1, p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    .line 643
    .local v6, "p":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    invoke-direct {p0, v10, v7}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->resolveInfoListHasPackage(Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    .line 644
    .local v2, "hasSettings":Z
    if-eqz v5, :cond_3

    .line 645
    invoke-direct {p0, v0, v6}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->addLocationAppRestrictionsPreference(Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    .line 647
    iget-object v13, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v13, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 650
    :cond_3
    const/4 v8, 0x0

    .line 652
    .local v8, "pi":Landroid/content/pm/PackageInfo;
    const/16 v13, 0x2040

    :try_start_0
    invoke-interface {v4, v7, v13, v12}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 657
    :goto_2
    if-eqz v8, :cond_2

    .line 660
    iget-boolean v13, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    if-eqz v13, :cond_4

    invoke-static {v8}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->isAppUnsupportedInRestrictedProfile(Landroid/content/pm/PackageInfo;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 663
    :cond_4
    iget-object v13, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_8

    iget-object v13, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    :goto_3
    invoke-virtual {v6, v13}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 664
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 665
    iget-object v13, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    invoke-virtual {v6, v13}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 666
    invoke-direct {p0, v7}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setKey(Ljava/lang/String;)V

    .line 667
    if-eqz v2, :cond_9

    iget-object v13, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->masterEntry:Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;

    if-nez v13, :cond_9

    const/4 v13, 0x1

    :goto_4
    # invokes: Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setSettingsEnabled(Z)V
    invoke-static {v6, v13}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$800(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    .line 668
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setPersistent(Z)V

    .line 669
    invoke-virtual {v6, p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 670
    invoke-virtual {v6, p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 671
    invoke-direct {p0, v8, v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getPackageSummary(Landroid/content/pm/PackageInfo;Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 672
    iget-boolean v13, v8, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    if-nez v13, :cond_5

    invoke-direct {p0, v8}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->isPlatformSigned(Landroid/content/pm/PackageInfo;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 673
    :cond_5
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 674
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setImmutable(Z)V

    .line 676
    if-eqz v2, :cond_2

    .line 681
    iget-object v13, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->masterEntry:Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;

    if-nez v13, :cond_6

    .line 682
    const/4 v13, 0x0

    invoke-direct {p0, v7, v6, v13}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    .line 687
    :cond_6
    :goto_5
    iget-object v13, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->masterEntry:Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;

    if-eqz v13, :cond_7

    .line 688
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setImmutable(Z)V

    .line 689
    iget-object v13, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    invoke-virtual {v13, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v6, v13}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 691
    :cond_7
    iget-object v13, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v13}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v13

    add-int/lit8 v13, v13, 0x2

    mul-int/lit8 v13, v13, 0x64

    invoke-virtual {v6, v13}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOrder(I)V

    .line 692
    iget-object v13, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v13, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    iget-object v13, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v13, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 663
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 667
    :cond_9
    const/4 v13, 0x0

    goto :goto_4

    .line 684
    :cond_a
    iget-boolean v13, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mNewUser:Z

    if-nez v13, :cond_6

    invoke-direct {p0, v8}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->isAppEnabledForUser(Landroid/content/pm/PackageInfo;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 685
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    goto :goto_5

    .line 695
    .end local v0    # "app":Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;
    .end local v2    # "hasSettings":Z
    .end local v5    # "isSettingsApp":Z
    .end local v6    # "p":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "pi":Landroid/content/pm/PackageInfo;
    :cond_b
    const/4 v13, 0x1

    iput-boolean v13, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppListChanged:Z

    .line 698
    iget-boolean v13, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mNewUser:Z

    if-eqz v13, :cond_0

    iget-boolean v13, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mFirstTime:Z

    if-eqz v13, :cond_0

    .line 699
    const/4 v13, 0x0

    iput-boolean v13, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mFirstTime:Z

    .line 700
    invoke-direct {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->applyUserAppsStates()V

    goto/16 :goto_0

    .line 655
    .restart local v0    # "app":Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;
    .restart local v2    # "hasSettings":Z
    .restart local v5    # "isSettingsApp":Z
    .restart local v6    # "p":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v8    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v13

    goto/16 :goto_2
.end method

.method private removeRestrictionsForApp(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)V
    .locals 3
    .param p1, "preference"    # Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .prologue
    .line 856
    # getter for: Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->mChildren:Ljava/util/List;
    invoke-static {p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$1100(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 857
    .local v1, "p":Landroid/preference/Preference;
    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 859
    .end local v1    # "p":Landroid/preference/Preference;
    :cond_0
    # getter for: Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->mChildren:Ljava/util/List;
    invoke-static {p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$1100(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 860
    return-void
.end method

.method private requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "preference"    # Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    .param p3, "invokeIfCustom"    # Z

    .prologue
    const/4 v2, 0x0

    .line 883
    iget-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v3}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v8

    .line 885
    .local v8, "oldEntries":Landroid/os/Bundle;
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_RESTRICTION_ENTRIES"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 886
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 887
    const-string v0, "android.intent.extra.restrictions_bundle"

    invoke-virtual {v1, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 888
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 889
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Lcom/android/settings_ex/users/AppRestrictionsFragment$RestrictionsResultReceiver;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/settings_ex/users/AppRestrictionsFragment$RestrictionsResultReceiver;-><init>(Lcom/android/settings_ex/users/AppRestrictionsFragment;Ljava/lang/String;Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    const/4 v5, -0x1

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 892
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
    .line 760
    .local p1, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 761
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 762
    const/4 v2, 0x1

    .line 765
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateAllEntries(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "checked"    # Z

    .prologue
    .line 769
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 770
    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 771
    .local v1, "pref":Landroid/preference/Preference;
    instance-of v2, v1, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    if-eqz v2, :cond_0

    .line 772
    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 773
    check-cast v1, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .end local v1    # "pref":Landroid/preference/Preference;
    invoke-virtual {v1, p2}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 769
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 777
    :cond_1
    return-void
.end method


# virtual methods
.method protected getAppPreferenceGroup()Landroid/preference/PreferenceGroup;
    .locals 1

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 264
    const/16 v0, 0x61

    return v0
.end method

.method protected init(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 232
    if-eqz p1, :cond_2

    .line 233
    new-instance v1, Landroid/os/UserHandle;

    const-string v2, "user_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    .line 244
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    if-nez v1, :cond_1

    .line 245
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    .line 248
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 249
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    .line 250
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    .line 251
    iget-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mSysPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_1
    const v1, 0x7f08000c

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->addPreferencesFromResource(I)V

    .line 259
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getAppPreferenceGroup()Landroid/preference/PreferenceGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    .line 260
    return-void

    .line 235
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 236
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 237
    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 238
    new-instance v1, Landroid/os/UserHandle;

    const-string v2, "user_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    .line 240
    :cond_3
    const-string v1, "new_user"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mNewUser:Z

    goto :goto_0

    .line 255
    .end local v0    # "args":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1033
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1035
    iget-object v4, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 1036
    .local v3, "pref":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    if-nez v3, :cond_0

    .line 1037
    sget-object v4, Lcom/android/settings_ex/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown requestCode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :goto_0
    return-void

    .line 1041
    :cond_0
    const/4 v4, -0x1

    if-ne p2, v4, :cond_1

    .line 1042
    invoke-virtual {v3}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pkg_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1043
    .local v2, "packageName":Ljava/lang/String;
    const-string v4, "android.intent.extra.restrictions_list"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1045
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    const-string v4, "android.intent.extra.restrictions_bundle"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1046
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 1048
    invoke-virtual {v3, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setRestrictions(Ljava/util/ArrayList;)V

    .line 1049
    iget-object v4, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    invoke-static {v1}, Landroid/content/RestrictionsManager;->convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1057
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1051
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_1

    .line 1053
    iget-object v4, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v5, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v0, v5}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 781
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    if-eqz v2, :cond_0

    .line 782
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 783
    .local v1, "pref":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v5, 0x7f120185

    if-ne v2, v5, :cond_1

    .line 784
    invoke-direct {p0, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->onAppSettingsIconClicked(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    .line 808
    .end local v1    # "pref":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    :cond_0
    :goto_0
    return-void

    .line 785
    .restart local v1    # "pref":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    :cond_1
    invoke-virtual {v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 786
    invoke-virtual {v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 787
    invoke-virtual {v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v5, "pkg_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 789
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 790
    # getter for: Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->restrictions:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$900(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/RestrictionEntry;

    invoke-virtual {v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/RestrictionEntry;->setSelectedState(Z)V

    .line 791
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    # getter for: Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->restrictions:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$900(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-static {v2, v3, v4}, Lcom/android/settings_ex/users/RestrictionUtils;->setRestrictions(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/UserHandle;)V

    goto :goto_0

    .end local v0    # "packageName":Ljava/lang/String;
    :cond_2
    move v2, v4

    .line 786
    goto :goto_1

    .line 794
    .restart local v0    # "packageName":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    invoke-virtual {v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    # getter for: Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->hasSettings:Z
    invoke-static {v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$1000(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)Z

    move-result v2

    if-eqz v2, :cond_4

    # getter for: Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->restrictions:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$900(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_4

    .line 798
    invoke-direct {p0, v0, v1, v4}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    .line 800
    :cond_4
    iput-boolean v3, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppListChanged:Z

    .line 802
    iget-boolean v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    if-nez v2, :cond_5

    .line 803
    invoke-virtual {v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->applyUserAppState(Ljava/lang/String;Z)V

    .line 805
    :cond_5
    invoke-virtual {v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->updateAllEntries(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 293
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mNewUser:Z

    .line 295
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserBackgrounding:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 296
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mPackageObserver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 297
    iget-boolean v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppListChanged:Z

    if-eqz v0, :cond_0

    .line 298
    new-instance v0, Lcom/android/settings_ex/users/AppRestrictionsFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$3;-><init>(Lcom/android/settings_ex/users/AppRestrictionsFragment;)V

    invoke-virtual {v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$3;->start()V

    .line 304
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 17
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 812
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 813
    .local v5, "key":Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string v14, ";"

    invoke-virtual {v5, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 814
    new-instance v13, Ljava/util/StringTokenizer;

    const-string v14, ";"

    invoke-direct {v13, v5, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    .local v13, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 816
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 817
    .local v9, "restrictionKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "pkg_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 819
    .local v2, "appPref":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    invoke-virtual {v2}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->getRestrictions()Ljava/util/ArrayList;

    move-result-object v10

    .line 820
    .local v10, "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    if-eqz v10, :cond_1

    .line 821
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/RestrictionEntry;

    .line 822
    .local v3, "entry":Landroid/content/RestrictionEntry;
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 823
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getType()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    goto :goto_0

    .line 825
    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-virtual {v3, v14}, Landroid/content/RestrictionEntry;->setSelectedState(Z)V

    .line 844
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    invoke-static {v10}, Landroid/content/RestrictionsManager;->convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v7, v15, v0}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 852
    .end local v2    # "appPref":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    .end local v3    # "entry":Landroid/content/RestrictionEntry;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v9    # "restrictionKey":Ljava/lang/String;
    .end local v10    # "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    .end local v13    # "st":Ljava/util/StringTokenizer;
    :cond_1
    const/4 v14, 0x1

    return v14

    .restart local v2    # "appPref":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    .restart local v3    # "entry":Landroid/content/RestrictionEntry;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v9    # "restrictionKey":Ljava/lang/String;
    .restart local v10    # "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    .restart local v13    # "st":Ljava/util/StringTokenizer;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :pswitch_1
    move-object/from16 v6, p1

    .line 829
    check-cast v6, Landroid/preference/ListPreference;

    .local v6, "listPref":Landroid/preference/ListPreference;
    move-object/from16 v14, p2

    .line 830
    check-cast v14, Ljava/lang/String;

    invoke-virtual {v3, v14}, Landroid/content/RestrictionEntry;->setSelectedString(Ljava/lang/String;)V

    .line 831
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v15

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v15, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->findInArray([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 833
    .local v8, "readable":Ljava/lang/String;
    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .end local v6    # "listPref":Landroid/preference/ListPreference;
    .end local v8    # "readable":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :pswitch_2
    move-object/from16 v12, p2

    .line 836
    check-cast v12, Ljava/util/Set;

    .line 837
    .local v12, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v14

    new-array v11, v14, [Ljava/lang/String;

    .line 838
    .local v11, "selectedValues":[Ljava/lang/String;
    invoke-interface {v12, v11}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 839
    invoke-virtual {v3, v11}, Landroid/content/RestrictionEntry;->setAllSelectedStrings([Ljava/lang/String;)V

    goto :goto_1

    .line 823
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1072
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pkg_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, p1

    .line 1073
    check-cast v0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 1074
    .local v0, "arp":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    invoke-virtual {v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1075
    invoke-virtual {v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pkg_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1076
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    move v1, v3

    .line 1077
    .local v1, "newEnabledState":Z
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 1078
    iget-object v4, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    invoke-virtual {v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->updateAllEntries(Ljava/lang/String;Z)V

    .line 1080
    iput-boolean v3, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppListChanged:Z

    .line 1081
    invoke-direct {p0, v2, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->applyUserAppState(Ljava/lang/String;Z)V

    .line 1085
    .end local v0    # "arp":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    .end local v1    # "newEnabledState":Z
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    :goto_0
    return v3

    :cond_2
    move v3, v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 275
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 277
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserBackgrounding:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.USER_BACKGROUND"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 279
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 280
    .local v0, "packageFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mPackageObserver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 285
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppListChanged:Z

    .line 286
    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppLoadingTask:Landroid/os/AsyncTask;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppLoadingTask:Landroid/os/AsyncTask;

    invoke-virtual {v2}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_1

    .line 287
    :cond_0
    new-instance v2, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppLoadingTask;

    invoke-direct {v2, p0, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppLoadingTask;-><init>(Lcom/android/settings_ex/users/AppRestrictionsFragment;Lcom/android/settings_ex/users/AppRestrictionsFragment$1;)V

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppLoadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppLoadingTask:Landroid/os/AsyncTask;

    .line 289
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 269
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 270
    const-string v0, "user_id"

    iget-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 271
    return-void
.end method
