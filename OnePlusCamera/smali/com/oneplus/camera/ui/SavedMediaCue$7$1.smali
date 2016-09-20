.class Lcom/oneplus/camera/ui/SavedMediaCue$7$1;
.super Ljava/lang/Object;
.source "SavedMediaCue.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/SavedMediaCue$7;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/ui/SavedMediaCue$7;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/SavedMediaCue$7;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/oneplus/camera/ui/SavedMediaCue$7$1;->this$1:Lcom/oneplus/camera/ui/SavedMediaCue$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 291
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 275
    iget-object v0, p0, Lcom/oneplus/camera/ui/SavedMediaCue$7$1;->this$1:Lcom/oneplus/camera/ui/SavedMediaCue$7;

    iget-object v0, v0, Lcom/oneplus/camera/ui/SavedMediaCue$7;->this$0:Lcom/oneplus/camera/ui/SavedMediaCue;

    # getter for: Lcom/oneplus/camera/ui/SavedMediaCue;->m_CueFrameContainer:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/oneplus/camera/ui/SavedMediaCue;->access$600(Lcom/oneplus/camera/ui/SavedMediaCue;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 276
    iget-object v0, p0, Lcom/oneplus/camera/ui/SavedMediaCue$7$1;->this$1:Lcom/oneplus/camera/ui/SavedMediaCue$7;

    iget-object v0, v0, Lcom/oneplus/camera/ui/SavedMediaCue$7;->this$0:Lcom/oneplus/camera/ui/SavedMediaCue;

    # getter for: Lcom/oneplus/camera/ui/SavedMediaCue;->m_CueFrameContainer:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/oneplus/camera/ui/SavedMediaCue;->access$600(Lcom/oneplus/camera/ui/SavedMediaCue;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 278
    iget-object v0, p0, Lcom/oneplus/camera/ui/SavedMediaCue$7$1;->this$1:Lcom/oneplus/camera/ui/SavedMediaCue$7;

    iget-object v0, v0, Lcom/oneplus/camera/ui/SavedMediaCue$7;->val$image:Landroid/view/View;

    iget-object v1, p0, Lcom/oneplus/camera/ui/SavedMediaCue$7$1;->this$1:Lcom/oneplus/camera/ui/SavedMediaCue$7;

    iget v1, v1, Lcom/oneplus/camera/ui/SavedMediaCue$7;->val$width:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 279
    iget-object v0, p0, Lcom/oneplus/camera/ui/SavedMediaCue$7$1;->this$1:Lcom/oneplus/camera/ui/SavedMediaCue$7;

    iget-object v0, v0, Lcom/oneplus/camera/ui/SavedMediaCue$7;->val$image:Landroid/view/View;

    iget-object v1, p0, Lcom/oneplus/camera/ui/SavedMediaCue$7$1;->this$1:Lcom/oneplus/camera/ui/SavedMediaCue$7;

    iget v1, v1, Lcom/oneplus/camera/ui/SavedMediaCue$7;->val$height:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 280
    iget-object v0, p0, Lcom/oneplus/camera/ui/SavedMediaCue$7$1;->this$1:Lcom/oneplus/camera/ui/SavedMediaCue$7;

    iget-object v0, v0, Lcom/oneplus/camera/ui/SavedMediaCue$7;->this$0:Lcom/oneplus/camera/ui/SavedMediaCue;

    const/4 v1, 0x0

    # setter for: Lcom/oneplus/camera/ui/SavedMediaCue;->m_Animator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/SavedMediaCue;->access$702(Lcom/oneplus/camera/ui/SavedMediaCue;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 282
    iget-object v0, p0, Lcom/oneplus/camera/ui/SavedMediaCue$7$1;->this$1:Lcom/oneplus/camera/ui/SavedMediaCue$7;

    iget-object v0, v0, Lcom/oneplus/camera/ui/SavedMediaCue$7;->this$0:Lcom/oneplus/camera/ui/SavedMediaCue;

    # getter for: Lcom/oneplus/camera/ui/SavedMediaCue;->m_CueFrameContainer:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/oneplus/camera/ui/SavedMediaCue;->access$600(Lcom/oneplus/camera/ui/SavedMediaCue;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/oneplus/camera/ui/SavedMediaCue$7$1;->this$1:Lcom/oneplus/camera/ui/SavedMediaCue$7;

    iget-object v0, v0, Lcom/oneplus/camera/ui/SavedMediaCue$7;->this$0:Lcom/oneplus/camera/ui/SavedMediaCue;

    # getter for: Lcom/oneplus/camera/ui/SavedMediaCue;->m_CueFramePortrait:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/oneplus/camera/ui/SavedMediaCue;->access$800(Lcom/oneplus/camera/ui/SavedMediaCue;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/oneplus/camera/ui/SavedMediaCue$7$1;->this$1:Lcom/oneplus/camera/ui/SavedMediaCue$7;

    iget-object v0, v0, Lcom/oneplus/camera/ui/SavedMediaCue$7;->this$0:Lcom/oneplus/camera/ui/SavedMediaCue;

    # getter for: Lcom/oneplus/camera/ui/SavedMediaCue;->m_CueFrameLandscape:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/oneplus/camera/ui/SavedMediaCue;->access$900(Lcom/oneplus/camera/ui/SavedMediaCue;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/oneplus/camera/ui/SavedMediaCue$7$1;->this$1:Lcom/oneplus/camera/ui/SavedMediaCue$7;

    iget-object v0, v0, Lcom/oneplus/camera/ui/SavedMediaCue$7;->this$0:Lcom/oneplus/camera/ui/SavedMediaCue;

    # getter for: Lcom/oneplus/camera/ui/SavedMediaCue;->m_AnimationBitmapQueue:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/oneplus/camera/ui/SavedMediaCue;->access$1000(Lcom/oneplus/camera/ui/SavedMediaCue;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/oneplus/camera/ui/SavedMediaCue$7$1;->this$1:Lcom/oneplus/camera/ui/SavedMediaCue$7;

    iget-object v1, v0, Lcom/oneplus/camera/ui/SavedMediaCue$7;->this$0:Lcom/oneplus/camera/ui/SavedMediaCue;

    iget-object v0, p0, Lcom/oneplus/camera/ui/SavedMediaCue$7$1;->this$1:Lcom/oneplus/camera/ui/SavedMediaCue$7;

    iget-object v0, v0, Lcom/oneplus/camera/ui/SavedMediaCue$7;->this$0:Lcom/oneplus/camera/ui/SavedMediaCue;

    # getter for: Lcom/oneplus/camera/ui/SavedMediaCue;->m_AnimationBitmapQueue:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/oneplus/camera/ui/SavedMediaCue;->access$1000(Lcom/oneplus/camera/ui/SavedMediaCue;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    # invokes: Lcom/oneplus/camera/ui/SavedMediaCue;->showCueAnimation(Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0}, Lcom/oneplus/camera/ui/SavedMediaCue;->access$100(Lcom/oneplus/camera/ui/SavedMediaCue;Landroid/graphics/Bitmap;)V

    .line 288
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 294
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 270
    return-void
.end method
