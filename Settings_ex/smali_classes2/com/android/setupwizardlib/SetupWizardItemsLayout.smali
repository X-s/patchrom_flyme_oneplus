.class public Lcom/android/setupwizardlib/SetupWizardItemsLayout;
.super Lcom/android/setupwizardlib/SetupWizardListLayout;
.source "SetupWizardItemsLayout.java"


# instance fields
.field private mAdapter:Lcom/android/setupwizardlib/items/ItemAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/SetupWizardListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/setupwizardlib/SetupWizardItemsLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/SetupWizardListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/SetupWizardItemsLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x0

    .line 42
    sget-object v3, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardItemsLayout:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardItemsLayout_android_entries:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 45
    .local v2, "xml":I
    if-eqz v2, :cond_0

    .line 46
    new-instance v3, Lcom/android/setupwizardlib/items/ItemInflater;

    invoke-direct {v3, p1}, Lcom/android/setupwizardlib/items/ItemInflater;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/android/setupwizardlib/items/ItemInflater;->inflate(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/setupwizardlib/items/ItemGroup;

    .line 47
    .local v1, "inflated":Lcom/android/setupwizardlib/items/ItemGroup;
    new-instance v3, Lcom/android/setupwizardlib/items/ItemAdapter;

    invoke-direct {v3, v1}, Lcom/android/setupwizardlib/items/ItemAdapter;-><init>(Lcom/android/setupwizardlib/items/ItemHierarchy;)V

    iput-object v3, p0, Lcom/android/setupwizardlib/SetupWizardItemsLayout;->mAdapter:Lcom/android/setupwizardlib/items/ItemAdapter;

    .line 48
    iget-object v3, p0, Lcom/android/setupwizardlib/SetupWizardItemsLayout;->mAdapter:Lcom/android/setupwizardlib/items/ItemAdapter;

    invoke-virtual {p0, v3}, Lcom/android/setupwizardlib/SetupWizardItemsLayout;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    .end local v1    # "inflated":Lcom/android/setupwizardlib/items/ItemGroup;
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    return-void
.end method


# virtual methods
.method public getAdapter()Lcom/android/setupwizardlib/items/ItemAdapter;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardItemsLayout;->mAdapter:Lcom/android/setupwizardlib/items/ItemAdapter;

    return-object v0
.end method
