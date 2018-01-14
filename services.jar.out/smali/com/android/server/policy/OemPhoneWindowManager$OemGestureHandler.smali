.class public Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;
.super Landroid/os/Handler;
.source "OemPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OemGestureHandler"
.end annotation


# static fields
.field static final MSG_OEM_DISABLE_Quick_Pay_Button:I = 0x9

.field static final MSG_OEM_DISABLE_SCREEN_CAPTURE:I = 0x2

.field static final MSG_OEM_ENABLE_Quick_Pay_Button:I = 0x8

.field static final MSG_OEM_ENABLE_SCREEN_CAPTURE:I = 0x1

.field static final MSG_OEM_GET_ONLINE_CONFIG:I = 0xa

.field static final MSG_OEM_PAUSE_DELIVER_POINTER:I = 0x3

.field static final MSG_OEM_RESUME_DELIVER_POINTER:I = 0x4

.field static final MSG_OEM_START_QUICK_PAY:I = 0x7

.field static final MSG_OEM_TAKE_OPBUGREPORT:I = 0x6

.field static final MSG_OEM_TAKE_SCREEN_SHOT:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemPhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2255
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    .line 2256
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2255
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2261
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 2260
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2263
    :pswitch_1
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v5}, Lcom/android/server/policy/OemPhoneWindowManager;->-get13(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemThreePointersGesturesListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2264
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v5}, Lcom/android/server/policy/OemPhoneWindowManager;->-get13(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemThreePointersGesturesListener;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/policy/OemThreePointersGesturesListener;->setScreenShotEnable(Z)V

    goto :goto_0

    .line 2267
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v4}, Lcom/android/server/policy/OemPhoneWindowManager;->-get13(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemThreePointersGesturesListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2268
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v4}, Lcom/android/server/policy/OemPhoneWindowManager;->-get13(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemThreePointersGesturesListener;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/server/policy/OemThreePointersGesturesListener;->setScreenShotEnable(Z)V

    goto :goto_0

    .line 2278
    :pswitch_3
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v5, v4}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    .line 2279
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v4}, Lcom/android/server/policy/OemPhoneWindowManager;->-get5(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v4, v5}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2284
    :pswitch_4
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v4}, Lcom/android/server/policy/OemPhoneWindowManager;->-get5(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v5}, Lcom/android/server/policy/OemPhoneWindowManager;->-get12(Lcom/android/server/policy/OemPhoneWindowManager;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2290
    :pswitch_5
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayDefault:I

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-eqz v8, :cond_1

    :goto_1
    invoke-static {v6, v7, v4, v5}, Lcom/android/server/policy/OemPhoneWindowManager;->-wrap7(Lcom/android/server/policy/OemPhoneWindowManager;IZZ)V

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    .line 2294
    :pswitch_6
    const/4 v1, 0x0

    .line 2296
    .local v1, "appToken":Landroid/view/IApplicationToken;
    :try_start_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Landroid/view/IApplicationToken;

    move-object v1, v0

    .line 2297
    .local v1, "appToken":Landroid/view/IApplicationToken;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/view/IApplicationToken;->addNoHistory()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2301
    .end local v1    # "appToken":Landroid/view/IApplicationToken;
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v4}, Lcom/android/server/policy/OemPhoneWindowManager;->-wrap3(Lcom/android/server/policy/OemPhoneWindowManager;)V

    goto :goto_0

    .line 2298
    :catch_0
    move-exception v3

    .line 2299
    .local v3, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QuickPay: Could not add NoHistory for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2304
    .end local v3    # "ex":Ljava/lang/Exception;
    :pswitch_7
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v4}, Lcom/android/server/policy/OemPhoneWindowManager;->-wrap2(Lcom/android/server/policy/OemPhoneWindowManager;)V

    goto/16 :goto_0

    .line 2307
    :pswitch_8
    new-instance v2, Lcom/oneplus/config/ConfigGrabber;

    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/policy/OemPhoneWindowManager;->-get0()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2308
    .local v2, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-virtual {v2}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/policy/OemPhoneWindowManager;->-wrap6(Lcom/android/server/policy/OemPhoneWindowManager;Lorg/json/JSONArray;)V

    goto/16 :goto_0

    .line 2261
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
