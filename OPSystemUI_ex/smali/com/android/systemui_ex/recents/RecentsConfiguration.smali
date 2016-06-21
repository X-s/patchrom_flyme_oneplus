.class public Lcom/android/systemui_ex/recents/RecentsConfiguration;
.super Ljava/lang/Object;
.source "RecentsConfiguration.java"


# static fields
.field static sInstance:Lcom/android/systemui_ex/recents/RecentsConfiguration;

.field static sPrevConfigurationHashCode:I


# instance fields
.field public altTabKeyDelay:I

.field public animationPxMovementPerSecond:F

.field public debugModeEnabled:Z

.field public developerOptionsEnabled:Z

.field public displayRect:Landroid/graphics/Rect;

.field public fakeShadows:Z

.field public fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field public fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field public filteringCurrentViewsAnimDuration:I

.field public filteringNewViewsAnimDuration:I

.field hasTransposedNavBar:Z

.field hasTransposedSearchBar:Z

.field isLandscape:Z

.field public launchedFromAppWithThumbnail:Z

.field public launchedFromHome:Z

.field public launchedFromSearchHome:Z

.field public launchedHasConfigurationChanged:Z

.field public launchedNumVisibleTasks:I

.field public launchedNumVisibleThumbnails:I

.field public launchedReuseTaskStackViews:Z

.field public launchedToTaskId:I

.field public launchedWithAltTab:Z

.field public launchedWithNoRecentTasks:Z

.field public linearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field public lockToAppEnabled:Z

.field public maxNumTasksToLoad:I

.field public navBarScrimEnterDuration:I

.field public quintOutInterpolator:Landroid/view/animation/Interpolator;

.field searchBarAppWidgetId:I

.field public searchBarSpaceHeightPx:I

.field public svelteLevel:I

.field public systemInsets:Landroid/graphics/Rect;

.field public taskBarDismissDozeDelaySeconds:I

.field public taskBarHeight:I

.field public taskBarViewAffiliationColorMinAlpha:F

.field public taskBarViewDarkTextColor:I

.field public taskBarViewDefaultBackgroundColor:I

.field public taskBarViewHighlightColor:I

.field public taskBarViewLightTextColor:I

.field public taskStackMaxDim:I

.field public taskStackOverscrollPct:F

.field public taskStackScrollDuration:I

.field public taskStackTopPaddingPx:I

.field public taskStackWidthPaddingPct:F

.field public taskViewAffiliateGroupEnterOffsetPx:I

.field public taskViewEnterFromAppDuration:I

.field public taskViewEnterFromHomeDuration:I

.field public taskViewEnterFromHomeStaggerDelay:I

.field public taskViewExitToAppDuration:I

.field public taskViewExitToHomeDuration:I

.field public taskViewHighlightPx:I

.field public taskViewRemoveAnimDuration:I

.field public taskViewRemoveAnimTranslationXPx:I

.field public taskViewRoundedCornerRadiusPx:I

.field public taskViewThumbnailAlpha:F

.field public taskViewTranslationZMaxPx:I

.field public taskViewTranslationZMinPx:I

.field public transitionEnterFromAppDelay:I

.field public transitionEnterFromHomeDelay:I

.field public useHardwareLayers:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    .line 151
    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 153
    const v0, 0x10c000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 155
    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->linearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 157
    const v0, 0x10c0005

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    .line 159
    return-void
.end method

.method public static getInstance()Lcom/android/systemui_ex/recents/RecentsConfiguration;
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    return-object v0
.end method

.method public static reinitialize(Landroid/content/Context;Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;)Lcom/android/systemui_ex/recents/RecentsConfiguration;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ssp"    # Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    .prologue
    .line 163
    sget-object v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    if-nez v1, :cond_0

    .line 164
    new-instance v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/recents/RecentsConfiguration;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    .line 166
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->hashCode()I

    move-result v0

    .line 167
    .local v0, "configHashCode":I
    sget v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->sPrevConfigurationHashCode:I

    if-eq v1, v0, :cond_1

    .line 168
    sget-object v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    invoke-virtual {v1, p0}, Lcom/android/systemui_ex/recents/RecentsConfiguration;->update(Landroid/content/Context;)V

    .line 169
    sput v0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->sPrevConfigurationHashCode:I

    .line 171
    :cond_1
    sget-object v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    invoke-virtual {v1, p0, p1}, Lcom/android/systemui_ex/recents/RecentsConfiguration;->updateOnReinitialize(Landroid/content/Context;Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;)V

    .line 172
    sget-object v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    return-object v1
