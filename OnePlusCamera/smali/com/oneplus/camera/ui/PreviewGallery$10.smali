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
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/PreviewGallery;
    .param p2, "val$pager"    # Lcom/oneplus/camera/ui/CameraPager;

    .prologue
    .line 864
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

    const/4 v9, 0x1

    .line 868
    iget-object v7, p0, Lcom/oneplus/camera/ui/PreviewGallery$10;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-static {v7}, Lcom/oneplus/camera/ui/PreviewGallery;->-get10(Lcom/oneplus/camera/ui/PreviewGallery;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 869
    return v9

    .line 870
    :cond_0
    const/4 v5, 0x0

    .line 872
    .local v5, "ret":Z
    iget-object v7, p0, Lcom/oneplus/camera/ui/PreviewGallery$10;->val$pager:Lcom/oneplus/camera/ui/CameraPager;

    invoke-interface {v7}, Lcom/oneplus/camera/ui/CameraPager;->getCurrentItem()I

    move-result v1

    .line 873
    .local v1, "current":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    and-int/lit16 v2, v7, 0xff

    .line 874
    .local v2, "motion":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    .line 876
    .local v4, "pointerCount":I
    if-ne v2, v9, :cond_c

    .line 877
    iget-object v7, p0, Lcom/oneplus/camera/ui/PreviewGallery$10;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-static {v7, v10}, Lcom/oneplus/camera/ui/PreviewGallery;->-set2(Lcom/oneplus/camera/ui/PreviewGallery;Z)Z

    .line 883
    :cond_1
    :goto_0
    const/4 v7, 0x5

    if-ne v2, v7, :cond_2

    .line 884
    iget-object v7, p0, Lcom/oneplus/camera/ui/PreviewGallery$10;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-static {v7, p2}, Lcom/oneplus/camera/ui/PreviewGallery;->-wrap6(Lcom/oneplus/camera/ui/PreviewGallery;Landroid/view/MotionEvent;)V

    .line 887
    :cond_2
    iget-object v7, p0, Lcom/oneplus/camera/ui/PreviewGallery$10;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-virtual {v7}, Lcom/oneplus/camera/ui/PreviewGallery;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 889
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    if-nez v1, :cond_3

    .line 890
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 891
    .local v3, "newEvent":Landroid/view/MotionEvent;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    invoke-virtual {v3, v7, v8}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 892
    iget-object v7, p0, Lcom/oneplus/camera/ui/PreviewGallery$10;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-static {v7}, Lcom/oneplus/camera/ui/PreviewGallery;->-get5(Lcom/oneplus/camera/ui/PreviewGallery;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 893
    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 902
    .end local v3    # "newEvent":Landroid/view/MotionEvent;
    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/oneplus/camera/ui/PreviewGallery$10;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-static {v7}, Lcom/oneplus/camera/ui/PreviewGallery;->-get4(Lcom/oneplus/camera/ui/PreviewGallery;)Z

    move-result v7

    if-nez v7, :cond_6

    if-nez v1, :cond_6

    .line 903
    iget-object v7, p0, Lcom/oneplus/camera/ui/PreviewGallery$10;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-static {v7}, Lcom/oneplus/camera/ui/PreviewGallery;->-get11(Lcom/oneplus/camera/ui/PreviewGallery;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 904
    const/4 v5, 0x1

    .line 907
    :cond_4
    if-le v4, v9, :cond_5

    .line 908
    iget-object v7, p0, Lcom/oneplus/camera/ui/PreviewGallery$10;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-static {v7, v9}, Lcom/oneplus/camera/ui/PreviewGallery;->-set3(Lcom/oneplus/camera/ui/PreviewGallery;Z)Z

    .line 910
    :cond_5
    if-ne v4, v9, :cond_6

    if-ne v2, v9, :cond_6

    .line 911
    iget-object v7, p0, Lcom/oneplus/camera/ui/PreviewGallery$10;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-static {v7, v10}, Lcom/oneplus/camera/ui/PreviewGallery;->-set3(Lcom/oneplus/camera/ui/PreviewGallery;Z)Z

    .line 915
    :cond_6
    sget-object v7, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v7}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/VideoCaptureState;

    .line 916
    .local v6, "state":Lcom/oneplus/camera/VideoCaptureState;
    sget-object v7, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    if-eq v6, v7, :cond_7

    sget-object v7, Lcom/oneplus/camera/VideoCaptureState;->STARTING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v6, v7, :cond_e

    .line 917
    :cond_7
    :goto_2
    const/4 v5, 0x1

    .line 920
    :cond_8
    sget-object v7, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v7}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_9

    .line 921
    const/4 v5, 0x1

    .line 924
    :cond_9
    sget-object v7, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v7}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 925
    const/4 v5, 0x1

    .line 928
    :cond_a
    iget-object v7, p0, Lcom/oneplus/camera/ui/PreviewGallery$10;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-static {v7}, Lcom/oneplus/camera/ui/PreviewGallery;->-get5(Lcom/oneplus/camera/ui/PreviewGallery;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 929
    const/4 v5, 0x1

    .line 932
    :cond_b
    return v5

    .line 878
    .end local v0    # "activity":Lcom/oneplus/camera/CameraActivity;
    .end local v6    # "state":Lcom/oneplus/camera/VideoCaptureState;
    :cond_c
    const/4 v7, 0x3

    if-ne v2, v7, :cond_1

    .line 879
    iget-object v7, p0, Lcom/oneplus/camera/ui/PreviewGallery$10;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-static {v7, v10}, Lcom/oneplus/camera/ui/PreviewGallery;->-set2(Lcom/oneplus/camera/ui/PreviewGallery;Z)Z

    goto/16 :goto_0

    .line 895
    .restart local v0    # "activity":Lcom/oneplus/camera/CameraActivity;
    .restart local v3    # "newEvent":Landroid/view/MotionEvent;
    :cond_d
    iget-object v7, p0, Lcom/oneplus/camera/ui/PreviewGallery$10;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    invoke-static {v7, v8}, Lcom/oneplus/camera/ui/PreviewGallery;->-set2(Lcom/oneplus/camera/ui/PreviewGallery;Z)Z

    .line 896
    iget-object v7, p0, Lcom/oneplus/camera/ui/PreviewGallery$10;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-static {v7}, Lcom/oneplus/camera/ui/PreviewGallery;->-get5(Lcom/oneplus/camera/ui/PreviewGallery;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 897
    iget-object v7, p0, Lcom/oneplus/camera/ui/PreviewGallery$10;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-static {v7, p2}, Lcom/oneplus/camera/ui/PreviewGallery;->-wrap6(Lcom/oneplus/camera/ui/PreviewGallery;Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 916
    .end local v3    # "newEvent":Landroid/view/MotionEvent;
    .restart local v6    # "state":Lcom/oneplus/camera/VideoCaptureState;
    :cond_e
    sget-object v7, Lcom/oneplus/camera/VideoCaptureState;->STOPPING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v6, v7, :cond_8

    goto :goto_2
.end method
