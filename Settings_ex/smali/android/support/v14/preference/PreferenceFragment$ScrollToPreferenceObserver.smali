.class Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "PreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v14/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollToPreferenceObserver"
.end annotation


# instance fields
.field private final mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private final mKey:Ljava/lang/String;

.field private final mList:Landroid/support/v7/widget/RecyclerView;

.field private final mPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/preference/Preference;Ljava/lang/String;)V
    .locals 0
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
    .param p2, "list"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "preference"    # Landroid/support/v7/preference/Preference;
    .param p4, "key"    # Ljava/lang/String;

    .prologue
    .line 724
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 726
    iput-object p1, p0, Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 727
    iput-object p2, p0, Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;->mList:Landroid/support/v7/widget/RecyclerView;

    .line 728
    iput-object p3, p0, Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;->mPreference:Landroid/support/v7/preference/Preference;

    .line 729
    iput-object p4, p0, Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;->mKey:Ljava/lang/String;

    .line 725
    return-void
.end method

.method private scrollToPreference()V
    .locals 3

    .prologue
    .line 733
    iget-object v1, p0, Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 735
    iget-object v1, p0, Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_1

    .line 736
    iget-object v1, p0, Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v1, Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;

    .line 737
    iget-object v2, p0, Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;->mPreference:Landroid/support/v7/preference/Preference;

    .line 736
    invoke-interface {v1, v2}, Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Landroid/support/v7/preference/Preference;)I

    move-result v0

    .line 742
    .local v0, "position":I
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 743
    iget-object v1, p0, Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;->mList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 732
    :cond_0
    return-void

    .line 739
    .end local v0    # "position":I
    :cond_1
    iget-object v1, p0, Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v1, Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;

    .line 740
    iget-object v2, p0, Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;->mKey:Ljava/lang/String;

    .line 739
    invoke-interface {v1, v2}, Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "position":I
    goto :goto_0
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .prologue
    .line 749
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 748
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 754
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 753
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 759
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 758
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 764
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 763
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 774
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 773
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 769
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 768
    return-void
.end method
