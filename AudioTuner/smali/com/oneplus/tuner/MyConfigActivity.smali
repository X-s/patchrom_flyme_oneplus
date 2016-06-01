.class public Lcom/oneplus/tuner/MyConfigActivity;
.super Lcom/oneplus/tuner/base/BaseActivity;
.source "MyConfigActivity.java"

# interfaces
.implements Lcom/oneplus/tuner/listener/SoundEffectDataChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;
    }
.end annotation


# instance fields
.field private groupArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAdapter:Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;

.field private mExpandableListView:Landroid/widget/ExpandableListView;

.field private mExpandedItem:Lcom/oneplus/tuner/providers/SoundEffectItem;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMyConfig:Lcom/oneplus/tuner/widget/FragmentView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/oneplus/tuner/base/BaseActivity;-><init>()V

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/tuner/MyConfigActivity;)Lcom/oneplus/tuner/providers/SoundEffectItem;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/MyConfigActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oneplus/tuner/MyConfigActivity;->mExpandedItem:Lcom/oneplus/tuner/providers/SoundEffectItem;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oneplus/tuner/MyConfigActivity;Lcom/oneplus/tuner/providers/SoundEffectItem;)Lcom/oneplus/tuner/providers/SoundEffectItem;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/tuner/MyConfigActivity;
    .param p1, "x1"    # Lcom/oneplus/tuner/providers/SoundEffectItem;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/oneplus/tuner/MyConfigActivity;->mExpandedItem:Lcom/oneplus/tuner/providers/SoundEffectItem;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/tuner/MyConfigActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/MyConfigActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oneplus/tuner/MyConfigActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/tuner/MyConfigActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/MyConfigActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oneplus/tuner/MyConfigActivity;->groupArray:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public acceptChildrenTouchEvent()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/oneplus/tuner/MyConfigActivity;->mMyConfig:Lcom/oneplus/tuner/widget/FragmentView;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/oneplus/tuner/MyConfigActivity;->mMyConfig:Lcom/oneplus/tuner/widget/FragmentView;

    invoke-virtual {v0}, Lcom/oneplus/tuner/widget/FragmentView;->acceptChildrenTouchEvent()V

    .line 350
    :cond_0
    return-void
.end method

.method protected configCurrentSelectedSlideMenuIndex()V
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x4

    iput v0, p0, Lcom/oneplus/tuner/MyConfigActivity;->mSlideMenuSelectedIndex:I

    .line 392
    return-void
.end method

.method protected configIsSlideMenuEnable()V
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/tuner/MyConfigActivity;->mIsSlideMenuEnable:Z

    .line 365
    iput-object p0, p0, Lcom/oneplus/tuner/MyConfigActivity;->mActivity:Landroid/app/Activity;

    .line 366
    return-void
.end method

.method protected configIsTitlebarMenuEnable()V
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/tuner/MyConfigActivity;->mIsTitlebarMenuEnable:Z

    .line 382
    return-void
.end method

.method protected configIsTitlebarOnlyOneMenuItem()V
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/tuner/MyConfigActivity;->mIsTitlebarOnlyOneMenuItem:Z

    .line 387
    return-void
.end method

.method public initArray()V
    .locals 3

    .prologue
    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/tuner/MyConfigActivity;->groupArray:Ljava/util/List;

    .line 115
    iget-object v0, p0, Lcom/oneplus/tuner/MyConfigActivity;->groupArray:Ljava/util/List;

    invoke-virtual {p0}, Lcom/oneplus/tuner/MyConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c06f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/oneplus/tuner/MyConfigActivity;->groupArray:Ljava/util/List;

    invoke-virtual {p0}, Lcom/oneplus/tuner/MyConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c06f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/oneplus/tuner/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/MyConfigActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 45
    const v0, 0x7f0c0675

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/MyConfigActivity;->setTitle(I)V

    .line 47
    invoke-virtual {p0}, Lcom/oneplus/tuner/MyConfigActivity;->initArray()V

    .line 49
    new-instance v0, Lcom/oneplus/tuner/widget/FragmentView;

    const v1, 0x7f030039

    invoke-direct {v0, p0, v1}, Lcom/oneplus/tuner/widget/FragmentView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oneplus/tuner/MyConfigActivity;->mMyConfig:Lcom/oneplus/tuner/widget/FragmentView;

    .line 50
    iget-object v0, p0, Lcom/oneplus/tuner/MyConfigActivity;->mMyConfig:Lcom/oneplus/tuner/widget/FragmentView;

    const v1, 0x7f0b0152

    invoke-virtual {v0, v1}, Lcom/oneplus/tuner/widget/FragmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/oneplus/tuner/MyConfigActivity;->mExpandableListView:Landroid/widget/ExpandableListView;

    .line 52
    new-instance v0, Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;

    invoke-direct {v0, p0, p0}, Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;-><init>(Lcom/oneplus/tuner/MyConfigActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/oneplus/tuner/MyConfigActivity;->mAdapter:Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;

    .line 53
    iget-object v0, p0, Lcom/oneplus/tuner/MyConfigActivity;->mExpandableListView:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/oneplus/tuner/MyConfigActivity;->mAdapter:Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 55
    iget-object v0, p0, Lcom/oneplus/tuner/MyConfigActivity;->mExpandableListView:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 56
    iget-object v0, p0, Lcom/oneplus/tuner/MyConfigActivity;->mExpandableListView:Landroid/widget/ExpandableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 57
    iget-object v0, p0, Lcom/oneplus/tuner/MyConfigActivity;->mExpandableListView:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/oneplus/tuner/MyConfigActivity$1;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/MyConfigActivity$1;-><init>(Lcom/oneplus/tuner/MyConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/oneplus/tuner/MyConfigActivity;->mExpandableListView:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/oneplus/tuner/MyConfigActivity$2;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/MyConfigActivity$2;-><init>(Lcom/oneplus/tuner/MyConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/oneplus/tuner/MyConfigActivity;->mMyConfig:Lcom/oneplus/tuner/widget/FragmentView;

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/MyConfigActivity;->setContent(Landroid/view/View;)V

    .line 111
    return-void
.end method

.method public onEffectDataChanged()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/oneplus/tuner/MyConfigActivity;->mAdapter:Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/oneplus/tuner/MyConfigActivity;->mAdapter:Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;

    invoke-virtual {v0}, Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;->notifyDataSetChanged()V

    .line 359
    :cond_0
    return-void
.end method

.method public preventChildrenTouchEvent()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/oneplus/tuner/MyConfigActivity;->mMyConfig:Lcom/oneplus/tuner/widget/FragmentView;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/oneplus/tuner/MyConfigActivity;->mMyConfig:Lcom/oneplus/tuner/widget/FragmentView;

    invoke-virtual {v0}, Lcom/oneplus/tuner/widget/FragmentView;->preventChildrenTouchEvent()V

    .line 344
    :cond_0
    return-void
.end method

.method public startConfigEffectActivity()V
    .locals 2

    .prologue
    .line 375
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oneplus/tuner/MixerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 376
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/MyConfigActivity;->startActivity(Landroid/content/Intent;)V

    .line 377
    return-void
.end method

.method public startSearchActivity()V
    .locals 2

    .prologue
    .line 369
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oneplus/tuner/OppoSearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 370
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 371
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/tuner/MyConfigActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 372
    return-void
.end method
