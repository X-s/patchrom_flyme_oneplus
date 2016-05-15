.class public Lorg/codeaurora/Performance;
.super Ljava/lang/Object;
.source "Performance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/Performance$TouchInfo;
    }
.end annotation


# static fields
.field public static final ALL_CPUS_PC_DIS:I = 0x101

.field public static final ALL_CPUS_PWR_CLPS_DIS:I = 0x100

.field public static final CPU0_FREQ_NONTURBO_MAX:I = 0x20a

.field public static final CPU0_FREQ_TURBO_MAX:I = 0x2fe

.field public static final CPU0_MAX_FREQ_NONTURBO_MAX:I = 0x150a

.field public static final CPU1_FREQ_NONTURBO_MAX:I = 0x30a

.field public static final CPU1_FREQ_TURBO_MAX:I = 0x3fe

.field public static final CPU1_MAX_FREQ_NONTURBO_MAX:I = 0x160a

.field public static final CPU2_FREQ_NONTURBO_MAX:I = 0x40a

.field public static final CPU2_FREQ_TURBO_MAX:I = 0x4fe

.field public static final CPU2_MAX_FREQ_NONTURBO_MAX:I = 0x170a

.field public static final CPU3_FREQ_NONTURBO_MAX:I = 0x50a

.field public static final CPU3_FREQ_TURBO_MAX:I = 0x5fe

.field public static final CPU3_MAX_FREQ_NONTURBO_MAX:I = 0x180a

.field public static final CPUS_ON_2:I = 0x702

.field public static final CPUS_ON_3:I = 0x703

.field public static final CPUS_ON_LIMIT_1:I = 0x8fe

.field public static final CPUS_ON_LIMIT_2:I = 0x8fd

.field public static final CPUS_ON_LIMIT_3:I = 0x8fc

.field public static final CPUS_ON_MAX:I = 0x7ff

.field public static final REQUEST_FAILED:I = -0x1

.field public static final REQUEST_SUCCEEDED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Perf"

.field private static isFlingEnabled:Z

.field private static mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

.field private static mVelocityTracker:Landroid/view/VelocityTracker;

.field private static sPower:Landroid/os/IPowerManager;


# instance fields
.field private handle:I

.field private mDivFact:I

.field private mHDragPix:I

.field private mMaxVelocity:I

.field private mMinVelocity:I

.field private mWDragPix:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    const/4 v0, 0x0

    sput-boolean v0, Lorg/codeaurora/Performance;->isFlingEnabled:Z

    .line 148
    sput-object v1, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    .line 149
    sput-object v1, Lorg/codeaurora/Performance;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/Performance;->handle:I

    .line 105
    const/4 v0, 0x6

    iput v0, p0, Lorg/codeaurora/Performance;->mDivFact:I

    .line 107
    iput v1, p0, Lorg/codeaurora/Performance;->mWDragPix:I

    .line 108
    iput v1, p0, Lorg/codeaurora/Performance;->mHDragPix:I

    .line 110
    const/16 v0, 0x96

    iput v0, p0, Lorg/codeaurora/Performance;->mMinVelocity:I

    .line 111
    const/16 v0, 0x5dc0

    iput v0, p0, Lorg/codeaurora/Performance;->mMaxVelocity:I

    .line 50
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 43
    sput-boolean p0, Lorg/codeaurora/Performance;->isFlingEnabled:Z

    return p0
.end method

