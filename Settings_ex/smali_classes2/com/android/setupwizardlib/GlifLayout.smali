.class public Lcom/android/setupwizardlib/GlifLayout;
.super Lcom/android/setupwizardlib/TemplateLayout;
.source "GlifLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GlifLayout"


# instance fields
.field private mPrimaryColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0, v0}, Lcom/android/setupwizardlib/GlifLayout;-><init>(Landroid/content/Context;II)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "template"    # I

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/setupwizardlib/GlifLayout;-><init>(Landroid/content/Context;II)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "template"    # I
    .param p3, "containerId"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/TemplateLayout;-><init>(Landroid/content/Context;II)V

    .line 73
    sget v0, Lcom/android/setupwizardlib/R$attr;->suwLayoutTheme:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/setupwizardlib/GlifLayout;->init(Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    sget v0, Lcom/android/setupwizardlib/R$attr;->suwLayoutTheme:I

    invoke-direct {p0, p2, v0}, Lcom/android/setupwizardlib/GlifLayout;->init(Landroid/util/AttributeSet;I)V

    .line 76
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
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    invoke-direct {p0, p2, p3}, Lcom/android/setupwizardlib/GlifLayout;->init(Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method private getProgressBar()Landroid/widget/ProgressBar;
    .locals 3

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifLayout;->peekProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    .line 259
    .local v0, "progressBar":Landroid/view/View;
    if-nez v0, :cond_1

    .line 261
    sget v2, Lcom/android/setupwizardlib/R$id;->suw_layout_progress_stub:I

    invoke-virtual {p0, v2}, Lcom/android/setupwizardlib/GlifLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 262
    .local v1, "progressBarStub":Landroid/view/ViewStub;
    if-eqz v1, :cond_0

    .line 263
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 265
    :cond_0
    iget-object v2, p0, Lcom/android/setupwizardlib/GlifLayout;->mPrimaryColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v2}, Lcom/android/setupwizardlib/GlifLayout;->setProgressBarColor(Landroid/content/res/ColorStateList;)V

    .line 267
    .end local v1    # "progressBarStub":Landroid/view/ViewStub;
    :cond_1
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifLayout;->peekProgressBar()Landroid/widget/ProgressBar;

    move-result-object v2

    return-object v2
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 91
    sget-object v6, Lcom/android/setupwizardlib/R$styleable;->SuwGlifLayout:[I

    const/4 v7, 0x0

    .line 90
    invoke-virtual {v5, p1, v6, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 93
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v5, Lcom/android/setupwizardlib/R$styleable;->SuwGlifLayout_android_icon:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 94
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 95
    invoke-virtual {p0, v3}, Lcom/android/setupwizardlib/GlifLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 100
    :cond_0
    sget v5, Lcom/android/setupwizardlib/R$styleable;->SuwGlifLayout_suwHeaderColor:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 101
    .local v1, "headerColor":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/GlifLayout;->setHeaderColor(Landroid/content/res/ColorStateList;)V

    .line 108
    :cond_1
    sget v5, Lcom/android/setupwizardlib/R$styleable;->SuwGlifLayout_suwHeaderText:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 109
    .local v2, "headerText":Ljava/lang/CharSequence;
    if-eqz v2, :cond_2

    .line 110
    invoke-virtual {p0, v2}, Lcom/android/setupwizardlib/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_2
    sget v5, Lcom/android/setupwizardlib/R$styleable;->SuwGlifLayout_android_colorPrimary:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 115
    .local v4, "primaryColor":Landroid/content/res/ColorStateList;
    invoke-virtual {p0, v4}, Lcom/android/setupwizardlib/GlifLayout;->setPrimaryColor(Landroid/content/res/ColorStateList;)V

    .line 117
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    return-void
.end method

.method private setGlifPatternColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 216
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 217
    const/16 v2, 0x400

    invoke-virtual {p0, v2}, Lcom/android/setupwizardlib/GlifLayout;->setSystemUiVisibility(I)V

    .line 218
    sget v2, Lcom/android/setupwizardlib/R$id;->suw_pattern_bg:I

    invoke-virtual {p0, v2}, Lcom/android/setupwizardlib/GlifLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v1

    .line 219
    .local v1, "patternBg":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 221
    new-instance v0, Lcom/android/setupwizardlib/GlifPatternDrawable;

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/setupwizardlib/GlifPatternDrawable;-><init>(I)V

    .line 222
    .local v0, "background":Lcom/android/setupwizardlib/GlifPatternDrawable;
    instance-of v2, v1, Lcom/android/setupwizardlib/view/StatusBarBackgroundLayout;

    if-eqz v2, :cond_1

    .line 223
    check-cast v1, Lcom/android/setupwizardlib/view/StatusBarBackgroundLayout;

    .end local v1    # "patternBg":Landroid/view/View;
    invoke-virtual {v1, v0}, Lcom/android/setupwizardlib/view/StatusBarBackgroundLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 215
    .end local v0    # "background":Lcom/android/setupwizardlib/GlifPatternDrawable;
    :cond_0
    :goto_0
    return-void

    .line 225
    .restart local v0    # "background":Lcom/android/setupwizardlib/GlifPatternDrawable;
    .restart local v1    # "patternBg":Landroid/view/View;
    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setProgressBarColor(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 284
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifLayout;->peekProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    .line 286
    .local v0, "bar":Landroid/widget/ProgressBar;
    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 283
    .end local v0    # "bar":Landroid/widget/ProgressBar;
    :cond_0
    return-void
.end method


# virtual methods
.method protected findContainer(I)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "containerId"    # I

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 138
    sget p1, Lcom/android/setupwizardlib/R$id;->suw_layout_content:I

    .line 140
    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/TemplateLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method protected findManagedViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/GlifLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderColor()Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 186
    .local v0, "titleView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getHeaderText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 173
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 174
    .local v0, "titleView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getHeaderTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 158
    sget v0, Lcom/android/setupwizardlib/R$id;->suw_layout_title:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 197
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifLayout;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    .line 198
    .local v0, "iconView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method protected getIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 202
    sget v0, Lcom/android/setupwizardlib/R$id;->suw_layout_icon:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPrimaryColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifLayout;->mPrimaryColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getScrollView()Landroid/widget/ScrollView;
    .locals 2

    .prologue
    .line 153
    sget v1, Lcom/android/setupwizardlib/R$id;->suw_scroll_view:I

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/GlifLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    .line 154
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/ScrollView;

    .end local v0    # "view":Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0    # "view":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProgressBarShown()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 232
    sget v2, Lcom/android/setupwizardlib/R$id;->suw_layout_progress:I

    invoke-virtual {p0, v2}, Lcom/android/setupwizardlib/GlifLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    .line 233
    .local v0, "progressBar":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "template"    # I

    .prologue
    .line 122
    if-nez p2, :cond_0

    .line 123
    sget p2, Lcom/android/setupwizardlib/R$layout;->suw_glif_template:I

    .line 126
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/setupwizardlib/TemplateLayout;->onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 127
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Landroid/view/InflateException;

    const-string/jumbo v2, "Unable to inflate layout. Are you using @style/SuwThemeGlif (or its descendant) as your theme?"

    invoke-direct {v1, v2, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public peekProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 280
    sget v0, Lcom/android/setupwizardlib/R$id;->suw_layout_progress:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public setHeaderColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 179
    .local v0, "titleView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 177
    :cond_0
    return-void
.end method

.method public setHeaderText(I)V
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 161
    return-void
.end method

.method public setHeaderText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 167
    .local v0, "titleView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifLayout;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    .line 191
    .local v0, "iconView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    :cond_0
    return-void
.end method

.method public setPrimaryColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/setupwizardlib/GlifLayout;->mPrimaryColor:Landroid/content/res/ColorStateList;

    .line 207
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/GlifLayout;->setGlifPatternColor(Landroid/content/res/ColorStateList;)V

    .line 208
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/GlifLayout;->setProgressBarColor(Landroid/content/res/ColorStateList;)V

    .line 205
    return-void
.end method

.method public setProgressBarShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 237
    if-eqz p1, :cond_1

    .line 238
    invoke-direct {p0}, Lcom/android/setupwizardlib/GlifLayout;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    .line 239
    .local v0, "progressBar":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 240
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 243
    .end local v0    # "progressBar":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifLayout;->peekProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    .line 244
    .restart local v0    # "progressBar":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 245
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
