.class Lcom/oneplus/tuner/OnePlusCollectionsActivity$1;
.super Ljava/lang/Object;
.source "OnePlusCollectionsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/OnePlusCollectionsActivity;->doRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/OnePlusCollectionsActivity;

.field final synthetic val$isNeedToCheckUpdate:Z


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/OnePlusCollectionsActivity;Z)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusCollectionsActivity;

    iput-boolean p2, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity$1;->val$isNeedToCheckUpdate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const-wide/16 v6, 0x0

    const/4 v12, 0x0

    .line 65
    const-string v8, "shuqi"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "run1 at = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v8, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusCollectionsActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusCollectionsActivity;->mIsSuccessLogin:Z
    invoke-static {v8}, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->access$000(Lcom/oneplus/tuner/OnePlusCollectionsActivity;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity$1;->val$isNeedToCheckUpdate:Z

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusCollectionsActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusCollectionsActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->access$100(Lcom/oneplus/tuner/OnePlusCollectionsActivity;)Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/oppo/tribune/util/Utils;->isNetWorkActive(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 68
    const/4 v1, 0x0

    .line 69
    .local v1, "checkCollectionUpdateResult":Lcom/oppo/tribune/square/parse/SquareTopLineResult;
    iget-object v8, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusCollectionsActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusCollectionsActivity;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->access$200(Lcom/oneplus/tuner/OnePlusCollectionsActivity;)Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getLastUpdateUserCollectionTime()J

    move-result-wide v10

    cmp-long v10, v10, v6

    if-nez v10, :cond_1

    :goto_0
    invoke-static {v8, v9, v6, v7}, Lcom/oppo/tribune/square/parse/SquareTopLineResult;->postCheckUserCollectionUpdate(Landroid/content/Context;IJ)Lcom/oppo/tribune/square/parse/SquareTopLineResult;

    move-result-object v1

    .line 73
    const/4 v4, 0x0

    .line 74
    .local v4, "my":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;>;"
    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {v1}, Lcom/oppo/tribune/square/parse/SquareTopLineResult;->getUserCollectionServerEntryList()Ljava/util/List;

    move-result-object v4

    .line 77
    :cond_0
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 78
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;

    .line 79
    .local v0, "bean":Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;
    iget-object v6, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusCollectionsActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusCollectionsActivity;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->access$200(Lcom/oneplus/tuner/OnePlusCollectionsActivity;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0}, Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;->getConfigId_()J

    move-result-wide v8

    long-to-int v7, v8

    invoke-static {v6, v7}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->getSpecificCollection(Landroid/content/Context;I)Lcom/oneplus/tuner/database/bean/UserCollection;

    move-result-object v5

    .line 80
    .local v5, "tmp":Lcom/oneplus/tuner/database/bean/UserCollection;
    if-eqz v5, :cond_2

    .line 81
    iget-object v6, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusCollectionsActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusCollectionsActivity;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->access$200(Lcom/oneplus/tuner/OnePlusCollectionsActivity;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0}, Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;->getConfigId_()J

    move-result-wide v8

    long-to-int v7, v8

    invoke-virtual {v0}, Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;->getUpdateTime_()I

    move-result v8

    int-to-long v8, v8

    invoke-static {v6, v7, v8, v9}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->modifyCollectionUpdateTime(Landroid/content/Context;IJ)V

    .line 84
    iget-object v6, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusCollectionsActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusCollectionsActivity;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->access$200(Lcom/oneplus/tuner/OnePlusCollectionsActivity;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0}, Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;->getConfigId_()J

    move-result-wide v8

    long-to-int v7, v8

    invoke-virtual {v0}, Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;->getStatus_()I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->modifyCollectionStatus(Landroid/content/Context;II)V

    .line 87
    iget-object v6, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusCollectionsActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusCollectionsActivity;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->access$200(Lcom/oneplus/tuner/OnePlusCollectionsActivity;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0}, Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;->getConfigId_()J

    move-result-wide v8

    long-to-int v7, v8

    invoke-static {v6, v7, v12}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->modifyCollectionIsDirty(Landroid/content/Context;II)V

    goto :goto_1

    .line 69
    .end local v0    # "bean":Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "my":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;>;"
    .end local v5    # "tmp":Lcom/oneplus/tuner/database/bean/UserCollection;
    :cond_1
    iget-object v6, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusCollectionsActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusCollectionsActivity;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->access$200(Lcom/oneplus/tuner/OnePlusCollectionsActivity;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->getUpdateTimeMaxValue(Landroid/content/Context;)J

    move-result-wide v6

    goto :goto_0

    .line 91
    .restart local v0    # "bean":Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "my":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;>;"
    .restart local v5    # "tmp":Lcom/oneplus/tuner/database/bean/UserCollection;
    :cond_2
    new-instance v2, Lcom/oneplus/tuner/database/bean/UserCollection;

    invoke-direct {v2}, Lcom/oneplus/tuner/database/bean/UserCollection;-><init>()V

    .line 92
    .local v2, "collection":Lcom/oneplus/tuner/database/bean/UserCollection;
    invoke-virtual {v0}, Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;->getConfigId_()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v2, v6}, Lcom/oneplus/tuner/database/bean/UserCollection;->setConfigId(I)V

    .line 93
    invoke-virtual {v0}, Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;->getStatus_()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/oneplus/tuner/database/bean/UserCollection;->setStatus(I)V

    .line 94
    invoke-virtual {v2, v12}, Lcom/oneplus/tuner/database/bean/UserCollection;->setIsDirty(I)V

    .line 95
    iget-object v6, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusCollectionsActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusCollectionsActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->access$300(Lcom/oneplus/tuner/OnePlusCollectionsActivity;)Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->addUserCollection(Landroid/content/Context;Lcom/oneplus/tuner/database/bean/UserCollection;)V

    goto :goto_1

    .line 99
    .end local v0    # "bean":Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;
    .end local v2    # "collection":Lcom/oneplus/tuner/database/bean/UserCollection;
    .end local v5    # "tmp":Lcom/oneplus/tuner/database/bean/UserCollection;
    :cond_3
    new-instance v6, Lcom/oneplus/tuner/OnePlusCollectionsActivity$1$1;

    invoke-direct {v6, p0}, Lcom/oneplus/tuner/OnePlusCollectionsActivity$1$1;-><init>(Lcom/oneplus/tuner/OnePlusCollectionsActivity$1;)V

    invoke-static {v6}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncMainRunnable(Ljava/lang/Runnable;)V

    .line 108
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->setLastUpdateUserCollectionTime(J)V

    .line 110
    .end local v1    # "checkCollectionUpdateResult":Lcom/oppo/tribune/square/parse/SquareTopLineResult;
    .end local v4    # "my":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;>;"
    :cond_5
    return-void
.end method
