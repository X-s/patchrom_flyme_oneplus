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


# static fields
.field private static final synthetic -com-oneplus-camera-ui-GestureDetectorImpl$GestureSlideSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$oneplus$camera$ui$GestureDetectorImpl$GestureSlide:[I

.field private m_DetectedSlideGesture:Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;

.field private m_DetectedSlideNotified:Z

.field private m_GestureStartTimeMillis:J

.field private m_ScrollHandler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

.field final synthetic this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;


# direct methods
.method private static synthetic -getcom-oneplus-camera-ui-GestureDetectorImpl$GestureSlideSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->-com-oneplus-camera-ui-GestureDetectorImpl$GestureSlideSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->-com-oneplus-camera-ui-GestureDetectorImpl$GestureSlideSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;->values()[Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;->SLIDE_BOTTOM:Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;->SLIDE_LEFT:Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;->SLIDE_RIGHT:Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;->SLIDE_TOP:Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->-com-oneplus-camera-ui-GestureDetectorImpl$GestureSlideSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/oneplus/camera/ui/GestureDetectorImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/GestureDetectorImpl;

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

    .line 44
    iput-object v2, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_ScrollHandler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    .line 45
    iput-object v2, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_DetectedSlideGesture:Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;

    .line 46
    iput-boolean v5, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_DetectedSlideNotified:Z

    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_GestureStartTimeMillis:J

    .line 48
    iget-object v2, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    iget-object v3, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    invoke-static {v3}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->-wrap0(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Lcom/oneplus/base/Rotation;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    invoke-static {v4}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->-wrap1(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Lcom/oneplus/base/Rotation;

    move-result-object v4

    invoke-static {v2, p1, v3, v4}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->-wrap5(Lcom/oneplus/camera/ui/GestureDetectorImpl;Landroid/view/MotionEvent;Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 49
    iget-object v2, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    invoke-static {v2}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->-get0(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 51
    iget-object v2, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    invoke-static {v2}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->-get0(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;

    .line 52
    .local v0, "handle":Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;
    iget-object v2, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;->handler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    invoke-interface {v2, p1}, Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;->onGestureStart(Landroid/view/MotionEvent;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;->consumeGesture:Z

    .line 49
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 54
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
    .line 60
    iget-object v4, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_ScrollHandler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    if-eqz v4, :cond_0

    .line 62
    iget-object v4, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    invoke-static {v4}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->-wrap0(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Lcom/oneplus/base/Rotation;

    move-result-object v0

    .line 63
    .local v0, "activityRotation":Lcom/oneplus/base/Rotation;
    iget-object v4, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    invoke-static {v4}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->-wrap1(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Lcom/oneplus/base/Rotation;

    move-result-object v3

    .line 64
    .local v3, "rotation":Lcom/oneplus/base/Rotation;
    iget-object v4, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    invoke-static {v4, p1, v0, v3}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->-wrap5(Lcom/oneplus/camera/ui/GestureDetectorImpl;Landroid/view/MotionEvent;Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 65
    iget-object v4, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    invoke-static {v4, p2, v0, v3}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->-wrap5(Lcom/oneplus/camera/ui/GestureDetectorImpl;Landroid/view/MotionEvent;Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 66
    iget-object v4, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    invoke-static {v4, p3, p4, v0, v3}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->-wrap2(Lcom/oneplus/camera/ui/GestureDetectorImpl;FFLcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)F

    move-result v1

    .line 67
    .local v1, "rotatedVelocityX":F
    iget-object v4, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    invoke-static {v4, p3, p4, v0, v3}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->-wrap3(Lcom/oneplus/camera/ui/GestureDetectorImpl;FFLcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)F

    move-result v2

    .line 68
    .local v2, "rotatedVelocityY":F
    iget-object v4, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_ScrollHandler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    invoke-interface {v4, p1, p2, v1, v2}, Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 69
    const/4 v4, 0x1

    return v4

    .line 71
    .end local v0    # "activityRotation":Lcom/oneplus/base/Rotation;
    .end local v1    # "rotatedVelocityX":F
    .end local v2    # "rotatedVelocityY":F
    .end local v3    # "rotation":Lcom/oneplus/base/Rotation;
    :cond_0
    const/4 v4, 0x0

    return v4
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 77
    iget-object v2, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    iget-object v3, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    invoke-static {v3}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->-wrap0(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Lcom/oneplus/base/Rotation;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    invoke-static {v4}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->-wrap1(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Lcom/oneplus/base/Rotation;

    move-result-object v4

    invoke-static {v2, p1, v3, v4}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->-wrap5(Lcom/oneplus/camera/ui/GestureDetectorImpl;Landroid/view/MotionEvent;Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 78
    iget-object v2, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    invoke-static {v2}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->-get0(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 80
    iget-object v2, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    invoke-static {v2}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->-get0(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;

    .line 81
    .local v0, "handle":Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;
    iget-boolean v2, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;->consumeGesture:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;->handler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    invoke-interface {v2, p1}, Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;->onLongPress(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    return-void

    .line 78
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 75
    .end local v0    # "handle":Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;
    :cond_1
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 16
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 89
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    invoke-static {v11}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->-wrap0(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Lcom/oneplus/base/Rotation;

    move-result-object v2

    .line 90
    .local v2, "activityRotation":Lcom/oneplus/base/Rotation;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    invoke-static {v11}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->-wrap1(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Lcom/oneplus/base/Rotation;

    move-result-object v10

    .line 91
    .local v10, "rotation":Lcom/oneplus/base/Rotation;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    move-object/from16 v0, p1

    invoke-static {v11, v0, v2, v10}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->-wrap5(Lcom/oneplus/camera/ui/GestureDetectorImpl;Landroid/view/MotionEvent;Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 92
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    move-object/from16 v0, p2

    invoke-static {v11, v0, v2, v10}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->-wrap5(Lcom/oneplus/camera/ui/GestureDetectorImpl;Landroid/view/MotionEvent;Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 93
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v11, v0, v1, v2, v10}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->-wrap2(Lcom/oneplus/camera/ui/GestureDetectorImpl;FFLcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)F

    move-result v8

    .line 94
    .local v8, "rotatedDistanceX":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v11, v0, v1, v2, v10}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->-wrap3(Lcom/oneplus/camera/ui/GestureDetectorImpl;FFLcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)F

    move-result v9

    .line 95
    .local v9, "rotatedDistanceY":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    sub-float v3, v11, v12

    .line 96
    .local v3, "diffX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    sub-float v4, v11, v12

    .line 97
    .local v4, "diffY":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_DetectedSlideGesture:Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;

    if-nez v11, :cond_0

    .line 98
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_GestureStartTimeMillis:J

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x320

    cmp-long v11, v12, v14

    if-gez v11, :cond_0

    .line 99
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    invoke-static {v11}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->-get1(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 110
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    invoke-static {v11}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->-get1(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 111
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_DetectedSlideGesture:Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;

    .line 112
    :cond_1
    :goto_0
    const/4 v7, 0x0

    .line 113
    .local v7, "isConsumed":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_ScrollHandler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    if-nez v11, :cond_a

    .line 115
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    invoke-static {v11}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->-get0(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v6, v11, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_2

    .line 117
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    invoke-static {v11}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->-get0(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;

    .line 118
    .local v5, "handle":Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;
    iget-boolean v11, v5, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;->consumeGesture:Z

    if-eqz v11, :cond_9

    iget-object v11, v5, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;->handler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v11, v0, v1, v8, v9}, Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 120
    const/4 v7, 0x1

    .line 121
    iget-object v11, v5, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;->handler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_ScrollHandler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    .line 131
    .end local v5    # "handle":Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;
    .end local v6    # "i":I
    :cond_2
    :goto_2
    if-eqz v7, :cond_4

    .line 134
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_DetectedSlideNotified:Z

    if-nez v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_DetectedSlideGesture:Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;

    if-eqz v11, :cond_4

    .line 136
    invoke-static {}, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->-getcom-oneplus-camera-ui-GestureDetectorImpl$GestureSlideSwitchesValues()[I

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_DetectedSlideGesture:Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;

    invoke-virtual {v12}, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 155
    :cond_3
    :goto_3
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_DetectedSlideNotified:Z

    .line 158
    :cond_4
    return v7

    .line 101
    .end local v7    # "isConsumed":Z
    :cond_5
    const/high16 v11, -0x3cb80000    # -200.0f

    cmpg-float v11, v3, v11

    if-gez v11, :cond_6

    .line 102
    sget-object v11, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;->SLIDE_LEFT:Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_DetectedSlideGesture:Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;

    goto :goto_0

    .line 103
    :cond_6
    const/high16 v11, 0x43480000    # 200.0f

    cmpl-float v11, v3, v11

    if-lez v11, :cond_7

    .line 104
    sget-object v11, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;->SLIDE_RIGHT:Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_DetectedSlideGesture:Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;

    goto :goto_0

    .line 105
    :cond_7
    const/high16 v11, -0x3cb80000    # -200.0f

    cmpg-float v11, v4, v11

    if-gez v11, :cond_8

    .line 106
    sget-object v11, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;->SLIDE_TOP:Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_DetectedSlideGesture:Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;

    goto/16 :goto_0

    .line 107
    :cond_8
    const/high16 v11, 0x43480000    # 200.0f

    cmpl-float v11, v4, v11

    if-lez v11, :cond_1

    .line 108
    sget-object v11, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;->SLIDE_BOTTOM:Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_DetectedSlideGesture:Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;

    goto/16 :goto_0

    .line 115
    .restart local v5    # "handle":Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;
    .restart local v6    # "i":I
    .restart local v7    # "isConsumed":Z
    :cond_9
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_1

    .line 128
    .end local v5    # "handle":Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;
    .end local v6    # "i":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_ScrollHandler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v11, v0, v1, v8, v9}, Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 129
    const/4 v7, 0x1

    goto :goto_2

    .line 139
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_ScrollHandler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v11, v0, v1}, Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;->onSlideDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 140
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_DetectedSlideNotified:Z

    goto :goto_3

    .line 143
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_ScrollHandler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v11, v0, v1}, Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;->onSlideLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 144
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_DetectedSlideNotified:Z

    goto :goto_3

    .line 147
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_ScrollHandler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v11, v0, v1}, Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;->onSlideRight(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 148
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_DetectedSlideNotified:Z

    goto/16 :goto_3

    .line 151
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_ScrollHandler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v11, v0, v1}, Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;->onSlideUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 152
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->m_DetectedSlideNotified:Z

    goto/16 :goto_3

    .line 136
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
    .line 162
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    .line 169
    iget-object v2, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    iget-object v3, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    invoke-static {v3}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->-wrap0(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Lcom/oneplus/base/Rotation;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    invoke-static {v4}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->-wrap1(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Lcom/oneplus/base/Rotation;

    move-result-object v4

    invoke-static {v2, p1, v3, v4}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->-wrap5(Lcom/oneplus/camera/ui/GestureDetectorImpl;Landroid/view/MotionEvent;Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 170
    iget-object v2, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    invoke-static {v2}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->-get0(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 172
    iget-object v2, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    invoke-static {v2}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->-get0(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;

    .line 173
    .local v0, "handle":Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;
    iget-boolean v2, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;->consumeGesture:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;->handler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    invoke-interface {v2, p1}, Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    const/4 v2, 0x1

    return v2

    .line 170
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 176
    .end local v0    # "handle":Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;
    :cond_1
    return v5
.end method
