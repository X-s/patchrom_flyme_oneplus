.class Lcom/android/systemui_ex/recents/views/TaskViewThumbnail$1;
.super Ljava/lang/Object;
.source "TaskViewThumbnail.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail$1;->this$0:Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 64
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail$1;->this$0:Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mThumbnailAlpha:F

    .line 65
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail$1;->this$0:Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;

    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->updateThumbnailPaintFilter()V

    .line 66
    return-void
.end method
