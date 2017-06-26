.class public Lcom/android/settings_ex/applications/RunningServiceDetails;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "RunningServiceDetails.java"

# interfaces
.implements Lcom/android/settings_ex/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment;,
        Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    }
.end annotation


# static fields
.field static final DIALOG_CONFIRM_STOP:I = 0x1

.field static final KEY_BACKGROUND:Ljava/lang/String; = "background"

.field static final KEY_PROCESS:Ljava/lang/String; = "process"

.field static final KEY_UID:Ljava/lang/String; = "uid"

.field static final KEY_USER_ID:Ljava/lang/String; = "user_id"

.field static final TAG:Ljava/lang/String; = "RunningServicesDetails"


# instance fields
.field final mActiveDetails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;",
            ">;"
        }
    .end annotation
.end field

.field mAllDetails:Landroid/view/ViewGroup;

.field mAm:Landroid/app/ActivityManager;

.field mBuilder:Ljava/lang/StringBuilder;

.field mHaveData:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

.field mNumProcesses:I

.field mNumServices:I

.field mProcessName:Ljava/lang/String;

.field mProcessesHeader:Landroid/widget/TextView;

.field mRootView:Landroid/view/View;

.field mServicesHeader:Landroid/widget/TextView;

.field mShowBackground:Z

.field mSnippet:Landroid/view/ViewGroup;

.field mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

.field mSnippetViewHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

.field mState:Lcom/android/settings_ex/applications/RunningState;

.field mUid:I

.field mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    .line 567
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/applications/RunningServiceDetails;Landroid/content/ComponentName;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/RunningServiceDetails;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/RunningServiceDetails;->showConfirmStopDialog(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/applications/RunningServiceDetails;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/RunningServiceDetails;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->finish()V

    return-void
.end method

.method private finish()V
    .locals 2

    .prologue
    .line 487
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings_ex/applications/RunningServiceDetails$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/applications/RunningServiceDetails$1;-><init>(Lcom/android/settings_ex/applications/RunningServiceDetails;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 496
    return-void
.end method

.method private showConfirmStopDialog(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "comp"    # Landroid/content/ComponentName;

    .prologue
    .line 561
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment;->newConfirmStop(ILandroid/content/ComponentName;)Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment;

    move-result-object v0

    .line 563
    .local v0, "newFragment":Landroid/app/DialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 564
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmstop"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 565
    return-void
.end method


# virtual methods
.method activeDetailForService(Landroid/content/ComponentName;)Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    .locals 3
    .param p1, "comp"    # Landroid/content/ComponentName;

    .prologue
    .line 550
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 551
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;

    .line 552
    .local v0, "ad":Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    iget-object v2, v0, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings_ex/applications/RunningState$ServiceItem;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings_ex/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings_ex/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 557
    .end local v0    # "ad":Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    :goto_1
    return-object v0

    .line 550
    .restart local v0    # "ad":Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 557
    .end local v0    # "ad":Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method addDetailViews()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 426
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 427
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 426
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 429
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 431
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 432
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 433
    iput-object v6, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    .line 436
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 437
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 438
    iput-object v6, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    .line 441
    :cond_2
    iput v5, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumProcesses:I

    iput v5, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumServices:I

    .line 443
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    if-eqz v2, :cond_6

    .line 444
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUser:Lcom/android/settings_ex/applications/RunningState$UserState;

    if-eqz v2, :cond_5

    .line 446
    iget-boolean v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mShowBackground:Z

    if-eqz v2, :cond_3

    .line 447
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 448
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 452
    :goto_1
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 453
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/settings_ex/applications/RunningState$MergedItem;ZZ)V

    .line 452
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 450
    .end local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    iget-object v1, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    .restart local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    goto :goto_1

    .line 455
    :cond_4
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 456
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v5, v4}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/settings_ex/applications/RunningState$MergedItem;ZZ)V

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 459
    .end local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/settings_ex/applications/RunningState$MergedItem;ZZ)V

    .line 462
    :cond_6
    return-void
.end method

