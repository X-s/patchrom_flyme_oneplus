.class public Lcom/oneplus/tuner/fragment/ControllerFragment;
.super Landroid/app/Fragment;
.source "ControllerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/oneplus/tuner/widget/PullToRefreshListView$OnRefreshListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ControllerFragment"


# instance fields
.field private mActivity:Lcom/oneplus/tuner/MainActivity;

.field private mControlView:Lcom/oneplus/tuner/widget/FragmentView;

.field mCurrentEarphone:Landroid/widget/TextView;

.field mDeaultLable:Landroid/widget/TextView;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsConfigEmpty:Z

.field private mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

.field private mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

.field private mType:Ljava/lang/String;

.field private mTypeId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 206
    new-instance v0, Lcom/oneplus/tuner/fragment/ControllerFragment$2;

    invoke-direct {v0, p0}, Lcom/oneplus/tuner/fragment/ControllerFragment$2;-><init>(Lcom/oneplus/tuner/fragment/ControllerFragment;)V

    iput-object v0, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/tuner/fragment/ControllerFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/fragment/ControllerFragment;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mIsConfigEmpty:Z

    return v0
.end method

.method static synthetic access$002(Lcom/oneplus/tuner/fragment/ControllerFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/tuner/fragment/ControllerFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mIsConfigEmpty:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/tuner/fragment/ControllerFragment;)Lcom/oppo/tribune/square/SquareTopLineControl;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/fragment/ControllerFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

    return-object v0
.end method

.method private addReceiver()V
    .locals 3

    .prologue
    .line 219
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 220
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.oneplus.tunerACTION_LOGIN_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mActivity:Lcom/oneplus/tuner/MainActivity;

    iget-object v2, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/oneplus/tuner/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 222
    return-void
.end method

.method private doFooterClick()V
    .locals 2

    .prologue
    .line 147
    const-string v0, "ControllerFragment"

    const-string v1, "doFooterClick load more"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method


