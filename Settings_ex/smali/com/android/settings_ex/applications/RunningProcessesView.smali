.class public Lcom/android/settings_ex/applications/RunningProcessesView;
.super Landroid/widget/FrameLayout;
.source "RunningProcessesView.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/settings_ex/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;,
        Lcom/android/settings_ex/applications/RunningProcessesView$TimeTicker;,
        Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;,
        Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;
    }
.end annotation


# instance fields
.field SECONDARY_SERVER_MEM:J

.field final mActiveItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;",
            ">;"
        }
    .end annotation
.end field

.field mAdapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

.field mAm:Landroid/app/ActivityManager;

.field mAppsProcessPrefix:Landroid/widget/TextView;

.field mAppsProcessText:Landroid/widget/TextView;

.field mBackgroundProcessPrefix:Landroid/widget/TextView;

.field mBackgroundProcessText:Landroid/widget/TextView;

.field mBuilder:Ljava/lang/StringBuilder;

.field mColorBar:Lcom/android/settings_ex/applications/LinearColorBar;

.field mCurDialog:Landroid/app/Dialog;

.field mCurHighRam:J

.field mCurLowRam:J

.field mCurMedRam:J

.field mCurSelected:Lcom/android/settings_ex/applications/RunningState$BaseItem;

.field mCurShowCached:Z

.field mCurTotalRam:J

.field mDataAvail:Ljava/lang/Runnable;

.field mForegroundProcessPrefix:Landroid/widget/TextView;

.field mForegroundProcessText:Landroid/widget/TextView;

.field mHeader:Landroid/view/View;

.field mListView:Landroid/widget/ListView;

.field mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

.field final mMyUserId:I

.field mOwner:Landroid/app/Fragment;

.field mState:Lcom/android/settings_ex/applications/RunningState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v2, -0x1

    .line 432
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    .line 85
    iput-wide v2, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurTotalRam:J

    .line 86
    iput-wide v2, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurHighRam:J

    .line 87
    iput-wide v2, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurMedRam:J

    .line 88
    iput-wide v2, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurLowRam:J

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurShowCached:Z

    .line 93
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    .line 433
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mMyUserId:I

    .line 434
    return-void
.end method

.method private startServiceDetailsActivity(Lcom/android/settings_ex/applications/RunningState$MergedItem;)V
    .locals 7
    .param p1, "mi"    # Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .prologue
    const/4 v4, 0x0

    .line 411
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    if-eqz v1, :cond_1

    .line 413
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 414
    .local v2, "args":Landroid/os/Bundle;
    iget-object v1, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    if-eqz v1, :cond_0

    .line 415
    const-string v1, "uid"

    iget-object v3, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    iget v3, v3, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 416
    const-string v1, "process"

    iget-object v3, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    iget-object v3, v3, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_0
    const-string v1, "user_id"

    iget v3, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 419
    const-string v1, "background"

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAdapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v3, v3, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 421
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 422
    .local v0, "sa":Lcom/android/settings_ex/SettingsActivity;
    const-class v1, Lcom/android/settings_ex/applications/RunningServiceDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090672

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 425
    .end local v0    # "sa":Lcom/android/settings_ex/SettingsActivity;
    .end local v2    # "args":Landroid/os/Bundle;
    :cond_1
    return-void
.end method


