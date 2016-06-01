.class public Lcom/oneplus/tuner/fragment/RecommendFragment;
.super Landroid/app/Fragment;
.source "RecommendFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/oneplus/tuner/base/BaseActivity$ReloadHeadsetConfigLsn;
.implements Lcom/oneplus/tuner/widget/PullToRefreshListView$OnRefreshListener;


# static fields
.field private static final ORDER:Ljava/lang/String; = "3"

.field private static final TAG:Ljava/lang/String; = "ControllerFragment"


# instance fields
.field private mControlView:Lcom/oneplus/tuner/widget/FragmentView;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsConfigEmpty:Z

.field private mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

.field public mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

.field private mType:Ljava/lang/String;

.field private mTypeId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 191
    new-instance v0, Lcom/oneplus/tuner/fragment/RecommendFragment$2;

    invoke-direct {v0, p0}, Lcom/oneplus/tuner/fragment/RecommendFragment$2;-><init>(Lcom/oneplus/tuner/fragment/RecommendFragment;)V

    iput-object v0, p0, Lcom/oneplus/tuner/fragment/RecommendFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/tuner/fragment/RecommendFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/fragment/RecommendFragment;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/oneplus/tuner/fragment/RecommendFragment;->mIsConfigEmpty:Z

    return v0
.end method

.method static synthetic access$002(Lcom/oneplus/tuner/fragment/RecommendFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/tuner/fragment/RecommendFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/oneplus/tuner/fragment/RecommendFragment;->mIsConfigEmpty:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/tuner/fragment/RecommendFragment;)Lcom/oppo/tribune/square/SquareTopLineControl;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/fragment/RecommendFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/RecommendFragment;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

    return-object v0
.end method

.method private addReceiver()V
    .locals 3

    .prologue
    .line 204
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 205
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.oneplus.tunerACTION_LOGIN_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/oneplus/tuner/fragment/RecommendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/tuner/fragment/RecommendFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 207
    return-void
.end method


