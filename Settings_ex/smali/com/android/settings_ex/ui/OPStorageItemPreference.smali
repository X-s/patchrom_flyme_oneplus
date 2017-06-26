.class public Lcom/android/settings_ex/ui/OPStorageItemPreference;
.super Landroid/preference/Preference;
.source "OPStorageItemPreference.java"


# instance fields
.field private mCanRecycleLayout:Z

.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mLayoutResId:I

.field private mSummary:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleRes:I

.field private mWidgetLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 26
    const v0, 0x7f0400bc

    iput v0, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mLayoutResId:I

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mWidgetLayoutResId:I

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mCanRecycleLayout:Z

    .line 34
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const v0, 0x7f0400bc

    iput v0, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mLayoutResId:I

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mWidgetLayoutResId:I

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mCanRecycleLayout:Z

    .line 40
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const v0, 0x7f0400bc

    iput v0, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mLayoutResId:I

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mWidgetLayoutResId:I

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mCanRecycleLayout:Z

    .line 47
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mTitleRes:I

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 52
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/ui/OPStorageItemPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 54
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/ui/OPStorageItemPreference;->onBindView(Landroid/view/View;)V

    .line 55
    return-object p1
.end method

.method public getWidgetLayoutResource()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mWidgetLayoutResId:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 89
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 91
    const v6, 0x7f120036

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 92
    .local v5, "titleView":Landroid/widget/TextView;
    if-eqz v5, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/android/settings_ex/ui/OPStorageItemPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 94
    .local v4, "title":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 95
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    const v6, 0x7f120048

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 103
    .local v3, "summaryView":Landroid/widget/TextView;
    if-eqz v3, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/android/settings_ex/ui/OPStorageItemPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .line 105
    .local v2, "summary":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 106
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    .end local v2    # "summary":Ljava/lang/CharSequence;
    :cond_1
    :goto_1
    const v6, 0x7f120035

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 114
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_5

    .line 115
    iget v6, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mIconResId:I

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4

    .line 116
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_3

    .line 117
    invoke-virtual {p0}, Lcom/android/settings_ex/ui/OPStorageItemPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v9, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mIconResId:I

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 119
    :cond_3
    iget-object v6, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4

    .line 120
    iget-object v6, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    :cond_4
    iget-object v6, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_9

    move v6, v7

    :goto_2
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    :cond_5
    const v6, 0x7f120144

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 127
    .local v0, "imageFrame":Landroid/view/View;
    if-eqz v0, :cond_6

    .line 128
    iget-object v6, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_a

    :goto_3
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :cond_6
    return-void

    .line 98
    .end local v0    # "imageFrame":Landroid/view/View;
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "summaryView":Landroid/widget/TextView;
    .restart local v4    # "title":Ljava/lang/CharSequence;
    :cond_7
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 109
    .end local v4    # "title":Ljava/lang/CharSequence;
    .restart local v2    # "summary":Ljava/lang/CharSequence;
    .restart local v3    # "summaryView":Landroid/widget/TextView;
    :cond_8
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .end local v2    # "summary":Ljava/lang/CharSequence;
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    :cond_9
    move v6, v8

    .line 123
    goto :goto_2

    .restart local v0    # "imageFrame":Landroid/view/View;
    :cond_a
    move v7, v8

    .line 128
    goto :goto_3
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 136
    iget-object v3, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 139
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mLayoutResId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 141
    .local v0, "layout":Landroid/view/View;
    const v3, 0x7f120145

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 144
    .local v2, "widgetFrame":Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 145
    iget v3, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mWidgetLayoutResId:I

    if-eqz v3, :cond_1

    .line 146
    iget v3, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mWidgetLayoutResId:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 152
    :cond_0
    :goto_0
    return-object v0

    .line 148
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "iconResId"    # I

    .prologue
    .line 231
    iput p1, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mIconResId:I

    .line 233
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ui/OPStorageItemPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 234
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 216
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 217
    :cond_1
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 219
    invoke-virtual {p0}, Lcom/android/settings_ex/ui/OPStorageItemPreference;->notifyChanged()V

    .line 221
    :cond_2
    return-void
.end method

.method public setSummary(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ui/OPStorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 279
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 263
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mSummary:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 265
    :cond_1
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mSummary:Ljava/lang/CharSequence;

    .line 266
    invoke-virtual {p0}, Lcom/android/settings_ex/ui/OPStorageItemPreference;->notifyChanged()V

    .line 268
    :cond_2
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleResId"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ui/OPStorageItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 183
    iput p1, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mTitleRes:I

    .line 184
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 166
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 168
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mTitleRes:I

    .line 169
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mTitle:Ljava/lang/CharSequence;

    .line 170
    invoke-virtual {p0}, Lcom/android/settings_ex/ui/OPStorageItemPreference;->notifyChanged()V

    .line 172
    :cond_2
    return-void
.end method

.method public setWidgetLayoutResource(I)V
    .locals 1
    .param p1, "widgetLayoutResId"    # I

    .prologue
    .line 69
    iget v0, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mWidgetLayoutResId:I

    if-eq p1, v0, :cond_0

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mCanRecycleLayout:Z

    .line 73
    :cond_0
    iput p1, p0, Lcom/android/settings_ex/ui/OPStorageItemPreference;->mWidgetLayoutResId:I

    .line 74
    return-void
.end method
