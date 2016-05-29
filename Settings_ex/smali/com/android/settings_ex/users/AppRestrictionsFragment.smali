.class public Lcom/android/settings_ex/users/AppRestrictionsFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AppRestrictionsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/view/View$OnClickListener;


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
    .line 78
    const-class v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mFirstTime:Z

    .line 109
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mCustomRequestCode:I

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    .line 118
    new-instance v0, Lcom/android/settings_ex/users/AppRestrictionsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$1;-><init>(Lcom/android/settings_ex/users/AppRestrictionsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserBackgrounding:Landroid/content/BroadcastReceiver;

    .line 132
    new-instance v0, Lcom/android/settings_ex/users/AppRestrictionsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$2;-><init>(Lcom/android/settings_ex/users/AppRestrictionsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mPackageObserver:Landroid/content/BroadcastReceiver;

    .line 886
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/users/AppRestrictionsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/users/AppRestrictionsFragment;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppListChanged:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/users/AppRestrictionsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/users/AppRestrictionsFragment;

    .prologue
    .line 75
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
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->onRestrictionsReceived(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/users/AppRestrictionsFragment;Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/users/AppRestrictionsFragment;
    .param p1, "x1"    # Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->generateCustomActivityRequestCode(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/users/AppRestrictionsFragment;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/users/AppRestrictionsFragment;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->onPackageChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/users/AppRestrictionsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/users/AppRestrictionsFragment;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->fetchAndMergeApps()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/users/AppRestrictionsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/users/AppRestrictionsFragment;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->populateApps()V

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
    .line 461
    .local p1, "visibleApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;>;"
    .local p3, "excludePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    if-nez v9, :cond_1

    .line 496
    :cond_0
    return-void

    .line 462
    :cond_1
    iget-object v7, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 463
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/16 v9, 0x2200

    invoke-virtual {v7, p2, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 465
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

    .line 466
    .local v0, "app":Landroid/content/pm/ResolveInfo;
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_2

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_2

    .line 467
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 468
    .local v6, "packageName":Ljava/lang/String;
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 469
    .local v2, "flags":I
    and-int/lit8 v9, v2, 0x1

    if-nez v9, :cond_3

    and-int/lit16 v9, v2, 0x80

    if-eqz v9, :cond_2

    .line 473
    :cond_3
    invoke-interface {p3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 474
    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    .line 475
    .local v1, "enabled":I
    const/4 v9, 0x4

    if-eq v1, v9, :cond_4

    const/4 v9, 0x2

    if-ne v1, v9, :cond_5

    .line 478
    :cond_4
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-direct {p0, v6, v9, v10}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getAppInfoForUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 480
    .local v8, "targetUserAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v8, :cond_2

    iget v9, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x800000

    and-int/2addr v9, v10

    if-eqz v9, :cond_2

    .line 485
    .end local v8    # "targetUserAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_5
    new-instance v4, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;

    invoke-direct {v4}, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;-><init>()V

    .line 486
    .local v4, "info":Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v9, v4, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    .line 487
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v4, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    .line 488
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v9, v7}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v4, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 489
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v9, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v4, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    .line 490
    iget-object v9, v4, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    if-nez v9, :cond_6

    iget-object v9, v4, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    iput-object v9, v4, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    .line 492
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
    .line 437
    .local p1, "excludePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 438
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 451
    :cond_0
    return-void

    .line 439
    :cond_1
    const-string v5, "input_method"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    .line 441
    .local v4, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v3

    .line 442
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

    .line 444
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

    .line 445
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 447
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

    .line 358
    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 359
    .local v1, "userId":I
    if-eqz p2, :cond_3

    .line 362
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    const/16 v3, 0x2000

    invoke-interface {v2, p1, v3, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 364
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v4

    if-nez v2, :cond_1

    .line 366
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-interface {v2, p1, v3}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I

    .line 371
    :cond_1
    if-eqz v0, :cond_2

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x8000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_2

    .line 373
    invoke-direct {p0, p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->disableUiForPackage(Ljava/lang/String;)V

    .line 374
    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, v1}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 403
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :goto_0
    return-void

    .line 384
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 385
    .restart local v0    # "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    .line 386
    iget-boolean v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    if-eqz v2, :cond_4

    .line 387
    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v5, 0x4

    invoke-interface {v2, p1, v3, v4, v5}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    goto :goto_0

    .line 400
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 393
    .restart local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->disableUiForPackage(Ljava/lang/String;)V

    .line 394
    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3, v1}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 379
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private applyUserAppsStates()V
    .locals 7

    .prologue
    .line 345
    iget-object v5, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 346
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

    .line 347
    sget-object v5, Lcom/android/settings_ex/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    const-string v6, "Cannot apply application restrictions on another user!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_0
    return-void

    .line 350
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

    .line 351
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 352
    .local v3, "packageName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 353
    .local v0, "enabled":Z
    invoke-direct {p0, v3, v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->applyUserAppState(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private disableUiForPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 406
    invoke-direct {p0, p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 408
    .local v0, "pref":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    if-eqz v0, :cond_0

    .line 409
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setEnabled(Z)V

    .line 411
    :cond_0
    return-void
.end method

.method private fetchAndMergeApps()V
    .locals 21

    .prologue
    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 528
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 530
    .local v5, "context":Landroid/content/Context;
    if-nez v5, :cond_1

    .line 628
    :cond_0
    return-void

    .line 531
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v16, v0

    .line 532
    .local v16, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    .line 534
    .local v12, "ipm":Landroid/content/pm/IPackageManager;
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 535
    .local v7, "excludePackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->addSystemImes(Ljava/util/Set;)V

    .line 538
    new-instance v13, Landroid/content/Intent;

    const-string v18, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 539
    .local v13, "launcherIntent":Landroid/content/Intent;
    const-string v18, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v13, v7}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->addSystemApps(Ljava/util/List;Landroid/content/Intent;Ljava/util/Set;)V

    .line 543
    new-instance v17, Landroid/content/Intent;

    const-string v18, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 544
    .local v17, "widgetIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v7}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->addSystemApps(Ljava/util/List;Landroid/content/Intent;Ljava/util/Set;)V

    .line 546
    const/16 v18, 0x2000

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v11

    .line 548
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

    .line 550
    .local v3, "app":Landroid/content/pm/ApplicationInfo;
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    const/high16 v19, 0x800000

    and-int v18, v18, v19

    if-eqz v18, :cond_2

    .line 552
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

    .line 555
    new-instance v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;

    invoke-direct {v10}, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;-><init>()V

    .line 556
    .local v10, "info":Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    .line 557
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    .line 558
    iget-object v0, v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    .line 559
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 563
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

    .line 567
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

    .line 569
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

    .line 571
    .end local v15    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v18

    goto/16 :goto_0

    .line 577
    .end local v3    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_4
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserApps:Ljava/util/List;

    .line 579
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

    .line 584
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserApps:Ljava/util/List;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 585
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

    .line 586
    .restart local v3    # "app":Landroid/content/pm/ApplicationInfo;
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    const/high16 v19, 0x800000

    and-int v18, v18, v19

    if-eqz v18, :cond_5

    .line 588
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

    .line 591
    new-instance v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;

    invoke-direct {v10}, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;-><init>()V

    .line 592
    .restart local v10    # "info":Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    .line 593
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    .line 594
    iget-object v0, v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    .line 595
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 602
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

    .line 605
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 606
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

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;

    .line 609
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

    .line 610
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

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 606
    :goto_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 615
    :cond_7
    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 620
    .end local v4    # "both":Ljava/lang/String;
    .end local v10    # "info":Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;
    :cond_8
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 621
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

    .line 622
    .restart local v10    # "info":Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;
    iget-object v0, v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 623
    iget-object v0, v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->masterEntry:Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;

    goto :goto_5

    .line 625
    :cond_9
    iget-object v0, v10, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 581
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
    .line 1056
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 1057
    aget-object v1, p2, v0

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1058
    aget-object p3, p1, v0

    .line 1061
    .end local p3    # "selectedString":Ljava/lang/String;
    :cond_0
    return-object p3

    .line 1056
    .restart local p3    # "selectedString":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private generateCustomActivityRequestCode(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)I
    .locals 2
    .param p1, "preference"    # Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .prologue
    .line 1020
    iget v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mCustomRequestCode:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mCustomRequestCode:I

    .line 1021
    iget-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mCustomRequestCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    iget v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mCustomRequestCode:I

    return v0
.end method

.method private getAppInfoForUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 500
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 504
    :goto_0
    return-object v1

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 733
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

.method private isAppEnabledForUser(Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v1, 0x0

    .line 636
    if-nez p1, :cond_1

    .line 639
    :cond_0
    :goto_0
    return v1

    .line 637
    :cond_1
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 639
    .local v0, "flags":I
    const/high16 v2, 0x800000

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    const/high16 v2, 0x8000000

    and-int/2addr v2, v0

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isPlatformSigned(Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v0, 0x0

    .line 631
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

    .line 415
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 416
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_1

    .line 425
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v2

    .line 417
    .restart local v1    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .local v0, "flags":I
    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_2

    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_0

    .line 420
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 422
    .end local v0    # "flags":I
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private onAppSettingsIconClicked(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)V
    .locals 5
    .param p1, "preference"    # Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .prologue
    const/4 v2, 0x1

    .line 848
    invoke-virtual {p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pkg_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 849
    invoke-virtual {p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isPanelOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 850
    invoke-direct {p0, p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->removeRestrictionsForApp(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    .line 862
    :goto_0
    invoke-virtual {p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isPanelOpen()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    invoke-virtual {p1, v2}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setPanelOpen(Z)V

    .line 864
    :cond_0
    return-void

    .line 852
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pkg_"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 853
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 855
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-static {v3, v4}, Lcom/android/settings_ex/users/RestrictionUtils;->getRestrictions(Landroid/content/Context;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v1

    .line 857
    .local v1, "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->onRestrictionsReceived(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 859
    .end local v1    # "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    :cond_2
    invoke-direct {p0, v0, p1, v2}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    goto :goto_0

    .line 862
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private onPackageChanged(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 313
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, "packageName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 318
    .local v2, "pref":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    if-nez v2, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 320
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

    .line 322
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private onRestrictionsReceived(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 16
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
    .line 948
    .local p3, "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    invoke-direct/range {p0 .. p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->removeRestrictionsForApp(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    .line 950
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 951
    .local v3, "context":Landroid/content/Context;
    const/4 v4, 0x1

    .line 952
    .local v4, "count":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/RestrictionEntry;

    .line 953
    .local v5, "entry":Landroid/content/RestrictionEntry;
    const/4 v9, 0x0

    .line 954
    .local v9, "p":Landroid/preference/Preference;
    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getType()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 991
    :goto_1
    if-eqz v9, :cond_0

    .line 992
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 993
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->getOrder()I

    move-result v13

    add-int/2addr v13, v4

    invoke-virtual {v9, v13}, Landroid/preference/Preference;->setOrder(I)V

    .line 995
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v14

    const-string v15, "pkg_"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 997
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v13, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 998
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 999
    const v13, 0x7f020020

    invoke-virtual {v9, v13}, Landroid/preference/Preference;->setIcon(I)V

    .line 1000
    # getter for: Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->mChildren:Ljava/util/List;
    invoke-static/range {p1 .. p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$1100(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1001
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 956
    :pswitch_0
    new-instance v9, Landroid/preference/SwitchPreference;

    .end local v9    # "p":Landroid/preference/Preference;
    invoke-direct {v9, v3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 957
    .restart local v9    # "p":Landroid/preference/Preference;
    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 958
    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object v13, v9

    .line 959
    check-cast v13, Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v14

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 963
    :pswitch_1
    new-instance v9, Landroid/preference/ListPreference;

    .end local v9    # "p":Landroid/preference/Preference;
    invoke-direct {v9, v3}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 964
    .restart local v9    # "p":Landroid/preference/Preference;
    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 965
    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getSelectedString()Ljava/lang/String;

    move-result-object v12

    .line 966
    .local v12, "value":Ljava/lang/String;
    if-nez v12, :cond_1

    .line 967
    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getDescription()Ljava/lang/String;

    move-result-object v12

    .line 969
    :cond_1
    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v12}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->findInArray([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object v13, v9

    .line 971
    check-cast v13, Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    move-object v13, v9

    .line 972
    check-cast v13, Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object v13, v9

    .line 973
    check-cast v13, Landroid/preference/ListPreference;

    invoke-virtual {v13, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    move-object v13, v9

    .line 974
    check-cast v13, Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 977
    .end local v12    # "value":Ljava/lang/String;
    :pswitch_2
    new-instance v9, Landroid/preference/MultiSelectListPreference;

    .end local v9    # "p":Landroid/preference/Preference;
    invoke-direct {v9, v3}, Landroid/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;)V

    .line 978
    .restart local v9    # "p":Landroid/preference/Preference;
    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    move-object v13, v9

    .line 979
    check-cast v13, Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    move-object v13, v9

    .line 980
    check-cast v13, Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 981
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 982
    .local v11, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getAllSelectedStrings()[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2
    if-ge v7, v8, :cond_2

    aget-object v10, v2, v7

    .line 983
    .local v10, "s":Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 982
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .end local v10    # "s":Ljava/lang/String;
    :cond_2
    move-object v13, v9

    .line 985
    check-cast v13, Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v13, v11}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    move-object v13, v9

    .line 986
    check-cast v13, Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/MultiSelectListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1004
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "entry":Landroid/content/RestrictionEntry;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "p":Landroid/preference/Preference;
    .end local v11    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setRestrictions(Ljava/util/ArrayList;)V

    .line 1005
    const/4 v13, 0x1

    if-ne v4, v13, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1009
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1011
    :cond_4
    return-void

    .line 954
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private populateApps()V
    .locals 19

    .prologue
    .line 644
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 645
    .local v2, "context":Landroid/content/Context;
    if-nez v2, :cond_1

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 647
    .local v11, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    .line 648
    .local v6, "ipm":Landroid/content/pm/IPackageManager;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v15}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    .line 651
    .local v14, "userId":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/android/settings_ex/Utils;->getExistingUser(Landroid/os/UserManager;Landroid/os/UserHandle;)Landroid/content/pm/UserInfo;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 654
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v15}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 655
    new-instance v13, Landroid/content/Intent;

    const-string v15, "android.intent.action.GET_RESTRICTION_ENTRIES"

    invoke-direct {v13, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 656
    .local v13, "restrictionsIntent":Landroid/content/Intent;
    const/4 v15, 0x0

    invoke-virtual {v11, v13, v15}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v12

    .line 657
    .local v12, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    .line 658
    .local v4, "i":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;

    .line 659
    .local v1, "app":Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;
    iget-object v9, v1, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    .line 660
    .local v9, "packageName":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 661
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 662
    .local v7, "isSettingsApp":Z
    new-instance v8, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    move-object/from16 v0, p0

    invoke-direct {v8, v2, v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    .line 663
    .local v8, "p":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v9}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->resolveInfoListHasPackage(Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    .line 664
    .local v3, "hasSettings":Z
    iget-object v15, v1, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_b

    iget-object v15, v1, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    :goto_2
    invoke-virtual {v8, v15}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 665
    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 666
    iget-object v15, v1, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    invoke-virtual {v8, v15}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 667
    iget-object v15, v1, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->masterEntry:Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;

    if-eqz v15, :cond_3

    .line 668
    const v15, 0x7f090a42

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    iget-object v0, v1, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->masterEntry:Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 671
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setKey(Ljava/lang/String;)V

    .line 672
    if-nez v3, :cond_4

    if-eqz v7, :cond_c

    :cond_4
    iget-object v15, v1, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->masterEntry:Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;

    if-nez v15, :cond_c

    const/4 v15, 0x1

    :goto_3
    # invokes: Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setSettingsEnabled(Z)V
    invoke-static {v8, v15}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$800(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    .line 673
    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setPersistent(Z)V

    .line 674
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 675
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 676
    const/4 v10, 0x0

    .line 678
    .local v10, "pi":Landroid/content/pm/PackageInfo;
    const/16 v15, 0x2040

    :try_start_0
    invoke-interface {v6, v9, v15, v14}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 683
    :goto_4
    if-eqz v10, :cond_2

    .line 686
    iget-boolean v15, v10, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    if-nez v15, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->isPlatformSigned(Landroid/content/pm/PackageInfo;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 687
    :cond_5
    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 688
    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setImmutable(Z)V

    .line 690
    if-nez v3, :cond_6

    if-eqz v7, :cond_2

    .line 695
    :cond_6
    if-eqz v3, :cond_7

    iget-object v15, v1, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->masterEntry:Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;

    if-nez v15, :cond_7

    .line 696
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8, v15}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    .line 701
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    if-eqz v15, :cond_8

    iget-object v15, v10, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    if-eqz v15, :cond_8

    iget-object v15, v10, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-nez v15, :cond_8

    .line 703
    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 704
    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setImmutable(Z)V

    .line 705
    const v15, 0x7f090a43

    invoke-virtual {v8, v15}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setSummary(I)V

    .line 707
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    if-eqz v15, :cond_9

    iget-object v15, v10, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz v15, :cond_9

    .line 708
    const v15, 0x7f090a44

    invoke-virtual {v8, v15}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setSummary(I)V

    .line 710
    :cond_9
    iget-object v15, v1, Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;->masterEntry:Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;

    if-eqz v15, :cond_a

    .line 711
    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setImmutable(Z)V

    .line 712
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    invoke-virtual {v15, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    invoke-virtual {v8, v15}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 714
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v15, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 715
    if-eqz v7, :cond_e

    .line 716
    const/16 v15, 0x64

    invoke-virtual {v8, v15}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOrder(I)V

    .line 720
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    invoke-virtual {v8}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppListChanged:Z

    .line 722
    add-int/lit8 v4, v4, 0x1

    .line 723
    goto/16 :goto_1

    .line 664
    .end local v10    # "pi":Landroid/content/pm/PackageInfo;
    :cond_b
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 672
    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 698
    .restart local v10    # "pi":Landroid/content/pm/PackageInfo;
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mNewUser:Z

    if-nez v15, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->isAppEnabledForUser(Landroid/content/pm/PackageInfo;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 699
    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    goto/16 :goto_5

    .line 718
    :cond_e
    add-int/lit8 v15, v4, 0x2

    mul-int/lit8 v15, v15, 0x64

    invoke-virtual {v8, v15}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOrder(I)V

    goto :goto_6

    .line 726
    .end local v1    # "app":Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;
    .end local v3    # "hasSettings":Z
    .end local v7    # "isSettingsApp":Z
    .end local v8    # "p":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "pi":Landroid/content/pm/PackageInfo;
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mNewUser:Z

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mFirstTime:Z

    if-eqz v15, :cond_0

    .line 727
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mFirstTime:Z

    .line 728
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->applyUserAppsStates()V

    goto/16 :goto_0

    .line 681
    .restart local v1    # "app":Lcom/android/settings_ex/users/AppRestrictionsFragment$SelectableAppInfo;
    .restart local v3    # "hasSettings":Z
    .restart local v7    # "isSettingsApp":Z
    .restart local v8    # "p":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v10    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v15

    goto/16 :goto_4
.end method

.method private removeRestrictionsForApp(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)V
    .locals 3
    .param p1, "preference"    # Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .prologue
    .line 841
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

    .line 842
    .local v1, "p":Landroid/preference/Preference;
    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 844
    .end local v1    # "p":Landroid/preference/Preference;
    :cond_0
    # getter for: Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->mChildren:Ljava/util/List;
    invoke-static {p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$1100(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 845
    return-void
.end method

.method private requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "preference"    # Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    .param p3, "invokeIfCustom"    # Z

    .prologue
    const/4 v2, 0x0

    .line 875
    iget-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v3}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v8

    .line 877
    .local v8, "oldEntries":Landroid/os/Bundle;
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_RESTRICTION_ENTRIES"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 878
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 879
    const-string v0, "android.intent.extra.restrictions_bundle"

    invoke-virtual {v1, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 880
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 881
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Lcom/android/settings_ex/users/AppRestrictionsFragment$RestrictionsResultReceiver;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/settings_ex/users/AppRestrictionsFragment$RestrictionsResultReceiver;-><init>(Lcom/android/settings_ex/users/AppRestrictionsFragment;Ljava/lang/String;Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    const/4 v5, -0x1

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 884
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
    .line 747
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

    .line 748
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 749
    const/4 v2, 0x1

    .line 752
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
    .line 756
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 757
    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 758
    .local v1, "pref":Landroid/preference/Preference;
    instance-of v2, v1, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    if-eqz v2, :cond_0

    .line 759
    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 760
    check-cast v1, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .end local v1    # "pref":Landroid/preference/Preference;
    invoke-virtual {v1, p2}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 756
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 764
    :cond_1
    return-void
.end method


# virtual methods
.method protected clearSelectedApps()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 342
    return-void
.end method

.method protected getAppPreferenceGroup()Landroid/preference/PreferenceGroup;
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method getCircularUserIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 331
    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 332
    .local v1, "userIcon":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 333
    const/4 v0, 0x0

    .line 337
    :goto_0
    return-object v0

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/settings_ex/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settings_ex/drawable/CircleFramedDrawable;

    move-result-object v0

    .line 337
    .local v0, "circularIcon":Lcom/android/settings_ex/drawable/CircleFramedDrawable;
    goto :goto_0
.end method

.method protected init(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 243
    if-eqz p1, :cond_2

    .line 244
    new-instance v1, Landroid/os/UserHandle;

    const-string v2, "user_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    .line 255
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    if-nez v1, :cond_1

    .line 256
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    .line 259
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 260
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    .line 261
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    .line 262
    iget-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mSysPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_1
    const v1, 0x7f06000c

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->addPreferencesFromResource(I)V

    .line 270
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getAppPreferenceGroup()Landroid/preference/PreferenceGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    .line 271
    return-void

    .line 246
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 247
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 248
    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 249
    new-instance v1, Landroid/os/UserHandle;

    const-string v2, "user_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    .line 251
    :cond_3
    const-string v1, "new_user"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mNewUser:Z

    goto :goto_0

    .line 266
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
    .line 1027
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1029
    iget-object v4, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 1030
    .local v3, "pref":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    if-nez v3, :cond_0

    .line 1031
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

    .line 1052
    :goto_0
    return-void

    .line 1035
    :cond_0
    const/4 v4, -0x1

    if-ne p2, v4, :cond_1

    .line 1036
    invoke-virtual {v3}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pkg_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1037
    .local v2, "packageName":Ljava/lang/String;
    const-string v4, "android.intent.extra.restrictions_list"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1039
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    const-string v4, "android.intent.extra.restrictions_bundle"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1040
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 1042
    invoke-virtual {v3, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setRestrictions(Ljava/util/ArrayList;)V

    .line 1043
    iget-object v4, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    invoke-static {v1}, Lcom/android/settings_ex/users/RestrictionUtils;->restrictionsToBundle(Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1051
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

    .line 1045
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_1

    .line 1047
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

    .line 768
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    if-eqz v2, :cond_0

    .line 769
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 770
    .local v1, "pref":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v5, 0x7f0f01a5

    if-ne v2, v5, :cond_1

    .line 771
    invoke-direct {p0, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->onAppSettingsIconClicked(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    .line 789
    .end local v1    # "pref":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    :cond_0
    :goto_0
    return-void

    .line 772
    .restart local v1    # "pref":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    :cond_1
    invoke-virtual {v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 773
    invoke-virtual {v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 774
    invoke-virtual {v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v5, "pkg_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 775
    .local v0, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    invoke-virtual {v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    # getter for: Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->hasSettings:Z
    invoke-static {v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$900(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)Z

    move-result v2

    if-eqz v2, :cond_2

    # getter for: Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->restrictions:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$1000(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_2

    .line 779
    invoke-direct {p0, v0, v1, v4}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    .line 781
    :cond_2
    iput-boolean v3, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppListChanged:Z

    .line 783
    iget-boolean v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    if-nez v2, :cond_3

    .line 784
    invoke-virtual {v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->applyUserAppState(Ljava/lang/String;Z)V

    .line 786
    :cond_3
    invoke-virtual {v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->updateAllEntries(Ljava/lang/String;Z)V

    goto :goto_0

    .end local v0    # "packageName":Ljava/lang/String;
    :cond_4
    move v2, v4

    .line 773
    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 299
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mNewUser:Z

    .line 301
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserBackgrounding:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 302
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mPackageObserver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 303
    iget-boolean v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppListChanged:Z

    if-eqz v0, :cond_0

    .line 304
    new-instance v0, Lcom/android/settings_ex/users/AppRestrictionsFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$3;-><init>(Lcom/android/settings_ex/users/AppRestrictionsFragment;)V

    invoke-virtual {v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$3;->start()V

    .line 310
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 17
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 793
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 794
    .local v5, "key":Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string v14, ";"

    invoke-virtual {v5, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 795
    new-instance v13, Ljava/util/StringTokenizer;

    const-string v14, ";"

    invoke-direct {v13, v5, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    .local v13, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 797
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 798
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

    .line 800
    .local v2, "appPref":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    invoke-virtual {v2}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->getRestrictions()Ljava/util/ArrayList;

    move-result-object v10

    .line 801
    .local v10, "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    if-eqz v10, :cond_1

    .line 802
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

    .line 803
    .local v3, "entry":Landroid/content/RestrictionEntry;
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 804
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getType()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    goto :goto_0

    .line 806
    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-virtual {v3, v14}, Landroid/content/RestrictionEntry;->setSelectedState(Z)V

    .line 825
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 826
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-static {v14, v10, v15}, Lcom/android/settings_ex/users/RestrictionUtils;->setRestrictions(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/UserHandle;)V

    .line 837
    .end local v2    # "appPref":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    .end local v3    # "entry":Landroid/content/RestrictionEntry;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v9    # "restrictionKey":Ljava/lang/String;
    .end local v10    # "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    .end local v13    # "st":Ljava/util/StringTokenizer;
    :cond_1
    :goto_2
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

    .line 810
    check-cast v6, Landroid/preference/ListPreference;

    .local v6, "listPref":Landroid/preference/ListPreference;
    move-object/from16 v14, p2

    .line 811
    check-cast v14, Ljava/lang/String;

    invoke-virtual {v3, v14}, Landroid/content/RestrictionEntry;->setSelectedString(Ljava/lang/String;)V

    .line 812
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

    .line 814
    .local v8, "readable":Ljava/lang/String;
    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .end local v6    # "listPref":Landroid/preference/ListPreference;
    .end local v8    # "readable":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :pswitch_2
    move-object/from16 v12, p2

    .line 817
    check-cast v12, Ljava/util/Set;

    .line 818
    .local v12, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v14

    new-array v11, v14, [Ljava/lang/String;

    .line 819
    .local v11, "selectedValues":[Ljava/lang/String;
    invoke-interface {v12, v11}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 820
    invoke-virtual {v3, v11}, Landroid/content/RestrictionEntry;->setAllSelectedStrings([Ljava/lang/String;)V

    goto :goto_1

    .line 828
    .end local v11    # "selectedValues":[Ljava/lang/String;
    .end local v12    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    invoke-static {v10}, Lcom/android/settings_ex/users/RestrictionUtils;->restrictionsToBundle(Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v7, v15, v0}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 804
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

    .line 1066
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pkg_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, p1

    .line 1067
    check-cast v0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 1068
    .local v0, "arp":Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    invoke-virtual {v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1069
    invoke-virtual {v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pkg_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1070
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    move v1, v3

    .line 1071
    .local v1, "newEnabledState":Z
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 1072
    iget-object v4, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    invoke-virtual {v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->updateAllEntries(Ljava/lang/String;Z)V

    .line 1074
    iput-boolean v3, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppListChanged:Z

    .line 1075
    invoke-direct {p0, v2, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->applyUserAppState(Ljava/lang/String;Z)V

    .line 1079
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

    .line 281
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 283
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUserBackgrounding:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.USER_BACKGROUND"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 285
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 286
    .local v0, "packageFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mPackageObserver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 291
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppListChanged:Z

    .line 292
    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppLoadingTask:Landroid/os/AsyncTask;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppLoadingTask:Landroid/os/AsyncTask;

    invoke-virtual {v2}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_1

    .line 293
    :cond_0
    new-instance v2, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppLoadingTask;

    invoke-direct {v2, p0, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppLoadingTask;-><init>(Lcom/android/settings_ex/users/AppRestrictionsFragment;Lcom/android/settings_ex/users/AppRestrictionsFragment$1;)V

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppLoadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppLoadingTask:Landroid/os/AsyncTask;

    .line 295
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 275
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 276
    const-string v0, "user_id"

    iget-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 277
    return-void
.end method
