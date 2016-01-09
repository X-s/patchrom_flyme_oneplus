.class final Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
.super Landroid/widget/FrameLayout;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/RootViewSurfaceTaker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DecorView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;
    }
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModePopup:Landroid/widget/PopupWindow;

.field private mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

.field private final mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

.field private final mBackgroundPadding:Landroid/graphics/Rect;

.field private final mBarEnterExitDuration:I

.field private mChanging:Z

.field mDefaultOpacity:I

.field private mDownY:I

.field private final mDrawingBounds:Landroid/graphics/Rect;

.field private final mFeatureId:I

.field private final mFrameOffsets:Landroid/graphics/Rect;

.field private final mFramePadding:Landroid/graphics/Rect;

.field private final mHideInterpolator:Landroid/view/animation/Interpolator;

.field private mLastBottomInset:I

.field private mLastHasBottomStableInset:Z

.field private mLastHasTopStableInset:Z

.field private mLastRightInset:I

.field private mLastTopInset:I

.field private mLastWindowFlags:I

.field private mMenuBackground:Landroid/graphics/drawable/Drawable;

.field private mMzDragInStatusBar:Z

.field private mMzStatusBarRect:Landroid/graphics/Rect;

.field private final mNavigationColorViewState:Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

.field private mNavigationGuard:Landroid/view/View;

.field private mRootScrollY:I

.field private mShowActionModePopup:Ljava/lang/Runnable;

.field private final mShowInterpolator:Landroid/view/animation/Interpolator;

.field private final mStatusColorViewState:Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

.field private mStatusGuard:Landroid/view/View;

