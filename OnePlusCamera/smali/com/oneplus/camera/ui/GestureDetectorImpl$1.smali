.class Lcom/oneplus/camera/ui/GestureDetectorImpl$1;
.super Ljava/lang/Object;
.source "GestureDetectorImpl.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/GestureDetectorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private m_DetectedSlideGesture:Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;

.field private m_DetectedSlideNotified:Z

.field private m_GestureStartTimeMillis:J

.field private m_ScrollHandler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

.field final synthetic this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/GestureDetectorImpl;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 43
    iput-object v2, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_ScrollHandler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    .line 44
    iput-object v2, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_DetectedSlideGesture:Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;

    .line 45
    iput-boolean v5, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_DetectedSlideNotified:Z

    .line 46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_GestureStartTimeMillis:J

    .line 47
    iget-object v2, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    iget-object v3, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    # invokes: Lcom/oneplus/camera/ui/GestureDetectorImpl;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;
    invoke-static {v3}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->access$000(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Lcom/oneplus/base/Rotation;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    # invokes: Lcom/oneplus/camera/ui/GestureDetectorImpl;->getRotation()Lcom/oneplus/base/Rotation;
    invoke-static {v4}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->access$100(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Lcom/oneplus/base/Rotation;

    move-result-object v4

    # invokes: Lcom/oneplus/camera/ui/GestureDetectorImpl;->rotateMotionEvent(Landroid/view/MotionEvent;Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    invoke-static {v2, p1, v3, v4}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->access$200(Lcom/oneplus/camera/ui/GestureDetectorImpl;Landroid/view/MotionEvent;Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 48
    iget-object v2, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    # getter for: Lcom/oneplus/camera/ui/GestureDetectorImpl;->m_GestureHandles:Ljava/util/List;
    invoke-static {v2}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->access$300(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 50
    iget-object v2, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    # getter for: Lcom/oneplus/camera/ui/GestureDetectorImpl;->m_GestureHandles:Ljava/util/List;
    invoke-static {v2}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->access$300(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;

    .line 51
    .local v0, "handle":Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;
    iget-object v2, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;->handler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    invoke-interface {v2, p1}, Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;->onGestureStart(Landroid/view/MotionEvent;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;->consumeGesture:Z

    .line 48
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 53
    .end local v0    # "handle":Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;
    :cond_0
    return v5
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 59
    iget-object v4, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_ScrollHandler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    if-eqz v4, :cond_0

    .line 61
    iget-object v4, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    # invokes: Lcom/oneplus/camera/ui/GestureDetectorImpl;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;
    invoke-static {v4}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->access$400(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Lcom/oneplus/base/Rotation;

    move-result-object v0

    .line 62
    .local v0, "activityRotation":Lcom/oneplus/base/Rotation;
    iget-object v4, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    # invokes: Lcom/oneplus/camera/ui/GestureDetectorImpl;->getRotation()Lcom/oneplus/base/Rotation;
    invoke-static {v4}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->access$500(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Lcom/oneplus/base/Rotation;

    move-result-object v3

    .line 63
    .local v3, "rotation":Lcom/oneplus/base/Rotation;
    iget-object v4, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    # invokes: Lcom/oneplus/camera/ui/GestureDetectorImpl;->rotateMotionEvent(Landroid/view/MotionEvent;Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    invoke-static {v4, p1, v0, v3}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->access$200(Lcom/oneplus/camera/ui/GestureDetectorImpl;Landroid/view/MotionEvent;Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 64
    iget-object v4, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    # invokes: Lcom/oneplus/camera/ui/GestureDetectorImpl;->rotateMotionEvent(Landroid/view/MotionEvent;Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    invoke-static {v4, p2, v0, v3}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->access$200(Lcom/oneplus/camera/ui/GestureDetectorImpl;Landroid/view/MotionEvent;Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 65
    iget-object v4, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    # invokes: Lcom/oneplus/camera/ui/GestureDetectorImpl;->rotateDistanceX(FFLcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)F
    invoke-static {v4, p3, p4, v0, v3}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->access$600(Lcom/oneplus/camera/ui/GestureDetectorImpl;FFLcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)F

    move-result v1

    .line 66
    .local v1, "rotatedVelocityX":F
    iget-object v4, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    # invokes: Lcom/oneplus/camera/ui/GestureDetectorImpl;->rotateDistanceY(FFLcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)F
    invoke-static {v4, p3, p4, v0, v3}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->access$700(Lcom/oneplus/camera/ui/GestureDetectorImpl;FFLcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)F

    move-result v2

    .line 67
    .local v2, "rotatedVelocityY":F
    iget-object v4, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_ScrollHandler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    invoke-interface {v4, p1, p2, v1, v2}, Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 68
    const/4 v4, 0x1

    .line 70
    .end local v0    # "activityRotation":Lcom/oneplus/base/Rotation;
    .end local v1    # "rotatedVelocityX":F
    .end local v2    # "rotatedVelocityY":F
    .end local v3    # "rotation":Lcom/oneplus/base/Rotation;
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 76
    iget-object v2, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    iget-object v3, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    # invokes: Lcom/oneplus/camera/ui/GestureDetectorImpl;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;
    invoke-static {v3}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->access$800(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Lcom/oneplus/base/Rotation;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    # invokes: Lcom/oneplus/camera/ui/GestureDetectorImpl;->getRotation()Lcom/oneplus/base/Rotation;
    invoke-static {v4}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->access$900(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Lcom/oneplus/base/Rotation;

    move-result-object v4

    # invokes: Lcom/oneplus/camera/ui/GestureDetectorImpl;->rotateMotionEvent(Landroid/view/MotionEvent;Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    invoke-static {v2, p1, v3, v4}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->access$200(Lcom/oneplus/camera/ui/GestureDetectorImpl;Landroid/view/MotionEvent;Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 77
    iget-object v2, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    # getter for: Lcom/oneplus/camera/ui/GestureDetectorImpl;->m_GestureHandles:Ljava/util/List;
    invoke-static {v2}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->access$300(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 79
    iget-object v2, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    # getter for: Lcom/oneplus/camera/ui/GestureDetectorImpl;->m_GestureHandles:Ljava/util/List;
    invoke-static {v2}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->access$300(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;

    .line 80
    .local v0, "handle":Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;
    iget-boolean v2, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;->consumeGesture:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;->handler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    invoke-interface {v2, p1}, Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;->onLongPress(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    .end local v0    # "handle":Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;
    :cond_0
    return-void

    .line 77
    .restart local v0    # "handle":Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 16
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 88
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    # invokes: Lcom/oneplus/camera/ui/GestureDetectorImpl;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;
    invoke-static {v11}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->access$1000(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Lcom/oneplus/base/Rotation;

    move-result-object v2

    .line 89
    .local v2, "activityRotation":Lcom/oneplus/base/Rotation;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    # invokes: Lcom/oneplus/camera/ui/GestureDetectorImpl;->getRotation()Lcom/oneplus/base/Rotation;
    invoke-static {v11}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->access$1100(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Lcom/oneplus/base/Rotation;

    move-result-object v10

    .line 90
    .local v10, "rotation":Lcom/oneplus/base/Rotation;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    move-object/from16 v0, p1

    # invokes: Lcom/oneplus/camera/ui/GestureDetectorImpl;->rotateMotionEvent(Landroid/view/MotionEvent;Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    invoke-static {v11, v0, v2, v10}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->access$200(Lcom/oneplus/camera/ui/GestureDetectorImpl;Landroid/view/MotionEvent;Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 91
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    move-object/from16 v0, p2

    # invokes: Lcom/oneplus/camera/ui/GestureDetectorImpl;->rotateMotionEvent(Landroid/view/MotionEvent;Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    invoke-static {v11, v0, v2, v10}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->access$200(Lcom/oneplus/camera/ui/GestureDetectorImpl;Landroid/view/MotionEvent;Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 92
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    move/from16 v0, p3

    move/from16 v1, p4

    # invokes: Lcom/oneplus/camera/ui/GestureDetectorImpl;->rotateDistanceX(FFLcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)F
    invoke-static {v11, v0, v1, v2, v10}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->access$600(Lcom/oneplus/camera/ui/GestureDetectorImpl;FFLcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)F

    move-result v8

    .line 93
    .local v8, "rotatedDistanceX":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    move/from16 v0, p3

    move/from16 v1, p4

    # invokes: Lcom/oneplus/camera/ui/GestureDetectorImpl;->rotateDistanceY(FFLcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)F
    invoke-static {v11, v0, v1, v2, v10}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->access$700(Lcom/oneplus/camera/ui/GestureDetectorImpl;FFLcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)F

    move-result v9

    .line 94
    .local v9, "rotatedDistanceY":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    sub-float v3, v11, v12

    .line 95
    .local v3, "diffX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    sub-float v4, v11, v12

    .line 96
    .local v4, "diffY":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_DetectedSlideGesture:Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;

    if-nez v11, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_GestureStartTimeMillis:J

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x320

    cmp-long v11, v12, v14

    if-gez v11, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    # getter for: Lcom/oneplus/camera/ui/GestureDetectorImpl;->m_HasMultiPointers:Z
    invoke-static {v11}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->access$1200(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 100
    const/high16 v11, -0x3cb80000    # -200.0f

    cmpg-float v11, v3, v11

    if-gez v11, :cond_4

    .line 101
    sget-object v11, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;->SLIDE_LEFT:Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_DetectedSlideGesture:Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;

    .line 111
    :cond_0
    :goto_0
    const/4 v7, 0x0

    .line 112
    .local v7, "isConsumed":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_ScrollHandler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    if-nez v11, :cond_9

    .line 114
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    # getter for: Lcom/oneplus/camera/ui/GestureDetectorImpl;->m_GestureHandles:Ljava/util/List;
    invoke-static {v11}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->access$300(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v6, v11, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_1

    .line 116
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    # getter for: Lcom/oneplus/camera/ui/GestureDetectorImpl;->m_GestureHandles:Ljava/util/List;
    invoke-static {v11}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->access$300(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;

    .line 117
    .local v5, "handle":Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;
    iget-boolean v11, v5, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;->consumeGesture:Z

    if-eqz v11, :cond_8

    iget-object v11, v5, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;->handler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v11, v0, v1, v8, v9}, Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 119
    const/4 v7, 0x1

    .line 120
    iget-object v11, v5, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;->handler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_ScrollHandler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    .line 130
    .end local v5    # "handle":Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;
    .end local v6    # "i":I
    :cond_1
    :goto_2
    if-eqz v7, :cond_3

    .line 133
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_DetectedSlideNotified:Z

    if-nez v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_DetectedSlideGesture:Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;

    if-eqz v11, :cond_3

    .line 135
    sget-object v11, Lcom/oneplus/camera/ui/GestureDetectorImpl$3;->$SwitchMap$com$oneplus$camera$ui$GestureDetectorImpl$GestureSlide:[I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_DetectedSlideGesture:Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;

    invoke-virtual {v12}, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 154
    :cond_2
    :goto_3
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_DetectedSlideNotified:Z

    .line 157
    :cond_3
    return v7

    .line 102
    .end local v7    # "isConsumed":Z
    :cond_4
    const/high16 v11, 0x43480000    # 200.0f

    cmpl-float v11, v3, v11

    if-lez v11, :cond_5

    .line 103
    sget-object v11, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;->SLIDE_RIGHT:Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_DetectedSlideGesture:Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;

    goto :goto_0

    .line 104
    :cond_5
    const/high16 v11, -0x3cb80000    # -200.0f

    cmpg-float v11, v4, v11

    if-gez v11, :cond_6

    .line 105
    sget-object v11, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;->SLIDE_TOP:Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_DetectedSlideGesture:Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;

    goto :goto_0

    .line 106
    :cond_6
    const/high16 v11, 0x43480000    # 200.0f

    cmpl-float v11, v4, v11

    if-lez v11, :cond_0

    .line 107
    sget-object v11, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;->SLIDE_BOTTOM:Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_DetectedSlideGesture:Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;

    goto/16 :goto_0

    .line 109
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    # getter for: Lcom/oneplus/camera/ui/GestureDetectorImpl;->m_HasMultiPointers:Z
    invoke-static {v11}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->access$1200(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 110
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_DetectedSlideGesture:Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;

    goto/16 :goto_0

    .line 114
    .restart local v5    # "handle":Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;
    .restart local v6    # "i":I
    .restart local v7    # "isConsumed":Z
    :cond_8
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_1

    .line 127
    .end local v5    # "handle":Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;
    .end local v6    # "i":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_ScrollHandler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v11, v0, v1, v8, v9}, Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 128
    const/4 v7, 0x1

    goto :goto_2

    .line 138
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_ScrollHandler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v11, v0, v1}, Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;->onSlideDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 139
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_DetectedSlideNotified:Z

    goto :goto_3

    .line 142
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_ScrollHandler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v11, v0, v1}, Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;->onSlideLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 143
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_DetectedSlideNotified:Z

    goto :goto_3

    .line 146
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_ScrollHandler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v11, v0, v1}, Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;->onSlideRight(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 147
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_DetectedSlideNotified:Z

    goto/16 :goto_3

    .line 150
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_ScrollHandler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v11, v0, v1}, Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;->onSlideUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 151
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_DetectedSlideNotified:Z

    goto/16 :goto_3

    .line 135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 163
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 168
    iget-object v2, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    iget-object v3, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    # invokes: Lcom/oneplus/camera/ui/GestureDetectorImpl;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;
    invoke-static {v3}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->access$1300(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Lcom/oneplus/base/Rotation;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    # invokes: Lcom/oneplus/camera/ui/GestureDetectorImpl;->getRotation()Lcom/oneplus/base/Rotation;
    invoke-static {v4}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->access$1400(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Lcom/oneplus/base/Rotation;

    move-result-object v4

    # invokes: Lcom/oneplus/camera/ui/GestureDetectorImpl;->rotateMotionEvent(Landroid/view/MotionEvent;Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    invoke-static {v2, p1, v3, v4}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->access$200(Lcom/oneplus/camera/ui/GestureDetectorImpl;Landroid/view/MotionEvent;Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 169
    iget-object v2, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    # getter for: Lcom/oneplus/camera/ui/GestureDetectorImpl;->m_GestureHandles:Ljava/util/List;
    invoke-static {v2}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->access$300(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 171
    iget-object v2, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    # getter for: Lcom/oneplus/camera/ui/GestureDetectorImpl;->m_GestureHandles:Ljava/util/List;
    invoke-static {v2}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->access$300(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;

    .line 172
    .local v0, "handle":Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;
    iget-boolean v2, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;->consumeGesture:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;->handler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    invoke-interface {v2, p1}, Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    const/4 v2, 0x1

    .line 175
    .end local v0    # "handle":Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;
    :goto_1
    return v2

    .line 169
    .restart local v0    # "handle":Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 175
    .end local v0    # "handle":Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