.method public static boostEnableAndRaisePriorityTimeoutMs(I)V
    .locals 5
    .param p0, "timeout_ms"    # I

    .prologue
    .line 287
    :try_start_0
    sget-object v2, Lorg/codeaurora/Performance;->sPower:Landroid/os/IPowerManager;

    if-nez v2, :cond_0

    .line 288
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 289
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    sput-object v2, Lorg/codeaurora/Performance;->sPower:Landroid/os/IPowerManager;

    .line 290
    sget-object v2, Lorg/codeaurora/Performance;->sPower:Landroid/os/IPowerManager;

    if-nez v2, :cond_0

    .line 291
    const-string v2, "Perf"

    const-string v3, "Failed to get power manager service."

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .end local v0    # "b":Landroid/os/IBinder;
    :goto_0
    return-void

    .line 295
    :cond_0
    sget-object v2, Lorg/codeaurora/Performance;->sPower:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-interface {v2, v3, p0}, Landroid/os/IPowerManager;->boostEnableAndRaisePriorityTimeoutMs(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Perf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERR: RemoteException in boostEnableAndRaisePriorityTimeoutMs:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private native native_cpu_setoptions(II)I
.end method

.method private native native_deinit()V
.end method

.method private native native_perf_lock_acq(II[I)I
.end method

.method private native native_perf_lock_rel(I)I
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0}, Lorg/codeaurora/Performance;->native_deinit()V

    .line 274
    return-void
.end method

.method public varargs perfLockAcquire(I[I)I
    .locals 2
    .param p1, "duration"    # I
    .param p2, "list"    # [I

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "rc":I
    iget v1, p0, Lorg/codeaurora/Performance;->handle:I

    invoke-direct {p0, v1, p1, p2}, Lorg/codeaurora/Performance;->native_perf_lock_acq(II[I)I

    move-result v1

    iput v1, p0, Lorg/codeaurora/Performance;->handle:I

    .line 96
    iget v1, p0, Lorg/codeaurora/Performance;->handle:I

    if-nez v1, :cond_0

    .line 97
    const/4 v0, -0x1

    .line 98
    :cond_0
    return v0
.end method

.method public varargs perfLockAcquireTouch(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;I[I)I
    .locals 19
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "duration"    # I
    .param p4, "list"    # [I

    .prologue
    .line 155
    const/4 v10, -0x1

    .line 156
    .local v10, "rc":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 157
    .local v3, "actionMasked":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    .line 158
    .local v9, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    .line 159
    .local v8, "pointerId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    float-to-int v13, v15

    .line 160
    .local v13, "y":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    float-to-int v11, v15

    .line 162
    .local v11, "x":I
    int-to-float v15, v11

    const/high16 v16, 0x3f800000    # 1.0f

    mul-float v15, v15, v16

    move-object/from16 v0, p2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v16, v0

    div-float v15, v15, v16

    float-to-int v4, v15

    .line 163
    .local v4, "dx":I
    int-to-float v15, v13

    const/high16 v16, 0x3f800000    # 1.0f

    mul-float v15, v15, v16

    move-object/from16 v0, p2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v16, v0

    div-float v15, v15, v16

    float-to-int v5, v15

    .line 165
    .local v5, "dy":I
    const/4 v7, 0x0

    .line 167
    .local v7, "isBoostRequired":Z
    packed-switch v3, :pswitch_data_0

    .line 257
    :cond_0
    :goto_0
    const/4 v15, 0x1

    if-ne v7, v15, :cond_1

    .line 258
    move-object/from16 v0, p0

    iget v15, v0, Lorg/codeaurora/Performance;->handle:I

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v15, v1, v2}, Lorg/codeaurora/Performance;->native_perf_lock_acq(II[I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lorg/codeaurora/Performance;->handle:I

    .line 259
    move-object/from16 v0, p0

    iget v15, v0, Lorg/codeaurora/Performance;->handle:I

    if-eqz v15, :cond_1

    .line 260
    const/4 v10, 0x0

    .line 263
    :cond_1
    return v10

    .line 169
    :pswitch_0
    sget-object v15, Lorg/codeaurora/Performance;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v15, :cond_4

    .line 171
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v15

    sput-object v15, Lorg/codeaurora/Performance;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 178
    :goto_1
    sget-object v15, Lorg/codeaurora/Performance;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v15, :cond_2

    .line 180
    sget-object v15, Lorg/codeaurora/Performance;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 182
    :cond_2
    sget-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    if-nez v15, :cond_3

    .line 183
    new-instance v15, Lorg/codeaurora/Performance$TouchInfo;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lorg/codeaurora/Performance$TouchInfo;-><init>(Lorg/codeaurora/Performance;)V

    sput-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    .line 185
    :cond_3
    sget-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    if-eqz v15, :cond_0

    .line 187
    sget-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # invokes: Lorg/codeaurora/Performance$TouchInfo;->reset()V
    invoke-static {v15}, Lorg/codeaurora/Performance$TouchInfo;->access$100(Lorg/codeaurora/Performance$TouchInfo;)V

    .line 189
    sget-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # invokes: Lorg/codeaurora/Performance$TouchInfo;->setStartXY(II)V
    invoke-static {v15, v4, v5}, Lorg/codeaurora/Performance$TouchInfo;->access$200(Lorg/codeaurora/Performance$TouchInfo;II)V

    .line 191
    sget-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/codeaurora/Performance;->mWDragPix:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    mul-float v16, v16, v17

    move-object/from16 v0, p2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v17, v0

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/codeaurora/Performance;->mHDragPix:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    mul-float v17, v17, v18

    move-object/from16 v0, p2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    # invokes: Lorg/codeaurora/Performance$TouchInfo;->setDragWH(II)V
    invoke-static/range {v15 .. v17}, Lorg/codeaurora/Performance$TouchInfo;->access$300(Lorg/codeaurora/Performance$TouchInfo;II)V

    goto/16 :goto_0

    .line 175
    :cond_4
    sget-object v15, Lorg/codeaurora/Performance;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v15}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    .line 198
    :pswitch_1
    sget-object v15, Lorg/codeaurora/Performance;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v15, :cond_5

    .line 200
    sget-object v15, Lorg/codeaurora/Performance;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 203
    :cond_5
    sget-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    if-eqz v15, :cond_0

    .line 204
    sget-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # getter for: Lorg/codeaurora/Performance$TouchInfo;->mCurX:I
    invoke-static {v15}, Lorg/codeaurora/Performance$TouchInfo;->access$400(Lorg/codeaurora/Performance$TouchInfo;)I

    move-result v15

    sub-int v15, v4, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 205
    .local v12, "xdiff":I
    sget-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # getter for: Lorg/codeaurora/Performance$TouchInfo;->mCurY:I
    invoke-static {v15}, Lorg/codeaurora/Performance$TouchInfo;->access$500(Lorg/codeaurora/Performance$TouchInfo;)I

    move-result v15

    sub-int v15, v5, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 207
    .local v14, "ydiff":I
    sget-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # invokes: Lorg/codeaurora/Performance$TouchInfo;->setXY(II)V
    invoke-static {v15, v4, v5}, Lorg/codeaurora/Performance$TouchInfo;->access$600(Lorg/codeaurora/Performance$TouchInfo;II)V

    .line 209
    sget-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # getter for: Lorg/codeaurora/Performance$TouchInfo;->mMinDragW:I
    invoke-static {v15}, Lorg/codeaurora/Performance$TouchInfo;->access$700(Lorg/codeaurora/Performance$TouchInfo;)I

    move-result v15

    if-gt v12, v15, :cond_6

    sget-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # getter for: Lorg/codeaurora/Performance$TouchInfo;->mMinDragH:I
    invoke-static {v15}, Lorg/codeaurora/Performance$TouchInfo;->access$800(Lorg/codeaurora/Performance$TouchInfo;)I

    move-result v15

    if-le v14, v15, :cond_0

    .line 212
    :cond_6
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 219
    .end local v12    # "xdiff":I
    .end local v14    # "ydiff":I
    :pswitch_2
    sget-object v15, Lorg/codeaurora/Performance;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v15, :cond_7

    .line 221
    sget-object v15, Lorg/codeaurora/Performance;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 223
    sget-object v15, Lorg/codeaurora/Performance;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v16, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lorg/codeaurora/Performance;->mMaxVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 224
    sget-object v15, Lorg/codeaurora/Performance;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v15, v8}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v15

    float-to-int v15, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 226
    .local v6, "initialVelocity":I
    move-object/from16 v0, p0

    iget v15, v0, Lorg/codeaurora/Performance;->mMinVelocity:I

    if-le v6, v15, :cond_7

    .line 228
    move/from16 v0, p3

    int-to-float v15, v0

    const/high16 v16, 0x3f800000    # 1.0f

    int-to-float v0, v6

    move/from16 v17, v0

    mul-float v16, v16, v17

    const/high16 v17, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/codeaurora/Performance;->mMinVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    div-float v16, v16, v17

    mul-float v15, v15, v16

    float-to-int v0, v15

    move/from16 p3, v0

    .line 230
    const/4 v7, 0x1

    .line 231
    goto/16 :goto_0

    .line 234
    .end local v6    # "initialVelocity":I
    :cond_7
    sget-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    if-eqz v15, :cond_0

    .line 235
    sget-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # getter for: Lorg/codeaurora/Performance$TouchInfo;->mCurX:I
    invoke-static {v15}, Lorg/codeaurora/Performance$TouchInfo;->access$400(Lorg/codeaurora/Performance$TouchInfo;)I

    move-result v15

    sub-int v15, v4, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 236
    .restart local v12    # "xdiff":I
    sget-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # getter for: Lorg/codeaurora/Performance$TouchInfo;->mCurY:I
    invoke-static {v15}, Lorg/codeaurora/Performance$TouchInfo;->access$500(Lorg/codeaurora/Performance$TouchInfo;)I

    move-result v15

    sub-int v15, v5, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 238
    .restart local v14    # "ydiff":I
    sget-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # getter for: Lorg/codeaurora/Performance$TouchInfo;->mMinDragW:I
    invoke-static {v15}, Lorg/codeaurora/Performance$TouchInfo;->access$700(Lorg/codeaurora/Performance$TouchInfo;)I

    move-result v15

    if-gt v12, v15, :cond_8

    sget-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # getter for: Lorg/codeaurora/Performance$TouchInfo;->mMinDragH:I
    invoke-static {v15}, Lorg/codeaurora/Performance$TouchInfo;->access$800(Lorg/codeaurora/Performance$TouchInfo;)I

    move-result v15

    if-le v14, v15, :cond_0

    .line 241
    :cond_8
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 248
    .end local v12    # "xdiff":I
    .end local v14    # "ydiff":I
    :pswitch_3
    sget-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    if-eqz v15, :cond_0

    .line 249
    sget-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # invokes: Lorg/codeaurora/Performance$TouchInfo;->reset()V
    invoke-static {v15}, Lorg/codeaurora/Performance$TouchInfo;->access$100(Lorg/codeaurora/Performance$TouchInfo;)V

    goto/16 :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public perfLockRelease()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lorg/codeaurora/Performance;->handle:I

    invoke-direct {p0, v0}, Lorg/codeaurora/Performance;->native_perf_lock_rel(I)I

    move-result v0

    return v0
.end method
