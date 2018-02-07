.class public Lcom/android/settings_ex/applications/LayoutPreference;
.super Landroid/support/v7/preference/Preference;
.source "LayoutPreference.java"


# instance fields
.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I

    .prologue
    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/applications/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    sget-object v3, Lcom/android/internal/R$styleable;->Preference:[I

    .line 38
    invoke-virtual {p1, p2, v3, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 40
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 42
    .local v1, "layoutResource":I
    if-nez v1, :cond_0

    .line 43
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "LayoutPreference requires a layout to be defined"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/LayoutPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 47
    const/4 v4, 0x0

    .line 46
    invoke-virtual {v3, v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 48
    .local v2, "view":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/android/settings_ex/applications/LayoutPreference;->setView(Landroid/view/View;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-direct {p0, p2}, Lcom/android/settings_ex/applications/LayoutPreference;->setView(Landroid/view/View;)V

    .line 55
    return-void
.end method

.method private setView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 61
    const v1, 0x7f0400a2

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/LayoutPreference;->setLayoutResource(I)V

    .line 62
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/applications/LayoutPreference;->setSelectable(Z)V

    .line 63
    const v1, 0x7f11009f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 64
    .local v0, "allDetails":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 65
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings_ex/Utils;->forceCustomPadding(Landroid/view/View;Z)V

    .line 67
    :cond_0
    iput-object p1, p0, Lcom/android/settings_ex/applications/LayoutPreference;->mRootView:Landroid/view/View;

    .line 68
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/applications/LayoutPreference;->setShouldDisableView(Z)V

    .line 60
    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/applications/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 73
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 74
    .local v0, "layout":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 75
    iget-object v2, p0, Lcom/android/settings_ex/applications/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 76
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 77
    iget-object v2, p0, Lcom/android/settings_ex/applications/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 79
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 72
    return-void
.end method
