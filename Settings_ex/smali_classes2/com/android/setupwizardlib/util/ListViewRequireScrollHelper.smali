.class public Lcom/android/setupwizardlib/util/ListViewRequireScrollHelper;
.super Lcom/android/setupwizardlib/util/AbstractRequireScrollHelper;
.source "ListViewRequireScrollHelper.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final mListView:Landroid/widget/ListView;


# direct methods
.method private constructor <init>(Lcom/android/setupwizardlib/view/NavigationBar;Landroid/widget/ListView;)V
    .locals 0
    .param p1, "navigationBar"    # Lcom/android/setupwizardlib/view/NavigationBar;
    .param p2, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/util/AbstractRequireScrollHelper;-><init>(Lcom/android/setupwizardlib/view/NavigationBar;)V

    .line 43
    iput-object p2, p0, Lcom/android/setupwizardlib/util/ListViewRequireScrollHelper;->mListView:Landroid/widget/ListView;

    .line 41
    return-void
.end method

.method public static requireScroll(Lcom/android/setupwizardlib/view/NavigationBar;Landroid/widget/ListView;)V
    .locals 1
    .param p0, "navigationBar"    # Lcom/android/setupwizardlib/view/NavigationBar;
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 36
    new-instance v0, Lcom/android/setupwizardlib/util/ListViewRequireScrollHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/setupwizardlib/util/ListViewRequireScrollHelper;-><init>(Lcom/android/setupwizardlib/view/NavigationBar;Landroid/widget/ListView;)V

    invoke-virtual {v0}, Lcom/android/setupwizardlib/util/ListViewRequireScrollHelper;->requireScroll()V

    .line 35
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 75
    add-int v0, p2, p3

    if-lt v0, p4, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/android/setupwizardlib/util/ListViewRequireScrollHelper;->notifyScrolledToBottom()V

    .line 74
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/util/ListViewRequireScrollHelper;->notifyRequiresScroll()V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 69
    return-void
.end method

.method protected pageScrollDown()V
    .locals 3

    .prologue
    .line 62
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 63
    iget-object v1, p0, Lcom/android/setupwizardlib/util/ListViewRequireScrollHelper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    .line 64
    .local v0, "height":I
    iget-object v1, p0, Lcom/android/setupwizardlib/util/ListViewRequireScrollHelper;->mListView:Landroid/widget/ListView;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 61
    .end local v0    # "height":I
    :cond_0
    return-void
.end method

.method protected requireScroll()V
    .locals 3

    .prologue
    .line 48
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 50
    invoke-super {p0}, Lcom/android/setupwizardlib/util/AbstractRequireScrollHelper;->requireScroll()V

    .line 51
    iget-object v1, p0, Lcom/android/setupwizardlib/util/ListViewRequireScrollHelper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 53
    iget-object v1, p0, Lcom/android/setupwizardlib/util/ListViewRequireScrollHelper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 54
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget-object v1, p0, Lcom/android/setupwizardlib/util/ListViewRequireScrollHelper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/android/setupwizardlib/util/ListViewRequireScrollHelper;->notifyRequiresScroll()V

    .line 47
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    return-void
.end method
