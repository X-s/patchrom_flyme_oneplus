.class public Lcom/oneplus/tuner/fragment/MyConfigFragment;
.super Landroid/app/Fragment;
.source "MyConfigFragment.java"

# interfaces
.implements Lcom/oneplus/tuner/listener/SoundEffectDataChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/tuner/fragment/MyConfigFragment$ExpandableAdapter;
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

.field private mActivity:Lcom/oneplus/tuner/MainActivity;

.field mAdapter:Lcom/oneplus/tuner/fragment/MyConfigFragment$ExpandableAdapter;

.field private mExpandableListView:Landroid/widget/ExpandableListView;

.field private mExpandedItem:Lcom/oneplus/tuner/providers/SoundEffectItem;

.field mInflater:Landroid/view/LayoutInflater;

.field private mMyConfig:Lcom/oneplus/tuner/widget/FragmentView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/tuner/fragment/MyConfigFragment;)Lcom/oneplus/tuner/providers/SoundEffectItem;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/fragment/MyConfigFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/MyConfigFragment;->mExpandedItem:Lcom/oneplus/tuner/providers/SoundEffectItem;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oneplus/tuner/fragment/MyConfigFragment;Lcom/oneplus/tuner/providers/SoundEffectItem;)Lcom/oneplus/tuner/providers/SoundEffectItem;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/tuner/fragment/MyConfigFragment;
    .param p1, "x1"    # Lcom/oneplus/tuner/providers/SoundEffectItem;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/oneplus/tuner/fragment/MyConfigFragment;->mExpandedItem:Lcom/oneplus/tuner/providers/SoundEffectItem;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/tuner/fragment/MyConfigFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/fragment/MyConfigFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/MyConfigFragment;->groupArray:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/tuner/fragment/MyConfigFragment;)Lcom/oneplus/tuner/MainActivity;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/fragment/MyConfigFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/MyConfigFragment;->mActivity:Lcom/oneplus/tuner/MainActivity;

    return-object v0
.end method


# virtual methods
.method public acceptChildrenTouchEvent()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/MyConfigFragment;->mMyConfig:Lcom/oneplus/tuner/widget/FragmentView;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/MyConfigFragment;->mMyConfig:Lcom/oneplus/tuner/widget/FragmentView;

    invoke-virtual {v0}, Lcom/oneplus/tuner/widget/FragmentView;->acceptChildrenTouchEvent()V

    .line 360
    :cond_0
    return-void
.end method

.method public initArray()V
    .locals 3

    .prologue
    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/tuner/fragment/MyConfigFragment;->groupArray:Ljava/util/List;

    .line 120
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/MyConfigFragment;->groupArray:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/tuner/fragment/MyConfigFragment;->mActivity:Lcom/oneplus/tuner/MainActivity;

    invoke-virtual {v1}, Lcom/oneplus/tuner/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c06f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/MyConfigFragment;->groupArray:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/tuner/fragment/MyConfigFragment;->mActivity:Lcom/oneplus/tuner/MainActivity;

    invoke-virtual {v1}, Lcom/oneplus/tuner/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c06f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/oneplus/tuner/fragment/MyConfigFragment;->initArray()V

    .line 54
    new-instance v0, Lcom/oneplus/tuner/widget/FragmentView;

    iget-object v1, p0, Lcom/oneplus/tuner/fragment/MyConfigFragment;->mActivity:Lcom/oneplus/tuner/MainActivity;

    const v2, 0x7f030039

    invoke-direct {v0, v1, v2}, Lcom/oneplus/tuner/widget/FragmentView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oneplus/tuner/fragment/MyConfigFragment;->mMyConfig:Lcom/oneplus/tuner/widget/FragmentView;

    .line 55
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/MyConfigFragment;->mMyConfig:Lcom/oneplus/tuner/widget/FragmentView;

    const v1, 0x7f0b0152

    invoke-virtual {v0, v1}, Lcom/oneplus/tuner/widget/FragmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/oneplus/tuner/fragment/MyConfigFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    .line 57
    new-instance v0, Lcom/oneplus/tuner/fragment/MyConfigFragment$ExpandableAdapter;

    iget-object v1, p0, Lcom/oneplus/tuner/fragment/MyConfigFragment;->mActivity:Lcom/oneplus/tuner/MainActivity;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/tuner/fragment/MyConfigFragment$ExpandableAdapter;-><init>(Lcom/oneplus/tuner/fragment/MyConfigFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/oneplus/tuner/fragment/MyConfigFragment;->mAdapter:Lcom/oneplus/tuner/fragment/MyConfigFragment$ExpandableAdapter;

    .line 58
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/MyConfigFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/oneplus/tuner/fragment/MyConfigFragment;->mAdapter:Lcom/oneplus/tuner/fragment/MyConfigFragment$ExpandableAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 60
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/MyConfigFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 61
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/MyConfigFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 62
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/MyConfigFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/oneplus/tuner/fragment/MyConfigFragment$1;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/fragment/MyConfigFragment$1;-><init>(Lcom/oneplus/tuner/fragment/MyConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/MyConfigFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/oneplus/tuner/fragment/MyConfigFragment$2;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/fragment/MyConfigFragment$2;-><init>(Lcom/oneplus/tuner/fragment/MyConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/MyConfigFragment;->mMyConfig:Lcom/oneplus/tuner/widget/FragmentView;

    return-object v0
.end method

.method public onEffectDataChanged()V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/MyConfigFragment;->mAdapter:Lcom/oneplus/tuner/fragment/MyConfigFragment$ExpandableAdapter;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/MyConfigFragment;->mAdapter:Lcom/oneplus/tuner/fragment/MyConfigFragment$ExpandableAdapter;

    invoke-virtual {v0}, Lcom/oneplus/tuner/fragment/MyConfigFragment$ExpandableAdapter;->notifyDataSetChanged()V

    .line 369
    :cond_0
    return-void
.end method

.method public preventChildrenTouchEvent()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/MyConfigFragment;->mMyConfig:Lcom/oneplus/tuner/widget/FragmentView;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/MyConfigFragment;->mMyConfig:Lcom/oneplus/tuner/widget/FragmentView;

    invoke-virtual {v0}, Lcom/oneplus/tuner/widget/FragmentView;->preventChildrenTouchEvent()V

    .line 354
    :cond_0
    return-void
.end method

.method public setActivity(Lcom/oneplus/tuner/MainActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/oneplus/tuner/MainActivity;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/oneplus/tuner/fragment/MyConfigFragment;->mActivity:Lcom/oneplus/tuner/MainActivity;

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/fragment/MyConfigFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 48
    return-void
.end method
