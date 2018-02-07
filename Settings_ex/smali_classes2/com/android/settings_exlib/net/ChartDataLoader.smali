.class public Lcom/android/settings_exlib/net/ChartDataLoader;
.super Landroid/content/AsyncTaskLoader;
.source "ChartDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/android/settings_exlib/net/ChartData;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_APP:Ljava/lang/String; = "app"

.field private static final KEY_FIELDS:Ljava/lang/String; = "fields"

.field private static final KEY_TEMPLATE:Ljava/lang/String; = "template"


# instance fields
.field private final mArgs:Landroid/os/Bundle;

.field private final mSession:Landroid/net/INetworkStatsSession;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "session"    # Landroid/net/INetworkStatsSession;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 62
    iput-object p2, p0, Lcom/android/settings_exlib/net/ChartDataLoader;->mSession:Landroid/net/INetworkStatsSession;

    .line 63
    iput-object p3, p0, Lcom/android/settings_exlib/net/ChartDataLoader;->mArgs:Landroid/os/Bundle;

    .line 60
    return-void
.end method

.method public static buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settings_exlib/AppItem;)Landroid/os/Bundle;
    .locals 1
    .param p0, "template"    # Landroid/net/NetworkTemplate;
    .param p1, "app"    # Lcom/android/settings_exlib/AppItem;

    .prologue
    .line 49
    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Lcom/android/settings_exlib/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settings_exlib/AppItem;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settings_exlib/AppItem;I)Landroid/os/Bundle;
    .locals 2
    .param p0, "template"    # Landroid/net/NetworkTemplate;
    .param p1, "app"    # Lcom/android/settings_exlib/AppItem;
    .param p2, "fields"    # I

    .prologue
    .line 53
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "template"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 55
    const-string/jumbo v1, "app"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 56
    const-string/jumbo v1, "fields"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    return-object v0
.end method

