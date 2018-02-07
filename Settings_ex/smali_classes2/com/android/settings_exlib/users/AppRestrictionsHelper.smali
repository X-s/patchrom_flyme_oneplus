.class public Lcom/android/settings_exlib/users/AppRestrictionsHelper;
.super Ljava/lang/Object;
.source "AppRestrictionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_exlib/users/AppRestrictionsHelper$AppLabelComparator;,
        Lcom/android/settings_exlib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;,
        Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AppRestrictionsHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIPm:Landroid/content/pm/IPackageManager;

.field private mLeanback:Z

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mRestrictedProfile:Z

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

.field private final mUser:Landroid/os/UserHandle;

.field private final mUserManager:Landroid/os/UserManager;

.field private mVisibleApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mSelectedPackages:Ljava/util/HashMap;

    .line 64
    iput-object p1, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 66
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    .line 67
    iput-object p2, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mUser:Landroid/os/UserHandle;

    .line 68
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mUserManager:Landroid/os/UserManager;

    .line 69
    iget-object v0, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mRestrictedProfile:Z

    .line 63
    return-void
.end method

.method private addSystemApps(Ljava/util/List;Landroid/content/Intent;Ljava/util/Set;)V
    .locals 12
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "visibleApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;>;"
    .local p3, "excludePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 293
    iget-object v7, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 295
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/16 v9, 0x2200

    .line 294
    invoke-virtual {v7, p2, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 296
    .local v5, "launchableApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 297
    .local v0, "app":Landroid/content/pm/ResolveInfo;
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_0

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_0

    .line 298
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 299
    .local v6, "packageName":Ljava/lang/String;
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 300
    .local v3, "flags":I
    and-int/lit8 v9, v3, 0x1

    if-nez v9, :cond_1

    .line 301
    and-int/lit16 v9, v3, 0x80

    if-eqz v9, :cond_0

    .line 304
    :cond_1
    invoke-interface {p3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 305
    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    .line 306
    .local v2, "enabled":I
    const/4 v9, 0x4

    if-eq v2, v9, :cond_2

    .line 307
    const/4 v9, 0x2

    if-ne v2, v9, :cond_3

    .line 310
    :cond_2
    iget-object v9, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mUser:Landroid/os/UserHandle;

    .line 309
    invoke-direct {p0, v6, v11, v9}, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->getAppInfoForUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 311
    .local v8, "targetUserAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v8, :cond_0

    .line 312
    iget v9, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x800000

    and-int/2addr v9, v10

    if-eqz v9, :cond_0

    .line 316
    .end local v8    # "targetUserAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_3
    new-instance v4, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;

    invoke-direct {v4}, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;-><init>()V

    .line 317
    .local v4, "info":Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v9, v4, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    .line 318
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v4, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    .line 319
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v9, v7}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v4, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 320
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v9, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v4, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    .line 321
    iget-object v9, v4, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    if-nez v9, :cond_4

    iget-object v9, v4, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    iput-object v9, v4, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    .line 323
    :cond_4
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 292
    .end local v0    # "app":Landroid/content/pm/ResolveInfo;
    .end local v2    # "enabled":I
    .end local v3    # "flags":I
    .end local v4    # "info":Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private addSystemImes(Ljava/util/Set;)V
    .locals 7
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
    .line 272
    .local p1, "excludePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 271
    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 273
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v2

    .line 274
    .local v2, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "imi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 276
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    :try_start_0
    iget-object v5, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->isSystemPackage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 277
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 279
    :catch_0
    move-exception v4

    .local v4, "rnfe":Landroid/content/res/Resources$NotFoundException;
    goto :goto_0

    .line 270
    .end local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "rnfe":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    return-void
.end method

.method private getAppInfoForUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private isSystemPackage(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 331
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 332
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_0

    return v5

    .line 333
    :cond_0
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    .local v0, "flags":I
    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_1

    .line 335
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_2

    .line 336
    :cond_1
    const/4 v3, 0x1

    return v3

    .line 338
    .end local v0    # "flags":I
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 341
    :cond_2
    return v5
.end method


# virtual methods
.method public applyUserAppState(Ljava/lang/String;ZLcom/android/settings_exlib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "listener"    # Lcom/android/settings_exlib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;

    .prologue
    const/high16 v5, 0x800000

    .line 103
    iget-object v3, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 104
    .local v2, "userId":I
    if-eqz p2, :cond_3

    .line 107
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    .line 108
    const/16 v4, 0x2000

    .line 107
    invoke-interface {v3, p1, v4, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 109
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v3, :cond_0

    .line 110
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v5

    if-nez v3, :cond_1

    .line 111
    :cond_0
    iget-object v3, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    iget-object v4, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-interface {v3, p1, v4}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I

    .line 116
    :cond_1
    if-eqz v0, :cond_2

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 117
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_2

    .line 118
    invoke-interface {p3, p1}, Lcom/android/settings_exlib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;->onDisableUiForPackage(Ljava/lang/String;)V

    .line 119
    iget-object v3, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, v2}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 102
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :goto_0
    return-void

    .line 130
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 131
    .restart local v0    # "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    .line 132
    iget-boolean v3, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mRestrictedProfile:Z

    if-eqz v3, :cond_4

    .line 133
    iget-object v3, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    iget-object v4, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v5, 0x0

    .line 134
    const/4 v6, 0x4

    .line 133
    invoke-interface {v3, p1, v5, v4, v6}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    goto :goto_0

    .line 146
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .local v1, "re":Landroid/os/RemoteException;
    goto :goto_0

    .line 139
    .end local v1    # "re":Landroid/os/RemoteException;
    .restart local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_4
    invoke-interface {p3, p1}, Lcom/android/settings_exlib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;->onDisableUiForPackage(Ljava/lang/String;)V

    .line 140
    iget-object v3, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    const/4 v4, 0x1

    invoke-interface {v3, p1, v4, v2}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 124
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v1

    .restart local v1    # "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public applyUserAppsStates(Lcom/android/settings_exlib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/android/settings_exlib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;

    .prologue
    .line 89
    iget-object v5, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 90
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 91
    const-string/jumbo v5, "AppRestrictionsHelper"

    const-string/jumbo v6, "Cannot apply application restrictions on another user!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void

    .line 94
    :cond_0
    iget-object v5, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mSelectedPackages:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 95
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 96
    .local v3, "packageName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 97
    .local v0, "enabled":Z
    invoke-virtual {p0, v3, v0, p1}, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->applyUserAppState(Ljava/lang/String;ZLcom/android/settings_exlib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;)V

    goto :goto_0

    .line 88
    .end local v0    # "enabled":Z
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public fetchAndMergeApps()V
    .locals 25

    .prologue
    .line 153
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    .line 155
    .local v17, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    .line 157
    .local v12, "ipm":Landroid/content/pm/IPackageManager;
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 158
    .local v7, "excludePackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->addSystemImes(Ljava/util/Set;)V

    .line 161
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v22, "android.intent.action.MAIN"

    move-object/from16 v0, v22

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v13, "launcherIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mLeanback:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 163
    const-string/jumbo v22, "android.intent.category.LEANBACK_LAUNCHER"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v13, v7}, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->addSystemApps(Ljava/util/List;Landroid/content/Intent;Ljava/util/Set;)V

    .line 170
    new-instance v21, Landroid/content/Intent;

    const-string/jumbo v22, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v21, "widgetIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v7}, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->addSystemApps(Ljava/util/List;Landroid/content/Intent;Ljava/util/Set;)V

    .line 174
    const/16 v22, 0x2000

    .line 173
    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v11

    .line 175
    .local v11, "installedApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "app$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 177
    .local v3, "app":Landroid/content/pm/ApplicationInfo;
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v22, v0

    const/high16 v23, 0x800000

    and-int v22, v22, v23

    if-eqz v22, :cond_0

    .line 179
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x1

    if-nez v22, :cond_2

    .line 180
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v22, v0

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    if-nez v22, :cond_2

    .line 182
    new-instance v9, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;

    invoke-direct {v9}, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;-><init>()V

    .line 183
    .local v9, "info":Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v9, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    .line 184
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v9, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    .line 185
    iget-object v0, v9, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v9, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    .line 186
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v9, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 165
    .end local v3    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "app$iterator":Ljava/util/Iterator;
    .end local v9    # "info":Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;
    .end local v11    # "installedApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v21    # "widgetIntent":Landroid/content/Intent;
    :cond_1
    const-string/jumbo v22, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 190
    .restart local v3    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "app$iterator":Ljava/util/Iterator;
    .restart local v11    # "installedApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v21    # "widgetIntent":Landroid/content/Intent;
    :cond_2
    :try_start_0
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v16

    .line 194
    .local v16, "pi":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mRestrictedProfile:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 195
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mSelectedPackages:Ljava/util/HashMap;

    move-object/from16 v22, v0

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 198
    .end local v16    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v18

    .local v18, "re":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_1

    .line 205
    .end local v3    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v18    # "re":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    const/16 v20, 0x0

    .line 208
    .local v20, "userApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mUser:Landroid/os/UserHandle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v22

    const/16 v23, 0x2000

    .line 207
    move/from16 v0, v23

    move/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v14

    .line 209
    .local v14, "listSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v14, :cond_4

    .line 210
    invoke-virtual {v14}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v20

    .line 216
    .end local v14    # "listSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    .end local v20    # "userApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_4
    :goto_2
    if-eqz v20, :cond_6

    .line 217
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 218
    .restart local v3    # "app":Landroid/content/pm/ApplicationInfo;
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v22, v0

    const/high16 v23, 0x800000

    and-int v22, v22, v23

    if-eqz v22, :cond_5

    .line 220
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x1

    if-nez v22, :cond_5

    .line 221
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v22, v0

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    if-nez v22, :cond_5

    .line 223
    new-instance v9, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;

    invoke-direct {v9}, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;-><init>()V

    .line 224
    .restart local v9    # "info":Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v9, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    .line 225
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v9, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    .line 226
    iget-object v0, v9, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v9, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    .line 227
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v9, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 234
    .end local v3    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "info":Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/settings_exlib/users/AppRestrictionsHelper$AppLabelComparator;

    const/16 v24, 0x0

    invoke-direct/range {v23 .. v24}, Lcom/android/settings_exlib/users/AppRestrictionsHelper$AppLabelComparator;-><init>(Lcom/android/settings_exlib/users/AppRestrictionsHelper$AppLabelComparator;)V

    invoke-static/range {v22 .. v23}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 237
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 238
    .local v6, "dedupPackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    add-int/lit8 v8, v22, -0x1

    .local v8, "i":I
    :goto_4
    if-ltz v8, :cond_9

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;

    .line 241
    .restart local v9    # "info":Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v9, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "+"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v9, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 242
    .local v5, "both":Ljava/lang/String;
    iget-object v0, v9, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 243
    iget-object v0, v9, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 247
    :cond_7
    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 238
    :goto_5
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 244
    :cond_8
    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    .line 242
    if-eqz v22, :cond_7

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5

    .line 252
    .end local v5    # "both":Ljava/lang/String;
    .end local v9    # "info":Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;
    :cond_9
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 253
    .local v15, "packageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "info$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;

    .line 254
    .restart local v9    # "info":Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;
    iget-object v0, v9, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 255
    iget-object v0, v9, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;

    move-object/from16 v0, v22

    iput-object v0, v9, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->masterEntry:Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;

    goto :goto_6

    .line 257
    :cond_a
    iget-object v0, v9, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 152
    .end local v9    # "info":Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;
    :cond_b
    return-void

    .line 212
    .end local v6    # "dedupPackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "i":I
    .end local v10    # "info$iterator":Ljava/util/Iterator;
    .end local v15    # "packageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;>;"
    .restart local v20    # "userApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :catch_1
    move-exception v19

    .local v19, "re":Landroid/os/RemoteException;
    goto/16 :goto_2
.end method

.method public getVisibleApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    return-object v0
.end method

.method public isPackageSelected(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mSelectedPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setLeanback(Z)V
    .locals 0
    .param p1, "isLeanback"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mLeanback:Z

    .line 80
    return-void
.end method

.method public setPackageSelected(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "selected"    # Z

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->mSelectedPackages:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method
