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

.field final synthetic val$height:I

.field final synthetic val$image:Landroid/view/View;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/SavedMediaCue$7;Landroid/view/View;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/ui/SavedMediaCue$7;
    .param p2, "val$image"    # Landroid/view/View;
    .param p3, "val$width"    # I
    .param p4, "val$height"    # I

    .prologue
    .line 272
    iput-object p1, p0, Lcom/oneplus/camera/ui/SavedMediaCue$7$1;->this$1:Lcom/oneplus/camera/ui/SavedMediaCue$7;

    iput-object p2, p0, Lcom/oneplus/camera/ui/SavedMediaCue$7$1;->val$image:Landroid/view/View;

    iput p3, p0, Lcom/oneplus/camera/ui/SavedMediaCue$7$1;->val$width:I

    iput p4, p0, Lcom/oneplus/camera/ui/SavedMediaCue$7$1;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 296
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 280
    iget-object v0, p0, Lcom/oneplus/camera/ui/SavedMediaCue$7$1;->this$1:Lcom/oneplus/camera/ui/SavedMediaCue$7;

    iget-object v0, v0, Lcom/oneplus/camera/ui/SavedMediaCue$7;->this$0:Lcom/oneplus/camera/ui/SavedMediaCue;

    invoke-static {v0}, Lcom/oneplus/camera/ui/SavedMediaCue;->-get1(Lcom/oneplus/camera/ui/SavedMediaCue;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 281
    iget-object v0, p0, Lcom/oneplus/camera/ui/SavedMediaCue$7$1;->this$1:Lcom/oneplus/camera/ui/SavedMediaCue$7;

    iget-object v0, v0, Lcom/oneplus/camera/ui/SavedMediaCue$7;->this$0:Lcom/oneplus/camera/ui/SavedMediaCue;

    invoke-static {v0}, Lcom/oneplus/camera/ui/SavedMediaCue;->-get1(Lcom/oneplus/camera/ui/SavedMediaCue;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 283
    iget-object v0, p0, Lcom/oneplus/camera/ui/SavedMediaCue$7$1;->val$image:Landroid/view/View;

    iget v1, p0, Lcom/oneplus/camera/ui/SavedMediaCue$7$1;->val$width:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 284
    iget-object v0, p0, Lcom/oneplus/camera/ui/SavedMediaCue$7$1;->val$image:Landroid/view/View;

    iget v1, p0, Lcom/oneplus/camera/ui/SavedMediaCue$7$1;->val$height:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 285
    iget-object v0, p0, Lcom/oneplus/camera/ui/SavedMediaCue$7$1;->this$1:Lcom/oneplus/camera/ui/SavedMediaCue$7;

    iget-object v0, v0, Lcom/oneplus/camera/ui/SavedMediaCue$7;->this$0:Lcom/oneplus/camera/ui/SavedMediaCue;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/SavedMediaCue;->-set0(Lcom/oneplus/camera/ui/SavedMediaCue;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 287
    iget-object v0, p0, Lcom/oneplus/camera/ui/SavedMediaCue$7$1;->this$1:Lcom/oneplus/camera/ui/SavedMediaCue$7;

    iget-object v0, v0, Lcom/oneplus/camera/ui/SavedMediaCue$7;->this$0:Lcom/oneplus/camera/ui/SavedMediaCue;

    invoke-static {v0}, Lcom/oneplus/camera/ui/SavedMediaCue;->-get1(Lcom/oneplus/camera/ui/SavedMediaCue;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/oneplus/camera/ui/SavedMediaCue$7$1;->this$1:Lcom/oneplus/camera/ui/SavedMediaCue$7;

    iget-object v0, v0, Lcom/oneplus/camera/ui/SavedMediaCue$7;->this$0:Lcom/oneplus/camera/ui/SavedMediaCue;

    invoke-static {v0}, Lcom/oneplus/camera/ui/SavedMediaCue;->-get3(Lcom/oneplus/camera/ui/SavedMediaCue;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/oneplus/camera/ui/SavedMediaCue$7$1;->this$1:Lcom/oneplus/camera/ui/SavedMediaCue$7;

    iget-object v0, v0, Lcom/oneplus/camera/ui/SavedMediaCue$7;->this$0:Lcom/oneplus/camera/ui/SavedMediaCue;

    invoke-static {v0}, Lcom/oneplus/camera/ui/SavedMediaCue;->-get2(Lcom/oneplus/camera/ui/SavedMediaCue;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/oneplus/camera/ui/SavedMediaCue$7$1;->this$1:Lcom/oneplus/camera/ui/SavedMediaCue$7;

    iget-object v0, v0, Lcom/oneplus/camera/ui/SavedMediaCue$7;->this$0:Lcom/oneplus/camera/ui/SavedMediaCue;

    invoke-static {v0}, Lcom/oneplus/camera/ui/SavedMediaCue;->-get0(Lcom/oneplus/camera/ui/SavedMediaCue;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/oneplus/camera/ui/SavedMediaCue$7$1;->this$1:Lcom/oneplus/camera/ui/SavedMediaCue$7;

    iget-object v1, v0, Lcom/oneplus/camera/ui/SavedMediaCue$7;->this$0:Lcom/oneplus/camera/ui/SavedMediaCue;

    iget-object v0, p0, Lcom/oneplus/camera/ui/SavedMediaCue$7$1;->this$1:Lcom/oneplus/camera/ui/SavedMediaCue$7;

    iget-object v0, v0, Lcom/oneplus/camera/ui/SavedMediaCue$7;->this$0:Lcom/oneplus/camera/ui/SavedMediaCue;

    invoke-static {v0}, Lcom/oneplus/camera/ui/SavedMediaCue;->-get0(Lcom/oneplus/camera/ui/SavedMediaCue;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v1, v0}, Lcom/oneplus/camera/ui/SavedMediaCue;->-wrap3(Lcom/oneplus/camera/ui/SavedMediaCue;Landroid/graphics/Bitmap;)V

    .line 278
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 299
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 275
    return-void
.end method
