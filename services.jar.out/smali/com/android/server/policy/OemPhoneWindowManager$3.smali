.class Lcom/android/server/policy/OemPhoneWindowManager$3;
.super Ljava/lang/Object;
.source "OemPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemPhoneWindowManager;
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
    .line 265
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$3;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$3;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyDoubleTapPending:Z
    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$300(Lcom/android/server/policy/OemPhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$3;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyConsumed:Z
    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$400(Lcom/android/server/policy/OemPhoneWindowManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$3;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyDoubleTapPending:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->access$302(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    .line 270
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$3;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    # invokes: Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->access$200(Lcom/android/server/policy/OemPhoneWindowManager;ILandroid/view/KeyEvent;)V

    .line 272
    :cond_0
    return-void
.end method
