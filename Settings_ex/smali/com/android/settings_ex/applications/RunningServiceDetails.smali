.class public Lcom/android/settings_ex/applications/RunningServiceDetails;
.super Landroid/app/Fragment;
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

.field private mProcessViewHeader:Landroid/view/View;

.field mProcessesHeader:Landroid/widget/TextView;

.field mRootView:Landroid/view/View;

.field private mServiceViewHeader:Landroid/view/View;

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
    .line 46
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    .line 573
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/applications/RunningServiceDetails;Landroid/content/ComponentName;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/RunningServiceDetails;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/RunningServiceDetails;->showConfirmStopDialog(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/applications/RunningServiceDetails;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/RunningServiceDetails;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->finish()V

    return-void
.end method

.method private finish()V
    .locals 2

    .prologue
    .line 498
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings_ex/applications/RunningServiceDetails$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/applications/RunningServiceDetails$1;-><init>(Lcom/android/settings_ex/applications/RunningServiceDetails;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 507
    return-void
.end method

.method private showConfirmStopDialog(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "comp"    # Landroid/content/ComponentName;

    .prologue
    .line 567
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment;->newConfirmStop(ILandroid/content/ComponentName;)Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment;

    move-result-object v0

    .line 569
    .local v0, "newFragment":Landroid/app/DialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 570
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmstop"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 571
    return-void
.end method


# virtual methods
.method activeDetailForService(Landroid/content/ComponentName;)Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    .locals 3
    .param p1, "comp"    # Landroid/content/ComponentName;

    .prologue
    .line 556
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 557
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;

    .line 558
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

    .line 563
    .end local v0    # "ad":Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    :goto_1
    return-object v0

    .line 556
    .restart local v0    # "ad":Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 563
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

    .line 437
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 438
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 437
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 440
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 442
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mServiceViewHeader:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 443
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mServiceViewHeader:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 444
    iput-object v6, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mServiceViewHeader:Landroid/view/View;

    .line 447
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessViewHeader:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 448
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessViewHeader:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 449
    iput-object v6, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessViewHeader:Landroid/view/View;

    .line 452
    :cond_2
    iput v5, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumProcesses:I

    iput v5, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumServices:I

    .line 454
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    if-eqz v2, :cond_6

    .line 455
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUser:Lcom/android/settings_ex/applications/RunningState$UserState;

    if-eqz v2, :cond_5

    .line 457
    iget-boolean v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mShowBackground:Z

    if-eqz v2, :cond_3

    .line 458
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 459
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 463
    :goto_1
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 464
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/settings_ex/applications/RunningState$MergedItem;ZZ)V

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 461
    .end local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    iget-object v1, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    .restart local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    goto :goto_1

    .line 466
    :cond_4
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 467
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v5, v4}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/settings_ex/applications/RunningState$MergedItem;ZZ)V

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 470
    .end local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/settings_ex/applications/RunningState$MergedItem;ZZ)V

    .line 473
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

    .line 406
    if-eqz p1, :cond_1

    .line 407
    if-eqz p2, :cond_0

    .line 408
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 409
    iget-object v2, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningState$ServiceItem;

    invoke-virtual {p0, v2, p1, v3, v3}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addServiceDetailsView(Lcom/android/settings_ex/applications/RunningState$ServiceItem;Lcom/android/settings_ex/applications/RunningState$MergedItem;ZZ)V

    .line 408
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 413
    .end local v0    # "i":I
    :cond_0
    if-eqz p3, :cond_1

    .line 414
    iget-object v2, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    .line 418
    const/4 v5, 0x0

    iget v2, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eq v2, v6, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {p0, v5, p1, v4, v2}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addServiceDetailsView(Lcom/android/settings_ex/applications/RunningState$ServiceItem;Lcom/android/settings_ex/applications/RunningState$MergedItem;ZZ)V

    .line 434
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 418
    goto :goto_1

    .line 422
    :cond_3
    const/4 v0, -0x1

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 423
    if-gez v0, :cond_4

    iget-object v1, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 425
    .local v1, "pi":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :goto_3
    if-eqz v1, :cond_5

    iget v2, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mPid:I

    if-gtz v2, :cond_5

    .line 422
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 423
    .end local v1    # "pi":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :cond_4
    iget-object v2, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    move-object v1, v2

    goto :goto_3

    .line 429
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

    .line 346
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addProcessesHeader()V

    .line 348
    new-instance v2, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/settings_ex/applications/RunningServiceDetails;)V

    .line 349
    .local v2, "detail":Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    iget-object v9, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f0400be

    iget-object v11, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 351
    .local v5, "root":Landroid/view/View;
    iget-object v9, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 352
    iput-object v5, v2, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 353
    new-instance v9, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v9, v5}, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v9, v2, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    .line 354
    iget-object v9, v2, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v10, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-object v11, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10, p1, v11}, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings_ex/applications/RunningState;Lcom/android/settings_ex/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    move-result-object v9

    iput-object v9, v2, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    .line 356
    const v9, 0x7f0f0202

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 357
    .local v1, "description":Landroid/widget/TextView;
    iget v9, p1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    if-eq v9, v10, :cond_1

    .line 360
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 401
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    return-void

    .line 361
    :cond_1
    if-eqz p2, :cond_2

    .line 362
    const v9, 0x7f09067c

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 364
    :cond_2
    const/4 v8, 0x0

    .line 365
    .local v8, "textid":I
    const/4 v3, 0x0

    .line 366
    .local v3, "label":Ljava/lang/CharSequence;
    iget-object v6, p1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 367
    .local v6, "rpi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v0, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    .line 370
    .local v0, "comp":Landroid/content/ComponentName;
    iget v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    packed-switch v9, :pswitch_data_0

    .line 396
    :cond_3
    :goto_1
    if-eqz v8, :cond_0

    if-eqz v3, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v3, v10, v12

    invoke-virtual {v9, v8, v10}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 372
    :pswitch_0
    const v8, 0x7f09067e

    .line 373
    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v9, :cond_3

    .line 375
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 377
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

    .line 384
    .end local v4    # "prov":Landroid/content/pm/ProviderInfo;
    :pswitch_1
    const v8, 0x7f09067d

    .line 385
    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v9, :cond_3

    .line 387
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    .line 389
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

    .line 391
    .end local v7    # "serv":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v9

    goto :goto_1

    .line 379
    :catch_1
    move-exception v9

    goto :goto_1

    .line 370
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
    .line 243
    iget v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumProcesses:I

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400c8

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessViewHeader:Landroid/view/View;

    .line 248
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessViewHeader:Landroid/view/View;

    const v1, 0x7f0f020a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    .line 250
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    const v1, 0x7f090675

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 252
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessViewHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 255
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumProcesses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumProcesses:I

    .line 256
    return-void
