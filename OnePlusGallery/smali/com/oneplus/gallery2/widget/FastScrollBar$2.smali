.class Lcom/oneplus/gallery2/widget/FastScrollBar$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FastScrollBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/widget/FastScrollBar;->hideHandle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/widget/FastScrollBar;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/widget/FastScrollBar;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/oneplus/gallery2/widget/FastScrollBar$2;->this$0:Lcom/oneplus/gallery2/widget/FastScrollBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 194
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar$2;->this$0:Lcom/oneplus/gallery2/widget/FastScrollBar;

    const/4 v1, 0x0

    # setter for: Lcom/oneplus/gallery2/widget/FastScrollBar;->m_HideThumbAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/widget/FastScrollBar;->access$702(Lcom/oneplus/gallery2/widget/FastScrollBar;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 195
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x4

    .line 185
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 186
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar$2;->this$0:Lcom/oneplus/gallery2/widget/FastScrollBar;

    # getter for: Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarThumb:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/oneplus/gallery2/widget/FastScrollBar;->access$500(Lcom/oneplus/gallery2/widget/FastScrollBar;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar$2;->this$0:Lcom/oneplus/gallery2/widget/FastScrollBar;

    # invokes: Lcom/oneplus/gallery2/widget/FastScrollBar;->showOrHideDateIndex(I)V
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/widget/FastScrollBar;->access$600(Lcom/oneplus/gallery2/widget/FastScrollBar;I)V

    .line 188
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar$2;->this$0:Lcom/oneplus/gallery2/widget/FastScrollBar;

    const/4 v1, 0x0

    # setter for: Lcom/oneplus/gallery2/widget/FastScrollBar;->m_HideThumbAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/widget/FastScrollBar;->access$702(Lcom/oneplus/gallery2/widget/FastScrollBar;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 189
    return-void
.end method
