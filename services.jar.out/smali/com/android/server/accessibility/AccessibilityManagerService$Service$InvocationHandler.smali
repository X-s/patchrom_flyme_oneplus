.class final Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;
.super Landroid/os/Handler;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService$Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InvocationHandler"
.end annotation


# static fields
.field public static final MSG_CLEAR_ACCESSIBILITY_CACHE:I = 0x2

.field public static final MSG_ON_GESTURE:I = 0x1

.field private static final MSG_ON_MAGNIFICATION_CHANGED:I = 0x5

.field private static final MSG_ON_SOFT_KEYBOARD_STATE_CHANGED:I = 0x6


# instance fields
.field private mIsMagnificationCallbackEnabled:Z

.field private mIsSoftKeyboardCallbackEnabled:Z

.field final synthetic this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsMagnificationCallbackEnabled:Z

    return v0
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/os/Looper;)V
    .locals 3
    .param p1, "this$1"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    .line 3512
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 3513
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 3509
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsMagnificationCallbackEnabled:Z

    .line 3510
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    .line 3512
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 3518
    iget v7, p1, Landroid/os/Message;->what:I

    .line 3519
    .local v7, "type":I
    packed-switch v7, :pswitch_data_0

    .line 3544
    :pswitch_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown message: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3521
    :pswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 3522
    .local v3, "gestureId":I
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-static {v8, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->-wrap2(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V

    .line 3517
    .end local v3    # "gestureId":I
    :goto_0
    return-void

    .line 3526
    :pswitch_2
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-static {v8}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->-wrap1(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    goto :goto_0

    .line 3530
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3531
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Region;

    .line 3532
    .local v4, "region":Landroid/graphics/Region;
    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 3533
    .local v5, "scale":F
    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 3534
    .local v1, "centerX":F
    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 3535
    .local v2, "centerY":F
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-static {v8, v4, v5, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->-wrap3(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/graphics/Region;FFF)V

    goto :goto_0

    .line 3539
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "centerX":F
    .end local v2    # "centerY":F
    .end local v4    # "region":Landroid/graphics/Region;
    .end local v5    # "scale":F
    :pswitch_4
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 3540
    .local v6, "showState":I
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-static {v8, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->-wrap4(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V

    goto :goto_0

    .line 3519
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public notifyMagnificationChangedLocked(Landroid/graphics/Region;FFF)V
    .locals 3
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .prologue
    .line 3551
    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsMagnificationCallbackEnabled:Z

    if-nez v2, :cond_0

    .line 3553
    return-void

    .line 3556
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 3557
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 3558
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 3559
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 3560
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 3562
    const/4 v2, 0x5

    invoke-virtual {p0, v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3563
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3550
    return-void
.end method

.method public notifySoftKeyboardShowModeChangedLocked(I)V
    .locals 3
    .param p1, "showState"    # I

    .prologue
    .line 3571
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    if-nez v1, :cond_0

    .line 3572
    return-void

    .line 3575
    :cond_0
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 3576
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3570
    return-void
.end method

.method public setMagnificationCallbackEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 3567
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsMagnificationCallbackEnabled:Z

    .line 3566
    return-void
.end method

.method public setSoftKeyboardCallbackEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 3580
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    .line 3579
    return-void
.end method
