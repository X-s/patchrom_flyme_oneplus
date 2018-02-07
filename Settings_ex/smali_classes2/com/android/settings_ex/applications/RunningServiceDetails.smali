.class public Lcom/android/settings_ex/applications/RunningServiceDetails;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "RunningServiceDetails.java"

# interfaces
.implements Lcom/android/settings_ex/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;,
        Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment;
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
.method static synthetic -wrap0(Lcom/android/settings_ex/applications/RunningServiceDetails;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->finish()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/applications/RunningServiceDetails;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "comp"    # Landroid/content/ComponentName;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/RunningServiceDetails;->showConfirmStopDialog(Landroid/content/ComponentName;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    .line 47
    return-void
.end method

.method private finish()V
    .locals 2

    .prologue
    .line 485
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings_ex/applications/RunningServiceDetails$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/applications/RunningServiceDetails$1;-><init>(Lcom/android/settings_ex/applications/RunningServiceDetails;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 484
    return-void
.end method

.method private showConfirmStopDialog(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "comp"    # Landroid/content/ComponentName;

    .prologue
    .line 560
    const/4 v1, 0x1

    .line 559
    invoke-static {v1, p1}, Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment;->newConfirmStop(ILandroid/content/ComponentName;)Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment;

    move-result-object v0

    .line 561
    .local v0, "newFragment":Landroid/app/DialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 562
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "confirmstop"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 558
    return-void
.end method


# virtual methods
.method activeDetailForService(Landroid/content/ComponentName;)Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    .locals 4
    .param p1, "comp"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 548
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 549
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;

    .line 550
    .local v0, "ad":Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    iget-object v2, v0, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings_ex/applications/RunningState$ServiceItem;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings_ex/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v2, :cond_0

    .line 551
    iget-object v2, v0, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings_ex/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 550
    if-eqz v2, :cond_0

    .line 552
    return-object v0

    .line 548
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 555
    .end local v0    # "ad":Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    :cond_1
    return-object v3
.end method

.method addDetailViews()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 424
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 425
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 424
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 427
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 429
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 430
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 431
    iput-object v4, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    .line 434
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 435
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 436
    iput-object v4, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    .line 439
    :cond_2
    iput v5, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumProcesses:I

    iput v5, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumServices:I

    .line 441
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    if-eqz v2, :cond_6

    .line 442
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUser:Lcom/android/settings_ex/applications/RunningState$UserState;

    if-eqz v2, :cond_5

    .line 444
    iget-boolean v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mShowBackground:Z

    if-eqz v2, :cond_3

    .line 445
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 446
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 450
    :goto_1
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 451
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v6, v5}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/settings_ex/applications/RunningState$MergedItem;ZZ)V

    .line 450
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 448
    .end local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    iget-object v1, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    .restart local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    goto :goto_1

    .line 453
    :cond_4
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 454
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v5, v6}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/settings_ex/applications/RunningState$MergedItem;ZZ)V

    .line 453
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 457
    .end local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v6, v6}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/settings_ex/applications/RunningState$MergedItem;ZZ)V

    .line 423
    :cond_6
    return-void
.end method

