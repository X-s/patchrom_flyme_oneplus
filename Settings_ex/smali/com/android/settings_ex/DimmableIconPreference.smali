.class public Lcom/android/settings_ex/DimmableIconPreference;
.super Lcom/android/settings_exlib/RestrictedPreference;
.source "DimmableIconPreference.java"


# static fields
.field private static final ICON_ALPHA_DISABLED:I = 0x66

.field private static final ICON_ALPHA_ENABLED:I = 0xff


# instance fields
.field private final mContentDescription:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/DimmableIconPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/settings_exlib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/DimmableIconPreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DimmableIconPreference;->useAdminDisabledSummary(Z)V

    .line 58
    const v0, 0x7f040102

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DimmableIconPreference;->setLayoutResource(I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_exlib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    iput-object p4, p0, Lcom/android/settings_ex/DimmableIconPreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 49
    const v0, 0x7f040102

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DimmableIconPreference;->setLayoutResource(I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings_exlib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    .line 64
    iput-object p2, p0, Lcom/android/settings_ex/DimmableIconPreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DimmableIconPreference;->useAdminDisabledSummary(Z)V

    .line 67
    const v0, 0x7f040102

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DimmableIconPreference;->setLayoutResource(I)V

    .line 62
    return-void
.end method


# virtual methods
.method protected dimIcon(Z)V
    .locals 3
    .param p1, "dimmed"    # Z

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/settings_ex/DimmableIconPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 73
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz p1, :cond_1

    const/16 v1, 0x66

    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 75
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DimmableIconPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 71
    :cond_0
    return-void

    .line 74
    :cond_1
    const/16 v1, 0xff

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/settings_exlib/RestrictedPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 82
    iget-object v1, p0, Lcom/android/settings_ex/DimmableIconPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 84
    .local v0, "titleView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/settings_ex/DimmableIconPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 86
    .end local v0    # "titleView":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DimmableIconPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/DimmableIconPreference;->dimIcon(Z)V

    .line 80
    return-void

    .line 86
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
