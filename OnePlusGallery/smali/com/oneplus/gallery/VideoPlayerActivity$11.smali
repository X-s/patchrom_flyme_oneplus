.class Lcom/oneplus/gallery/VideoPlayerActivity$11;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/VideoPlayerActivity;->onCreate(Landroid/os/Bundle;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/oneplus/gallery/VideoPlayerActivity$11;->this$0:Lcom/oneplus/gallery/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 520
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 531
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity$11;->this$0:Lcom/oneplus/gallery/VideoPlayerActivity;

    # getter for: Lcom/oneplus/gallery/VideoPlayerActivity;->m_GestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->access$1800(Lcom/oneplus/gallery/VideoPlayerActivity;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 523
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity$11;->this$0:Lcom/oneplus/gallery/VideoPlayerActivity;

    # invokes: Lcom/oneplus/gallery/VideoPlayerActivity;->cancelHideControlsUI()V
    invoke-static {v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->access$900(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    goto :goto_0

    .line 528
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity$11;->this$0:Lcom/oneplus/gallery/VideoPlayerActivity;

    # invokes: Lcom/oneplus/gallery/VideoPlayerActivity;->hideControlsUIDelay()V
    invoke-static {v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->access$1000(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    goto :goto_0

    .line 520
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
