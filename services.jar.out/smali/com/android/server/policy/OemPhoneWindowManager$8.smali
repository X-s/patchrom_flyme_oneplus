.class Lcom/android/server/policy/OemPhoneWindowManager$8;
.super Ljava/lang/Object;
.source "OemPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OemPhoneWindowManager;->showScreenshotGuider()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 1578
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotGuider:Lcom/android/server/policy/ScreenshotGuider;
    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2800(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/ScreenshotGuider;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1582
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    new-instance v1, Lcom/android/server/policy/ScreenshotGuider;

    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/policy/ScreenshotGuider;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotGuider:Lcom/android/server/policy/ScreenshotGuider;
    invoke-static {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2802(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/ScreenshotGuider;)Lcom/android/server/policy/ScreenshotGuider;

    .line 1584
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotGuider:Lcom/android/server/policy/ScreenshotGuider;
    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2800(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/ScreenshotGuider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/ScreenshotGuider;->show()V

    .line 1585
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # invokes: Lcom/android/server/policy/OemPhoneWindowManager;->setScreenshotGuiderDisabled()V
    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2400(Lcom/android/server/policy/OemPhoneWindowManager;)V

    .line 1586
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToDismissScreenshotGuider:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2902(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    .line 1587
    return-void
.end method
