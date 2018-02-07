.class public abstract Lcom/android/settings_ex/notification/EmptyTextSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "EmptyTextSettings.java"


# instance fields
.field private mEmpty:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 36
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 37
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/EmptyTextSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/notification/EmptyTextSettings;->mEmpty:Landroid/widget/TextView;

    .line 38
    iget-object v1, p0, Lcom/android/settings_ex/notification/EmptyTextSettings;->mEmpty:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 39
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 40
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/EmptyTextSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010041

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 41
    iget-object v1, p0, Lcom/android/settings_ex/notification/EmptyTextSettings;->mEmpty:Landroid/widget/TextView;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 42
    const v1, 0x102003f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/settings_ex/notification/EmptyTextSettings;->mEmpty:Landroid/widget/TextView;

    .line 43
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 42
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    iget-object v1, p0, Lcom/android/settings_ex/notification/EmptyTextSettings;->mEmpty:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/notification/EmptyTextSettings;->setEmptyView(Landroid/view/View;)V

    .line 35
    return-void
.end method

.method protected setEmptyText(I)V
    .locals 1
    .param p1, "text"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings_ex/notification/EmptyTextSettings;->mEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 47
    return-void
.end method
