.class public Lcom/android/setupwizardlib/GlifListLayout;
.super Lcom/android/setupwizardlib/GlifLayout;
.source "GlifListLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GlifListLayout"


# instance fields
.field private mDefaultDivider:Landroid/graphics/drawable/Drawable;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerInset:I

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0, v0}, Lcom/android/setupwizardlib/GlifListLayout;-><init>(Landroid/content/Context;II)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "template"    # I

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/setupwizardlib/GlifListLayout;-><init>(Landroid/content/Context;II)V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/GlifLayout;-><init>(Landroid/content/Context;II)V

    .line 65
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/setupwizardlib/GlifListLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/GlifLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/setupwizardlib/GlifListLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
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
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/GlifLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/GlifListLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v5, 0x0

    .line 80
    sget-object v4, Lcom/android/setupwizardlib/R$styleable;->SuwGlifListLayout:[I

    invoke-virtual {p1, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v4, Lcom/android/setupwizardlib/R$styleable;->SuwGlifListLayout_android_entries:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

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
    new-instance v4, Lcom/android/setupwizardlib/items/ItemAdapter;

    invoke-direct {v4, v2}, Lcom/android/setupwizardlib/items/ItemAdapter;-><init>(Lcom/android/setupwizardlib/items/ItemHierarchy;)V

    invoke-virtual {p0, v4}, Lcom/android/setupwizardlib/GlifListLayout;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    .end local v2    # "inflated":Lcom/android/setupwizardlib/items/ItemGroup;
    :cond_0
    sget v4, Lcom/android/setupwizardlib/R$styleable;->SuwGlifListLayout_suwDividerInset:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 89
    .local v1, "dividerInset":I
    if-nez v1, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 91
    sget v5, Lcom/android/setupwizardlib/R$dimen;->suw_items_glif_icon_divider_inset:I

    .line 90
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 93
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/GlifListLayout;->setDividerInset(I)V

    .line 94
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    return-void
.end method

.method private updateDivider()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 161
    const/4 v7, 0x1

    .line 162
    .local v7, "shouldUpdate":Z
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifListLayout;->isLayoutDirectionResolved()Z

    move-result v7

    .line 165
    .end local v7    # "shouldUpdate":Z
    :cond_0
    if-eqz v7, :cond_2

    .line 166
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifListLayout;->getListView()Landroid/widget/ListView;

    move-result-object v6

    .line 167
    .local v6, "listView":Landroid/widget/ListView;
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 168
    invoke-virtual {v6}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    .line 171
    iget v1, p0, Lcom/android/setupwizardlib/GlifListLayout;->mDividerInset:I

    move v3, v2

    move v4, v2

    move-object v5, p0

    .line 170
    invoke-static/range {v0 .. v5}, Lcom/android/setupwizardlib/util/DrawableLayoutDirectionHelper;->createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIILandroid/view/View;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 172
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 160
    .end local v6    # "listView":Landroid/widget/ListView;
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
    const p1, 0x102000a

    .line 119
    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/GlifLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifListLayout;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 137
    .local v0, "adapter":Landroid/widget/ListAdapter;
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_0

    .line 138
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    return-object v1

    .line 140
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    return-object v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerInset()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->mDividerInset:I

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "template"    # I

    .prologue
    .line 108
    if-nez p2, :cond_0

    .line 109
    sget p2, Lcom/android/setupwizardlib/R$layout;->suw_glif_list_template:I

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
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/android/setupwizardlib/GlifListLayout;->updateDivider()V

    .line 98
    :cond_0
    return-void
.end method

.method protected onTemplateInflated()V
    .locals 1

    .prologue
    .line 124
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->mListView:Landroid/widget/ListView;

    .line 123
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifListLayout;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 131
    return-void
.end method

.method public setDividerInset(I)V
    .locals 0
    .param p1, "inset"    # I

    .prologue
    .line 152
    iput p1, p0, Lcom/android/setupwizardlib/GlifListLayout;->mDividerInset:I

    .line 153
    invoke-direct {p0}, Lcom/android/setupwizardlib/GlifListLayout;->updateDivider()V

    .line 151
    return-void
.end method
