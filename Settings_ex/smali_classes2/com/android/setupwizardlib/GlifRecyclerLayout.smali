.class public Lcom/android/setupwizardlib/GlifRecyclerLayout;
.super Lcom/android/setupwizardlib/GlifLayout;
.source "GlifRecyclerLayout.java"


# instance fields
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

    .line 53
    invoke-direct {p0, p1, v0, v0}, Lcom/android/setupwizardlib/GlifRecyclerLayout;-><init>(Landroid/content/Context;II)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "template"    # I

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/setupwizardlib/GlifRecyclerLayout;-><init>(Landroid/content/Context;II)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "template"    # I
    .param p3, "containerId"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/GlifLayout;-><init>(Landroid/content/Context;II)V

    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/setupwizardlib/GlifRecyclerLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/GlifLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/setupwizardlib/GlifRecyclerLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/GlifLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/GlifRecyclerLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v6, 0x0

    .line 78
    sget-object v5, Lcom/android/setupwizardlib/R$styleable;->SuwGlifRecyclerLayout:[I

    .line 77
    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 79
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v5, Lcom/android/setupwizardlib/R$styleable;->SuwGlifRecyclerLayout_android_entries:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 80
    .local v4, "xml":I
    if-eqz v4, :cond_0

    .line 81
    new-instance v5, Lcom/android/setupwizardlib/items/ItemInflater;

    invoke-direct {v5, p1}, Lcom/android/setupwizardlib/items/ItemInflater;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Lcom/android/setupwizardlib/items/ItemInflater;->inflate(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/setupwizardlib/items/ItemGroup;

    .line 82
    .local v3, "inflated":Lcom/android/setupwizardlib/items/ItemGroup;
    new-instance v1, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;

    invoke-direct {v1, v3}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;-><init>(Lcom/android/setupwizardlib/items/ItemHierarchy;)V

    .line 84
    .local v1, "adapter":Lcom/android/setupwizardlib/items/RecyclerItemAdapter;
    sget v5, Lcom/android/setupwizardlib/R$styleable;->SuwGlifRecyclerLayout_suwHasStableIds:I

    .line 83
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->setHasStableIds(Z)V

    .line 85
    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/GlifRecyclerLayout;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 88
    .end local v1    # "adapter":Lcom/android/setupwizardlib/items/RecyclerItemAdapter;
    .end local v3    # "inflated":Lcom/android/setupwizardlib/items/ItemGroup;
    :cond_0
    sget v5, Lcom/android/setupwizardlib/R$styleable;->SuwGlifRecyclerLayout_suwDividerInset:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 89
    .local v2, "dividerInset":I
    if-nez v2, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifRecyclerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 91
    sget v6, Lcom/android/setupwizardlib/R$dimen;->suw_items_glif_icon_divider_inset:I

    .line 90
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 93
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/setupwizardlib/GlifRecyclerLayout;->setDividerInset(I)V

    .line 94
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    return-void
.end method

.method private updateDivider()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 189
    const/4 v6, 0x1

    .line 190
    .local v6, "shouldUpdate":Z
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifRecyclerLayout;->isLayoutDirectionResolved()Z

    move-result v6

    .line 193
    .end local v6    # "shouldUpdate":Z
    :cond_0
    if-eqz v6, :cond_2

    .line 194
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mDividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/DividerItemDecoration;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    .line 198
    iget v1, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mDividerInset:I

    move v3, v2

    move v4, v2

    move-object v5, p0

    .line 197
    invoke-static/range {v0 .. v5}, Lcom/android/setupwizardlib/util/DrawableLayoutDirectionHelper;->createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIILandroid/view/View;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 199
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mDividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    iget-object v1, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/DividerItemDecoration;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 188
    :cond_2
    return-void
.end method


# virtual methods
.method protected findContainer(I)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "containerId"    # I

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 117
    sget p1, Lcom/android/setupwizardlib/R$id;->suw_recycler_view:I

    .line 119
    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/GlifLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method protected findManagedViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 139
    iget-object v1, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mHeader:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mHeader:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 141
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 142
    return-object v0

    .line 145
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/GlifLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifRecyclerLayout;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 165
    .local v0, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    instance-of v1, v0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 166
    check-cast v0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;

    .end local v0    # "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->getWrappedAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    return-object v1

    .line 168
    .restart local v0    # "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    :cond_0
    return-object v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerInset()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mDividerInset:I

    return v0
.end method

.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method protected initRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 129
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifRecyclerLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 130
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    instance-of v0, v0, Lcom/android/setupwizardlib/view/HeaderRecyclerView;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    check-cast v0, Lcom/android/setupwizardlib/view/HeaderRecyclerView;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/HeaderRecyclerView;->getHeader()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mHeader:Landroid/view/View;

    .line 133
    :cond_0
    new-instance v0, Lcom/android/setupwizardlib/DividerItemDecoration;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifRecyclerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/setupwizardlib/DividerItemDecoration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mDividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    .line 134
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mDividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 127
    return-void
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "template"    # I

    .prologue
    .line 108
    if-nez p2, :cond_0

    .line 109
    sget p2, Lcom/android/setupwizardlib/R$layout;->suw_glif_recycler_template:I

    .line 111
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/setupwizardlib/GlifLayout;->onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;

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
    .line 99
    invoke-super/range {p0 .. p5}, Lcom/android/setupwizardlib/GlifLayout;->onLayout(ZIIII)V

    .line 100
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/android/setupwizardlib/GlifRecyclerLayout;->updateDivider()V

    .line 98
    :cond_0
    return-void
.end method

.method protected onTemplateInflated()V
    .locals 1

    .prologue
    .line 124
    sget v0, Lcom/android/setupwizardlib/R$id;->suw_recycler_view:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifRecyclerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifRecyclerLayout;->initRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 123
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifRecyclerLayout;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 159
    return-void
.end method

.method public setDividerInset(I)V
    .locals 0
    .param p1, "inset"    # I

    .prologue
    .line 180
    iput p1, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mDividerInset:I

    .line 181
    invoke-direct {p0}, Lcom/android/setupwizardlib/GlifRecyclerLayout;->updateDivider()V

    .line 179
    return-void
.end method

.method public setDividerItemDecoration(Lcom/android/setupwizardlib/DividerItemDecoration;)V
    .locals 2
    .param p1, "decoration"    # Lcom/android/setupwizardlib/DividerItemDecoration;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mDividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 150
    iput-object p1, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mDividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    .line 151
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mDividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 152
    invoke-direct {p0}, Lcom/android/setupwizardlib/GlifRecyclerLayout;->updateDivider()V

    .line 148
    return-void
.end method
