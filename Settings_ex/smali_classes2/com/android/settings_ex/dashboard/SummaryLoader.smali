.class public Lcom/android/settings_ex/dashboard/SummaryLoader;
.super Ljava/lang/Object;
.source "SummaryLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;,
        Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;,
        Lcom/android/settings_ex/dashboard/SummaryLoader$Worker;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final SUMMARY_PROVIDER_FACTORY:Ljava/lang/String; = "SUMMARY_PROVIDER_FACTORY"

.field private static final TAG:Ljava/lang/String; = "SummaryLoader"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/android/settings_ex/dashboard/DashboardAdapter;

.field private final mHandler:Landroid/os/Handler;

.field private mListening:Z

.field private mReceivers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mSummaryMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorker:Lcom/android/settings_ex/dashboard/SummaryLoader$Worker;

.field private mWorkerListening:Z

.field private final mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/dashboard/SummaryLoader;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SummaryLoader;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/dashboard/SummaryLoader;)Lcom/android/settings_ex/dashboard/DashboardAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SummaryLoader;->mAdapter:Lcom/android/settings_ex/dashboard/DashboardAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/dashboard/SummaryLoader;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/dashboard/SummaryLoader;->mListening:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/dashboard/SummaryLoader;)Landroid/util/ArraySet;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SummaryLoader;->mReceivers:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/dashboard/SummaryLoader;Lcom/android/settings_exlib/drawer/Tile;)V
    .locals 0
    .param p1, "tile"    # Lcom/android/settings_exlib/drawer/Tile;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/SummaryLoader;->makeProviderW(Lcom/android/settings_exlib/drawer/Tile;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/dashboard/SummaryLoader;Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/SummaryLoader;->setListeningW(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/drawer/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/drawer/DashboardCategory;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lcom/android/settings_ex/dashboard/SummaryLoader;->mSummaryMap:Landroid/util/ArrayMap;

    .line 48
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/settings_ex/dashboard/SummaryLoader;->mTiles:Ljava/util/List;

    .line 57
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    iput-object v4, p0, Lcom/android/settings_ex/dashboard/SummaryLoader;->mReceivers:Landroid/util/ArraySet;

    .line 60
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/settings_ex/dashboard/SummaryLoader;->mHandler:Landroid/os/Handler;

    .line 61
    new-instance v4, Landroid/os/HandlerThread;

    const-string/jumbo v5, "SummaryLoader"

    const/16 v6, 0xa

    invoke-direct {v4, v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/android/settings_ex/dashboard/SummaryLoader;->mWorkerThread:Landroid/os/HandlerThread;

    .line 62
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/SummaryLoader;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 63
    new-instance v4, Lcom/android/settings_ex/dashboard/SummaryLoader$Worker;

    iget-object v5, p0, Lcom/android/settings_ex/dashboard/SummaryLoader;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/settings_ex/dashboard/SummaryLoader$Worker;-><init>(Lcom/android/settings_ex/dashboard/SummaryLoader;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/settings_ex/dashboard/SummaryLoader;->mWorker:Lcom/android/settings_ex/dashboard/SummaryLoader$Worker;

    .line 64
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/SummaryLoader;->mActivity:Landroid/app/Activity;

    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 66
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_exlib/drawer/DashboardCategory;

    iget-object v3, v4, Lcom/android/settings_exlib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    .line 67
    .local v3, "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/drawer/Tile;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 68
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/drawer/Tile;

    .line 69
    .local v2, "tile":Lcom/android/settings_exlib/drawer/Tile;
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/SummaryLoader;->mWorker:Lcom/android/settings_ex/dashboard/SummaryLoader$Worker;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v2}, Lcom/android/settings_ex/dashboard/SummaryLoader$Worker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 65
    .end local v2    # "tile":Lcom/android/settings_exlib/drawer/Tile;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    .end local v1    # "j":I
    .end local v3    # "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/drawer/Tile;>;"
    :cond_1
    return-void
.end method

.method private getMetaData(Lcom/android/settings_exlib/drawer/Tile;)Landroid/os/Bundle;
    .locals 1
    .param p1, "tile"    # Lcom/android/settings_exlib/drawer/Tile;

    .prologue
    .line 161
    iget-object v0, p1, Lcom/android/settings_exlib/drawer/Tile;->metaData:Landroid/os/Bundle;

    return-object v0
.end method

.method private getSummaryProvider(Lcom/android/settings_exlib/drawer/Tile;)Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;
    .locals 12
    .param p1, "tile"    # Lcom/android/settings_exlib/drawer/Tile;

    .prologue
    const/4 v11, 0x0

    .line 128
    iget-object v9, p0, Lcom/android/settings_ex/dashboard/SummaryLoader;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p1, Lcom/android/settings_exlib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 131
    return-object v11

    .line 133
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/SummaryLoader;->getMetaData(Lcom/android/settings_exlib/drawer/Tile;)Landroid/os/Bundle;

    move-result-object v8

    .line 134
    .local v8, "metaData":Landroid/os/Bundle;
    if-nez v8, :cond_1

    .line 136
    return-object v11

    .line 138
    :cond_1
    const-string/jumbo v9, "com.android.settings_ex.FRAGMENT_CLASS"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "clsName":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 141
    return-object v11

    .line 144
    :cond_2
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 145
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v9, "SUMMARY_PROVIDER_FACTORY"

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 146
    .local v7, "field":Ljava/lang/reflect/Field;
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 147
    .local v6, "factory":Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;
    iget-object v9, p0, Lcom/android/settings_ex/dashboard/SummaryLoader;->mActivity:Landroid/app/Activity;

    invoke-interface {v6, v9, p0}, Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;->createSummaryProvider(Landroid/app/Activity;Lcom/android/settings_ex/dashboard/SummaryLoader;)Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v9

    return-object v9

    .line 148
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "factory":Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;
    .end local v7    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v3

    .line 157
    :goto_0
    return-object v11

    .line 150
    :catch_1
    move-exception v5

    .local v5, "e":Ljava/lang/NoSuchFieldException;
    goto :goto_0

    .line 152
    .end local v5    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v2

    .local v2, "e":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 154
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :catch_3
    move-exception v4

    .local v4, "e":Ljava/lang/IllegalAccessException;
    goto :goto_0
.end method

.method private declared-synchronized makeProviderW(Lcom/android/settings_exlib/drawer/Tile;)V
    .locals 3
    .param p1, "tile"    # Lcom/android/settings_exlib/drawer/Tile;

    .prologue
    monitor-enter p0

    .line 202
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/SummaryLoader;->getSummaryProvider(Lcom/android/settings_exlib/drawer/Tile;)Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;

    move-result-object v0

    .line 203
    .local v0, "provider":Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;
    if-eqz v0, :cond_0

    .line 205
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SummaryLoader;->mSummaryMap:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/settings_exlib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 201
    return-void

    .end local v0    # "provider":Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized setListeningW(Z)V
    .locals 5
    .param p1, "listening"    # Z

    .prologue
    monitor-enter p0

    .line 189
    :try_start_0
    iget-boolean v3, p0, Lcom/android/settings_ex/dashboard/SummaryLoader;->mWorkerListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_0

    monitor-exit p0

    return-void

    .line 190
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/android/settings_ex/dashboard/SummaryLoader;->mWorkerListening:Z

    .line 192
    iget-object v3, p0, Lcom/android/settings_ex/dashboard/SummaryLoader;->mSummaryMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "p$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    .local v1, "p":Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;
    :try_start_2
    invoke-interface {v1, p1}, Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;->setListening(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v3, "SummaryLoader"

    const-string/jumbo v4, "Problem in setListening"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "p":Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;
    .end local v2    # "p$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v2    # "p$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    .line 188
    return-void
.end method


# virtual methods
.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 2
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SummaryLoader;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/settings_ex/dashboard/SummaryLoader$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings_ex/dashboard/SummaryLoader$3;-><init>(Lcom/android/settings_ex/dashboard/SummaryLoader;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 169
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SummaryLoader;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 77
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings_ex/dashboard/SummaryLoader$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/dashboard/SummaryLoader$1;-><init>(Lcom/android/settings_ex/dashboard/SummaryLoader;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 74
    return-void
.end method

.method public setAdapter(Lcom/android/settings_ex/dashboard/DashboardAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/android/settings_ex/dashboard/DashboardAdapter;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/SummaryLoader;->mAdapter:Lcom/android/settings_ex/dashboard/DashboardAdapter;

    .line 86
    return-void
.end method

.method public setListening(Z)V
    .locals 6
    .param p1, "listening"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    .line 110
    iget-boolean v2, p0, Lcom/android/settings_ex/dashboard/SummaryLoader;->mListening:Z

    if-ne v2, p1, :cond_0

    return-void

    .line 111
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings_ex/dashboard/SummaryLoader;->mListening:Z

    .line 115
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/SummaryLoader;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 116
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/SummaryLoader;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings_ex/dashboard/SummaryLoader;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SummaryLoader"

    const-string/jumbo v4, "Problem in unregisterReceiver"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/SummaryLoader;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 123
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/SummaryLoader;->mWorker:Lcom/android/settings_ex/dashboard/SummaryLoader$Worker;

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/dashboard/SummaryLoader$Worker;->removeMessages(I)V

    .line 124
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/SummaryLoader;->mWorker:Lcom/android/settings_ex/dashboard/SummaryLoader$Worker;

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v5, v2, v3}, Lcom/android/settings_ex/dashboard/SummaryLoader$Worker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 109
    return-void

    :cond_2
    move v2, v3

    .line 124
    goto :goto_1
.end method

.method public setSummary(Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "provider"    # Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;
    .param p2, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 91
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SummaryLoader;->mSummaryMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 92
    .local v0, "component":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SummaryLoader;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings_ex/dashboard/SummaryLoader$2;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/settings_ex/dashboard/SummaryLoader$2;-><init>(Lcom/android/settings_ex/dashboard/SummaryLoader;Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method
