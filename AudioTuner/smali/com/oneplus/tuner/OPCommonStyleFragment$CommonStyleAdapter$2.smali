.class Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$2;
.super Ljava/lang/Object;
.source "OPCommonStyleFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;

.field final synthetic val$bean:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$2;->this$1:Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;

    iput-object p2, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$2;->val$bean:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/16 v7, 0x2711

    const/high16 v6, 0x3f800000    # 1.0f

    .line 218
    sget-boolean v4, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mHeadsetPlugged:Z

    if-nez v4, :cond_1

    .line 219
    iget-object v4, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$2;->this$1:Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;

    iget-object v4, v4, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->this$0:Lcom/oneplus/tuner/OPCommonStyleFragment;

    invoke-virtual {v4}, Lcom/oneplus/tuner/OPCommonStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c06fc

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v4, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$2;->this$1:Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;

    iget-object v4, v4, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->this$0:Lcom/oneplus/tuner/OPCommonStyleFragment;

    iget-object v4, v4, Lcom/oneplus/tuner/OPCommonStyleFragment;->manager:Lcom/waves/maxxaudio/MaxxAudioManager;

    invoke-virtual {v4}, Lcom/waves/maxxaudio/MaxxAudioManager;->isEnabled()Z

    move-result v1

    .line 225
    .local v1, "enabled":Z
    if-nez v1, :cond_2

    .line 226
    new-instance v4, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$2$1;

    invoke-direct {v4, p0}, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$2$1;-><init>(Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$2;)V

    invoke-static {v4}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncMainRunnable(Ljava/lang/Runnable;)V

    .line 236
    :cond_2
    iget-object v4, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$2;->this$1:Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;

    iget-object v4, v4, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->this$0:Lcom/oneplus/tuner/OPCommonStyleFragment;

    iget-object v4, v4, Lcom/oneplus/tuner/OPCommonStyleFragment;->manager:Lcom/waves/maxxaudio/MaxxAudioManager;

    iget-object v5, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$2;->val$bean:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-virtual {v5}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getCategoryId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/waves/maxxaudio/MaxxAudioManager;->setMediaType(I)V

    .line 237
    iget-object v4, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$2;->this$1:Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;

    iget-object v4, v4, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->this$0:Lcom/oneplus/tuner/OPCommonStyleFragment;

    iget-object v4, v4, Lcom/oneplus/tuner/OPCommonStyleFragment;->manager:Lcom/waves/maxxaudio/MaxxAudioManager;

    const/16 v5, 0x27

    invoke-virtual {v4, v5, v6}, Lcom/waves/maxxaudio/MaxxAudioManager;->setParamSync(IF)V

    .line 238
    iget-object v4, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$2;->this$1:Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;

    iget-object v4, v4, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->this$0:Lcom/oneplus/tuner/OPCommonStyleFragment;

    iget-object v4, v4, Lcom/oneplus/tuner/OPCommonStyleFragment;->manager:Lcom/waves/maxxaudio/MaxxAudioManager;

    const/16 v5, 0x8d

    invoke-virtual {v4, v5, v6}, Lcom/waves/maxxaudio/MaxxAudioManager;->setParamSync(IF)V

    .line 239
    new-instance v3, Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-object v4, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$2;->val$bean:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-direct {v3, v4}, Lcom/oneplus/tuner/providers/SoundEffectItem;-><init>(Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V

    .line 241
    .local v3, "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    sput-object v3, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 243
    :try_start_0
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->getSoundEffectDao()Lcom/oneplus/tuner/providers/SoundEffectDao;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/oneplus/tuner/providers/SoundEffectDao;->setLocalUsed_14049(Lcom/oneplus/tuner/providers/SoundEffectItem;)V

    .line 244
    iget-object v4, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$2;->this$1:Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;

    iget-object v4, v4, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->this$0:Lcom/oneplus/tuner/OPCommonStyleFragment;

    invoke-virtual {v4}, Lcom/oneplus/tuner/OPCommonStyleFragment;->onEffectDataChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_1
    iget-object v4, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$2;->this$1:Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;

    iget-object v4, v4, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->this$0:Lcom/oneplus/tuner/OPCommonStyleFragment;

    iget-object v4, v4, Lcom/oneplus/tuner/OPCommonStyleFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 251
    iget-object v4, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$2;->this$1:Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;

    iget-object v4, v4, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->this$0:Lcom/oneplus/tuner/OPCommonStyleFragment;

    invoke-virtual {v4}, Lcom/oneplus/tuner/OPCommonStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/oneplus/tuner/MainActivity1;

    invoke-virtual {v4}, Lcom/oneplus/tuner/MainActivity1;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 252
    .local v2, "ft":Landroid/app/FragmentManager;
    const-string v4, "1"

    invoke-virtual {v2, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/oneplus/tuner/fragment/RecommendFragment;

    iget-object v4, v4, Lcom/oneplus/tuner/fragment/RecommendFragment;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    iget-object v4, v4, Lcom/oppo/tribune/square/SquareTopLineView;->mListAdapter:Lcom/oppo/tribune/square/TopLineListAdapter;

    if-eqz v4, :cond_0

    .line 253
    const-string v4, "1"

    invoke-virtual {v2, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/oneplus/tuner/fragment/RecommendFragment;

    iget-object v4, v4, Lcom/oneplus/tuner/fragment/RecommendFragment;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    iget-object v4, v4, Lcom/oppo/tribune/square/SquareTopLineView;->mListAdapter:Lcom/oppo/tribune/square/TopLineListAdapter;

    iget-object v4, v4, Lcom/oppo/tribune/square/TopLineListAdapter;->mHandler:Landroid/os/Handler;

    invoke-static {v4, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 245
    .end local v2    # "ft":Landroid/app/FragmentManager;
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