# virtual methods
.method public acceptChildrenTouchEvent()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mControlView:Lcom/oneplus/tuner/widget/FragmentView;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mControlView:Lcom/oneplus/tuner/widget/FragmentView;

    invoke-virtual {v0}, Lcom/oneplus/tuner/widget/FragmentView;->acceptChildrenTouchEvent()V

    .line 185
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 56
    invoke-direct {p0}, Lcom/oneplus/tuner/fragment/ControllerFragment;->addReceiver()V

    .line 57
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 110
    if-nez p3, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 115
    :pswitch_0
    const-string v1, "earphone_type"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "type":Ljava/lang/String;
    const-string v1, "earphone_type_id"

    const-wide/16 v4, 0x1

    invoke-virtual {p3, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 118
    .local v2, "type_id":J
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/fragment/ControllerFragment;->updateCurrentHeadset(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mTypeId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mType:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    .line 121
    :cond_2
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

    invoke-virtual {v1}, Lcom/oppo/tribune/square/SquareTopLineControl;->onReLoad()V

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 106
    :goto_0
    return-void

    .line 100
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mActivity:Lcom/oneplus/tuner/MainActivity;

    const-class v2, Lcom/oneplus/tuner/OfficialConfigActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/tuner/fragment/ControllerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x7f0b0087
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    const-string v1, "ControllerFragment"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mActivity:Lcom/oneplus/tuner/MainActivity;

    if-nez v1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/oneplus/tuner/fragment/ControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/MainActivity;

    iput-object v1, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mActivity:Lcom/oneplus/tuner/MainActivity;

    .line 69
    :cond_0
    new-instance v1, Lcom/oneplus/tuner/widget/FragmentView;

    iget-object v2, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mActivity:Lcom/oneplus/tuner/MainActivity;

    const v3, 0x7f03001e

    invoke-direct {v1, v2, v3}, Lcom/oneplus/tuner/widget/FragmentView;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mControlView:Lcom/oneplus/tuner/widget/FragmentView;

    .line 70
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mControlView:Lcom/oneplus/tuner/widget/FragmentView;

    const v2, 0x7f0b0087

    invoke-virtual {v1, v2}, Lcom/oneplus/tuner/widget/FragmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mCurrentEarphone:Landroid/widget/TextView;

    .line 73
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mType:Ljava/lang/String;

    .line 74
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneTypeId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mTypeId:Ljava/lang/Long;

    .line 75
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneConfigEmptyState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mIsConfigEmpty:Z

    .line 77
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mType:Ljava/lang/String;

    const-string v2, ""

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mTypeId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/tuner/fragment/ControllerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c05aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mType:Ljava/lang/String;

    .line 79
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mTypeId:Ljava/lang/Long;

    .line 80
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mType:Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->putEarphoneType(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mTypeId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->putEarphoneTypeId(J)V

    .line 84
    :cond_2
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mCurrentEarphone:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mCurrentEarphone:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mControlView:Lcom/oneplus/tuner/widget/FragmentView;

    const v2, 0x7f0b008b

    invoke-virtual {v1, v2}, Lcom/oneplus/tuner/widget/FragmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oppo/tribune/square/SquareTopLineView;

    iput-object v1, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    .line 88
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mActivity:Lcom/oneplus/tuner/MainActivity;

    invoke-static {v1}, Lcom/oppo/tribune/util/PhoneInfo;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    .line 89
    .local v0, "width":I
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/oppo/tribune/square/SquareTopLineView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    new-instance v1, Lcom/oppo/tribune/square/SquareTopLineControl;

    iget-object v2, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mActivity:Lcom/oneplus/tuner/MainActivity;

    iget-object v3, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/oppo/tribune/square/SquareTopLineControl;-><init>(Landroid/content/Context;Lcom/oppo/tribune/square/SquareTopLineView;I)V

    iput-object v1, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

    .line 93
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mControlView:Lcom/oneplus/tuner/widget/FragmentView;

    return-object v1
.end method

.method public onDefaultEffectUsed()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    invoke-virtual {v0}, Lcom/oppo/tribune/square/SquareTopLineView;->onDefaultEffectUsed()V

    .line 144
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mActivity:Lcom/oneplus/tuner/MainActivity;

    iget-object v1, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/oneplus/tuner/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 153
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 154
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
    .line 138
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onRefresh()V
    .locals 2

    .prologue
    .line 195
    const-string v0, "ControllerFragment"

    const-string v1, "onRefresh"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method

.method public onReload()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

    invoke-virtual {v0}, Lcom/oppo/tribune/square/SquareTopLineControl;->onReLoad()V

    .line 204
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 160
    new-instance v0, Lcom/oneplus/tuner/fragment/ControllerFragment$1;

    invoke-direct {v0, p0}, Lcom/oneplus/tuner/fragment/ControllerFragment$1;-><init>(Lcom/oneplus/tuner/fragment/ControllerFragment;)V

    const-wide/16 v2, 0xc8

    invoke-static {v0, v2, v3}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncMainRunnableDelay(Ljava/lang/Runnable;J)V

    .line 179
    return-void
.end method

.method public preventChildrenTouchEvent()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mControlView:Lcom/oneplus/tuner/widget/FragmentView;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mControlView:Lcom/oneplus/tuner/widget/FragmentView;

    invoke-virtual {v0}, Lcom/oneplus/tuner/widget/FragmentView;->preventChildrenTouchEvent()V

    .line 191
    :cond_0
    return-void
.end method

.method public setActivity(Lcom/oneplus/tuner/MainActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/oneplus/tuner/MainActivity;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mActivity:Lcom/oneplus/tuner/MainActivity;

    .line 51
    return-void
.end method

.method public updateCurrentHeadset(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/ControllerFragment;->mCurrentEarphone:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    return-void
.end method
