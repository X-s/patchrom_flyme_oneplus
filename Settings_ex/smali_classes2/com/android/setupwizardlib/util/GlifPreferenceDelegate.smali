.class public Lcom/android/setupwizardlib/util/GlifPreferenceDelegate;
.super Ljava/lang/Object;
.source "GlifPreferenceDelegate.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ATTRS_LIST_DIVIDER:[I


# instance fields
.field private mHasIcons:Z

.field private mRecyclerView:Lcom/android/setupwizardlib/view/HeaderRecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x1010214

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/android/setupwizardlib/util/GlifPreferenceDelegate;->ATTRS_LIST_DIVIDER:[I

    .line 43
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "hasIcons"    # Z

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean p1, p0, Lcom/android/setupwizardlib/util/GlifPreferenceDelegate;->mHasIcons:Z

    .line 50
    return-void
.end method


# virtual methods
.method public getDividerDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 65
    sget-object v3, Lcom/android/setupwizardlib/util/GlifPreferenceDelegate;->ATTRS_LIST_DIVIDER:[I

    invoke-virtual {p1, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 66
    .local v6, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v6, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 67
    .local v0, "defaultDivider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 70
    iget-boolean v3, p0, Lcom/android/setupwizardlib/util/GlifPreferenceDelegate;->mHasIcons:Z

    if-eqz v3, :cond_0

    sget v3, Lcom/android/setupwizardlib/R$dimen;->suw_items_glif_icon_divider_inset:I

    .line 69
    :goto_0
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .local v1, "dividerInset":I
    move v3, v2

    move v4, v2

    move-object v5, p1

    .line 72
    invoke-static/range {v0 .. v5}, Lcom/android/setupwizardlib/util/DrawableLayoutDirectionHelper;->createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIILandroid/content/Context;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v2

    return-object v2

    .line 71
    .end local v1    # "dividerInset":I
    :cond_0
    sget v3, Lcom/android/setupwizardlib/R$dimen;->suw_items_glif_text_divider_inset:I

    goto :goto_0
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 57
    .local v1, "inflaterContext":Landroid/content/Context;
    new-instance v2, Lcom/android/setupwizardlib/view/HeaderRecyclerView;

    invoke-direct {v2, v1}, Lcom/android/setupwizardlib/view/HeaderRecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/setupwizardlib/util/GlifPreferenceDelegate;->mRecyclerView:Lcom/android/setupwizardlib/view/HeaderRecyclerView;

    .line 58
    iget-object v2, p0, Lcom/android/setupwizardlib/util/GlifPreferenceDelegate;->mRecyclerView:Lcom/android/setupwizardlib/view/HeaderRecyclerView;

    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v3, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/android/setupwizardlib/view/HeaderRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 59
    sget v2, Lcom/android/setupwizardlib/R$layout;->suw_glif_header:I

    iget-object v3, p0, Lcom/android/setupwizardlib/util/GlifPreferenceDelegate;->mRecyclerView:Lcom/android/setupwizardlib/view/HeaderRecyclerView;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "header":Landroid/view/View;
    iget-object v2, p0, Lcom/android/setupwizardlib/util/GlifPreferenceDelegate;->mRecyclerView:Lcom/android/setupwizardlib/view/HeaderRecyclerView;

    invoke-virtual {v2, v0}, Lcom/android/setupwizardlib/view/HeaderRecyclerView;->setHeader(Landroid/view/View;)V

    .line 61
    iget-object v2, p0, Lcom/android/setupwizardlib/util/GlifPreferenceDelegate;->mRecyclerView:Lcom/android/setupwizardlib/view/HeaderRecyclerView;

    return-object v2
.end method

.method public setHeaderText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 78
    iget-object v2, p0, Lcom/android/setupwizardlib/util/GlifPreferenceDelegate;->mRecyclerView:Lcom/android/setupwizardlib/view/HeaderRecyclerView;

    invoke-virtual {v2}, Lcom/android/setupwizardlib/view/HeaderRecyclerView;->getHeader()Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, "header":Landroid/view/View;
    sget v2, Lcom/android/setupwizardlib/R$id;->suw_layout_title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 81
    .local v1, "titleView":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 82
    check-cast v1, Landroid/widget/TextView;

    .end local v1    # "titleView":Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 87
    iget-object v2, p0, Lcom/android/setupwizardlib/util/GlifPreferenceDelegate;->mRecyclerView:Lcom/android/setupwizardlib/view/HeaderRecyclerView;

    invoke-virtual {v2}, Lcom/android/setupwizardlib/view/HeaderRecyclerView;->getHeader()Landroid/view/View;

    move-result-object v0

    .line 89
    .local v0, "header":Landroid/view/View;
    sget v2, Lcom/android/setupwizardlib/R$id;->suw_layout_icon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 90
    .local v1, "iconView":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 91
    check-cast v1, Landroid/widget/ImageView;

    .end local v1    # "iconView":Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    :cond_0
    return-void
.end method
