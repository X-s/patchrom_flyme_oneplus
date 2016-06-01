.class synthetic Lcom/oneplus/camera/manual/ManualModeUI$22;
.super Ljava/lang/Object;
.source "ManualModeUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/manual/ManualModeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oneplus$base$BaseActivity$State:[I

.field static final synthetic $SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

.field static final synthetic $SwitchMap$com$oneplus$camera$manual$ControlType:[I

.field static final synthetic $SwitchMap$com$oneplus$camera$manual$KnobView$RotationState:[I

.field static final synthetic $SwitchMap$com$oneplus$camera$manual$ManualModeUI$AnimationType:[I

.field static final synthetic $SwitchMap$com$oneplus$camera$manual$ManualModeUI$ViewVisibilityState:[I

.field static final synthetic $SwitchMap$com$oneplus$util$AspectRatio:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1195
    invoke-static {}, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->values()[Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI$22;->$SwitchMap$com$oneplus$camera$manual$ManualModeUI$AnimationType:[I

    :try_start_0
    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI$22;->$SwitchMap$com$oneplus$camera$manual$ManualModeUI$AnimationType:[I

    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->FADE_OUT_FROM_BOTTOM:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_12

    :goto_0
    :try_start_1
    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI$22;->$SwitchMap$com$oneplus$camera$manual$ManualModeUI$AnimationType:[I

    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->FADE_IN_FROM_BOTTOM:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_11

    :goto_1
    :try_start_2
    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI$22;->$SwitchMap$com$oneplus$camera$manual$ManualModeUI$AnimationType:[I

    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->FADE_IN:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_10

    .line 1140
    :goto_2
    invoke-static {}, Lcom/oneplus/util/AspectRatio;->values()[Lcom/oneplus/util/AspectRatio;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI$22;->$SwitchMap$com$oneplus$util$AspectRatio:[I

    :try_start_3
    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI$22;->$SwitchMap$com$oneplus$util$AspectRatio:[I

    sget-object v1, Lcom/oneplus/util/AspectRatio;->RATIO_3x2:Lcom/oneplus/util/AspectRatio;

    invoke-virtual {v1}, Lcom/oneplus/util/AspectRatio;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_f

    :goto_3
    :try_start_4
    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI$22;->$SwitchMap$com$oneplus$util$AspectRatio:[I

    sget-object v1, Lcom/oneplus/util/AspectRatio;->RATIO_1x1:Lcom/oneplus/util/AspectRatio;

    invoke-virtual {v1}, Lcom/oneplus/util/AspectRatio;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_e

    .line 888
    :goto_4
    invoke-static {}, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->values()[Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI$22;->$SwitchMap$com$oneplus$camera$manual$ManualModeUI$ViewVisibilityState:[I

    :try_start_5
    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI$22;->$SwitchMap$com$oneplus$camera$manual$ManualModeUI$ViewVisibilityState:[I

    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->VISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_d

    :goto_5
    :try_start_6
    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI$22;->$SwitchMap$com$oneplus$camera$manual$ManualModeUI$ViewVisibilityState:[I

    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_c

    :goto_6
    :try_start_7
    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI$22;->$SwitchMap$com$oneplus$camera$manual$ManualModeUI$ViewVisibilityState:[I

    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->IN_ANIMATING:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_b

    :goto_7
    :try_start_8
    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI$22;->$SwitchMap$com$oneplus$camera$manual$ManualModeUI$ViewVisibilityState:[I

    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->OUT_ANIMATING:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_a

    .line 768
    :goto_8
    invoke-static {}, Lcom/oneplus/camera/manual/KnobView$RotationState;->values()[Lcom/oneplus/camera/manual/KnobView$RotationState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI$22;->$SwitchMap$com$oneplus$camera$manual$KnobView$RotationState:[I

    :try_start_9
    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI$22;->$SwitchMap$com$oneplus$camera$manual$KnobView$RotationState:[I

    sget-object v1, Lcom/oneplus/camera/manual/KnobView$RotationState;->STARTING:Lcom/oneplus/camera/manual/KnobView$RotationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/KnobView$RotationState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :goto_9
    :try_start_a
    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI$22;->$SwitchMap$com$oneplus$camera$manual$KnobView$RotationState:[I

    sget-object v1, Lcom/oneplus/camera/manual/KnobView$RotationState;->STOPPING:Lcom/oneplus/camera/manual/KnobView$RotationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/KnobView$RotationState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_8

    .line 646
    :goto_a
    invoke-static {}, Lcom/oneplus/camera/PhotoCaptureState;->values()[Lcom/oneplus/camera/PhotoCaptureState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI$22;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    :try_start_b
    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI$22;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->CAPTURING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_7

    :goto_b
    :try_start_c
    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI$22;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_6

    .line 572
    :goto_c
    invoke-static {}, Lcom/oneplus/base/BaseActivity$State;->values()[Lcom/oneplus/base/BaseActivity$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI$22;->$SwitchMap$com$oneplus$base$BaseActivity$State:[I

    :try_start_d
    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI$22;->$SwitchMap$com$oneplus$base$BaseActivity$State:[I

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->STOPPED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_5

    :goto_d
    :try_start_e
    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI$22;->$SwitchMap$com$oneplus$base$BaseActivity$State:[I

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_4

    .line 168
    :goto_e
    invoke-static {}, Lcom/oneplus/camera/manual/ControlType;->values()[Lcom/oneplus/camera/manual/ControlType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI$22;->$SwitchMap$com$oneplus$camera$manual$ControlType:[I

    :try_start_f
    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI$22;->$SwitchMap$com$oneplus$camera$manual$ControlType:[I

    sget-object v1, Lcom/oneplus/camera/manual/ControlType;->ISO:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ControlType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_3

    :goto_f
    :try_start_10
    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI$22;->$SwitchMap$com$oneplus$camera$manual$ControlType:[I

    sget-object v1, Lcom/oneplus/camera/manual/ControlType;->AWB:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ControlType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_2

    :goto_10
    :try_start_11
    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI$22;->$SwitchMap$com$oneplus$camera$manual$ControlType:[I

    sget-object v1, Lcom/oneplus/camera/manual/ControlType;->EXPOSURE:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ControlType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_1

    :goto_11
    :try_start_12
    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI$22;->$SwitchMap$com$oneplus$camera$manual$ControlType:[I

    sget-object v1, Lcom/oneplus/camera/manual/ControlType;->FOCUS:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ControlType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_0

    :goto_12
    return-void

    :catch_0
    move-exception v0

    goto :goto_12

    :catch_1
    move-exception v0

    goto :goto_11

    :catch_2
    move-exception v0

    goto :goto_10

    :catch_3
    move-exception v0

    goto :goto_f

    .line 572
    :catch_4
    move-exception v0

    goto :goto_e

    :catch_5
    move-exception v0

    goto :goto_d

    .line 646
    :catch_6
    move-exception v0

    goto :goto_c

    :catch_7
    move-exception v0

    goto :goto_b

    .line 768
    :catch_8
    move-exception v0

    goto/16 :goto_a

    :catch_9
    move-exception v0

    goto/16 :goto_9

    .line 888
    :catch_a
    move-exception v0

    goto/16 :goto_8

    :catch_b
    move-exception v0

    goto/16 :goto_7

    :catch_c
    move-exception v0

    goto/16 :goto_6

    :catch_d
    move-exception v0

    goto/16 :goto_5

    .line 1140
    :catch_e
    move-exception v0

    goto/16 :goto_4

    :catch_f
    move-exception v0

    goto/16 :goto_3

    .line 1195
    :catch_10
    move-exception v0

    goto/16 :goto_2

    :catch_11
    move-exception v0

    goto/16 :goto_1

    :catch_12
    move-exception v0

    goto/16 :goto_0
.end method