.end method


# virtual methods
.method public getSearchBarBounds(IIILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "windowWidth"    # I
    .param p2, "windowHeight"    # I
    .param p3, "topInset"    # I
    .param p4, "searchBarSpaceBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 376
    iget v0, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->searchBarSpaceHeightPx:I

    .line 378
    .local v0, "searchBarSize":I
    const/4 v0, 0x0

    .line 381
    iget-boolean v1, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->hasTransposedSearchBar:Z

    if-eqz v1, :cond_0

    .line 383
    invoke-virtual {p4, v2, p3, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 388
    :goto_0
    return-void

    .line 386
    :cond_0
    add-int v1, p3, v0

    invoke-virtual {p4, v2, p3, p1, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public getTaskStackBounds(IIIILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "windowWidth"    # I
    .param p2, "windowHeight"    # I
    .param p3, "topInset"    # I
    .param p4, "rightInset"    # I
    .param p5, "taskStackBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 358
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 359
    .local v0, "searchBarBounds":Landroid/graphics/Rect;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui_ex/recents/RecentsConfiguration;->getSearchBarBounds(IIILandroid/graphics/Rect;)V

    .line 360
    iget-boolean v1, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->hasTransposedSearchBar:Z

    if-eqz v1, :cond_0

    .line 362
    sub-int v1, p1, p4

    invoke-virtual {p5, v2, p3, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p5, v2, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public hasNavBarScrim()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->isLandscape:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSearchBarAppWidget()Z
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatusBarScrim()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldAnimateNavBarScrim()Z
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x1

    return v0
.end method

.method public shouldAnimateStatusBarScrim()Z
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedFromHome:Z

    return v0
.end method

.method update(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 183
    .local v3, "settings":Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 184
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 187
    .local v1, "dm":Landroid/util/DisplayMetrics;
    sget-object v7, Lcom/android/systemui_ex/recents/Constants$Values$App;->Key_DebugModeEnabled:Ljava/lang/String;

    invoke-interface {v3, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->debugModeEnabled:Z

    .line 188
    iget-boolean v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v7, :cond_0

    .line 189
    sput-boolean v8, Lcom/android/systemui_ex/recents/misc/Console;->Enabled:Z

    .line 193
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v7, v10, :cond_1

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->isLandscape:Z

    .line 194
    const v7, 0x7f090012

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->hasTransposedSearchBar:Z

    .line 195
    const v7, 0x7f090013

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    .line 198
    iget-object v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    iget v10, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v11, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v7, v9, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 201
    const v7, 0x7f0d0067

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->animationPxMovementPerSecond:F

    .line 205
    const v7, 0x7f0a0019

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->filteringCurrentViewsAnimDuration:I

    .line 207
    const v7, 0x7f0a001a

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->filteringNewViewsAnimDuration:I

    .line 211
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->maxNumTasksToLoad:I

    .line 214
    const v7, 0x7f0d0063

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->searchBarSpaceHeightPx:I

    .line 215
    sget-object v7, Lcom/android/systemui_ex/recents/Constants$Values$App;->Key_SearchAppWidgetId:Ljava/lang/String;

    const/4 v9, -0x1

    invoke-interface {v3, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    .line 218
    const v7, 0x7f0a0024

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskStackScrollDuration:I

    .line 220
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 221
    .local v6, "widthPaddingPctValue":Landroid/util/TypedValue;
    const v7, 0x7f0d0064

    invoke-virtual {v2, v7, v6, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 222
    invoke-virtual {v6}, Landroid/util/TypedValue;->getFloat()F

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskStackWidthPaddingPct:F

    .line 223
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 224
    .local v4, "stackOverscrollPctValue":Landroid/util/TypedValue;
    const v7, 0x7f0d0065

    invoke-virtual {v2, v7, v4, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 225
    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskStackOverscrollPct:F

    .line 226
    const v7, 0x7f0a0025

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskStackMaxDim:I

    .line 227
    const v7, 0x7f0d0066

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskStackTopPaddingPx:I

    .line 230
    const v7, 0x7f0a001b

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->transitionEnterFromAppDelay:I

    .line 232
    const v7, 0x7f0a001e

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->transitionEnterFromHomeDelay:I

    .line 236
    const v7, 0x7f0a001c

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewEnterFromAppDuration:I

    .line 238
    const v7, 0x7f0a001f

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewEnterFromHomeDuration:I

    .line 240
    const v7, 0x7f0a0020

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewEnterFromHomeStaggerDelay:I

    .line 242
    const v7, 0x7f0a001d

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewExitToAppDuration:I

    .line 244
    const v7, 0x7f0a0021

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewExitToHomeDuration:I

    .line 246
    const v7, 0x7f0a0023

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewRemoveAnimDuration:I

    .line 248
    const v7, 0x7f0d005d

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewRemoveAnimTranslationXPx:I

    .line 250
    const v7, 0x7f0d005a

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewRoundedCornerRadiusPx:I

    .line 252
    const v7, 0x7f0d005e

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewHighlightPx:I

    .line 253
    const v7, 0x7f0d005b

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewTranslationZMinPx:I

    .line 254
    const v7, 0x7f0d005c

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewTranslationZMaxPx:I

    .line 255
    const v7, 0x7f0d0060

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewAffiliateGroupEnterOffsetPx:I

    .line 257
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 258
    .local v5, "thumbnailAlphaValue":Landroid/util/TypedValue;
    const v7, 0x7f0d0061

    invoke-virtual {v2, v7, v5, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 259
    invoke-virtual {v5}, Landroid/util/TypedValue;->getFloat()F

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewThumbnailAlpha:F

    .line 262
    const v7, 0x7f080021

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskBarViewDefaultBackgroundColor:I

    .line 264
    const v7, 0x7f080022

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskBarViewLightTextColor:I

    .line 266
    const v7, 0x7f080023

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskBarViewDarkTextColor:I

    .line 268
    const v7, 0x7f080026

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskBarViewHighlightColor:I

    .line 270
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 271
    .local v0, "affMinAlphaPctValue":Landroid/util/TypedValue;
    const v7, 0x7f0d0068

    invoke-virtual {v2, v7, v0, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 272
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskBarViewAffiliationColorMinAlpha:F

    .line 275
    const v7, 0x7f0d0062

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskBarHeight:I

    .line 276
    const v7, 0x7f0a0018

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskBarDismissDozeDelaySeconds:I

    .line 280
    const v7, 0x7f0a0022

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->navBarScrimEnterDuration:I

    .line 284
    const v7, 0x7f090002

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->useHardwareLayers:Z

    .line 285
    const v7, 0x7f0a0026

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->altTabKeyDelay:I

    .line 286
    const v7, 0x7f090003

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->fakeShadows:Z

    .line 287
    const v7, 0x7f0a0027

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->svelteLevel:I

    .line 288
    return-void

    .end local v0    # "affMinAlphaPctValue":Landroid/util/TypedValue;
    .end local v4    # "stackOverscrollPctValue":Landroid/util/TypedValue;
    .end local v5    # "thumbnailAlphaValue":Landroid/util/TypedValue;
    .end local v6    # "widthPaddingPctValue":Landroid/util/TypedValue;
    :cond_1
    move v7, v9

    .line 193
    goto/16 :goto_0
.end method

.method public updateOnConfigurationChange()V
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedReuseTaskStackViews:Z

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    .line 319
    return-void
.end method

.method updateOnReinitialize(Landroid/content/Context;Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ssp"    # Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 306
    const-string v0, "development_settings_enabled"

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->getGlobalSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->developerOptionsEnabled:Z

    .line 308
    const-string v0, "lock_to_app_enabled"

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->lockToAppEnabled:Z

    .line 310
    return-void

    :cond_0
    move v0, v2

    .line 306
    goto :goto_0

    :cond_1
    move v1, v2

    .line 308
    goto :goto_1
.end method

.method public updateSearchBarAppWidgetId(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I

    .prologue
    .line 297
    iput p2, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    .line 298
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 299
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/android/systemui_ex/recents/Constants$Values$App;->Key_SearchAppWidgetId:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 301
    return-void
.end method

.method public updateSystemInsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 293
    return-void
.end method
