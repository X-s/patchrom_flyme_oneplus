.class Lcom/oneplus/gallery/widget/FastScrollBar$1;
.super Ljava/lang/Object;
.source "FastScrollBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/widget/FastScrollBar;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/widget/FastScrollBar;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/widget/FastScrollBar;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/oneplus/gallery/widget/FastScrollBar$1;->this$0:Lcom/oneplus/gallery/widget/FastScrollBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 98
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 99
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 101
    iget-object v2, p0, Lcom/oneplus/gallery/widget/FastScrollBar$1;->this$0:Lcom/oneplus/gallery/widget/FastScrollBar;

    # getter for: Lcom/oneplus/gallery/widget/FastScrollBar;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;
    invoke-static {v2}, Lcom/oneplus/gallery/widget/FastScrollBar;->access$100(Lcom/oneplus/gallery/widget/FastScrollBar;)Lcom/oneplus/gallery/GridViewFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/gallery/GridViewFragment;->isRecyclerViewTouched()Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/oneplus/gallery/widget/FastScrollBar$1;->this$0:Lcom/oneplus/gallery/widget/FastScrollBar;

    # setter for: Lcom/oneplus/gallery/widget/FastScrollBar;->m_IsScrollBarThumbGrabbed:Z
    invoke-static {v2, v1}, Lcom/oneplus/gallery/widget/FastScrollBar;->access$202(Lcom/oneplus/gallery/widget/FastScrollBar;Z)Z

    .line 104
    iget-object v2, p0, Lcom/oneplus/gallery/widget/FastScrollBar$1;->this$0:Lcom/oneplus/gallery/widget/FastScrollBar;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    # setter for: Lcom/oneplus/gallery/widget/FastScrollBar;->m_ThumbPositionOffsetY:F
    invoke-static {v2, v3}, Lcom/oneplus/gallery/widget/FastScrollBar;->access$302(Lcom/oneplus/gallery/widget/FastScrollBar;F)F

    .line 105
    # getter for: Lcom/oneplus/gallery/widget/FastScrollBar;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/gallery/widget/FastScrollBar;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "joy m_ThumbPositionOffsetY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/gallery/widget/FastScrollBar$1;->this$0:Lcom/oneplus/gallery/widget/FastScrollBar;

    # getter for: Lcom/oneplus/gallery/widget/FastScrollBar;->m_ThumbPositionOffsetY:F
    invoke-static {v4}, Lcom/oneplus/gallery/widget/FastScrollBar;->access$300(Lcom/oneplus/gallery/widget/FastScrollBar;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
