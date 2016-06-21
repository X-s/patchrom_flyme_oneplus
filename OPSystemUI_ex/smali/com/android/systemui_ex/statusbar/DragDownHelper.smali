.class public Lcom/android/systemui_ex/statusbar/DragDownHelper;
.super Ljava/lang/Object;
.source "DragDownHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/statusbar/DragDownHelper$DragDownCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui_ex/ExpandHelper$Callback;

.field private mDragDownCallback:Lcom/android/systemui_ex/statusbar/DragDownHelper$DragDownCallback;

.field private mHost:Landroid/view/View;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMinDragDistance:I

.field private final mTemp2:[I

.field private mTouchSlop:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui_ex/ExpandHelper$Callback;Lcom/android/systemui_ex/statusbar/DragDownHelper$DragDownCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Landroid/view/View;
    .param p3, "callback"    # Lcom/android/systemui_ex/ExpandHelper$Callback;
    .param p4, "dragDownCallback"    # Lcom/android/systemui_ex/statusbar/DragDownHelper$DragDownCallback;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/DragDownHelper;->mTemp2:[I

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/DragDownHelper;->mMinDragDistance:I

    .line 62
    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/DragDownHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 64
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/DragDownHelper;->mTouchSlop:F

    .line 65
    iput-object p3, p0, Lcom/android/systemui_ex/statusbar/DragDownHelper;->mCallback:Lcom/android/systemui_ex/ExpandHelper$Callback;

    .line 66
    iput-object p4, p0, Lcom/android/systemui_ex/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui_ex/statusbar/DragDownHelper$DragDownCallback;

    .line 67
    iput-object p2, p0, Lcom/android/systemui_ex/statusbar/DragDownHelper;->mHost:Landroid/view/View;

    .line 68
    return-void
.end method
