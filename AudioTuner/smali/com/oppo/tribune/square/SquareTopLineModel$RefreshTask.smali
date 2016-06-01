.class Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;
.super Landroid/os/AsyncTask;
.source "SquareTopLineModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/square/SquareTopLineModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private cancel:Z

.field private hasmore:Z

.field private isRunning:Z

.field private refreshType:Lcom/oppo/tribune/square/RefreshType;

.field private result:Z

.field final synthetic this$0:Lcom/oppo/tribune/square/SquareTopLineModel;


# direct methods
.method public constructor <init>(Lcom/oppo/tribune/square/SquareTopLineModel;Lcom/oppo/tribune/square/RefreshType;)V
    .locals 1
    .param p2, "refreshType"    # Lcom/oppo/tribune/square/RefreshType;

    .prologue
    const/4 v0, 0x0

    .line 197
    iput-object p1, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 191
    iput-boolean v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->cancel:Z

    .line 198
    iput-object p2, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->refreshType:Lcom/oppo/tribune/square/RefreshType;

    .line 199
    iput-boolean v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->result:Z

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->isRunning:Z

    .line 201
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->isRunning:Z

    return v0
.end method


# virtual methods
.method public cancelTask()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 380
    iput-boolean v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->cancel:Z

    .line 381
    invoke-virtual {p0, v0}, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->cancel(Z)Z

    .line 382
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->isRunning:Z

    .line 383
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 188
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->doInBackground([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/util/List;
    .locals 14
    .param p1, "params"    # [Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    const-string v10, "shuqi"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "doInBackground refreshType = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->refreshType:Lcom/oppo/tribune/square/RefreshType;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " , mType = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I
    invoke-static {v12}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$100(Lcom/oppo/tribune/square/SquareTopLineModel;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mCategoryId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mCategoryId:Ljava/lang/String;
    invoke-static {v12}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$200(Lcom/oppo/tribune/square/SquareTopLineModel;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mOrder = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mOrder:Ljava/lang/String;
    invoke-static {v12}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$300(Lcom/oppo/tribune/square/SquareTopLineModel;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v10, 0x6

    iget-object v11, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I
    invoke-static {v11}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$100(Lcom/oppo/tribune/square/SquareTopLineModel;)I

    move-result v11

    if-ne v10, v11, :cond_0

    .line 209
    sget-object v3, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefaultSoundEffects:Ljava/util/ArrayList;

    .line 210
    .local v3, "list2":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/tuner/providers/SoundEffectItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 212
    .local v0, "bean":Lcom/oneplus/tuner/providers/SoundEffectItem;
    new-instance v10, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-direct {v10, v0}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;-><init>(Lcom/oneplus/tuner/providers/SoundEffectItem;)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    .end local v0    # "bean":Lcom/oneplus/tuner/providers/SoundEffectItem;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;>;"
    .end local v3    # "list2":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/tuner/providers/SoundEffectItem;>;"
    :cond_0
    const/4 v10, 0x3

    iget-object v11, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I
    invoke-static {v11}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$100(Lcom/oppo/tribune/square/SquareTopLineModel;)I

    move-result v11

    if-ne v10, v11, :cond_2

    .line 218
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;>;"
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$400(Lcom/oppo/tribune/square/SquareTopLineModel;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->queryAllRecentlyUsedConfig(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 352
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;>;"
    :cond_1
    :goto_1
    return-object v2

    .line 223
    :cond_2
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mDownDataCallBack:Lcom/oppo/tribune/square/SquareTopLineModel$DownDataCallBack;
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$500(Lcom/oppo/tribune/square/SquareTopLineModel;)Lcom/oppo/tribune/square/SquareTopLineModel$DownDataCallBack;

    move-result-object v10

    if-nez v10, :cond_3

    .line 224
    const/4 v2, 0x0

    goto :goto_1

    .line 226
    :cond_3
    iget-boolean v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->cancel:Z

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->refreshType:Lcom/oppo/tribune/square/RefreshType;

    sget-object v11, Lcom/oppo/tribune/square/RefreshType;->INIT_BY_DB:Lcom/oppo/tribune/square/RefreshType;

    if-eq v10, v11, :cond_5

    :cond_4
    const/4 v10, 0x5

    iget-object v11, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I
    invoke-static {v11}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$100(Lcom/oppo/tribune/square/SquareTopLineModel;)I

    move-result v11

    if-ne v10, v11, :cond_a

    .line 228
    :cond_5
    const/4 v2, 0x0

    .line 230
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;>;"
    const/4 v10, 0x1

    iget-object v11, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I
    invoke-static {v11}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$100(Lcom/oppo/tribune/square/SquareTopLineModel;)I

    move-result v11

    if-ne v10, v11, :cond_6

    .line 231
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$400(Lcom/oppo/tribune/square/SquareTopLineModel;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/oppo/tribune/util/Utils;->isNetWorkActive(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 232
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # invokes: Lcom/oppo/tribune/square/SquareTopLineModel;->readFirstPageFormDB()Ljava/util/List;
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$600(Lcom/oppo/tribune/square/SquareTopLineModel;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    .line 234
    :cond_6
    const/4 v10, 0x2

    iget-object v11, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I
    invoke-static {v11}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$100(Lcom/oppo/tribune/square/SquareTopLineModel;)I

    move-result v11

    if-ne v10, v11, :cond_7

    .line 235
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mSearchThreadList:Ljava/util/List;
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$700(Lcom/oppo/tribune/square/SquareTopLineModel;)Ljava/util/List;

    move-result-object v2

    .line 236
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mSearchThreadList:Ljava/util/List;
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$700(Lcom/oppo/tribune/square/SquareTopLineModel;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 237
    :cond_7
    const/4 v10, 0x4

    iget-object v11, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I
    invoke-static {v11}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$100(Lcom/oppo/tribune/square/SquareTopLineModel;)I

    move-result v11

    if-eq v10, v11, :cond_1

    .line 239
    const/4 v10, 0x3

    iget-object v11, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I
    invoke-static {v11}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$100(Lcom/oppo/tribune/square/SquareTopLineModel;)I

    move-result v11

    if-ne v10, v11, :cond_8

    .line 241
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$400(Lcom/oppo/tribune/square/SquareTopLineModel;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->queryAllRecentlyUsedConfig(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    .line 243
    :cond_8
    const/4 v10, 0x5

    iget-object v11, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I
    invoke-static {v11}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$100(Lcom/oppo/tribune/square/SquareTopLineModel;)I

    move-result v11

    if-ne v10, v11, :cond_9

    .line 246
    const-string v8, "_local=? and _share_id!=?"

    .line 248
    .local v8, "where":Ljava/lang/String;
    const/4 v10, 0x2

    new-array v9, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    iget v12, v12, Lcom/oppo/tribune/square/SquareTopLineModel;->CONFIG_LOCAL:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    iget v12, v12, Lcom/oppo/tribune/square/SquareTopLineModel;->CONFIG_NOTSHAREDID:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 250
    .local v9, "whereArgs":[Ljava/lang/String;
    const-string v5, "_id desc"

    .line 251
    .local v5, "orderBy":Ljava/lang/String;
    sget-object v10, Lcom/oneplus/tuner/manager/OppoTunerManager;->mSoundEffectDao:Lcom/oneplus/tuner/providers/SoundEffectDao;

    invoke-virtual {v10, v8, v9, v5}, Lcom/oneplus/tuner/providers/SoundEffectDao;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 255
    .local v4, "mUserConfigSoundEffectList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/tuner/providers/SoundEffectItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 257
    .restart local v0    # "bean":Lcom/oneplus/tuner/providers/SoundEffectItem;
    new-instance v10, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-direct {v10, v0}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;-><init>(Lcom/oneplus/tuner/providers/SoundEffectItem;)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 259
    .end local v0    # "bean":Lcom/oneplus/tuner/providers/SoundEffectItem;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "mUserConfigSoundEffectList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/tuner/providers/SoundEffectItem;>;"
    .end local v5    # "orderBy":Ljava/lang/String;
    .end local v8    # "where":Ljava/lang/String;
    .end local v9    # "whereArgs":[Ljava/lang/String;
    :cond_9
    const/4 v10, 0x6

    iget-object v11, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I
    invoke-static {v11}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$100(Lcom/oppo/tribune/square/SquareTopLineModel;)I

    move-result v11

    if-ne v10, v11, :cond_1

    .line 260
    sget-object v3, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefaultSoundEffects:Ljava/util/ArrayList;

    .line 261
    .restart local v3    # "list2":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/tuner/providers/SoundEffectItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 263
    .restart local v0    # "bean":Lcom/oneplus/tuner/providers/SoundEffectItem;
    new-instance v10, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-direct {v10, v0}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;-><init>(Lcom/oneplus/tuner/providers/SoundEffectItem;)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 268
    .end local v0    # "bean":Lcom/oneplus/tuner/providers/SoundEffectItem;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;>;"
    .end local v3    # "list2":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/tuner/providers/SoundEffectItem;>;"
    :cond_a
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 269
    .local v6, "page":I
    const/4 v2, 0x0

    .line 270
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;>;"
    const/4 v7, 0x0

    .line 271
    .local v7, "parseResult":Lcom/oppo/tribune/square/parse/SquareTopLineResult;
    iget-boolean v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->cancel:Z

    if-nez v10, :cond_c

    .line 272
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$100(Lcom/oppo/tribune/square/SquareTopLineModel;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_f

    .line 273
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$400(Lcom/oppo/tribune/square/SquareTopLineModel;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/oppo/tribune/util/Utils;->isNetWorkActive(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 274
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$400(Lcom/oppo/tribune/square/SquareTopLineModel;)Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mCategoryId:Ljava/lang/String;
    invoke-static {v12}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$200(Lcom/oppo/tribune/square/SquareTopLineModel;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mOrder:Ljava/lang/String;
    invoke-static {v13}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$300(Lcom/oppo/tribune/square/SquareTopLineModel;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v6, v11, v12, v13}, Lcom/oppo/tribune/square/parse/SquareTopLineResult;->parseCategoryTopline(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oppo/tribune/square/parse/SquareTopLineResult;

    move-result-object v7

    .line 294
    :cond_b
    :goto_4
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mDownDataCallBack:Lcom/oppo/tribune/square/SquareTopLineModel$DownDataCallBack;
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$500(Lcom/oppo/tribune/square/SquareTopLineModel;)Lcom/oppo/tribune/square/SquareTopLineModel$DownDataCallBack;

    move-result-object v10

    iget-object v11, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->refreshType:Lcom/oppo/tribune/square/RefreshType;

    invoke-interface {v10, v11}, Lcom/oppo/tribune/square/SquareTopLineModel$DownDataCallBack;->onDownPostDataCompleteInThread(Lcom/oppo/tribune/square/RefreshType;)V

    .line 296
    :cond_c
    iget-boolean v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->cancel:Z

    if-nez v10, :cond_d

    if-eqz v7, :cond_d

    .line 297
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->refreshType:Lcom/oppo/tribune/square/RefreshType;

    sget-object v11, Lcom/oppo/tribune/square/RefreshType;->LOAD_MORE:Lcom/oppo/tribune/square/RefreshType;

    if-ne v10, v11, :cond_17

    .line 298
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$100(Lcom/oppo/tribune/square/SquareTopLineModel;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_13

    .line 299
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    invoke-virtual {v7}, Lcom/oppo/tribune/square/parse/SquareTopLineResult;->getThreadList()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v7}, Lcom/oppo/tribune/square/parse/SquareTopLineResult;->getPage()I

    move-result v12

    # invokes: Lcom/oppo/tribune/square/SquareTopLineModel;->updateDataBase(Ljava/util/List;I)Z
    invoke-static {v10, v11, v12}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$900(Lcom/oppo/tribune/square/SquareTopLineModel;Ljava/util/List;I)Z

    move-result v10

    iput-boolean v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->result:Z

    .line 337
    :cond_d
    :goto_5
    iget-boolean v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->cancel:Z

    if-nez v10, :cond_1

    iget-boolean v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->result:Z

    if-eqz v10, :cond_1

    .line 338
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$100(Lcom/oppo/tribune/square/SquareTopLineModel;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1c

    .line 340
    invoke-virtual {v7}, Lcom/oppo/tribune/square/parse/SquareTopLineResult;->getThreadList()Ljava/util/List;

    move-result-object v2

    .line 350
    :cond_e
    :goto_6
    invoke-virtual {v7}, Lcom/oppo/tribune/square/parse/SquareTopLineResult;->hasMore()Z

    move-result v10

    iput-boolean v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->hasmore:Z

    goto/16 :goto_1

    .line 277
    :cond_f
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$100(Lcom/oppo/tribune/square/SquareTopLineModel;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_10

    .line 278
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$400(Lcom/oppo/tribune/square/SquareTopLineModel;)Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mSearchString:Ljava/lang/String;
    invoke-static {v11}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$800(Lcom/oppo/tribune/square/SquareTopLineModel;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mCategoryId:Ljava/lang/String;
    invoke-static {v12}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$200(Lcom/oppo/tribune/square/SquareTopLineModel;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mOrder:Ljava/lang/String;
    invoke-static {v13}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$300(Lcom/oppo/tribune/square/SquareTopLineModel;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v6, v11, v12, v13}, Lcom/oppo/tribune/square/parse/SquareTopLineResult;->parseCategoryTopline(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oppo/tribune/square/parse/SquareTopLineResult;

    move-result-object v7

    goto :goto_4

    .line 280
    :cond_10
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$100(Lcom/oppo/tribune/square/SquareTopLineModel;)I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_11

    .line 281
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$400(Lcom/oppo/tribune/square/SquareTopLineModel;)Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$400(Lcom/oppo/tribune/square/SquareTopLineModel;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->queryAllUserCollectionConfigIdString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v6, v11}, Lcom/oppo/tribune/square/parse/SquareTopLineResult;->getSpecificConfig(Landroid/content/Context;ILjava/lang/String;)Lcom/oppo/tribune/square/parse/SquareTopLineResult;

    move-result-object v7

    goto/16 :goto_4

    .line 287
    :cond_11
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$100(Lcom/oppo/tribune/square/SquareTopLineModel;)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_12

    .line 288
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$400(Lcom/oppo/tribune/square/SquareTopLineModel;)Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$400(Lcom/oppo/tribune/square/SquareTopLineModel;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->getRecentlyUsedConfigIdStrs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v6, v11}, Lcom/oppo/tribune/square/parse/SquareTopLineResult;->getSpecificConfig(Landroid/content/Context;ILjava/lang/String;)Lcom/oppo/tribune/square/parse/SquareTopLineResult;

    move-result-object v7

    goto/16 :goto_4

    .line 291
    :cond_12
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$100(Lcom/oppo/tribune/square/SquareTopLineModel;)I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_b

    goto/16 :goto_4

    .line 301
    :cond_13
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$100(Lcom/oppo/tribune/square/SquareTopLineModel;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_14

    .line 302
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mSearchThreadList:Ljava/util/List;
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$700(Lcom/oppo/tribune/square/SquareTopLineModel;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v7}, Lcom/oppo/tribune/square/parse/SquareTopLineResult;->getThreadList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->result:Z

    goto/16 :goto_5

    .line 304
    :cond_14
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$100(Lcom/oppo/tribune/square/SquareTopLineModel;)I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_15

    .line 305
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mUserCollectionList:Ljava/util/List;
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$1000(Lcom/oppo/tribune/square/SquareTopLineModel;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v7}, Lcom/oppo/tribune/square/parse/SquareTopLineResult;->getThreadList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->result:Z

    goto/16 :goto_5

    .line 307
    :cond_15
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$100(Lcom/oppo/tribune/square/SquareTopLineModel;)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_16

    .line 308
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mRecentlyUsedList:Ljava/util/List;
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$1100(Lcom/oppo/tribune/square/SquareTopLineModel;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v7}, Lcom/oppo/tribune/square/parse/SquareTopLineResult;->getThreadList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->result:Z

    goto/16 :goto_5

    .line 310
    :cond_16
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$100(Lcom/oppo/tribune/square/SquareTopLineModel;)I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_d

    .line 311
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mUserConfigList:Ljava/util/List;
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$1200(Lcom/oppo/tribune/square/SquareTopLineModel;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v7}, Lcom/oppo/tribune/square/parse/SquareTopLineResult;->getThreadList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->result:Z

    goto/16 :goto_5

    .line 316
    :cond_17
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$100(Lcom/oppo/tribune/square/SquareTopLineModel;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_18

    .line 317
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    invoke-virtual {v7}, Lcom/oppo/tribune/square/parse/SquareTopLineResult;->getThreadList()Ljava/util/List;

    move-result-object v11

    # invokes: Lcom/oppo/tribune/square/SquareTopLineModel;->insertDatabase(Ljava/util/List;)Z
    invoke-static {v10, v11}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$1300(Lcom/oppo/tribune/square/SquareTopLineModel;Ljava/util/List;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->result:Z

    goto/16 :goto_5

    .line 318
    :cond_18
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$100(Lcom/oppo/tribune/square/SquareTopLineModel;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_19

    .line 319
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mSearchThreadList:Ljava/util/List;
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$700(Lcom/oppo/tribune/square/SquareTopLineModel;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 320
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mSearchThreadList:Ljava/util/List;
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$700(Lcom/oppo/tribune/square/SquareTopLineModel;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v7}, Lcom/oppo/tribune/square/parse/SquareTopLineResult;->getThreadList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->result:Z

    goto/16 :goto_5

    .line 322
    :cond_19
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$100(Lcom/oppo/tribune/square/SquareTopLineModel;)I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_1a

    .line 323
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mUserCollectionList:Ljava/util/List;
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$1000(Lcom/oppo/tribune/square/SquareTopLineModel;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 324
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mUserCollectionList:Ljava/util/List;
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$1000(Lcom/oppo/tribune/square/SquareTopLineModel;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v7}, Lcom/oppo/tribune/square/parse/SquareTopLineResult;->getThreadList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->result:Z

    goto/16 :goto_5

    .line 326
    :cond_1a
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$100(Lcom/oppo/tribune/square/SquareTopLineModel;)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_1b

    .line 327
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mRecentlyUsedList:Ljava/util/List;
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$1100(Lcom/oppo/tribune/square/SquareTopLineModel;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 328
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mRecentlyUsedList:Ljava/util/List;
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$1100(Lcom/oppo/tribune/square/SquareTopLineModel;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v7}, Lcom/oppo/tribune/square/parse/SquareTopLineResult;->getThreadList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->result:Z

    goto/16 :goto_5

    .line 330
    :cond_1b
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$100(Lcom/oppo/tribune/square/SquareTopLineModel;)I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_d

    .line 331
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mUserConfigList:Ljava/util/List;
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$1200(Lcom/oppo/tribune/square/SquareTopLineModel;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 332
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mUserConfigList:Ljava/util/List;
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$1200(Lcom/oppo/tribune/square/SquareTopLineModel;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v7}, Lcom/oppo/tribune/square/parse/SquareTopLineResult;->getThreadList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->result:Z

    goto/16 :goto_5

    .line 341
    :cond_1c
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$100(Lcom/oppo/tribune/square/SquareTopLineModel;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1d

    .line 342
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mSearchThreadList:Ljava/util/List;
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$700(Lcom/oppo/tribune/square/SquareTopLineModel;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_6

    .line 343
    :cond_1d
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$100(Lcom/oppo/tribune/square/SquareTopLineModel;)I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_1e

    .line 344
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mUserCollectionList:Ljava/util/List;
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$1000(Lcom/oppo/tribune/square/SquareTopLineModel;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_6

    .line 345
    :cond_1e
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$100(Lcom/oppo/tribune/square/SquareTopLineModel;)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_1f

    .line 346
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mRecentlyUsedList:Ljava/util/List;
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$1100(Lcom/oppo/tribune/square/SquareTopLineModel;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_6

    .line 347
    :cond_1f
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$100(Lcom/oppo/tribune/square/SquareTopLineModel;)I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_e

    .line 348
    iget-object v10, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mUserConfigList:Ljava/util/List;
    invoke-static {v10}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$1200(Lcom/oppo/tribune/square/SquareTopLineModel;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_6
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 188
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;>;"
    const/4 v3, 0x0

    .line 357
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 358
    const-string v0, "shuqi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute refreshType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->refreshType:Lcom/oppo/tribune/square/RefreshType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I
    invoke-static {v2}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$100(Lcom/oppo/tribune/square/SquareTopLineModel;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hasmore = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->hasmore:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-boolean v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->cancel:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mDownDataCallBack:Lcom/oppo/tribune/square/SquareTopLineModel$DownDataCallBack;
    invoke-static {v0}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$500(Lcom/oppo/tribune/square/SquareTopLineModel;)Lcom/oppo/tribune/square/SquareTopLineModel$DownDataCallBack;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 361
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->refreshType:Lcom/oppo/tribune/square/RefreshType;

    sget-object v1, Lcom/oppo/tribune/square/RefreshType;->INIT_BY_DB:Lcom/oppo/tribune/square/RefreshType;

    if-ne v0, v1, :cond_0

    .line 362
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mDownDataCallBack:Lcom/oppo/tribune/square/SquareTopLineModel$DownDataCallBack;
    invoke-static {v0}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$500(Lcom/oppo/tribune/square/SquareTopLineModel;)Lcom/oppo/tribune/square/SquareTopLineModel$DownDataCallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oppo/tribune/square/SquareTopLineModel$DownDataCallBack;->onInitByDBComplete(Ljava/util/List;)V

    .line 363
    iput-boolean v3, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->isRunning:Z

    .line 377
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-boolean v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->result:Z

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->refreshType:Lcom/oppo/tribune/square/RefreshType;

    # invokes: Lcom/oppo/tribune/square/SquareTopLineModel;->updateCurrentPage(Lcom/oppo/tribune/square/RefreshType;)V
    invoke-static {v0, v1}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$1400(Lcom/oppo/tribune/square/SquareTopLineModel;Lcom/oppo/tribune/square/RefreshType;)V

    .line 368
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    iget-boolean v1, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->hasmore:Z

    # invokes: Lcom/oppo/tribune/square/SquareTopLineModel;->setHasMore(Z)V
    invoke-static {v0, v1}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$1500(Lcom/oppo/tribune/square/SquareTopLineModel;Z)V

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I
    invoke-static {v0}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$100(Lcom/oppo/tribune/square/SquareTopLineModel;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->refreshType:Lcom/oppo/tribune/square/RefreshType;

    sget-object v1, Lcom/oppo/tribune/square/RefreshType;->LOAD_MORE:Lcom/oppo/tribune/square/RefreshType;

    if-ne v0, v1, :cond_3

    .line 371
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mDownDataCallBack:Lcom/oppo/tribune/square/SquareTopLineModel$DownDataCallBack;
    invoke-static {v0}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$500(Lcom/oppo/tribune/square/SquareTopLineModel;)Lcom/oppo/tribune/square/SquareTopLineModel$DownDataCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->refreshType:Lcom/oppo/tribune/square/RefreshType;

    invoke-interface {v0, v1, p1}, Lcom/oppo/tribune/square/SquareTopLineModel$DownDataCallBack;->onDownDataCompleteByAddList(Lcom/oppo/tribune/square/RefreshType;Ljava/util/List;)V

    .line 376
    :cond_2
    :goto_1
    iput-boolean v3, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->isRunning:Z

    goto :goto_0

    .line 373
    :cond_3
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->this$0:Lcom/oppo/tribune/square/SquareTopLineModel;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel;->mDownDataCallBack:Lcom/oppo/tribune/square/SquareTopLineModel$DownDataCallBack;
    invoke-static {v0}, Lcom/oppo/tribune/square/SquareTopLineModel;->access$500(Lcom/oppo/tribune/square/SquareTopLineModel;)Lcom/oppo/tribune/square/SquareTopLineModel$DownDataCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->refreshType:Lcom/oppo/tribune/square/RefreshType;

    invoke-interface {v0, v1, p1}, Lcom/oppo/tribune/square/SquareTopLineModel$DownDataCallBack;->OnDownDataComplete(Lcom/oppo/tribune/square/RefreshType;Ljava/util/List;)V

    goto :goto_1
.end method
