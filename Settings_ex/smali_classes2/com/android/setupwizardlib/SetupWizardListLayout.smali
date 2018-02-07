.class public Lcom/android/setupwizardlib/SetupWizardListLayout;
.super Lcom/android/setupwizardlib/SetupWizardLayout;
.source "SetupWizardListLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SetupWizardListLayout"


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

    .line 46
    invoke-direct {p0, p1, v0, v0}, Lcom/android/setupwizardlib/SetupWizardListLayout;-><init>(Landroid/content/Context;II)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "template"    # I

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/setupwizardlib/SetupWizardListLayout;-><init>(Landroid/content/Context;II)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "template"    # I
    .param p3, "containerId"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/SetupWizardLayout;-><init>(Landroid/content/Context;II)V

    .line 55
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/setupwizardlib/SetupWizardListLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/setupwizardlib/SetupWizardListLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
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
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/SetupWizardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/SetupWizardListLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x0

    .line 71
    sget-object v2, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardListLayout:[I

    .line 70
    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardListLayout_suwDividerInset:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 74
    .local v1, "dividerInset":I
    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/SetupWizardListLayout;->setDividerInset(I)V

    .line 75
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    return-void
.end method

.method private updateDivider()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 146
    const/4 v7, 0x1

    .line 147
    .local v7, "shouldUpdate":Z
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardListLayout;->isLayoutDirectionResolved()Z

    move-result v7

    .line 150
    .end local v7    # "shouldUpdate":Z
    :cond_0
    if-eqz v7, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardListLayout;->getListView()Landroid/widget/ListView;

    move-result-object v6

    .line 152
    .local v6, "listView":Landroid/widget/ListView;
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardListLayout;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 153
    invoke-virtual {v6}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/SetupWizardListLayout;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardListLayout;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    .line 156
    iget v1, p0, Lcom/android/setupwizardlib/SetupWizardListLayout;->mDividerInset:I

    move v3, v2

    move v4, v2

    move-object v5, p0

    .line 155
    invoke-static/range {v0 .. v5}, Lcom/android/setupwizardlib/util/DrawableLayoutDirectionHelper;->createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIILandroid/view/View;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/SetupWizardListLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 157
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardListLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 145
    .end local v6    # "listView":Landroid/widget/ListView;
    :cond_2
    return-void
.end method


# virtual methods
.method protected findContainer(I)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "containerId"    # I

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    const p1, 0x102000a

    .line 91
    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/SetupWizardLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardListLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerInset()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/android/setupwizardlib/SetupWizardListLayout;->mDividerInset:I

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardListLayout;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "template"    # I

    .prologue
    .line 80
    if-nez p2, :cond_0

    .line 81
    sget p2, Lcom/android/setupwizardlib/R$layout;->suw_list_template:I

    .line 83
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
    .line 96
    invoke-super/range {p0 .. p5}, Lcom/android/setupwizardlib/SetupWizardLayout;->onLayout(ZIIII)V

    .line 97
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardListLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/android/setupwizardlib/SetupWizardListLayout;->updateDivider()V

    .line 95
    :cond_0
    return-void
.end method

.method protected onTemplateInflated()V
    .locals 1

    .prologue
    .line 105
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/setupwizardlib/SetupWizardListLayout;->mListView:Landroid/widget/ListView;

    .line 104
    return-void
.end method

.method public requireScrollToBottom()V
    .locals 4

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardListLayout;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v1

    .line 119
    .local v1, "navigationBar":Lcom/android/setupwizardlib/view/NavigationBar;
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardListLayout;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 120
    .local v0, "listView":Landroid/widget/ListView;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 121
    invoke-static {v1, v0}, Lcom/android/setupwizardlib/util/ListViewRequireScrollHelper;->requireScroll(Lcom/android/setupwizardlib/view/NavigationBar;Landroid/widget/ListView;)V

    .line 117
    :goto_0
    return-void

    .line 123
    :cond_0
    const-string/jumbo v2, "SetupWizardListLayout"

    const-string/jumbo v3, "Both suw_layout_navigation_bar and list must exist in the template to require scrolling."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardListLayout;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    return-void
.end method

.method public setDividerInset(I)V
    .locals 0
    .param p1, "inset"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/android/setupwizardlib/SetupWizardListLayout;->mDividerInset:I

    .line 138
    invoke-direct {p0}, Lcom/android/setupwizardlib/SetupWizardListLayout;->updateDivider()V

    .line 136
    return-void
.end method
