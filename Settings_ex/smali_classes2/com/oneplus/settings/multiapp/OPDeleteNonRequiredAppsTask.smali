.class public Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;
.super Ljava/lang/Object;
.source "OPDeleteNonRequiredAppsTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;,
        Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$PackageDeleteObserver;
    }
.end annotation


# static fields
.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field public static final DEVICE_OWNER:I = 0x0

.field public static final MANAGED_USER:I = 0x2

.field public static final PROFILE_OWNER:I = 0x1

.field public static final TAG:Ljava/lang/String; = "DeleteNonRequiredAppsTask"

.field private static final TAG_PACKAGE_LIST_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_SYSTEM_APPS:Ljava/lang/String; = "system-apps"


# instance fields
.field private final mCallback:Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mDisallowedAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field private final mLeaveAllSystemAppsEnabled:Z

.field private final mMdmPackageName:Ljava/lang/String;

.field private final mNewProfile:Z

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mProvisioningType:I

.field private final mRequiredAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserId:I

.field private final mVendorDisallowedAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVendorRequiredAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;)Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mCallback:Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;

    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Lcom/android/internal/view/IInputMethodManager;Ljava/lang/String;IZIZLcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iPm"    # Landroid/content/pm/IPackageManager;
    .param p3, "iimm"    # Lcom/android/internal/view/IInputMethodManager;
    .param p4, "mdmPackageName"    # Ljava/lang/String;
    .param p5, "provisioningType"    # I
    .param p6, "newProfile"    # Z
    .param p7, "userId"    # I
    .param p8, "leaveAllSystemAppsEnabled"    # Z
    .param p9, "callback"    # Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;

    .prologue
    const/4 v4, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p9, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mCallback:Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;

    .line 119
    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mContext:Landroid/content/Context;

    .line 120
    iput-object p4, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mMdmPackageName:Ljava/lang/String;

    .line 121
    iput p5, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mProvisioningType:I

    .line 122
    iput p7, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mUserId:I

    .line 123
    iput-boolean p6, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mNewProfile:Z

    .line 124
    iput-boolean p8, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mLeaveAllSystemAppsEnabled:Z

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mPm:Landroid/content/pm/PackageManager;

    .line 126
    iput-object p2, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 127
    iput-object p3, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mIInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    .line 129
    const v1, 0x7f0a00aa

    .line 131
    .local v1, "requiredAppsListArray":I
    const v0, 0x7f0a00ab

    .line 153
    .local v0, "disallowedAppsListArray":I
    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 154
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mRequiredAppsList:Ljava/util/List;

    .line 155
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mDisallowedAppsList:Ljava/util/List;

    .line 156
    iput-object v4, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mVendorRequiredAppsList:Ljava/util/List;

    .line 157
    iput-object v4, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mVendorDisallowedAppsList:Ljava/util/List;

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZIZLcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mdmPackageName"    # Ljava/lang/String;
    .param p3, "provisioningType"    # I
    .param p4, "newProfile"    # Z
    .param p5, "userId"    # I
    .param p6, "leaveAllSystemAppsEnabled"    # Z
    .param p7, "callback"    # Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;

    .prologue
    .line 109
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-static {}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->getIInputMethodManager()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Lcom/android/internal/view/IInputMethodManager;Ljava/lang/String;IZIZLcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;)V

    .line 108
    return-void
.end method

.method private getCurrentAppsWithLauncher()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .local v1, "launcherIntent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    iget-object v5, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mPm:Landroid/content/pm/PackageManager;

    .line 267
    iget v6, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mUserId:I

    .line 262
    const v7, 0x1c2200

    .line 261
    invoke-virtual {v5, v1, v7, v6}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    .line 268
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string/jumbo v5, "DeleteNonRequiredAppsTask"

    const-string/jumbo v6, "Oneplus-MATCH_SYSTEM_ONLY"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 270
    .local v0, "apps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "resolveInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 271
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 273
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v0
.end method

.method private getDisallowedApps()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 360
    .local v0, "disallowedApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mDisallowedAppsList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 362
    return-object v0
.end method

.method private static getIInputMethodManager()Lcom/android/internal/view/IInputMethodManager;
    .locals 2

    .prologue
    .line 394
    const-string/jumbo v1, "input_method"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 395
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v1

    return-object v1
.end method

.method private getPackagesToDelete()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->getCurrentAppsWithLauncher()Ljava/util/Set;

    move-result-object v0

    .line 189
    .local v0, "packagesToDelete":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->getRequiredApps()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 191
    iget v1, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mProvisioningType:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mProvisioningType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 192
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->getSystemInputMethods()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 194
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->getDisallowedApps()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 198
    return-object v0
.end method

.method static getSystemAppsFile(Landroid/content/Context;I)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 254
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "system_apps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 255
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 254
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 255
    const-string/jumbo v2, "user"

    .line 254
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 255
    const-string/jumbo v2, ".xml"

    .line 254
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getSystemInputMethods()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    const/4 v4, 0x0

    .line 281
    .local v4, "inputMethods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :try_start_0
    iget-object v6, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mIInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v6}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 286
    .local v4, "inputMethods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 287
    .local v5, "systemInputMethods":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "inputMethodInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 288
    .local v2, "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v6

    iget-object v0, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 289
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    .line 290
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 282
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    .end local v3    # "inputMethodInfo$iterator":Ljava/util/Iterator;
    .end local v5    # "systemInputMethods":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v4, "inputMethods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :catch_0
    move-exception v1

    .line 283
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "DeleteNonRequiredAppsTask"

    const-string/jumbo v7, "Could not communicate with IInputMethodManager"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v6

    return-object v6

    .line 293
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v3    # "inputMethodInfo$iterator":Ljava/util/Iterator;
    .local v4, "inputMethods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v5    # "systemInputMethods":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    return-object v5
