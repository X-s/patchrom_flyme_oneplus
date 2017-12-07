.class Lcom/android/server/policy/OemPhoneWindowManager$12;
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
    .param p1, "this$0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 2470
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$12;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2473
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$12;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->-get13(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/ScreenshotGuider;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2474
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$12;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    new-instance v1, Lcom/android/server/policy/ScreenshotGuider;

    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager$12;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/policy/ScreenshotGuider;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->-set14(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/ScreenshotGuider;)Lcom/android/server/policy/ScreenshotGuider;

    .line 2476
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$12;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->-get13(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/ScreenshotGuider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/ScreenshotGuider;->show()V

    .line 2477
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$12;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->-wrap9(Lcom/android/server/policy/OemPhoneWindowManager;)V

    .line 2478
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$12;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->-set11(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    .line 2472
    return-void
.end method