.method addDetailsViews(Lcom/android/settings_ex/applications/RunningState$MergedItem;ZZ)V
    .locals 7
    .param p1, "item"    # Lcom/android/settings_ex/applications/RunningState$MergedItem;
    .param p2, "inclServices"    # Z
    .param p3, "inclProcesses"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 395
    if-eqz p1, :cond_1

    .line 396
    if-eqz p2, :cond_0

    .line 397
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 398
    iget-object v2, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningState$ServiceItem;

    invoke-virtual {p0, v2, p1, v3, v3}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addServiceDetailsView(Lcom/android/settings_ex/applications/RunningState$ServiceItem;Lcom/android/settings_ex/applications/RunningState$MergedItem;ZZ)V

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    .end local v0    # "i":I
    :cond_0
    if-eqz p3, :cond_1

    .line 403
    iget-object v2, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    .line 407
    const/4 v5, 0x0

    iget v2, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eq v2, v6, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {p0, v5, p1, v4, v2}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addServiceDetailsView(Lcom/android/settings_ex/applications/RunningState$ServiceItem;Lcom/android/settings_ex/applications/RunningState$MergedItem;ZZ)V

    .line 423
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 407
    goto :goto_1

    .line 411
    :cond_3
    const/4 v0, -0x1

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 412
    if-gez v0, :cond_4

    iget-object v1, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 414
    .local v1, "pi":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :goto_3
    if-eqz v1, :cond_5

    iget v2, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mPid:I

    if-gtz v2, :cond_5

    .line 411
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 412
    .end local v1    # "pi":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :cond_4
    iget-object v2, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    move-object v1, v2

    goto :goto_3

    .line 418
    .restart local v1    # "pi":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :cond_5
    if-gez v0, :cond_6

    move v2, v3

    :goto_5
    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addProcessDetailsView(Lcom/android/settings_ex/applications/RunningState$ProcessItem;Z)V

    goto :goto_4

    :cond_6
    move v2, v4

    goto :goto_5
.end method

.method addProcessDetailsView(Lcom/android/settings_ex/applications/RunningState$ProcessItem;Z)V
    .locals 13
    .param p1, "pi"    # Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    .param p2, "isMain"    # Z

    .prologue
    const/4 v12, 0x0

    .line 335
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addProcessesHeader()V

    .line 337
    new-instance v2, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/settings_ex/applications/RunningServiceDetails;)V

    .line 338
    .local v2, "detail":Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    iget-object v9, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f0400fb

    iget-object v11, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 340
    .local v5, "root":Landroid/view/View;
    iget-object v9, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 341
    iput-object v5, v2, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 342
    new-instance v9, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v9, v5}, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v9, v2, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    .line 343
    iget-object v9, v2, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v10, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-object v11, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10, p1, v11}, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings_ex/applications/RunningState;Lcom/android/settings_ex/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    move-result-object v9

    iput-object v9, v2, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    .line 345
    const v9, 0x7f1201fc

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 346
    .local v1, "description":Landroid/widget/TextView;
    iget v9, p1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    if-eq v9, v10, :cond_1

    .line 349
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    return-void

    .line 350
    :cond_1
    if-eqz p2, :cond_2

    .line 351
    const v9, 0x7f0c081b

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 353
    :cond_2
    const/4 v8, 0x0

    .line 354
    .local v8, "textid":I
    const/4 v3, 0x0

    .line 355
    .local v3, "label":Ljava/lang/CharSequence;
    iget-object v6, p1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 356
    .local v6, "rpi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v0, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    .line 359
    .local v0, "comp":Landroid/content/ComponentName;
    iget v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    packed-switch v9, :pswitch_data_0

    .line 385
    :cond_3
    :goto_1
    if-eqz v8, :cond_0

    if-eqz v3, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v3, v10, v12

    invoke-virtual {v9, v8, v10}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 361
    :pswitch_0
    const v8, 0x7f0c081d

    .line 362
    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v9, :cond_3

    .line 364
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 366
    .local v4, "prov":Landroid/content/pm/ProviderInfo;
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-static {v9, v10, v4}, Lcom/android/settings_ex/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_1

    .line 373
    .end local v4    # "prov":Landroid/content/pm/ProviderInfo;
    :pswitch_1
    const v8, 0x7f0c081c

    .line 374
    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v9, :cond_3

    .line 376
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    .line 378
    .local v7, "serv":Landroid/content/pm/ServiceInfo;
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v9, v10, v7}, Lcom/android/settings_ex/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_1

    .line 380
    .end local v7    # "serv":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v9

    goto :goto_1

    .line 368
    :catch_1
    move-exception v9

    goto :goto_1

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method addProcessesHeader()V
    .locals 4

    .prologue
    .line 238
    iget v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumProcesses:I

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040104

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    .line 241
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    const v1, 0x7f0c0814

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 242
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 244
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumProcesses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumProcesses:I

    .line 245
    return-void
.end method