.end method

.method private readSystemApps(Ljava/io/File;)Ljava/util/Set;
    .locals 12
    .param p1, "systemAppsFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    .line 317
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 318
    .local v4, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 319
    return-object v4

    .line 322
    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 324
    .local v5, "stream":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 325
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v8, 0x0

    invoke-interface {v3, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 327
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 328
    .local v7, "type":I
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 329
    .local v2, "outerDepth":I
    :cond_1
    :goto_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_4

    .line 330
    if-ne v7, v11, :cond_2

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v2, :cond_4

    .line 331
    :cond_2
    if-eq v7, v11, :cond_1

    const/4 v8, 0x4

    if-eq v7, v8, :cond_1

    .line 334
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 335
    .local v6, "tag":Ljava/lang/String;
    const-string/jumbo v8, "item"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 336
    const-string/jumbo v8, "value"

    const/4 v9, 0x0

    invoke-interface {v3, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 342
    .end local v2    # "outerDepth":I
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "type":I
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v8, "DeleteNonRequiredAppsTask"

    const-string/jumbo v9, "IOException trying to read the system apps"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-object v4

    .line 338
    .restart local v2    # "outerDepth":I
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "tag":Ljava/lang/String;
    .restart local v7    # "type":I
    :cond_3
    :try_start_1
    const-string/jumbo v8, "DeleteNonRequiredAppsTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown tag: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 344
    .end local v2    # "outerDepth":I
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "type":I
    :catch_1
    move-exception v1

    .line 345
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v8, "DeleteNonRequiredAppsTask"

    const-string/jumbo v9, "XmlPullParserException trying to read the system apps"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 341
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "outerDepth":I
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "type":I
    :cond_4
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method private removeNonInstalledPackages(Ljava/util/Set;)V
    .locals 8
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
    .line 230
    .local p1, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 231
    .local v4, "toBeRemoved":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "packageName$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 233
    .local v2, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mPm:Landroid/content/pm/PackageManager;

    .line 234
    iget v6, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mUserId:I

    .line 233
    const/4 v7, 0x0

    invoke-virtual {v5, v2, v7, v6}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 235
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_0

    .line 236
    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 242
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-interface {p1, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 229
    return-void
.end method

.method public static shouldDeleteNonRequiredApps(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 250
    invoke-static {p0, p1}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->getSystemAppsFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private writeSystemApps(Ljava/util/Set;Ljava/io/File;)V
    .locals 7
    .param p2, "systemAppsFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 298
    .local p1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x0

    invoke-direct {v4, p2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 299
    .local v4, "stream":Ljava/io/FileOutputStream;
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 300
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v5, "utf-8"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 301
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 302
    const-string/jumbo v5, "system-apps"

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 303
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "packageName$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 304
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v5, "item"

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 305
    const-string/jumbo v5, "value"

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 306
    const-string/jumbo v5, "item"

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 311
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "packageName$iterator":Ljava/util/Iterator;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "DeleteNonRequiredAppsTask"

    const-string/jumbo v6, "IOException trying to write the system apps"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 308
    .restart local v2    # "packageName$iterator":Ljava/util/Iterator;
    .restart local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :cond_0
    :try_start_1
    const-string/jumbo v5, "system-apps"

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 309
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 310
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method protected getRequiredApps()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 352
    .local v0, "requiredApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mRequiredAppsList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 355
    return-object v0
.end method

.method public run()V
    .locals 7

    .prologue
    .line 161
    iget-boolean v4, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mLeaveAllSystemAppsEnabled:Z

    if-eqz v4, :cond_0

    .line 162
    const-string/jumbo v4, "DeleteNonRequiredAppsTask"

    const-string/jumbo v5, "Not deleting non-required apps."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v4, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mCallback:Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;

    invoke-virtual {v4}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;->onSuccess()V

    .line 164
    return-void

    .line 166
    :cond_0
    const-string/jumbo v4, "DeleteNonRequiredAppsTask"

    const-string/jumbo v5, "Deleting non required apps."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-direct {p0}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->getPackagesToDelete()Ljava/util/Set;

    move-result-object v3

    .line 169
    .local v3, "packagesToDelete":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, v3}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->removeNonInstalledPackages(Ljava/util/Set;)V

    .line 171
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 172
    iget-object v4, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mCallback:Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;

    invoke-virtual {v4}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;->onSuccess()V

    .line 173
    return-void

    .line 177
    :cond_1
    new-instance v0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$PackageDeleteObserver;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v0, p0, v4}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$PackageDeleteObserver;-><init>(Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;I)V

    .line 178
    .local v0, "packageDeleteObserver":Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$PackageDeleteObserver;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "packageName$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 179
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v4, "DeleteNonRequiredAppsTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Deleting package ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] as user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v4, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mPm:Landroid/content/pm/PackageManager;

    .line 181
    iget v5, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mUserId:I

    const/4 v6, 0x4

    .line 180
    invoke-virtual {v4, v1, v0, v6, v5}, Landroid/content/pm/PackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    goto :goto_0

    .line 160
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_2
    return-void
.end method
