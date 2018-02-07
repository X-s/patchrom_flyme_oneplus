.class public Lcom/android/settings_ex/applications/DefaultHomePreference;
.super Lcom/android/settings_ex/AppListPreference;
.source "DefaultHomePreference.java"


# static fields
.field public static final DEFAULT_LAUNCHER_0:Ljava/lang/String; = "com.oneplus.hydrogen.launcher"

.field public static final DEFAULT_LAUNCHER_1:Ljava/lang/String; = "net.oneplus.h2launcher"

.field public static final DEFAULT_LAUNCHER_2:Ljava/lang/String; = "net.oneplus.launcher"


# instance fields
.field private final mAllHomeComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mHomeFilter:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/AppListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/DefaultHomePreference;->mAllHomeComponents:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/DefaultHomePreference;->mHomeFilter:Landroid/content/IntentFilter;

    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultHomePreference;->mHomeFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultHomePreference;->mHomeFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultHomePreference;->refreshHomeOptions()V

    .line 47
    return-void
.end method

.method public static hasHomePreference(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v0, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 161
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 162
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 163
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    const/4 v3, 0x1

    return v3

    .line 162
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private hasManagedProfile()Z
    .locals 6

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultHomePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Landroid/os/UserManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 151
    .local v3, "userManager":Landroid/os/UserManager;
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultHomePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 152
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "userInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 153
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    return v4

    .line 155
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method public static isHomeDefault(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v1, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 173
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 175
    .local v0, "def":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private launcherHasManagedProfilesFeature(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z
    .locals 5
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v4, 0x0

    .line 138
    :try_start_0
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    .line 137
    invoke-virtual {p2, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 139
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-direct {p0, v2}, Lcom/android/settings_ex/applications/DefaultHomePreference;->versionNumberAtLeastL(I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 140
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v4
.end method

.method private versionNumberAtLeastL(I)Z
    .locals 1
    .param p1, "versionNumber"    # I

    .prologue
    .line 146
    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public performClick()V
    .locals 0

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultHomePreference;->refreshHomeOptions()V

    .line 58
    invoke-super {p0}, Lcom/android/settings_ex/AppListPreference;->performClick()V

    .line 56
    return-void
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 63
    if-eqz p1, :cond_0

    .line 64
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 65
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultHomePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/applications/DefaultHomePreference;->mHomeFilter:Landroid/content/IntentFilter;

    .line 67
    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultHomePreference;->mAllHomeComponents:Ljava/util/ArrayList;

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ComponentName;

    .line 66
    const/high16 v4, 0x100000

    .line 65
    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultHomePreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/DefaultHomePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 70
    .end local v0    # "component":Landroid/content/ComponentName;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/AppListPreference;->persistString(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public refreshHomeOptions()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultHomePreference;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 75
    .local v8, "myPkg":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v4, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultHomePreference;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 77
    .local v9, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v9, v4}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v3

    .line 78
    .local v3, "currentDefaultHome":Landroid/content/ComponentName;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v2, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v11, p0, Lcom/android/settings_ex/applications/DefaultHomePreference;->mAllHomeComponents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 80
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v10, "summaries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-direct {p0}, Lcom/android/settings_ex/applications/DefaultHomePreference;->hasManagedProfile()Z

    move-result v7

    .line 83
    .local v7, "mustSupportManagedProfile":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_3

    .line 84
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 85
    .local v1, "candidate":Landroid/content/pm/ResolveInfo;
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 86
    .local v6, "info":Landroid/content/pm/ActivityInfo;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v11, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .local v0, "activityName":Landroid/content/ComponentName;
    iget-object v11, p0, Lcom/android/settings_ex/applications/DefaultHomePreference;->mAllHomeComponents:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v11, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 83
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    if-eqz v7, :cond_1

    invoke-direct {p0, v1, v9}, Lcom/android/settings_ex/applications/DefaultHomePreference;->launcherHasManagedProfilesFeature(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 95
    :cond_1
    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 93
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultHomePreference;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0e07c7

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 105
    .end local v0    # "activityName":Landroid/content/ComponentName;
    .end local v1    # "candidate":Landroid/content/pm/ResolveInfo;
    .end local v6    # "info":Landroid/content/pm/ActivityInfo;
    :cond_3
    if-nez v3, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 106
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "currentDefaultHome":Landroid/content/ComponentName;
    check-cast v3, Landroid/content/ComponentName;

    .line 131
    .restart local v3    # "currentDefaultHome":Landroid/content/ComponentName;
    :cond_4
    new-array v11, v13, [Landroid/content/ComponentName;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/content/ComponentName;

    .line 132
    new-array v12, v13, [Ljava/lang/CharSequence;

    invoke-interface {v10, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/CharSequence;

    .line 131
    invoke-virtual {p0, v11, v3, v12}, Lcom/android/settings_ex/applications/DefaultHomePreference;->setComponentNames([Landroid/content/ComponentName;Landroid/content/ComponentName;[Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method
