.class public Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;
.super Ljava/lang/Object;
.source "HighPowerAppModel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "HighPowerAppModel"

.field private static final USE_FAKE_DATA:Z


# instance fields
.field private mActivityManager:Lcom/oneplus/settings/highpowerapp/IMyActivityManager;

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/highpowerapp/HighPowerApp;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDataObserverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mInstalledPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static synthetic -wrap0(Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->process()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "observer"    # Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mDataObserverList:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mInstalledPackages:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mAppList:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mData:Ljava/util/List;

    .line 36
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 39
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mContext:Ljava/lang/ref/SoftReference;

    .line 40
    invoke-static {p1}, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->get(Landroid/content/Context;)Lcom/oneplus/settings/highpowerapp/MyActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mActivityManager:Lcom/oneplus/settings/highpowerapp/IMyActivityManager;

    .line 41
    invoke-virtual {p0, p2}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->registerObserver(Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;)V

    .line 42
    invoke-virtual {p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->initialize()V

    .line 38
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method private makeFakeList()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/highpowerapp/HighPowerApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/highpowerapp/HighPowerApp;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v6, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v8, v6, :cond_0

    .line 120
    iget-object v6, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mData:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageInfo;

    .line 121
    .local v9, "info":Landroid/content/pm/PackageInfo;
    iget-object v1, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 122
    .local v1, "pkg":Ljava/lang/String;
    iget-object v6, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 123
    .local v2, "uid":I
    const/4 v4, 0x0

    .line 124
    .local v4, "locked":Z
    const/4 v5, 0x0

    .line 125
    .local v5, "stoped":Z
    const/4 v3, 0x0

    .line 127
    .local v3, "level":I
    rem-int/lit8 v6, v8, 0x3

    packed-switch v6, :pswitch_data_0

    .line 140
    :goto_1
    new-instance v0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/settings/highpowerapp/HighPowerApp;-><init>(Ljava/lang/String;IIZZJ)V

    .line 141
    .local v0, "app":Lcom/oneplus/settings/highpowerapp/HighPowerApp;
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 129
    .end local v0    # "app":Lcom/oneplus/settings/highpowerapp/HighPowerApp;
    :pswitch_0
    const/4 v5, 0x1

    .line 130
    const/4 v3, 0x1

    .line 131
    goto :goto_1

    .line 133
    :pswitch_1
    const/4 v4, 0x1

    .line 134
    const/4 v3, 0x0

    .line 135
    goto :goto_1

    .line 137
    :pswitch_2
    const/4 v3, -0x1

    .line 138
    goto :goto_1

    .line 144
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "uid":I
    .end local v3    # "level":I
    .end local v4    # "locked":Z
    .end local v5    # "stoped":Z
    .end local v9    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    return-object v10

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private notifyDataChanged()V
    .locals 3

    .prologue
    .line 200
    iget-object v2, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mDataObserverList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 201
    iget-object v2, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mDataObserverList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "observer$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;

    .line 202
    .local v0, "observer":Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;
    if-eqz v0, :cond_0

    .line 203
    invoke-interface {v0}, Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;->OnDataChanged()V

    goto :goto_0

    .line 199
    .end local v0    # "observer":Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;
    .end local v1    # "observer$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private process()V
    .locals 8

    .prologue
    .line 69
    iget-object v5, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mActivityManager:Lcom/oneplus/settings/highpowerapp/IMyActivityManager;

    invoke-interface {v5}, Lcom/oneplus/settings/highpowerapp/IMyActivityManager;->getBgPowerHungryList()Ljava/util/List;

    move-result-object v4

    .line 70
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/highpowerapp/HighPowerApp;>;"
    const-string/jumbo v5, "HighPowerAppModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "HighPowerAppModel getBgPowerHungryList: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    .line 72
    .local v0, "app":Lcom/oneplus/settings/highpowerapp/HighPowerApp;
    iget-object v5, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mInstalledPackages:Ljava/util/Map;

    iget-object v6, v0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 73
    iget-object v5, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mInstalledPackages:Ljava/util/Map;

    iget-object v6, v0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v5, v0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    goto :goto_0

    .line 75
    :cond_0
    iget-object v5, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v5, :cond_1

    .line 76
    invoke-direct {p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 79
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, v0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 80
    .local v3, "info":Landroid/content/pm/PackageInfo;
    iget-object v5, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mInstalledPackages:Ljava/util/Map;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v5, v0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 88
    .end local v0    # "app":Lcom/oneplus/settings/highpowerapp/HighPowerApp;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v5, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel$3;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel$3;-><init>(Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 95
    iput-object v4, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mAppList:Ljava/util/List;

    .line 96
    invoke-direct {p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->notifyDataChanged()V

    .line 68
    return-void
.end method


# virtual methods
.method public getBgMonitorMode()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mActivityManager:Lcom/oneplus/settings/highpowerapp/IMyActivityManager;

    invoke-interface {v0}, Lcom/oneplus/settings/highpowerapp/IMyActivityManager;->getBgMonitorMode()Z

    move-result v0

    return v0
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/highpowerapp/HighPowerApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel$1;-><init>(Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;)V

    .line 55
    .local v0, "initRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    move-object v0, p1

    .line 149
    check-cast v0, Landroid/widget/Switch;

    .line 150
    .local v0, "s":Landroid/widget/Switch;
    iget-object v1, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mActivityManager:Lcom/oneplus/settings/highpowerapp/IMyActivityManager;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/oneplus/settings/highpowerapp/IMyActivityManager;->setBgMonitorMode(Z)V

    .line 151
    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->update()V

    .line 148
    :cond_0
    return-void
.end method

.method public registerObserver(Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mDataObserverList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mDataObserverList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_0
    return-void
.end method

.method public releaseResource()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 210
    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 212
    iput-object v1, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 209
    :cond_0
    return-void
.end method

.method public stopApp(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v2, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    .line 101
    .local v0, "app":Lcom/oneplus/settings/highpowerapp/HighPowerApp;
    iget-object v2, v0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    iget-object v2, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mActivityManager:Lcom/oneplus/settings/highpowerapp/IMyActivityManager;

    iget v3, v0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->powerLevel:I

    invoke-interface {v2, p1, v3}, Lcom/oneplus/settings/highpowerapp/IMyActivityManager;->stopBgPowerHungryApp(Ljava/lang/String;I)V

    .line 99
    .end local v0    # "app":Lcom/oneplus/settings/highpowerapp/HighPowerApp;
    :cond_1
    return-void
.end method

.method public unregisterObserver(Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mDataObserverList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mDataObserverList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 193
    :cond_0
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel$2;-><init>(Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;)V

    .line 65
    .local v0, "initRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method

.method public updateInstalledPackages()V
    .locals 6

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 162
    iget-object v4, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mInstalledPackages:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 165
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 166
    .local v3, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    return-void

    .line 169
    :cond_0
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "info$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 171
    .local v1, "info":Landroid/content/pm/PackageInfo;
    invoke-direct {p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/oneplus/settings/highpowerapp/PackageUtils;->isSystemApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 174
    iget-object v4, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mInstalledPackages:Ljava/util/Map;

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "info$iterator":Ljava/util/Iterator;
    .end local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "HighPowerAppModel"

    const-string/jumbo v5, "some unknown error happened."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method
