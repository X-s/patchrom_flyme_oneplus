.class Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;
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

    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->-com-oneplus-base-RotationSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->-com-oneplus-base-RotationSwitchesValues:[I

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
    sput-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->-com-oneplus-base-RotationSwitchesValues:[I

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
    .line 184
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-direct {p0}, Lcom/oneplus/camera/ui/BaseGestureHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 188
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get19(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    const/4 v0, 0x0

    return v0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    const/16 v1, 0x2715

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZ)Z

    .line 192
    return v2
.end method

.method public onGestureEnd(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 195
    return-void
.end method

.method public onGestureStart(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap3(Lcom/oneplus/camera/ui/CaptureModeSwitcher;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x0

    return v0

    .line 202
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 336
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    const/16 v1, 0x2715

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZ)Z

    .line 337
    return v2
.end method

.method public onSlideDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 212
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get1(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onSlideDown() - E1: "

    const-string/jumbo v2, ", E2: "

    invoke-static {v0, v1, p1, v2, p2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 213
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap0(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap5(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SlideDirection;->SLIDE_DOWN:Lcom/oneplus/camera/ui/CaptureModeSwitcher$SlideDirection;

    invoke-static {v0, v1, p1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap4(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/ui/CaptureModeSwitcher$SlideDirection;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get19(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->SLIDING_DOWN:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap22(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;)V

    .line 234
    return v3

    .line 217
    :cond_1
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap6(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/base/Rotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 226
    :pswitch_0
    return v4

    .line 220
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->SLIDING_UP:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap22(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;)V

    .line 221
    return v3

    .line 223
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->SLIDING_DOWN:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap22(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;)V

    .line 224
    return v3

    .line 238
    :cond_2
    return v4

    .line 217
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSlideLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 243
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get1(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onSlideLeft() - E1: "

    const-string/jumbo v2, ", E2: "

    invoke-static {v0, v1, p1, v2, p2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap0(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 246
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap5(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SlideDirection;->SLIDE_LEFT:Lcom/oneplus/camera/ui/CaptureModeSwitcher$SlideDirection;

    invoke-static {v0, v1, p1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap4(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/ui/CaptureModeSwitcher$SlideDirection;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap6(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/base/Rotation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap1(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/base/Rotation;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    const/16 v1, 0x2715

    invoke-static {v0, v1, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZ)Z

    .line 266
    :cond_1
    return v3

    .line 248
    :cond_2
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap6(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/base/Rotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 257
    :pswitch_0
    return v4

    .line 251
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->SLIDING_UP:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap22(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;)V

    .line 252
    return v3

    .line 254
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->SLIDING_DOWN:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap22(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;)V

    .line 255
    return v3

    .line 269
    :cond_3
    return v4

    .line 248
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSlideRight(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 274
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get1(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onSlideRight() - E1: "

    const-string/jumbo v2, ", E2: "

    invoke-static {v0, v1, p1, v2, p2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 275
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap0(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 277
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap5(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SlideDirection;->SLIDE_RIGHT:Lcom/oneplus/camera/ui/CaptureModeSwitcher$SlideDirection;

    invoke-static {v0, v1, p1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap4(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/ui/CaptureModeSwitcher$SlideDirection;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap6(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/base/Rotation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap1(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/base/Rotation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    const/16 v1, 0x2715

    invoke-static {v0, v1, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZ)Z

    .line 297
    :cond_1
    return v3

    .line 279
    :cond_2
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap6(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/base/Rotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 288
    :pswitch_0
    return v4

    .line 282
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->SLIDING_DOWN:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap22(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;)V

    .line 283
    return v3

    .line 285
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->SLIDING_UP:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap22(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;)V

    .line 286
    return v3

    .line 300
    :cond_3
    return v4

    .line 279
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSlideUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 305
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get1(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onSlideUp() - E1: "

    const-string/jumbo v2, ", E2: "

    invoke-static {v0, v1, p1, v2, p2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 306
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap0(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap5(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SlideDirection;->SLIDE_UP:Lcom/oneplus/camera/ui/CaptureModeSwitcher$SlideDirection;

    invoke-static {v0, v1, p1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap4(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/ui/CaptureModeSwitcher$SlideDirection;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get19(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->SLIDING_UP:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap22(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;)V

    .line 327
    return v3

    .line 310
    :cond_1
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap6(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/base/Rotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 319
    :pswitch_0
    return v4

    .line 313
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->SLIDING_DOWN:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap22(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;)V

    .line 314
    return v3

    .line 316
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->SLIDING_UP:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap22(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;)V

    .line 317
    return v3

    .line 331
    :cond_2
    return v4

    .line 310
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
