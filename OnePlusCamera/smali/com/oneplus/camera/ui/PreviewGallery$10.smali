.class Lcom/oneplus/camera/ui/PreviewGallery$10;
.super Ljava/lang/Object;
.source "PreviewGallery.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/PreviewGallery;->setOnTouchListener(Lcom/oneplus/camera/ui/CameraPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/PreviewGallery;

.field final synthetic val$pager:Lcom/oneplus/camera/ui/CameraPager;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/PreviewGallery;Lcom/oneplus/camera/ui/CameraPager;)V
    .locals 0

    .prologue
    .line 868
    iput-object p1, p0, Lcom/oneplus/camera/ui/PreviewGallery$10;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    iput-object p2, p0, Lcom/oneplus/camera/ui/PreviewGallery$10;->val$pager:Lcom/oneplus/camera/ui/CameraPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 872
    iget-object v8, p0, Lcom/oneplus/camera/ui/PreviewGallery$10;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery;->m_LockPreviewGallery:Z
    invoke-static {v8}, Lcom/oneplus/camera/ui/PreviewGallery;->access$4000(Lcom/oneplus/camera/ui/PreviewGallery;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v5, v7

    .line 936
    :cond_0
    :goto_0
    return v5

    .line 874
    :cond_1
    const/4 v5, 0x0

    .line 876
    .local v5, "ret":Z
    iget-object v8, p0, Lcom/oneplus/camera/ui/PreviewGallery$10;->val$pager:Lcom/oneplus/camera/ui/CameraPager;

    invoke-interface {v8}, Lcom/oneplus/camera/ui/CameraPager;->getCurrentItem()I

    move-result v1

    .line 877
    .local v1, "current":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    and-int/lit16 v2, v8, 0xff

    .line 878
    .local v2, "motion":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    .line 880
    .local v4, "pointerCount":I
    if-ne v2, v7, :cond_c

    .line 881
    iget-object v8, p0, Lcom/oneplus/camera/ui/PreviewGallery$10;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # setter for: Lcom/oneplus/camera/ui/PreviewGallery;->m_HandleByActivity:Z
    invoke-static {v8, v10}, Lcom/oneplus/camera/ui/PreviewGallery;->access$4102(Lcom/oneplus/camera/ui/PreviewGallery;Z)Z

    .line 887
    :cond_2
    :goto_1
    const/4 v8, 0x5

    if-ne v2, v8, :cond_3

    .line 888
    iget-object v8, p0, Lcom/oneplus/camera/ui/PreviewGallery$10;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # invokes: Lcom/oneplus/camera/ui/PreviewGallery;->finishPagerScroll(Landroid/view/MotionEvent;)V
    invoke-static {v8, p2}, Lcom/oneplus/camera/ui/PreviewGallery;->access$4200(Lcom/oneplus/camera/ui/PreviewGallery;Landroid/view/MotionEvent;)V

    .line 891
    :cond_3
    iget-object v8, p0, Lcom/oneplus/camera/ui/PreviewGallery$10;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-virtual {v8}, Lcom/oneplus/camera/ui/PreviewGallery;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 893
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    if-nez v1, :cond_4

    .line 894
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 895
    .local v3, "newEvent":Landroid/view/MotionEvent;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    invoke-virtual {v3, v8, v9}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 896
    iget-object v8, p0, Lcom/oneplus/camera/ui/PreviewGallery$10;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery;->m_HandleByActivity:Z
    invoke-static {v8}, Lcom/oneplus/camera/ui/PreviewGallery;->access$4100(Lcom/oneplus/camera/ui/PreviewGallery;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 897
    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 906
    .end local v3    # "newEvent":Landroid/view/MotionEvent;
    :cond_4
    :goto_2
    iget-object v8, p0, Lcom/oneplus/camera/ui/PreviewGallery$10;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery;->m_Front:Z
    invoke-static {v8}, Lcom/oneplus/camera/ui/PreviewGallery;->access$3100(Lcom/oneplus/camera/ui/PreviewGallery;)Z

    move-result v8

    if-nez v8, :cond_7

    if-nez v1, :cond_7

    .line 907
    iget-object v8, p0, Lcom/oneplus/camera/ui/PreviewGallery$10;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery;->m_MultiTouch:Z
    invoke-static {v8}, Lcom/oneplus/camera/ui/PreviewGallery;->access$4300(Lcom/oneplus/camera/ui/PreviewGallery;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 908
    const/4 v5, 0x1

    .line 911
    :cond_5
    if-le v4, v7, :cond_6

    .line 912
    iget-object v8, p0, Lcom/oneplus/camera/ui/PreviewGallery$10;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # setter for: Lcom/oneplus/camera/ui/PreviewGallery;->m_MultiTouch:Z
    invoke-static {v8, v7}, Lcom/oneplus/camera/ui/PreviewGallery;->access$4302(Lcom/oneplus/camera/ui/PreviewGallery;Z)Z

    .line 914
    :cond_6
    if-ne v4, v7, :cond_7

    if-ne v2, v7, :cond_7

    .line 915
    iget-object v7, p0, Lcom/oneplus/camera/ui/PreviewGallery$10;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # setter for: Lcom/oneplus/camera/ui/PreviewGallery;->m_MultiTouch:Z
    invoke-static {v7, v10}, Lcom/oneplus/camera/ui/PreviewGallery;->access$4302(Lcom/oneplus/camera/ui/PreviewGallery;Z)Z

    .line 919
    :cond_7
    sget-object v7, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v7}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/VideoCaptureState;

    .line 920
    .local v6, "state":Lcom/oneplus/camera/VideoCaptureState;
    sget-object v7, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    if-eq v6, v7, :cond_8

    sget-object v7, Lcom/oneplus/camera/VideoCaptureState;->STARTING:Lcom/oneplus/camera/VideoCaptureState;

    if-eq v6, v7, :cond_8

    sget-object v7, Lcom/oneplus/camera/VideoCaptureState;->STOPPING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v6, v7, :cond_9

    .line 921
    :cond_8
    const/4 v5, 0x1

    .line 924
    :cond_9
    sget-object v7, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v7}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_a

    .line 925
    const/4 v5, 0x1

    .line 928
    :cond_a
    sget-object v7, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v7}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 929
    const/4 v5, 0x1

    .line 932
    :cond_b
    iget-object v7, p0, Lcom/oneplus/camera/ui/PreviewGallery$10;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery;->m_HandleByActivity:Z
    invoke-static {v7}, Lcom/oneplus/camera/ui/PreviewGallery;->access$4100(Lcom/oneplus/camera/ui/PreviewGallery;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 933
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 882
    .end local v0    # "activity":Lcom/oneplus/camera/CameraActivity;
    .end local v6    # "state":Lcom/oneplus/camera/VideoCaptureState;
    :cond_c
    const/4 v8, 0x3

    if-ne v2, v8, :cond_2

    .line 883
    iget-object v8, p0, Lcom/oneplus/camera/ui/PreviewGallery$10;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # setter for: Lcom/oneplus/camera/ui/PreviewGallery;->m_HandleByActivity:Z
    invoke-static {v8, v10}, Lcom/oneplus/camera/ui/PreviewGallery;->access$4102(Lcom/oneplus/camera/ui/PreviewGallery;Z)Z

    goto/16 :goto_1

    .line 899
    .restart local v0    # "activity":Lcom/oneplus/camera/CameraActivity;
    .restart local v3    # "newEvent":Landroid/view/MotionEvent;
    :cond_d
    iget-object v8, p0, Lcom/oneplus/camera/ui/PreviewGallery$10;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    # setter for: Lcom/oneplus/camera/ui/PreviewGallery;->m_HandleByActivity:Z
    invoke-static {v8, v9}, Lcom/oneplus/camera/ui/PreviewGallery;->access$4102(Lcom/oneplus/camera/ui/PreviewGallery;Z)Z

    .line 900
    iget-object v8, p0, Lcom/oneplus/camera/ui/PreviewGallery$10;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery;->m_HandleByActivity:Z
    invoke-static {v8}, Lcom/oneplus/camera/ui/PreviewGallery;->access$4100(Lcom/oneplus/camera/ui/PreviewGallery;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 901
    iget-object v8, p0, Lcom/oneplus/camera/ui/PreviewGallery$10;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # invokes: Lcom/oneplus/camera/ui/PreviewGallery;->finishPagerScroll(Landroid/view/MotionEvent;)V
    invoke-static {v8, p2}, Lcom/oneplus/camera/ui/PreviewGallery;->access$4200(Lcom/oneplus/camera/ui/PreviewGallery;Landroid/view/MotionEvent;)V

    goto/16 :goto_2
.end method
