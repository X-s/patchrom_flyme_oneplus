.class public Lcom/oneplus/settings/defaultapp/DefaultAppLogic;
.super Ljava/lang/Object;
.source "DefaultAppLogic.java"


# static fields
.field private static final initLock:[B

.field private static instance:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mExcludedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mKeys:[Ljava/lang/String;

.field private mValues:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->initLock:[B

    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string/jumbo v0, "DefaultAppLogic"

    iput-object v0, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->TAG:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    .line 46
    sget-object v0, Lcom/oneplus/settings/defaultapp/DefaultAppConstants;->DEFAULTAPP_VALUE_LIST_KEY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mKeys:[Ljava/lang/String;

    .line 47
    invoke-static {}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->getDefaultAppValueList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mValues:[Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->initExcludedMap()V

    .line 44
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/settings/defaultapp/DefaultAppLogic;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    sget-object v0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->instance:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    if-nez v0, :cond_1

    .line 53
    sget-object v1, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->initLock:[B

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->instance:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->instance:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 59
    :cond_1
    sget-object v0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->instance:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initExcludedMap()V
    .locals 4

    .prologue
    .line 63
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mExcludedMap:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v0, "excludedGalleryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "com.android.documentsui"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mExcludedMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mKeys:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method private isAppExist(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z
    .locals 5
    .param p1, "appType"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 96
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    return v3

    .line 100
    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mExcludedMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 101
    .local v0, "excludedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    return v4

    .line 105
    :cond_1
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 106
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 107
    return v4

    .line 105
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    :cond_3
    return v3
.end method

.method private updateRelatedDefaultApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    return-void

    .line 148
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mKeys:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 149
    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mKeys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mKeys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->resetDefaultApp(Ljava/lang/String;)V

    .line 148
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_2
    return-void
.end method


# virtual methods
.method public getAppInfoList(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "appType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v1, "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;>;"
    iget-object v10, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    invoke-static {v10, p1}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;

    move-result-object v2

    .line 117
    .local v2, "appTypeInfo":Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;
    invoke-virtual {v2}, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;->getAppIntent()Ljava/util/List;

    move-result-object v5

    .line 118
    .local v5, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    iget-object v10, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 119
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "intent$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 120
    .local v3, "intent":Landroid/content/Intent;
    new-instance v0, Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;

    invoke-direct {v0}, Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;-><init>()V

    .line 121
    .local v0, "appActivityInfo":Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;
    const/high16 v10, 0x20000

    invoke-virtual {v6, v3, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 122
    .local v9, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "resolveInfo$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 123
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v10}, Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;->addActivityInfo(Landroid/content/pm/ActivityInfo;)V

    goto :goto_1

    .line 125
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    .end local v0    # "appActivityInfo":Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v8    # "resolveInfo$iterator":Ljava/util/Iterator;
    .end local v9    # "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    return-object v1
.end method

.method public getAppPackageNameList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .param p1, "appType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    .local p2, "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v5, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "appActivityInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;

    .line 133
    .local v3, "appActivityInfo":Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;
    invoke-virtual {v3}, Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;->getActivityInfo()Ljava/util/List;

    move-result-object v2

    .line 134
    .local v2, "activityInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "activityInfo$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 135
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v5, v6}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->isAppExist(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 136
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "activityInfo$iterator":Ljava/util/Iterator;
    .end local v2    # "activityInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    .end local v3    # "appActivityInfo":Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;
    :cond_2
    return-object v5
.end method

.method public getDefaultAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appType"    # Ljava/lang/String;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->getDefaultAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultAppPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appType"    # Ljava/lang/String;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->getDefaultAppPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultAppPosition(Ljava/lang/String;Ljava/util/List;)I
    .locals 2
    .param p1, "appType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 264
    .local p2, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/oneplus/settings/defaultapp/DataHelper;->getDefaultAppPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "defaultPackageName":Ljava/lang/String;
    invoke-virtual {p0, p2, v0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getDefaultAppPosition(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getDefaultAppPosition(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)I
    .locals 4
    .param p1, "appType"    # Ljava/lang/String;
    .param p3, "defaultPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 252
    .local p2, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, -0x1

    .line 253
    .local v2, "position":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 254
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 255
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 256
    move v2, v0

    .line 260
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    return v2

    .line 253
    .restart local v1    # "packageName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getDefaultAppPosition(Ljava/util/List;Ljava/lang/String;)I
    .locals 4
    .param p2, "defaultPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, -0x1

    .line 270
    .local v2, "position":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 271
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 272
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 273
    move v2, v0

    .line 278
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    return v2

    .line 270
    .restart local v1    # "packageName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getPmDefaultAppPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "appType"    # Ljava/lang/String;

    .prologue
    .line 303
    iget-object v11, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    invoke-static {v11, p1}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;

    move-result-object v0

    .line 304
    .local v0, "appTypeInfo":Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;
    invoke-virtual {v0}, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;->getAppIntent()Ljava/util/List;

    move-result-object v5

    .line 305
    .local v5, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    iget-object v11, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 306
    .local v7, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 307
    .local v1, "defaultApp":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "intent$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 308
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v11, 0x10000

    invoke-virtual {v7, v3, v11}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 309
    .local v10, "r":Landroid/content/pm/ResolveInfo;
    if-eqz v10, :cond_0

    .line 310
    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 313
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v10    # "r":Landroid/content/pm/ResolveInfo;
    :cond_1
    iget-object v11, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mExcludedMap:Ljava/util/Map;

    invoke-interface {v11, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 314
    .local v2, "excludedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v11, "android"

    invoke-interface {v1, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 315
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 316
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 317
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 318
    .local v8, "pkg":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 319
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 323
    .end local v8    # "pkg":Ljava/lang/String;
    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ge v11, v12, :cond_4

    .line 324
    const-string/jumbo v11, "DefaultAppLogic"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getDefaultAppPackageName "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " error defaultApp.size != 1"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v11, 0x0

    return-object v11

    .line 327
    :cond_4
    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v9, v11, v12

    check-cast v9, Ljava/lang/String;

    .line 328
    .local v9, "pkg0":Ljava/lang/String;
    return-object v9
.end method

.method public getSystemDefaultAppPosition(Ljava/lang/String;Ljava/util/List;)I
    .locals 5
    .param p1, "appType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 282
    .local p2, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, -0x1

    .line 283
    .local v2, "position":I
    iget-object v4, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->getSystemDefaultPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, "systemDefaultPackageName":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 285
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 286
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 287
    move v2, v0

    .line 291
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    return v2

    .line 284
    .restart local v1    # "packageName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public initDefaultAppSettings()V
    .locals 8

    .prologue
    .line 73
    iget-object v6, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/oneplus/settings/defaultapp/DataHelper;->isDefaultAppInited(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 74
    return-void

    .line 80
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mKeys:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_3

    .line 81
    iget-object v6, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mKeys:[Ljava/lang/String;

    aget-object v2, v6, v3

    .line 82
    .local v2, "appType":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getPmDefaultAppPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "app":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string/jumbo v6, "android"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 89
    :cond_1
    iget-object v6, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mKeys:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-static {v6, v7}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->resetDefaultApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {p0, v2}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getAppInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 85
    .local v1, "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;>;"
    invoke-virtual {p0, v2, v1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getAppPackageNameList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 86
    .local v4, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v4, v0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getDefaultAppPosition(Ljava/util/List;Ljava/lang/String;)I

    move-result v5

    .line 87
    .local v5, "position":I
    invoke-virtual {p0, v2, v1, v4, v5}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->setDefaultAppPosition(Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    goto :goto_1

    .line 92
    .end local v0    # "app":Ljava/lang/String;
    .end local v1    # "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;>;"
    .end local v2    # "appType":Ljava/lang/String;
    .end local v4    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "position":I
    :cond_3
    iget-object v6, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/oneplus/settings/defaultapp/DataHelper;->setDefaultAppInited(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public varargs invoke(Landroid/content/pm/PackageManager;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "c"    # Landroid/content/pm/PackageManager;
    .param p2, "m"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 233
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 234
    :cond_0
    return-object v3

    .line 238
    :cond_1
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 243
    :catch_0
    move-exception v2

    .line 244
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 247
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_0
    return-object v3

    .line 241
    :catch_1
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 239
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method resetDefaultApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "appType"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getAppInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 158
    .local v0, "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;>;"
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getAppPackageNameList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 159
    .local v1, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, v1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getSystemDefaultAppPosition(Ljava/lang/String;Ljava/util/List;)I

    move-result v2

    .line 160
    .local v2, "position":I
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->setDefaultAppPosition(Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    .line 156
    return-void
.end method

.method public setDefaultApp(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 29
    .param p1, "appType"    # Ljava/lang/String;
    .param p4, "defaultPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 179
    .local p2, "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;>;"
    .local p3, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 180
    .local v19, "packageManager":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getDefaultAppPosition(Ljava/lang/String;Ljava/util/List;)I

    move-result v21

    .line 181
    .local v21, "prePosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/oneplus/settings/defaultapp/DataHelper;->setDefaultAppPackageName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/16 v25, -0x1

    move/from16 v0, v21

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    .line 183
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 184
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->updateRelatedDefaultApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;

    move-result-object v7

    .line 188
    .local v7, "appTypeInfo":Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;
    invoke-virtual {v7}, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;->getAppFilter()Ljava/util/List;

    move-result-object v14

    .line 189
    .local v14, "filterList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    invoke-virtual {v7}, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;->getAppMatchParam()Ljava/util/List;

    move-result-object v17

    .line 190
    .local v17, "matchList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v16, 0x0

    .local v16, "index":I
    :goto_0
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_4

    .line 191
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;

    .line 192
    .local v6, "appActivityInfo":Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;
    invoke-virtual {v6}, Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;->getActivityInfo()Ljava/util/List;

    move-result-object v5

    .line 193
    .local v5, "activityInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    new-array v8, v0, [Landroid/content/ComponentName;

    .line 194
    .local v8, "arrayOfComponentName":[Landroid/content/ComponentName;
    const/4 v11, 0x0

    .line 195
    .local v11, "component":Landroid/content/ComponentName;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v25

    add-int/lit8 v15, v25, -0x1

    .end local v11    # "component":Landroid/content/ComponentName;
    .local v15, "i":I
    :goto_1
    if-ltz v15, :cond_2

    .line 196
    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ActivityInfo;

    .line 197
    .local v4, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 198
    .local v20, "packageName":Ljava/lang/String;
    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 199
    .local v10, "className":Ljava/lang/String;
    new-instance v12, Landroid/content/ComponentName;

    move-object/from16 v0, v20

    invoke-direct {v12, v0, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .local v12, "componentName":Landroid/content/ComponentName;
    aput-object v12, v8, v15

    .line 201
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_1

    move-object/from16 v0, v20

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 202
    new-instance v11, Landroid/content/ComponentName;

    move-object/from16 v0, v20

    invoke-direct {v11, v0, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_1
    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    .line 205
    .end local v4    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v10    # "className":Ljava/lang/String;
    .end local v12    # "componentName":Landroid/content/ComponentName;
    .end local v20    # "packageName":Ljava/lang/String;
    :cond_2
    if-eqz v11, :cond_3

    .line 206
    move/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/IntentFilter;

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2, v8, v11}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 207
    const-string/jumbo v25, "op_default_app_browser"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 209
    :try_start_0
    const-class v25, Landroid/os/UserHandle;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v23

    .line 210
    .local v23, "uh":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v25, "getCallingUserId"

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v18

    .line 211
    .local v18, "method":Ljava/lang/reflect/Method;
    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 212
    .local v24, "userid":I
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/PackageManager;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 213
    .local v9, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v25, "setDefaultBrowserPackageName"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const-class v27, Ljava/lang/String;

    const/16 v28, 0x0

    aput-object v27, v26, v28

    sget-object v27, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v28, 0x1

    aput-object v27, v26, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v22

    .line 214
    .local v22, "setDefaultBrowserPackageName":Ljava/lang/reflect/Method;
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    aput-object v26, v25, v27

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const/16 v27, 0x1

    aput-object v26, v25, v27

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->invoke(Landroid/content/pm/PackageManager;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v9    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "method":Ljava/lang/reflect/Method;
    .end local v22    # "setDefaultBrowserPackageName":Ljava/lang/reflect/Method;
    .end local v23    # "uh":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v24    # "userid":I
    :cond_3
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 215
    :catch_0
    move-exception v13

    .line 216
    .local v13, "e":Ljava/lang/Exception;
    const-string/jumbo v25, "DefaultAppLogic"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "setDefaultAppPosition: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 178
    .end local v5    # "activityInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    .end local v6    # "appActivityInfo":Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;
    .end local v8    # "arrayOfComponentName":[Landroid/content/ComponentName;
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v15    # "i":I
    :cond_4
    return-void
.end method

.method public setDefaultAppPosition(Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V
    .locals 2
    .param p1, "appType"    # Ljava/lang/String;
    .param p4, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p2, "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;>;"
    .local p3, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-ltz p4, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-lt p4, v1, :cond_1

    .line 225
    :cond_0
    return-void

    .line 227
    :cond_1
    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 228
    .local v0, "defaultPackageName":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->setDefaultAppPosition(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public setDefaultAppPosition(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .param p1, "appType"    # Ljava/lang/String;
    .param p4, "defaultPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 164
    .local p2, "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;>;"
    .local p3, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p3}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getDefaultAppPosition(Ljava/lang/String;Ljava/util/List;)I

    move-result v2

    .line 165
    .local v2, "prePosition":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 167
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "packageName$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 169
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->setDefaultApp(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "packageName$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->setDefaultApp(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 163
    return-void
.end method