.method private collectHistoryForUid(Landroid/net/NetworkTemplate;IILandroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsHistory;
    .locals 7
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "existing"    # Landroid/net/NetworkStatsHistory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings_exlib/net/ChartDataLoader;->mSession:Landroid/net/INetworkStatsSession;

    .line 144
    const/4 v4, 0x0

    const/16 v5, 0xa

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 143
    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v6

    .line 146
    .local v6, "history":Landroid/net/NetworkStatsHistory;
    if-eqz p4, :cond_0

    .line 147
    invoke-virtual {p4, v6}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 148
    return-object p4

    .line 150
    :cond_0
    return-object v6
.end method

.method private loadInBackground(Landroid/net/NetworkTemplate;Lcom/android/settings_exlib/AppItem;I)Lcom/android/settings_exlib/net/ChartData;
    .locals 10
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "app"    # Lcom/android/settings_exlib/AppItem;
    .param p3, "fields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const-wide/32 v8, 0x36ee80

    .line 89
    new-instance v0, Lcom/android/settings_exlib/net/ChartData;

    invoke-direct {v0}, Lcom/android/settings_exlib/net/ChartData;-><init>()V

    .line 92
    .local v0, "data":Lcom/android/settings_exlib/net/ChartData;
    :try_start_0
    iget-object v5, p0, Lcom/android/settings_exlib/net/ChartDataLoader;->mSession:Landroid/net/INetworkStatsSession;

    invoke-interface {v5, p1, p3}, Landroid/net/INetworkStatsSession;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v5

    iput-object v5, v0, Lcom/android/settings_exlib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    if-eqz p2, :cond_1

    .line 101
    iget-object v5, p2, Lcom/android/settings_exlib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 102
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 103
    iget-object v5, p2, Lcom/android/settings_exlib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 105
    .local v4, "uid":I
    iget-object v5, v0, Lcom/android/settings_exlib/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    .line 104
    invoke-direct {p0, p1, v4, v7, v5}, Lcom/android/settings_exlib/net/ChartDataLoader;->collectHistoryForUid(Landroid/net/NetworkTemplate;IILandroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsHistory;

    move-result-object v5

    iput-object v5, v0, Lcom/android/settings_exlib/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    .line 107
    iget-object v5, v0, Lcom/android/settings_exlib/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    const/4 v6, 0x1

    .line 106
    invoke-direct {p0, p1, v4, v6, v5}, Lcom/android/settings_exlib/net/ChartDataLoader;->collectHistoryForUid(Landroid/net/NetworkTemplate;IILandroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsHistory;

    move-result-object v5

    iput-object v5, v0, Lcom/android/settings_exlib/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 93
    .end local v2    # "i":I
    .end local v3    # "size":I
    .end local v4    # "uid":I
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "ChartDataLoader"

    const-string/jumbo v6, "mSession.getHistoryForNetwork error."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 110
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "i":I
    .restart local v3    # "size":I
    :cond_0
    if-lez v3, :cond_2

    .line 111
    new-instance v5, Landroid/net/NetworkStatsHistory;

    iget-object v6, v0, Lcom/android/settings_exlib/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v6}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    iput-object v5, v0, Lcom/android/settings_exlib/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    .line 112
    iget-object v5, v0, Lcom/android/settings_exlib/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    iget-object v6, v0, Lcom/android/settings_exlib/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v5, v6}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 113
    iget-object v5, v0, Lcom/android/settings_exlib/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    iget-object v6, v0, Lcom/android/settings_exlib/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v5, v6}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 121
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_1
    :goto_2
    return-object v0

    .line 115
    .restart local v2    # "i":I
    .restart local v3    # "size":I
    :cond_2
    new-instance v5, Landroid/net/NetworkStatsHistory;

    invoke-direct {v5, v8, v9}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    iput-object v5, v0, Lcom/android/settings_exlib/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    .line 116
    new-instance v5, Landroid/net/NetworkStatsHistory;

    invoke-direct {v5, v8, v9}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    iput-object v5, v0, Lcom/android/settings_exlib/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    .line 117
    new-instance v5, Landroid/net/NetworkStatsHistory;

    invoke-direct {v5, v8, v9}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    iput-object v5, v0, Lcom/android/settings_exlib/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    goto :goto_2
.end method


# virtual methods
.method public loadInBackground()Lcom/android/settings_exlib/net/ChartData;
    .locals 6

    .prologue
    .line 74
    iget-object v4, p0, Lcom/android/settings_exlib/net/ChartDataLoader;->mArgs:Landroid/os/Bundle;

    const-string/jumbo v5, "template"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    .line 75
    .local v3, "template":Landroid/net/NetworkTemplate;
    iget-object v4, p0, Lcom/android/settings_exlib/net/ChartDataLoader;->mArgs:Landroid/os/Bundle;

    const-string/jumbo v5, "app"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/AppItem;

    .line 76
    .local v0, "app":Lcom/android/settings_exlib/AppItem;
    iget-object v4, p0, Lcom/android/settings_exlib/net/ChartDataLoader;->mArgs:Landroid/os/Bundle;

    const-string/jumbo v5, "fields"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 79
    .local v2, "fields":I
    :try_start_0
    invoke-direct {p0, v3, v0, v2}, Lcom/android/settings_exlib/net/ChartDataLoader;->loadInBackground(Landroid/net/NetworkTemplate;Lcom/android/settings_exlib/AppItem;I)Lcom/android/settings_exlib/net/ChartData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 80
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "problem reading network stats"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/settings_exlib/net/ChartDataLoader;->loadInBackground()Lcom/android/settings_exlib/net/ChartData;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 132
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings_exlib/net/ChartDataLoader;->cancelLoad()Z

    .line 131
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings_exlib/net/ChartDataLoader;->forceLoad()V

    .line 67
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 126
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStopLoading()V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings_exlib/net/ChartDataLoader;->cancelLoad()Z

    .line 125
    return-void
.end method