.method addDetailsViews(Lcom/android/settings_ex/applications/RunningState$MergedItem;ZZ)V
    .locals 7
    .param p1, "item"    # Lcom/android/settings_ex/applications/RunningState$MergedItem;
    .param p2, "inclServices"    # Z
    .param p3, "inclProcesses"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 393
    if-eqz p1, :cond_1

    .line 394
    if-eqz p2, :cond_0

    .line 395
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 396
    iget-object v2, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningState$ServiceItem;

    invoke-virtual {p0, v2, p1, v3, v3}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addServiceDetailsView(Lcom/android/settings_ex/applications/RunningState$ServiceItem;Lcom/android/settings_ex/applications/RunningState$MergedItem;ZZ)V

    .line 395
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 400
    .end local v0    # "i":I
    :cond_0
    if-eqz p3, :cond_1

    .line 401
    iget-object v2, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    .line 405
    iget v2, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eq v2, v5, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {p0, v6, p1, v4, v2}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addServiceDetailsView(Lcom/android/settings_ex/applications/RunningState$ServiceItem;Lcom/android/settings_ex/applications/RunningState$MergedItem;ZZ)V

    .line 392
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 405
    goto :goto_1

    .line 409
    :cond_3
    const/4 v0, -0x1

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 410
    if-gez v0, :cond_4

    iget-object v1, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 412
    .local v1, "pi":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :goto_3
    if-eqz v1, :cond_5

    iget v2, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mPid:I

    if-gtz v2, :cond_5

    .line 409
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 411
    .end local v1    # "pi":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :cond_4
    iget-object v2, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    move-object v1, v2

    goto :goto_3

    .line 416
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
    .locals 14
    .param p1, "pi"    # Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    .param p2, "isMain"    # Z

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addProcessesHeader()V

    .line 335
    new-instance v2, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/settings_ex/applications/RunningServiceDetails;)V

    .line 336
    .local v2, "detail":Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    iget-object v10, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    .line 337
    iget-object v11, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    .line 336
    const v12, 0x7f040175

    .line 337
    const/4 v13, 0x0

    .line 336
    invoke-virtual {v10, v12, v11, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 338
    .local v6, "root":Landroid/view/View;
    iget-object v10, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 339
    iput-object v6, v2, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 340
    new-instance v10, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v10, v6}, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v10, v2, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    .line 341
    iget-object v10, v2, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v11, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-object v12, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11, p1, v12}, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings_ex/applications/RunningState;Lcom/android/settings_ex/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    move-result-object v10

    iput-object v10, v2, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    .line 343
    const v10, 0x7f1102c8

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 344
    .local v1, "description":Landroid/widget/TextView;
    iget v10, p1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    if-eq v10, v11, :cond_1

    .line 347
    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 388
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    return-void

    .line 348
    :cond_1
    if-eqz p2, :cond_2

    .line 349
    const v10, 0x7f0e0a5b

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 351
    :cond_2
    const/4 v9, 0x0

    .line 352
    .local v9, "textid":I
    const/4 v4, 0x0

    .line 353
    .local v4, "label":Ljava/lang/CharSequence;
    iget-object v7, p1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 354
    .local v7, "rpi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v0, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    .line 357
    .local v0, "comp":Landroid/content/ComponentName;
    iget v10, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    packed-switch v10, :pswitch_data_0

    .line 383
    .end local v4    # "label":Ljava/lang/CharSequence;
    :cond_3
    :goto_1
    if-eqz v9, :cond_0

    if-eqz v4, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    invoke-virtual {v10, v9, v11}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 359
    .restart local v4    # "label":Ljava/lang/CharSequence;
    :pswitch_0
    const v9, 0x7f0e0a5d

    .line 360
    iget-object v10, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v10, :cond_3

    .line 362
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 363
    iget-object v11, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v12, 0x0

    .line 362
    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    .line 364
    .local v5, "prov":Landroid/content/pm/ProviderInfo;
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 365
    iget-object v11, v5, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 364
    invoke-static {v10, v11, v5}, Lcom/android/settings_ex/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .local v4, "label":Ljava/lang/CharSequence;
    goto :goto_1

    .line 371
    .end local v5    # "prov":Landroid/content/pm/ProviderInfo;
    .local v4, "label":Ljava/lang/CharSequence;
    :pswitch_1
    const v9, 0x7f0e0a5c

    .line 372
    iget-object v10, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v10, :cond_3

    .line 374
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 375
    iget-object v11, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v12, 0x0

    .line 374
    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v8

    .line 376
    .local v8, "serv":Landroid/content/pm/ServiceInfo;
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 377
    iget-object v11, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 376
    invoke-static {v10, v11, v8}, Lcom/android/settings_ex/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .local v4, "label":Ljava/lang/CharSequence;
    goto :goto_1

    .line 378
    .end local v8    # "serv":Landroid/content/pm/ServiceInfo;
    .local v4, "label":Ljava/lang/CharSequence;
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    .line 366
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    .restart local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    .line 357
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method addProcessesHeader()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 236
    iget v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumProcesses:I

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    .line 238
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    .line 237
    const v2, 0x7f040187

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    .line 239
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    const v1, 0x7f0e0a54

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 240
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 242
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumProcesses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumProcesses:I

    .line 235
    return-void
.end method

