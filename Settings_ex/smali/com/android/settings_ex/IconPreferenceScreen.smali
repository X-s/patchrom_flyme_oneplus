.class public Lcom/android/settings_ex/IconPreferenceScreen;
.super Landroid/support/v7/preference/Preference;
.source "IconPreferenceScreen.java"


# instance fields
.field private mHighlight:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/IconPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const v1, 0x7f04013e

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/IconPreferenceScreen;->setLayoutResource(I)V

    .line 43
    sget-object v1, Lcom/android/settings_ex/R$styleable;->IconPreferenceScreen:[I

    .line 42
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/IconPreferenceScreen;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 39
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/IconPreferenceScreen;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 50
    const/high16 v2, 0x7f110000

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 51
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/IconPreferenceScreen;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/android/settings_ex/IconPreferenceScreen;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    :cond_0
    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 48
    .local v1, "textView":Landroid/widget/TextView;
    return-void
.end method

.method public setHighlighted(Z)V
    .locals 0
    .param p1, "highlight"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/settings_ex/IconPreferenceScreen;->mHighlight:Z

    .line 81
    invoke-virtual {p0}, Lcom/android/settings_ex/IconPreferenceScreen;->notifyChanged()V

    .line 79
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 63
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/IconPreferenceScreen;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 64
    :cond_0
    iput-object p1, p0, Lcom/android/settings_ex/IconPreferenceScreen;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 65
    invoke-virtual {p0}, Lcom/android/settings_ex/IconPreferenceScreen;->notifyChanged()V

    .line 62
    :cond_1
    :goto_0
    return-void

    .line 63
    :cond_2
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/IconPreferenceScreen;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method