# virtual methods
.method public acceptChildrenTouchEvent()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/RecommendFragment;->mControlView:Lcom/oneplus/tuner/widget/FragmentView;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/RecommendFragment;->mControlView:Lcom/oneplus/tuner/widget/FragmentView;

    invoke-virtual {v0}, Lcom/oneplus/tuner/widget/FragmentView;->acceptChildrenTouchEvent()V

    .line 170
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 50
    invoke-direct {p0}, Lcom/oneplus/tuner/fragment/RecommendFragment;->addReceiver()V

    .line 52
    new-instance v0, Lcom/oneplus/tuner/fragment/RecommendFragment$1;

    invoke-direct {v0, p0}, Lcom/oneplus/tuner/fragment/RecommendFragment$1;-><init>(Lcom/oneplus/tuner/fragment/RecommendFragment;)V

    const-wide/16 v2, 0xc8

    invoke-static {v0, v2, v3}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncMainRunnableDelay(Ljava/lang/Runnable;J)V

    .line 71
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 120
    if-nez p3, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 125
    :pswitch_0
    const-string v1, "earphone_type"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "type":Ljava/lang/String;
    const-string v1, "earphone_type_id"

    const-wide/16 v4, 0x1

    invoke-virtual {p3, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 128
    .local v2, "type_id":J
    if-eqz v0, :cond_0

    .line 129
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/RecommendFragment;->mTypeId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/tuner/fragment/RecommendFragment;->mType:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    .line 130
    :cond_2
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/RecommendFragment;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

    invoke-virtual {v1}, Lcom/oppo/tribune/square/SquareTopLineControl;->onReLoad()V

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 116
    :goto_0
    return-void

    .line 109
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oneplus/tuner/fragment/RecommendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/oneplus/tuner/OfficialConfigActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/tuner/fragment/RecommendFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x7f0b0087
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    const-string v0, "ControllerFragment"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v0, Lcom/oneplus/tuner/widget/FragmentView;

    invoke-virtual {p0}, Lcom/oneplus/tuner/fragment/RecommendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f03001e

    invoke-direct {v0, v1, v2}, Lcom/oneplus/tuner/widget/FragmentView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oneplus/tuner/fragment/RecommendFragment;->mControlView:Lcom/oneplus/tuner/widget/FragmentView;

    .line 80
    invoke-virtual {p0}, Lcom/oneplus/tuner/fragment/RecommendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/tuner/base/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/oneplus/tuner/base/BaseActivity;->setreloadHeadsetConfigListener(Lcom/oneplus/tuner/base/BaseActivity$ReloadHeadsetConfigLsn;)V

    .line 82
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/fragment/RecommendFragment;->mType:Ljava/lang/String;

    .line 83
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneTypeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/fragment/RecommendFragment;->mTypeId:Ljava/lang/Long;

    .line 84
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneConfigEmptyState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/tuner/fragment/RecommendFragment;->mIsConfigEmpty:Z

    .line 86
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/RecommendFragment;->mType:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/tuner/fragment/RecommendFragment;->mTypeId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/tuner/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c05aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/fragment/RecommendFragment;->mType:Ljava/lang/String;

    .line 88
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/fragment/RecommendFragment;->mTypeId:Ljava/lang/Long;

    .line 89
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/RecommendFragment;->mType:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->putEarphoneType(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/RecommendFragment;->mTypeId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->putEarphoneTypeId(J)V

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/RecommendFragment;->mControlView:Lcom/oneplus/tuner/widget/FragmentView;

    const v1, 0x7f0b008b

    invoke-virtual {v0, v1}, Lcom/oneplus/tuner/widget/FragmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/square/SquareTopLineView;

    iput-object v0, p0, Lcom/oneplus/tuner/fragment/RecommendFragment;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    .line 95
    invoke-virtual {p0}, Lcom/oneplus/tuner/fragment/RecommendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/tribune/util/PhoneInfo;->getScreenWidth(Landroid/content/Context;)I

    move-result v6

    .line 96
    .local v6, "width":I
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/RecommendFragment;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/square/SquareTopLineView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    new-instance v0, Lcom/oppo/tribune/square/SquareTopLineControl;

    invoke-virtual {p0}, Lcom/oneplus/tuner/fragment/RecommendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/tuner/fragment/RecommendFragment;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "3"

    invoke-direct/range {v0 .. v5}, Lcom/oppo/tribune/square/SquareTopLineControl;-><init>(Landroid/content/Context;Lcom/oppo/tribune/square/SquareTopLineView;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/tuner/fragment/RecommendFragment;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

    .line 102
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/RecommendFragment;->mControlView:Lcom/oneplus/tuner/widget/FragmentView;

    return-object v0
.end method

.method public onDefaultEffectUsed()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/RecommendFragment;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/RecommendFragment;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    invoke-virtual {v0}, Lcom/oppo/tribune/square/SquareTopLineView;->onDefaultEffectUsed()V

    .line 149
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/oneplus/tuner/fragment/RecommendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/tuner/fragment/RecommendFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 154
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 155
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onRefresh()V
    .locals 2

    .prologue
    .line 180
    const-string v0, "ControllerFragment"

    const-string v1, "onRefresh"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void
.end method

.method public onReload()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/RecommendFragment;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/RecommendFragment;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

    invoke-virtual {v0}, Lcom/oppo/tribune/square/SquareTopLineControl;->onReLoad()V

    .line 189
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 161
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/RecommendFragment;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/RecommendFragment;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

    invoke-virtual {v0}, Lcom/oppo/tribune/square/SquareTopLineControl;->notifyApdater()V

    .line 164
    :cond_0
    return-void
.end method

.method public preventChildrenTouchEvent()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/RecommendFragment;->mControlView:Lcom/oneplus/tuner/widget/FragmentView;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/RecommendFragment;->mControlView:Lcom/oneplus/tuner/widget/FragmentView;

    invoke-virtual {v0}, Lcom/oneplus/tuner/widget/FragmentView;->preventChildrenTouchEvent()V

    .line 176
    :cond_0
    return-void
.end method

.method public reloadHeadsetConfig()V
    .locals 0

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/oneplus/tuner/fragment/RecommendFragment;->onReload()V

    .line 212
    return-void
.end method