.method addServiceDetailsView(Lcom/android/settings_ex/applications/RunningState$ServiceItem;Lcom/android/settings_ex/applications/RunningState$MergedItem;ZZ)V
    .locals 11
    .param p1, "si"    # Lcom/android/settings_ex/applications/RunningState$ServiceItem;
    .param p2, "mi"    # Lcom/android/settings_ex/applications/RunningState$MergedItem;
    .param p3, "isService"    # Z
    .param p4, "inclDetails"    # Z

    .prologue
    .line 249
    if-eqz p3, :cond_3

    .line 250
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addServicesHeader()V

    .line 259
    :cond_0
    :goto_0
    if-eqz p1, :cond_4

    move-object v0, p1

    .line 261
    .local v0, "bi":Lcom/android/settings_ex/applications/RunningState$BaseItem;
    :goto_1
    new-instance v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/settings_ex/applications/RunningServiceDetails;)V

    .line 262
    .local v3, "detail":Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    iget-object v7, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0400fc

    iget-object v9, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 264
    .local v6, "root":Landroid/view/View;
    iget-object v7, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 265
    iput-object v6, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 266
    iput-object p1, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings_ex/applications/RunningState$ServiceItem;

    .line 267
    new-instance v7, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v7, v6}, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v7, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    .line 268
    iget-object v7, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v8, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-object v9, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8, v0, v9}, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings_ex/applications/RunningState;Lcom/android/settings_ex/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    move-result-object v7

    iput-object v7, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    .line 270
    if-nez p4, :cond_1

    .line 271
    const v7, 0x7f1201fb

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 274
    :cond_1
    if-eqz p1, :cond_2

    iget-object v7, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v7, :cond_2

    .line 275
    iget-object v7, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    iget-object v8, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/app/ActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    .line 279
    :cond_2
    const v7, 0x7f1201fc

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 280
    .local v2, "description":Landroid/widget/TextView;
    const v7, 0x7f12024d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    .line 281
    const v7, 0x7f12024f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    .line 283
    if-eqz p3, :cond_5

    iget v7, p2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eq v7, v8, :cond_5

    .line 287
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    const v7, 0x7f1200c1

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 331
    :goto_2
    iget-object v7, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    return-void

    .line 251
    .end local v0    # "bi":Lcom/android/settings_ex/applications/RunningState$BaseItem;
    .end local v2    # "description":Landroid/widget/TextView;
    .end local v3    # "detail":Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    .end local v6    # "root":Landroid/view/View;
    :cond_3
    iget v7, p2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addProcessesHeader()V

    goto/16 :goto_0

    :cond_4
    move-object v0, p2

    .line 259
    goto/16 :goto_1

    .line 290
    .restart local v0    # "bi":Lcom/android/settings_ex/applications/RunningState$BaseItem;
    .restart local v2    # "description":Landroid/widget/TextView;
    .restart local v3    # "detail":Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    .restart local v6    # "root":Landroid/view/View;
    :cond_5
    if-eqz p1, :cond_6

    iget-object v7, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v7, v7, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    if-eqz v7, :cond_6

    .line 291
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v9, v9, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    iget-object v10, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    :goto_3
    iget-object v7, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v8, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v7, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_a

    const v7, 0x7f0c0816

    :goto_4
    invoke-virtual {v9, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v7, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-object v7, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const v8, 0x104039d

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    .line 319
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "send_action_app_error"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 321
    .local v4, "enabled":I
    if-eqz v4, :cond_c

    if-eqz p1, :cond_c

    .line 322
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v7, v8, v9}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v7

    iput-object v7, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    .line 325
    iget-object v8, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    iget-object v7, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    if-eqz v7, :cond_b

    const/4 v7, 0x1

    :goto_5
    invoke-virtual {v8, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    .line 295
    .end local v4    # "enabled":I
    :cond_6
    iget-boolean v7, p2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mBackground:Z

    if-eqz v7, :cond_7

    .line 296
    const v7, 0x7f0c0819

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 297
    :cond_7
    iget-object v7, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_8

    .line 299
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 301
    .local v1, "clientr":Landroid/content/res/Resources;
    iget-object v7, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 302
    .local v5, "label":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0c081a

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 304
    .end local v1    # "clientr":Landroid/content/res/Resources;
    .end local v5    # "label":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto/16 :goto_3

    .line 307
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-eqz p1, :cond_9

    const v7, 0x7f0c0817

    :goto_6
    invoke-virtual {v8, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_9
    const v7, 0x7f0c0818

    goto :goto_6

    .line 314
    :cond_a
    const v7, 0x7f0c0815

    goto/16 :goto_4

    .line 325
    .restart local v4    # "enabled":I
    :cond_b
    const/4 v7, 0x0

    goto :goto_5

    .line 327
    :cond_c
    iget-object v7, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method addServicesHeader()V
    .locals 4

    .prologue
    .line 228
    iget v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumServices:I

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040104

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    .line 231
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    const v1, 0x7f0c0813

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 232
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 234
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumServices:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumServices:I

    .line 235
    return-void
.end method

.method ensureData()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 613
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mHaveData:Z

    if-nez v0, :cond_0

    .line 614
    iput-boolean v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mHaveData:Z

    .line 615
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/applications/RunningState;->resume(Lcom/android/settings_ex/applications/RunningState$OnRefreshUiListener;)V

    .line 620
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/RunningState;->waitForData()V

    .line 624
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 626
    :cond_0
    return-void
.end method

.method findMergedItem()Z
    .locals 6

    .prologue
    .line 200
    const/4 v1, 0x0

    .line 201
    .local v1, "item":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    iget-boolean v4, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mShowBackground:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v4}, Lcom/android/settings_ex/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 203
    .local v3, "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :goto_0
    if-eqz v3, :cond_5

    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 205
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .line 206
    .local v2, "mi":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    iget v4, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    iget v5, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mUserId:I

    if-eq v4, v5, :cond_2

    .line 204
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 201
    .end local v0    # "i":I
    .end local v2    # "mi":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    .end local v3    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v4}, Lcom/android/settings_ex/applications/RunningState;->getCurrentMergedItems()Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    .line 209
    .restart local v0    # "i":I
    .restart local v2    # "mi":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    .restart local v3    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :cond_2
    iget v4, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mUid:I

    if-ltz v4, :cond_3

    iget-object v4, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    iget v4, v4, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mUid:I

    iget v5, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mUid:I

    if-ne v4, v5, :cond_0

    .line 212
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    iget-object v5, v5, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 214
    :cond_4
    move-object v1, v2

    .line 220
    .end local v0    # "i":I
    .end local v2    # "mi":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    :cond_5
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    if-eq v4, v1, :cond_6

    .line 221
    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .line 222
    const/4 v4, 0x1

    .line 224
    :goto_2
    return v4

    :cond_6
    const/4 v4, 0x0

    goto :goto_2
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 540
    const/16 v0, 0x55

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 500
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 502
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "uid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mUid:I

    .line 503
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mUserId:I

    .line 504
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "process"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    .line 505
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "background"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mShowBackground:Z

    .line 507
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    .line 508
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    .line 510
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/applications/RunningState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    .line 511
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 516
    const v1, 0x7f0400fa

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 517
    .local v0, "view":Landroid/view/View;
    invoke-static {p2, v0, v0, v2}, Lcom/android/settings_ex/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 519
    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mRootView:Landroid/view/View;

    .line 520
    const v1, 0x7f12000e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    .line 521
    const v1, 0x7f1201fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    .line 522
    new-instance v1, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    invoke-direct {v1, v2}, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    .line 526
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->ensureData()V

    .line 528
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 533
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onPause()V

    .line 534
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mHaveData:Z

    .line 535
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/RunningState;->pause()V

    .line 536
    return-void
.end method

.method public onRefreshUi(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 653
    :goto_0
    return-void

    .line 640
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 642
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 645
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 646
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 649
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 650
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 640
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 545
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onResume()V

    .line 546
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->ensureData()V

    .line 547
    return-void
.end method

.method refreshUi(Z)V
    .locals 4
    .param p1, "dataChanged"    # Z

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->findMergedItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    const/4 p1, 0x1

    .line 468
    :cond_0
    if-eqz p1, :cond_1

    .line 469
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    if-eqz v0, :cond_2

    .line 470
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings_ex/applications/RunningState;Lcom/android/settings_ex/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    .line 482
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addDetailViews()V

    .line 484
    :cond_1
    :goto_1
    return-void

    .line 472
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    if-eqz v0, :cond_3

    .line 474
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    const v1, 0x7f0c0812

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 479
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->finish()V

    goto :goto_1
.end method

.method updateTimes()V
    .locals 4

    .prologue
    .line 629
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    if-eqz v1, :cond_0

    .line 630
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 632
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 633
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;

    iget-object v1, v1, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 632
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 635
    :cond_1
    return-void
.end method
