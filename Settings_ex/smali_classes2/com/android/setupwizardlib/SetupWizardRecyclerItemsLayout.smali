.class public Lcom/android/setupwizardlib/SetupWizardRecyclerItemsLayout;
.super Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;
.source "SetupWizardRecyclerItemsLayout.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method


# virtual methods
.method public bridge synthetic getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardRecyclerItemsLayout;->getAdapter()Lcom/android/setupwizardlib/items/RecyclerItemAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/android/setupwizardlib/items/RecyclerItemAdapter;
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;

    return-object v0
.end method