.end method

.method addServiceDetailsView(Lcom/android/settings_ex/applications/RunningState$ServiceItem;Lcom/android/settings_ex/applications/RunningState$MergedItem;ZZ)V
    .locals 11
    .param p1, "si"    # Lcom/android/settings_ex/applications/RunningState$ServiceItem;
    .param p2, "mi"    # Lcom/android/settings_ex/applications/RunningState$MergedItem;
    .param p3, "isService"    # Z
    .param p4, "inclDetails"    # Z

    .prologue
    .line 260
    if-eqz p3, :cond_3

    .line 261
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addServicesHeader()V

    .line 270
    :cond_0
    :goto_0
    if-eqz p1, :cond_4

    move-object v0, p1

    .line 272
    .local v0, "bi":Lcom/android/settings_ex/applications/RunningState$BaseItem;
    :goto_1
    new-instance v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/settings_ex/applications/RunningServiceDetails;)V

    .line 273
    .local v3, "detail":Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    iget-object v7, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0400bf

    iget-object v9, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 275
    .local v6, "root":Landroid/view/View;
    iget-object v7, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 276
    iput-object v6, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 277
    iput-object p1, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings_ex/applications/RunningState$ServiceItem;

    .line 278
    new-instance v7, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v7, v6}, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v7, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    .line 279
    iget-object v7, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v8, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-object v9, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8, v0, v9}, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings_ex/applications/RunningState;Lcom/android/settings_ex/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    move-result-object v7

    iput-object v7, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    .line 281
    if-nez p4, :cond_1

    .line 282
    const v7, 0x7f0f0201

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 285
    :cond_1
    if-eqz p1, :cond_2

    iget-object v7, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v7, :cond_2

    .line 286
    iget-object v7, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    iget-object v8, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/app/ActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    .line 290
    :cond_2
    const v7, 0x7f0f0202

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 291
    .local v2, "description":Landroid/widget/TextView;
    const v7, 0x7f0f0236

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    .line 292
    const v7, 0x7f0f0237

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    .line 294
    if-eqz p3, :cond_5

    iget v7, p2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eq v7, v8, :cond_5

    .line 298
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 299
    const v7, 0x7f0f00b4

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 342
    :goto_2
    iget-object v7, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    return-void

    .line 262
    .end local v0    # "bi":Lcom/android/settings_ex/applications/RunningState$BaseItem;
    .end local v2    # "description":Landroid/widget/TextView;
    .end local v3    # "detail":Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    .end local v6    # "root":Landroid/view/View;
    :cond_3
    iget v7, p2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addProcessesHeader()V

    goto/16 :goto_0

    :cond_4
    move-object v0, p2

    .line 270
    goto/16 :goto_1

    .line 301
    .restart local v0    # "bi":Lcom/android/settings_ex/applications/RunningState$BaseItem;
    .restart local v2    # "description":Landroid/widget/TextView;
    .restart local v3    # "detail":Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    .restart local v6    # "root":Landroid/view/View;
    :cond_5
    if-eqz p1, :cond_6

    iget-object v7, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v7, v7, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    if-eqz v7, :cond_6

    .line 302
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

    .line 324
    :goto_3
    iget-object v7, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v8, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v7, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_a

    const v7, 0x7f090677

    :goto_4
    invoke-virtual {v9, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v7, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    iget-object v7, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const v8, 0x10404d1

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    .line 330
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "send_action_app_error"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 332
    .local v4, "enabled":I
    if-eqz v4, :cond_c

    if-eqz p1, :cond_c

    .line 333
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

    .line 336
    iget-object v8, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    iget-object v7, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    if-eqz v7, :cond_b

    const/4 v7, 0x1

    :goto_5
    invoke-virtual {v8, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    .line 306
    .end local v4    # "enabled":I
    :cond_6
    iget-boolean v7, p2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mBackground:Z

    if-eqz v7, :cond_7

    .line 307
    const v7, 0x7f09067a

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 308
    :cond_7
    iget-object v7, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_8

    .line 310
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 312
    .local v1, "clientr":Landroid/content/res/Resources;
    iget-object v7, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 313
    .local v5, "label":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f09067b

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

    .line 315
    .end local v1    # "clientr":Landroid/content/res/Resources;
    .end local v5    # "label":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto/16 :goto_3

    .line 318
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-eqz p1, :cond_9

    const v7, 0x7f090678

    :goto_6
    invoke-virtual {v8, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_9
    const v7, 0x7f090679

    goto :goto_6

    .line 325
    :cond_a
    const v7, 0x7f090676

    goto/16 :goto_4

    .line 336
    .restart local v4    # "enabled":I
    :cond_b
    const/4 v7, 0x0

    goto :goto_5

    .line 338
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

    .line 230
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400c8

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mServiceViewHeader:Landroid/view/View;

    .line 232
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mServiceViewHeader:Landroid/view/View;

    const v1, 0x7f0f020a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    .line 234
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    const v1, 0x7f090674

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 236
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mServiceViewHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 239
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumServices:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumServices:I

    .line 240
    return-void
.end method

.method ensureData()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 619
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mHaveData:Z

    if-nez v0, :cond_0

    .line 620
    iput-boolean v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mHaveData:Z

    .line 621
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/applications/RunningState;->resume(Lcom/android/settings_ex/applications/RunningState$OnRefreshUiListener;)V

    .line 626
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/RunningState;->waitForData()V

    .line 630
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 632
    :cond_0
    return-void
.end method

.method findMergedItem()Z
    .locals 6

    .prologue
    .line 197
    const/4 v1, 0x0

    .line 198
    .local v1, "item":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    iget-boolean v4, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mShowBackground:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v4}, Lcom/android/settings_ex/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 200
    .local v3, "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :goto_0
    if-eqz v3, :cond_5

    .line 201
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 202
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .line 203
    .local v2, "mi":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    iget v4, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    iget v5, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mUserId:I

    if-eq v4, v5, :cond_2

    .line 201
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 198
    .end local v0    # "i":I
    .end local v2    # "mi":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    .end local v3    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v4}, Lcom/android/settings_ex/applications/RunningState;->getCurrentMergedItems()Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    .line 206
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

    .line 209
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

    .line 211
    :cond_4
    move-object v1, v2

    .line 217
    .end local v0    # "i":I
    .end local v2    # "mi":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    :cond_5
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    if-eq v4, v1, :cond_6

    .line 218
    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .line 219
    const/4 v4, 0x1

    .line 221
    :goto_2
    return v4

    :cond_6
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 511
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 513
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "uid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mUid:I

    .line 514
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mUserId:I

    .line 515
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "process"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    .line 516
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "background"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mShowBackground:Z

    .line 518
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    .line 519
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    .line 521
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/applications/RunningState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    .line 522
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 527
    const v1, 0x7f0400bd

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 528
    .local v0, "view":Landroid/view/View;
    invoke-static {p2, v0, v0, v2}, Lcom/android/settings_ex/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 530
    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mRootView:Landroid/view/View;

    .line 531
    const v1, 0x7f0f000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    .line 532
    const v1, 0x7f0f0200

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    .line 533
    new-instance v1, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    invoke-direct {v1, v2}, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    .line 537
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->ensureData()V

    .line 539
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 544
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 545
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mHaveData:Z

    .line 546
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/RunningState;->pause()V

    .line 547
    return-void
.end method

.method public onRefreshUi(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 659
    :goto_0
    return-void

    .line 646
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 648
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 651
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 652
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 655
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 656
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 646
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
    .line 551
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 552
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->ensureData()V

    .line 553
    return-void
.end method

.method refreshUi(Z)V
    .locals 4
    .param p1, "dataChanged"    # Z

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->findMergedItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    const/4 p1, 0x1

    .line 479
    :cond_0
    if-eqz p1, :cond_1

    .line 480
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    if-eqz v0, :cond_2

    .line 481
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings_ex/applications/RunningState;Lcom/android/settings_ex/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    .line 493
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addDetailViews()V

    .line 495
    :cond_1
    :goto_1
    return-void

    .line 483
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    if-eqz v0, :cond_3

    .line 485
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    const v1, 0x7f090673

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 490
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->finish()V

    goto :goto_1
.end method

.method updateTimes()V
    .locals 4

    .prologue
    .line 635
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    if-eqz v1, :cond_0

    .line 636
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 638
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 639
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;

    iget-object v1, v1, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 638
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 641
    :cond_1
    return-void
.end method
