.class public Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;
.super Lcom/android/setupwizardlib/SetupWizardLayout;
.source "SetupWizardRecyclerLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecyclerLayout"


# instance fields
.field private mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private mDefaultDivider:Landroid/graphics/drawable/Drawable;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

.field private mDividerInset:I

.field private mHeader:Landroid/view/View;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0, v0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;-><init>(Landroid/content/Context;II)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "template"    # I
    .param p3, "containerId"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/SetupWizardLayout;-><init>(Landroid/content/Context;II)V

    .line 65
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/SetupWizardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v6, 0x0

    .line 80
    sget-object v4, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardRecyclerItemsLayout:[I

    .line 79
    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v4, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardRecyclerItemsLayout_android_entries:I

    .line 81
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 83
    .local v3, "xml":I
    if-eqz v3, :cond_0

    .line 84
    new-instance v4, Lcom/android/setupwizardlib/items/ItemInflater;

    invoke-direct {v4, p1}, Lcom/android/setupwizardlib/items/ItemInflater;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Lcom/android/setupwizardlib/items/ItemInflater;->inflate(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/setupwizardlib/items/ItemGroup;

    .line 85
    .local v2, "inflated":Lcom/android/setupwizardlib/items/ItemGroup;
    new-instance v4, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;

    invoke-direct {v4, v2}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;-><init>(Lcom/android/setupwizardlib/items/ItemHierarchy;)V

    iput-object v4, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 86
    iget-object v4, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 87
    sget v5, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardRecyclerItemsLayout_suwHasStableIds:I

    .line 86
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 88
    iget-object v4, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0, v4}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 91
    .end local v2    # "inflated":Lcom/android/setupwizardlib/items/ItemGroup;
    :cond_0
    sget v4, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardRecyclerItemsLayout_suwDividerInset:I

    .line 90
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 92
    .local v1, "dividerInset":I
    if-nez v1, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 94
    sget v5, Lcom/android/setupwizardlib/R$dimen;->suw_items_icon_divider_inset:I

    .line 93
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 96
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->setDividerInset(I)V

    .line 97
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    return-void
.end method

.method private updateDivider()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 194
    const/4 v6, 0x1

    .line 195
    .local v6, "shouldUpdate":Z
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->isLayoutDirectionResolved()Z

    move-result v6

    .line 198
    .end local v6    # "shouldUpdate":Z
    :cond_0
    if-eqz v6, :cond_2

    .line 199
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/DividerItemDecoration;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    .line 203
    iget v1, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDividerInset:I

    move v3, v2

    move v4, v2

    move-object v5, p0

    .line 202
    invoke-static/range {v0 .. v5}, Lcom/android/setupwizardlib/util/DrawableLayoutDirectionHelper;->createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIILandroid/view/View;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 204
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    iget-object v1, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/DividerItemDecoration;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 193
    :cond_2
    return-void
.end method


# virtual methods
.method protected findContainer(I)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "containerId"    # I

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 125
    sget p1, Lcom/android/setupwizardlib/R$id;->suw_recycler_view:I

    .line 127
    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/SetupWizardLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method protected findManagedViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 155
    iget-object v1, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mHeader:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mHeader:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 157
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 158
    return-object v0

    .line 161
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerInset()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDividerInset:I

    return v0
.end method

.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method protected initRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 137
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 138
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    instance-of v0, v0, Lcom/android/setupwizardlib/view/HeaderRecyclerView;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    check-cast v0, Lcom/android/setupwizardlib/view/HeaderRecyclerView;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/HeaderRecyclerView;->getHeader()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mHeader:Landroid/view/View;

    .line 141
    :cond_0
    new-instance v0, Lcom/android/setupwizardlib/DividerItemDecoration;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/setupwizardlib/DividerItemDecoration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    .line 142
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 135
    return-void
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "template"    # I

    .prologue
    .line 147
    if-nez p2, :cond_0

    .line 148
    sget p2, Lcom/android/setupwizardlib/R$layout;->suw_recycler_template:I

    .line 150
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;->onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 102
    invoke-super/range {p0 .. p5}, Lcom/android/setupwizardlib/SetupWizardLayout;->onLayout(ZIIII)V

    .line 103
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->updateDivider()V

    .line 101
    :cond_0
    return-void
.end method

.method protected onTemplateInflated()V
    .locals 1

    .prologue
    .line 132
    sget v0, Lcom/android/setupwizardlib/R$id;->suw_recycler_view:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->initRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 131
    return-void
.end method

.method public requireScrollToBottom()V
    .locals 4

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v0

    .line 167
    .local v0, "navigationBar":Lcom/android/setupwizardlib/view/NavigationBar;
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    .line 168
    .local v1, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 169
    invoke-static {v0, v1}, Lcom/android/setupwizardlib/util/RecyclerViewRequireScrollHelper;->requireScroll(Lcom/android/setupwizardlib/view/NavigationBar;Landroid/support/v7/widget/RecyclerView;)V

    .line 165
    :goto_0
    return-void

    .line 171
    :cond_0
    const-string/jumbo v2, "RecyclerLayout"

    const-string/jumbo v3, "Both suw_layout_navigation_bar and suw_recycler_view must exist in the template to require scrolling."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 115
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 113
    return-void
.end method

.method public setDividerInset(I)V
    .locals 0
    .param p1, "inset"    # I

    .prologue
    .line 185
    iput p1, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDividerInset:I

    .line 186
    invoke-direct {p0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->updateDivider()V

    .line 184
    return-void
.end method
