.class public Lcom/android/setupwizardlib/util/RecyclerViewRequireScrollHelper;
.super Lcom/android/setupwizardlib/util/AbstractRequireScrollHelper;
.source "RecyclerViewRequireScrollHelper.java"


# instance fields
.field private final mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method static synthetic -wrap0(Lcom/android/setupwizardlib/util/RecyclerViewRequireScrollHelper;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/setupwizardlib/util/RecyclerViewRequireScrollHelper;->canScrollDown()Z

    move-result v0

    return v0
.end method

.method private constructor <init>(Lcom/android/setupwizardlib/view/NavigationBar;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "navigationBar"    # Lcom/android/setupwizardlib/view/NavigationBar;
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/util/AbstractRequireScrollHelper;-><init>(Lcom/android/setupwizardlib/view/NavigationBar;)V

    .line 40
    iput-object p2, p0, Lcom/android/setupwizardlib/util/RecyclerViewRequireScrollHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 38
    return-void
.end method

.method private canScrollDown()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 63
    iget-object v3, p0, Lcom/android/setupwizardlib/util/RecyclerViewRequireScrollHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    .line 64
    .local v0, "offset":I
    iget-object v3, p0, Lcom/android/setupwizardlib/util/RecyclerViewRequireScrollHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v3

    .line 65
    iget-object v4, p0, Lcom/android/setupwizardlib/util/RecyclerViewRequireScrollHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v4

    .line 64
    sub-int v1, v3, v4

    .line 66
    .local v1, "range":I
    if-eqz v1, :cond_0

    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static requireScroll(Lcom/android/setupwizardlib/view/NavigationBar;Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p0, "navigationBar"    # Lcom/android/setupwizardlib/view/NavigationBar;
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 32
    new-instance v0, Lcom/android/setupwizardlib/util/RecyclerViewRequireScrollHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/setupwizardlib/util/RecyclerViewRequireScrollHelper;-><init>(Lcom/android/setupwizardlib/view/NavigationBar;Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v0}, Lcom/android/setupwizardlib/util/RecyclerViewRequireScrollHelper;->requireScroll()V

    .line 31
    return-void
.end method


# virtual methods
.method protected pageScrollDown()V
    .locals 3

    .prologue
    .line 71
    iget-object v1, p0, Lcom/android/setupwizardlib/util/RecyclerViewRequireScrollHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    .line 72
    .local v0, "height":I
    iget-object v1, p0, Lcom/android/setupwizardlib/util/RecyclerViewRequireScrollHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(II)V

    .line 70
    return-void
.end method

.method protected requireScroll()V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0}, Lcom/android/setupwizardlib/util/AbstractRequireScrollHelper;->requireScroll()V

    .line 45
    iget-object v0, p0, Lcom/android/setupwizardlib/util/RecyclerViewRequireScrollHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/android/setupwizardlib/util/RecyclerViewRequireScrollHelper$1;

    invoke-direct {v1, p0}, Lcom/android/setupwizardlib/util/RecyclerViewRequireScrollHelper$1;-><init>(Lcom/android/setupwizardlib/util/RecyclerViewRequireScrollHelper;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 56
    invoke-direct {p0}, Lcom/android/setupwizardlib/util/RecyclerViewRequireScrollHelper;->canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/android/setupwizardlib/util/RecyclerViewRequireScrollHelper;->notifyRequiresScroll()V

    .line 43
    :cond_0
    return-void
.end method
