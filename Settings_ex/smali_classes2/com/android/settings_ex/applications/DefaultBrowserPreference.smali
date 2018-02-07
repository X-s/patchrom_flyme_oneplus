.class public Lcom/android/settings_ex/applications/DefaultBrowserPreference;
.super Lcom/android/settings_ex/AppListPreference;
.source "DefaultBrowserPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/DefaultBrowserPreference$1;,
        Lcom/android/settings_ex/applications/DefaultBrowserPreference$2;
    }
.end annotation


# static fields
.field private static final BROWSE_PROBE:Landroid/content/Intent;

.field private static final DEBUG:Z

.field public static final DEFAULT_BROWSER_HYDROGEN:Ljava/lang/String; = "com.android.browser"

.field public static final DEFAULT_BROWSER_OXYGEN:Ljava/lang/String; = "com.android.chrome"

.field private static final DELAY_UPDATE_BROWSER_MILLIS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "DefaultBrowserPref"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/applications/DefaultBrowserPreference;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/applications/DefaultBrowserPreference;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/applications/DefaultBrowserPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->updateDefaultBrowserPreference()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-string/jumbo v0, "DefaultBrowserPref"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->DEBUG:Z

    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 44
    const-string/jumbo v1, "android.intent.action.VIEW"

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 45
    const-string/jumbo v1, "android.intent.category.BROWSABLE"

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 46
    const-string/jumbo v1, "http:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->BROWSE_PROBE:Landroid/content/Intent;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/AppListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->mHandler:Landroid/os/Handler;

    .line 186
    new-instance v0, Lcom/android/settings_ex/applications/DefaultBrowserPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/DefaultBrowserPreference$1;-><init>(Lcom/android/settings_ex/applications/DefaultBrowserPreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 193
    new-instance v0, Lcom/android/settings_ex/applications/DefaultBrowserPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/DefaultBrowserPreference$2;-><init>(Lcom/android/settings_ex/applications/DefaultBrowserPreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->mPm:Landroid/content/pm/PackageManager;

    .line 60
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->refreshBrowserApps()V

    .line 56
    return-void
.end method

.method public static hasBrowserPreference(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 220
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 221
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string/jumbo v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string/jumbo v3, "http:"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 224
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 227
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isBrowserDefault(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 232
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 231
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "defaultPackage":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resolveBrowserApps()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 153
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string/jumbo v6, "android.intent.category.BROWSABLE"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string/jumbo v6, "http:"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 158
    iget-object v6, p0, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->mPm:Landroid/content/pm/PackageManager;

    sget-object v7, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->BROWSE_PROBE:Landroid/content/Intent;

    .line 159
    iget v8, p0, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->mUserId:I

    const/high16 v9, 0x20000

    .line 158
    invoke-virtual {v6, v7, v9, v8}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    .line 161
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 162
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 163
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 164
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_0

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 165
    iget-boolean v6, v2, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v6, :cond_0

    .line 169
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v5
.end method

.method private updateDefaultBrowserPreference()V
    .locals 7

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->refreshBrowserApps()V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 129
    .local v3, "pm":Landroid/content/pm/PackageManager;
    iget v4, p0, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 132
    new-instance v4, Landroid/content/Intent;

    sget-object v5, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->BROWSE_PROBE:Landroid/content/Intent;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 135
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->mPm:Landroid/content/pm/PackageManager;

    iget v5, p0, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->mUserId:I

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 136
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->setValue(Ljava/lang/String;)V

    .line 138
    const-string/jumbo v4, "%s"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 124
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 140
    .restart local v0    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const v4, 0x7f0e0f1f

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->setSummary(I)V

    goto :goto_0

    .line 143
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    sget-boolean v4, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "DefaultBrowserPref"

    const-string/jumbo v5, "No default browser app."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->setSoleAppLabelAsSummary()V

    goto :goto_0
.end method


# virtual methods
.method protected getSoleAppLabel()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->mPm:Landroid/content/pm/PackageManager;

    sget-object v2, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->BROWSE_PROBE:Landroid/content/Intent;

    .line 179
    iget v3, p0, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->mUserId:I

    const/high16 v4, 0x20000

    .line 178
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 180
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 181
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v2, p0, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 183
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public onAttached()V
    .locals 4

    .prologue
    .line 65
    invoke-super {p0}, Lcom/android/settings_ex/AppListPreference;->onAttached()V

    .line 66
    invoke-direct {p0}, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->updateDefaultBrowserPreference()V

    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 64
    return-void
.end method

.method public onDetached()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 73
    invoke-super {p0}, Lcom/android/settings_ex/AppListPreference;->onDetached()V

    .line 71
    return-void
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 6
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 79
    if-nez p1, :cond_0

    .line 80
    return v2

    .line 82
    :cond_0
    move-object v0, p1

    .line 83
    .local v0, "packageName":Ljava/lang/CharSequence;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    return v2

    .line 86
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->mPm:Landroid/content/pm/PackageManager;

    .line 87
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->mUserId:I

    .line 86
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    move-result v1

    .line 88
    .local v1, "result":Z
    if-eqz v1, :cond_2

    .line 89
    const-string/jumbo v3, "%s"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 91
    :cond_2
    if-eqz v1, :cond_3

    invoke-super {p0, p1}, Lcom/android/settings_ex/AppListPreference;->persistString(Ljava/lang/String;)Z

    move-result v2

    :cond_3
    return v2
.end method

.method public refreshBrowserApps()V
    .locals 4

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->resolveBrowserApps()Ljava/util/List;

    move-result-object v0

    .line 101
    .local v0, "browsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "defaultValue":Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v2, "com.android.chrome"

    .line 119
    .local v2, "systemValue":Ljava/lang/String;
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 94
    return-void

    .line 102
    .end local v2    # "systemValue":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "com.android.browser"

    .restart local v2    # "systemValue":Ljava/lang/String;
    goto :goto_0
.end method
