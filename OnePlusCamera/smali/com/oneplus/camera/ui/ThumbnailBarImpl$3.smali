.class Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ThumbnailBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/ThumbnailBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    .prologue
    .line 881
    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x2710

    const/4 v3, 0x0

    .line 896
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get16(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 898
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get16(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v1, v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-set11(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 899
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get14(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 901
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get8(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Lcom/oneplus/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;

    move-result-object v0

    if-nez v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    new-instance v1, Lcom/oneplus/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;

    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-direct {v1, v2, v5}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;)V

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-set8(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;)Lcom/oneplus/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get14(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get8(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Lcom/oneplus/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 904
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get14(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 905
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get14(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 907
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get14(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get12(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 910
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get16(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 916
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get16(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 917
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get16(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    .line 919
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get13(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get16(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 920
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-wrap11(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    .line 894
    :goto_0
    return-void

    .line 924
    :cond_4
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0, v4}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 925
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v4, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 885
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get15(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 886
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get15(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 887
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get15(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get13(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 890
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get15(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 883
    :cond_0
    return-void
.end method
