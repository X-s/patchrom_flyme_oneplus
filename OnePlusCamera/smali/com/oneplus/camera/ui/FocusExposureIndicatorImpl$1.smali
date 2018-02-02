.class Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$1;
.super Lcom/oneplus/camera/ui/BaseGestureHandler;
.source "FocusExposureIndicatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final synthetic -com-oneplus-base-RotationSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$oneplus$base$Rotation:[I

.field final synthetic this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;


# direct methods
.method private static synthetic -getcom-oneplus-base-RotationSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$1;->-com-oneplus-base-RotationSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$1;->-com-oneplus-base-RotationSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/base/Rotation;->values()[Lcom/oneplus/base/Rotation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$1;->-com-oneplus-base-RotationSwitchesValues:[I

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

.method constructor <init>(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$1;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    invoke-direct {p0}, Lcom/oneplus/camera/ui/BaseGestureHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v6, 0x1

    .line 117
    iget-object v5, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$1;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    invoke-static {v5}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-get4(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    move-result-object v5

    sget-object v7, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->VISIBLE:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    if-eq v5, v7, :cond_0

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oneplus/camera/ui/BaseGestureHandler;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v5

    return v5

    .line 122
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-le v5, v6, :cond_1

    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oneplus/camera/ui/BaseGestureHandler;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v5

    return v5

    .line 125
    :cond_1
    invoke-static {}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$1;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v5

    iget-object v7, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$1;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    invoke-static {v7}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-wrap2(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)Lcom/oneplus/base/Rotation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_0

    .line 136
    :cond_2
    :pswitch_0
    iget-object v5, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$1;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    invoke-virtual {v5}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    sget-object v7, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v5, v7}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_4

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oneplus/camera/ui/BaseGestureHandler;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v5

    return v5

    .line 129
    :pswitch_1
    const/4 v5, 0x0

    cmpl-float v5, p3, v5

    if-eqz v5, :cond_3

    div-float v3, p4, p3

    .line 130
    .local v3, "slope":F
    :goto_0
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v7, 0x3f570a3d    # 0.84f

    cmpg-float v5, v5, v7

    if-gez v5, :cond_2

    .line 131
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oneplus/camera/ui/BaseGestureHandler;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v5

    return v5

    .line 129
    .end local v3    # "slope":F
    :cond_3
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_0

    .line 141
    :cond_4
    iget-object v5, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$1;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    invoke-static {v5}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-get1(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)Lcom/oneplus/camera/Camera$MeteringRect;

    move-result-object v5

    if-nez v5, :cond_5

    move v1, v6

    .line 142
    .local v1, "isSensorFocus":Z
    :goto_1
    if-eqz v1, :cond_6

    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oneplus/camera/ui/BaseGestureHandler;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v5

    return v5

    .line 141
    .end local v1    # "isSensorFocus":Z
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 146
    .restart local v1    # "isSensorFocus":Z
    :cond_6
    iget-object v5, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$1;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    const/16 v7, 0x2711

    invoke-static {v5, v7}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 149
    iget-object v5, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$1;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    invoke-static {v5}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-wrap3(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)Lcom/oneplus/base/ScreenSize;

    move-result-object v2

    .line 150
    .local v2, "screenSize":Lcom/oneplus/base/ScreenSize;
    const/4 v0, 0x0

    .line 151
    .local v0, "baseLength":I
    invoke-static {}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$1;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v5

    iget-object v7, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$1;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    invoke-static {v7}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-wrap2(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)Lcom/oneplus/base/Rotation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_1

    .line 162
    iget-object v5, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$1;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    invoke-static {v5}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-get0(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "onScroll() - Unknown rotation."

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oneplus/camera/ui/BaseGestureHandler;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v5

    return v5

    .line 155
    :pswitch_2
    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v5

    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 165
    :goto_2
    int-to-float v5, v0

    div-float v5, p4, v5

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v4, v5, v7

    .line 168
    .local v4, "yRatio":F
    iget-object v5, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$1;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    invoke-static {v5, v4}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-wrap16(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;F)V

    .line 171
    return v6

    .line 159
    .end local v4    # "yRatio":F
    :pswitch_3
    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v5

    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    .line 125
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 151
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