.method addServiceDetailsView(Lcom/android/settings_ex/applications/RunningState$ServiceItem;Lcom/android/settings_ex/applications/RunningState$MergedItem;ZZ)V
    .locals 12
    .param p1, "si"    # Lcom/android/settings_ex/applications/RunningState$ServiceItem;
    .param p2, "mi"    # Lcom/android/settings_ex/applications/RunningState$MergedItem;
    .param p3, "isService"    # Z
    .param p4, "inclDetails"    # Z

    .prologue
    .line 247
    if-eqz p3, :cond_3

    .line 248
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addServicesHeader()V

    .line 257
    :cond_0
    :goto_0
    if-eqz p1, :cond_4

    move-object v0, p1

    .line 259
    .local v0, "bi":Lcom/android/settings_ex/applications/RunningState$BaseItem;
    :goto_1
    new-instance v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/settings_ex/applications/RunningServiceDetails;)V

    .line 260
    .local v3, "detail":Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    iget-object v8, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    .line 261
    iget-object v9, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    .line 260
    const v10, 0x7f040176

    .line 261
    const/4 v11, 0x0

    .line 260
    invoke-virtual {v8, v10, v9, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 262
    .local v7, "root":Landroid/view/View;
    iget-object v8, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 263
    iput-object v7, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 264
    iput-object p1, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings_ex/applications/RunningState$ServiceItem;

    .line 265
    new-instance v8, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v8, v7}, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v8, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    .line 266
    iget-object v8, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v9, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-object v10, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9, v0, v10}, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings_ex/applications/RunningState;Lcom/android/settings_ex/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    move-result-object v8

    iput-object v8, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    .line 268
    if-nez p4, :cond_1

    .line 269
    const v8, 0x7f1102c7

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 272
    :cond_1
    if-eqz p1, :cond_2

    iget-object v8, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v8, :cond_2

    .line 273
    iget-object v8, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    .line 274
    iget-object v9, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 273
    invoke-virtual {v8, v9}, Landroid/app/ActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v8

    iput-object v8, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    .line 277
    :cond_2
    const v8, 0x7f1102c8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 278
    .local v2, "description":Landroid/widget/TextView;
    const v8, 0x7f11033c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    .line 279
    const v8, 0x7f1101db

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    .line 281
    if-eqz p3, :cond_5

    iget v8, p2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-eq v8, v9, :cond_5

    .line 285
    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    const v8, 0x7f11017f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 329
    :goto_2
    iget-object v8, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    return-void

    .line 249
    .end local v0    # "bi":Lcom/android/settings_ex/applications/RunningState$BaseItem;
    .end local v2    # "description":Landroid/widget/TextView;
    .end local v3    # "detail":Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    .end local v7    # "root":Landroid/view/View;
    :cond_3
    iget v8, p2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-eq v8, v9, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addProcessesHeader()V

    goto/16 :goto_0

    .line 257
    :cond_4
    move-object v0, p2

    .restart local v0    # "bi":Lcom/android/settings_ex/applications/RunningState$BaseItem;
    goto/16 :goto_1

    .line 288
    .restart local v2    # "description":Landroid/widget/TextView;
    .restart local v3    # "detail":Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    .restart local v7    # "root":Landroid/view/View;
    :cond_5
    if-eqz p1, :cond_6

    iget-object v8, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v8, v8, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    if-eqz v8, :cond_6

    .line 289
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 290
    iget-object v9, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v10, v10, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    .line 291
    iget-object v11, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 289
    invoke-virtual {v8, v9, v10, v11}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    :goto_3
    iget-object v8, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v8, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v9, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v8, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_a

    .line 313
    const v8, 0x7f0e0a56

    .line 312
    :goto_4
    invoke-virtual {v10, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v8, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    invoke-virtual {v8, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v8, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const v9, 0x10403b4

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 317
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 318
    const-string/jumbo v9, "send_action_app_error"

    const/4 v10, 0x0

    .line 317
    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 319
    .local v5, "enabled":I
    if-eqz v5, :cond_c

    if-eqz p1, :cond_c

    .line 321
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 322
    iget-object v10, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 320
    invoke-static {v8, v9, v10}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v8

    iput-object v8, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    .line 323
    iget-object v9, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    iget-object v8, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    if-eqz v8, :cond_b

    const/4 v8, 0x1

    :goto_5
    invoke-virtual {v9, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    .line 293
    .end local v5    # "enabled":I
    :cond_6
    iget-boolean v8, p2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mBackground:Z

    if-eqz v8, :cond_7

    .line 294
    const v8, 0x7f0e0a59

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 295
    :cond_7
    iget-object v8, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_8

    .line 297
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 298
    iget-object v9, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    .line 297
    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 299
    .local v1, "clientr":Landroid/content/res/Resources;
    iget-object v8, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 300
    .local v6, "label":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 301
    const/4 v10, 0x0

    aput-object v6, v9, v10

    .line 300
    const v10, 0x7f0e0a5a

    invoke-virtual {v8, v10, v9}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 302
    .end local v1    # "clientr":Landroid/content/res/Resources;
    .end local v6    # "label":Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_3

    .line 305
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    if-eqz p1, :cond_9

    .line 306
    const v8, 0x7f0e0a57

    .line 305
    :goto_6
    invoke-virtual {v9, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 307
    :cond_9
    const v8, 0x7f0e0a58

    goto :goto_6

    .line 313
    :cond_a
    const v8, 0x7f0e0a55

    goto/16 :goto_4

    .line 323
    .restart local v5    # "enabled":I
    :cond_b
    const/4 v8, 0x0

    goto :goto_5

    .line 325
    :cond_c
    iget-object v8, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method addServicesHeader()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 226
    iget v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumServices:I

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    .line 228
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    .line 227
    const v2, 0x7f040187

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    .line 229
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    const v1, 0x7f0e0a53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 230
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 232
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumServices:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumServices:I

    .line 225
    return-void
.end method

.method ensureData()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 611
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mHaveData:Z

    if-nez v0, :cond_0

    .line 612
    iput-boolean v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mHaveData:Z

    .line 613
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/applications/RunningState;->resume(Lcom/android/settings_ex/applications/RunningState$OnRefreshUiListener;)V

    .line 618
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/RunningState;->waitForData()V

    .line 622
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 610
    :cond_0
    return-void
.end method

.method findMergedItem()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 198
    const/4 v1, 0x0

    .line 199
    .local v1, "item":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    iget-boolean v4, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mShowBackground:Z

    if-eqz v4, :cond_1

    .line 200
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v4}, Lcom/android/settings_ex/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 201
    .local v3, "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :goto_0
    if-eqz v3, :cond_5

    .line 202
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 203
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .line 204
    .local v2, "mi":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    iget v4, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    iget v5, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mUserId:I

    if-eq v4, v5, :cond_2

    .line 202
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 200
    .end local v0    # "i":I
    .end local v2    # "mi":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    .end local v3    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v4}, Lcom/android/settings_ex/applications/RunningState;->getCurrentMergedItems()Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    .line 207
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

    .line 210
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    if-eqz v4, :cond_0

    .line 211
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    iget-object v5, v5, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 210
    if-eqz v4, :cond_0

    .line 212
    :cond_4
    move-object v1, v2

    .line 218
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    .end local v2    # "mi":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    :cond_5
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    if-eq v4, v1, :cond_6

    .line 219
    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .line 220
    const/4 v4, 0x1

    return v4

    .line 222
    :cond_6
    return v6
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 538
    const/16 v0, 0x55

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 498
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 500
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "uid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mUid:I

    .line 501
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mUserId:I

    .line 502
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "process"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    .line 503
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "background"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mShowBackground:Z

    .line 505
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    .line 506
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    .line 508
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/applications/RunningState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    .line 497
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 514
    const v1, 0x7f040174

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 515
    .local v0, "view":Landroid/view/View;
    invoke-static {p2, v0, v0, v2}, Lcom/android/settings_ex/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 517
    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mRootView:Landroid/view/View;

    .line 518
    const v1, 0x7f11009f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    .line 519
    const v1, 0x7f1102c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    .line 520
    new-instance v1, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    invoke-direct {v1, v2}, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    .line 524
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->ensureData()V

    .line 526
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 531
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onPause()V

    .line 532
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mHaveData:Z

    .line 533
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/RunningState;->pause()V

    .line 530
    return-void
.end method

.method public onRefreshUi(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 638
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 636
    :goto_0
    return-void

    .line 640
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 643
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 644
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 647
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 648
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 638
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
    .line 543
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onResume()V

    .line 544
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->ensureData()V

    .line 542
    return-void
.end method

.method refreshUi(Z)V
    .locals 4
    .param p1, "dataChanged"    # Z

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->findMergedItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    const/4 p1, 0x1

    .line 466
    .end local p1    # "dataChanged":Z
    :cond_0
    if-eqz p1, :cond_1

    .line 467
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    if-eqz v0, :cond_2

    .line 468
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    .line 469
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings_ex/applications/RunningState;Lcom/android/settings_ex/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    .line 480
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addDetailViews()V

    .line 462
    :cond_1
    return-void

    .line 470
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    if-eqz v0, :cond_3

    .line 472
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    const v1, 0x7f0e0a52

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 477
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->finish()V

    .line 478
    return-void
.end method

.method updateTimes()V
    .locals 4

    .prologue
    .line 627
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    if-eqz v1, :cond_0

    .line 628
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 630
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 631
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;

    iget-object v1, v1, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 626
    :cond_1
    return-void
.end method
