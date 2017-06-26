.class public Lcom/android/settings_ex/TintablePreference;
.super Lcom/oneplus/widget/preference/OPPreference;
.source "TintablePreference.java"


# instance fields
.field private mTintColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/oneplus/widget/preference/OPPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/oneplus/widget/preference/OPPreference;->onBindView(Landroid/view/View;)V

    .line 43
    iget v0, p0, Lcom/android/settings_ex/TintablePreference;->mTintColor:I

    if-eqz v0, :cond_0

    .line 44
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings_ex/TintablePreference;->mTintColor:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 47
    :cond_0
    return-void
.end method

.method public setTint(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/android/settings_ex/TintablePreference;->mTintColor:I

    .line 36
    invoke-virtual {p0}, Lcom/android/settings_ex/TintablePreference;->notifyChanged()V

    .line 37
    return-void
.end method