.field private mWatchingForMenu:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/content/Context;I)V
    .locals 8
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "featureId"    # I

    .prologue
    const/4 v7, 0x0

    .line 2230
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    .line 2231
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2173
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDefaultOpacity:I

    .line 2178
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    .line 2180
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 2182
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 2184
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 2202
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

    const/4 v1, 0x4

    const/high16 v2, 0x4000000

    const/16 v3, 0x30

    const-string v4, "android:status:background"

    const v5, #android:id@statusBarBackground#t

    const/16 v6, 0x400

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;-><init>(IIILjava/lang/String;II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mStatusColorViewState:Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

    .line 2208
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

    const/4 v1, 0x2

    const/high16 v2, 0x8000000

    const/16 v3, 0x50

    const-string v4, "android:navigation:background"

    const v5, #android:id@navigationBarBackground#t

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;-><init>(IIILjava/lang/String;II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

    new-instance v0, Lcom/android/internal/widget/BackgroundFallback;

    invoke-direct {v0}, Lcom/android/internal/widget/BackgroundFallback;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastTopInset:I

    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastBottomInset:I

    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastRightInset:I

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastHasTopStableInset:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastHasBottomStableInset:Z

    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastWindowFlags:I

    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mRootScrollY:I

    iput p3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    const v0, #android:interpolator@linear_out_slow_in#t

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    const v0, #android:interpolator@fast_out_linear_in#t

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    .line 2239
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:integer@dock_enter_exit_duration#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBarEnterExitDuration:I

    .line 2241
    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .prologue
    .line 2171
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .prologue
    .line 2171
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .prologue
    .line 2171
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mShowActionModePopup:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .param p1, "x1"    # Landroid/view/WindowInsets;
    .param p2, "x2"    # Z

    .prologue
    .line 2171
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .prologue
    .line 2171
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 2171
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method private drawableChanged()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    .line 3108
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mChanging:Z

    if-eqz v5, :cond_1

    .line 3165
    :cond_0
    :goto_0
    return-void

    .line 3112
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setPadding(IIII)V

    .line 3115
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->requestLayout()V

    .line 3116
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->invalidate()V

    .line 3118
    const/4 v4, -0x1

    .line 3124
    .local v4, "opacity":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3125
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3126
    .local v2, "fg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 3127
    if-nez v2, :cond_3

    .line 3128
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v4

    .line 3161
    :cond_2
    :goto_1
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDefaultOpacity:I

    .line 3162
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v5, :cond_0

    .line 3163
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow;->setDefaultWindowFormat(I)V
    invoke-static {v5, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2100(Lcom/android/internal/policy/impl/PhoneWindow;I)V

    goto :goto_0

    .line 3129
    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-gtz v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gtz v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-gtz v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-gtz v5, :cond_8

    .line 3133
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    .line 3134
    .local v3, "fop":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    .line 3137
    .local v1, "bop":I
    if-eq v3, v10, :cond_4

    if-ne v1, v10, :cond_5

    .line 3138
    :cond_4
    const/4 v4, -0x1

    goto :goto_1

    .line 3139
    :cond_5
    if-nez v3, :cond_6

    .line 3140
    move v4, v1

    goto :goto_1

    .line 3141
    :cond_6
    if-nez v1, :cond_7

    .line 3142
    move v4, v3

    goto :goto_1

    .line 3144
    :cond_7
    invoke-static {v3, v1}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v4

    goto :goto_1

    .line 3152
    .end local v1    # "bop":I
    .end local v3    # "fop":I
    :cond_8
    const/4 v4, -0x3

    goto :goto_1
.end method

.method private isOutOfBounds(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, -0x5

    .line 2406
    if-lt p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-le p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateColorViewInt(Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;IIIZ)V
    .locals 9
    .param p1, "state"    # Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;
    .param p2, "sysUiVis"    # I
    .param p3, "color"    # I
    .param p4, "height"    # I
    .param p5, "animate"    # Z

    .prologue
    .line 2932
    if-lez p4, :cond_3

    iget v5, p1, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->systemUiHideFlag:I

    and-int/2addr v5, p2

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->hideWindowFlag:I

    and-int/2addr v5, v6

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->translucentFlag:I

    and-int/2addr v5, v6

    if-nez v5, :cond_3

    const/high16 v5, -0x1000000

    and-int/2addr v5, p3

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, -0x80000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_3

    const/4 v1, 0x1

    .line 2938
    .local v1, "show":Z
    :goto_0
    const/4 v4, 0x0

    .line 2939
    .local v4, "visibilityChanged":Z
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    .line 2941
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_4

    .line 2942
    if-eqz v1, :cond_0

    .line 2943
    new-instance v2, Landroid/view/View;

    .end local v2    # "view":Landroid/view/View;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .restart local v2    # "view":Landroid/view/View;
    iput-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    .line 2944
    invoke-virtual {v2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2945
    iget-object v5, p1, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->transitionName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 2946
    iget v5, p1, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->id:I

    invoke-virtual {v2, v5}, Landroid/view/View;->setId(I)V

    .line 2947
    const/4 v4, 0x1

    .line 2948
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2949
    const/4 v5, 0x0

    iput v5, p1, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->targetVisibility:I

    .line 2951
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    const v7, 0x800003

    iget v8, p1, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->verticalGravity:I

    or-int/2addr v7, v8

    invoke-direct {v5, v6, p4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v2, v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2953
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateColorViewTranslations()V

    .line 2968
    :cond_0
    :goto_1
    if-eqz v4, :cond_2

    .line 2969
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2970
    if-eqz p5, :cond_9

    .line 2971
    if-eqz v1, :cond_8

    .line 2972
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    .line 2973
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2974
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 2976
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBarEnterExitDuration:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2994
    :cond_2
    :goto_2
    return-void

    .line 2932
    .end local v1    # "show":Z
    .end local v2    # "view":Landroid/view/View;
    .end local v4    # "visibilityChanged":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 2956
    .restart local v1    # "show":Z
    .restart local v2    # "view":Landroid/view/View;
    .restart local v4    # "visibilityChanged":Z
    :cond_4
    if-eqz v1, :cond_6

    const/4 v3, 0x0

    .line 2957
    .local v3, "vis":I
    :goto_3
    iget v5, p1, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->targetVisibility:I

    if-eq v5, v3, :cond_7

    const/4 v4, 0x1

    .line 2958
    :goto_4
    iput v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->targetVisibility:I

    .line 2959
    if-eqz v1, :cond_0

    .line 2960
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2961
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v5, p4, :cond_5

    .line 2962
    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2963
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2965
    :cond_5
    invoke-virtual {v2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 2956
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "vis":I
    :cond_6
    const/4 v3, 0x4

    goto :goto_3

    .line 2957
    .restart local v3    # "vis":I
    :cond_7
    const/4 v4, 0x0

    goto :goto_4

    .line 2979
    .end local v3    # "vis":I
    :cond_8
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBarEnterExitDuration:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;

    invoke-direct {v6, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_2

    .line 2990
    :cond_9
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 2991
    if-eqz v1, :cond_a

    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_a
    const/4 v5, 0x4

    goto :goto_5
.end method

.method private updateColorViewTranslations()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2999
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mRootScrollY:I

    .line 3000
    .local v0, "rootScrollY":I
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mStatusColorViewState:Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3001
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mStatusColorViewState:Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

    iget-object v3, v1, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-lez v0, :cond_3

    int-to-float v1, v0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 3003
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 3004
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-gez v0, :cond_1

    int-to-float v2, v0

    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 3006
    :cond_2
    return-void

    :cond_3
    move v1, v2

    .line 3001
    goto :goto_0
.end method

.method private updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    .locals 14
    .param p1, "insets"    # Landroid/view/WindowInsets;
    .param p2, "animate"    # Z

    .prologue
    .line 2854
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 2855
    .local v6, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getWindowSystemUiVisibility()I

    move-result v1

    or-int v2, v0, v1

    .line 2857
    .local v2, "sysUiVisibility":I
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1600(Lcom/android/internal/policy/impl/PhoneWindow;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2858
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v10, 0x1

    .line 2859
    .local v10, "disallowAnimate":Z
    :goto_0
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastWindowFlags:I

    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/2addr v0, v1

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_1
    or-int/2addr v10, v0

    .line 2861
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastWindowFlags:I

    .line 2863
    if-eqz p1, :cond_0

    .line 2864
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastTopInset:I

    .line 2866
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastBottomInset:I

    .line 2868
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastRightInset:I

    .line 2874
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v12, 0x1

    .line 2875
    .local v12, "hasTopStableInset":Z
    :goto_2
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastHasTopStableInset:Z

    if-eq v12, v0, :cond_9

    const/4 v0, 0x1

    :goto_3
    or-int/2addr v10, v0

    .line 2876
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastHasTopStableInset:Z

    .line 2878
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v11, 0x1

    .line 2879
    .local v11, "hasBottomStableInset":Z
    :goto_4
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastHasBottomStableInset:Z

    if-eq v11, v0, :cond_b

    const/4 v0, 0x1

    :goto_5
    or-int/2addr v10, v0

    .line 2880
    iput-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastHasBottomStableInset:Z

    .line 2883
    .end local v11    # "hasBottomStableInset":Z
    .end local v12    # "hasTopStableInset":Z
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mStatusColorViewState:Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mStatusBarColor:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1700(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastTopInset:I

    if-eqz p2, :cond_c

    if-nez v10, :cond_c

    const/4 v5, 0x1

    :goto_6
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateColorViewInt(Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;IIIZ)V

    goto :goto_8

    .line 2885
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mNavigationBarColor:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1800(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastBottomInset:I

    if-eqz p2, :cond_d

    if-nez v10, :cond_d

    const/4 v5, 0x1

    :goto_7
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateColorViewInt(Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;IIIZ)V

    .line 2893
    .end local v10    # "disallowAnimate":Z
    :cond_1
    :goto_8
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_e

    and-int/lit16 v0, v2, 0x200

    if-nez v0, :cond_e

    and-int/lit8 v0, v2, 0x2

    if-nez v0, :cond_e

    const/4 v9, 0x1

    .local v9, "consumingNavBar":Z
    :goto_9
    if-eqz v9, :cond_f

    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastRightInset:I

    .local v8, "consumedRight":I
    :goto_a
    if-eqz v9, :cond_10

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastBottomInset:I

    .local v7, "consumedBottom":I
    :goto_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$600(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$600(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_4

    .line 2903
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$600(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2904
    .local v13, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-ne v0, v8, :cond_2

    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v0, v7, :cond_3

    .line 2905
    :cond_2
    iput v8, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2906
    iput v7, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2907
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$600(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2909
    if-nez p1, :cond_3

    .line 2912
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->requestApplyInsets()V

    .line 2915
    :cond_3
    if-eqz p1, :cond_4

    .line 2916
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    .line 2924
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_4
    if-eqz p1, :cond_5

    .line 2925
    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object p1

    .line 2927
    :cond_5
    return-object p1

    .line 2858
    .end local v7    # "consumedBottom":I
    .end local v8    # "consumedRight":I
    .end local v9    # "consumingNavBar":Z
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 2859
    .restart local v10    # "disallowAnimate":Z
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 2874
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 2875
    .restart local v12    # "hasTopStableInset":Z
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 2878
    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 2879
    .restart local v11    # "hasBottomStableInset":Z
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 2883
    .end local v11    # "hasBottomStableInset":Z
    .end local v12    # "hasTopStableInset":Z
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_6

    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_7

    .end local v10    # "disallowAnimate":Z
    :cond_e
    const/4 v9, 0x0

    goto :goto_9

    .restart local v9    # "consumingNavBar":Z
    :cond_f
    const/4 v8, 0x0

    goto :goto_a

    .restart local v8    # "consumedRight":I
    :cond_10
    const/4 v7, 0x0

    goto :goto_b
.end method

.method private updateNavigationGuard(Landroid/view/WindowInsets;)V
    .locals 8
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 3080
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v2, v3, :cond_1

    .line 3082
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$700(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3083
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$700(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    .line 3084
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$700(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3086
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 3087
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$700(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3091
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    if-nez v2, :cond_2

    .line 3092
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    .line 3093
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, #android:color@input_method_navigation_guard#t

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3095
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->indexOfChild(Landroid/view/View;)I

    move-result v3

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v6

    const v7, 0x800053

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3105
    :cond_1
    :goto_0
    return-void

    .line 3100
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3101
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3102
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 13
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 3009
    const/4 v6, 0x0

    .line 3011
    .local v6, "showStatusGuard":Z
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v7, :cond_3

    .line 3012
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    instance-of v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_3

    .line 3014
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3016
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v2, 0x0

    .line 3017
    .local v2, "mlpChanged":Z
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->isShown()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 3018
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1900(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v7

    if-nez v7, :cond_0

    .line 3019
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    # setter for: Lcom/android/internal/policy/impl/PhoneWindow;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1902(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 3021
    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1900(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v5

    .line 3025
    .local v5, "rect":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->access$700(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7, p1, v5}, Landroid/view/ViewGroup;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    .line 3026
    iget v7, v5, Landroid/graphics/Rect;->top:I

    if-nez v7, :cond_5

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    .line 3027
    .local v3, "newMargin":I
    :goto_0
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v7, v3, :cond_1

    .line 3028
    const/4 v2, 0x1

    .line 3029
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v7

    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3031
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    if-nez v7, :cond_6

    .line 3032
    new-instance v7, Landroid/view/View;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    .line 3033
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, #android:color@input_method_navigation_guard#t

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3035
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mStatusColorViewState:Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

    iget-object v8, v8, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->indexOfChild(Landroid/view/View;)I

    move-result v8

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    iget v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const v12, 0x800033

    invoke-direct {v9, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3050
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v7, :cond_7

    const/4 v6, 0x1

    .line 3056
    :goto_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2000(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v7

    and-int/lit16 v7, v7, 0x400

    if-nez v7, :cond_8

    const/4 v4, 0x1

    .line 3058
    .local v4, "nonOverlay":Z
    :goto_3
    const/4 v8, 0x0

    if-eqz v4, :cond_9

    if-eqz v6, :cond_9

    const/4 v7, 0x1

    :goto_4
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1, v8, v7, v9, v10}, Landroid/view/WindowInsets;->consumeSystemWindowInsets(ZZZZ)Landroid/view/WindowInsets;

    move-result-object p1

    .line 3067
    .end local v3    # "newMargin":I
    .end local v4    # "nonOverlay":Z
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_2
    :goto_5
    if-eqz v2, :cond_3

    .line 3068
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v1}, Lcom/android/internal/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3072
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "mlpChanged":Z
    :cond_3
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v7, :cond_4

    .line 3073
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v6, :cond_b

    const/4 v7, 0x0

    :goto_6
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3075
    :cond_4
    return-object p1

    .line 3026
    .restart local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v2    # "mlpChanged":Z
    .restart local v5    # "rect":Landroid/graphics/Rect;
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 3039
    .restart local v3    # "newMargin":I
    :cond_6
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3041
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v7, v8, :cond_1

    .line 3042
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3043
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 3050
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 3056
    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    .line 3058
    .restart local v4    # "nonOverlay":Z
    :cond_9
    const/4 v7, 0x0

    goto :goto_4

    .line 3062
    .end local v3    # "newMargin":I
    .end local v4    # "nonOverlay":Z
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_a
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v7, :cond_2

    .line 3063
    const/4 v2, 0x1

    .line 3064
    const/4 v7, 0x0

    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_5

    .line 3073
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "mlpChanged":Z
    :cond_b
    const/16 v7, 0x8

    goto :goto_6
.end method


# virtual methods
.method public dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 2387
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindow;->mOutsetBottom:Landroid/util/TypedValue;

    if-eqz v3, :cond_0

    .line 2388
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2389
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindow;->mOutsetBottom:Landroid/util/TypedValue;

    invoke-virtual {v3, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v0, v3

    .line 2390
    .local v0, "bottom":I
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v5

    invoke-virtual {p1, v3, v4, v5, v0}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v2

    .line 2393
    .local v2, "newInsets":Landroid/view/WindowInsets;
    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v3

    .line 2395
    .end local v0    # "bottom":I
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    .end local v2    # "newInsets":Landroid/view/WindowInsets;
    :goto_0
    return-object v3

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v3

    goto :goto_0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2348
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2349
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2256
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 2257
    .local v4, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2258
    .local v0, "action":I
    if-nez v0, :cond_1

    move v3, v5

    .line 2260
    .local v3, "isDown":Z
    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_3

    .line 2263
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->access$800(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v7

    if-lez v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->access$800(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v7

    if-eq v7, v4, :cond_2

    .line 2264
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 2265
    .local v2, "handled":Z
    if-eqz v2, :cond_2

    .line 2288
    .end local v2    # "handled":Z
    :cond_0
    :goto_1
    return v5

    .end local v3    # "isDown":Z
    :cond_1
    move v3, v6

    .line 2258
    goto :goto_0

    .line 2272
    .restart local v3    # "isDown":Z
    :cond_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->access$900(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->access$900(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v7, :cond_3

    .line 2273
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->access$900(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v8

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    invoke-static {v7, v8, v4, p1, v6}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1000(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2279
    :cond_3
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v6

    if-nez v6, :cond_5

    .line 2280
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    .line 2281
    .local v1, "cb":Landroid/view/Window$Callback;
    if-eqz v1, :cond_6

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v6, :cond_6

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .restart local v2    # "handled":Z
    :goto_2
    invoke-static/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindow$FlymeInjector;->mzDispatchKeyEvent(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x1

    return v5

    :cond_4
    if-nez v2, :cond_0

    .end local v1    # "cb":Landroid/view/Window$Callback;
    .end local v2    # "handled":Z
    :cond_5
    if-eqz v3, :cond_7

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v5, v6, v7, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->onKeyDown(IILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_1

    .line 2281
    .restart local v1    # "cb":Landroid/view/Window$Callback;
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_2

    .line 2288
    .end local v1    # "cb":Landroid/view/Window$Callback;
    :cond_7
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v5, v6, v7, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->onKeyUp(IILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2296
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->access$900(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2297
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v6}, Lcom/android/internal/policy/impl/PhoneWindow;->access$900(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    invoke-static {v5, v6, v7, p1, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1000(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v1

    .line 2299
    .local v1, "handled":Z
    if-eqz v1, :cond_1

    .line 2300
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$900(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2301
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$900(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v4

    iput-boolean v3, v4, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 2329
    :cond_0
    :goto_0
    return v3

    .line 2308
    .end local v1    # "handled":Z
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2309
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_3

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v5, :cond_3

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2311
    .restart local v1    # "handled":Z
    :goto_1
    if-nez v1, :cond_0

    .line 2319
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v5, v4, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1100(Lcom/android/internal/policy/impl/PhoneWindow;IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 2320
    .local v2, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->access$900(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v5

    if-nez v5, :cond_2

    .line 2321
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v5, v2, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 2322
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    invoke-static {v5, v2, v6, p1, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1000(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v1

    .line 2324
    iput-boolean v4, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 2325
    if-nez v1, :cond_0

    :cond_2
    move v3, v4

    .line 2329
    goto :goto_0

    .line 2309
    .end local v1    # "handled":Z
    .end local v2    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2509
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2510
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2511
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2512
    const/4 v1, 0x1

    .line 2515
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2334
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2335
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2341
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2342
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2655
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2657
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2658
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2660
    :cond_0
    return-void
.end method

.method public finishChanging()V
    .locals 1

    .prologue
    .line 2795
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mChanging:Z

    .line 2796
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->drawableChanged()V

    .line 2797
    return-void
.end method

.method public isTransitionGroup()Z
    .locals 1

    .prologue
    .line 2850
    const/4 v0, 0x0

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 2838
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2839
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    move-result-object p1

    .line 2840
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 2841
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateNavigationGuard(Landroid/view/WindowInsets;)V

    .line 2842
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2843
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->drawableChanged()V

    .line 2845
    :cond_0
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 3191
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 3193
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateWindowResizeState()V

    .line 3195
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3196
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    .line 3197
    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 3200
    :cond_0
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 3208
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow;->openPanelsAfterRestore()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2200(Lcom/android/internal/policy/impl/PhoneWindow;)V

    .line 3210
    :cond_1
    return-void
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 3241
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-ltz v0, :cond_0

    .line 3242
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->closeAllPanels()V

    .line 3244
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3214
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 3216
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3217
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v2, :cond_0

    .line 3218
    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 3221
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2300(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/widget/DecorContentParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3222
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2300(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/widget/DecorContentParent;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/widget/DecorContentParent;->dismissPopups()V

    .line 3225
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_3

    .line 3226
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3227
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3228
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3230
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 3233
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v2, v3, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1100(Lcom/android/internal/policy/impl/PhoneWindow;IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 3234
    .local v1, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v2, :cond_4

    .line 3235
    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    .line 3237
    :cond_4
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 2250
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2251
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$600(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$700(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/widget/BackgroundFallback;->draw(Landroid/view/ViewGroup;Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 2252
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2412
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2413
    .local v0, "action":I
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-ltz v3, :cond_0

    .line 2414
    if-nez v0, :cond_0

    .line 2415
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 2416
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 2417
    .local v2, "y":I
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->isOutOfBounds(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2418
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(I)V

    .line 2419
    const/4 v3, 0x1

    .line 2425
    .end local v1    # "x":I
    .end local v2    # "y":I
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 2564
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 2565
    .local v9, "metrics":Landroid/util/DisplayMetrics;
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    const/4 v7, 0x1

    .line 2567
    .local v7, "isPortrait":Z
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 2568
    .local v18, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 2570
    .local v5, "heightMode":I
    const/4 v2, 0x0

    .line 2571
    .local v2, "fixedWidth":Z
    const/high16 v20, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 2572
    if-eqz v7, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v15, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 2573
    .local v15, "tvw":Landroid/util/TypedValue;
    :goto_1
    if-eqz v15, :cond_0

    iget v0, v15, Landroid/util/TypedValue;->type:I

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 2575
    iget v0, v15, Landroid/util/TypedValue;->type:I

    move/from16 v20, v0

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 2576
    invoke-virtual {v15, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v16, v0

    .line 2583
    .local v16, "w":I
    :goto_2
    if-lez v16, :cond_0

    .line 2584
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 2585
    .local v19, "widthSize":I
    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v20

    const/high16 v21, 0x40000000    # 2.0f

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2587
    const/4 v2, 0x1

    .line 2592
    .end local v15    # "tvw":Landroid/util/TypedValue;
    .end local v16    # "w":I
    .end local v19    # "widthSize":I
    :cond_0
    const/high16 v20, -0x80000000

    move/from16 v0, v20

    if-ne v5, v0, :cond_1

    .line 2593
    if-eqz v7, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v14, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 2594
    .local v14, "tvh":Landroid/util/TypedValue;
    :goto_3
    if-eqz v14, :cond_1

    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 2596
    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v20, v0

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 2597
    invoke-virtual {v14, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v20

    move/from16 v0, v20

    float-to-int v3, v0

    .line 2603
    .local v3, "h":I
    :goto_4
    if-lez v3, :cond_1

    .line 2604
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 2605
    .local v6, "heightSize":I
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v20

    const/high16 v21, 0x40000000    # 2.0f

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 2611
    .end local v3    # "h":I
    .end local v6    # "heightSize":I
    .end local v14    # "tvh":Landroid/util/TypedValue;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mOutsetBottom:Landroid/util/TypedValue;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 2612
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 2613
    .local v11, "mode":I
    if-eqz v11, :cond_2

    .line 2614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mOutsetBottom:Landroid/util/TypedValue;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v20

    move/from16 v0, v20

    float-to-int v12, v0

    .line 2615
    .local v12, "outset":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 2616
    .local v4, "height":I
    add-int v20, v4, v12

    move/from16 v0, v20

    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 2620
    .end local v4    # "height":I
    .end local v11    # "mode":I
    .end local v12    # "outset":I
    :cond_2
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2622
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getMeasuredWidth()I

    move-result v17

    .line 2623
    .local v17, "width":I
    const/4 v8, 0x0

    .line 2625
    .local v8, "measure":Z
    const/high16 v20, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2627
    if-nez v2, :cond_3

    const/high16 v20, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 2628
    if-eqz v7, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 2629
    .local v13, "tv":Landroid/util/TypedValue;
    :goto_5
    iget v0, v13, Landroid/util/TypedValue;->type:I

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 2631
    iget v0, v13, Landroid/util/TypedValue;->type:I

    move/from16 v20, v0

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 2632
    invoke-virtual {v13, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v20

    move/from16 v0, v20

    float-to-int v10, v0

    .line 2639
    .local v10, "min":I
    :goto_6
    move/from16 v0, v17

    if-ge v0, v10, :cond_3

    .line 2640
    const/high16 v20, 0x40000000    # 2.0f

    move/from16 v0, v20

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2641
    const/4 v8, 0x1

    .line 2648
    .end local v10    # "min":I
    .end local v13    # "tv":Landroid/util/TypedValue;
    :cond_3
    if-eqz v8, :cond_4

    .line 2649
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2651
    :cond_4
    return-void

    .line 2565
    .end local v2    # "fixedWidth":Z
    .end local v5    # "heightMode":I
    .end local v7    # "isPortrait":Z
    .end local v8    # "measure":Z
    .end local v17    # "width":I
    .end local v18    # "widthMode":I
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 2572
    .restart local v2    # "fixedWidth":Z
    .restart local v5    # "heightMode":I
    .restart local v7    # "isPortrait":Z
    .restart local v18    # "widthMode":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v15, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    goto/16 :goto_1

    .line 2577
    .restart local v15    # "tvw":Landroid/util/TypedValue;
    :cond_7
    iget v0, v15, Landroid/util/TypedValue;->type:I

    move/from16 v20, v0

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 2578
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v16, v0

    .restart local v16    # "w":I
    goto/16 :goto_2

    .line 2580
    .end local v16    # "w":I
    :cond_8
    const/16 v16, 0x0

    .restart local v16    # "w":I
    goto/16 :goto_2

    .line 2593
    .end local v15    # "tvw":Landroid/util/TypedValue;
    .end local v16    # "w":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v14, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    goto/16 :goto_3

    .line 2598
    .restart local v14    # "tvh":Landroid/util/TypedValue;
    :cond_a
    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v20, v0

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 2599
    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v20

    move/from16 v0, v20

    float-to-int v3, v0

    .restart local v3    # "h":I
    goto/16 :goto_4

    .line 2601
    .end local v3    # "h":I
    :cond_b
    const/4 v3, 0x0

    .restart local v3    # "h":I
    goto/16 :goto_4

    .line 2628
    .end local v3    # "h":I
    .end local v14    # "tvh":Landroid/util/TypedValue;
    .restart local v8    # "measure":Z
    .restart local v17    # "width":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    goto/16 :goto_5

    .line 2633
    .restart local v13    # "tv":Landroid/util/TypedValue;
    :cond_d
    iget v0, v13, Landroid/util/TypedValue;->type:I

    move/from16 v20, v0

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 2634
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v20

    move/from16 v0, v20

    float-to-int v10, v0

    .restart local v10    # "min":I
    goto/16 :goto_6

    .line 2636
    .end local v10    # "min":I
    :cond_e
    const/4 v10, 0x0

    .restart local v10    # "min":I
    goto/16 :goto_6
.end method

.method public onRootViewScrollYChanged(I)V
    .locals 0
    .param p1, "rootScrollY"    # I

    .prologue
    .line 3269
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mRootScrollY:I

    .line 3270
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateColorViewTranslations()V

    .line 3271
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2402
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v2, 0x0

    .line 3169
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 3173
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$800(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 3174
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(I)V

    .line 3177
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3178
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_1

    .line 3179
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 3181
    :cond_1
    return-void
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 2
    .param p1, "visible"    # I

    .prologue
    .line 2833
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 2834
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 2
    .param p1, "eventType"    # I

    .prologue
    .line 2489
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2505
    :goto_0
    return-void

    .line 2496
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2501
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 2503
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2813
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2814
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2815
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateWindowResizeState()V

    .line 2817
    :cond_0
    return-void
.end method

.method public setBackgroundFallback(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 2244
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/BackgroundFallback;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2245
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    invoke-virtual {v0}, Lcom/android/internal/widget/BackgroundFallback;->hasFallback()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setWillNotDraw(Z)V

    .line 2246
    return-void

    .line 2244
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2245
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected setFrame(IIII)Z
    .locals 9
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 2520
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setFrame(IIII)Z

    move-result v1

    .line 2521
    .local v1, "changed":Z
    if-eqz v1, :cond_1

    .line 2522
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    .line 2523
    .local v2, "drawingBounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2525
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2526
    .local v3, "fg":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 2527
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 2528
    .local v4, "frameOffsets":Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 2529
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 2530
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 2531
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 2532
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2533
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 2534
    .local v5, "framePadding":Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 2535
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 2536
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    iget v8, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 2537
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 2540
    .end local v4    # "frameOffsets":Landroid/graphics/Rect;
    .end local v5    # "framePadding":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2541
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 2542
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2559
    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v2    # "drawingBounds":Landroid/graphics/Rect;
    .end local v3    # "fg":Landroid/graphics/drawable/Drawable;
    :cond_1
    return v1
.end method

.method public setSurfaceFormat(I)V
    .locals 1
    .param p1, "format"    # I

    .prologue
    .line 3259
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->setFormat(I)V

    .line 3260
    return-void
.end method

.method public setSurfaceKeepScreenOn(Z)V
    .locals 2
    .param p1, "keepOn"    # Z

    .prologue
    const/16 v1, 0x80

    .line 3263
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->addFlags(I)V

    .line 3265
    :goto_0
    return-void

    .line 3264
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->clearFlags(I)V

    goto :goto_0
.end method

.method public setSurfaceType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 3255
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->setType(I)V

    .line 3256
    return-void
.end method

.method public setWindowBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2800
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2801
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2802
    if-eqz p1, :cond_1

    .line 2803
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2807
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->drawableChanged()V

    .line 2809
    :cond_0
    return-void

    .line 2805
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method public setWindowFrame(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2820
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2821
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 2822
    if-eqz p1, :cond_1

    .line 2823
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2827
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->drawableChanged()V

    .line 2829
    :cond_0
    return-void

    .line 2825
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 4
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 2666
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1200(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2667
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    new-instance v2, Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/view/menu/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1202(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/view/menu/ContextMenuBuilder;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 2668
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1200(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 2673
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1200(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->show(Landroid/view/View;Landroid/os/IBinder;)Lcom/android/internal/view/menu/MenuDialogHelper;

    move-result-object v0

    .line 2675
    .local v0, "helper":Lcom/android/internal/view/menu/MenuDialogHelper;
    if-eqz v0, :cond_2

    .line 2676
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuDialogHelper;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 2682
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # setter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1302(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/view/menu/MenuDialogHelper;)Lcom/android/internal/view/menu/MenuDialogHelper;

    .line 2683
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :goto_2
    return v1

    .line 2670
    .end local v0    # "helper":Lcom/android/internal/view/menu/MenuDialogHelper;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1200(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ContextMenuBuilder;->clearAll()V

    goto :goto_0

    .line 2677
    .restart local v0    # "helper":Lcom/android/internal/view/menu/MenuDialogHelper;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1300(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/MenuDialogHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2680
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1300(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/MenuDialogHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuDialogHelper;->dismiss()V

    goto :goto_1

    .line 2683
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 14
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2696
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v8, :cond_0

    .line 2697
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v8}, Landroid/view/ActionMode;->finish()V

    .line 2700
    :cond_0
    new-instance v7, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;

    invoke-direct {v7, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;-><init>(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/view/ActionMode$Callback;)V

    .line 2701
    .local v7, "wrappedCallback":Landroid/view/ActionMode$Callback;
    const/4 v4, 0x0

    .line 2702
    .local v4, "mode":Landroid/view/ActionMode;
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v8

    if-nez v8, :cond_1

    .line 2704
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v8

    invoke-interface {v8, v7}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 2709
    :cond_1
    :goto_0
    if-eqz v4, :cond_4

    .line 2710
    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    .line 2780
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v8

    if-nez v8, :cond_3

    .line 2782
    :try_start_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    invoke-interface {v8, v9}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    .line 2787
    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    return-object v8

    .line 2712
    :cond_4
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-nez v8, :cond_5

    .line 2713
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->isFloating()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2715
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 2716
    .local v5, "outValue":Landroid/util/TypedValue;
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .local v2, "baseTheme":Landroid/content/res/Resources$Theme;
    const v8, #android:attr@actionBarTheme#t

    invoke-virtual {v2, v8, v5, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v8, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 2722
    .local v1, "actionBarTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 2723
    iget v8, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v8, v9}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 2725
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8, v10}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 2726
    .local v0, "actionBarContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 2731
    .end local v1    # "actionBarTheme":Landroid/content/res/Resources$Theme;
    :goto_3
    new-instance v8, Lcom/android/internal/widget/ActionBarContextView;

    invoke-direct {v8, v0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 2732
    new-instance v8, Landroid/widget/PopupWindow;

    const v11, #android:^attr-private@actionModePopupWindowStyle#t

    invoke-direct {v8, v0, v13, v11}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 2734
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v11, 0x2

    invoke-virtual {v8, v11}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 2736
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v8, v11}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 2737
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v11, -0x1

    invoke-virtual {v8, v11}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 2739
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v11, #android:attr@actionBarSize#t

    invoke-virtual {v8, v11, v5, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2741
    iget v8, v5, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v3

    .line 2743
    .local v3, "height":I
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v8, v3}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 2744
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v11, -0x2

    invoke-virtual {v8, v11}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 2745
    new-instance v8, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;

    invoke-direct {v8, p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mShowActionModePopup:Ljava/lang/Runnable;

    .line 2761
    .end local v0    # "actionBarContext":Landroid/content/Context;
    .end local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v3    # "height":I
    .end local v5    # "outValue":Landroid/util/TypedValue;
    :cond_5
    :goto_4
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v8, :cond_2

    .line 2762
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v8}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 2763
    new-instance v4, Lcom/android/internal/view/StandaloneActionMode;

    .end local v4    # "mode":Landroid/view/ActionMode;
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v8}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    if-nez v8, :cond_9

    move v8, v9

    :goto_5
    invoke-direct {v4, v11, v12, v7, v8}, Lcom/android/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V

    .line 2765
    .restart local v4    # "mode":Landroid/view/ActionMode;
    invoke-virtual {v4}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v8

    invoke-interface {p1, v4, v8}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2766
    invoke-virtual {v4}, Landroid/view/ActionMode;->invalidate()V

    .line 2767
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v8, v4}, Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    .line 2768
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v8, v10}, Lcom/android/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 2769
    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    .line 2770
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v8, :cond_6

    .line 2771
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->post(Ljava/lang/Runnable;)Z

    .line 2773
    :cond_6
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    goto/16 :goto_1

    .line 2728
    .restart local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .restart local v5    # "outValue":Landroid/util/TypedValue;
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    .restart local v0    # "actionBarContext":Landroid/content/Context;
    goto/16 :goto_3

    .line 2753
    .end local v0    # "actionBarContext":Landroid/content/Context;
    .end local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v5    # "outValue":Landroid/util/TypedValue;
    :cond_8
    const v8, #android:id@action_mode_bar_stub#t

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewStub;

    .line 2755
    .local v6, "stub":Landroid/view/ViewStub;
    if-eqz v6, :cond_5

    .line 2756
    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/ActionBarContextView;

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    goto :goto_4

    .end local v4    # "mode":Landroid/view/ActionMode;
    .end local v6    # "stub":Landroid/view/ViewStub;
    :cond_9
    move v8, v10

    .line 2763
    goto :goto_5

    .line 2776
    .restart local v4    # "mode":Landroid/view/ActionMode;
    :cond_a
    iput-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    goto/16 :goto_1

    .line 2783
    :catch_0
    move-exception v8

    goto/16 :goto_2

    .line 2705
    :catch_1
    move-exception v8

    goto/16 :goto_0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 2691
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startChanging()V
    .locals 1

    .prologue
    .line 2791
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mChanging:Z

    .line 2792
    return-void
.end method

.method public superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2382
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 2355
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .local v0, "action":I
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_2

    invoke-static/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindow$FlymeInjector;->mzSuperDispatchKeyEvent(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .end local v0    # "action":I
    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2370
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2374
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2378
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method updateWindowResizeState()V
    .locals 3

    .prologue
    .line 3184
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3185
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->hackTurnOffWindowResizeAnim(Z)V

    .line 3187
    return-void

    .line 3185
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;
    .locals 1

    .prologue
    .line 3251
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;
    .locals 1

    .prologue
    .line 3247
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 16
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mMzStatusBarRect:Landroid/graphics/Rect;

    if-nez v11, :cond_0

    new-instance v11, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mMzStatusBarRect:Landroid/graphics/Rect;

    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v11, :cond_6

    const/4 v5, 0x0

    .local v5, "retval":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v5

    .end local v5    # "retval":Z
    :goto_0
    return v5

    .restart local v5    # "retval":Z
    :pswitch_0
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .local v4, "point":Landroid/graphics/Point;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v8, v4, Landroid/graphics/Point;->x:I

    .local v8, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/4 v12, 0x1

    const-string v13, "status_bar_height"

    invoke-static {v12, v13}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .local v3, "height":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mMzStatusBarRect:Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v8, v3}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mMzDragInStatusBar:Z

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v5

    goto :goto_0

    .end local v3    # "height":I
    .end local v4    # "point":Landroid/graphics/Point;
    .end local v8    # "width":I
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v11

    float-to-int v9, v11

    .local v9, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v11

    float-to-int v10, v11

    .local v10, "y":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v6

    .local v6, "root":Landroid/view/ViewRootImpl;
    const/4 v7, 0x0

    .local v7, "statusBarNfcShareEnabled":Z
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/view/ViewRootImpl;->mzGetStatusBarNfcShareEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Landroid/view/ViewRootImpl;->mzGetShadowTouchPoint()Landroid/graphics/Point;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v6}, Landroid/view/ViewRootImpl;->mzGetShadowTouchPoint()Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, v11

    :cond_1
    if-eqz v7, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mMzStatusBarRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    if-ge v10, v11, :cond_3

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mMzDragInStatusBar:Z

    if-nez v11, :cond_2

    const/4 v11, 0x6

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/android/internal/policy/impl/PhoneWindow$FlymeInjector;->mzObtainDragEvent(ILandroid/view/DragEvent;)Landroid/view/DragEvent;

    move-result-object v2

    .local v2, "exitDrag":Landroid/view/DragEvent;
    move-object/from16 v0, p0

    invoke-super {v0, v2}, Landroid/widget/FrameLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    const/4 v11, 0x5

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/android/internal/policy/impl/PhoneWindow$FlymeInjector;->mzObtainDragEvent(ILandroid/view/DragEvent;)Landroid/view/DragEvent;

    move-result-object v1

    .local v1, "enterDrag":Landroid/view/DragEvent;
    move-object/from16 p1, v1

    .end local v1    # "enterDrag":Landroid/view/DragEvent;
    .end local v2    # "exitDrag":Landroid/view/DragEvent;
    :cond_2
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mMzDragInStatusBar:Z

    invoke-static/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindow$FlymeInjector;->mzDoStatusBarDrag(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/view/DragEvent;)Z

    move-result v5

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mMzDragInStatusBar:Z

    if-eqz v11, :cond_4

    const/4 v11, 0x6

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/android/internal/policy/impl/PhoneWindow$FlymeInjector;->mzObtainDragEvent(ILandroid/view/DragEvent;)Landroid/view/DragEvent;

    move-result-object v2

    .restart local v2    # "exitDrag":Landroid/view/DragEvent;
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/PhoneWindow$FlymeInjector;->mzDoStatusBarDrag(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/view/DragEvent;)Z

    const/4 v11, 0x5

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/android/internal/policy/impl/PhoneWindow$FlymeInjector;->mzObtainDragEvent(ILandroid/view/DragEvent;)Landroid/view/DragEvent;

    move-result-object v1

    .restart local v1    # "enterDrag":Landroid/view/DragEvent;
    move-object/from16 p1, v1

    .end local v1    # "enterDrag":Landroid/view/DragEvent;
    .end local v2    # "exitDrag":Landroid/view/DragEvent;
    :cond_4
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mMzDragInStatusBar:Z

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v5

    goto/16 :goto_0

    .end local v6    # "root":Landroid/view/ViewRootImpl;
    .end local v7    # "statusBarNfcShareEnabled":Z
    .end local v9    # "x":I
    .end local v10    # "y":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mMzDragInStatusBar:Z

    if-eqz v11, :cond_5

    invoke-static/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindow$FlymeInjector;->mzDoStatusBarDrag(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/view/DragEvent;)Z

    move-result v5

    goto/16 :goto_0

    :cond_5
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v5

    goto/16 :goto_0

    .end local v5    # "retval":Z
    :cond_6
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v5

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method getActionMode()Landroid/view/ActionMode;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method