# virtual methods
.method public doCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 437
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    .line 438
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/applications/RunningState;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    .line 439
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 441
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0400bc

    invoke-virtual {v1, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 442
    const v4, 0x102000a

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    .line 443
    const v4, 0x1020004

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 444
    .local v0, "emptyView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 445
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 447
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 448
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 449
    new-instance v4, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    iget-object v5, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-direct {v4, p0, v5}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;-><init>(Lcom/android/settings_ex/applications/RunningProcessesView;Lcom/android/settings_ex/applications/RunningState;)V

    iput-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAdapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    .line 450
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAdapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 451
    const v4, 0x7f0400ba

    invoke-virtual {v1, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    .line 452
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v7, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 453
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const v5, 0x7f0f01f7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/applications/LinearColorBar;

    iput-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mColorBar:Lcom/android/settings_ex/applications/LinearColorBar;

    .line 454
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 455
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mColorBar:Lcom/android/settings_ex/applications/LinearColorBar;

    const v5, 0x7f08002f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const v6, 0x7f080030

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const v7, 0x7f080031

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/settings_ex/applications/LinearColorBar;->setColors(III)V

    .line 458
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const v5, 0x7f0f01fc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mBackgroundProcessPrefix:Landroid/widget/TextView;

    .line 459
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const v5, 0x7f0f01fa

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAppsProcessPrefix:Landroid/widget/TextView;

    .line 460
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const v5, 0x7f0f01f8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mForegroundProcessPrefix:Landroid/widget/TextView;

    .line 461
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const v5, 0x7f0f01fd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    .line 462
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const v5, 0x7f0f01fb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAppsProcessText:Landroid/widget/TextView;

    .line 463
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const v5, 0x7f0f01f9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    .line 465
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 466
    .local v2, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v4, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 467
    iget-wide v4, v2, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    iput-wide v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->SECONDARY_SERVER_MEM:J

    .line 468
    return-void
.end method

.method public doPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 471
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/RunningState;->pause()V

    .line 472
    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 473
    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    .line 474
    return-void
.end method

.method public doResume(Landroid/app/Fragment;Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "owner"    # Landroid/app/Fragment;
    .param p2, "dataAvail"    # Ljava/lang/Runnable;

    .prologue
    const/4 v0, 0x1

    .line 477
    iput-object p1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    .line 478
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/applications/RunningState;->resume(Lcom/android/settings_ex/applications/RunningState$OnRefreshUiListener;)V

    .line 479
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/RunningState;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/RunningProcessesView;->refreshUi(Z)V

    .line 486
    :goto_0
    return v0

    .line 485
    :cond_0
    iput-object p2, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 486
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 403
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    .line 404
    .local v0, "l":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .line 405
    .local v1, "mi":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurSelected:Lcom/android/settings_ex/applications/RunningState$BaseItem;

    .line 406
    invoke-direct {p0, v1}, Lcom/android/settings_ex/applications/RunningProcessesView;->startServiceDetailsActivity(Lcom/android/settings_ex/applications/RunningState$MergedItem;)V

    .line 407
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    return-void
.end method

.method public onRefreshUi(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 504
    packed-switch p1, :pswitch_data_0

    .line 517
    :goto_0
    return-void

    .line 506
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 509
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/RunningProcessesView;->refreshUi(Z)V

    .line 510
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 513
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/RunningProcessesView;->refreshUi(Z)V

    .line 514
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 504
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method refreshUi(Z)V
    .locals 20
    .param p1, "dataChanged"    # Z

    .prologue
    .line 323
    if-eqz p1, :cond_0

    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAdapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    .line 325
    .local v2, "adapter":Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;
    invoke-virtual {v2}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    .line 326
    invoke-virtual {v2}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->notifyDataSetChanged()V

    .line 329
    .end local v2    # "adapter":Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    if-eqz v11, :cond_1

    .line 330
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    invoke-interface {v11}, Ljava/lang/Runnable;->run()V

    .line 331
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 334
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v11}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 346
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-object v14, v11, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 347
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurShowCached:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAdapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v15, v15, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eq v11, v15, :cond_2

    .line 348
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAdapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v11, v11, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurShowCached:Z

    .line 349
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurShowCached:Z

    if-eqz v11, :cond_5

    .line 350
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mForegroundProcessPrefix:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f09066f

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAppsProcessPrefix:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090670

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v11}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v12

    .line 365
    .local v12, "totalRam":J
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurShowCached:Z

    if-eqz v11, :cond_6

    .line 366
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v11}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v11}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v18

    add-long v6, v16, v18

    .line 367
    .local v6, "lowRam":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-wide v8, v11, Lcom/android/settings_ex/applications/RunningState;->mBackgroundProcessMemory:J

    .line 374
    .local v8, "medRam":J
    :goto_1
    sub-long v16, v12, v8

    sub-long v4, v16, v6

    .line 376
    .local v4, "highRam":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurTotalRam:J

    move-wide/from16 v16, v0

    cmp-long v11, v16, v12

    if-nez v11, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurHighRam:J

    move-wide/from16 v16, v0

    cmp-long v11, v16, v4

    if-nez v11, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurMedRam:J

    move-wide/from16 v16, v0

    cmp-long v11, v16, v8

    if-nez v11, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurLowRam:J

    move-wide/from16 v16, v0

    cmp-long v11, v16, v6

    if-eqz v11, :cond_4

    .line 378
    :cond_3
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurTotalRam:J

    .line 379
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurHighRam:J

    .line 380
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurMedRam:J

    .line 381
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurLowRam:J

    .line 382
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v3

    .line 383
    .local v3, "bidiFormatter":Landroid/text/BidiFormatter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v6, v7}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 385
    .local v10, "sizeStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090671

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v10, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v8, v9}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 389
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAppsProcessText:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090671

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v10, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 393
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090671

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v10, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mColorBar:Lcom/android/settings_ex/applications/LinearColorBar;

    long-to-float v15, v4

    long-to-float v0, v12

    move/from16 v16, v0

    div-float v15, v15, v16

    long-to-float v0, v8

    move/from16 v16, v0

    long-to-float v0, v12

    move/from16 v17, v0

    div-float v16, v16, v17

    long-to-float v0, v6

    move/from16 v17, v0

    long-to-float v0, v12

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v15, v0, v1}, Lcom/android/settings_ex/applications/LinearColorBar;->setRatios(FFF)V

    .line 399
    .end local v3    # "bidiFormatter":Landroid/text/BidiFormatter;
    .end local v10    # "sizeStr":Ljava/lang/String;
    :cond_4
    monitor-exit v14

    .line 400
    return-void

    .line 355
    .end local v4    # "highRam":J
    .end local v6    # "lowRam":J
    .end local v8    # "medRam":J
    .end local v12    # "totalRam":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mForegroundProcessPrefix:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f09066c

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAppsProcessPrefix:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f09066d

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 399
    :catchall_0
    move-exception v11

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 369
    .restart local v12    # "totalRam":J
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v11}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v11}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v18

    add-long v16, v16, v18

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-wide v0, v11, Lcom/android/settings_ex/applications/RunningState;->mBackgroundProcessMemory:J

    move-wide/from16 v18, v0

    add-long v6, v16, v18

    .line 371
    .restart local v6    # "lowRam":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-wide v8, v11, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessMemory:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v8    # "medRam":J
    goto/16 :goto_1
.end method

.method updateTimes()V
    .locals 4

    .prologue
    .line 490
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 491
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 492
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    .line 493
    .local v0, "ai":Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;
    iget-object v2, v0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 495
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 498
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 500
    .end local v0    # "ai":Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;
    :cond_1
    return-void
.end method
