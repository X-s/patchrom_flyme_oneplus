.class public Lcom/android/settings_ex/RestrictedCheckBox;
.super Landroid/widget/CheckBox;
.source "RestrictedCheckBox.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisabledByAdmin:Z

.field private mEnforcedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/RestrictedCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-object p1, p0, Lcom/android/settings_ex/RestrictedCheckBox;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method


# virtual methods
.method public isDisabledByAdmin()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/settings_ex/RestrictedCheckBox;->mDisabledByAdmin:Z

    return v0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/settings_ex/RestrictedCheckBox;->mDisabledByAdmin:Z

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/RestrictedCheckBox;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/RestrictedCheckBox;->mEnforcedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, v1}, Lcom/android/settings_exlib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 52
    const/4 v0, 0x1

    return v0

    .line 54
    :cond_0
    invoke-super {p0}, Landroid/widget/CheckBox;->performClick()Z

    move-result v0

    return v0
.end method

.method public setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 4
    .param p1, "admin"    # Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .prologue
    .line 58
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 59
    .local v0, "disabled":Z
    :goto_0
    iput-object p1, p0, Lcom/android/settings_ex/RestrictedCheckBox;->mEnforcedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .line 60
    iget-boolean v1, p0, Lcom/android/settings_ex/RestrictedCheckBox;->mDisabledByAdmin:Z

    if-eq v1, v0, :cond_0

    .line 61
    iput-boolean v0, p0, Lcom/android/settings_ex/RestrictedCheckBox;->mDisabledByAdmin:Z

    .line 62
    iget-object v1, p0, Lcom/android/settings_ex/RestrictedCheckBox;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/android/settings_ex/RestrictedCheckBox;->mDisabledByAdmin:Z

    invoke-static {v1, p0, v2}, Lcom/android/settings_exlib/RestrictedLockUtils;->setTextViewAsDisabledByAdmin(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 63
    iget-boolean v1, p0, Lcom/android/settings_ex/RestrictedCheckBox;->mDisabledByAdmin:Z

    if-eqz v1, :cond_2

    .line 64
    invoke-virtual {p0}, Lcom/android/settings_ex/RestrictedCheckBox;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/RestrictedCheckBox;->mContext:Landroid/content/Context;

    const/high16 v3, 0x7f0b0000

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 65
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 64
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 57
    :cond_0
    :goto_1
    return-void

    .line 58
    .end local v0    # "disabled":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "disabled":Z
    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/RestrictedCheckBox;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_1
.end method
