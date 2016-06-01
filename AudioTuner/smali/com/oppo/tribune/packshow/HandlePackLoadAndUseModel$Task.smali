.class Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;
.super Landroid/os/AsyncTask;
.source "HandlePackLoadAndUseModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsCancel:Z

.field private mIsRunning:Z

.field private mSimpleThreadInfo:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

.field final synthetic this$0:Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;


# direct methods
.method public constructor <init>(Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V
    .locals 1
    .param p2, "simpleThreadInfo"    # Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    .prologue
    const/4 v0, 0x0

    .line 65
    iput-object p1, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->this$0:Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 61
    iput-boolean v0, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->mIsCancel:Z

    .line 62
    iput-boolean v0, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->mIsRunning:Z

    .line 66
    iput-object p2, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->mSimpleThreadInfo:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->mIsRunning:Z

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->mIsRunning:Z

    return v0
.end method


# virtual methods
.method public cancelTask()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 149
    iput-boolean v2, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->mIsCancel:Z

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->mIsRunning:Z

    .line 151
    iget-object v0, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->this$0:Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;

    iget-object v0, v0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->this$0:Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;

    iget-object v0, v0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 154
    :cond_0
    invoke-virtual {p0, v2}, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->cancel(Z)Z

    .line 155
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 60
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v9, -0x1

    .line 78
    iget-boolean v6, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->mIsCancel:Z

    if-nez v6, :cond_0

    .line 79
    iget-object v6, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->mSimpleThreadInfo:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    if-nez v6, :cond_1

    .line 139
    :cond_0
    :goto_0
    const/4 v6, 0x0

    return-object v6

    .line 82
    :cond_1
    new-instance v4, Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-object v6, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->mSimpleThreadInfo:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-direct {v4, v6}, Lcom/oneplus/tuner/providers/SoundEffectItem;-><init>(Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V

    .line 85
    .local v4, "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    :try_start_0
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->getSoundEffectDao()Lcom/oneplus/tuner/providers/SoundEffectDao;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/oneplus/tuner/providers/SoundEffectDao;->setDownloadUsed(Lcom/oneplus/tuner/providers/SoundEffectItem;)V

    .line 95
    iget v6, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mShareId:I

    if-eq v6, v9, :cond_3

    .line 96
    iget-object v6, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->this$0:Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;

    # getter for: Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->access$100(Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->mSimpleThreadInfo:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-static {v6, v7}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->isRecentlyUsedAlreadyExist(Landroid/content/Context;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 97
    iget-object v6, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->this$0:Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;

    # getter for: Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->access$100(Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->mSimpleThreadInfo:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-static {v6, v7}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->deleteRecentlyUsedConfig(Landroid/content/Context;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V

    .line 99
    :cond_2
    iget-object v6, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->this$0:Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;

    # getter for: Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->access$100(Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->mSimpleThreadInfo:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-static {v6, v7}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->addRecentlyUsedConfig(Landroid/content/Context;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V

    .line 102
    :cond_3
    iget-object v6, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->this$0:Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;

    iget-object v6, v6, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->mHandler:Landroid/os/Handler;

    if-eqz v6, :cond_4

    .line 103
    iget-object v6, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->this$0:Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;

    # getter for: Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->access$100(Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;)Landroid/content/Context;

    move-result-object v6

    instance-of v6, v6, Lcom/oneplus/tuner/MainActivity1;

    if-eqz v6, :cond_6

    .line 104
    iget-object v6, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->this$0:Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;

    # getter for: Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->access$100(Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;)Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/oneplus/tuner/MainActivity1;

    invoke-virtual {v6}, Lcom/oneplus/tuner/MainActivity1;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 105
    .local v2, "ft":Landroid/app/FragmentManager;
    const-string v6, "0"

    invoke-virtual {v2, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/oneplus/tuner/OPCommonStyleFragment;

    iget-object v6, v6, Lcom/oneplus/tuner/OPCommonStyleFragment;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x2711

    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 106
    const-string v6, "1"

    invoke-virtual {v2, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/oneplus/tuner/fragment/RecommendFragment;

    iget-object v6, v6, Lcom/oneplus/tuner/fragment/RecommendFragment;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    iget-object v6, v6, Lcom/oppo/tribune/square/SquareTopLineView;->mListAdapter:Lcom/oppo/tribune/square/TopLineListAdapter;

    iget-object v6, v6, Lcom/oppo/tribune/square/TopLineListAdapter;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x2711

    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 112
    .end local v2    # "ft":Landroid/app/FragmentManager;
    :cond_4
    :goto_1
    iget v6, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mShareId:I

    if-eq v6, v9, :cond_5

    iget v6, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mShareId:I

    const/4 v7, -0x2

    if-eq v6, v7, :cond_5

    .line 113
    iget-object v6, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->this$0:Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;

    # getter for: Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->access$100(Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;)Landroid/content/Context;

    move-result-object v6

    iget v7, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mShareId:I

    invoke-static {v6, v7}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->isDownloadConfigExist(Landroid/content/Context;I)Z

    move-result v3

    .line 114
    .local v3, "isDownloadBefore":Z
    const-string v6, "shuqi"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isDownloadBefore = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    if-nez v3, :cond_5

    sget-boolean v6, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mHeadsetPlugged:Z

    if-eqz v6, :cond_5

    .line 117
    iget-object v6, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->this$0:Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;

    # getter for: Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->access$100(Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;)Landroid/content/Context;

    move-result-object v6

    iget v7, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mShareId:I

    invoke-static {v6, v7}, Lcom/oppo/tribune/square/parse/SquareTopLineResult;->postConfigDownloadNumIncreaseByOne(Landroid/content/Context;I)I

    move-result v5

    .line 118
    .local v5, "ret":I
    const-string v6, "shuqi"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "download num +1 ret = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    if-nez v5, :cond_5

    .line 121
    new-instance v0, Lcom/oneplus/tuner/database/bean/DownloadConfig;

    invoke-direct {v0}, Lcom/oneplus/tuner/database/bean/DownloadConfig;-><init>()V

    .line 122
    .local v0, "bean":Lcom/oneplus/tuner/database/bean/DownloadConfig;
    iget v6, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mShareId:I

    invoke-virtual {v0, v6}, Lcom/oneplus/tuner/database/bean/DownloadConfig;->setConfigId(I)V

    .line 123
    iget-object v6, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->this$0:Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;

    # getter for: Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->access$100(Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->addDownloadConfig(Landroid/content/Context;Lcom/oneplus/tuner/database/bean/DownloadConfig;)V

    .line 124
    iget-object v6, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->mSimpleThreadInfo:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    iget-object v7, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->mSimpleThreadInfo:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-virtual {v7}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getDownloadNum()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setDownloadNum(I)V

    .line 129
    .end local v0    # "bean":Lcom/oneplus/tuner/database/bean/DownloadConfig;
    .end local v3    # "isDownloadBefore":Z
    .end local v5    # "ret":I
    :cond_5
    iget v6, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mShareId:I

    if-ne v6, v9, :cond_0

    .line 130
    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 108
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_1
    iget-object v6, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->this$0:Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;

    iget-object v6, v6, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x2711

    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 60
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->mIsRunning:Z

    .line 146
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 74
    return-void
.end method
