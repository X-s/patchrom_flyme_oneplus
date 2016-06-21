.class public Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;
.super Ljava/lang/Object;
.source "StatusbarIconUtil.java"


# static fields
.field private static mDarkStatusbarIconsShown:Z

.field private static mState:I


# direct methods
.method public static getSystemDisplayMetricDensity(Landroid/content/Context;)F
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 291
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static isOnNormalStatusBar()Z
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUsingDarkIcon()Z
    .locals 1

    .prologue
    .line 251
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->mDarkStatusbarIconsShown:Z

    return v0
.end method

.method public static isUsingDarkIconOnNormalStatusbar()Z
    .locals 1

    .prologue
    .line 255
    invoke-static {}, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->isOnNormalStatusBar()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->mDarkStatusbarIconsShown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setStatusbarState(I)V
    .locals 0
    .param p0, "state"    # I

    .prologue
    .line 33
    sput p0, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->mState:I

    .line 34
    return-void
.end method

.method public static setUsingDarkIcon(Z)V
    .locals 1
    .param p0, "shouldUseDarkIcon"    # Z

    .prologue
    .line 239
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->mDarkStatusbarIconsShown:Z

    if-ne v0, p0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    sput-boolean p0, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->mDarkStatusbarIconsShown:Z

    goto :goto_0
.end method

.method public static updateStatusbarIconColor(Landroid/view/View;)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 275
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 276
    invoke-static {}, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->isOnNormalStatusBar()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->mDarkStatusbarIconsShown:Z

    if-eqz v0, :cond_1

    .line 277
    const-string v0, "#B3000000"

    check-cast p0, Landroid/widget/ImageView;

    .end local p0    # "v":Landroid/view/View;
    invoke-static {v0, p0}, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->updateStatusbarIconColor(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 279
    .restart local p0    # "v":Landroid/view/View;
    :cond_1
    const-string v0, "#CCFFFFFF"

    check-cast p0, Landroid/widget/ImageView;

    .end local p0    # "v":Landroid/view/View;
    invoke-static {v0, p0}, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->updateStatusbarIconColor(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 281
    .restart local p0    # "v":Landroid/view/View;
    :cond_2
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 282
    invoke-static {}, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->isOnNormalStatusBar()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->mDarkStatusbarIconsShown:Z

    if-eqz v0, :cond_3

    .line 283
    const-string v0, "#B3000000"

    check-cast p0, Landroid/view/ViewGroup;

    .end local p0    # "v":Landroid/view/View;
    invoke-static {v0, p0}, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->updateStatusbarIconGroupColor(Ljava/lang/String;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 285
    .restart local p0    # "v":Landroid/view/View;
    :cond_3
    const-string v0, "#CCFFFFFF"

    check-cast p0, Landroid/view/ViewGroup;

    .end local p0    # "v":Landroid/view/View;
    invoke-static {v0, p0}, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->updateStatusbarIconGroupColor(Ljava/lang/String;Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method private static updateStatusbarIconColor(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2
    .param p0, "srcColor"    # Ljava/lang/String;
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 295
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 297
    .local v0, "color":I
    const-string v1, "#B3000000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 298
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 303
    :goto_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0

    .line 300
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 301
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1
.end method

.method private static updateStatusbarIconGroupColor(Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 3
    .param p0, "color"    # Ljava/lang/String;
    .param p1, "vg"    # Landroid/view/ViewGroup;

    .prologue
    .line 259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 260
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 261
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_1

    instance-of v2, v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 262
    check-cast v1, Landroid/widget/ImageView;

    .end local v1    # "view":Landroid/view/View;
    invoke-static {p0, v1}, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->updateStatusbarIconColor(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 259
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    .restart local v1    # "view":Landroid/view/View;
    :cond_1
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 264
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "view":Landroid/view/View;
    invoke-static {p0, v1}, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->updateStatusbarIconGroupColor(Ljava/lang/String;Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 267
    :cond_2
    return-void
.end method
