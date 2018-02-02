.class Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;
.super Lcom/oneplus/camera/ui/BaseGestureHandler;
.source "CaptureModeSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/CaptureModeSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final synthetic -com-oneplus-base-RotationSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$oneplus$base$Rotation:[I

.field final synthetic this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;


# direct methods
.method private static synthetic -getcom-oneplus-base-RotationSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->-com-oneplus-base-RotationSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->-com-oneplus-base-RotationSwitchesValues:[I

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
    sput-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->-com-oneplus-base-RotationSwitchesValues:[I

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

.method constructor <init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-direct {p0}, Lcom/oneplus/camera/ui/BaseGestureHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onGestureEnd(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 127
    return-void
.end method

.method public onGestureStart(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap3(Lcom/oneplus/camera/ui/CaptureModeSwitcher;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x0

    return v0

    .line 134
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 140
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get12(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    return v4

    .line 142
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v0, v3, v6

    .line 143
    .local v0, "diffX":F
    cmpl-float v3, v0, v7

    if-nez v3, :cond_1

    .line 144
    return v5

    .line 145
    :cond_1
    cmpl-float v3, v0, v7

    if-lez v3, :cond_3

    const/4 v1, 0x1

    .line 146
    .local v1, "diffXBit":Z
    :goto_0
    invoke-static {}, Lcom/oneplus/camera/CameraApplication;->current()Lcom/oneplus/camera/CameraApplication;

    move-result-object v3

    sget-object v6, Lcom/oneplus/camera/CameraApplication;->PROP_IS_RTL_LAYOUT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v6}, Lcom/oneplus/camera/CameraApplication;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 147
    .local v2, "rtlBit":Z
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v3

    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v6}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap4(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/base/Rotation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v6

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_0

    .line 174
    :cond_2
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v3, v3, v6

    if-lez v3, :cond_4

    move v3, v4

    :goto_1
    return v3

    .line 145
    .end local v1    # "diffXBit":Z
    .end local v2    # "rtlBit":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "diffXBit":Z
    goto :goto_0

    .line 151
    .restart local v2    # "rtlBit":Z
    :pswitch_0
    xor-int v3, v2, v1

    if-eqz v3, :cond_2

    .line 152
    return v4

    .line 157
    :pswitch_1
    if-eqz v1, :cond_2

    .line 158
    return v4

    .line 163
    :pswitch_2
    xor-int v3, v2, v1

    if-nez v3, :cond_2

    .line 164
    return v4

    .line 169
    :pswitch_3
    if-nez v1, :cond_2

    .line 170
    return v4

    :cond_4
    move v3, v5

    .line 174
    goto :goto_1

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 229
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    const/16 v1, 0x2715

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZ)Z

    .line 230
    return v2
.end method

.method public onSlideDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get0(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onSlideDown() - E1: "

    const-string/jumbo v2, ", E2: "

    invoke-static {v0, v1, p1, v2, p2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap0(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->SLIDING_DOWN:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap17(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;)V

    .line 183
    const/4 v0, 0x1

    return v0

    .line 185
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSlideLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 190
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get0(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onSlideLeft() - E1: "

    const-string/jumbo v2, ", E2: "

    invoke-static {v0, v1, p1, v2, p2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap0(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap4(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/base/Rotation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap1(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/base/Rotation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap11(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/capturemode/CaptureMode;JZ)V

    .line 197
    :goto_0
    return v5

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    const/16 v1, 0x2715

    invoke-static {v0, v1, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZ)Z

    goto :goto_0

    .line 199
    :cond_1
    return v4
.end method

.method public onSlideRight(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 204
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get0(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onSlideRight() - E1: "

    const-string/jumbo v2, ", E2: "

    invoke-static {v0, v1, p1, v2, p2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap0(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap4(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/base/Rotation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap1(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/base/Rotation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    const/16 v1, 0x2715

    invoke-static {v0, v1, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZ)Z

    .line 211
    :goto_0
    return v5

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap11(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/capturemode/CaptureMode;JZ)V

    goto :goto_0

    .line 213
    :cond_1
    return v4
.end method

.method public onSlideUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get0(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onSlideUp() - E1: "

    const-string/jumbo v2, ", E2: "

    invoke-static {v0, v1, p1, v2, p2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap0(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->SLIDING_UP:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap17(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;)V

    .line 222
    const/4 v0, 0x1

    return v0

    .line 224
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
